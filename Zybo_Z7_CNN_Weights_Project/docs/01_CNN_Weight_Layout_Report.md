# 01. CNN Weight & Bias Layout Report (상세 배치 규격서)

본 문서는 Zybo Z7-20 DRAM 메모리에 적재되는 CNN 5개 레이어(Conv1~3, FC1~2)의 텐서 차원 및 각 라인(Line)별 1:1 데이터 대응 매핑을 읽는 사람이 오해 없이 명확히 이해할 수 있도록 세부 인덱스 단위로 설명합니다.

---

## 1. 데이터 규격 및 읽기 단위 (Data Specification)

* **가중치 (Weight, `_w.bin`)**: `int8_t` (8-bit / 1 Byte) - Byte 단위 메모리 읽기
  - C언어: `int8_t *w_ptr = (int8_t*)0x10000000;` ➔ **Byte 단위 읽기**
* **편향 (Bias, `_b.bin`)**: `int32_t` (32-bit / 4 Byte, Little-Endian)
  - C언어: `int32_t *b_ptr = (int32_t*)0x10000100;` ➔ **Word 단위 읽기**

---

## 2. 레이어별 텐서 차원 매핑 (Detailed Tensor Mapping)

### 🔹 Layer 1: Conv1 (Convolution Layer 1)
* **Shape**: `[Out_Channels: 16, In_Channels: 1, Kernel_H: 3, Kernel_W: 3]`
* **Weight Total**: 16 x 1 x 3 x 3 = 144 Bytes (`conv1_w.bin`)
* **Bias Total**: 16 x 4 Bytes = 64 Bytes (`conv1_b.bin`)

#### [Conv1 Bias 배치 상세] (`conv1_b.bin`) - 총 16개 라인
* **Line 1**: Output Channel 0 의 Bias (`int32_t`)
* **Line 2**: Output Channel 1 의 Bias (`int32_t`)
* **Line 3**: Output Channel 2 의 Bias (`int32_t`)
* ...
* **Line 16**: Output Channel 15 의 Bias (`int32_t`)

#### [Conv1 Weight 배치 상세] (`conv1_w.bin`) - 총 144개 라인
* **Line 1 ~ Line 9 (Output Channel 0 / Input Channel 0 의 3x3 커널)**:
  - **Line 1**: `W[Out: 0][In: 0][Row: 0][Col: 0]`
  - **Line 2**: `W[Out: 0][In: 0][Row: 0][Col: 1]`
  - **Line 3**: `W[Out: 0][In: 0][Row: 0][Col: 2]`
  - **Line 4**: `W[Out: 0][In: 0][Row: 1][Col: 0]`
  - **Line 5**: `W[Out: 0][In: 0][Row: 1][Col: 1]`
  - **Line 6**: `W[Out: 0][In: 0][Row: 1][Col: 2]`
  - **Line 7**: `W[Out: 0][In: 0][Row: 2][Col: 0]`
  - **Line 8**: `W[Out: 0][In: 0][Row: 2][Col: 1]`
  - **Line 9**: `W[Out: 0][In: 0][Row: 2][Col: 2]`
* **Line 10 ~ Line 18 (Output Channel 1 / Input Channel 0 의 3x3 커널)**:
  - **Line 10**: `W[Out: 1][In: 0][Row: 0][Col: 0]` ~ **Line 18**: `W[Out: 1][In: 0][Row: 2][Col: 2]`
* ...
* **Line 136 ~ Line 144 (Output Channel 15 / Input Channel 0 의 3x3 커널)**:
  - **Line 136**: `W[Out: 15][In: 0][Row: 0][Col: 0]` ~ **Line 144**: `W[Out: 15][In: 0][Row: 2][Col: 2]`

---

