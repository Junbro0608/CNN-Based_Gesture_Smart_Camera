outputs/README_면접관용.md
# Zynq FPGA 기반 CNN Convolution 가속기

> Zynq FPGA의 PL에서 3×3 Convolution을 병렬 처리하도록 설계한 SystemVerilog RTL 프로젝트입니다.  
> 개발 환경: **SystemVerilog · Vivado/XSim 2020.2 · Zynq FPGA**  
> 프로젝트 상태: **CNN RTL 통합 및 기본 시뮬레이션 완료 / 외부 Buffer 연결과 Timing 검증 진행 중**

## 프로젝트 한눈에 보기

CNN 추론에서 연산량이 큰 3×3 Convolution을 FPGA에서 처리하기 위해 다음 데이터 경로를 설계했습니다.

- `4×4 Feature Tile`에서 `3×3 Window` 4개 생성
- 동일 Window를 공유하는 `CH` 연산기 8개로 출력 채널 8개 병렬 계산
- 입력 채널 방향 누적과 출력 채널별 Bias 처리
- 2×2 MaxPool과 ReLU 후 외부 Ping-pong Buffer에 결과 저장
- Conv1~3과 Pool4~5를 단계별 `start / busy / done`으로 실행
- `valid / ready` Handshake를 적용해 Backpressure 처리

```text
External Data Ping-pong Buffer
             │ signed Feature
             ▼
       Shift_Buffer
       4×4 Tile 저장
             │ 3×3 Window × 4
             ▼
        CH_wrapper
        CH × 8 병렬 연산  ◀── Weight_Loader ◀── External Weight Buffer
             │
             ▼
     CH_Result_Buffer
     MaxPool / ReLU
             │
             ▼
    Feature_Buffer_Mux
             │ CHW Address
             ▼
External Data Ping-pong Buffer
```

## 담당 범위

CNN 가속기의 Convolution 데이터 경로와 하위 연산 모듈, 외부 Buffer 인터페이스를 담당했습니다.

| 담당 영역 | 구현 내용 |
|---|---|
| CNN 통합 | Conv1~3, Pool4~5의 단계 실행과 외부 인터페이스 통합 |
| Convolution 제어 | Weight/Data 요청, 입력·출력 채널 반복, 결과 주소와 Write 제어 FSM |
| CH 병렬 연산 | 출력 채널 8개를 동시에 계산하는 Wrapper와 단일 CH 연산기 구현 |
| Feature 재사용 | 4×4 Tile을 저장하고 3×3 Window 4개를 생성하는 Shift Buffer 구현 |
| Weight 공급 | 64-bit Weight Word를 CH별 8-bit Weight로 분배하는 Loader 구현 |
| 후처리 | 네 위치의 Conv 결과 저장, 2×2 MaxPool과 ReLU 처리 |
| 외부 Buffer 연결 | Data/Weight Ping-pong Buffer의 주소·Bank 선택·Read/Write 규칙 정의 |
| 검증 | 단위 및 통합 Self-checking Testbench 작성·수행 |

### 담당 RTL

- [`CNN.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CNN.sv) - CNN 최상위 통합
- [`Conv_Controller.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Conv_Controller.sv) - Convolution 제어 FSM
- [`Weight_Loader.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Weight_Loader.sv) - Weight/Bias 로딩 및 분배
- [`CH_wrapper.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH_wrapper.sv) - CH 8개 병렬화
- [`CH.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH.sv) - 단일 출력 채널 MAC·누적 연산
- [`Shift_Buffer.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Shift_Buffer.sv) - 4×4 Tile 및 3×3 Window 생성
- [`CH_Result_Buffer.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH_Result_Buffer.sv) - MaxPool/ReLU 및 결과 저장
- [`Feature_Buffer_Mux.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Feature_Buffer_Mux.sv) - 외부 Feature Buffer 경로 선택
- [`Standalone_MaxPool.sv`](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Standalone_MaxPool.sv) - Pool4/Pool5 처리

## 핵심 설계

### 1. 8개 출력 채널 병렬 처리

CH 하나는 출력 채널 하나를 담당합니다. 8개 CH가 같은 Pixel Window를 공유하고 서로 다른 Weight와 Bias를 사용해 출력 채널 8개를 동시에 계산합니다.

```text
output[oc] = Σ(ic) Σ(k=0..8) feature[ic][k] × weight[oc][ic][k] + bias[oc]
```

```text
CH0 → output channel group_base + 0
CH1 → output channel group_base + 1
...
CH7 → output channel group_base + 7
```

출력 채널 수가 CH 수보다 많으면 출력 채널을 8개 단위의 그룹으로 나누어 반복 실행합니다.

| Layer | 출력 채널 | 8-CH 실행 그룹 수 |
|---|---:|---:|
| Conv1 | 16 | 2 |
| Conv2 | 32 | 4 |
| Conv3 | 64 | 8 |

### 2. 4×4 Tile에서 네 개의 3×3 Window 생성

2×2 MaxPool에 필요한 네 개의 Conv 위치를 묶어 처리하기 위해 4×4 Tile을 저장합니다.

```text
4×4 Tile
 ├─ Window 0: 좌상 3×3
 ├─ Window 1: 우상 3×3
 ├─ Window 2: 좌하 3×3
 └─ Window 3: 우하 3×3
```

CH 내부의 `accumulator[0:3]`은 네 공간 위치의 결과를 입력 채널 방향으로 독립적으로 누적합니다.

| `first_ic` | `last_ic` | 동작 |
|---:|---:|---|
| 1 | 1 | `conv_sum + bias` 출력 |
| 1 | 0 | `accumulator = conv_sum` |
| 0 | 0 | `accumulator += conv_sum` |
| 0 | 1 | `accumulator + conv_sum + bias` 출력 |

### 3. Fixed-point 데이터 형식

| 데이터 | 형식 | 비고 |
|---|---|---|
| Feature | signed 8-bit | `-128~127` |
| Weight | signed 8-bit | `-128~127` |
| Bias | signed 32-bit | CH 입력 기준 |
| Product | signed 18-bit | 9-bit × 9-bit |
| Conv sum / Accumulator | signed 32-bit | 입력 채널 누적 |
| Result | signed 8-bit | 산술 Shift 후 절삭 |

현재 통합 설정은 `OUTPUT_SHIFT=8`입니다.

```systemverilog
result_out = (accumulator + conv_sum + bias) >>> OUTPUT_SHIFT;
```
