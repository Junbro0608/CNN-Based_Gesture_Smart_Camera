# Zynq FPGA 기반 CNN Convolution 가속기

Zynq FPGA에서 CNN의 Convolution 연산을 가속하기 위한 RTL 프로젝트이다.  
하나의 Convolution Engine을 Layer별로 순차 재사용하며, 내부에 CH 연산기 8개를 병렬 배치하여 출력 채널 8개를 동시에 계산한다.

## 작업 일지

- [2026.07.29 — CNN 통합, 파라미터/FSM/모듈 연결 및 검증 기록](FinalProject_Conv_CH/docs/2026.07.29.md)

## 1. 전체 CNN 구성

- Layer 수와 출력 채널 수를 파라미터로 설정 가능
- 하나의 Convolution Engine을 Layer별로 순차 재사용
- CH 연산기 8개를 병렬 배치
- 한 번에 출력 채널 8개 계산
- CH 8개는 동일한 `3×3 Pixel Window` 공유
- 각 CH는 서로 다른 Weight와 Bias 사용
- Weight Buffer와 Data Buffer는 각각 Mem A/Mem B를 사용하는 Ping-pong 구조

현재 `CNN.sv`는 1~3개 Layer를 지원하며 각 Layer의 출력 채널 수를 독립적으로 지정한다.

```systemverilog
parameter integer NUM_LAYERS = 3;
parameter integer INPUT_WIDTH = 128;
parameter integer INPUT_HEIGHT = 128;
parameter integer LAYER0_OUTPUT_CHANNELS = 16;
parameter integer LAYER1_OUTPUT_CHANNELS = 32;
parameter integer LAYER2_OUTPUT_CHANNELS = 64;
```

`INPUT_WIDTH`와 `INPUT_HEIGHT`는 Padding 전 논리 영상 크기이다. 외부
버퍼가 각 Conv 입력에 한 픽셀 Zero Padding을 포함해 제공하므로 CNN은
Layer별 실제 입력 크기를 자동 계산한다.

| 논리 입력 | Layer 1 실제 입력 | Layer 2 실제 입력 | Layer 3 실제 입력 |
|---:|---:|---:|---:|
| `128×128` | `130×130` | `66×66` | `34×34` |
| `64×64` | `66×66` | `34×34` | `18×18` |

Top에서는 논리 크기만 지정한다.

```systemverilog
CNN #(
    .INPUT_WIDTH (128),
    .INPUT_HEIGHT(128)
) U_CNN (...);
```

예시:

| 원하는 구성 | 파라미터 |
|---|---|
| `1 → 8` | `NUM_LAYERS=1`, `LAYER0_OUTPUT_CHANNELS=8` |
| `1 → 16 → 32` | `NUM_LAYERS=2`, `LAYER0_OUTPUT_CHANNELS=16`, `LAYER1_OUTPUT_CHANNELS=32` |
| `1 → 32 → 64 → 128` | `NUM_LAYERS=3`, 출력 채널을 각각 `32`, `64`, `128`로 설정 |
| `1 → 16 → 64` | `NUM_LAYERS=2`, 출력 채널을 각각 `16`, `64`로 설정 |

Layer 0의 입력 채널은 1이고, 이후 Layer의 입력 채널은 바로 앞 Layer의 출력 채널로 자동 설정된다. 현재 물리 연산기가 `NUM_CH=8`개이므로 활성화된 각 Layer의 출력 채널 수는 8의 배수여야 한다.

개념적인 데이터 흐름은 다음과 같다.

```text
DRAM
  │
  ├─ Weight 데이터
  │      ↓
  │  Weight Ping-pong Buffer
  │      ↓
  │  CH별 Weight 9개 + Bias 1개
  │
  └─ Feature/Image 데이터
         ↓
     Data Ping-pong Buffer
         ↓
     Shift/Window Buffer
         ↓
     3×3 Pixel Window

3×3 Pixel Window + CH별 Weight/Bias
         ↓
    CH Wrapper(CH 8개)
         ↓
 좌표별 Convolution 결과 8개
         ↓
 CH Result Buffer(mem[0:3][0:7])
         ↓
  MaxPool/ReLU 선택 처리
         ↓
 외부 Data Ping-pong Buffer
```

## 2. CH 모듈

