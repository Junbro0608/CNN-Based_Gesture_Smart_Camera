# 8-core CNN 가속기 설계 설명

## 1. 전체 구조 개요

현재 CNN 가속기는 다음 블록으로 구성된다.

1. CNN_acc_controller
2. Conv 블록
3. FC 블록
4. Data ping-pong buffer
5. Weight memory
6. padding 주소 변환기

전체 처리 순서는 아래와 같다.

1. Conv1
2. Conv2
3. Conv3
4. Pool4
5. Pool5
6. FC1
7. FC2

입력 이미지는 `img_raddr`, `img_rdata` 포트로 들어오며, 중간 feature map은 내부 ping-pong Data Buffer에 저장된다. Weight는 외부 64bit Weight memory에서 읽는다.

현재 top-level 기준 파라미터는 다음과 같다.

1. Conv physical core 수: `NUM_CH = 8`
2. Conv1 출력 채널: `16`
3. Conv2 출력 채널: `32`
4. Conv3 출력 채널: `64`
5. Data memory data width: `8bit`
6. Weight memory data width: `64bit`

즉 현재 구조는 출력 채널 8개를 한 번에 계산하는 physical datapath를 여러 output group에 재사용하는 형태이다.

## 2. Top-level 데이터 흐름

`CNN_accelerator` 내부에서는 Conv와 FC가 같은 Data Buffer와 Weight Buffer를 공유한다.

### 2.1 제어 흐름

`CNN_acc_controller`는 다음 제어를 담당한다.

1. 현재 stage가 Conv인지 FC인지 결정
2. Conv/FC start pulse 생성
3. layer 번호 관리
4. ping-pong bank 선택
5. padding 사용 여부 결정
6. 최종 done, busy 출력

### 2.2 Data Buffer 공유

Conv와 FC는 각각 아래 인터페이스로 Data Buffer에 접근한다.

1. Conv: `conv_DATA_we`, `conv_DATA_waddr`, `conv_DATA_wdata`, `conv_DATA_raddr`
2. FC: `fc_DATA_we`, `fc_DATA_waddr`, `fc_DATA_wdata`, `fc_DATA_raddr`

두 블록의 write 경로는 MUX를 통해 하나의 ping-pong Data Buffer로 연결된다.

### 2.3 Weight Buffer 공유

Weight는 Conv와 FC가 같은 Weight Buffer를 읽는다.

1. Conv: convolution kernel + bias
2. FC: fully connected weight + bias

현재 stage에 따라 Weight read address 선택이 바뀐다.

## 3. Conv 내부 동작

Conv 블록은 1~3개의 convolution stage와, 필요 시 standalone Pool4/Pool5 stage를 모두 포함한 구조이다.

### 3.1 기본 철학

현재 Conv 블록은 완전한 output-channel full parallel 구조가 아니라, `NUM_CH = 8`개의 physical channel engine을 재사용하는 구조이다.

예를 들어 현재 설정은 다음과 같이 동작한다.

1. Conv1: 입력 1채널, 출력 16채널 -> 8채널 그룹 2회 수행
2. Conv2: 입력 16채널, 출력 32채널 -> 8채널 그룹 4회 수행
3. Conv3: 입력 32채널, 출력 64채널 -> 8채널 그룹 8회 수행

즉 Conv는 아래 두 방향으로 반복한다.

1. output group 반복
2. input channel 반복

### 3.2 Conv 내부 주요 서브블록

Conv 내부 핵심 모듈은 다음과 같다.

1. Conv_Controller
2. Weight_Loader
3. Shift_Buffer
4. CH_wrapper
5. CH
6. CH_Result_Buffer
7. requantize_pipeline
8. Standalone_MaxPool

### 3.3 Conv_Controller 역할

`Conv_Controller`는 convolution의 실질적인 FSM이다.

주요 역할은 아래와 같다.

1. 현재 input channel index 관리
2. 현재 spatial tile 위치 (`pool_x`, `pool_y`) 관리
3. 현재 output group에 대한 weight load 요청
4. data read address 진행
5. Shift_Buffer에 reuse 모드 전달
6. 결과 write address 계산
7. tile 종료와 stage 종료 판단

