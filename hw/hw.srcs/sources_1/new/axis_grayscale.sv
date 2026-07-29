`timescale 1ns / 1ps

module axis_grayscale (
    // AXI4-Stream Video clock and active-low reset
    input  logic        aclk,
    input  logic        aresetn,

    // Slave: input from AXI_GammaCorrection
    input  logic [23:0] s_axis_video_tdata,
    input  logic        s_axis_video_tvalid,
    output logic        s_axis_video_tready,
    input  logic        s_axis_video_tuser,
    input  logic        s_axis_video_tlast,

    // Master: output to AXI VDMA S_AXIS_S2MM
    output logic [23:0] m_axis_video_tdata,
    output logic        m_axis_video_tvalid,
    input  logic        m_axis_video_tready,
    output logic        m_axis_video_tuser,
    output logic        m_axis_video_tlast
);

    // 현재 프로젝트의 Gamma 출력 채널 순서
    // [23:16] = Red, [15:8] = Blue, [7:0] = Green
    logic [7:0] red;
    logic [7:0] green;
    logic [7:0] blue;

    // Grayscale 가중치 계산 결과
    logic [15:0] gray_sum;

    // 최종 8비트 Grayscale 값
    logic [7:0] gray_value;

    // 24비트 입력 데이터에서 각 색상 채널 분리
    assign red   = s_axis_video_tdata[23:16];
    assign blue  = s_axis_video_tdata[15:8];
    assign green = s_axis_video_tdata[7:0];

    // 다음 Grayscale 변환식을 정수 연산으로 근사
    //
    // Gray = 0.299 × R + 0.587 × G + 0.114 × B
    //
    // 77 / 256  ≈ 0.299
    // 150 / 256 ≈ 0.587
    // 29 / 256  ≈ 0.114
    //
    // 세 가중치의 합은 256이므로
    // 계산 결과를 마지막에 256으로 나누면 된다.
    assign gray_sum =
        (red   * 16'd77)  +
        (green * 16'd150) +
        (blue  * 16'd29);

    // 256으로 나누는 대신 상위 8비트를 사용
    // 이는 gray_sum >> 8과 같은 의미이다.
    assign gray_value = gray_sum[15:8];

    // 다음 두 조건 중 하나를 만족하면 새로운 입력을 받을 수 있다.
    //
    // 1. 출력 레지스터에 유효한 데이터가 없는 경우
    // 2. VDMA가 현재 출력 데이터를 받는 경우
    //
    // VDMA가 데이터를 받을 준비가 되지 않았다면
    // 입력 측 tready도 0이 되어 Gamma 출력을 정지시킨다.
    assign s_axis_video_tready =
        (~m_axis_video_tvalid) | m_axis_video_tready;

    // Grayscale 변환 결과를 저장하는 1픽셀 출력 레지스터
    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            // 리셋이 들어오면 모든 출력 신호 초기화
            m_axis_video_tdata  <= 24'd0;
            m_axis_video_tvalid <= 1'b0;
            m_axis_video_tuser  <= 1'b0;
            m_axis_video_tlast  <= 1'b0;
        end
        else if (s_axis_video_tready) begin
            // 새로운 입력을 받을 수 있을 때
            // 입력 tvalid를 출력 tvalid로 전달
            //
            // 입력 데이터가 없으면 출력 tvalid도 0이 된다.
            m_axis_video_tvalid <= s_axis_video_tvalid;

            if (s_axis_video_tvalid) begin
                // R, B, G 채널에 동일한 밝기값을 넣어
                // 24비트 Grayscale 픽셀 생성
                m_axis_video_tdata <= {
                    gray_value,
                    gray_value,
                    gray_value
                };

                // 프레임 시작과 라인 끝 정보를
                // 해당 픽셀 데이터와 함께 전달
                m_axis_video_tuser <= s_axis_video_tuser;
                m_axis_video_tlast <= s_axis_video_tlast;
            end
        end

        // s_axis_video_tready가 0인 동안에는
        // 현재 출력 데이터와 제어 신호를 그대로 유지한다.
    end

endmodule