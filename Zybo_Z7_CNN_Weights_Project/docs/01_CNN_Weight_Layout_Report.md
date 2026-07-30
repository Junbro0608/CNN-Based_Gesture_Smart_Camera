# 01. CNN Weight & Bias Layout Report

본 문서는 Zybo Z7-20 DRAM 메모리에 적재되는 CNN 5개 레이어(Conv1~3, FC1~2)의 텐서 차원 및 8-bit / 32-bit 데이터 접근 규칙을 설명합니다.

---

## 1. 데이터 규격 및 읽기 단위

* **가중치 (Weight, `_w.bin`)**: `int8_t` (8-bit / 1 Byte)
  - C언어: `int8_t *w_ptr = (int8_t*)0x10000000;` ➔ **Byte 단위 읽기**
* **편향 (Bias, `_b.bin`)**: `int32_t` (32-bit / 4 Byte, Little-Endian)
  - C언어: `int32_t *b_ptr = (int32_t*)0x10000100;` ➔ **Word 단위 읽기**

---

## 2. 레이어별 텐서 차원 매핑 (Tensor Layout Mapping)

### 🔹 Layer 1: Conv1
* **Shape**: `[Out: 16, In: 1, H: 3, W: 3]`
* **Weight**: 16 x 1 x 3 x 3 = 144 Bytes (`conv1_w.bin`)
* **Bias**: 16 x 4 Bytes = 64 Bytes (`conv1_b.bin`)
* **매핑**:
  - `conv1_b.bin`: Line 1 ~ 16 ➔ Output Channel 0 ~ 15 의 Bias
  - `conv1_w.bin`: Line 1 ~ 9 ➔ Output Channel 0 의 3x3 필터 커널

### 🔹 Layer 2: Conv2
* **Shape**: `[Out: 32, In: 16, H: 3, W: 3]`
* **Weight**: 32 x 16 x 3 x 3 = 4,608 Bytes (`conv2_w.bin`)
* **Bias**: 32 x 4 Bytes = 128 Bytes (`conv2_b.bin`)

### 🔹 Layer 3: Conv3
* **Shape**: `[Out: 64, In: 32, H: 3, W: 3]`
* **Weight**: 64 x 32 x 3 x 3 = 18,432 Bytes (`conv3_w.bin`)
* **Bias**: 64 x 4 Bytes = 256 Bytes (`conv3_b.bin`)

### 🔹 Layer 4: FC1 (Fully Connected 1)
* **Shape**: `[Out: 64, In: 1024]`
* **Weight**: 64 x 1024 = 65,536 Bytes (`fc1_w.bin`)
* **Bias**: 64 x 4 Bytes = 256 Bytes (`fc1_b.bin`)

### 🔹 Layer 5: FC2 (Fully Connected 2 / Output)
* **Shape**: `[Out: 1, In: 64]`
* **Weight**: 1 x 64 = 64 Bytes (`fc2_w.bin`)
* **Bias**: 1 x 4 Bytes = 4 Bytes (`fc2_b.bin`)