현재 FSM은 대략 아래 상태를 가진다.

1. `IDLE`
2. `SET_WEIGHT_DATA`
3. `CONV`
4. `POST_PROCESS`
5. `PUSH_DATA`
6. `WRITE_DRAIN`
7. `DONE`

`SET_WEIGHT_DATA`에서는 Weight가 준비될 때까지 기다리고, `CONV`에서는 window를 소비하며 MAC을 수행하고, `PUSH_DATA`에서는 CH_Result_Buffer 결과를 Data Buffer에 기록한다.

### 3.4 Weight_Loader 동작

`Weight_Loader`는 현재 output group과 input channel에 해당하는 3x3 kernel과 bias를 외부 Weight memory에서 읽는다.

현재 weight 포맷은 아래와 같다.

1. 64bit 한 word 안에 8개 채널의 int8 weight가 들어 있음
2. kernel 3x3이므로 kernel index는 총 9개
3. bias는 32bit signed 값이며 64bit word 하나에 2개 bias가 들어 있음

즉 한 input channel, 한 output group에 대해 읽는 구성은 다음과 같다.

1. weight word 9개
2. bias word `NUM_CH / 2 = 4`개

현재 설계에는 preload 최적화가 추가되어 있다.

1. 현재 input channel을 계산하는 동안
2. 다음 input channel의 weight를 shadow bank에 prefetch하고
3. tile 종료 시 promote하여 바로 다음 채널 계산에 사용한다.

이 최적화는 Conv2, Conv3처럼 input channel 수가 많은 경우 효과가 크다.

### 3.5 Shift_Buffer 동작

초기 구조는 4x4 타일 16픽셀을 모두 받은 뒤 4개의 3x3 window를 순차로 내보내는 FSM 구조였다.

현재는 streaming 구조로 변경되어, 타일 완성을 기다리지 않고 필요한 픽셀이 충분히 들어오는 즉시 window를 생성한다.

현재 Shift_Buffer의 핵심 기능은 아래와 같다.

1. 입력 픽셀 스트림을 내부 tile memory에 저장
2. 충분한 픽셀이 들어오면 즉시 `window_valid`를 올려 3x3 window 생성
3. `window_index = 0,1,2,3` 순서로 2x2 pooling tile에 해당하는 4개 convolution 위치를 제공
4. horizontal reuse 지원
5. vertical row-cache reuse 지원

#### 3.5.1 horizontal reuse

같은 row에서 다음 tile로 이동할 때 이전 tile의 오른쪽 2개 열을 재사용한다. 따라서 새로 읽어야 하는 픽셀 수가 줄어든다.

#### 3.5.2 vertical reuse

다음 output row의 첫 tile에서는 이전 output row의 아래 2개 행을 row-cache에서 재사용한다. 따라서 이 경우도 새로 읽는 픽셀 수를 줄일 수 있다.

### 3.6 CH_wrapper 동작

`CH_wrapper`는 하나의 3x3 window를 모든 channel engine에 동시에 공급한다.

역할은 다음과 같다.

1. Shift_Buffer에서 나온 pixel window를 1-stage register에 저장
2. Weight_Loader가 준비한 8개 channel의 weight와 bias를 각 CH에 전달
3. 모든 CH의 ready/valid를 묶어서 Conv_Controller가 사용할 수 있게 정리

### 3.7 CH 동작

`CH`는 단일 출력 채널에 대한 MAC 엔진이다.

현재 CH는 3-stage pipeline MAC 구조를 가진다.

1. Stage1: 9개의 pixel-weight 곱 계산 및 등록
2. Stage2: pairwise sum 등록
3. Stage3: 최종 reduction 및 spatial accumulator 업데이트

각 CH는 한 2x2 pooling tile 안의 4개 spatial 위치를 위해 4개의 accumulator를 가진다.

1. `window_index=0` -> accumulator 0
2. `window_index=1` -> accumulator 1
3. `window_index=2` -> accumulator 2
4. `window_index=3` -> accumulator 3

