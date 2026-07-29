`timescale 1ns / 1ps

module axis_grayscale (
    // AXI4-Stream Video 클럭과 Active-Low 리셋
    input  wire        aclk,
    input  wire        aresetn,

    // Slave 인터페이스: Gamma Correction 출력에서 들어오는 신호
    input  wire [23:0] s_axis_video_tdata,
    input  wire        s_axis_video_tvalid,
    output wire        s_axis_video_tready,
    input  wire        s_axis_video_tuser,
    input  wire        s_axis_video_tlast,

    // Master 인터페이스: VDMA S_AXIS_S2MM으로 나가는 신호
    output reg  [23:0] m_axis_video_tdata,
    output reg         m_axis_video_tvalid,
    input  wire        m_axis_video_tready,
    output reg         m_axis_video_tuser,
    output reg         m_axis_video_tlast
);

    // 현재 프로젝트의 Gamma 출력 채널 순서
    // [23:16] = Red
    // [15:8]  = Blue
    // [7:0]   = Green
    wire [7:0] red;
    wire [7:0] green;
    wire [7:0] blue;

    // 각 색상 채널에 Grayscale 가중치를 적용한 결과
    wire [15:0] red_weighted;
    wire [15:0] green_weighted;
    wire [15:0] blue_weighted;

    // 가중치 계산의 전체 합
    wire [15:0] gray_sum;

    // 최종 8비트 Grayscale 값
    wire [7:0] gray_value;

    // 입력 데이터에서 색상 채널 분리
    assign red   = s_axis_video_tdata[23:16];
    assign blue  = s_axis_video_tdata[15:8];
    assign green = s_axis_video_tdata[7:0];

    // Grayscale 변환식
    //
    // Gray = 0.299 × R + 0.587 × G + 0.114 × B
    //
    // 소수점 연산 대신 256을 기준으로 한 정수 가중치 사용
    assign red_weighted   = red   * 8'd77;
    assign green_weighted = green * 8'd150;
    assign blue_weighted  = blue  * 8'd29;

    // 세 색상 채널의 가중치 계산 결과 더하기
    assign gray_sum =
        red_weighted +
        green_weighted +
        blue_weighted;

    // 256으로 나누는 대신 상위 8비트 사용
    assign gray_value = gray_sum[15:8];

    // 출력 레지스터가 비어 있거나,
    // VDMA가 현재 출력 픽셀을 받을 때 새로운 입력을 허용
    assign s_axis_video_tready =
        (~m_axis_video_tvalid) | m_axis_video_tready;

    // Grayscale 출력과 AXI4-Stream 제어 신호 저장
    always @(posedge aclk) begin
        if (!aresetn) begin
            // Active-Low 리셋
            m_axis_video_tdata  <= 24'd0;
            m_axis_video_tvalid <= 1'b0;
            m_axis_video_tuser  <= 1'b0;
            m_axis_video_tlast  <= 1'b0;
        end
        else if (s_axis_video_tready) begin
            // 입력 데이터의 유효 상태를 출력으로 전달
            m_axis_video_tvalid <= s_axis_video_tvalid;

            if (s_axis_video_tvalid) begin
                // 모든 색상 채널에 같은 밝기값을 넣어
                // 24비트 Grayscale 픽셀 생성
                m_axis_video_tdata <= {
                    gray_value,
                    gray_value,
                    gray_value
                };

                // 프레임 시작과 라인 끝 신호도
                // 픽셀 데이터와 함께 전달
                m_axis_video_tuser <= s_axis_video_tuser;
                m_axis_video_tlast <= s_axis_video_tlast;
            end
        end

        // VDMA가 준비되지 않은 동안에는
        // 출력 데이터와 제어 신호를 그대로 유지
    end

endmodule