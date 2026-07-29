// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jul 29 15:12:12 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_grayscale_0_0/system_axis_grayscale_0_0_sim_netlist.v
// Design      : system_axis_grayscale_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axis_grayscale_0_0,axis_grayscale,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axis_grayscale,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_axis_grayscale_0_0
   (aclk,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_video:s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) input s_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) output s_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input s_axis_video_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input s_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [23:0]m_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output m_axis_video_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output m_axis_video_tlast;

  wire aclk;
  wire aresetn;
  wire [15:8]\^m_axis_video_tdata ;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  assign m_axis_video_tdata[23:16] = \^m_axis_video_tdata [15:8];
  assign m_axis_video_tdata[15:8] = \^m_axis_video_tdata [15:8];
  assign m_axis_video_tdata[7:0] = \^m_axis_video_tdata [15:8];
  system_axis_grayscale_0_0_axis_grayscale U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_video_tdata(\^m_axis_video_tdata ),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid_reg_0(m_axis_video_tvalid),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_grayscale" *) 
module system_axis_grayscale_0_0_axis_grayscale
   (m_axis_video_tdata,
    m_axis_video_tuser,
    m_axis_video_tlast,
    m_axis_video_tvalid_reg_0,
    s_axis_video_tready,
    s_axis_video_tdata,
    aclk,
    s_axis_video_tuser,
    s_axis_video_tlast,
    m_axis_video_tready,
    s_axis_video_tvalid,
    aresetn);
  output [7:0]m_axis_video_tdata;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output m_axis_video_tvalid_reg_0;
  output s_axis_video_tready;
  input [23:0]s_axis_video_tdata;
  input aclk;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input m_axis_video_tready;
  input s_axis_video_tvalid;
  input aresetn;

  wire [14:1]C;
  wire aclk;
  wire aresetn;
  wire [12:1]blue_weighted;
  wire blue_weighted__24_carry__0_i_1_n_0;
  wire blue_weighted__24_carry__0_i_2_n_0;
  wire blue_weighted__24_carry__0_i_3_n_0;
  wire blue_weighted__24_carry__0_i_4_n_0;
  wire blue_weighted__24_carry__0_i_5_n_0;
  wire blue_weighted__24_carry__0_i_6_n_0;
  wire blue_weighted__24_carry__0_i_7_n_0;
  wire blue_weighted__24_carry__0_i_8_n_0;
  wire blue_weighted__24_carry__0_n_0;
  wire blue_weighted__24_carry__0_n_1;
  wire blue_weighted__24_carry__0_n_2;
  wire blue_weighted__24_carry__0_n_3;
  wire blue_weighted__24_carry__1_i_1_n_0;
  wire blue_weighted__24_carry__1_i_2_n_0;
  wire blue_weighted__24_carry__1_i_3_n_0;
  wire blue_weighted__24_carry__1_n_3;
  wire blue_weighted__24_carry_i_1_n_0;
  wire blue_weighted__24_carry_i_2_n_0;
  wire blue_weighted__24_carry_i_3_n_0;
  wire blue_weighted__24_carry_i_4_n_0;
  wire blue_weighted__24_carry_i_5_n_0;
  wire blue_weighted__24_carry_i_6_n_0;
  wire blue_weighted__24_carry_i_7_n_0;
  wire blue_weighted__24_carry_n_0;
  wire blue_weighted__24_carry_n_1;
  wire blue_weighted__24_carry_n_2;
  wire blue_weighted__24_carry_n_3;
  wire blue_weighted_carry__0_i_1_n_0;
  wire blue_weighted_carry__0_i_2_n_0;
  wire blue_weighted_carry__0_i_3_n_0;
  wire blue_weighted_carry__0_n_0;
  wire blue_weighted_carry__0_n_1;
  wire blue_weighted_carry__0_n_2;
  wire blue_weighted_carry__0_n_3;
  wire blue_weighted_carry__0_n_4;
  wire blue_weighted_carry__0_n_5;
  wire blue_weighted_carry__0_n_6;
  wire blue_weighted_carry__0_n_7;
  wire blue_weighted_carry__1_n_2;
  wire blue_weighted_carry__1_n_7;
  wire blue_weighted_carry_i_1_n_0;
  wire blue_weighted_carry_i_2_n_0;
  wire blue_weighted_carry_i_3_n_0;
  wire blue_weighted_carry_n_0;
  wire blue_weighted_carry_n_1;
  wire blue_weighted_carry_n_2;
  wire blue_weighted_carry_n_3;
  wire blue_weighted_carry_n_4;
  wire blue_weighted_carry_n_5;
  wire [15:8]gray_sum;
  wire gray_sum__41_carry__0_i_1_n_0;
  wire gray_sum__41_carry__0_i_2_n_0;
  wire gray_sum__41_carry__0_i_3_n_0;
  wire gray_sum__41_carry__0_i_4_n_0;
  wire gray_sum__41_carry__0_n_0;
  wire gray_sum__41_carry__0_n_1;
  wire gray_sum__41_carry__0_n_2;
  wire gray_sum__41_carry__0_n_3;
  wire gray_sum__41_carry__1_i_1_n_0;
  wire gray_sum__41_carry__1_i_2_n_0;
  wire gray_sum__41_carry__1_i_3_n_0;
  wire gray_sum__41_carry__1_i_4_n_0;
  wire gray_sum__41_carry__1_n_0;
  wire gray_sum__41_carry__1_n_1;
  wire gray_sum__41_carry__1_n_2;
  wire gray_sum__41_carry__1_n_3;
  wire gray_sum__41_carry__2_i_1_n_0;
  wire gray_sum__41_carry__2_i_2_n_0;
  wire gray_sum__41_carry__2_i_3_n_0;
  wire gray_sum__41_carry__2_n_2;
  wire gray_sum__41_carry__2_n_3;
  wire gray_sum__41_carry_i_1_n_0;
  wire gray_sum__41_carry_i_2_n_0;
  wire gray_sum__41_carry_i_3_n_0;
  wire gray_sum__41_carry_i_4_n_0;
  wire gray_sum__41_carry_n_0;
  wire gray_sum__41_carry_n_1;
  wire gray_sum__41_carry_n_2;
  wire gray_sum__41_carry_n_3;
  wire gray_sum_carry__0_i_1_n_0;
  wire gray_sum_carry__0_i_2_n_0;
  wire gray_sum_carry__0_i_3_n_0;
  wire gray_sum_carry__0_i_4_n_0;
  wire gray_sum_carry__0_n_0;
  wire gray_sum_carry__0_n_1;
  wire gray_sum_carry__0_n_2;
  wire gray_sum_carry__0_n_3;
  wire gray_sum_carry__1_i_1_n_0;
  wire gray_sum_carry__1_i_2_n_0;
  wire gray_sum_carry__1_i_3_n_0;
  wire gray_sum_carry__1_i_4_n_0;
  wire gray_sum_carry__1_n_0;
  wire gray_sum_carry__1_n_1;
  wire gray_sum_carry__1_n_2;
  wire gray_sum_carry__1_n_3;
  wire gray_sum_carry__2_i_2_n_0;
  wire gray_sum_carry__2_n_0;
  wire gray_sum_carry__2_n_2;
  wire gray_sum_carry__2_n_3;
  wire gray_sum_carry_i_1_n_0;
  wire gray_sum_carry_i_2_n_0;
  wire gray_sum_carry_i_3_n_0;
  wire gray_sum_carry_i_4_n_0;
  wire gray_sum_carry_n_0;
  wire gray_sum_carry_n_1;
  wire gray_sum_carry_n_2;
  wire gray_sum_carry_n_3;
  wire [15:1]green_weighted;
  wire green_weighted__27_carry__0_i_1_n_0;
  wire green_weighted__27_carry__0_i_2_n_0;
  wire green_weighted__27_carry__0_i_3_n_0;
  wire green_weighted__27_carry__0_i_4_n_0;
  wire green_weighted__27_carry__0_i_5_n_0;
  wire green_weighted__27_carry__0_i_6_n_0;
  wire green_weighted__27_carry__0_i_7_n_0;
  wire green_weighted__27_carry__0_n_0;
  wire green_weighted__27_carry__0_n_1;
  wire green_weighted__27_carry__0_n_2;
  wire green_weighted__27_carry__0_n_3;
  wire green_weighted__27_carry__1_i_1_n_0;
  wire green_weighted__27_carry__1_i_2_n_0;
  wire green_weighted__27_carry__1_i_3_n_0;
  wire green_weighted__27_carry__1_i_4_n_0;
  wire green_weighted__27_carry__1_i_5_n_0;
  wire green_weighted__27_carry__1_i_6_n_0;
  wire green_weighted__27_carry__1_i_7_n_0;
  wire green_weighted__27_carry__1_i_8_n_0;
  wire green_weighted__27_carry__1_n_0;
  wire green_weighted__27_carry__1_n_1;
  wire green_weighted__27_carry__1_n_2;
  wire green_weighted__27_carry__1_n_3;
  wire green_weighted__27_carry__2_i_1_n_0;
  wire green_weighted__27_carry_i_1_n_0;
  wire green_weighted__27_carry_i_2_n_0;
  wire green_weighted__27_carry_i_3_n_0;
  wire green_weighted__27_carry_n_0;
  wire green_weighted__27_carry_n_1;
  wire green_weighted__27_carry_n_2;
  wire green_weighted__27_carry_n_3;
  wire green_weighted_carry__0_i_1_n_0;
  wire green_weighted_carry__0_i_2_n_0;
  wire green_weighted_carry__0_i_3_n_0;
  wire green_weighted_carry__0_i_4_n_0;
  wire green_weighted_carry__0_n_0;
  wire green_weighted_carry__0_n_1;
  wire green_weighted_carry__0_n_2;
  wire green_weighted_carry__0_n_3;
  wire green_weighted_carry__0_n_4;
  wire green_weighted_carry__0_n_5;
  wire green_weighted_carry__0_n_6;
  wire green_weighted_carry__0_n_7;
  wire green_weighted_carry__1_i_1_n_0;
  wire green_weighted_carry__1_i_2_n_0;
  wire green_weighted_carry__1_n_1;
  wire green_weighted_carry__1_n_3;
  wire green_weighted_carry__1_n_6;
  wire green_weighted_carry__1_n_7;
  wire green_weighted_carry_i_1_n_0;
  wire green_weighted_carry_i_2_n_0;
  wire green_weighted_carry_i_3_n_0;
  wire green_weighted_carry_n_0;
  wire green_weighted_carry_n_1;
  wire green_weighted_carry_n_2;
  wire green_weighted_carry_n_3;
  wire green_weighted_carry_n_4;
  wire green_weighted_carry_n_5;
  wire [7:0]m_axis_video_tdata;
  wire \m_axis_video_tdata[23]_i_2_n_0 ;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid_i_1_n_0;
  wire m_axis_video_tvalid_reg_0;
  wire p_0_in;
  wire [14:1]red_weighted;
  wire red_weighted__25_carry__0_i_1_n_0;
  wire red_weighted__25_carry__0_i_2_n_0;
  wire red_weighted__25_carry__0_i_3_n_0;
  wire red_weighted__25_carry__0_i_4_n_0;
  wire red_weighted__25_carry__0_i_5_n_0;
  wire red_weighted__25_carry__0_i_6_n_0;
  wire red_weighted__25_carry__0_i_7_n_0;
  wire red_weighted__25_carry__0_n_0;
  wire red_weighted__25_carry__0_n_1;
  wire red_weighted__25_carry__0_n_2;
  wire red_weighted__25_carry__0_n_3;
  wire red_weighted__25_carry__1_i_1_n_0;
  wire red_weighted__25_carry__1_i_2_n_0;
  wire red_weighted__25_carry__1_i_3_n_0;
  wire red_weighted__25_carry__1_n_0;
  wire red_weighted__25_carry__1_n_1;
  wire red_weighted__25_carry__1_n_2;
  wire red_weighted__25_carry__1_n_3;
  wire red_weighted__25_carry_i_1_n_0;
  wire red_weighted__25_carry_i_2_n_0;
  wire red_weighted__25_carry_i_3_n_0;
  wire red_weighted__25_carry_n_0;
  wire red_weighted__25_carry_n_1;
  wire red_weighted__25_carry_n_2;
  wire red_weighted__25_carry_n_3;
  wire red_weighted_carry__0_i_1_n_0;
  wire red_weighted_carry__0_i_2_n_0;
  wire red_weighted_carry__0_i_3_n_0;
  wire red_weighted_carry__0_n_0;
  wire red_weighted_carry__0_n_1;
  wire red_weighted_carry__0_n_2;
  wire red_weighted_carry__0_n_3;
  wire red_weighted_carry__0_n_4;
  wire red_weighted_carry__0_n_5;
  wire red_weighted_carry__0_n_6;
  wire red_weighted_carry__0_n_7;
  wire red_weighted_carry__1_n_2;
  wire red_weighted_carry__1_n_7;
  wire red_weighted_carry_i_1_n_0;
  wire red_weighted_carry_i_2_n_0;
  wire red_weighted_carry_i_3_n_0;
  wire red_weighted_carry_n_0;
  wire red_weighted_carry_n_1;
  wire red_weighted_carry_n_2;
  wire red_weighted_carry_n_3;
  wire red_weighted_carry_n_4;
  wire red_weighted_carry_n_5;
  wire red_weighted_carry_n_6;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [3:1]NLW_blue_weighted__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_blue_weighted__24_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_blue_weighted_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_blue_weighted_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_gray_sum__41_carry_O_UNCONNECTED;
  wire [2:0]NLW_gray_sum__41_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_gray_sum__41_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_gray_sum__41_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_gray_sum_carry_O_UNCONNECTED;
  wire [2:2]NLW_gray_sum_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_gray_sum_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_gray_sum_carry__2_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_gray_sum_carry__2_i_1_O_UNCONNECTED;
  wire [3:0]NLW_green_weighted__27_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_green_weighted__27_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_green_weighted_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_green_weighted_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_red_weighted_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_red_weighted_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 blue_weighted__24_carry
       (.CI(1'b0),
        .CO({blue_weighted__24_carry_n_0,blue_weighted__24_carry_n_1,blue_weighted__24_carry_n_2,blue_weighted__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({blue_weighted__24_carry_i_1_n_0,blue_weighted__24_carry_i_2_n_0,blue_weighted__24_carry_i_3_n_0,1'b0}),
        .O(blue_weighted[6:3]),
        .S({blue_weighted__24_carry_i_4_n_0,blue_weighted__24_carry_i_5_n_0,blue_weighted__24_carry_i_6_n_0,blue_weighted__24_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 blue_weighted__24_carry__0
       (.CI(blue_weighted__24_carry_n_0),
        .CO({blue_weighted__24_carry__0_n_0,blue_weighted__24_carry__0_n_1,blue_weighted__24_carry__0_n_2,blue_weighted__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({blue_weighted__24_carry__0_i_1_n_0,blue_weighted__24_carry__0_i_2_n_0,blue_weighted__24_carry__0_i_3_n_0,blue_weighted__24_carry__0_i_4_n_0}),
        .O(blue_weighted[10:7]),
        .S({blue_weighted__24_carry__0_i_5_n_0,blue_weighted__24_carry__0_i_6_n_0,blue_weighted__24_carry__0_i_7_n_0,blue_weighted__24_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    blue_weighted__24_carry__0_i_1
       (.I0(s_axis_video_tdata[14]),
        .I1(blue_weighted_carry__1_n_7),
        .I2(s_axis_video_tdata[12]),
        .O(blue_weighted__24_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    blue_weighted__24_carry__0_i_2
       (.I0(s_axis_video_tdata[13]),
        .I1(blue_weighted_carry__0_n_4),
        .I2(s_axis_video_tdata[11]),
        .O(blue_weighted__24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    blue_weighted__24_carry__0_i_3
       (.I0(s_axis_video_tdata[12]),
        .I1(blue_weighted_carry__0_n_5),
        .I2(s_axis_video_tdata[10]),
        .O(blue_weighted__24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    blue_weighted__24_carry__0_i_4
       (.I0(s_axis_video_tdata[11]),
        .I1(blue_weighted_carry__0_n_6),
        .I2(s_axis_video_tdata[9]),
        .O(blue_weighted__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    blue_weighted__24_carry__0_i_5
       (.I0(s_axis_video_tdata[12]),
        .I1(blue_weighted_carry__1_n_7),
        .I2(s_axis_video_tdata[14]),
        .I3(s_axis_video_tdata[15]),
        .I4(blue_weighted_carry__1_n_2),
        .I5(s_axis_video_tdata[13]),
        .O(blue_weighted__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    blue_weighted__24_carry__0_i_6
       (.I0(s_axis_video_tdata[11]),
        .I1(blue_weighted_carry__0_n_4),
        .I2(s_axis_video_tdata[13]),
        .I3(s_axis_video_tdata[14]),
        .I4(blue_weighted_carry__1_n_7),
        .I5(s_axis_video_tdata[12]),
        .O(blue_weighted__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    blue_weighted__24_carry__0_i_7
       (.I0(s_axis_video_tdata[10]),
        .I1(blue_weighted_carry__0_n_5),
        .I2(s_axis_video_tdata[12]),
        .I3(s_axis_video_tdata[13]),
        .I4(blue_weighted_carry__0_n_4),
        .I5(s_axis_video_tdata[11]),
        .O(blue_weighted__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    blue_weighted__24_carry__0_i_8
       (.I0(s_axis_video_tdata[9]),
        .I1(blue_weighted_carry__0_n_6),
        .I2(s_axis_video_tdata[11]),
        .I3(s_axis_video_tdata[12]),
        .I4(blue_weighted_carry__0_n_5),
        .I5(s_axis_video_tdata[10]),
        .O(blue_weighted__24_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 blue_weighted__24_carry__1
       (.CI(blue_weighted__24_carry__0_n_0),
        .CO({NLW_blue_weighted__24_carry__1_CO_UNCONNECTED[3:1],blue_weighted__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,blue_weighted__24_carry__1_i_1_n_0}),
        .O({NLW_blue_weighted__24_carry__1_O_UNCONNECTED[3:2],blue_weighted[12:11]}),
        .S({1'b0,1'b0,blue_weighted__24_carry__1_i_2_n_0,blue_weighted__24_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    blue_weighted__24_carry__1_i_1
       (.I0(s_axis_video_tdata[15]),
        .I1(blue_weighted_carry__1_n_2),
        .I2(s_axis_video_tdata[13]),
        .O(blue_weighted__24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    blue_weighted__24_carry__1_i_2
       (.I0(s_axis_video_tdata[14]),
        .I1(s_axis_video_tdata[15]),
        .O(blue_weighted__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    blue_weighted__24_carry__1_i_3
       (.I0(s_axis_video_tdata[13]),
        .I1(blue_weighted_carry__1_n_2),
        .I2(s_axis_video_tdata[15]),
        .I3(s_axis_video_tdata[14]),
        .O(blue_weighted__24_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    blue_weighted__24_carry_i_1
       (.I0(s_axis_video_tdata[10]),
        .I1(blue_weighted_carry__0_n_7),
        .I2(s_axis_video_tdata[8]),
        .O(blue_weighted__24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    blue_weighted__24_carry_i_2
       (.I0(s_axis_video_tdata[10]),
        .I1(blue_weighted_carry__0_n_7),
        .I2(s_axis_video_tdata[8]),
        .O(blue_weighted__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    blue_weighted__24_carry_i_3
       (.I0(blue_weighted_carry_n_5),
        .I1(s_axis_video_tdata[8]),
        .O(blue_weighted__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    blue_weighted__24_carry_i_4
       (.I0(s_axis_video_tdata[8]),
        .I1(blue_weighted_carry__0_n_7),
        .I2(s_axis_video_tdata[10]),
        .I3(s_axis_video_tdata[11]),
        .I4(blue_weighted_carry__0_n_6),
        .I5(s_axis_video_tdata[9]),
        .O(blue_weighted__24_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    blue_weighted__24_carry_i_5
       (.I0(s_axis_video_tdata[10]),
        .I1(blue_weighted_carry__0_n_7),
        .I2(s_axis_video_tdata[8]),
        .I3(s_axis_video_tdata[9]),
        .I4(blue_weighted_carry_n_4),
        .O(blue_weighted__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    blue_weighted__24_carry_i_6
       (.I0(s_axis_video_tdata[8]),
        .I1(blue_weighted_carry_n_5),
        .I2(blue_weighted_carry_n_4),
        .I3(s_axis_video_tdata[9]),
        .O(blue_weighted__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    blue_weighted__24_carry_i_7
       (.I0(s_axis_video_tdata[8]),
        .I1(blue_weighted_carry_n_5),
        .O(blue_weighted__24_carry_i_7_n_0));
  CARRY4 blue_weighted_carry
       (.CI(1'b0),
        .CO({blue_weighted_carry_n_0,blue_weighted_carry_n_1,blue_weighted_carry_n_2,blue_weighted_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_video_tdata[12:10],1'b0}),
        .O({blue_weighted_carry_n_4,blue_weighted_carry_n_5,blue_weighted[2:1]}),
        .S({blue_weighted_carry_i_1_n_0,blue_weighted_carry_i_2_n_0,blue_weighted_carry_i_3_n_0,s_axis_video_tdata[9]}));
  CARRY4 blue_weighted_carry__0
       (.CI(blue_weighted_carry_n_0),
        .CO({blue_weighted_carry__0_n_0,blue_weighted_carry__0_n_1,blue_weighted_carry__0_n_2,blue_weighted_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_video_tdata[15:13]}),
        .O({blue_weighted_carry__0_n_4,blue_weighted_carry__0_n_5,blue_weighted_carry__0_n_6,blue_weighted_carry__0_n_7}),
        .S({s_axis_video_tdata[14],blue_weighted_carry__0_i_1_n_0,blue_weighted_carry__0_i_2_n_0,blue_weighted_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    blue_weighted_carry__0_i_1
       (.I0(s_axis_video_tdata[15]),
        .I1(s_axis_video_tdata[13]),
        .O(blue_weighted_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    blue_weighted_carry__0_i_2
       (.I0(s_axis_video_tdata[14]),
        .I1(s_axis_video_tdata[12]),
        .O(blue_weighted_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    blue_weighted_carry__0_i_3
       (.I0(s_axis_video_tdata[13]),
        .I1(s_axis_video_tdata[11]),
        .O(blue_weighted_carry__0_i_3_n_0));
  CARRY4 blue_weighted_carry__1
       (.CI(blue_weighted_carry__0_n_0),
        .CO({NLW_blue_weighted_carry__1_CO_UNCONNECTED[3:2],blue_weighted_carry__1_n_2,NLW_blue_weighted_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_blue_weighted_carry__1_O_UNCONNECTED[3:1],blue_weighted_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_video_tdata[15]}));
  LUT2 #(
    .INIT(4'h6)) 
    blue_weighted_carry_i_1
       (.I0(s_axis_video_tdata[12]),
        .I1(s_axis_video_tdata[10]),
        .O(blue_weighted_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    blue_weighted_carry_i_2
       (.I0(s_axis_video_tdata[11]),
        .I1(s_axis_video_tdata[9]),
        .O(blue_weighted_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    blue_weighted_carry_i_3
       (.I0(s_axis_video_tdata[10]),
        .I1(s_axis_video_tdata[8]),
        .O(blue_weighted_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gray_sum__41_carry
       (.CI(1'b0),
        .CO({gray_sum__41_carry_n_0,gray_sum__41_carry_n_1,gray_sum__41_carry_n_2,gray_sum__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI(green_weighted[4:1]),
        .O(NLW_gray_sum__41_carry_O_UNCONNECTED[3:0]),
        .S({gray_sum__41_carry_i_1_n_0,gray_sum__41_carry_i_2_n_0,gray_sum__41_carry_i_3_n_0,gray_sum__41_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gray_sum__41_carry__0
       (.CI(gray_sum__41_carry_n_0),
        .CO({gray_sum__41_carry__0_n_0,gray_sum__41_carry__0_n_1,gray_sum__41_carry__0_n_2,gray_sum__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(green_weighted[8:5]),
        .O({gray_sum[8],NLW_gray_sum__41_carry__0_O_UNCONNECTED[2:0]}),
        .S({gray_sum__41_carry__0_i_1_n_0,gray_sum__41_carry__0_i_2_n_0,gray_sum__41_carry__0_i_3_n_0,gray_sum__41_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__0_i_1
       (.I0(green_weighted[8]),
        .I1(C[8]),
        .O(gray_sum__41_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__0_i_2
       (.I0(green_weighted[7]),
        .I1(C[7]),
        .O(gray_sum__41_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__0_i_3
       (.I0(green_weighted[6]),
        .I1(C[6]),
        .O(gray_sum__41_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__0_i_4
       (.I0(green_weighted[5]),
        .I1(C[5]),
        .O(gray_sum__41_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gray_sum__41_carry__1
       (.CI(gray_sum__41_carry__0_n_0),
        .CO({gray_sum__41_carry__1_n_0,gray_sum__41_carry__1_n_1,gray_sum__41_carry__1_n_2,gray_sum__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(green_weighted[12:9]),
        .O(gray_sum[12:9]),
        .S({gray_sum__41_carry__1_i_1_n_0,gray_sum__41_carry__1_i_2_n_0,gray_sum__41_carry__1_i_3_n_0,gray_sum__41_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__1_i_1
       (.I0(green_weighted[12]),
        .I1(C[12]),
        .O(gray_sum__41_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__1_i_2
       (.I0(green_weighted[11]),
        .I1(C[11]),
        .O(gray_sum__41_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__1_i_3
       (.I0(green_weighted[10]),
        .I1(C[10]),
        .O(gray_sum__41_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__1_i_4
       (.I0(green_weighted[9]),
        .I1(C[9]),
        .O(gray_sum__41_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gray_sum__41_carry__2
       (.CI(gray_sum__41_carry__1_n_0),
        .CO({NLW_gray_sum__41_carry__2_CO_UNCONNECTED[3:2],gray_sum__41_carry__2_n_2,gray_sum__41_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,green_weighted[14:13]}),
        .O({NLW_gray_sum__41_carry__2_O_UNCONNECTED[3],gray_sum[15:13]}),
        .S({1'b0,gray_sum__41_carry__2_i_1_n_0,gray_sum__41_carry__2_i_2_n_0,gray_sum__41_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__2_i_1
       (.I0(green_weighted[15]),
        .I1(gray_sum_carry__2_n_0),
        .O(gray_sum__41_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__2_i_2
       (.I0(green_weighted[14]),
        .I1(C[14]),
        .O(gray_sum__41_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry__2_i_3
       (.I0(green_weighted[13]),
        .I1(C[13]),
        .O(gray_sum__41_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry_i_1
       (.I0(green_weighted[4]),
        .I1(C[4]),
        .O(gray_sum__41_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry_i_2
       (.I0(green_weighted[3]),
        .I1(C[3]),
        .O(gray_sum__41_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry_i_3
       (.I0(green_weighted[2]),
        .I1(C[2]),
        .O(gray_sum__41_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum__41_carry_i_4
       (.I0(green_weighted[1]),
        .I1(C[1]),
        .O(gray_sum__41_carry_i_4_n_0));
  CARRY4 gray_sum_carry
       (.CI(1'b0),
        .CO({gray_sum_carry_n_0,gray_sum_carry_n_1,gray_sum_carry_n_2,gray_sum_carry_n_3}),
        .CYINIT(1'b0),
        .DI({blue_weighted[3:1],s_axis_video_tdata[8]}),
        .O({C[3:1],NLW_gray_sum_carry_O_UNCONNECTED[0]}),
        .S({gray_sum_carry_i_1_n_0,gray_sum_carry_i_2_n_0,gray_sum_carry_i_3_n_0,gray_sum_carry_i_4_n_0}));
  CARRY4 gray_sum_carry__0
       (.CI(gray_sum_carry_n_0),
        .CO({gray_sum_carry__0_n_0,gray_sum_carry__0_n_1,gray_sum_carry__0_n_2,gray_sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(blue_weighted[7:4]),
        .O(C[7:4]),
        .S({gray_sum_carry__0_i_1_n_0,gray_sum_carry__0_i_2_n_0,gray_sum_carry__0_i_3_n_0,gray_sum_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__0_i_1
       (.I0(blue_weighted[7]),
        .I1(red_weighted[7]),
        .O(gray_sum_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__0_i_2
       (.I0(blue_weighted[6]),
        .I1(red_weighted[6]),
        .O(gray_sum_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__0_i_3
       (.I0(blue_weighted[5]),
        .I1(red_weighted[5]),
        .O(gray_sum_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__0_i_4
       (.I0(blue_weighted[4]),
        .I1(red_weighted[4]),
        .O(gray_sum_carry__0_i_4_n_0));
  CARRY4 gray_sum_carry__1
       (.CI(gray_sum_carry__0_n_0),
        .CO({gray_sum_carry__1_n_0,gray_sum_carry__1_n_1,gray_sum_carry__1_n_2,gray_sum_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(blue_weighted[11:8]),
        .O(C[11:8]),
        .S({gray_sum_carry__1_i_1_n_0,gray_sum_carry__1_i_2_n_0,gray_sum_carry__1_i_3_n_0,gray_sum_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__1_i_1
       (.I0(blue_weighted[11]),
        .I1(red_weighted[11]),
        .O(gray_sum_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__1_i_2
       (.I0(blue_weighted[10]),
        .I1(red_weighted[10]),
        .O(gray_sum_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__1_i_3
       (.I0(blue_weighted[9]),
        .I1(red_weighted[9]),
        .O(gray_sum_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__1_i_4
       (.I0(blue_weighted[8]),
        .I1(red_weighted[8]),
        .O(gray_sum_carry__1_i_4_n_0));
  CARRY4 gray_sum_carry__2
       (.CI(gray_sum_carry__1_n_0),
        .CO({gray_sum_carry__2_n_0,NLW_gray_sum_carry__2_CO_UNCONNECTED[2],gray_sum_carry__2_n_2,gray_sum_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,blue_weighted[12]}),
        .O({NLW_gray_sum_carry__2_O_UNCONNECTED[3],C[14:12]}),
        .S({1'b1,red_weighted[14:13],gray_sum_carry__2_i_2_n_0}));
  CARRY4 gray_sum_carry__2_i_1
       (.CI(red_weighted__25_carry__1_n_0),
        .CO({NLW_gray_sum_carry__2_i_1_CO_UNCONNECTED[3:1],red_weighted[14]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_gray_sum_carry__2_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry__2_i_2
       (.I0(blue_weighted[12]),
        .I1(red_weighted[12]),
        .O(gray_sum_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry_i_1
       (.I0(blue_weighted[3]),
        .I1(red_weighted[3]),
        .O(gray_sum_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry_i_2
       (.I0(blue_weighted[2]),
        .I1(red_weighted[2]),
        .O(gray_sum_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry_i_3
       (.I0(blue_weighted[1]),
        .I1(red_weighted[1]),
        .O(gray_sum_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gray_sum_carry_i_4
       (.I0(s_axis_video_tdata[8]),
        .I1(s_axis_video_tdata[16]),
        .O(gray_sum_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_weighted__27_carry
       (.CI(1'b0),
        .CO({green_weighted__27_carry_n_0,green_weighted__27_carry_n_1,green_weighted__27_carry_n_2,green_weighted__27_carry_n_3}),
        .CYINIT(1'b0),
        .DI({green_weighted_carry__0_n_6,green_weighted_carry__0_n_7,green_weighted_carry_n_4,1'b0}),
        .O(green_weighted[6:3]),
        .S({green_weighted__27_carry_i_1_n_0,green_weighted__27_carry_i_2_n_0,green_weighted__27_carry_i_3_n_0,green_weighted_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_weighted__27_carry__0
       (.CI(green_weighted__27_carry_n_0),
        .CO({green_weighted__27_carry__0_n_0,green_weighted__27_carry__0_n_1,green_weighted__27_carry__0_n_2,green_weighted__27_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({green_weighted__27_carry__0_i_1_n_0,green_weighted__27_carry__0_i_2_n_0,green_weighted__27_carry__0_i_3_n_0,s_axis_video_tdata[0]}),
        .O(green_weighted[10:7]),
        .S({green_weighted__27_carry__0_i_4_n_0,green_weighted__27_carry__0_i_5_n_0,green_weighted__27_carry__0_i_6_n_0,green_weighted__27_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    green_weighted__27_carry__0_i_1
       (.I0(s_axis_video_tdata[5]),
        .I1(green_weighted_carry__1_n_7),
        .I2(s_axis_video_tdata[2]),
        .O(green_weighted__27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    green_weighted__27_carry__0_i_2
       (.I0(s_axis_video_tdata[4]),
        .I1(green_weighted_carry__0_n_4),
        .I2(s_axis_video_tdata[1]),
        .O(green_weighted__27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    green_weighted__27_carry__0_i_3
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[4]),
        .I2(green_weighted_carry__0_n_4),
        .O(green_weighted__27_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    green_weighted__27_carry__0_i_4
       (.I0(s_axis_video_tdata[6]),
        .I1(green_weighted_carry__1_n_6),
        .I2(s_axis_video_tdata[3]),
        .I3(green_weighted__27_carry__0_i_1_n_0),
        .O(green_weighted__27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    green_weighted__27_carry__0_i_5
       (.I0(s_axis_video_tdata[5]),
        .I1(green_weighted_carry__1_n_7),
        .I2(s_axis_video_tdata[2]),
        .I3(green_weighted__27_carry__0_i_2_n_0),
        .O(green_weighted__27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    green_weighted__27_carry__0_i_6
       (.I0(s_axis_video_tdata[4]),
        .I1(green_weighted_carry__0_n_4),
        .I2(s_axis_video_tdata[1]),
        .I3(green_weighted_carry__0_n_5),
        .I4(s_axis_video_tdata[3]),
        .O(green_weighted__27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    green_weighted__27_carry__0_i_7
       (.I0(s_axis_video_tdata[3]),
        .I1(green_weighted_carry__0_n_5),
        .I2(s_axis_video_tdata[0]),
        .O(green_weighted__27_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_weighted__27_carry__1
       (.CI(green_weighted__27_carry__0_n_0),
        .CO({green_weighted__27_carry__1_n_0,green_weighted__27_carry__1_n_1,green_weighted__27_carry__1_n_2,green_weighted__27_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({green_weighted__27_carry__1_i_1_n_0,green_weighted__27_carry__1_i_2_n_0,green_weighted__27_carry__1_i_3_n_0,green_weighted__27_carry__1_i_4_n_0}),
        .O(green_weighted[14:11]),
        .S({green_weighted__27_carry__1_i_5_n_0,green_weighted__27_carry__1_i_6_n_0,green_weighted__27_carry__1_i_7_n_0,green_weighted__27_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    green_weighted__27_carry__1_i_1
       (.I0(s_axis_video_tdata[6]),
        .I1(green_weighted_carry__1_n_1),
        .O(green_weighted__27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    green_weighted__27_carry__1_i_2
       (.I0(s_axis_video_tdata[5]),
        .I1(green_weighted_carry__1_n_1),
        .O(green_weighted__27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    green_weighted__27_carry__1_i_3
       (.I0(s_axis_video_tdata[7]),
        .I1(green_weighted_carry__1_n_1),
        .I2(s_axis_video_tdata[4]),
        .O(green_weighted__27_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    green_weighted__27_carry__1_i_4
       (.I0(s_axis_video_tdata[6]),
        .I1(green_weighted_carry__1_n_6),
        .I2(s_axis_video_tdata[3]),
        .O(green_weighted__27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    green_weighted__27_carry__1_i_5
       (.I0(s_axis_video_tdata[6]),
        .I1(green_weighted_carry__1_n_1),
        .I2(s_axis_video_tdata[7]),
        .O(green_weighted__27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    green_weighted__27_carry__1_i_6
       (.I0(s_axis_video_tdata[5]),
        .I1(green_weighted_carry__1_n_1),
        .I2(s_axis_video_tdata[6]),
        .O(green_weighted__27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    green_weighted__27_carry__1_i_7
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[7]),
        .I2(green_weighted_carry__1_n_1),
        .I3(s_axis_video_tdata[5]),
        .O(green_weighted__27_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    green_weighted__27_carry__1_i_8
       (.I0(green_weighted__27_carry__1_i_4_n_0),
        .I1(green_weighted_carry__1_n_1),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[4]),
        .O(green_weighted__27_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 green_weighted__27_carry__2
       (.CI(green_weighted__27_carry__1_n_0),
        .CO(NLW_green_weighted__27_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_green_weighted__27_carry__2_O_UNCONNECTED[3:1],green_weighted[15]}),
        .S({1'b0,1'b0,1'b0,green_weighted__27_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    green_weighted__27_carry__2_i_1
       (.I0(s_axis_video_tdata[7]),
        .I1(green_weighted_carry__1_n_1),
        .O(green_weighted__27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    green_weighted__27_carry_i_1
       (.I0(green_weighted_carry__0_n_6),
        .I1(s_axis_video_tdata[2]),
        .O(green_weighted__27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    green_weighted__27_carry_i_2
       (.I0(green_weighted_carry__0_n_7),
        .I1(s_axis_video_tdata[1]),
        .O(green_weighted__27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    green_weighted__27_carry_i_3
       (.I0(green_weighted_carry_n_4),
        .I1(s_axis_video_tdata[0]),
        .O(green_weighted__27_carry_i_3_n_0));
  CARRY4 green_weighted_carry
       (.CI(1'b0),
        .CO({green_weighted_carry_n_0,green_weighted_carry_n_1,green_weighted_carry_n_2,green_weighted_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_video_tdata[1:0],1'b0,1'b1}),
        .O({green_weighted_carry_n_4,green_weighted_carry_n_5,green_weighted[2:1]}),
        .S({green_weighted_carry_i_1_n_0,green_weighted_carry_i_2_n_0,green_weighted_carry_i_3_n_0,s_axis_video_tdata[0]}));
  CARRY4 green_weighted_carry__0
       (.CI(green_weighted_carry_n_0),
        .CO({green_weighted_carry__0_n_0,green_weighted_carry__0_n_1,green_weighted_carry__0_n_2,green_weighted_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_video_tdata[5:2]),
        .O({green_weighted_carry__0_n_4,green_weighted_carry__0_n_5,green_weighted_carry__0_n_6,green_weighted_carry__0_n_7}),
        .S({green_weighted_carry__0_i_1_n_0,green_weighted_carry__0_i_2_n_0,green_weighted_carry__0_i_3_n_0,green_weighted_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    green_weighted_carry__0_i_1
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[7]),
        .O(green_weighted_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    green_weighted_carry__0_i_2
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[6]),
        .O(green_weighted_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    green_weighted_carry__0_i_3
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[5]),
        .O(green_weighted_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    green_weighted_carry__0_i_4
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[4]),
        .O(green_weighted_carry__0_i_4_n_0));
  CARRY4 green_weighted_carry__1
       (.CI(green_weighted_carry__0_n_0),
        .CO({NLW_green_weighted_carry__1_CO_UNCONNECTED[3],green_weighted_carry__1_n_1,NLW_green_weighted_carry__1_CO_UNCONNECTED[1],green_weighted_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_video_tdata[7:6]}),
        .O({NLW_green_weighted_carry__1_O_UNCONNECTED[3:2],green_weighted_carry__1_n_6,green_weighted_carry__1_n_7}),
        .S({1'b0,1'b1,green_weighted_carry__1_i_1_n_0,green_weighted_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    green_weighted_carry__1_i_1
       (.I0(s_axis_video_tdata[7]),
        .O(green_weighted_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    green_weighted_carry__1_i_2
       (.I0(s_axis_video_tdata[6]),
        .O(green_weighted_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    green_weighted_carry_i_1
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[3]),
        .O(green_weighted_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    green_weighted_carry_i_2
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .O(green_weighted_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    green_weighted_carry_i_3
       (.I0(s_axis_video_tdata[1]),
        .O(green_weighted_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_video_tdata[23]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'hD0)) 
    \m_axis_video_tdata[23]_i_2 
       (.I0(m_axis_video_tvalid_reg_0),
        .I1(m_axis_video_tready),
        .I2(s_axis_video_tvalid),
        .O(\m_axis_video_tdata[23]_i_2_n_0 ));
  FDRE \m_axis_video_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[8]),
        .Q(m_axis_video_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_video_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[9]),
        .Q(m_axis_video_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_video_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[10]),
        .Q(m_axis_video_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_video_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[11]),
        .Q(m_axis_video_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_video_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[12]),
        .Q(m_axis_video_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_video_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[13]),
        .Q(m_axis_video_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_video_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[14]),
        .Q(m_axis_video_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_video_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(gray_sum[15]),
        .Q(m_axis_video_tdata[7]),
        .R(p_0_in));
  FDRE m_axis_video_tlast_reg
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tlast),
        .Q(m_axis_video_tlast),
        .R(p_0_in));
  FDRE m_axis_video_tuser_reg
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tuser),
        .Q(m_axis_video_tuser),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    m_axis_video_tvalid_i_1
       (.I0(m_axis_video_tvalid_reg_0),
        .I1(m_axis_video_tready),
        .I2(s_axis_video_tvalid),
        .I3(aresetn),
        .O(m_axis_video_tvalid_i_1_n_0));
  FDRE m_axis_video_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_video_tvalid_i_1_n_0),
        .Q(m_axis_video_tvalid_reg_0),
        .R(1'b0));
  CARRY4 red_weighted__25_carry
       (.CI(1'b0),
        .CO({red_weighted__25_carry_n_0,red_weighted__25_carry_n_1,red_weighted__25_carry_n_2,red_weighted__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({red_weighted_carry__0_n_7,red_weighted_carry_n_4,red_weighted_carry_n_5,1'b0}),
        .O(red_weighted[5:2]),
        .S({red_weighted__25_carry_i_1_n_0,red_weighted__25_carry_i_2_n_0,red_weighted__25_carry_i_3_n_0,red_weighted_carry_n_6}));
  CARRY4 red_weighted__25_carry__0
       (.CI(red_weighted__25_carry_n_0),
        .CO({red_weighted__25_carry__0_n_0,red_weighted__25_carry__0_n_1,red_weighted__25_carry__0_n_2,red_weighted__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({red_weighted__25_carry__0_i_1_n_0,red_weighted__25_carry__0_i_2_n_0,red_weighted__25_carry__0_i_3_n_0,s_axis_video_tdata[16]}),
        .O(red_weighted[9:6]),
        .S({red_weighted__25_carry__0_i_4_n_0,red_weighted__25_carry__0_i_5_n_0,red_weighted__25_carry__0_i_6_n_0,red_weighted__25_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    red_weighted__25_carry__0_i_1
       (.I0(s_axis_video_tdata[21]),
        .I1(red_weighted_carry__0_n_4),
        .I2(s_axis_video_tdata[18]),
        .O(red_weighted__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    red_weighted__25_carry__0_i_2
       (.I0(s_axis_video_tdata[20]),
        .I1(red_weighted_carry__0_n_5),
        .I2(s_axis_video_tdata[17]),
        .O(red_weighted__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    red_weighted__25_carry__0_i_3
       (.I0(s_axis_video_tdata[17]),
        .I1(s_axis_video_tdata[20]),
        .I2(red_weighted_carry__0_n_5),
        .O(red_weighted__25_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    red_weighted__25_carry__0_i_4
       (.I0(s_axis_video_tdata[22]),
        .I1(red_weighted_carry__1_n_7),
        .I2(s_axis_video_tdata[19]),
        .I3(red_weighted__25_carry__0_i_1_n_0),
        .O(red_weighted__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    red_weighted__25_carry__0_i_5
       (.I0(s_axis_video_tdata[21]),
        .I1(red_weighted_carry__0_n_4),
        .I2(s_axis_video_tdata[18]),
        .I3(red_weighted__25_carry__0_i_2_n_0),
        .O(red_weighted__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    red_weighted__25_carry__0_i_6
       (.I0(s_axis_video_tdata[20]),
        .I1(red_weighted_carry__0_n_5),
        .I2(s_axis_video_tdata[17]),
        .I3(red_weighted_carry__0_n_6),
        .I4(s_axis_video_tdata[19]),
        .O(red_weighted__25_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    red_weighted__25_carry__0_i_7
       (.I0(s_axis_video_tdata[19]),
        .I1(red_weighted_carry__0_n_6),
        .I2(s_axis_video_tdata[16]),
        .O(red_weighted__25_carry__0_i_7_n_0));
  CARRY4 red_weighted__25_carry__1
       (.CI(red_weighted__25_carry__0_n_0),
        .CO({red_weighted__25_carry__1_n_0,red_weighted__25_carry__1_n_1,red_weighted__25_carry__1_n_2,red_weighted__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_video_tdata[21],red_weighted__25_carry__1_i_1_n_0}),
        .O(red_weighted[13:10]),
        .S({s_axis_video_tdata[23:22],red_weighted__25_carry__1_i_2_n_0,red_weighted__25_carry__1_i_3_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    red_weighted__25_carry__1_i_1
       (.I0(s_axis_video_tdata[22]),
        .I1(red_weighted_carry__1_n_7),
        .I2(s_axis_video_tdata[19]),
        .O(red_weighted__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    red_weighted__25_carry__1_i_2
       (.I0(s_axis_video_tdata[20]),
        .I1(red_weighted_carry__1_n_2),
        .I2(s_axis_video_tdata[23]),
        .I3(s_axis_video_tdata[21]),
        .O(red_weighted__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    red_weighted__25_carry__1_i_3
       (.I0(red_weighted__25_carry__1_i_1_n_0),
        .I1(red_weighted_carry__1_n_2),
        .I2(s_axis_video_tdata[23]),
        .I3(s_axis_video_tdata[20]),
        .O(red_weighted__25_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted__25_carry_i_1
       (.I0(red_weighted_carry__0_n_7),
        .I1(s_axis_video_tdata[18]),
        .O(red_weighted__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted__25_carry_i_2
       (.I0(red_weighted_carry_n_4),
        .I1(s_axis_video_tdata[17]),
        .O(red_weighted__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted__25_carry_i_3
       (.I0(red_weighted_carry_n_5),
        .I1(s_axis_video_tdata[16]),
        .O(red_weighted__25_carry_i_3_n_0));
  CARRY4 red_weighted_carry
       (.CI(1'b0),
        .CO({red_weighted_carry_n_0,red_weighted_carry_n_1,red_weighted_carry_n_2,red_weighted_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_video_tdata[20:18],1'b0}),
        .O({red_weighted_carry_n_4,red_weighted_carry_n_5,red_weighted_carry_n_6,red_weighted[1]}),
        .S({red_weighted_carry_i_1_n_0,red_weighted_carry_i_2_n_0,red_weighted_carry_i_3_n_0,s_axis_video_tdata[17]}));
  CARRY4 red_weighted_carry__0
       (.CI(red_weighted_carry_n_0),
        .CO({red_weighted_carry__0_n_0,red_weighted_carry__0_n_1,red_weighted_carry__0_n_2,red_weighted_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_video_tdata[23:21]}),
        .O({red_weighted_carry__0_n_4,red_weighted_carry__0_n_5,red_weighted_carry__0_n_6,red_weighted_carry__0_n_7}),
        .S({s_axis_video_tdata[22],red_weighted_carry__0_i_1_n_0,red_weighted_carry__0_i_2_n_0,red_weighted_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted_carry__0_i_1
       (.I0(s_axis_video_tdata[23]),
        .I1(s_axis_video_tdata[21]),
        .O(red_weighted_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted_carry__0_i_2
       (.I0(s_axis_video_tdata[22]),
        .I1(s_axis_video_tdata[20]),
        .O(red_weighted_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted_carry__0_i_3
       (.I0(s_axis_video_tdata[21]),
        .I1(s_axis_video_tdata[19]),
        .O(red_weighted_carry__0_i_3_n_0));
  CARRY4 red_weighted_carry__1
       (.CI(red_weighted_carry__0_n_0),
        .CO({NLW_red_weighted_carry__1_CO_UNCONNECTED[3:2],red_weighted_carry__1_n_2,NLW_red_weighted_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_red_weighted_carry__1_O_UNCONNECTED[3:1],red_weighted_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_video_tdata[23]}));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted_carry_i_1
       (.I0(s_axis_video_tdata[20]),
        .I1(s_axis_video_tdata[18]),
        .O(red_weighted_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted_carry_i_2
       (.I0(s_axis_video_tdata[19]),
        .I1(s_axis_video_tdata[17]),
        .O(red_weighted_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    red_weighted_carry_i_3
       (.I0(s_axis_video_tdata[18]),
        .I1(s_axis_video_tdata[16]),
        .O(red_weighted_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_video_tready_INST_0
       (.I0(m_axis_video_tready),
        .I1(m_axis_video_tvalid_reg_0),
        .O(s_axis_video_tready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
