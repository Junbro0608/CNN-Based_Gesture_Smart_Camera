module top (
    input logic clk,
    input logic rst_n,
    // --------------------Pcam------------------------
    // 1. MIPI D-PHY High-Speed (HS) 라인 (카메라 -> FPGA)
    input logic dphy_hs_clock_clk_p,
    input logic dphy_hs_clock_clk_n,
    input logic [1:0] dphy_data_hs_p,
    input logic [1:0] dphy_data_hs_n,
    // 2. MIPI D-PHY Low-Power (LP) 라인 (카메라 -> FPGA)
    input logic dphy_clk_lp_p,
    input logic dphy_clk_lp_n,
    input logic [1:0] dphy_data_lp_p,
    input logic [1:0] dphy_data_lp_n,
    // 3. 카메라 제어 및 시스템 신호 (FPGA -> 카메라)
    output logic cam_clk,  // 카메라 센서 구동용 클럭
    output logic cam_gpio,  // 카메라 리셋(Reset) 또는 전원 제어
    // 4. I2C (SCCB) 설정 통신 라인
    inout logic cam_scl,  // I2C 클럭 (Clock)
    inout logic cam_sda,  // I2C 데이터 (Data)
    // ---------------------AXI2DRAM-----------------------
    output logic [71:0] s_axis_mms2s_cmd_tdata,  // 명령어 tdata
    input logic s_axis_mms2s_cmd_tready,  // 명령어 tready
    output logic s_axis_mms2s_cmd_tvalid,  // 명령어 tvalid
    input logic [63:0] s_axis_mm2s_tdata,  //rdata push data
    input  logic [ 7:0] s_axis_mm2s_tkeep,        //rdata 64비트(8바이트) 중에서 몇 번째 바이트가 유효한지*무시*
    input logic s_axis_mm2s_tlast,  //rdata 마지막 데이터라는 신호
    output logic s_axis_mm2s_tready,  //rdata tready
    input logic s_axis_mm2s_tvalid  //rdata push done
);


    CNN U_CNN (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .done(done),
        .busy(busy),
        //Dram
        .s_axis_mms2s_cmd_tdata (s_axis_mms2s_cmd_tdata),
        .s_axis_mms2s_cmd_tready(s_axis_mms2s_cmd_tready),
        .s_axis_mms2s_cmd_tvalid(s_axis_mms2s_cmd_tvalid),
        .s_axis_mms2s_cmd_tdata(s_axis_mms2s_cmd_tdata),  // 명령어 tdata
        .s_axis_mms2s_cmd_tready(s_axis_mms2s_cmd_tready),  // 명령어 tready
        .s_axis_mms2s_cmd_tvalid(s_axis_mms2s_cmd_tvalid),  // 명령어 tvalid
        .s_axis_mms2s_tdata(s_axis_mms2s_tdata),  // 명령어 tdata
        .s_axis_mms2s_tready(s_axis_mms2s_tready),  // 명령어 tready
        .s_axis_mms2s_tvalid(s_axis_mms2s_tvalid),  // 명령어 tvalid
        .s_axis_mm2s_tdata(s_axis_mm2s_tdata),  //rdata push data
        .s_axis_mm2s_tlast(s_axis_mm2s_tlast),  //rdata 마지막 데이터라는 신호
        .s_axis_mm2s_tready(s_axis_mm2s_tready),  //rdata tready
        .s_axis_mm2s_tvalid(s_axis_mm2s_tvalid)  //rdata push done
    );





endmodule
