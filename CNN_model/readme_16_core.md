# 16-core CNN 가속기 설계 요약

## 1. 한눈에 보는 결론

이 문서는 8-core 기반 CNN 가속기를 16-core로 확장한 구조와 성능 결과를 정리한다.

핵심은 다음 4가지다.

1. Conv physical core 수를 `NUM_CH = 8`에서 `NUM_CH = 16`으로 확장했다.
2. output group 반복 횟수가 절반으로 줄어 Conv 구간 cycle이 감소했다.
3. weight 메모리는 기존 64bit 포맷을 유지해 8채널 subgroup 두 번으로 16채널을 구성했다.
4. end-to-end 성능은 약 `1.43x` 개선됐다.

## 2. 전체 파이프라인

처리 순서는 아래와 같다.

1. Conv1
2. Conv2
3. Conv3
4. Pool4
5. Pool5
6. FC1
7. FC2

입력 이미지는 `img_raddr`, `img_rdata`로 들어오고, 중간 feature map은 ping-pong Data Buffer에 저장된다. Weight는 외부 64bit Weight memory에서 읽는다.

## 3. 상위 블록 구성

`CNN_accelerator`는 아래 블록으로 구성된다.

1. CNN_acc_controller
2. Conv 블록
3. FC 블록
4. Data ping-pong buffer
5. Weight memory
6. padding 주소 변환기

컨트롤러는 stage 전환, start pulse, layer 인덱스, bank 선택, padding enable, done/busy를 관리한다.

## 4. Conv 구조와 16-core 의미

Conv는 완전한 전체 채널 병렬이 아니라 physical channel engine을 output group으로 재사용하는 구조다.

### 4.1 output group 반복 변화

8-core (`NUM_CH=8`) 기준:

1. Conv1: 16ch -> 2그룹
2. Conv2: 32ch -> 4그룹
3. Conv3: 64ch -> 8그룹

16-core (`NUM_CH=16`) 기준:

1. Conv1: 16ch -> 1그룹
2. Conv2: 32ch -> 2그룹
3. Conv3: 64ch -> 4그룹

총 MAC 연산량은 동일하고, 같은 연산을 처리하는 반복 횟수가 줄어 cycle이 감소한다.

### 4.2 Conv 주요 서브블록

1. Conv_Controller
2. Weight_Loader
3. Shift_Buffer
4. CH_wrapper
5. CH
6. CH_Result_Buffer
7. requantize_pipeline
8. Standalone_MaxPool

### 4.3 반영된 핵심 최적화

1. Weight_Loader prefetch/promote
2. Shift_Buffer streaming window 생성
3. horizontal reuse
4. vertical row-cache reuse
5. packed write 실험 경로

## 5. 16-core 확장 방식

현재 확장은 weight 포맷을 바꾸지 않고 16-core를 구현한 방식이다.

1. `CNN_accelerator`에서 Conv `NUM_CH`를 16으로 확장
2. conv 내부 group 계산을 16채널 기준으로 변경
3. Weight_Loader는 64bit word(8채널) 기반 subgroup를 2회 읽어 16채널 weight/bias 레지스터 구성

장점:

1. 기존 weight 파일 재사용 가능
2. export 포맷 대수정 없이 Conv 확장 가능
3. FC 경로와 독립적으로 적용 가능

제약:

1. 16채널 완전 동시 weight 공급은 아님
2. bandwidth 제약으로 이상적인 2배 가속은 어려움

## 6. FC 및 메모리 구조 요약

### 6.1 FC

1. FC는 8-lane 병렬 구조
2. FC1: 1024 -> 64
3. FC2: 64 -> 1
4. FC2 최종 판정은 requantized 결과 `>= 0`이면 1, 아니면 0

### 6.2 Data memory

1. ping-pong bank 구조 (write=`w_sel`, read=`~w_sel`)
2. top-level 기본 저장 형식은 int8 scalar
3. 주소 배치는 channel-major

주소 해석:

`addr = channel_index * plane_pixels + spatial_index`

## 7. 실측 성능

측정 환경: Lab01 top-level end-to-end testbench, `8 ns/cycle`

8-core:

1. `4737850 cycles`
2. 약 `37.90 ms`

16-core:

1. `3318505 cycles`
2. 약 `26.55 ms`

개선량:

1. cycle 감소: `1419345`
2. 시간 감소: 약 `11.35 ms`
3. 지연 감소율: 약 `29.9%`
4. 속도 향상: 약 `1.43x`

## 8. 왜 2배가 아닌가

1. weight 공급이 여전히 64bit/8채널 subgroup 기반
2. Pool4, Pool5, FC, controller 오버헤드가 고정
3. write path/메모리 경로 일부가 완전 16채널 폭으로 확장되지 않음

즉 현재 버전은 "16채널 logical Conv + legacy 8채널 weight 공급" 구조다.

## 9. 다음 개선 방향

1. Weight memory를 128bit 이상으로 확장해 16채널 동시 공급
2. packed write를 top-level Data Buffer까지 통합
3. Conv1/2/3를 stage별로 재계측해 잔여 병목 분리

현재 16-core 버전은 기능/구조 검증이 완료된 1차 확장판으로, 메모리 대역폭 확장까지 진행하면 추가 성능 개선 여지가 있다.