CH 하나는 출력 채널 하나를 담당한다.

```text
output[oc] =
    Σ(ic) Σ(k=0~8)
        pixel[ic][k] × weight[oc][ic][k]
    + bias[oc]
```

CH의 처리 순서는 다음과 같다.

1. 현재 입력 채널의 Pixel 9개와 Weight 9개로 `3×3 MAC` 수행
2. 현재 입력 채널의 결과를 signed 32-bit `conv_sum`으로 생성
3. 여러 입력 채널의 `conv_sum`을 signed 32-bit `accumulator`에 누적
4. 마지막 입력 채널에서 Bias를 한 번 추가
5. 최종 결과를 `OUTPUT_SHIFT`만큼 산술 오른쪽 Shift
6. Shift 결과의 8-bit를 `result_out`으로 출력
7. 새로운 결과가 완성되면 `result_valid`를 올리고 `result_ready`까지 유지

### CH 입력

```systemverilog
input logic clk;
input logic rst_n;

input logic ch_enable;
input logic acc_clear;
input logic first_ic;
input logic last_ic;

input logic       pixel_valid;
input logic [7:0] pixel_in [0:8];

input logic              weight_valid;
input logic signed [7:0] weight_in [0:8];
input logic signed [31:0] bias_in;
```

### CH 출력

```systemverilog
output logic signed [7:0] result_out;
output logic              result_valid;
```

`result_out`과 `result_valid`는 `CH_Result_Buffer`로 전달한다.

```text
CH.result_out   → CH_Result_Buffer.conv_result
CH.result_valid → CH_Result_Buffer.conv_valid
```

## 3. 데이터 형식

| 데이터 | 형식 | 범위 또는 용도 |
|---|---|---|
| Pixel/Feature | signed 8-bit | `-128~127` |
| Weight | signed 8-bit | `-128~127` |
| Bias | signed 32-bit | `-2,147,483,648~2,147,483,647` |
| Pixel 내부 변환 | signed 9-bit | 부호 확장 |
| Weight 내부 변환 | signed 9-bit | 부호 확장 |
| Product | signed 18-bit | signed 9-bit × signed 9-bit |
| `conv_sum` | signed 32-bit | 한 입력 채널의 3×3 결과 |
| `accumulator` | signed 32-bit | 입력 채널별 결과 누적 |
| `full_result` | signed 32-bit | 전체 누적 결과 + Bias |
| `result_out` | signed 8-bit | Shift 후 절삭 결과 |

Pixel과 Feature는 signed 8-bit이므로 CH 내부에서 부호 Bit를 복사해 signed 9-bit로 확장한다.

```systemverilog
pixel_signed[i] = $signed({pixel_in[i][7], pixel_in[i]});
```

Weight도 같은 방식으로 부호를 유지한 채 signed 9-bit로 확장한다.

```systemverilog
weight_signed[i] = $signed({weight_in[i][7], weight_in[i]});
```

## 4. 입력 유효 조건

현재 방식은 Pixel과 Weight를 같은 클록에 사용하는 방식이다.

```systemverilog
input_fire = ch_enable && pixel_valid && weight_valid;
```

세 신호가 모두 1인 클록에서만 현재 입력을 누적하거나 최종 결과를 생성한다.

| `ch_enable` | `pixel_valid` | `weight_valid` | 동작 |
|---:|---:|---:|---|
| 0 | X | X | 계산하지 않음 |
| 1 | 0 | X | 계산하지 않음 |
| 1 | 1 | 0 | 계산하지 않음 |
| 1 | 1 | 1 | 현재 입력 처리 |

입력 유효 신호가 중간에 끊기면 `accumulator`는 기존 값을 유지한다.

## 5. 입력 채널 누적

`first_ic`와 `last_ic` 조합에 따라 다음 네 가지 동작을 수행한다.

| `first_ic` | `last_ic` | 의미 | 동작 |
|---:|---:|---|---|
| 1 | 1 | 입력 채널이 하나뿐 | `conv_sum + bias` 출력 |
| 1 | 0 | 첫 번째 입력 채널 | `accumulator = conv_sum` |
| 0 | 0 | 중간 입력 채널 | `accumulator += conv_sum` |
| 0 | 1 | 마지막 입력 채널 | `accumulator + conv_sum + bias` 출력 |