Conv2, Conv3에서는 같은 spatial 위치에 대해 여러 input channel 결과를 누적한다. 마지막 input channel일 때 bias를 더하고 최종 결과를 `result_out`으로 내보낸다.

### 3.8 CH_Result_Buffer 동작

`CH_Result_Buffer`는 한 2x2 영역에 해당하는 네 개의 spatial result 벡터를 저장하고, MaxPool/ReLU 여부에 따라 후처리한다.

현재 모드는 두 가지가 있다.

1. scalar output 모드
2. packed output 실험 모드

현재 top-level 통합에서는 scalar int8 write가 기본이다.

역할은 다음과 같다.

1. Conv 결과 4세트를 capture
2. MaxPool이 켜져 있으면 4개 중 최대값 선택
3. ReLU가 켜져 있으면 음수 제거
4. 결과를 다음 write path로 전달

### 3.9 Conv write path와 requantize

Conv 결과는 32bit accumulator 도메인에서 계산된 뒤 바로 Data Buffer로 쓰이지 않는다.

중간에 아래 파이프라인이 있다.

1. CH_Result_Buffer output
2. requantize_pipeline
3. write metadata pipeline
4. Data Buffer write

requantize는 layer별 scale, shift, zero-point를 적용해 accumulator를 int8로 바꾼다.

### 3.10 Standalone Pool4 / Pool5

Conv3 이후의 Pool4, Pool5는 standalone MaxPool engine이 처리한다.

동작은 다음과 같다.

1. feature map에서 2x2 영역의 4개 픽셀 읽기
2. 최대값 선택
3. 결과 1개를 Data Buffer에 쓰기

주소는 channel-major 방식이며, output feature map은 연속된 주소 공간에 기록된다.

## 4. FC 내부 동작

FC는 8-lane 병렬 fully connected 구조이다.

즉 한 번에 output 8개를 동시에 누적한다.

### 4.1 현재 FC stage 구성

현재 top-level에서는 아래 두 stage가 존재한다.

1. FC1: 입력 1024개 -> 출력 64개
2. FC2: 입력 64개 -> 출력 1개

### 4.2 FC 내부 주요 블록

1. fc_controller
2. fc_pe_array
3. fc_output_buffer
4. requantize_pipeline
5. fc_memory_adapter

### 4.3 FC 입력/weight 형식

1. activation은 int8 1개씩 읽음
2. weight는 64bit word 단위로 읽음
3. 64bit 한 word 안에는 8개 lane의 int8 weight가 들어 있음

즉 동일한 activation 하나에 대해 8개 output lane이 동시에 MAC을 수행한다.

### 4.4 FC controller 상태 흐름

`fc_controller`는 다음 순서로 동작한다.

1. `S_IDLE`
2. `S_ACC_CLEAR`
3. `S_MAC`
4. `S_MAC_DRAIN`
5. `S_PRODUCT_DRAIN`
6. `S_CAPTURE`
7. `S_BIAS_PREFETCH`
8. `S_BIAS_ADD`
9. `S_QUANT_CAPTURE`
10. `S_QUANTIZE`
11. `S_QUANT_WAIT`
12. `S_QUANT_ISSUE`
13. `S_QUANT_DRAIN`
14. `S_NEXT_GROUP`
15. `S_DONE`

### 4.5 FC 처리 순서

1. start를 받으면 accumulator clear
2. input activation과 weight word를 읽으며 MAC 반복
3. input 길이만큼 누적 수행
4. output 8개 결과 capture
5. bias add
6. requantize
7. FC1이면 int8 결과를 Data Buffer에 write
8. FC2이면 최종 classification result 생성

### 4.6 FC2 결과 판정

FC2는 마지막 requantized int8 결과를 threshold와 비교하여 `result` 비트를 만든다.

현재 구현은 `quantized_write_s8 >= 0`이면 1, 아니면 0으로 판정한다.

## 5. Data Memory 구조

### 5.1 기본 구조

Data memory는 ping-pong 구조이다.

내부에 두 개의 frame buffer가 있다.

1. FrameBuffer A
2. FrameBuffer B

현재 write bank를 `w_sel`로 선택하면, read는 항상 반대 bank에서 수행된다.

즉 아래 규칙을 사용한다.

