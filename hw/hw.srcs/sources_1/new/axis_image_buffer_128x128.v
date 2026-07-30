`timescale 1ns / 1ps

module axis_image_buffer_128x128 (
    input              aclk,
    input              aresetn,
    // Resize
    input  wire [23:0] s_axis_video_tdata,
    input  wire        s_axis_video_tvalid,
    input  wire        s_axis_video_tuser,
    input  wire        s_axis_video_tlast,
    output wire        s_axis_video_tready,
    // CNN 상태 및 프레임 준비 신호
    input  wire        cnn_busy,
    output reg         frame_done,
    // CNN의 이미지 버퍼 읽기 포트
    input  wire        cnn_read_enable,
    input  wire [13:0] cnn_read_addr,
    output reg  [ 7:0] cnn_read_data
);

    localparam WAIT_IDLE = 3'd0;  // CNN이 작업 중인지 확인
    localparam WAIT_SOF = 3'd1;     // 중간 프레임이 아니라 다음 프레임의 첫 픽셀을 기다림
    localparam CAPTURE = 3'd2;  // 16,384픽셀을 BRAM에 저장
    localparam FRAME_READY = 3'd3;  // done=1을 유지하고 CNN이 가져가기를 기다림
    localparam WAIT_CNN = 3'd4;     // CNN이 버퍼를 읽는 동안 BRAM 내용을 유지

    reg [2:0] state;

    // -------- 이미지 버퍼 --------
    // 128 × 128 = 16384픽셀
    //
    // 각 픽셀은 8비트 Grayscale 데이터
    reg [7:0] image_buffer[0:16383];

    // -------- 이미지 버퍼 쓰기 좌표 --------
    reg [6:0] write_x;  // x좌표: 0~127
    reg [6:0] write_y;  // y좌표: 0~127

    wire buffer_write_enable;  // 현재 픽셀을 BRAM에 저장할지 표시
    wire [13:0] buffer_write_addr;  // 현재 BRAM 쓰기 주소
    wire [7:0] buffer_write_data;  // BRAM에 저장할 8비트 Grayscale 값
    wire input_transfer;  // 입력 AXI4-Stream handshake

    // -------- AXI4-Stream handshake --------
    // Resize 출력은 항상 받아들인다.
    //
    // 프레임 캡처 중이 아닐 때 들어오는 픽셀은 저장하지 않고 버린다.
    //
    // 이 신호를 0으로 만들면 Broadcaster를 통해
    // HDMI 경로까지 정지할 수 있으므로 항상 1로 유지한다.
    assign s_axis_video_tready = 1'b1;

    // tready가 항상 1이므로 실제 입력 전송 조건은 tvalid와 같다.
    assign input_transfer = s_axis_video_tvalid && s_axis_video_tready;

    // -------- BRAM 쓰기 제어 --------
    // 다음 두 경우에 픽셀을 BRAM에 저장한다.
    //
    // 1. WAIT_SOF 상태에서 새로운 프레임의 tuser를 받은 경우
    // 2. CAPTURE 상태에서 나머지 픽셀을 받은 경우
    assign buffer_write_enable = ((state == WAIT_SOF) && input_transfer && s_axis_video_tuser) || ((state == CAPTURE) && input_transfer);

    // 프레임 첫 픽셀은 주소 0에 저장한다.
    //
    // 나머지 픽셀은 {y, x}를 주소로 사용한다.
    //
    // {write_y, write_x}는 다음 계산과 같다.
    //
    // address = write_y * 128 + write_x
    assign buffer_write_addr = (state == WAIT_SOF) ? 14'd0 : {write_y, write_x};

    // Grayscale 영상은 세 채널이 모두 같은 값이므로
    // 가장 낮은 8비트 채널만 저장한다.\
    assign buffer_write_data = s_axis_video_tdata[7:0];

    // -------- Dual-Port BRAM 동작 --------
    // Port A 역할: Resize 영상 저장
    // Port B 역할: CNN 픽셀 읽기
    //
    // 동일한 클럭에서 하나의 포트는 쓰고
    // 다른 포트는 읽을 수 있다.
    always @(posedge aclk) begin
        if (!aresetn) begin
            cnn_read_data <= 8'd0;
        end else begin
            // Resize 영상 픽셀 저장
            if (buffer_write_enable) begin
                image_buffer[buffer_write_addr] <= buffer_write_data;
            end
            // CNN 픽셀 읽기
            //
            // 동기식 BRAM 읽기이므로
            // cnn_read_enable이 1인 다음 클럭에
            // cnn_read_data가 유효해진다.
            if (cnn_read_enable) begin
                cnn_read_data <= image_buffer[cnn_read_addr];
            end
        end
    end

    // -------- 프레임 캡처 FSM --------
    always @(posedge aclk) begin
        if (!aresetn) begin
            state      <= WAIT_IDLE;
            write_x    <= 7'd0;
            write_y    <= 7'd0;
            frame_done <= 1'b0;
        end else begin
            case (state)
                WAIT_IDLE: begin
                    write_x    <= 7'd0;
                    write_y    <= 7'd0;
                    frame_done <= 1'b0;
                    // CNN이 busy 상태가 아니면 다음 프레임 시작을 기다림
                    if (!cnn_busy) begin
                        state <= WAIT_SOF;
                    end
                end

                WAIT_SOF: begin
                    write_x    <= 7'd0;
                    write_y    <= 7'd0;
                    frame_done <= 1'b0;
                    // 프레임 시작을 기다리는 중에 CNN이 다시 busy가 되면 캡쳐 X
                    if (cnn_busy) begin
                        state <= WAIT_IDLE;
                    end 
                // tuser가 들어온 픽셀은 출력 프레임의 (0,0) 픽셀임
                    else if (input_transfer && s_axis_video_tuser) begin
                        // 첫 픽셀은 BRAM 주소 0에 buffer_write_enable 회로가 저장한다.
                        // 따라서 다음 저장 위치는 (1,0)
                        write_x <= 7'd1;
                        write_y <= 7'd0;
                        state   <= CAPTURE;
                    end
                end

                CAPTURE: begin
                    frame_done <= 1'b0;
                    // 실제 AXI 픽셀이 전송될 때만 쓰기 좌표를 증가시킴
                    if (input_transfer) begin
                        // 현재 픽셀이 (127,127)이면 마지막 픽셀까지 저장 완료
                        if ((write_x == 7'd127) && (write_y == 7'd127)) begin
                            frame_done <= 1'b1;
                            state      <= FRAME_READY;
                        end else if (write_x == 7'd127) begin
                            write_x <= 7'd0;
                            write_y <= write_y <= write_y + 1;
                        end else begin
                            write_x <= write_x + 1;
                        end
                    end
                end

                FRAME_READY: begin
                    // CNN이 확실히 확인할 수 있도록 한 클럭 펄스가 아니라 1상태를 유지
                    frame_done <= 1'b1;
                    // CNN이 busy=1을 만들면 프레임을 인식하고 연산을 시작한 것으로 판단
                    if (cnn_busy) begin
                        frame_done <= 1'b0;
                        state      <= WAIT_CNN;
                    end
                end

                WAIT_CNN: begin
                    frame_done <= 1'b0;
                    // CNN 연산이 끝나서 busy=0이 되면 다음 프레임의 tuser를 기다린다.
                    if (!cnn_busy) begin
                        write_x <= 7'd0;
                        write_y <= 7'd0;
                        state   <= WAIT_SOF;
                    end
                end

                default: begin
                    state      <= WAIT_IDLE;
                    write_x    <= 7'd0;
                    write_y    <= 7'd0;
                    frame_done <= 1'b0;
                end
            endcase
        end
    end
endmodule