Bias는 입력 채널마다 더하지 않고 마지막 입력 채널에서 한 번만 추가한다.

제어 우선순위는 다음과 같다.

```text
비동기 Reset
    ↓
acc_clear
    ↓
input_fire
    ↓
기존 상태 유지
```

`acc_clear`와 `input_fire`가 같은 클록에 1이면 `acc_clear`가 우선하며 해당 입력은 처리하지 않는다.

## 6. 출력 축소

최종 결과는 변환 함수 없이 산술 오른쪽 Shift 연산으로 축소한다.

```systemverilog
result_out = full_result >>> OUTPUT_SHIFT;
```

- `OUTPUT_SHIFT=8`: 원래 결과의 `full_result[15:8]`에 해당
- `OUTPUT_SHIFT=24`: 원래 결과의 `full_result[31:24]`에 해당
- 음수의 부호를 유지하기 위해 산술 Shift 연산자 `>>>` 사용
- 현재 방식은 Saturation이 아닌 Shift 후 8-bit 절삭
- Shift 결과가 signed 8-bit 범위를 넘으면 Wrap-around 가능

## 7. CH Wrapper

`CH_wrapper`는 기존 CH RTL을 변경하지 않고 CH를 8개 생성한다.

```text
CH_wrapper
  ├─ CH0
  ├─ CH1
  ├─ CH2
  ├─ CH3
  ├─ CH4
  ├─ CH5
  ├─ CH6
  └─ CH7
```

### 공통 입력

다음 신호는 CH 8개가 공유한다.

- `clk`
- `rst_n`
- `acc_clear`
- `first_ic`
- `last_ic`
- `pixel_valid`
- `pixel_in[0:8]`
- `weight_valid`

### CH별 입력

- `ch_enable[ch]`
- `weight_in[ch][0:8]`
- `bias_in[ch]`

### CH별 출력

- `result_out[ch]`
- `result_valid[ch]`

배열의 의미는 다음과 같다.

```text
weight_in[CH 번호][Kernel 번호]
bias_in[CH 번호]
result_out[CH 번호]
```

Wrapper는 `generate for` 문을 사용하여 합성 시 실제 CH 하드웨어 8개를 생성한다.

```systemverilog
for (ch = 0; ch < NUM_CH; ch = ch + 1) begin : GEN_CH
    CH U_CH (...);
end
```

현재 병렬 구조에서는 CH당 9개의 곱셈을 수행하므로 CH 8개에서 최대 72개의 곱셈 연산이 병렬로 구성될 수 있다. 실제 DSP 매핑과 125 MHz Timing 충족 여부는 Vivado 합성 및 구현 결과로 확인해야 한다.

## 8. Weight Ping-pong Buffer

Weight Buffer는 Mem A와 Mem B를 사용한다.

```text
구간 0:
Conv가 Mem A 읽기
DRAM이 Mem B 쓰기

구간 1:
Conv가 Mem B 읽기
DRAM이 Mem A 쓰기
```

현재 Weight 데이터 형식은 64-bit Word 단위이다. 하나의 64-bit Word에는 같은 Kernel 위치에 대한 CH0~CH7의 signed 8-bit 값이 들어 있다.

```text
weight_word[7:0]   → CH0
weight_word[15:8]  → CH1
weight_word[23:16] → CH2
weight_word[31:24] → CH3
weight_word[39:32] → CH4
weight_word[47:40] → CH5
weight_word[55:48] → CH6
weight_word[63:56] → CH7
```

한 Weight 묶음은 총 13 Word이다. Weight Stream 폭은 64-bit이므로 각 채널의 32-bit Bias는 하위 Byte부터 네 Word에 나누어 전달한다.

```text
Read 0 → Kernel 위치 0의 CH0~CH7 Weight
Read 1 → Kernel 위치 1의 CH0~CH7 Weight
...
Read 8 → Kernel 위치 8의 CH0~CH7 Weight
Read 9  → CH0~CH7 Bias bits `[7:0]`
Read 10 → CH0~CH7 Bias bits `[15:8]`
Read 11 → CH0~CH7 Bias bits `[23:16]`
Read 12 → CH0~CH7 Bias bits `[31:24]`
```

전체 크기:

