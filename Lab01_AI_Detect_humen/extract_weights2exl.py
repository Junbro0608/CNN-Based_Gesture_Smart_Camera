import torch
import pandas as pd
import numpy as np
from collections import OrderedDict

# 1. 파일 이름 설정
model_path = './save_pt/best_model_master128.pth'
excel_filename = './save_pt/int8_weights_extracted.xlsx'
fill_missing_bias_with_zero = True
bn_eps_for_folding = 1e-5
weight_scale_factor = 127.0
bias_scale_factor = 127.0

# 2. 모델 로드 (CPU 환경에서 안전하게 로드)
print(f"[{model_path}] 파일을 불러오는 중...\n")
state_dict = torch.load(model_path, map_location='cpu')

data = []

def to_int8_array(tensor):
    """Convert weight tensor to int8 values with explicit quantization metadata."""
    if tensor.is_quantized:
        return tensor.int_repr().numpy(), float(tensor.q_scale()), int(tensor.q_zero_point())

    arr = tensor.cpu().detach().numpy().astype(np.float32)
    max_abs = float(np.max(np.abs(arr)))
    if max_abs == 0.0:
        scale = 1.0
    else:
        scale = max_abs / 127.0

    int8_arr = np.clip(np.round(arr / scale), -128, 127).astype(np.int8)
    return int8_arr, scale, 0

def quantize_weight_fixed_scale(tensor, scale_factor):
    """Quantize weights with the same fixed x127 rule used by export_verilog_hex."""
    arr = tensor.cpu().detach().numpy().astype(np.float32)
    int8_arr = np.clip(np.round(arr * scale_factor), -128, 127).astype(np.int8)
    return int8_arr, 1.0 / scale_factor, 0

def int8_to_hex(value):
    """Convert signed int8 to 2-digit two's-complement hex string."""
    return f"0x{(int(value) & 0xFF):02X}"

def quantize_bias_to_int32(tensor, scale_factor):
    """Quantize bias with the same fixed x127 rule used by export_verilog_hex."""
    if tensor.is_quantized:
        arr = tensor.dequantize().cpu().detach().numpy().astype(np.float64)
    else:
        arr = tensor.cpu().detach().numpy().astype(np.float64)

    int32_arr = np.clip(
        np.round(arr * float(scale_factor)),
        np.iinfo(np.int32).min,
        np.iinfo(np.int32).max,
    ).astype(np.int32)
    return int32_arr, arr.astype(np.float32), 1.0 / float(scale_factor)

def int32_to_hex(value):
    """Convert signed int32 to 8-digit two's-complement hex string."""
    return f"0x{(int(value) & 0xFFFFFFFF):08X}"

def append_weight_row(label, value, scale, zero_point):
    data.append({
        'Label (주석)': label,
        'Param Type': 'weight',
        'Bit Width': 8,
        'Value': int(value),
        'Hex': int8_to_hex(value),
        'Bias Float': '',
        'Scale': scale,
        'Zero Point': zero_point,
    })

def append_bias_row(label, bias_float, value, scale, zero_point):
    data.append({
        'Label (주석)': label,
        'Param Type': 'bias',
        'Bit Width': 32,
        'Value': int(value),
        'Hex': int32_to_hex(value),
        'Bias Float': float(bias_float),
        'Scale': scale,
        'Zero Point': zero_point,
    })

def fold_conv_bn(weight_tensor, bias_tensor, bn_name, state_dict):
    """Fold BatchNorm parameters into convolution weight and bias."""
    gamma = state_dict[f"{bn_name}.weight"].cpu().detach().numpy().astype(np.float32)
    beta = state_dict[f"{bn_name}.bias"].cpu().detach().numpy().astype(np.float32)
    running_mean = state_dict[f"{bn_name}.running_mean"].cpu().detach().numpy().astype(np.float32)
    running_var = state_dict[f"{bn_name}.running_var"].cpu().detach().numpy().astype(np.float32)

    weight_np = weight_tensor.cpu().detach().numpy().astype(np.float32)
    std = np.sqrt(running_var + bn_eps_for_folding)
    factor = gamma / std
    folded_weight = weight_np * factor.reshape(-1, 1, 1, 1)

    if bias_tensor is None:
        conv_bias = np.zeros(weight_np.shape[0], dtype=np.float32)
    else:
        conv_bias = bias_tensor.cpu().detach().numpy().astype(np.float32)

    folded_bias = beta + ((conv_bias - running_mean) * factor)
    return folded_weight, folded_bias

def get_following_bn_name(layer_name, state_dict):
    """Infer a matching BatchNorm layer for a conv layer and verify required params exist."""
    if layer_name.startswith('conv'):
        suffix = layer_name[len('conv'):]
        if suffix.isdigit():
            candidate = f"bn{suffix}"
            required_keys = [
                f"{candidate}.weight",
                f"{candidate}.bias",
                f"{candidate}.running_mean",
                f"{candidate}.running_var",
            ]
            if all(k in state_dict for k in required_keys):
                return candidate

    parts = layer_name.split('.')
    if not parts[-1].isdigit():
        return None

    candidate = '.'.join(parts[:-1] + [str(int(parts[-1]) + 1)])
    required_keys = [
        f"{candidate}.weight",
        f"{candidate}.bias",
        f"{candidate}.running_mean",
        f"{candidate}.running_var",
    ]
    if all(k in state_dict for k in required_keys):
        return candidate
    return None