### 🔹 Layer 2: Conv2 (Convolution Layer 2)
* **Shape**: `[Out_Channels: 32, In_Channels: 16, Kernel_H: 3, Kernel_W: 3]`
* **Weight Total**: 32 x 16 x 3 x 3 = 4,608 Bytes (`conv2_w.bin`)
* **Bias Total**: 32 x 4 Bytes = 128 Bytes (`conv2_b.bin`)

#### [Conv2 Weight 배치 상세] (`conv2_w.bin`) - 총 4,608개 라인
- Output Channel 1개당 [In_Channels: 16 x 3x3 = 144개 라인]을 연속으로 차지합니다.
* **Line 1 ~ Line 144 (Output Channel 0 전용 가중치)**:
  - Line 1 ~ Line 9: `W[Out: 0][In: 0][Row: 0~2][Col: 0~2]` (In Channel 0의 3x3)
  - Line 10 ~ Line 18: `W[Out: 0][In: 1][Row: 0~2][Col: 0~2]` (In Channel 1의 3x3)
  - ...
  - Line 136 ~ Line 144: `W[Out: 0][In: 15][Row: 0~2][Col: 0~2]` (In Channel 15의 3x3)
* **Line 145 ~ Line 288 (Output Channel 1 전용 가중치)**:
  - Line 145 ~ Line 153: `W[Out: 1][In: 0][Row: 0~2][Col: 0~2]`
  - ...
  - Line 280 ~ Line 288: `W[Out: 1][In: 15][Row: 0~2][Col: 0~2]`
* ...
* **Line 4,465 ~ Line 4,608 (Output Channel 31 전용 가중치)**:
  - Output Channel 31 의 In Channel 0~15 커널 가중치들

---

### 🔹 Layer 3: Conv3 (Convolution Layer 3)
* **Shape**: `[Out_Channels: 64, In_Channels: 32, Kernel_H: 3, Kernel_W: 3]`
* **Weight Total**: 64 x 32 x 3 x 3 = 18,432 Bytes (`conv3_w.bin`)
* **Bias Total**: 64 x 4 Bytes = 256 Bytes (`conv3_b.bin`)

#### [Conv3 Weight 배치 상세] (`conv3_w.bin`) - 총 18,432개 라인
- Output Channel 1개당 [In_Channels: 32 x 3x3 = 288개 라인]을 연속으로 차지합니다.
* **Line 1 ~ Line 288 (Output Channel 0 전용 가중치)**:
  - Line 1 ~ 9: `W[Out: 0][In: 0]`, Line 10 ~ 18: `W[Out: 0][In: 1]`, ..., Line 280 ~ 288: `W[Out: 0][In: 31]`
* **Line 289 ~ Line 576 (Output Channel 1 전용 가중치)**:
* ...
* **Line 18,145 ~ Line 18,432 (Output Channel 63 전용 가중치)**

---

### 🔹 Layer 4: FC1 (Fully Connected Layer 1)
* **Shape**: `[Out_Features: 64, In_Features: 1024]`
* **Weight Total**: 64 x 1,024 = 65,536 Bytes (`fc1_w.bin`)
* **Bias Total**: 64 x 4 Bytes = 256 Bytes (`fc1_b.bin`)

#### [FC1 Bias 배치 상세] (`fc1_b.bin`) - 총 64개 라인
* **Line 1**: Output 뉴런 0 의 Bias (`int32_t`)
* **Line 2**: Output 뉴런 1 의 Bias (`int32_t`)
* ...
* **Line 64**: Output 뉴런 63 의 Bias (`int32_t`)

#### [FC1 Weight 배치 상세] (`fc1_w.bin`) - 총 65,536개 라인
- Output 뉴런 1개당 [In_Features: 1,024개 라인]이 연속으로 배치됩니다.
* **Line 1 ~ Line 1,024 (Output 뉴런 0 에 연결된 가중치들)**:
  - **Line 1**: `W[Out_Neuron: 0][In_Feature: 0]` (Out 0번 뉴런과 In 0번 입력 노드 연결 가중치)
  - **Line 2**: `W[Out_Neuron: 0][In_Feature: 1]` (Out 0번 뉴런과 In 1번 입력 노드 연결 가중치)
  - **Line 3**: `W[Out_Neuron: 0][In_Feature: 2]` (Out 0번 뉴런과 In 2번 입력 노드 연결 가중치)
  - ...
  - **Line 1,024**: `W[Out_Neuron: 0][In_Feature: 1023]` (Out 0번 뉴런과 In 1023번 입력 노드 연결 가중치)
