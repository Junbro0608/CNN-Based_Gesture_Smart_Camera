# 📋 FPGA Verilog 이식용 최종 128x128 고성능 CNN 모델 명세서 (Hardware Handover Report)

본 문서에는 **최종 결정된 128×128 고성능 사람 감지 CNN 모델(HumanDetectorCNN_FPGA128)**의 하드웨어(Basys3 / Zybo Z7 FPGA) 이식을 위한 **전체 아키텍처, 데이터 규격, INT8 양자화 공식, 10개 HEX 가중치 맵핑 및 Verilog 하드웨어 설계 가이드**가 포함되어 있습니다.

---

## 1. 하드웨어 성능 및 리소스 요약

| 구 분 | 명 세 (Specification) | 비 고 |
| :--- | :--- | :--- |
| **모델 아키텍처** | **HumanDetectorCNN_FPGA128 (Padding=1)** | 3× Conv + 5× MaxPool + 2× FC |
| **입력 데이터** | **128 × 128 Grayscale (1-Channel)** | 8-bit Unsigned (0 ~ 255) |
| **최종 성능 (Test Acc)** | **89.23% (Validation Loss: 0.2888)** | 100 Epochs 최적 수렴 모델 |
| **양자화 규격** | **Signed INT8 (8-bit 2's Complement)** | 가중치 $\times 127.0$, 바이어스 INT32 |
| **총 파라미터 수** | **88,784 개** | **INT8 양자화 적용 시 약 88.8 KB** |
| **Basys3 BRAM 점유율** | **약 39.4% (88.8 KB / 225 KB)** | **Basys3 및 Zybo 보드 100% 넉넉히 탑재** |
| **Flatten 차원** | **1,024 개 (64 × 4 × 4)** | 고해상도 미세 인지 특징 벡터 |
| **BatchNorm 구현** | **하드웨어 구현 0% (BN Folding 완료)** | 가중치/바이어스에 수학적 융합 완료 |
| **Sigmoid 구현** | **하드웨어 구현 0% (최종 Logit 판정)** | `Logit >= 0` ⚖️ 이면 **사람(1)** |

---

## 2. 순차 파이프라인 및 레이어별 차원 명세 (Layer Architecture)

```
[Input 128x128 (1-ch)]
         │
         ▼
[Conv1 + Pool1]  ────>  16 × 64 × 64  (Conv 1→16 + Pool 128→64)
         │
         ▼
[Conv2 + Pool2]  ────>  32 × 32 × 32  (Conv 16→32 + Pool 64→32)
         │
         ▼
[Conv3 + Pool3]  ────>  64 × 16 × 16  (Conv 32→64 + Pool 32→16)
         │
         ▼
[Pool4]          ────>  64 × 8 × 8    (추가 Pool: 16→8)
         │
         ▼
[Pool5]          ────>  64 × 4 × 4    (추가 Pool: 8→4)
         │
         ▼
[Flatten]        ────>  1,024 (1D Vector)
         │
         ▼
[FC1]            ────>  64 Vector (Linear 1024→64)
         │
         ▼
[FC2 (Logit)]    ────>  1 Output (Linear 64→1)
```

| 레이어 | 입력 차원 (Input) | 출력 차원 (Output) | 필터 연산 (Kernel & Padding) | 활성화/연산 (Activation) | 가중치 크기 |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **Input** | `1 × 128 × 128` | `1 × 128 × 128` | - | Grayscale 8-bit | - |
| **Layer 1** | `1 × 128 × 128` | **`16 × 64 × 64`** | 3x3 (s=1, **p=1**) + Pool(2x2) | ReLU + MaxPool(2x2) | 144 개 |
| **Layer 2** | `16 × 64 × 64` | **`32 × 32 × 32`** | 3x3 (s=1, **p=1**) + Pool(2x2) | ReLU + MaxPool(2x2) | 4,608 개 |
| **Layer 3** | `32 × 32 × 32` | **`64 × 16 × 16`** | 3x3 (s=1, **p=1**) + Pool(2x2) | ReLU + MaxPool(2x2) | 18,432 개 |
| **Pool 4** | `64 × 16 × 16` | **`64 × 8 × 8`** | MaxPool (2x2, stride 2) | MaxPool | 0 개 |
| **Pool 5** | `64 × 8 × 8` | **`64 × 4 × 4`** | MaxPool (2x2, stride 2) | MaxPool | 0 개 |
| **Flatten** | `64 × 4 × 4` | **`1024 (1D Vector)`** | 주소 맵핑 (Address Mapping) | - | - |
| **FC 1** | **`1024`** | **`64`** | Matrix-Vector Multiplication | ReLU | 65,536 개 |
| **FC 2** | `64` | **`1 (Final Logit)`** | Matrix-Vector Multiplication | Linear (None) | 64 개 |

---

## 3. INT8 양자화 및 가중치 HEX 파일 명세 (128x128)

### 3.1 양자화 공식 (Quantization Scheme)
1. **BatchNorm 융합 (BN Folding)**:
   - `W_folded = W * (gamma / sqrt(var + eps))`
   - `b_folded = beta - mean * (gamma / sqrt(var + eps))`
2. **INT8 가중치 스케일링**:
   - `W_INT8 = clamp(round(W_folded * 127.0), -128, 127)` (8-bit Signed 2's Complement)
3. **INT32 바이어스 스케일링**:
   - `b_INT32 = round(b_folded * 127.0)` (32-bit Signed 2's Complement)

### 3.2 128x128 전용 HEX 파일 인벤토리

| 파일명 (File Name) | 역할 | 데이터 개수 | 비트 폭 (Hex Length) | 데이터 포맷 |
| :--- | :--- | :---: | :---: | :--- |
| `conv1_w.hex` | Conv1 융합 가중치 | 144 행 | 8-bit (2 hex) | Signed INT8 |
| `conv1_b.hex` | Conv1 융합 바이어스 | 16 행 | 32-bit (8 hex) | Signed INT32 |
| `conv2_w.hex` | Conv2 융합 가중치 | 4,608 행 | 8-bit (2 hex) | Signed INT8 |
| `conv2_b.hex` | Conv2 융합 바이어스 | 32 행 | 32-bit (8 hex) | Signed INT32 |
| `conv3_w.hex` | Conv3 융합 가중치 | 18,432 행 | 8-bit (2 hex) | Signed INT8 |
| `conv3_b.hex` | Conv3 융합 바이어스 | 64 행 | 32-bit (8 hex) | Signed INT32 |
| `fc1_w.hex` | FC1 가중치 | **65,536 행** | 8-bit (2 hex) | Signed INT8 ($1024 \rightarrow 64$) |
| `fc1_b.hex` | FC1 바이어스 | 64 행 | 32-bit (8 hex) | Signed INT32 |
| `fc2_w.hex` | FC2 가중치 | 64 행 | 8-bit (2 hex) | Signed INT8 ($64 \rightarrow 1$) |
| `fc2_b.hex` | FC2 바이어스 | 1 행 | 32-bit (8 hex) | Signed INT32 |

---

## 4. Verilog RTL 하드웨어 구현 필수 가이드

1. **Zero-Padding (Padding=1) 테두리 처리**:
   - `Conv1`, `Conv2`, `Conv3` 연산 시 3×3 윈도우가 테두리(`x==0`, `y==0`, `x==width-1`, `y==height-1`)에 걸칠 때 **0을 주입하는 경계 검사 멀티플렉서(Border MUX)를 라인 버퍼에 추가**합니다.
2. **MaxPool IP 모듈 재사용**:
   - `Pool 1`부터 `Pool 5`까지 모든 풀링 연산은 **`2×2, Stride=2`** 로 완전히 동일합니다.
   - 단 1개의 MaxPool 모듈을 만들어 두고 **FSM 상태 제어로 5회 재사용**하면 LUT 소자를 크게 아낄 수 있습니다.
3. **최종 판정 및 비교기 (Comparator)**:
   - `FC2`의 최종 연산 결과 32-bit Signed 출력값 `Logit`에 대해:
     * `Logit >= THRESHOLD_REG` (기본값 0) $\rightarrow$ **사람 (Human / Label 1)**
     * `Logit < THRESHOLD_REG` $\rightarrow$ **배경 (Background / Label 0)**
   - Sigmoid 지수 함수 구현 없이 부호 비트(MSB) 또는 비교기 하나로 판단합니다.
