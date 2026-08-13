from dataclasses import dataclass
from pathlib import Path
import re

import numpy as np
import pandas as pd
import torch


@dataclass(frozen=True)
class ExportConfig:
    base_dir: Path
    save_dir: Path
    model_path: Path
    conv_out_xlsx: Path
    fc_out_xlsx: Path
    packed_be64_xlsx: Path
    combined_be64_mem: Path
    requant_summary_xlsx: Path
    fc_output_chunk: int = 8
    conv_output_scale: float = 0.1
    fc1_output_scale: float = 0.2


def build_export_config(base_dir=None) -> ExportConfig:
    resolved_base_dir = (base_dir or Path(__file__).resolve().parent).resolve()
    save_dir = resolved_base_dir / "save_pt_v2"
    return ExportConfig(
        base_dir=resolved_base_dir,
        save_dir=save_dir,
        model_path=save_dir / "best_model_master128_v2.pth",
        conv_out_xlsx=save_dir / "int8_weights_conv_fomat_v2.xlsx",
        fc_out_xlsx=save_dir / "int8_weights_fc_fomat_v2.xlsx",
        packed_be64_xlsx=save_dir / "int8_weights_conv_fc_be64_v2.xlsx",
        combined_be64_mem=save_dir / "int8_weights_conv_fc_be64.mem",
        requant_summary_xlsx=save_dir / "requant_params_by_layer_v2.xlsx",
    )


EXPORT_CONFIG = build_export_config()
BASE_DIR = EXPORT_CONFIG.base_dir
SAVE_PT_V2 = EXPORT_CONFIG.save_dir
MODEL_PATH = EXPORT_CONFIG.model_path
CONV_OUT_XLSX = EXPORT_CONFIG.conv_out_xlsx
FC_OUT_XLSX = EXPORT_CONFIG.fc_out_xlsx
PACKED_BE64_XLSX = EXPORT_CONFIG.packed_be64_xlsx
COMBINED_BE64_MEM = EXPORT_CONFIG.combined_be64_mem
REQUANT_SUMMARY_XLSX = EXPORT_CONFIG.requant_summary_xlsx

FC_OUTPUT_CHUNK = EXPORT_CONFIG.fc_output_chunk
CONV_OUTPUT_SCALE = EXPORT_CONFIG.conv_output_scale
FC1_OUTPUT_SCALE = EXPORT_CONFIG.fc1_output_scale


def int8_to_hex(value: int) -> str:
    return f"0x{(int(value) & 0xFF):02X}"


def int32_to_hex(value: int) -> str:
    return f"0x{(int(value) & 0xFFFFFFFF):08X}"


def u32_to_be_bytes(value: int):
    u = int(value) & 0xFFFFFFFF
    return [(u >> 24) & 0xFF, (u >> 16) & 0xFF, (u >> 8) & 0xFF, u & 0xFF]


def word_bytes_to_hex(word_bytes):
    return "".join(f"{b:02X}" for b in word_bytes)


def word_bytes_to_lane_columns(word_bytes):
    # Byte0 is the least-significant lane and Byte7 is the most-significant lane.
    return {f"Byte{i}": f"0x{word_bytes[7 - i]:02X}" for i in range(8)}


def build_requant_params(scale_value: float, shift_val: int = 20, zero_point: int = 0):
    effective_scale = float(scale_value) if scale_value is not None else 1.0
    if effective_scale == 0.0:
        effective_scale = 1.0
    mult_factor = int(round(effective_scale * (2**shift_val)))
    return {
        "Requant Effective Scale": effective_scale,
        "Requant MULT_FACTOR": mult_factor,
        "Requant SHIFT_VAL": shift_val,
        "Requant ZERO_POINT": zero_point,
    }


