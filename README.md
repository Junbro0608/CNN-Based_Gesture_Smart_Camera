# Zynq FPGA 기반 CNN Convolution 가속기

> 최종 정리일: **2026.07.31**  
> 담당 범위: CNN Convolution 데이터 경로, CH 병렬 연산, Weight Loader, MaxPool/ReLU 및 외부 Ping-pong Buffer 인터페이스

## 담당 RTL 바로가기

- [CNN 최상위 통합 모듈 (`CNN.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CNN.sv)
- [Convolution 제어 FSM (`Conv_Controller.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Conv_Controller.sv)
- [Weight 로더 (`Weight_Loader.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Weight_Loader.sv)
- [CH 8개 병렬 Wrapper (`CH_wrapper.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH_wrapper.sv)
- [단일 출력 채널 연산기 (`CH.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH.sv)
- [4개 Conv 결과 및 MaxPool/ReLU 처리 (`CH_Result_Buffer.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH_Result_Buffer.sv)
- [4×4 Tile 및 3×3 Window 생성 (`Shift_Buffer.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Shift_Buffer.sv)
- [Conv/독립 Pool 외부 Buffer 경로 선택 (`Feature_Buffer_Mux.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Feature_Buffer_Mux.sv)
- [Pool4/Pool5 처리 (`Standalone_MaxPool.sv`)](FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/Standalone_MaxPool.sv)

## 작업 기록

- **2026.07.29**: CNN 통합, 파라미터/FSM/모듈 연결 및 기본 Testbench 검증
- **2026.07.31**: 외부 Data/Weight Ping-pong Buffer 연결 규칙, 실제 사용 모듈, 주소 형식, 클록 지연 및 Bias 저장 규격 정리

## 1. 연결 담당자가 먼저 알아야 할 내용

1. `CNN.sv` 내부에는 실제 Data Buffer와 Weight Buffer 메모리가 없다.
2. 외부에서 Ping-pong Buffer의 `rData`와 `weight_rdata`를 공급해야 한다.
3. 현재 외부 Read 인터페이스는 **비동기 Read**를 가정한다.
4. 외부 Write Buffer는 `we=1`인 클록 상승 에지에서 반드시 데이터를 받아야 한다.
5. 한 번의 `start`는 전체 CNN이 아니라 **현재 Conv Layer 또는 Pool 단계 하나**를 실행한다.
6. `done`은 현재 단계의 마지막 결과가 Buffer에 기록된 후 발생한다.
7. Conv Layer 사이에는 다음 입력을 위한 1-pixel Zero Padding 데이터 재배치가 필요하다.
8. Feature/Pixel은 signed 8-bit이다. 일반 Grayscale 입력은 CNN 저장 전에 signed 값으로 변환해야 한다.
9. `weight_addr`는 Byte 주소가 아니라 **64-bit Word 주소**이다.
10. 외부 Bias 규격이 “64-bit 한 주소에 32-bit Bias 2개”로 확정되면 현재 `Weight_Loader.sv` 수정이 필요하다.

## 2. 실제 CNN 데이터 흐름

```text
외부 Data Ping-pong Buffer
        │ rAddr / rData
        ▼
CNN 내부 data_reg
        │ pixel_valid / pixel_ready
        ▼
Shift_Buffer
  4×4 Pixel Tile 16개 저장
        │
        ├─ 3×3 Window 0: 좌상
        ├─ 3×3 Window 1: 우상
        ├─ 3×3 Window 2: 좌하
        └─ 3×3 Window 3: 우하
        │
        ▼
CH_wrapper
  동일 Pixel Window를 CH 8개가 공유
  CH마다 서로 다른 Weight/Bias 사용
        │
        ▼
CH_Result_Buffer
  4개 위치 × 8개 채널 결과 저장
        │
        ├─ MaxPool 선택
        └─ ReLU 선택
        │
        ▼
Feature_Buffer_Mux
        │ we / w_sel / wAddr / wData
        ▼
외부 Data Ping-pong Buffer의 반대 Bank
```

Weight 경로는 다음과 같다.

```text
외부 Weight Ping-pong Buffer
        │ weight_addr / weight_rdata[63:0]
        ▼
Weight_Loader
  CH별 Weight 9개와 Bias 저장
        │ weight_valid
        ▼
CH_wrapper의 CH0~CH7
```

## 3. 현재 기본 CNN 구성

현재 `CNN.sv`의 기본 파라미터는 다음과 같다.

```systemverilog
parameter integer NUM_CH = 8;
parameter integer NUM_LAYERS = 3;
parameter integer INPUT_WIDTH = 128;
parameter integer INPUT_HEIGHT = 128;
parameter integer LAYER0_OUTPUT_CHANNELS = 16;
parameter integer LAYER1_OUTPUT_CHANNELS = 32;
parameter integer LAYER2_OUTPUT_CHANNELS = 64;
```

기본 처리 결과는 다음과 같다.

| 단계 | 입력 | 처리 | 출력 |
|---|---|---|---|
| Conv1 | `1×128×128` | 3×3 Conv + 2×2 MaxPool + ReLU | `16×64×64` |
| Conv2 | `16×64×64` | 3×3 Conv + 2×2 MaxPool + ReLU | `32×32×32` |
| Conv3 | `32×32×32` | 3×3 Conv + 2×2 MaxPool + ReLU | `64×16×16` |
| Pool4 | `64×16×16` | 2×2 MaxPool | `64×8×8` |
| Pool5 | `64×8×8` | 2×2 MaxPool | `64×4×4` |

각 Conv 입력은 외부 Buffer에 1-pixel Zero Padding이 포함된 상태로 들어와야 한다.

```text
Conv1 실제 입력: 1×130×130
Conv2 실제 입력: 16×66×66
Conv3 실제 입력: 32×34×34
```

CNN은 Compact 결과를 저장한다. 따라서 Layer 사이에서 외부 제어부가 다음 Layer용 Padding을 포함하도록 데이터를 재배치해야 한다.

## 4. CNN 최상위 외부 인터페이스

### 제어 신호

| 신호 | 방향 | 의미 |
|---|---|---|
| `clk` | 입력 | CNN 동작 클록 |
| `rst_n` | 입력 | Active-Low Reset |
| `start` | 입력 | 현재 Layer 또는 Pool 단계 시작 요청, 1클록 Pulse |
| `busy` | 출력 | 현재 단계가 실행 중임 |
| `done` | 출력 | 현재 단계의 마지막 Write 완료 후 발생하는 1클록 Pulse |

### 외부 Data Ping-pong Buffer

| 신호 | 방향 | 의미 |
|---|---|---|
| `rAddr` | CNN → Buffer | Feature Read 주소 |
| `rData` | Buffer → CNN | 요청 주소의 signed Feature 데이터 |
| `we` | CNN → Buffer | Write Enable |
| `w_sel` | CNN → Buffer | Write Bank 선택 |
| `wAddr` | CNN → Buffer | 결과 저장 주소 |
| `wData` | CNN → Buffer | 저장할 signed 결과 |

외부 Ping-pong Buffer의 Bank 선택 규칙은 다음과 같다.

```text
w_sel=0 → Mem A에 Write, Mem B에서 Read
w_sel=1 → Mem B에 Write, Mem A에서 Read
```

### 외부 Weight Ping-pong Buffer

| 신호 | 방향 | 의미 |
|---|---|---|
| `weight_ren` | CNN → Buffer | Weight Read Enable |
| `weight_addr` | CNN → Buffer | 64-bit Word 단위 Read 주소 |
| `weight_rdata[63:0]` | Buffer → CNN | 64-bit Weight 또는 Bias 데이터 |

## 5. 외부 Buffer가 만족해야 하는 타이밍 조건

### Data Read

현재 CNN은 외부 Data Buffer가 다음과 같은 비동기 Read라고 가정한다.

```systemverilog
assign rData = mem[rAddr];
```

동작 순서:

```text
Clock N 이전: CNN이 rAddr와 Read 요청 출력
Clock N Edge: CNN 내부 data_reg가 rData 저장
Clock N+1 Edge: Shift_Buffer가 data_reg의 Pixel 저장
```

CNN 내부의 실제 저장 조건은 다음과 같다.

```text
data_read_fire =
    controller_data_read_enable && data_read_ready
```

외부 Buffer가 BRAM과 같은 1클록 동기식 Read라면 현재 포트를 그대로 연결할 수 없다. `read_valid/read_ready`가 있는 Adapter를 추가하거나 CNN의 Read 경로를 수정해야 한다.

### Weight Read

현재 `Weight_Loader` 역시 `weight_addr` 변경에 따라 `weight_rdata`가 조합논리로 나오는 구조를 가정한다.

```text
weight_addr 출력
    ↓ 조합논리
weight_rdata 유효
    ↓ 다음 상승 에지
Weight_Loader 내부 레지스터에 저장
```

AXI Stream이나 동기식 BRAM을 연결할 경우 실제 Handshake 또는 Read latency 처리가 필요하다.

### Data Write

```text
we=1
wAddr와 wData 유효
    ↓ 클록 상승 에지
외부 Buffer가 mem[wAddr]에 wData 저장
    ↓ 다음 상태
하위 done, 이후 CNN done 발생
```

현재 Write 인터페이스에는 `write_ready`가 없다. 따라서 외부 Buffer는 `we=1`인 모든 상승 에지에서 Write를 받아야 한다.

## 6. `start`, `busy`, `done` 사용 순서

현재 상위 FSM은 단계별 `start/done` 방식이다.

```text
start → Conv1 → done
외부 Data Padding/Weight 갱신

start → Conv2 → done
외부 Data Padding/Weight 갱신

start → Conv3 → done
외부 Buffer 준비

start → Pool4 → done
외부 Buffer 준비

start → Pool5 → done
최종 결과 준비
```

`done`을 확인했을 때는 현재 단계의 마지막 결과가 이미 Buffer에 기록된 상태이다.

```text
마지막 Write Edge
    ↓
Conv/Pool 하위 DONE 상태
    ↓
CNN STAGE_DONE 상태
    ↓
CNN done=1
```

외부 제어부는 다음 순서를 지켜야 한다.

1. CNN `done=1` 확인
2. 필요한 Padding 및 Data Bank 준비
3. 다음 Layer Weight를 Weight Buffer에 로딩
4. Bank 준비 완료 확인
5. 다음 `start` 1클록 Pulse 발생

## 7. 상위 및 하위 FSM

### CNN 상위 FSM

```text
CNN_IDLE
   ↓ start
START_GROUP
   ↓
RUN_GROUP
   ├─ 다음 출력 채널 그룹 → START_GROUP
   └─ 현재 Layer 완료 → STAGE_DONE
                             ↓
                       WAIT_STAGE_START
                             ↓ start
              다음 Conv 또는 START_POOL4/5
```

`NUM_CH=8`이므로 출력 채널 그룹 수는 다음과 같다.

```text
Conv1: 16채널 / 8 = 2그룹
Conv2: 32채널 / 8 = 4그룹
Conv3: 64채널 / 8 = 8그룹
```

### Conv Controller FSM

```text
IDLE
  ↓ start
SET_WEIGHT_DATA
  ├─ Weight Loader 시작
  └─ 4×4 Pixel Tile 16개 요청
  ↓
CONV
  ├─ 다음 입력 채널 → SET_WEIGHT_DATA
  └─ 마지막 입력 채널 → POST_PROCESS
  ↓
POST_PROCESS
  ↓ CH_Result_Buffer 출력 준비
PUSH_DATA
  ├─ 다음 공간 위치 → SET_WEIGHT_DATA
  └─ 모든 위치 완료 → DONE
  ↓
IDLE
```

### 하위 FSM

```text
Weight_Loader:
IDLE → READ_WEIGHT → READ_BIAS → IDLE

Shift_Buffer:
CAPTURE_TILE ↔ OUTPUT_WINDOWS

CH_Result_Buffer:
CAPTURE_RESULTS ↔ OUTPUT_RESULTS

Standalone_MaxPool:
IDLE → READ_PIXELS → WRITE_RESULT → DONE
```

## 8. CH 병렬 연산

CH 하나는 출력 채널 하나를 담당한다.

```text
output[oc] =
    Σ(ic) Σ(k=0~8)
        pixel[ic][k] × weight[oc][ic][k]
    + bias[oc]
```

CH 8개는 같은 `3×3 Pixel Window`를 공유하고 서로 다른 Weight와 Bias를 사용한다.

```text
CH0 → 출력 채널 group_base+0
CH1 → 출력 채널 group_base+1
...
CH7 → 출력 채널 group_base+7
```

입력 채널 누적은 다음과 같다.

| `first_ic` | `last_ic` | 동작 |
|---:|---:|---|
| 1 | 1 | `conv_sum + bias` 출력 |
| 1 | 0 | `accumulator = conv_sum` |
| 0 | 0 | `accumulator += conv_sum` |
| 0 | 1 | `accumulator + conv_sum + bias` 출력 |

각 2×2 Pool 영역의 네 Conv 위치를 독립적으로 누적하기 위해 CH 내부에는 `accumulator[0:3]`이 있다.

전달은 `valid && ready`가 모두 1인 상승 에지에서만 성립한다.

```text
Pixel Window 전달: pixel_valid && pixel_ready
CH 결과 전달:     result_valid && result_ready
Buffer 결과 전달: output_valid && output_ready
```

## 9. 데이터 형식

| 데이터 | 형식 | 비고 |
|---|---|---|
| Pixel/Feature | signed 8-bit | `-128~127` |
| Weight | signed 8-bit | `-128~127` |
| Bias | signed 32-bit | CH 입력 형식 |
| Pixel 내부 확장 | signed 9-bit | 부호 확장 |
| Weight 내부 확장 | signed 9-bit | 부호 확장 |
| Product | signed 18-bit | `9-bit × 9-bit` |
| `conv_sum` | signed 32-bit | 입력 채널 하나의 3×3 합 |
| `accumulator` | signed 32-bit | 입력 채널 누적 |
| `full_result` | signed 32-bit | 누적값 + Bias |
| `result_out` | signed 8-bit | 산술 Shift 후 절삭 |

현재 CNN 통합에서는 CH의 `OUTPUT_SHIFT=8`을 사용한다.

```systemverilog
result_out =
    (accumulator + conv_sum + bias) >>> OUTPUT_SHIFT;
```

Saturation이 아니라 Shift 후 signed 8-bit 절삭이므로 범위를 벗어나면 Wrap-around가 발생할 수 있다.

일반적인 unsigned Grayscale 영상을 입력할 경우 예시는 다음과 같다.

```text
CNN signed pixel = grayscale pixel - 128

0   → -128
128 → 0
255 → 127
```

카메라 전처리 담당자와 실제 정규화 및 Quantization 규칙을 반드시 동일하게 맞춰야 한다.

## 10. Weight 및 Bias 메모리 형식

### Weight 형식

Weight는 현재 규격과 RTL이 일치한다.

```text
64-bit Word 하나 = 같은 Kernel 위치의 CH0~CH7 Weight

[7:0]   → CH0
[15:8]  → CH1
[23:16] → CH2
[31:24] → CH3
[39:32] → CH4
[47:40] → CH5
[55:48] → CH6
[63:56] → CH7
```

입력 채널 하나와 출력 그룹 하나당 Weight Word는 9개이다.

```text
Weight Word 0~8 → Kernel 위치 0~8
```

Weight 주소식:

```text
weight_addr =
    ((output_group × input_channels) + input_channel) × 9
    + kernel_index
```

### Bias 형식: 연결 전 수정 필요

외부 최종 요구 규격:

```text
64-bit 주소 하나에 signed 32-bit Bias 2개
```

출력 그룹 하나는 CH 8개이므로 Bias 주소 4개가 필요하다.

```text
Bias Word 0: [31:0]=CH0, [63:32]=CH1
Bias Word 1: [31:0]=CH2, [63:32]=CH3
Bias Word 2: [31:0]=CH4, [63:32]=CH5
Bias Word 3: [31:0]=CH6, [63:32]=CH7
```

Bias 시작 주소:

```text
bias_base = output_groups × input_channels × 9

bias_addr =
    bias_base
    + output_group × 4
    + bias_word_index
```

현재 `Weight_Loader.sv`는 아직 한 Bias Word에서 signed 8-bit Bias 8개를 읽어 32-bit로 부호 확장하는 방식이다. 따라서 외부 Buffer를 연결하기 전에 다음 변경이 필요하다.

1. `READ_BIAS`에서 Bias Word 4개를 읽도록 `bias_word_index` 추가
2. 각 Word의 `[31:0]`, `[63:32]`를 두 CH의 signed 32-bit Bias로 저장
3. 네 번째 Bias Word 저장 후 `weight_valid=1`
4. Testbench와 Weight Excel 주소를 동일 규격으로 변경

변경 후 Layer별 64-bit Word 수:

| Layer | 입력 채널 | 출력 그룹 | Weight Word | Bias Word | 합계 |
|---|---:|---:|---:|---:|---:|
| Conv1 | 1 | 2 | 18 | 8 | 26 |
| Conv2 | 16 | 4 | 576 | 16 | 592 |
| Conv3 | 32 | 8 | 2304 | 32 | 2336 |

현재 시스템은 Layer가 끝날 때마다 Weight Buffer를 다시 로딩하므로 각 Layer의 Weight 주소는 0부터 시작한다.

## 11. Data Buffer 주소 형식

결과는 채널별 연속 영역을 사용하는 CHW 형식으로 저장한다.

```text
주소 =
    channel × (output_height × output_width)
    + y × output_width
    + x
```

| 단계 | 출력 크기 | 다음 x | 다음 y | 다음 채널 |
|---|---|---:|---:|---:|
| Conv1 | `16×64×64` | `+1` | `+64` | `+4096` |
| Conv2 | `32×32×32` | `+1` | `+32` | `+1024` |
| Conv3 | `64×16×16` | `+1` | `+16` | `+256` |
| Pool4 | `64×8×8` | `+1` | `+8` | `+64` |
| Pool5 | `64×4×4` | `+1` | `+4` | `+16` |

CH 8개가 같은 위치를 병렬 계산해도 결과는 각 채널의 전용 주소 영역에 저장한다.

Conv1의 `(y=0,x=0)` 예시:

```text
CH0 → 주소 0
CH1 → 주소 4096
CH2 → 주소 8192
...
CH7 → 주소 28672
```

계산 순서와 메모리 주소 순서는 다를 수 있지만 주소식은 항상 위 CHW 규칙을 따른다.

### 필요한 Data Buffer 깊이

단순한 `128×128=16384` 깊이만으로는 다채널 Feature Map을 저장할 수 없다.

현재 기본 구성에서 가장 큰 저장 구간은 Padding된 Conv2 입력이다.

```text
16 × 66 × 66 = 69,696 entries
```

따라서 외부 Data Ping-pong Buffer의 각 Bank는 최소 69,696개의 8-bit 데이터를 저장할 수 있어야 한다. 여유 주소와 향후 채널 변경을 고려해 실제 깊이를 결정해야 한다.

## 12. Reset 동작

`rst_n=0`이면 CNN과 하위 FSM은 즉시 초기 상태로 돌아간다.

```text
CNN FSM            → CNN_IDLE
Conv Controller    → IDLE
Weight Loader      → IDLE, weight_valid=0
Shift Buffer       → CAPTURE_TILE
CH accumulator     → 0
CH result_valid    → 0
CH Result Buffer   → CAPTURE_RESULTS
Standalone MaxPool → IDLE
```

외부 Ping-pong Buffer와 Weight Buffer의 메모리 내용은 Reset으로 지워지지 않는다. 연산 중 Reset이 들어오면 일부 주소에 이전 값 또는 부분 결과가 남을 수 있으므로 해당 데이터는 무효로 처리해야 한다.

Reset 후 재시작 순서:

1. `w_sel`과 외부 Buffer 제어값 초기화
2. 완전한 입력 프레임과 Weight 준비
3. `rst_n=1` 해제 후 클록 안정화
4. 새로운 `start` 발생
5. Conv1부터 다시 실행

Reset 해제는 CNN `clk`에 동기화하는 것이 안전하다.

## 13. 실제 사용 모듈과 참고용 모듈

### 현재 `CNN.sv` 데이터 경로에서 실제 사용

| 모듈 | 역할 |
|---|---|
| `CNN.sv` | 전체 Conv/Pool 단계와 Buffer 외부 포트 통합 |
| `Conv_Controller.sv` | Weight/Data 요청, CH 제어, 결과 주소와 Write 제어 |
| `Weight_Loader.sv` | 외부 64-bit Weight 데이터 저장 및 CH별 분배 |
| `Shift_Buffer.sv` | 4×4 Tile 저장 및 3×3 Window 4개 출력 |
| `CH_wrapper.sv` | CH 8개 병렬 인스턴스 |
| `CH.sv` | 3×3 MAC, 입력 채널 누적, Bias와 Shift |
| `CH_Result_Buffer.sv` | 네 위치 결과 저장, MaxPool/ReLU, 순차 출력 |
| `Feature_Buffer_Mux.sv` | Conv와 Standalone Pool의 외부 Data Buffer 경로 선택 |
| `Standalone_MaxPool.sv` | Pool4와 Pool5 수행 |

### 외부에서 연결해야 하지만 `CNN.sv` 내부에는 없는 모듈

| 모듈 | 역할 |
|---|---|
| Data Ping-pong Buffer | Image/Feature 저장, A/B Bank 교대 |
| Weight Ping-pong Buffer | Layer Weight/Bias 저장, A/B Bank 교대 |
| 외부 Accelerator Controller | DRAM 로딩, Padding, Bank 전환, 단계별 `start` 생성 |

### 현재 CNN 데이터 경로에는 인스턴스되지 않는 참고용 소스

| 모듈 | 상태 |
|---|---|
| `Data_Buffer.sv` | 참고 및 독립 Testbench용 |
| `Weight_Buffer.sv` | 참고 및 독립 Testbench용 |
| `Output_Mux.sv` | 현재 `CH_Result_Buffer`가 출력 선택을 수행하므로 미사용 |
| `MaxPool_wrapper.sv` | 현재 통합 경로에서는 미사용 |
| `MaxPool_2x2.sv` | 현재 통합 경로에서는 미사용 |

연결 담당자는 참고용 모듈을 Top에 중복 인스턴스하지 않도록 주의해야 한다.

## 14. 외부 Top 연결 예시

```systemverilog
CNN #(
    .NUM_CH                 (8),
    .NUM_LAYERS             (3),
    .INPUT_WIDTH            (128),
    .INPUT_HEIGHT           (128),
    .LAYER0_OUTPUT_CHANNELS (16),
    .LAYER1_OUTPUT_CHANNELS (32),
    .LAYER2_OUTPUT_CHANNELS (64)
) U_CNN (
    .clk          (clk),
    .rst_n        (rst_n),

    .start        (cnn_start),
    .done         (cnn_done),
    .busy         (cnn_busy),

    .rAddr        (data_raddr),
    .rData        (data_rdata),
    .we           (data_we),
    .w_sel        (data_w_sel),
    .wAddr        (data_waddr),
    .wData        (data_wdata),

    .weight_ren   (weight_ren),
    .weight_addr  (weight_addr),
    .weight_rdata (weight_rdata)
);
```

필수 주의사항:

- `start`는 반드시 1클록 Pulse로 입력한다.
- `done` 이후 다음 `start` 전에 Data/Weight Buffer 준비를 완료한다.
- `rData`와 `weight_rdata`가 비동기 Read 조건을 만족하는지 확인한다.
- 서로 다른 클록을 사용하면 `start/done`, Bank 선택 및 Buffer 완료 신호에 CDC 처리가 필요하다.
- `w_sel`은 CNN이 결과를 쓸 Bank를 선택하며 반대 Bank가 Read Bank가 된다.

## 15. 검증 상태와 연결 전 필수 재검증

기존 Self-checking Testbench에서 확인한 주요 항목:

- CH 단일 및 다중 입력 채널 누적
- 음수 Pixel/Weight와 signed Bias
- `weight_valid` gating
- `valid/ready` Backpressure
- `acc_clear` 우선순위
- CH 8개 병렬 출력
- 네 위치 Conv 결과 저장
- MaxPool/ReLU 조합
- Conv Controller의 결과 Write
- Conv/Pool 단계별 `start`, `busy`, `done`
- 마지막 Data Buffer Write 후 `done`
- 외부 Read 데이터를 CNN 내부 Register에 저장한 뒤 사용

외부 연결 전 반드시 다시 검증할 항목:

1. 새 Bias 규격: 64-bit 주소당 signed 32-bit Bias 2개
2. 실제 외부 Buffer Read latency
3. Layer 사이 Zero Padding 및 주소 재배치
4. Data Buffer Bank당 실제 깊이
5. Data/Weight Buffer Bank 전환 시점
6. 125 MHz Timing과 DSP/BRAM 사용량
7. Reset 도중 연산 중단 후 재시작
8. 실제 DRAM 데이터와 RTL 주소의 Endianness

## 16. 연결 완료 판단 기준

다음 조건이 모두 만족되면 CNN 연결이 완료된 것으로 판단한다.

- 외부 Controller가 단계별 `start`를 정확히 발생시킨다.
- 각 단계의 `done` 이후 다음 입력과 Weight가 준비된다.
- Weight/Bias Excel 배치와 `Weight_Loader` 주소가 일치한다.
- Data Buffer의 `rAddr/wAddr`가 CHW 주소식과 일치한다.
- 마지막 Write 이후에만 `done`이 발생한다.
- Conv1, Conv2, Conv3, Pool4, Pool5 결과가 Software Golden 값과 일치한다.
- Reset 이후 이전 부분 결과를 사용하지 않고 Conv1부터 정상 재시작한다.