```text
9 Weight Word + 4 Bias Word
= 13 Word
= 104 byte
```

현재 Word가 Weight인지 Bias인지는 데이터 비트가 아니라 실제로 수신한 Word의 순서를 세는 카운터로 판단한다.

```text
read_count 0~8 → Weight
read_count 9~12 → 32-bit Bias의 Byte 0~3
```

AXI Stream을 사용할 경우 카운터는 실제 Handshake가 성립했을 때만 증가해야 한다.

```systemverilog
stream_fire = tvalid && tready;
```

13개 Word가 모두 준비된 후 CH별 Weight 9개와 signed 32-bit Bias 하나를 동시에 전달하고 `weight_valid`를 발생시킨다.

CH는 Weight가 Mem A에서 왔는지 Mem B에서 왔는지 알 필요가 없다.

## 9. Data Ping-pong Buffer

Data Buffer 역시 Mem A와 Mem B를 사용한다.

```text
w_sel=0 → Mem A Write, Mem B Read
w_sel=1 → Mem B Write, Mem A Read
```

CNN 가속기에서 사용하는 Feature Data는 signed 8-bit이다.

```systemverilog
parameter ADDR_WIDTH = 128 * 128;
parameter DATA_WIDTH = 8;
```

일반적인 8-bit Grayscale 영상의 원래 범위는 `0~255`이므로 CNN 입력 메모리에 넣기 전에 다음과 같이 signed 범위로 변환해야 한다.

```text
signed_pixel = grayscale_pixel - 128
```

예를 들어 Grayscale `0`, `128`, `255`는 각각 signed 값 `-128`, `0`, `127`로 저장한다. 실제 메모리에는 8-bit 2의 보수 Bit Pattern이 기록된다.

`ADDR_WIDTH`는 실제로 주소 비트 폭이 아니라 메모리 깊이를 의미하므로 이후 `DEPTH`로 이름을 변경하는 것을 고려한다.

외부 Ping-pong Data Buffer는 비동기 Read 방식이다. CNN이 `rAddr`를 출력하면 해당 주소의 `rData`가 조합논리로 바뀌며, CNN은 Read 요청이 받아들여지는 클록에 그 값을 내부 `data_reg`에 저장한다. 저장된 Pixel은 Shift/Window Buffer를 거쳐 `3×3 Pixel Window`로 변환되어 CH 8개에 공통 전달된다.

새 `rData`는 같은 클록 Edge에 바로 연산하지 않는다. Clock N에서
`data_reg`에 저장한 값은 Clock N+1부터 Shift Buffer가 받아 사용한다.
Weight와 Bias도 내부 `weight_reg`, `bias_reg`에 저장한 다음 클록부터
연산 경로에서 사용한다.

```text
rAddr 변경
    ↓ 조합논리
rData 유효
    ↓ data_read_enable && data_read_ready인 클록
CNN data_reg에 저장
```

Weight Ping-pong Buffer도 같은 비동기 Read 조건을 사용한다. `weight_addr`에 해당하는 `weight_data`와 `bias_data`가 조합논리로 출력되고, CNN은 `weight_ren=1`인 클록에 내부 `weight_reg`와 `bias_reg`로 저장한다.

CNN과 Ping-pong Buffer 사이의 주요 신호는 다음과 같다.

| 신호 | 방향 | 의미 |
|---|---|---|
| `w_sel` | CNN → Buffer | Write Bank 선택, 반대 Bank가 Read Bank |
| `we` | CNN → Buffer | 결과 데이터 쓰기 허용 |
| `wAddr` | CNN → Buffer | 결과 데이터 저장 주소 |
| `wData` | CNN → Buffer | 저장할 signed 8-bit 결과 |
| `rAddr` | CNN → Buffer | 입력 Feature 읽기 주소 |
| `rData` | Buffer → CNN | 요청 주소에 대한 입력 Feature |

`wclk`과 `rclk`이 다른 클록이면 Bank 선택 및 완료 신호에 CDC 처리가 필요하다. Bank 전환은 현재 Bank의 사용 완료와 반대쪽 Bank의 로딩 완료가 모두 확인된 후 수행해야 한다.

## 10. CH Result Buffer

