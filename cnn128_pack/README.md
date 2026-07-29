# 🧠 FPGA-Targeted High-Performance Human Detection CNN (128x128 / INT8 Quantized)

본 리포지토리는 **FPGA (Basys3 / Zybo Z7) Verilog 하드웨어 이식**을 위한 **128×128 고성능 사람 감지 CNN 모델**의 학습 코드, 실시간 웹캠 추론 코드, INT8 가중치 `.hex` 파일 및 하드웨어 이식 명세서가 포함되어 있습니다.

---

## 📌 주요 특징 (Key Specifications)

* **입력 데이터**: `128 × 128` Grayscale (8-bit unsigned 0~255)
* **네트워크 아키텍처**: 3× Conv + 5× MaxPool + 2× FC (`HumanDetectorCNN_FPGA128`)
* **최종 테스트 정확도**: **89.23%** (Validation Loss: 0.2888 ~ 0.3231)
* **양자화 (Quantization)**: **Signed INT8** 가중치 / **Signed INT32** 바이어스
* **모델 용량**: **약 88.8 KB** (Basys3 BRAM 225KB 메모리의 39.4% 점유로 넉넉하게 탑재 가능)
* **Verilog 하드웨어 최적화**:
  - **BatchNorm Folding**: 가중치 및 바이어스 수학적 융합 (BN 모듈 구현 0%)
  - **Sigmoid Elimination**: 최종 `Logit >= 0` 부호 판단으로 시그모이드 연산기 제거
  - **MaxPool Reuse**: 5번의 풀링 연산(`2x2, stride 2`)을 1개 모듈로 FSM 재사용 가능

---

## 📁 파일 구성 (File Inventory)

| 파일명 | 설명 |
| :--- | :--- |
| **`train_master_128.py`** | 128x128 모델 학습 & INT8 HEX 가중치 자동 추출 스크립트 |
| **`pc_webcam_inference_master128.py`** | 128x128 모델 PC 실시간 웹캠 추론 스크립트 |
| **`prepare_dataset_master.py`** | 데이터셋 통합 및 전처리 스크립트 |
| **`best_model_master128.pth`** | PyTorch 128x128 모델 가중치 파일 (~365KB) |
| **`training_curves_master128.png`** | 학습 Loss 및 Accuracy 곡선 그래프 이미지 |
| **`conv1_w.hex ~ fc2_b.hex`** | Verilog BRAM 메모리 초기화용 INT8/INT32 HEX 파일 (10개) |
| **`VERILOG_SPEC_REPORT.md`** | Verilog 하드웨어 이식 명세 보고서 |

---

## 🚀 실행 방법 (Usage Guide)

### 1. 128×128 모델 학습 및 HEX 가중치 추출
```bash
python train_master_128.py
```

### 2. PC 실시간 웹캠 추론 검증
```bash
python pc_webcam_inference_master128.py
```
* 사각형 영역 안에 사람이 들어오면 `Human (Green)` 상태 표시
* 상단 트랙바(Trackbar)로 임계값(Threshold) 실시간 조절 가능
