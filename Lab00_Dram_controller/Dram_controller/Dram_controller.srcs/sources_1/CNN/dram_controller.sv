module dram_controller (
    input wire        clk,        // 125MHz 시스템 클럭
    input wire        rst_n,      // Active-Low 리셋 (Processor System Reset에서 옴)
    // CNN 메인 제어부에서 받는 신호
    input wire        start_req,  // 데이터 요청 트리거 (1 클럭 펄스)
    input wire [31:0] sys_addr,   // 읽어올 메모리 시작 주소 (예: 0x1000_0000)
    input wire [22:0] sys_btt,    // 읽어올 바이트 크기 (예: 128)

    // DataMover의 S_AXIS_MM2S_CMD 포트로 나가는 신호 (AXI Stream Master)
    output wire [71:0] m_axis_cmd_tdata,
    output reg         m_axis_cmd_tvalid,
    input  wire        m_axis_cmd_tready
);

    // 1. 72-bit 명령어 패키징 (앞서 배운 구조대로 결합)
    // tvalid가 1일 때 이 데이터가 DataMover로 넘어갑니다.
    assign m_axis_cmd_tdata = {
        4'b0000,  // [71:68] RSVD (예약됨, 0)
        4'b0000,  // [67:64] TAG (명령어 ID, 0)
        sys_addr,  // [63:32] SADDR (타겟 주소)
        1'b0,  // [31] DRR (재정렬 안함)
        1'b1,  // [30] EOF (마지막 데이터에 tlast 표시)
        6'b000000,  // [29:24] DSA (기본값)
        1'b0,  // [23] Type (0=INCR, 1=FIXED)
        sys_btt  // [22:0] BTT (가져올 바이트 수)
    };

    // 2. 명령어 전송 상태 머신 (State Machine)
    // 0: IDLE (대기), 1: SEND_CMD (전송 중)
    reg state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 1'b0;
            m_axis_cmd_tvalid <= 1'b0;
        end else begin
            case (state)
                // [대기 상태] start_req 펄스가 들어오면 전송 시작
                1'b0: begin
                    if (start_req) begin
                        m_axis_cmd_tvalid <= 1'b1;  // "명령어 받아라!" 신호 올림
                        state <= 1'b1;
                    end
                end

                // [전송 상태] DataMover가 준비되어(tready=1) 명령어를 가져가면 종료
                1'b1: begin
                    if (m_axis_cmd_tvalid && m_axis_cmd_tready) begin
                        m_axis_cmd_tvalid <= 1'b0;  // 전송 완료, 신호 내림
                        state             <= 1'b0;  // 다시 대기 상태로 복귀
                    end
                end
            endcase
        end
    end
endmodule

`timescale 1ns / 1ps

module mover_controller (
    input wire clk,
    input wire rst_n,           // Active-low Reset
    input wire start,           // 동작 시작 신호 (Pulse)

    // AXI DataMover Command Interface (Master)
    output reg [71:0] cmd_tdata,
    output reg        cmd_tvalid,
    input  wire       cmd_tready,

    // 동작 완료 알림
    output reg done
);

    // FSM 상태 정의
    localparam IDLE       = 2'd0;
    localparam SEND_CMD   = 2'd1;
    localparam NEXT_ADDR  = 2'd2;
    localparam DONE       = 2'd3;

    reg [1:0] state, next_state;

    // 내부 변수
    reg [31:0] current_addr;
    reg [3:0]  loop_count;      // 0부터 9까지 10번 카운트
    
    // 기본 시작 주소 설정 (예: 0x1000_0000)
    localparam BASE_ADDR = 32'h1000_0000;

    // 1. 상태 레지스터 (State Register)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    // 2. 다음 상태 결정 로직 (Next State Logic)
    always @(*) begin
        next_state = state; // 기본적으로 현재 상태 유지
        case (state)
            IDLE: begin
                if (start) next_state = SEND_CMD;
            end
            SEND_CMD: begin
                // DataMover가 명령을 받을 준비가 되었다면(tready == 1) 다음으로 넘어감
                if (cmd_tvalid && cmd_tready) begin
                    if (loop_count == 4'd9) // 10번 다 보냈으면
                        next_state = DONE;
                    else
                        next_state = NEXT_ADDR;
                end
            end
            NEXT_ADDR: begin
                next_state = SEND_CMD; // 주소 업데이트 후 다시 명령 전송
            end
            DONE: begin
                if (!start) next_state = IDLE; // start 신호가 내려가면 초기화
            end
        endcase
    end

    // 3. 출력 및 내부 변수 제어 로직
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cmd_tvalid   <= 1'b0;
            cmd_tdata    <= 72'd0;
            current_addr <= BASE_ADDR;
            loop_count   <= 4'd0;
            done         <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    cmd_tvalid   <= 1'b0;
                    current_addr <= BASE_ADDR; // 주소 초기화
                    loop_count   <= 4'd0;      // 카운터 초기화
                    done         <= 1'b0;
                end

                SEND_CMD: begin
                    cmd_tvalid <= 1'b1;
                    // 72비트 명령서 조립: {Upper Addr[7:0], Addr[31:0], DRR, EOF, DSA, Type, BTT[22:0]}
                    cmd_tdata  <= {8'h00, current_addr, 1'b0, 1'b1, 6'b0, 1'b0, 23'd8};
                    
                    if (cmd_tready) begin
                        cmd_tvalid <= 1'b0; // 전송 완료 시 valid 내림
                    end
                end

                NEXT_ADDR: begin
                    current_addr <= current_addr + 32'd8; // 주소를 8바이트(64비트) 증가
                    loop_count   <= loop_count + 1'b1;    // 루프 카운트 증가
                end

                DONE: begin
                    done <= 1'b1; // 10번 전송 완료 알림
                end
            endcase
        end
    end

endmodule