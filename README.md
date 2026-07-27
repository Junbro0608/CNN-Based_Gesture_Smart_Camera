# Zynq FPGA 기반 CNN Convolution 가속기

Zynq FPGA에서 CNN의 Convolution 연산을 가속하기 위한 RTL 프로젝트이다.  
하나의 Convolution Engine을 Layer별로 순차 재사용하며, 내부에 CH 연산기 8개를 병렬 배치하여 출력 채널 8개를 동시에 계산한다.

## 1. 전체 CNN 구성

- 채널 구성: `1 → 32 → 64 → 128`
- 하나의 Convolution Engine을 Layer별로 순차 재사용
- CH 연산기 8개를 병렬 배치
- 한 번에 출력 채널 8개 계산
- CH 8개는 동일한 `3×3 Pixel Window` 공유
- 각 CH는 서로 다른 Weight와 Bias 사용
- Weight Buffer와 Data Buffer는 각각 Mem A/Mem B를 사용하는 Ping-pong 구조

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
      2×2 Max Pool
         ↓
  Pooled Feature Map 저장
         ↓
         ReLU
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
7. 새로운 결과가 출력되는 클록에 `result_valid`를 1클록 동안 발생

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
input logic signed [7:0] bias_in;
```

### CH 출력

```systemverilog
output logic signed [7:0] result_out;
output logic              result_valid;
```

`result_out`과 `result_valid`는 ReLU에 직접 연결하지 않고 Max Pool 모듈로 전달한다.

```text
CH.result_out   → MaxPool.conv_result
CH.result_valid → MaxPool.conv_valid
```

## 3. 데이터 형식

| 데이터 | 형식 | 범위 또는 용도 |
|---|---|---|
| Pixel | unsigned 8-bit | `0~255` |
| Weight | signed 8-bit | `-128~127` |
| Bias | signed 8-bit | `-128~127` |
| Pixel 내부 변환 | signed 9-bit | 앞에 `0` 추가 |
| Weight 내부 변환 | signed 9-bit | 부호 확장 |
| Product | signed 18-bit | signed 9-bit × signed 9-bit |
| `conv_sum` | signed 32-bit | 한 입력 채널의 3×3 결과 |
| `accumulator` | signed 32-bit | 입력 채널별 결과 누적 |
| `full_result` | signed 32-bit | 전체 누적 결과 + Bias |
| `result_out` | signed 8-bit | Shift 후 절삭 결과 |

Pixel 255가 signed 연산에서 `-1`로 해석되지 않도록 앞에 `0`을 추가한다.

```systemverilog
pixel_signed[i] = $signed({1'b0, pixel_in[i]});
```

Weight는 부호를 유지한 채 signed 9-bit로 확장한다.

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

한 Weight 묶음은 총 10 Word이다.

```text
Read 0 → Kernel 위치 0의 CH0~CH7 Weight
Read 1 → Kernel 위치 1의 CH0~CH7 Weight
...
Read 8 → Kernel 위치 8의 CH0~CH7 Weight
Read 9 → CH0~CH7 Bias
```

전체 크기:

```text
9 Weight Word + 1 Bias Word
= 10 Word
= 80byte
```

현재 Word가 Weight인지 Bias인지는 데이터 비트가 아니라 실제로 수신한 Word의 순서를 세는 카운터로 판단한다.

```text
read_count 0~8 → Weight
read_count 9   → Bias
```

AXI Stream을 사용할 경우 카운터는 실제 Handshake가 성립했을 때만 증가해야 한다.

```systemverilog
stream_fire = tvalid && tready;
```

10개 Word가 모두 준비된 후 CH별 Weight 9개와 Bias 하나를 동시에 전달하고 `weight_valid`를 발생시킨다.

CH는 Weight가 Mem A에서 왔는지 Mem B에서 왔는지 알 필요가 없다.

## 9. Data Ping-pong Buffer

Data Buffer 역시 Mem A와 Mem B를 사용한다.

```text
w_sel=0 → Mem A Write, Mem B Read
w_sel=1 → Mem B Write, Mem A Read
```

기존 `pingpongBuffer`의 기본 파라미터:

```systemverilog
parameter ADDR_WIDTH = 128 * 128;
parameter DATA_WIDTH = 12;
```

`ADDR_WIDTH`는 실제로 주소 비트 폭이 아니라 메모리 깊이를 의미하므로 이후 `DEPTH`로 이름을 변경하는 것을 고려한다.

Data Buffer에서 읽은 Pixel 스트림은 Shift/Window Buffer를 거쳐 `3×3 Pixel Window`로 변환되어 CH 8개에 공통 전달된다.

`wclk`과 `rclk`이 다른 클록이면 Bank 선택 및 완료 신호에 CDC 처리가 필요하다. Bank 전환은 현재 Bank의 사용 완료와 반대쪽 Bank의 로딩 완료가 모두 확인된 후 수행해야 한다.

## 10. 2×2 Max Pool과 ReLU 순서

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
채널별 2×2 Max Pool
        ↓
Pooled 결과 저장
        ↓
전체 결과 저장 완료 후 ReLU
```

CH 8개의 출력 채널마다 별도의 signed 최대값을 유지해야 한다.

```systemverilog
logic signed [7:0] current_max [0:7];
```

네 값이 모두 음수인 경우에도 올바른 최댓값을 선택할 수 있도록 signed 비교를 사용해야 한다.

Conv Controller가 다음 좌표 순서를 보장하는 경우 Max Pool은 카운터와 최대값 레지스터로 구현할 수 있다.

```text
[0,0] → [0,1] → [1,0] → [1,1]
```

일반적인 Raster Scan 순서로 결과가 출력된다면 단순히 연속된 결과 네 개를 비교하면 안 되며, Max Pool에 행 저장용 Line Buffer가 필요하다.

## 11. 병렬 입력과 순차 입력

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

## 12. 검증 상태

CH RTL과 Self-checking Testbench를 작성하여 Vivado XSim 2020.2에서 다음 항목을 검증했다.

- 입력 채널 1개
- 여러 입력 채널 누적
- unsigned Pixel 255와 음수 Weight
- `weight_valid` gating
- `result_valid` 1클록 Pulse
- `acc_clear` 우선순위

결과:

```text
PASS: all CH tests passed
```

현재 상태:

- CH RTL 기능 구현 완료
- CH 단위 Testbench 통과
- CH Wrapper 작성
- CH Wrapper 및 전체 시스템 통합 검증 필요
- Weight Ping-pong Buffer 제어 및 분배 로직 구현 필요
- 2×2 Max Pool 구현 및 검증 필요
- ReLU 연결 필요
- Vivado 합성 후 DSP 사용량과 125 MHz Timing 확인 필요

## 13. 주요 RTL 파일

```text
CH.sv
    출력 채널 하나의 3×3 Convolution 및 입력 채널 누적

CH_wrapper.sv
    CH 8개 생성 및 공통/개별 신호 배선

CH_tb.sv
    CH Self-checking Testbench
```

모든 RTL 파일은 SystemVerilog 배열 포트를 사용하므로 `.sv` 확장자로 저장하고 Vivado에서 SystemVerilog Source로 추가한다.

## 14. Git 브랜치

- 작업 브랜치: `jiwon`
- 원격 추적 브랜치: `origin/jiwon`

변경 사항 업로드:

```bash
git status
git add README.md
git add FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH.sv
git add FinalProject_Conv_CH/FinalProject_Conv_CH.srcs/sources_1/new/CH_wrapper.sv
git add FinalProject_Conv_CH/FinalProject_Conv_CH.xpr
git commit -m "Add CH convolution module and 8-channel wrapper"
git push
```

Vivado의 Cache, Log 및 자동 생성 파일은 `.gitignore`에서 제외한다.

```gitignore
**/.Xil/
**/*.cache/
**/*.runs/
**/*.gen/
**/*.sim/
**/*.hw/
**/ip_user_files/

*.jou
*.log
*.str
*.wdb
```

## 15. 다음 작업

1. CH Wrapper Testbench 작성
2. CH 8개의 병렬 결과와 valid 동기화 검증
3. Weight Ping-pong Buffer의 10-Word 수신 카운터 구현
4. 64-bit Weight Word를 CH0~CH7로 분리
5. Weight/Bias 준비 완료 후 `weight_valid` 생성
6. Data Buffer와 Shift/Window Buffer 연결
7. 2×2 Max Pool RTL 및 Self-checking Testbench 작성
8. Pooled Feature Map 저장 후 ReLU 연결
9. CNN Controller와 전체 데이터 순서 통합
10. Vivado 합성·구현 및 DSP/BRAM/Timing 분석
