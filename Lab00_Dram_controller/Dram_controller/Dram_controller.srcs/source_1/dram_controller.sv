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