layer_params = OrderedDict()
for key in state_dict.keys():
    if key.endswith('.weight') or key.endswith('.bias'):
        layer_name, param_name = key.rsplit('.', 1)
        if layer_name not in layer_params:
            layer_params[layer_name] = {}
        layer_params[layer_name][param_name] = key

# 각 레이어별로 순회하며 weight 처리 후 bias 처리
for layer_name, params in layer_params.items():
    weight_key = params.get('weight')
    bias_key = params.get('bias')
    out_dim = None
    bn_name = None

    is_conv = False
    is_fc = False
    if weight_key is not None:
        weight_tensor = state_dict[weight_key]
        if weight_tensor.ndim == 4:
            is_conv = True
        elif weight_tensor.ndim == 2:
            is_fc = True

    if not (is_conv or is_fc):
        continue

    # [로그용 변수]
    w_count = 0
    b_count = 0
    bias_source = 'none'

    # [1단계] 현재 레이어의 Weight 처리
    if weight_key in state_dict:
        tensor = state_dict[weight_key]
        bias_tensor = state_dict[bias_key] if bias_key in state_dict else None

        if is_conv:
            bn_name = get_following_bn_name(layer_name, state_dict)
            if bn_name is not None:
                folded_weight_float, folded_bias_float = fold_conv_bn(tensor, bias_tensor, bn_name, state_dict)
                weight_np, scale, zero_point = quantize_weight_fixed_scale(torch.from_numpy(folded_weight_float), weight_scale_factor)
                bias_source = 'bn_folded'
            else:
                weight_np, scale, zero_point = quantize_weight_fixed_scale(tensor, weight_scale_factor)
                folded_bias_float = None
        else:
            weight_np, scale, zero_point = quantize_weight_fixed_scale(tensor, weight_scale_factor)
            folded_bias_float = None

        if is_conv:
            out_c, in_c, h, w = weight_np.shape
            out_dim = out_c
            w_count = out_c * in_c * h * w
            for o in range(out_c):
                for i in range(in_c):
                    for r in range(h):
                        for c in range(w):
                            label = f"{layer_name}_ch{o}_{i}_{r}{c}"
                            value = weight_np[o, i, r, c]
                            append_weight_row(label, value, scale, zero_point)
        elif is_fc:
            out_nodes, in_nodes = weight_np.shape
            out_dim = out_nodes
            w_count = out_nodes * in_nodes
            for out_idx in range(out_nodes):
                for in_idx in range(in_nodes):
                    label = f"{layer_name}_{in_idx}_{out_idx}"
                    value = weight_np[out_idx, in_idx]
                    append_weight_row(label, value, scale, zero_point)

    # [2단계] 현재 레이어의 Bias 처리
    if bias_key in state_dict:
        tensor = state_dict[bias_key]
        bias_np, bias_float_np, bias_scale = quantize_bias_to_int32(tensor, bias_scale_factor)
        bias_source = 'model_bias'

        if is_conv:
            out_c = bias_np.shape[0]
            b_count = out_c
            for o in range(out_c):
                label = f"{layer_name}_bias_ch{o}"
                value = bias_np[o]
                append_bias_row(label, bias_float_np[o], value, bias_scale, 0)
        elif is_fc:
            out_nodes = bias_np.shape[0]
            b_count = out_nodes
            for out_idx in range(out_nodes):
                label = f"{layer_name}_bias_{out_idx}"
                value = bias_np[out_idx]
                append_bias_row(label, bias_float_np[out_idx], value, bias_scale, 0)

    elif is_conv and out_dim is not None:
        if bn_name is not None and folded_bias_float is not None:
            bias_np, bias_float_np, bias_scale = quantize_bias_to_int32(torch.from_numpy(folded_bias_float), bias_scale_factor)

            b_count = out_dim
            bias_source = 'bn_folded'
            for o in range(out_dim):
                label = f"{layer_name}_bias_ch{o}"
                value = bias_np[o]
                append_bias_row(label, bias_float_np[o], value, bias_scale, 0)

        elif fill_missing_bias_with_zero:
            b_count = out_dim
            bias_source = 'zero_filled'
            for out_idx in range(out_dim):
                label = f"{layer_name}_bias_ch{out_idx}"
                value = 0
                append_bias_row(label, 0.0, value, 1.0, 0)

    elif fill_missing_bias_with_zero and out_dim is not None:
        b_count = out_dim
        bias_source = 'zero_filled'
        for out_idx in range(out_dim):
            label = f"{layer_name}_bias_{out_idx}"
            value = 0
            append_bias_row(label, 0.0, value, 1.0, 0)

    # 터미널에 진행 상황 출력
    print(f"✅ [{layer_name}] 처리 완료 -> 가중치: {w_count}개 | 바이어스: {b_count}개 ({bias_source})")

# 4. 엑셀로 저장 (Pandas 활용)
print("\n엑셀 데이터 변환 중... (데이터가 많아 시간이 조금 걸릴 수 있습니다)")
df = pd.DataFrame(data)

df.to_excel(excel_filename, index=False)
print(f"🎉 성공! 엑셀 파일 [{excel_filename}]이 생성되었습니다.")