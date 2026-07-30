# Zybo Z7-20 CNN Weights DRAM Loading Project

Zybo Z7-20 (Zynq-7000 SoC) 보드의 512MB DDR3 DRAM 메모리에 CNN(합성곱 신경망) 가중치 및 편향 데이터를 적재하고 검증하기 위한 GitHub 저장소 프로젝트입니다.

---

## 📁 디렉토리 구조 (Repository Structure)

```text
Zybo_Z7_CNN_Weights_Project/
├── README.md                           # 프로젝트 메인 안내서
├── docs/
│   ├── 01_CNN_Weight_Layout_Report.md  # 가중치/편향 데이터 레이아웃 및 차원 분석서
│   └── 02_Zybo_DRAM_Preloading_Guide.md # DRAM 사전 적재 절차 및 Race Condition 방지 가이드
└── weights_bin/                        # 8-bit / 32-bit 순수 바이너리 파일 (10개)
    ├── conv1_w.bin (144 B)
    ├── conv1_b.bin (64 B)
    ├── conv2_w.bin (4608 B)
    ├── conv2_b.bin (128 B)
    ├── conv3_w.bin (18432 B)
    ├── conv3_b.bin (256 B)
    ├── fc1_w.bin   (65536 B)
    ├── fc1_b.bin   (256 B)
    ├── fc2_w.bin   (64 B)
    └── fc2_b.bin   (4 B)
```

---

## 🚀 빠른 시작 (Quick Start Summary)

### 1. 가중치 데이터 규격
* **가중치 (`_w.bin`)**: `int8_t` (8-bit / 1 Byte) - Byte 단위 메모리 읽기
* **편향 (`_b.bin`)**: `int32_t` (32-bit / 4 Byte) - Word 단위 메모리 읽기

### 2. DRAM 메모리 맵 (Address Map)
* **기반 주소**: `0x10000000` (ARM 프로그램과 충돌 없는 안전 구역)

| 파일명 | 메모리 주소 | 크기 | 용도 |
| :--- | :--- | :--- | :--- |
| `conv1_w.bin` | `0x10000000` | 144 B | Conv1 Weight (`int8_t`) |
| `conv1_b.bin` | `0x10000100` | 64 B | Conv1 Bias (`int32_t`) |
| `conv2_w.bin` | `0x10010000` | 4,608 B | Conv2 Weight (`int8_t`) |
| `conv2_b.bin` | `0x10020000` | 128 B | Conv2 Bias (`int32_t`) |
| `conv3_w.bin` | `0x10030000` | 18,432 B | Conv3 Weight (`int8_t`) |
| `conv3_b.bin` | `0x10040000` | 256 B | Conv3 Bias (`int32_t`) |
| `fc1_w.bin` | `0x10050000` | 65,536 B | FC1 Weight (`int8_t`) |
| `fc1_b.bin` | `0x10070000` | 256 B | FC1 Bias (`int32_t`) |
| `fc2_w.bin` | `0x10080000` | 64 B | FC2 Weight (`int8_t`) |
| `fc2_b.bin` | `0x10080100` | 4 B | FC2 Bias (`int32_t`) |

---

## 📄 기술 문서

1. `docs/01_CNN_Weight_Layout_Report.md`: 텐서 차원 및 라인별 매핑 보고서
2. `docs/02_Zybo_DRAM_Preloading_Guide.md`: 안전한 DRAM 사전 적재 및 동기화 가이드
