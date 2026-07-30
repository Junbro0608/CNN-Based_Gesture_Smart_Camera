`timescale 1ns / 1ps

module axis_resize_128x128 (
    input              aclk,
    input              aresetn,
    // Grayscale에서 들어오는 1920x1080 영상
    input  wire [23:0] s_axis_video_tdata,
    input  wire        s_axis_video_tvalid,
    output wire        s_axis_video_tready,
    input  wire        s_axis_video_tuser,
    input  wire        s_axis_video_tlast,
    // 128x128로 축소된 출력 영상
    output reg  [23:0] m_axis_video_tdata,
    output reg         m_axis_video_tvalid,
    input  wire        m_axis_video_tready,
    output reg         m_axis_video_tuser,
    output reg         m_axis_video_tlast
);

    // 입력 x좌표: 0~1919
    reg [10:0] input_x;
    // 입력 y좌표: 0~1079
    reg [10:0] input_y;

    // 출력 x좌표: 0~127
    reg [6:0] output_x;
    // 출력 y좌표: 0~127
    reg [6:0] output_y;

    // ------------------------------------------------------------
    // 가로 방향 픽셀 선택
    // ------------------------------------------------------------
    // 1920 / 128 = 15이므로
    // 입력 픽셀 15개마다 한 픽셀을 선택한다.
    //
    // 0일 때 픽셀 선택
    // 0 → 1 → 2 → ... → 14 → 0 반복
    reg [3:0] horizontal_count;

    // ------------------------------------------------------------
    // 세로 방향 라인 선택
    // ------------------------------------------------------------
    // 다음에 선택해야 할 입력 라인의 y좌표
    reg [10:0] next_sample_y;

    // 1080/128 비율을 계산하기 위한 누산기
    //
    // 최대값:
    // 1080 × 128 = 138240
    //
    // 따라서 18비트 사용
    reg [17:0] vertical_accumulator;

    // 현재 입력 라인이 출력 대상으로 선택된 라인인지 표시
    wire selected_line;

    // 현재 입력 픽셀이 출력 대상으로 선택된 픽셀인지 표시
    wire selected_pixel;

    // 출력 레지스터가 비어 있거나,
    // 다음 모듈이 현재 출력 데이터를 받을 수 있으면
    // 새로운 입력 데이터를 받을 수 있다.
    assign s_axis_video_tready = (~m_axis_video_tvalid) | m_axis_video_tready;

    // 프레임 첫 픽셀에서는 입력 좌표 레지스터의 이전 값과 관계없이
    // 첫 번째 라인을 선택된 라인으로 처리한다.
    assign selected_line = s_axis_video_tuser | (input_y == next_sample_y);

    assign selected_pixel = s_axis_video_tuser | (selected_line && (horizontal_count == 4'd0));

    always @(posedge aclk) begin
        if (!aresetn) begin
            input_x              <= 11'd0;
            input_y              <= 11'd0;
            output_x             <= 7'd0;
            output_y             <= 7'd0;
            horizontal_count     <= 4'd0;
            next_sample_y        <= 11'd0;
            vertical_accumulator <= 18'd0;
            m_axis_video_tdata   <= 24'd0;
            m_axis_video_tvalid  <= 1'b0;
            m_axis_video_tuser   <= 1'b0;
            m_axis_video_tlast   <= 1'b0;
        end else if (s_axis_video_tready) begin
            // 출력 공간이 있는 경우에만 이 블록이 실행된다.

            // 기본적으로 출력 데이터가 없는 상태로 설정하고,
            // 선택된 입력 픽셀이 들어온 경우에만 tvalid를 1로 설정한다.
            m_axis_video_tvalid <= 1'b0;

            // 입력 tvalid가 1이면 실제 입력 픽셀을 처리한다.

            // 현재 블록은 s_axis_video_tready가 1인 경우에만
            // 실행되므로 아래 조건은 AXI handshake를 의미한다.
            if (s_axis_video_tvalid) begin
                if (s_axis_video_tuser) begin
                    // 입력 tuser가 들어온 픽셀을 
                    // 출력 영상의 (0,0) 픽셀로 사용한다.
                    m_axis_video_tdata   <= s_axis_video_tdata;
                    m_axis_video_tvalid  <= 1'b1;
                    m_axis_video_tuser   <= 1'b1;
                    m_axis_video_tlast   <= 1'b0;

                    // 현재 첫 번째 입력 픽셀 x=0을 처리했으므로
                    // 다음 입력 픽셀의 위치는 x=1이다.
                    input_x              <= 11'd1;
                    input_y              <= 11'd0;
                    horizontal_count     <= 4'd1;

                    // 출력의 첫 번째 픽셀 x=0을 만들었으므로
                    // 다음 출력 픽셀 위치는 x=1이다.
                    output_x             <= 7'd1;
                    output_y             <= 7'd0;

                    // 세로 방향 선택 상태 초기화
                    next_sample_y        <= 11'd0;
                    vertical_accumulator <= 18'd0;
                end else begin
                    // 현재 픽셀이 선택 대상이면 출력 레지스터에 저장
                    if (selected_pixel) begin
                        // Grayscale 데이터는 별도의 연산 없이 그대로 전달
                        m_axis_video_tdata <= s_axis_video_tdata;
                        m_axis_video_tvalid <= 1'b1;

                        // 첫 출력 픽셀인지 확인

                        // 일반적으로 첫 픽셀은 위의 tuser 분기에서
                        // 처리되므로 여기서는 대부분 0이다.
                        m_axis_video_tuser <= (output_x == 7'd0) && (output_y == 7'd0);

                        // 128번째 픽셀이면 출력 라인의 마지막 픽셀
                        m_axis_video_tlast <= (output_x == 7'd127);

                        // 다음 출력 x좌표 계산
                        if (output_x == 7'd127) begin
                            output_x <= 7'd0;
                        end else begin
                            output_x <= output_x + 1;
                        end
                    end

                    if (s_axis_video_tlast) begin
                        // 다음 입력 라인은 x=0부터 시작
                        input_x          <= 11'd0;
                        horizontal_count <= 4'd0;

                        // 입력 y좌표 증가
                        if (input_y == 11'd1079) begin
                            input_y <= 11'd0;
                        end else begin
                            input_y <= input_y + 1;
                        end

                        // 현재 라인이 선택된 라인이었다면 
                        // 다음 출력 라인 정보를 계산한다.
                        if (selected_line) begin
                            // 아직 128개 출력 라인을 모두 만들지 않았다면 
                            // 다음 출력 y좌표로 이동한다.
                            if (output_y < 7'd127) begin
                                output_y <= output_y + 1;

                                // 다음 선택 입력 라인 계산
                                //
                                // next_sample_y =
                                // ((output_y + 1) × 1080) / 128
                                //
                                // 128로 나누는 것은 오른쪽으로
                                // 7비트 이동하는 것과 같다.
                                next_sample_y <= (vertical_accumulator + 18'd1080) >> 7;

                                vertical_accumulator <= vertical_accumulator + 18'd1080;
                            end
                        end
                    end else begin
                        // 입력 x좌표 증가
                        input_x <= input_x + 1;

                        // 15픽셀 간격 카운터 증가
                        if (horizontal_count == 4'd14) begin
                            horizontal_count <= 0;
                        end else begin
                            horizontal_count <= horizontal_count + 1;
                        end
                    end
                end
            end
        end
    end

endmodule
