module top (
    input  logic        clk,
    input  logic        rst_n,
    // --------------------Pcam------------------------
    // 1. MIPI D-PHY High-Speed (HS) 라인 (카메라 -> FPGA)
    input  logic        dphy_hs_clock_clk_p,
    input  logic        dphy_hs_clock_clk_n,
    input  logic [ 1:0] dphy_data_hs_p,
    input  logic [ 1:0] dphy_data_hs_n,
    // 2. MIPI D-PHY Low-Power (LP) 라인 (카메라 -> FPGA)
    input  logic        dphy_clk_lp_p,
    input  logic        dphy_clk_lp_n,
    input  logic [ 1:0] dphy_data_lp_p,
    input  logic [ 1:0] dphy_data_lp_n,
    // 3. 카메라 제어 및 시스템 신호 (FPGA -> 카메라)
    output logic        cam_clk,              // 카메라 센서 구동용 클럭
    output logic        cam_gpio,             // 카메라 리셋(Reset) 또는 전원 제어
    // 4. I2C (SCCB) 설정 통신 라인
    inout  logic        cam_scl,              // I2C 클럭 (Clock)
    inout  logic        cam_sda,              // I2C 데이터 (Data)
    // ---------------------AXI2DRAM-----------------------
    output logic [71:0] S_AXIS_MM2S_CMD,
    input  logic [63:0] M_AXIS_MM2S
);

    dram_controller U_dram_ctroller (
        .clk              (),  // 125MHz 시스템 클럭
        .rst_n            (),  // Active-Low 리셋 (Processor System Reset에서 옴)
        // CNN 메인 제어부에서 받는 신호
        .start_req        (),  // 데이터 요청 트리거 (1 클럭 펄스)
        .sys_addr         (),  // 읽어올 메모리 시작 주소 (예: 0x1000_0000)
        .sys_btt          (),  // 읽어올 바이트 크기 (예: 128)
        // DataMover의 S_AXIS_MM2S_CMD 포트로 나가는 신호 (AXI Stream Master)
        .m_axis_cmd_tdata (),
        .m_axis_cmd_tvalid(),
        .m_axis_cmd_tready()
    );

    CNN U_CNN (
        .clk  (clk),
        .rst_n(rst_n),
        .start(start),
        .done (),
        .busy ()
    );

    



endmodule