`CH_Result_Buffer`는 CH Wrapper 뒤에 위치한다. 별도의 출력 MUX를 사용하지 않고, 네 Convolution 위치의 결과를 내부 메모리에 저장한 다음 설정된 모드에 맞는 데이터만 외부 Data Buffer로 순차 출력한다.

```systemverilog
logic signed [DATA_WIDTH-1:0]
    conv_mem [0:3][0:NUM_CH-1];
```

첫 번째 인덱스는 2×2 영역 안의 위치이고, 두 번째 인덱스는 출력 채널이다.

| `conv_mem` 위치 | 2×2 좌표 |
|---:|---|
| `0` | 좌상 `[0,0]` |
| `1` | 우상 `[0,1]` |
| `2` | 좌하 `[1,0]` |
| `3` | 우하 `[1,1]` |

CH 8개의 `conv_valid`가 모두 1인 클록에 해당 위치의 결과 8개를 동시에 저장한다. 네 위치를 모두 받은 뒤 `CAPTURE_RESULTS`에서 `OUTPUT_RESULTS` 상태로 이동한다.

### 동작 모드

모드는 두 제어 신호를 묶어서 해석하면 된다.

```systemverilog
mode = {MaxPool_en, Relu_en};
```

| Mode | `MaxPool_en` | `Relu_en` | 처리 | 2×2 영역당 출력 수 (`NUM_CH=8`) |
|:---:|:---:|:---:|---|---:|
| `00` | 0 | 0 | Convolution 결과를 그대로 출력 | `4×8 = 32` |
| `01` | 0 | 1 | 각 Convolution 결과에 ReLU 후 출력 | `4×8 = 32` |
| `10` | 1 | 0 | 채널별 네 값 중 최댓값을 출력 | `8` |
| `11` | 1 | 1 | 채널별 MaxPool 후 ReLU하여 출력 | `8` |

#### `00`: MaxPool 없음, ReLU 없음

네 위치의 signed Convolution 결과를 변경하지 않고 모두 출력한다. 음수도 그대로 유지된다.

```text
-5, 3, -1, 2 → -5, 3, -1, 2
```

출력 순서는 위치 우선, 그 안에서 채널 순서이다.

```text
위치 0: CH0, CH1, ... CH7
위치 1: CH0, CH1, ... CH7
위치 2: CH0, CH1, ... CH7
위치 3: CH0, CH1, ... CH7
```

#### `01`: MaxPool 없음, ReLU 사용

네 위치를 모두 유지하되 각각의 음수를 0으로 바꿔 출력한다.

```text
-5, 3, -1, 2 → 0, 3, 0, 2
```

#### `10`: MaxPool 사용, ReLU 없음

각 채널의 네 위치 중 signed 최댓값 하나만 출력한다.

```text
-5, 3, -1, 2 → max = 3
-8, -2, -6, -4 → max = -2
```

ReLU가 꺼져 있으므로 최댓값이 음수이면 음수 상태로 출력한다.

#### `11`: MaxPool 사용, ReLU 사용

채널별 signed 최댓값을 구한 뒤 음수이면 0으로 출력한다.

```text
-5, 3, -1, 2 → max = 3  → ReLU = 3
-8, -2, -6, -4 → max = -2 → ReLU = 0
```

MaxPool 사용 시 출력 순서는 `CH0 → CH1 → ... → CH7`이며, 채널마다 한 값만 출력한다.

### 출력 Handshake

결과는 다음 조건에서만 실제로 외부 Data Buffer에 전달된 것으로 처리한다.

```systemverilog
output_fire = output_valid && output_ready;
```

`output_ready=0`이면 현재 `output_data`와 인덱스를 유지한다. 마지막 데이터의 Handshake가 성립한 클록에만 `output_done`이 발생하고 다음 2×2 결과를 받을 준비를 한다. 따라서 쓰기 측이 잠시 멈추더라도 데이터가 누락되지 않는다.

기존 `Output_Mux`, `MaxPool_wrapper`, `MaxPool_2x2` 소스는 비교와 참고를 위해 남아 있지만 현재 CNN 데이터 경로에는 인스턴스되지 않는다.

## 11. 2×2 좌표 처리 순서

각 출력 채널에서 다음 네 좌표의 Convolution 결과를 계산한다.

```text
[0,0] [0,1]
[1,0] [1,1]
```

