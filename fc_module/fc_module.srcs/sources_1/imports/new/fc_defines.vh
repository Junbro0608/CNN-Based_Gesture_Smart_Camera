`ifndef FC_DEFINES_VH
`define FC_DEFINES_VH

// 이 파일을 include하는 모든 모듈은 동일한 FC_DATA_WIDTH,
// FC_WEIGHT_WIDTH, FC_ACC_WIDTH를 공유해야 하며, 값 변경 시 이 파일
// 하나만 수정하면 전체 FC 레이어의 비트폭 설정을 일관되게 바꿀 수 있다.
//
// 주의: Conv/Pool 등 팀 내 다른 모듈의 매크로와 이름이 충돌하지 않도록
// 모든 FC 레이어용 매크로에는 FC_ 접두사를 사용한다.

// Activation(input)은 ReLU를 거쳐 항상 0 이상이므로 8비트 unsigned로 사용한다.
`define FC_DATA_WIDTH 8

// Weight는 음수가 될 수 있으므로 8비트 signed로 사용한다.
`define FC_WEIGHT_WIDTH 8

// PE 1개가 output-stationary 방식으로 최대 128개 항을 모두 누적한다.
// 필요한 비트폭은 (FC_DATA_WIDTH + FC_WEIGHT_WIDTH)
// + ceil(log2(FC_MAX_INPUT_LEN)) = 16 + 7 = 23비트이다.
`define FC_ACC_WIDTH 23

// Bias는 음수가 될 수 있으므로 8비트 signed로 사용한다.
`define FC_BIAS_WIDTH 8

// 누산 결과에 bias를 더할 때의 오버플로우 여유를 위해
// FC_ACC_WIDTH(23비트)보다 1비트 큰 24비트로 사용한다.
`define FC_OUT_WIDTH 24

// FC 연산을 병렬로 수행하는 처리요소(PE)는 8개이다.
`define FC_PE_NUM 8

// 지원하는 최대 input 길이는 128이며 FC_ACC_WIDTH 계산의 근거값이다.
// 실제 반복 횟수는 input_length 포트로 제어하고 이 값 이하여야 한다.
`define FC_MAX_INPUT_LEN 128

// FC 레이어가 지원하는 최대 output 길이는 64이다.
`define FC_MAX_OUTPUT_LEN 64

`endif