* **Line 1,025 ~ Line 2,048 (Output 뉴런 1 에 연결된 가중치들)**:
  - **Line 1,025**: `W[Out_Neuron: 1][In_Feature: 0]`
  - **Line 1,026**: `W[Out_Neuron: 1][In_Feature: 1]`
  - ...
  - **Line 2,048**: `W[Out_Neuron: 1][In_Feature: 1023]`
* ...
* **Line 64,513 ~ Line 65,536 (Output 뉴런 63 에 연결된 가중치들)**:
  - **Line 64,513**: `W[Out_Neuron: 63][In_Feature: 0]`
  - ...
  - **Line 65,536**: `W[Out_Neuron: 63][In_Feature: 1023]`

---

### 🔹 Layer 5: FC2 (Fully Connected Layer 2 / Output Layer)
* **Shape**: `[Out_Features: 1, In_Features: 64]`
* **Weight Total**: 1 x 64 = 64 Bytes (`fc2_w.bin`)
* **Bias Total**: 1 x 4 Bytes = 4 Bytes (`fc2_b.bin`)

#### [FC2 Bias 배치 상세] (`fc2_b.bin`) - 총 1개 라인
* **Line 1**: 최종 Output 뉴런 0 의 Bias (`int32_t`)

#### [FC2 Weight 배치 상세] (`fc2_w.bin`) - 총 64개 라인
* **Line 1 ~ Line 64 (최종 Output 뉴런 0 에 연결된 64개 입력 가중치들)**:
  - **Line 1**: `W[Out_Neuron: 0][In_Feature: 0]`
  - **Line 2**: `W[Out_Neuron: 0][In_Feature: 1]`
  - ...
  - **Line 64**: `W[Out_Neuron: 0][In_Feature: 63]`

---

## 3. DRAM 메모리 주소 배치 맵 (Memory Address Map)

| 파일명 (`.bin`) | DRAM 오프셋 주소 | 데이터 크기 | 연결 계층 및 접근 방식 |
| :--- | :--- | :--- | :--- |
| **`conv1_w.bin`** | `0x10000000` | 144 Bytes | Conv1 Weight (`int8_t` / Byte 읽기) |
| **`conv1_b.bin`** | `0x10000100` | 64 Bytes | Conv1 Bias (`int32_t` / Word 읽기) |
| **`conv2_w.bin`** | `0x10010000` | 4,608 Bytes | Conv2 Weight (`int8_t` / Byte 읽기) |
| **`conv2_b.bin`** | `0x10020000` | 128 Bytes | Conv2 Bias (`int32_t` / Word 읽기) |
| **`conv3_w.bin`** | `0x10030000` | 18,432 Bytes | Conv3 Weight (`int8_t` / Byte 읽기) |
| **`conv3_b.bin`** | `0x10040000` | 256 Bytes | Conv3 Bias (`int32_t` / Word 읽기) |
| **`fc1_w.bin`** | `0x10050000` | 65,536 Bytes | FC1 Weight (`int8_t` / Byte 읽기) |
| **`fc1_b.bin`** | `0x10070000` | 256 Bytes | FC1 Bias (`int32_t` / Word 읽기) |
| **`fc2_w.bin`** | `0x10080000` | 64 Bytes | FC2 Weight (`int8_t` / Byte 읽기) |
| **`fc2_b.bin`** | `0x10080100` | 4 Bytes | FC2 Bias (`int32_t` / Word 읽기) |