Max Pool 결과:

```text
pool_result =
    max(conv[0,0], conv[0,1],
        conv[1,0], conv[1,1])
```

처리 순서:

```text
CH 결과 [0,0]
CH 결과 [0,1]
CH 결과 [1,0]
CH 결과 [1,1]
        ↓
CH_Result_Buffer에 네 위치 저장
        ↓
설정 모드(00/01/10/11)에 따라 출력
```

Conv Controller는 다음 좌표 순서를 보장한다.

```text
[0,0] → [0,1] → [1,0] → [1,1]
```

현재 구조는 이 네 위치를 하나의 처리 묶음으로 사용한다. 일반적인 Raster Scan 결과를 임의로 네 개씩 묶는 구조가 아니다.

## 12. 병렬 입력과 순차 입력

현재 CH는 Pixel 9개와 Weight 9개를 병렬로 입력받는다.

```text
Pixel 입력 폭  = 9 × 8-bit = 72-bit
Weight 입력 폭 = 9 × 8-bit = 72-bit
```

Vivado RTL Schematic에서는 SystemVerilog 배열 포트가 낱개 신호로 펼쳐져 많은 선으로 보이지만, CH는 FPGA 내부 모듈이므로 이는 외부 물리 핀 수를 의미하지 않는다.

동일한 8-bit 포트를 여러 클록에 걸쳐 사용하는 순차 구조도 가능하지만 다음 Trade-off가 있다.

| 구조 | CH당 곱셈기 | 3×3 처리 시간 | CH 변경 |
|---|---:|---:|---|
| 현재 병렬 구조 | 9개 | 한 계산 구간 | 불필요 |
| 순차 MAC 구조 | 1개 | 최소 9클록 | 전체 재설계 필요 |

현재 단계에서는 검증된 CH를 유지하고 Weight Buffer 또는 Wrapper가 64-bit Word를 순차로 받아 내부 레지스터에 저장한 후 CH에 병렬 전달하는 방식을 사용한다.

## 13. Controller 동작

CNN 상위 제어부는 첫 `start`에서 Layer 1을 실행한다. 각 Layer 또는
독립 Pool이 끝나면 `done`을 한 클럭 출력하고, 외부 Controller가
Data/Weight Buffer를 갱신한 뒤 보내는 다음 `start`까지 대기한다.

| 신호 | 방향 | 의미 |
|---|---|---|
| `start` | 입력 | 현재 Layer/Pool 시작 요청 |
| `busy` | 출력 | 현재 Layer/Pool 연산 진행 중 |
| `done` | 출력 | 현재 Layer/Pool 완료 Pulse |

Conv Controller의 내부 상태 흐름:

```text
IDLE
  ↓ start
SET_WEIGHT_DATA
  ↓ Weight/Data 준비 Handshake
CONV
  ↓ CH 결과 완료
POST_PROCESS
  ↓ CH_Result_Buffer 처리 완료
PUSH_DATA
  ↓ 외부 Data Buffer 쓰기 완료
다음 좌표/채널/Layer 또는 IDLE
```

세 번째 Conv Layer까지 완료되면 CNN 상위 FSM은 독립 MaxPool 엔진과
Feature Buffer MUX를 사용해 다음 순서로 실행한다.

```text
Conv Layer 1
→ done / 외부 Buffer 갱신 / start
→ Conv Layer 2
→ done / 외부 Buffer 갱신 / start
→ Conv Layer 3
→ done / 외부 Buffer 갱신 / start
→ Pool4: 64×16×16 → 64×8×8
→ done / 외부 Buffer 갱신 / start
→ Pool5: 64×8×8 → 64×4×4
→ done / CNN_IDLE
```

외부 Controller는 각 Layer의 `done`을 받은 후 다음 Layer의 Data와
Weight를 Buffer 주소 0부터 다시 저장한다. 다음 `start`가 들어오기
전까지 CNN은 다음 Layer 또는 Pool을 시작하지 않는다.

Conv 실행 중에는 `Feature_Buffer_Mux.select_pool=0`, Pool4/Pool5 실행
중에는 `select_pool=1`이다. CNN 모듈의 외부 Data/Weight 주소 및 유효
신호들은 이 상태기에 의해 내부적으로 제어된다.

## 14. 검증 상태

