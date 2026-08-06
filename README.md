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

현재는 Saturation이 아닌 8-bit 절삭 방식이므로 범위를 벗어나면 Wrap-around가 발생할 수 있습니다. 이 부분은 Software Golden Model과 비교해 Quantization 규칙을 확정해야 합니다.

### 4. 단계별 실행 구조

한 번의 `start`는 전체 CNN이 아니라 현재 Conv 또는 Pool 단계 하나를 실행합니다.

```text
start → Conv1 → done → Padding/Weight 준비
start → Conv2 → done → Padding/Weight 준비
start → Conv3 → done → Buffer 준비
start → Pool4 → done → Buffer 준비
start → Pool5 → done
```

`done`은 현재 단계의 마지막 결과가 외부 Buffer에 기록된 이후 한 클록 동안 발생합니다.

## 기본 CNN 구성

```systemverilog
NUM_CH                 = 8
INPUT_WIDTH            = 128
INPUT_HEIGHT           = 128
LAYER0_OUTPUT_CHANNELS = 16
LAYER1_OUTPUT_CHANNELS = 32
LAYER2_OUTPUT_CHANNELS = 64
```

| 단계 | 입력 | 연산 | 출력 |
|---|---|---|---|
| Conv1 | `1×128×128` | 3×3 Conv + 2×2 MaxPool + ReLU | `16×64×64` |
| Conv2 | `16×64×64` | 3×3 Conv + 2×2 MaxPool + ReLU | `32×32×32` |
| Conv3 | `32×32×32` | 3×3 Conv + 2×2 MaxPool + ReLU | `64×16×16` |
| Pool4 | `64×16×16` | 2×2 MaxPool | `64×8×8` |
| Pool5 | `64×8×8` | 2×2 MaxPool | `64×4×4` |

Conv 입력은 외부 Buffer에서 1-pixel Zero Padding을 포함한 형태로 준비합니다.

| Layer | Padding 포함 입력 |
|---|---:|
| Conv1 | `1×130×130` |
| Conv2 | `16×66×66` |
| Conv3 | `32×34×34` |

## 메모리와 인터페이스

### Feature Buffer

결과는 채널별 연속 영역을 사용하는 CHW 형식으로 저장합니다.

```text
address = channel × (output_height × output_width)
        + y × output_width
        + x
```

외부 Data Ping-pong Buffer는 한 Bank를 읽는 동안 반대 Bank에 결과를 기록합니다.

```text
w_sel=0 → Mem A Write / Mem B Read
w_sel=1 → Mem B Write / Mem A Read
```

현재 구성에서 가장 큰 저장 구간은 Padding이 포함된 Conv2 입력입니다.

```text
16 × 66 × 66 = 69,696 entries
```

따라서 각 Data Buffer Bank에는 최소 69,696개의 8-bit Feature를 저장할 수 있어야 합니다.

### Weight Buffer

64-bit Word 하나에는 같은 Kernel 위치의 CH0~CH7 Weight를 저장합니다.

```text
[7:0]   CH0    [15:8]  CH1    [23:16] CH2    [31:24] CH3
[39:32] CH4    [47:40] CH5    [55:48] CH6    [63:56] CH7
```

입력 채널 하나와 출력 채널 그룹 하나당 Weight Word 9개를 읽습니다.

```text
weight_addr = ((output_group × input_channels) + input_channel) × 9
            + kernel_index
```

## 검증

Self-checking Testbench에서 다음 항목을 확인했습니다.

- [x] 단일·다중 입력 채널 누적
- [x] 음수 Feature/Weight와 signed Bias 연산
- [x] `weight_valid` Gating
- [x] `valid / ready` Backpressure
- [x] `acc_clear` 우선순위
- [x] CH 8개 병렬 출력
- [x] 네 위치 Conv 결과 저장
- [x] MaxPool/ReLU 조합
- [x] Conv Controller의 결과 Write
- [x] Conv/Pool 단계별 `start / busy / done`
- [x] 마지막 Buffer Write 이후 `done` 발생
- [x] 외부 Read 데이터를 내부 Register에 저장한 뒤 사용

## 현재 확인된 제약과 개선 과제

완료된 부분과 미완료 부분을 구분하기 위해 현재 제약을 공개합니다.

### 1. Bias 메모리 규격 수정 필요

현재 `Weight_Loader.sv`는 64-bit Word 하나를 signed 8-bit Bias 8개로 해석합니다. 그러나 최종 외부 메모리 규격은 다음과 같습니다.

```text
64-bit Bias Word = signed 32-bit Bias 2개
출력 채널 8개 = Bias Word 4개
```

따라서 외부 Buffer 연결 전에 Loader가 Bias Word 4개를 읽도록 수정하고 Testbench와 메모리 배치를 함께 변경해야 합니다.

### 2. 외부 Read Latency

현재 Data/Weight Read 인터페이스는 주소가 바뀌면 데이터가 조합논리로 출력되는 비동기 Read를 가정합니다.

동기식 BRAM 또는 AXI 기반 메모리를 연결할 때는 다음 중 하나가 필요합니다.

- Read latency와 `read_valid / read_ready`를 처리하는 Adapter 추가
- CNN 내부 Read Pipeline 수정

Write 인터페이스에는 `write_ready`가 없으므로 외부 Buffer는 `we=1`인 모든 상승 에지에서 데이터를 수신해야 합니다.

### 3. 외부 연결 후 재검증 항목

- [ ] S32 Bias 2개/64-bit Word 규격 반영
- [ ] 실제 Data/Weight Buffer Read latency 반영
- [ ] Layer 사이 Zero Padding과 주소 재배치
- [ ] Ping-pong Bank 전환 시점
- [ ] 125 MHz Timing과 DSP/BRAM 사용량
- [ ] Software Golden Model과 Layer별 결과 비교
- [ ] Reset 중단 후 Conv1부터 재시작
- [ ] 실제 DRAM 데이터와 RTL 주소의 Endianness

## 설계 과정에서 배운 점

1. **병렬 MAC 수만 늘려서는 성능이 보장되지 않습니다.**  
   Feature와 Weight를 제때 공급할 수 있는 Buffer 대역폭과 Timing을 함께 고려해야 했습니다.

2. **모듈 내부 연산뿐 아니라 인터페이스의 시간 계약이 중요합니다.**  
   비동기 Read를 가정한 RTL을 동기식 BRAM이나 AXI에 연결하려면 명시적인 latency와 Handshake 처리가 필요합니다.

3. **데이터 형식은 소프트웨어와 RTL이 함께 정의해야 합니다.**  
   Signed Feature 변환, Bias 폭, Shift와 Saturation 방식이 다르면 RTL 자체가 정상이어도 추론 결과가 달라질 수 있습니다.

4. **`done`의 의미를 명확히 정의해야 시스템 통합이 가능합니다.**  
   이 설계에서는 마지막 Write가 끝난 뒤에만 `done`을 발생시켜 외부 Controller가 다음 Bank와 Layer를 안전하게 준비하도록 했습니다.

## 완료 기준

다음 조건을 모두 만족했을 때 외부 시스템 연결까지 완료된 것으로 판단합니다.

- 외부 Controller가 단계별 `start`를 정확히 발생시킨다.