1. write bank = `w_sel`
2. read bank = `~w_sel`

이 구조 덕분에 현재 stage가 결과를 쓰는 동안, 다음 stage는 반대 bank에서 입력을 읽을 수 있다.

### 5.2 현재 Data memory 데이터 폭

현재 top-level 통합 구조의 Data memory 폭은 `8bit`이다.

즉 물리적으로는 다음과 같다.

1. 주소 1개당 int8 값 1개 저장
2. feature map 전체는 int8 scalar 배열로 저장

### 5.3 주소 배치 방식

현재 Data memory는 channel-major layout을 사용한다.

주소는 아래와 같이 해석할 수 있다.

`addr = channel_index * plane_pixels + spatial_index`

여기서

1. `plane_pixels = width * height`
2. `spatial_index = y * width + x`

즉 한 채널의 2D feature map이 연속 주소로 저장되고, 다음 채널이 그 뒤를 이어 저장된다.

### 5.4 각 stage의 저장 크기

현재 top-level에서 주요 feature map 크기는 아래와 같다.

1. Conv1 출력: `16 x 64 x 64 = 65536`
2. Conv2 출력: `32 x 32 x 32 = 32768`
3. Conv3 출력: `64 x 16 x 16 = 16384`
4. Pool4 출력: `64 x 8 x 8 = 4096`
5. Pool5 출력: `64 x 4 x 4 = 1024`
6. FC1 출력: `64`

현재 Data Buffer의 전체 주소 공간은 Conv1 출력 크기에 맞춰 크게 잡혀 있으며, 이후 layer들은 그 안의 앞부분을 사용한다.

### 5.5 padding 주소 해석

padding 블록은 아래 입력을 받아 실제 메모리 주소를 계산한다.

1. `tile_index`
2. `pad_row`
3. `pad_col`
4. `padding_size`
5. `img_MUX_sel`

Conv1에서는 image memory에서 읽고, Conv2/Conv3에서는 Data memory에서 읽는다. padding이 켜져 있으면 0-border를 포함한 좌표계로 접근한다.

## 6. Data_mem 패킷 구조에 대한 설명

현재 top-level 실제 동작 기준으로는 Data memory가 packetized wide word 구조는 아니다.

즉 현재 시스템 통합 기준 설명은 아래가 정확하다.

1. Data memory는 scalar int8 저장 구조이다.
2. 한 주소에 한 개의 int8이 들어간다.
3. 채널별 plane이 순서대로 메모리에 배치된다.

다만 Conv 단독 실험 경로에서는 packed write 실험이 추가되어 있다.

이 실험 경로는 다음 형태를 가진다.

1. `packed_wData[7:0]` = channel 0
2. `packed_wData[15:8]` = channel 1
3. ...
4. `packed_wData[63:56]` = channel 7

즉 8개 채널 결과를 64bit 한 번에 묶어서 쓰는 경로이다. 하지만 이 경로는 아직 top-level Data Buffer에 완전히 통합된 기본 경로는 아니다.

## 7. 현재 반영된 최적화 요약

현재 RTL에는 다음 최적화가 반영되어 있다.

1. Conv write의 packed 실험 경로 추가
2. Weight_Loader prefetch
3. Shift_Buffer streaming window 생성
4. horizontal reuse
5. vertical row-cache reuse

이 최적화들은 모델 자체를 바꾸지 않고 하드웨어 구현 방식만 개선하는 것이므로 재학습이 필요 없다.

## 8. 요약 정리

1. 현재 Conv는 8채널 병렬 physical MAC datapath를 output group별로 재사용한다.
2. Conv 내부에는 streaming Shift_Buffer, Weight prefetch, 3-stage MAC pipeline, CH_Result_Buffer, requantize path가 있다.
3. FC는 8-lane 병렬 fully connected 구조로 한 번에 output 8개를 처리한다.
4. Data memory는 ping-pong bank 구조이며 실제 top-level 저장 형식은 channel-major int8 scalar 배열이다.
5. Conv1, Conv2, Conv3, Pool4, Pool5, FC1, FC2가 순차 실행되어 최종 person/non-person 결과를 출력한다.