Self-checking Testbench를 이용해 다음 항목을 검증했다.

- 입력 채널 1개
- 여러 입력 채널 누적
- signed 음수 Pixel과 음수 Weight
- signed 32-bit Bias 전달 및 MAC 결과 반영
- 64-bit Stream의 13-Word Weight/Bias 패킷 조립
- `weight_valid` gating
- 출력 Backpressure 동안 `result_valid/result_out` 유지
- `acc_clear` 우선순위
- `CH_Result_Buffer`의 `00`, `01`, `10`, `11` 모드
- MaxPool 사용/미사용 시 출력 개수와 순서
- 음수 MaxPool 결과와 ReLU 처리
- Controller의 Pool/Bypass 경로
- `1 → 32 → 64 → 128` 3-Layer CNN 통합 동작
- `1 → 8` 1-Layer 스케줄과 Layer 완료 `done`
- `1 → 16 → 32` 2-Layer 채널·그룹 스케줄과 Layer별 `start/done`
- Layer1/Layer2/Layer3/Pool4/Pool5의 총 5회 `done`
- 각 `done` 이후 다음 `start` 전까지 `WAIT_STAGE_START` 대기
- Data/Weight 주소가 각 Layer에서 0부터 시작
- 외부 Read Data를 내부 Register에 저장하고 다음 클록부터 사용

결과:

```text
PASS: all CH tests passed
PASS: CH_Result_Buffer bypass/pool/ReLU tests passed
PASS: pooled and bypass Conv_Controller tests passed
PASS: Conv layers plus standalone Pool4/Pool5 golden comparison
PASS: configurable schedules and per-layer start/done
```

통합 Testbench의 기본 처리 구성:

```text
Layer 0: 1   → 32채널, MaxPool + ReLU
Layer 1: 32  → 64채널, MaxPool + ReLU
Layer 2: 64  → 128채널, MaxPool Bypass + ReLU
```

모든 SystemVerilog Source와 Testbench는 Vivado 2020.2 환경에서 컴파일을 확인했다. 보드 적용 전에는 합성·구현 결과에서 DSP/BRAM 사용량, CDC, 125 MHz Timing을 추가로 확인해야 한다.

## 15. 주요 RTL 파일

```text
CH.sv
    출력 채널 하나의 3×3 Convolution 및 입력 채널 누적

CH_wrapper.sv
    CH 8개 생성 및 공통/개별 신호 배선

CH_Result_Buffer.sv
    네 위치의 CH 결과 저장, MaxPool/ReLU 선택, 순차 출력

Shift_Buffer.sv
    외부 Feature 데이터로 3×3 Pixel Window 생성

Conv_Controller.sv
    Weight/Data 요청, Convolution, 후처리, 결과 쓰기 순서 제어

CNN.sv
    Conv/Pool 데이터 경로, Feature Buffer MUX와 전체 실행 순서 통합

Standalone_MaxPool.sv
    Pool4/Pool5에서 외부 Feature Buffer를 직접 읽고 쓰는 signed MaxPool

Feature_Buffer_Mux.sv
    Conv 엔진과 독립 MaxPool 엔진의 외부 Feature Buffer 경로 선택

tb_CH_Result_Buffer.sv
    CH Result Buffer 네 모드 Self-checking Testbench

tb_Conv_Controller.sv
    Pool/Bypass Controller Self-checking Testbench

tb_CNN.sv
    3-Layer 전체 CNN Golden 비교 Testbench

tb_CNN_Config.sv
    1-Layer/2-Layer 가변 채널 스케줄 Self-checking Testbench
```

기존 `Data_Buffer.sv`, `Weight_Buffer.sv`, `Output_Mux.sv`, `MaxPool_wrapper.sv`는 삭제하지 않고 참고용으로 보존한다.

## 16. 다음 작업

1. 외부 64-bit Weight Ping-pong Buffer의 실제 포트와 CNN Weight 요청 포트 최종 통합
2. 전체 CNN Accelerator 및 FC 블록 연결
3. Layer별 MaxPool/ReLU 설정 조합 추가 검증
4. Vivado 합성·구현 후 DSP/BRAM 사용량과 125 MHz Timing 분석
5. 실제 보드에서 DRAM 데이터 이동과 Bank 전환 검증