def summarize_conv_word(row_infos):
    labels = [info["label"] for info in row_infos]
    param_type = row_infos[0]["param_type"]

    if param_type == "weight":
        match = re.match(r"^(conv\d+)_ch(\d+)_(\d+)_(\d)(\d)$", labels[0])
        if not match:
            return f"conv | weight | {labels[0]}"
        layer_name = match.group(1)
        in_idx = int(match.group(3))
        kernel = f"K{match.group(4)}{match.group(5)}"
        channels = sorted(int(re.search(r"_ch(\d+)_", label).group(1)) for label in labels)
        return f"{layer_name} | block ch{channels[0]}~ch{channels[-1]} | weight | in{in_idx} | {kernel}"

    match = re.match(r"^(conv\d+)_bias_ch(\d+)$", labels[0])
    if not match:
        return f"conv | bias | {labels[0]}"
    layer_name = match.group(1)
    channels = sorted(int(re.search(r"_ch(\d+)$", label).group(1)) for label in labels)
    block_start = (channels[0] // 8) * 8
    block_end = block_start + 7
    return (
        f"{layer_name} | block ch{block_start}~ch{block_end} | bias | "
        f"pair ch{channels[0]}~ch{channels[-1]}"
    )


def summarize_fc_word(label_infos):
    labels = [info["label"] for info in label_infos]
    param_type = label_infos[0]["param_type"]

    if param_type == "weight":
        matches = [re.match(r"^(fc\d+)_(\d+)_(\d+)$", label) for label in labels]
        if any(match is None for match in matches):
            return f"fc | weight | {labels[0]} -> {labels[-1]}"
        layer_name = matches[0].group(1)
        in_indices = sorted({int(match.group(2)) for match in matches})
        out_indices = sorted({int(match.group(3)) for match in matches})
        return (
            f"{layer_name} | out{out_indices[0]}~out{out_indices[-1]} | weight | "
            f"in{in_indices[0]}~in{in_indices[-1]}"
        )

    matches = [re.match(r"^(fc\d+)_bias_(\d+)$", label) for label in labels]
    if any(match is None for match in matches):
        return f"fc | bias | {labels[0]} -> {labels[-1]}"
    layer_name = matches[0].group(1)
    out_indices = sorted({int(match.group(2)) for match in matches})
    block_start = (out_indices[0] // FC_OUTPUT_CHUNK) * FC_OUTPUT_CHUNK
    block_end = block_start + FC_OUTPUT_CHUNK - 1
    return (
        f"{layer_name} | out{block_start}~out{block_end} | bias | "
        f"pair out{out_indices[0]}~out{out_indices[-1]}"
    )


def extract_layer_name_from_comment(comment: str) -> str:
    if not comment:
        return "unknown"
    return str(comment).split("|", 1)[0].strip()


def quantize_int8_dynamic(tensor: torch.Tensor):
    arr = tensor.detach().cpu().numpy().astype(np.float32)
    max_abs = float(np.max(np.abs(arr)))
    if max_abs == 0.0:
        scale = 1.0
    else:
        scale = max_abs / 127.0

    q = np.clip(np.round(arr / scale), -128, 127).astype(np.int8)
    return q, scale, 0


def quantize_int8_fixed127(tensor: torch.Tensor):
    arr = tensor.detach().cpu().numpy().astype(np.float32)
    q = np.clip(np.round(arr * 127.0), -128, 127).astype(np.int8)
    return q, 1.0 / 127.0, 0


def quantize_int32_bias_for_accumulator(tensor, accumulator_scale: float):
    arr = np.asarray(tensor, dtype=np.float32)
    q = np.round(arr / accumulator_scale).astype(np.int32)
    return q, arr, accumulator_scale


def build_bn_folded_conv_bias(state_dict, layer_name: str, out_c: int):
    if not layer_name.startswith("conv"):
        return None

    suffix = layer_name[4:]
    if not suffix.isdigit():
        return None

    bn_prefix = f"bn{suffix}"
    required_keys = [
        f"{bn_prefix}.weight",
        f"{bn_prefix}.bias",
        f"{bn_prefix}.running_mean",
        f"{bn_prefix}.running_var",
    ]
    if not all(k in state_dict for k in required_keys):
        return None

    gamma = state_dict[f"{bn_prefix}.weight"].detach().cpu().numpy().astype(np.float32)
    beta = state_dict[f"{bn_prefix}.bias"].detach().cpu().numpy().astype(np.float32)
    mean = state_dict[f"{bn_prefix}.running_mean"].detach().cpu().numpy().astype(np.float32)
    var = state_dict[f"{bn_prefix}.running_var"].detach().cpu().numpy().astype(np.float32)

    if gamma.shape[0] != out_c:
        return None

    eps = 1e-5
    b_conv = np.zeros_like(gamma, dtype=np.float32)
    b_fold = beta + (b_conv - mean) * gamma / np.sqrt(var + eps)
    return b_fold


def build_bn_folded_conv_weight(state_dict, layer_name: str):
    suffix = layer_name[4:]
    bn_prefix = f"bn{suffix}"
    required_keys = [
        f"{layer_name}.weight",
        f"{bn_prefix}.weight",
        f"{bn_prefix}.running_var",
    ]
    if not layer_name.startswith("conv") or not suffix.isdigit():
        return state_dict[f"{layer_name}.weight"]
    if not all(key in state_dict for key in required_keys):
        return state_dict[f"{layer_name}.weight"]

    weight = state_dict[f"{layer_name}.weight"]
    gamma = state_dict[f"{bn_prefix}.weight"]
    variance = state_dict[f"{bn_prefix}.running_var"]
    scale = gamma / torch.sqrt(variance + 1e-5)
    return weight * scale.view(-1, 1, 1, 1)


def get_conv_layers(state_dict):
    layers = []
    for key, value in state_dict.items():
        if key.endswith(".weight") and value.ndim == 4:
            layers.append(key[:-7])

    conv_first = [name for name in layers if name.startswith("conv")]
    others = [name for name in layers if not name.startswith("conv")]
    return conv_first + others


def get_fc_layers(state_dict):
    layers = []
    for key, value in state_dict.items():
        if key.endswith(".weight") and value.ndim == 2:
            layers.append(key[:-7])

    fc_first = [name for name in layers if name.startswith("fc")]
    others = [name for name in layers if not name.startswith("fc")]
    return fc_first + others


def build_conv_format_rows(state_dict):
    rows = []
    conv_layers = get_conv_layers(state_dict)
    word_addr = 0

    for layer_name in conv_layers:
        bias_key = f"{layer_name}.bias"

        conv_weight = build_bn_folded_conv_weight(state_dict, layer_name)
        w_q, w_scale, w_zp = quantize_int8_dynamic(conv_weight)
        out_c, in_c, h, w = w_q.shape
        input_scale = 1.0 / 255.0 if layer_name == "conv1" else CONV_OUTPUT_SCALE
        accumulator_scale = input_scale * w_scale
        weight_requant = build_requant_params(accumulator_scale / CONV_OUTPUT_SCALE)

        if bias_key in state_dict:
            b_q, b_float, b_scale = quantize_int32_bias_for_accumulator(
                state_dict[bias_key].detach().cpu().numpy(), accumulator_scale
            )
            bias_requant = build_requant_params(b_scale)
        else:
            folded_bias = build_bn_folded_conv_bias(state_dict, layer_name, out_c)
            if folded_bias is not None:
                b_q, b_float, b_scale = quantize_int32_bias_for_accumulator(
                    folded_bias, accumulator_scale
                )
            else:
                b_q = np.zeros(out_c, dtype=np.int32)
                b_float = np.zeros(out_c, dtype=np.float32)
                b_scale = 1.0
            bias_requant = build_requant_params(b_scale)

        if layer_name == "conv1":
            input_offset_compensation = 128 * w_q.astype(np.int32).sum(axis=(1, 2, 3))
            b_q = b_q + input_offset_compensation
            b_float = b_float + input_offset_compensation.astype(np.float32) * b_scale

        for out_base in range(0, out_c, 8):
            out_end = min(out_base + 8, out_c)

            for i in range(in_c):
                for r in range(h):
                    for c in range(w):
                        for b, o in enumerate(range(out_base, out_end)):
                            label = f"{layer_name}_ch{o}_{i}_{r}{c}"
                            info = f"{word_addr}번지 | Byte{b}(CH{b}) | Weight K{r}{c} | {label}"
                            value = int(w_q[o, i, r, c])
                            rows.append(
                                {
                                    "64-bit Word 주소 | Byte(CH) | 구분 | 원본 Label": info,
                                    "Param Type": "weight",
                                    "Bit Width": 8,
                                    "Value": value,
                                    "Hex": int8_to_hex(value),
                                    "Bias Float": np.nan,
                                    "INT8 Value": value,
                                    "INT8 Hex": int8_to_hex(value),
                                    "Scale": w_scale,
                                    "Zero Point": w_zp,
                                    **weight_requant,
                                }
                            )
                        word_addr += 1

            for pair_base in range(out_base, out_end, 2):
                pair_end = min(pair_base + 2, out_end)
                for slot, o in enumerate(range(pair_base, pair_end)):
                    slot_name = "Lower32" if slot == 0 else "Upper32"
                    label = f"{layer_name}_bias_ch{o}"
                    info = f"{word_addr}번지 | {slot_name}(CH{o}) | Bias | {label}"
                    value = int(b_q[o])
                    rows.append(
                        {
                            "64-bit Word 주소 | Byte(CH) | 구분 | 원본 Label": info,
                            "Param Type": "bias",
                            "Bit Width": 32,
                            "Value": value,
                            "Hex": int32_to_hex(value),
                            "Bias Float": float(b_float[o]),
                            "INT8 Value": np.nan,
                            "INT8 Hex": np.nan,
                            "Scale": b_scale,
                            "Zero Point": 0,
                            **bias_requant,
                        }
                    )
                word_addr += 1

    return rows


def build_fc_reordered_rows(state_dict):
    rows = []
    fc_layers = get_fc_layers(state_dict)

    for layer_name in fc_layers:
        weight_key = f"{layer_name}.weight"
        bias_key = f"{layer_name}.bias"

        w_q, w_scale, w_zp = quantize_int8_fixed127(state_dict[weight_key])
        out_nodes, in_nodes = w_q.shape
        if layer_name == "fc1":
            input_scale = CONV_OUTPUT_SCALE
            output_scale = FC1_OUTPUT_SCALE
        elif layer_name == "fc2":
            input_scale = FC1_OUTPUT_SCALE
            output_scale = 1.0
        else:
            input_scale = 1.0
            output_scale = 1.0
        accumulator_scale = input_scale * w_scale
        weight_requant = build_requant_params(accumulator_scale / output_scale)

        if bias_key in state_dict:
            b_q, b_float, b_scale = quantize_int32_bias_for_accumulator(
                state_dict[bias_key].detach().cpu().numpy(), accumulator_scale
            )
            bias_requant = build_requant_params(b_scale)
        else:
            b_q = np.zeros(out_nodes, dtype=np.int32)
            b_float = np.zeros(out_nodes, dtype=np.float32)
            b_scale = 1.0
            bias_requant = build_requant_params(b_scale)

        for out_base in range(0, out_nodes, FC_OUTPUT_CHUNK):
            out_end = min(out_base + FC_OUTPUT_CHUNK, out_nodes)

            for in_idx in range(in_nodes):
                for out_idx in range(out_base, out_end):
                    label = f"{layer_name}_{in_idx}_{out_idx}"
                    value = int(w_q[out_idx, in_idx])
                    rows.append(
                        {
                            "Label (주석)": label,
                            "Param Type": "weight",
                            "Bit Width": 8,
                            "Value": value,
                            "Hex": int8_to_hex(value),
                            "Bias Float": np.nan,
                            "Scale": w_scale,
                            "Zero Point": w_zp,
                            **weight_requant,
                        }
                    )

            for out_idx in range(out_base, out_end):
                label = f"{layer_name}_bias_{out_idx}"
                value = int(b_q[out_idx])
                rows.append(
                    {
                        "Label (주석)": label,
                        "Param Type": "bias",
                        "Bit Width": 32,
                        "Value": value,
                        "Hex": int32_to_hex(value),
                        "Bias Float": float(b_float[out_idx]),
                        "Scale": b_scale,
                        "Zero Point": 0,
                        **bias_requant,
                    }
                )

    return rows


def build_layer_requant_rows(state_dict):
    rows = []

    conv_layers = get_conv_layers(state_dict)
    for layer_name in conv_layers:
        conv_weight = build_bn_folded_conv_weight(state_dict, layer_name)
        _, w_scale, _ = quantize_int8_dynamic(conv_weight)
        out_c = conv_weight.shape[0]
        input_scale = 1.0 / 255.0 if layer_name == "conv1" else CONV_OUTPUT_SCALE
        accumulator_scale = input_scale * w_scale
        weight_requant = build_requant_params(accumulator_scale / CONV_OUTPUT_SCALE)

        bias_key = f"{layer_name}.bias"
        if bias_key in state_dict:
            _, _, b_scale = quantize_int32_bias_for_accumulator(
                state_dict[bias_key].detach().cpu().numpy(), accumulator_scale
            )
            bias_source = "model_bias"
        else:
            folded_bias = build_bn_folded_conv_bias(state_dict, layer_name, out_c)
            if folded_bias is not None:
                _, _, b_scale = quantize_int32_bias_for_accumulator(folded_bias, accumulator_scale)
                bias_source = "bn_folded_bias"
            else:
                b_scale = 1.0
                bias_source = "zero_bias_fallback"
        bias_requant = build_requant_params(b_scale)

        rows.append(
            {
                "Layer": layer_name,
                "Tensor Type": "weight",
                "Input Scale": input_scale,
                "Output Scale": CONV_OUTPUT_SCALE,
                "Accumulator Scale": accumulator_scale,
                "Requant Effective Scale": weight_requant["Requant Effective Scale"],
                "MULT_FACTOR": weight_requant["Requant MULT_FACTOR"],
                "SHIFT_VAL": weight_requant["Requant SHIFT_VAL"],
                "ZERO_POINT": weight_requant["Requant ZERO_POINT"],
                "Source": "weight_path",
            }
        )
        rows.append(
            {
                "Layer": layer_name,
                "Tensor Type": "bias",
                "Input Scale": input_scale,
                "Output Scale": CONV_OUTPUT_SCALE,
                "Accumulator Scale": accumulator_scale,
                "Requant Effective Scale": bias_requant["Requant Effective Scale"],
                "MULT_FACTOR": bias_requant["Requant MULT_FACTOR"],
                "SHIFT_VAL": bias_requant["Requant SHIFT_VAL"],
                "ZERO_POINT": bias_requant["Requant ZERO_POINT"],
                "Source": bias_source,
            }
        )

    fc_layers = get_fc_layers(state_dict)
    for layer_name in fc_layers:
        weight_key = f"{layer_name}.weight"
        bias_key = f"{layer_name}.bias"

        _, w_scale, _ = quantize_int8_fixed127(state_dict[weight_key])
        if layer_name == "fc1":
            input_scale = CONV_OUTPUT_SCALE
            output_scale = FC1_OUTPUT_SCALE
        elif layer_name == "fc2":
            input_scale = FC1_OUTPUT_SCALE
            output_scale = 1.0
        else:
            input_scale = 1.0
            output_scale = 1.0

        accumulator_scale = input_scale * w_scale
        weight_requant = build_requant_params(accumulator_scale / output_scale)

        if bias_key in state_dict:
            _, _, b_scale = quantize_int32_bias_for_accumulator(
                state_dict[bias_key].detach().cpu().numpy(), accumulator_scale
            )
            bias_source = "model_bias"
        else:
            b_scale = 1.0
            bias_source = "zero_bias_fallback"
        bias_requant = build_requant_params(b_scale)

        rows.append(
            {
                "Layer": layer_name,
                "Tensor Type": "weight",
                "Input Scale": input_scale,
                "Output Scale": output_scale,
                "Accumulator Scale": accumulator_scale,
                "Requant Effective Scale": weight_requant["Requant Effective Scale"],
                "MULT_FACTOR": weight_requant["Requant MULT_FACTOR"],
                "SHIFT_VAL": weight_requant["Requant SHIFT_VAL"],
                "ZERO_POINT": weight_requant["Requant ZERO_POINT"],
                "Source": "weight_path",
            }
        )
        rows.append(
            {
                "Layer": layer_name,
                "Tensor Type": "bias",
                "Input Scale": input_scale,
                "Output Scale": output_scale,
                "Accumulator Scale": accumulator_scale,
                "Requant Effective Scale": bias_requant["Requant Effective Scale"],
                "MULT_FACTOR": bias_requant["Requant MULT_FACTOR"],
                "SHIFT_VAL": bias_requant["Requant SHIFT_VAL"],
                "ZERO_POINT": bias_requant["Requant ZERO_POINT"],
                "Source": bias_source,
            }
        )

    return rows


def build_be64_sheet_rows_from_conv(conv_rows):
    addr_to_word = {}
    addr_to_infos = {}

    for row in conv_rows:
        info = str(row["64-bit Word 주소 | Byte(CH) | 구분 | 원본 Label"])
        bit_width = int(row["Bit Width"])
        value = int(row["Value"])

        m_addr = re.search(r"(\d+)번지", info)
        m_byte = re.search(r"Byte(\d+)\(CH\d+\)", info)
        is_upper = "Upper32" in info
        is_lower = "Lower32" in info
        if not m_addr:
            raise ValueError(f"Cannot parse conv address from: {info}")

        addr = int(m_addr.group(1))
        if addr not in addr_to_word:
            addr_to_word[addr] = [0] * 8
            addr_to_infos[addr] = []

        label = info.split("|")[-1].strip()
        addr_to_infos[addr].append(
            {
                "label": label,
                "param_type": str(row["Param Type"]),
            }
        )

        if bit_width == 8 and m_byte:
            byte_idx = int(m_byte.group(1))
            packed_idx = 7 - byte_idx
            addr_to_word[addr][packed_idx] = int(value) & 0xFF
        elif bit_width == 32 and is_upper:
            addr_to_word[addr][0:4] = u32_to_be_bytes(value)
        elif bit_width == 32 and is_lower:
            addr_to_word[addr][4:8] = u32_to_be_bytes(value)
        else:
            raise ValueError(f"Unsupported conv packed row: {info}")

    packed_rows = []
    for addr in sorted(addr_to_word):
        word_bytes = addr_to_word[addr]
        packed_rows.append(
            {
                "Word Address": addr,
                "Comment": summarize_conv_word(addr_to_infos[addr]),
                "BE64 Hex": word_bytes_to_hex(word_bytes),
                **word_bytes_to_lane_columns(word_bytes),
            }
        )

    return packed_rows


def pack_fc_word_bytes(chunk, chunk_infos):
    """Pack FC bytes so the PE logic sees the intended byte lanes.

    For weight words, the first byte in the stream must land in the low byte of
    the 64-bit word, matching weight_word[7:0] in the FC PE array.
    For bias words, the first 32-bit bias is placed in the low 32-bit half and
    the second bias in the high 32-bit half of the 64-bit word.
    """
    if all(info["param_type"] == "bias" for info in chunk_infos):
        return chunk[4:8] + chunk[0:4]
    return list(reversed(chunk))


def build_be64_sheet_rows_from_fc(fc_rows):
    packed_rows = []
    word_addr = 0

    fc2_rows = [
        row for row in fc_rows
        if str(row["Label (주석)"]).startswith("fc2_")
    ]
    fc2_weight_rows = [
        row for row in fc_rows
        if row["Param Type"] == "weight"
        and str(row["Label (주석)"]).startswith("fc2_")
    ]
    fc2_bias_rows = [
        row for row in fc2_rows if row["Param Type"] == "bias"
    ]
    non_fc2_rows = [row for row in fc_rows if row not in fc2_rows]

    byte_stream = []
    byte_infos = []
    for row in non_fc2_rows:
        bit_width = int(row["Bit Width"])
        value = int(row["Value"])
        info = {
            "label": str(row["Label (주석)"]),
            "param_type": str(row["Param Type"]),
        }
        if bit_width == 8:
            byte_stream.append(value & 0xFF)
            byte_infos.append(info)
        elif bit_width == 32:
            byte_stream.extend(u32_to_be_bytes(value))
            byte_infos.extend([info] * 4)
        else:
            raise ValueError(f"Unsupported FC bit width: {bit_width}")

    while len(byte_stream) % 8 != 0:
        byte_stream.append(0)
        byte_infos.append({"label": "pad", "param_type": "pad"})

    for addr in range(len(byte_stream) // 8):
        start = addr * 8
        end = (addr + 1) * 8
        chunk = byte_stream[start:end]
        chunk_infos = byte_infos[start:end]
        word_bytes = pack_fc_word_bytes(chunk, chunk_infos)
        labels_in_word = []
        seen = set()
        for info in chunk_infos:
            key = (info["label"], info["param_type"])
            if info["param_type"] == "pad" or key in seen:
                continue
            seen.add(key)
            labels_in_word.append(info)
        packed_rows.append(
            {
                "Word Address": word_addr,
                "Comment": summarize_fc_word(labels_in_word) if labels_in_word else "pad",
                "BE64 Hex": word_bytes_to_hex(word_bytes),
                **word_bytes_to_lane_columns(word_bytes),
            }
        )
        word_addr += 1

    for row in fc2_weight_rows:
        value = int(row["Value"]) & 0xFF
        label = str(row["Label (주석)"])
        word_bytes = [0, 0, 0, 0, 0, 0, 0, value]
        packed_rows.append(
            {
                "Word Address": word_addr,
                "Comment": f"fc2 | out0 | weight | {label}",
                "BE64 Hex": word_bytes_to_hex(word_bytes),
                **word_bytes_to_lane_columns(word_bytes),
            }
        )
        word_addr += 1

    for row in fc2_bias_rows:
        value = int(row["Value"])
        label = str(row["Label (주석)"])
        word_bytes = [0, 0, 0, 0, *u32_to_be_bytes(value)]
        packed_rows.append(
            {
                "Word Address": word_addr,
                "Comment": f"fc2 | bias | {label}",
                "BE64 Hex": word_bytes_to_hex(word_bytes),
                **word_bytes_to_lane_columns(word_bytes),
            }
        )
        word_addr += 1

    return packed_rows


def build_combined_be64_rows(conv_be64_rows, fc_be64_rows):
    combined_rows = []
    layer_subaddr = {}

    for row in conv_be64_rows:
        layer_name = extract_layer_name_from_comment(row.get("Comment", ""))
        sub_raddr = layer_subaddr.get(layer_name, 0)
        layer_subaddr[layer_name] = sub_raddr + 1
        combined_rows.append(
            {
                **row,
                "Section": "conv",
                "sub_raddr": sub_raddr,
            }
        )

    addr_offset = len(conv_be64_rows)
    for row in fc_be64_rows:
        layer_name = extract_layer_name_from_comment(row.get("Comment", ""))
        sub_raddr = layer_subaddr.get(layer_name, 0)
        layer_subaddr[layer_name] = sub_raddr + 1
        combined_rows.append(
            {
                **row,
                "Word Address": int(row["Word Address"]) + addr_offset,
                "Section": "fc",
                "sub_raddr": sub_raddr,
            }
        )

    return combined_rows


def write_combined_be64_mem(combined_rows, out_path: Path):
    sorted_rows = sorted(combined_rows, key=lambda row: int(row["Word Address"]))
    out_path.parent.mkdir(parents=True, exist_ok=True)
    with out_path.open("w", encoding="ascii") as f:
        for row in sorted_rows:
            f.write(f"{row['BE64 Hex']}\n")


def main():
    if not MODEL_PATH.exists():
        raise FileNotFoundError(f"Model file not found: {MODEL_PATH}")

    print(f"Loading model from: {MODEL_PATH}")
    state_dict = torch.load(MODEL_PATH, map_location="cpu")

    conv_rows = build_conv_format_rows(state_dict)
    conv_df = pd.DataFrame(conv_rows)
    conv_df.to_excel(CONV_OUT_XLSX, index=False)
    print(f"Saved conv format: {CONV_OUT_XLSX} ({len(conv_df)} rows)")

    fc_rows = build_fc_reordered_rows(state_dict)
    fc_df = pd.DataFrame(fc_rows)
    fc_df.to_excel(FC_OUT_XLSX, index=False)
    print(f"Saved fc reordered: {FC_OUT_XLSX} ({len(fc_df)} rows)")

    requant_rows = build_layer_requant_rows(state_dict)
    requant_df = pd.DataFrame(requant_rows)
    requant_df.to_excel(REQUANT_SUMMARY_XLSX, index=False)
    print(f"Saved requant summary: {REQUANT_SUMMARY_XLSX} ({len(requant_df)} rows)")
    print("Layer-wise requant params (.pth derived):")
    for row in requant_rows:
        print(
            f"  {row['Layer']:>5} | {row['Tensor Type']:<6} | "
            f"MULT_FACTOR={row['MULT_FACTOR']:<10} SHIFT_VAL={row['SHIFT_VAL']:<3} "
            f"ZERO_POINT={row['ZERO_POINT']:<4} source={row['Source']}"
        )

    conv_be64_df = pd.DataFrame(build_be64_sheet_rows_from_conv(conv_rows))
    fc_be64_df = pd.DataFrame(build_be64_sheet_rows_from_fc(fc_rows))
    combined_be64_df = pd.DataFrame(build_combined_be64_rows(conv_be64_df.to_dict("records"), fc_be64_df.to_dict("records")))
    with pd.ExcelWriter(PACKED_BE64_XLSX) as writer:
        conv_be64_df.to_excel(writer, sheet_name="conv_be64", index=False)
        fc_be64_df.to_excel(writer, sheet_name="fc_be64", index=False)
        combined_be64_df.to_excel(writer, sheet_name="combined_be64", index=False)
    write_combined_be64_mem(combined_be64_df.to_dict("records"), COMBINED_BE64_MEM)
    print(
        f"Saved packed be64 workbook: {PACKED_BE64_XLSX} "
        f"(conv={len(conv_be64_df)} words, fc={len(fc_be64_df)} words, combined={len(combined_be64_df)} words)"
    )
    print(f"Saved combined be64 mem: {COMBINED_BE64_MEM} ({len(combined_be64_df)} words)")


if __name__ == "__main__":
    main()
