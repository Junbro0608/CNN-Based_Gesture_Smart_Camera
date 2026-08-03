// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug  2 20:02:02 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_rgb2gray_0_0/system_rgb2gray_0_0_sim_netlist.v
// Design      : system_rgb2gray_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_rgb2gray_0_0,rgb2gray,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "rgb2gray,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_rgb2gray_0_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    m_axis_tuser);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TUSER" *) input s_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;

  wire [7:0]\^m_axis_tdata ;
  wire m_axis_tready;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  assign m_axis_tdata[23:16] = \^m_axis_tdata [7:0];
  assign m_axis_tdata[15:8] = \^m_axis_tdata [7:0];
  assign m_axis_tdata[7:0] = \^m_axis_tdata [7:0];
  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tuser = s_axis_tuser;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  system_rgb2gray_0_0_rgb2gray U0
       (.m_axis_tdata(\^m_axis_tdata ),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "rgb2gray" *) 
module system_rgb2gray_0_0_rgb2gray
   (m_axis_tdata,
    s_axis_tdata);
  output [7:0]m_axis_tdata;
  input [23:0]s_axis_tdata;

  wire [14:1]C;
  wire [7:0]m_axis_tdata;
  wire [23:0]s_axis_tdata;
  wire [12:1]y_sum0;
  wire y_sum0__24_carry__0_i_1_n_0;
  wire y_sum0__24_carry__0_i_2_n_0;
  wire y_sum0__24_carry__0_i_3_n_0;
  wire y_sum0__24_carry__0_i_4_n_0;
  wire y_sum0__24_carry__0_i_5_n_0;
  wire y_sum0__24_carry__0_i_6_n_0;
  wire y_sum0__24_carry__0_i_7_n_0;
  wire y_sum0__24_carry__0_i_8_n_0;
  wire y_sum0__24_carry__0_n_0;
  wire y_sum0__24_carry__0_n_1;
  wire y_sum0__24_carry__0_n_2;
  wire y_sum0__24_carry__0_n_3;
  wire y_sum0__24_carry__1_i_1_n_0;
  wire y_sum0__24_carry__1_i_2_n_0;
  wire y_sum0__24_carry__1_i_3_n_0;
  wire y_sum0__24_carry__1_n_3;
  wire y_sum0__24_carry_i_1_n_0;
  wire y_sum0__24_carry_i_2_n_0;
  wire y_sum0__24_carry_i_3_n_0;
  wire y_sum0__24_carry_i_4_n_0;
  wire y_sum0__24_carry_i_5_n_0;
  wire y_sum0__24_carry_i_6_n_0;
  wire y_sum0__24_carry_i_7_n_0;
  wire y_sum0__24_carry_n_0;
  wire y_sum0__24_carry_n_1;
  wire y_sum0__24_carry_n_2;
  wire y_sum0__24_carry_n_3;
  wire y_sum0_carry__0_i_1_n_0;
  wire y_sum0_carry__0_i_2_n_0;
  wire y_sum0_carry__0_i_3_n_0;
  wire y_sum0_carry__0_n_0;
  wire y_sum0_carry__0_n_1;
  wire y_sum0_carry__0_n_2;
  wire y_sum0_carry__0_n_3;
  wire y_sum0_carry__0_n_4;
  wire y_sum0_carry__0_n_5;
  wire y_sum0_carry__0_n_6;
  wire y_sum0_carry__0_n_7;
  wire y_sum0_carry__1_n_2;
  wire y_sum0_carry__1_n_7;
  wire y_sum0_carry_i_1_n_0;
  wire y_sum0_carry_i_2_n_0;
  wire y_sum0_carry_i_3_n_0;
  wire y_sum0_carry_n_0;
  wire y_sum0_carry_n_1;
  wire y_sum0_carry_n_2;
  wire y_sum0_carry_n_3;
  wire y_sum0_carry_n_4;
  wire y_sum0_carry_n_5;
  wire [15:1]y_sum1;
  wire y_sum1__25_carry__0_i_1_n_0;
  wire y_sum1__25_carry__0_i_2_n_0;
  wire y_sum1__25_carry__0_i_3_n_0;
  wire y_sum1__25_carry__0_i_4_n_0;
  wire y_sum1__25_carry__0_i_5_n_0;
  wire y_sum1__25_carry__0_i_6_n_0;
  wire y_sum1__25_carry__0_i_7_n_0;
  wire y_sum1__25_carry__0_n_0;
  wire y_sum1__25_carry__0_n_1;
  wire y_sum1__25_carry__0_n_2;
  wire y_sum1__25_carry__0_n_3;
  wire y_sum1__25_carry__0_n_4;
  wire y_sum1__25_carry__0_n_5;
  wire y_sum1__25_carry__0_n_6;
  wire y_sum1__25_carry__0_n_7;
  wire y_sum1__25_carry__1_i_1_n_0;
  wire y_sum1__25_carry__1_i_2_n_0;
  wire y_sum1__25_carry__1_i_3_n_0;
  wire y_sum1__25_carry__1_n_0;
  wire y_sum1__25_carry__1_n_1;
  wire y_sum1__25_carry__1_n_2;
  wire y_sum1__25_carry__1_n_3;
  wire y_sum1__25_carry__1_n_4;
  wire y_sum1__25_carry__1_n_5;
  wire y_sum1__25_carry__1_n_6;
  wire y_sum1__25_carry__1_n_7;
  wire y_sum1__25_carry_i_1_n_0;
  wire y_sum1__25_carry_i_2_n_0;
  wire y_sum1__25_carry_i_3_n_0;
  wire y_sum1__25_carry_n_0;
  wire y_sum1__25_carry_n_1;
  wire y_sum1__25_carry_n_2;
  wire y_sum1__25_carry_n_3;
  wire y_sum1__25_carry_n_4;
  wire y_sum1__25_carry_n_5;
  wire y_sum1__25_carry_n_6;
  wire y_sum1__25_carry_n_7;
  wire y_sum1__58_carry__0_i_1_n_0;
  wire y_sum1__58_carry__0_i_2_n_0;
  wire y_sum1__58_carry__0_i_3_n_0;
  wire y_sum1__58_carry__0_i_4_n_0;
  wire y_sum1__58_carry__0_n_0;
  wire y_sum1__58_carry__0_n_1;
  wire y_sum1__58_carry__0_n_2;
  wire y_sum1__58_carry__0_n_3;
  wire y_sum1__58_carry__0_n_4;
  wire y_sum1__58_carry__0_n_5;
  wire y_sum1__58_carry__0_n_6;
  wire y_sum1__58_carry__0_n_7;
  wire y_sum1__58_carry__1_i_1_n_0;
  wire y_sum1__58_carry__1_i_2_n_0;
  wire y_sum1__58_carry__1_n_1;
  wire y_sum1__58_carry__1_n_3;
  wire y_sum1__58_carry__1_n_6;
  wire y_sum1__58_carry__1_n_7;
  wire y_sum1__58_carry_i_1_n_0;
  wire y_sum1__58_carry_i_2_n_0;
  wire y_sum1__58_carry_i_3_n_0;
  wire y_sum1__58_carry_n_0;
  wire y_sum1__58_carry_n_1;
  wire y_sum1__58_carry_n_2;
  wire y_sum1__58_carry_n_3;
  wire y_sum1__58_carry_n_4;
  wire y_sum1__58_carry_n_5;
  wire y_sum1__86_carry__0_i_1_n_0;
  wire y_sum1__86_carry__0_i_2_n_0;
  wire y_sum1__86_carry__0_i_3_n_0;
  wire y_sum1__86_carry__0_i_4_n_0;
  wire y_sum1__86_carry__0_i_5_n_0;
  wire y_sum1__86_carry__0_i_6_n_0;
  wire y_sum1__86_carry__0_i_7_n_0;
  wire y_sum1__86_carry__0_n_0;
  wire y_sum1__86_carry__0_n_1;
  wire y_sum1__86_carry__0_n_2;
  wire y_sum1__86_carry__0_n_3;
  wire y_sum1__86_carry__1_i_1_n_0;
  wire y_sum1__86_carry__1_i_2_n_0;
  wire y_sum1__86_carry__1_i_3_n_0;
  wire y_sum1__86_carry__1_i_4_n_0;
  wire y_sum1__86_carry__1_i_5_n_0;
  wire y_sum1__86_carry__1_i_6_n_0;
  wire y_sum1__86_carry__1_i_7_n_0;
  wire y_sum1__86_carry__1_i_8_n_0;
  wire y_sum1__86_carry__1_n_0;
  wire y_sum1__86_carry__1_n_1;
  wire y_sum1__86_carry__1_n_2;
  wire y_sum1__86_carry__1_n_3;
  wire y_sum1__86_carry__2_i_1_n_0;
  wire y_sum1__86_carry_i_1_n_0;
  wire y_sum1__86_carry_i_2_n_0;
  wire y_sum1__86_carry_i_3_n_0;
  wire y_sum1__86_carry_n_0;
  wire y_sum1__86_carry_n_1;
  wire y_sum1__86_carry_n_2;
  wire y_sum1__86_carry_n_3;
  wire y_sum1_carry__0_i_1_n_0;
  wire y_sum1_carry__0_i_2_n_0;
  wire y_sum1_carry__0_i_3_n_0;
  wire y_sum1_carry__0_n_0;
  wire y_sum1_carry__0_n_1;
  wire y_sum1_carry__0_n_2;
  wire y_sum1_carry__0_n_3;
  wire y_sum1_carry__0_n_4;
  wire y_sum1_carry__0_n_5;
  wire y_sum1_carry__0_n_6;
  wire y_sum1_carry__0_n_7;
  wire y_sum1_carry__1_n_2;
  wire y_sum1_carry__1_n_7;
  wire y_sum1_carry_i_1_n_0;
  wire y_sum1_carry_i_2_n_0;
  wire y_sum1_carry_i_3_n_0;
  wire y_sum1_carry_n_0;
  wire y_sum1_carry_n_1;
  wire y_sum1_carry_n_2;
  wire y_sum1_carry_n_3;
  wire y_sum1_carry_n_4;
  wire y_sum1_carry_n_5;
  wire y_sum1_carry_n_6;
  wire y_sum1_carry_n_7;
  wire y_sum__41_carry__0_i_1_n_0;
  wire y_sum__41_carry__0_i_2_n_0;
  wire y_sum__41_carry__0_i_3_n_0;
  wire y_sum__41_carry__0_i_4_n_0;
  wire y_sum__41_carry__0_n_0;
  wire y_sum__41_carry__0_n_1;
  wire y_sum__41_carry__0_n_2;
  wire y_sum__41_carry__0_n_3;
  wire y_sum__41_carry__1_i_1_n_0;
  wire y_sum__41_carry__1_i_2_n_0;
  wire y_sum__41_carry__1_i_3_n_0;
  wire y_sum__41_carry__1_i_4_n_0;
  wire y_sum__41_carry__1_n_0;
  wire y_sum__41_carry__1_n_1;
  wire y_sum__41_carry__1_n_2;
  wire y_sum__41_carry__1_n_3;
  wire y_sum__41_carry__2_i_1_n_0;
  wire y_sum__41_carry__2_i_2_n_0;
  wire y_sum__41_carry__2_i_3_n_0;
  wire y_sum__41_carry__2_n_2;
  wire y_sum__41_carry__2_n_3;
  wire y_sum__41_carry_i_1_n_0;
  wire y_sum__41_carry_i_2_n_0;
  wire y_sum__41_carry_i_3_n_0;
  wire y_sum__41_carry_i_4_n_0;
  wire y_sum__41_carry_n_0;
  wire y_sum__41_carry_n_1;
  wire y_sum__41_carry_n_2;
  wire y_sum__41_carry_n_3;
  wire y_sum_carry__0_i_1_n_0;
  wire y_sum_carry__0_i_2_n_0;
  wire y_sum_carry__0_i_3_n_0;
  wire y_sum_carry__0_i_4_n_0;
  wire y_sum_carry__0_n_0;
  wire y_sum_carry__0_n_1;
  wire y_sum_carry__0_n_2;
  wire y_sum_carry__0_n_3;
  wire y_sum_carry__1_i_1_n_0;
  wire y_sum_carry__1_i_2_n_0;
  wire y_sum_carry__1_i_3_n_0;
  wire y_sum_carry__1_i_4_n_0;
  wire y_sum_carry__1_n_0;
  wire y_sum_carry__1_n_1;
  wire y_sum_carry__1_n_2;
  wire y_sum_carry__1_n_3;
  wire y_sum_carry__2_i_1_n_3;
  wire y_sum_carry__2_i_2_n_0;
  wire y_sum_carry__2_n_0;
  wire y_sum_carry__2_n_2;
  wire y_sum_carry__2_n_3;
  wire y_sum_carry_i_1_n_0;
  wire y_sum_carry_i_2_n_0;
  wire y_sum_carry_i_3_n_0;
  wire y_sum_carry_i_4_n_0;
  wire y_sum_carry_n_0;
  wire y_sum_carry_n_1;
  wire y_sum_carry_n_2;
  wire y_sum_carry_n_3;
  wire [3:1]NLW_y_sum0__24_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_y_sum0__24_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_y_sum0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_y_sum0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_y_sum1__58_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_y_sum1__58_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_y_sum1__86_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_y_sum1__86_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_y_sum1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_y_sum1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_y_sum__41_carry_O_UNCONNECTED;
  wire [2:0]NLW_y_sum__41_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_y_sum__41_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_y_sum__41_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_y_sum_carry_O_UNCONNECTED;
  wire [2:2]NLW_y_sum_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_y_sum_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_y_sum_carry__2_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_y_sum_carry__2_i_1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum0__24_carry
       (.CI(1'b0),
        .CO({y_sum0__24_carry_n_0,y_sum0__24_carry_n_1,y_sum0__24_carry_n_2,y_sum0__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum0__24_carry_i_1_n_0,y_sum0__24_carry_i_2_n_0,y_sum0__24_carry_i_3_n_0,1'b0}),
        .O(y_sum0[6:3]),
        .S({y_sum0__24_carry_i_4_n_0,y_sum0__24_carry_i_5_n_0,y_sum0__24_carry_i_6_n_0,y_sum0__24_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum0__24_carry__0
       (.CI(y_sum0__24_carry_n_0),
        .CO({y_sum0__24_carry__0_n_0,y_sum0__24_carry__0_n_1,y_sum0__24_carry__0_n_2,y_sum0__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum0__24_carry__0_i_1_n_0,y_sum0__24_carry__0_i_2_n_0,y_sum0__24_carry__0_i_3_n_0,y_sum0__24_carry__0_i_4_n_0}),
        .O(y_sum0[10:7]),
        .S({y_sum0__24_carry__0_i_5_n_0,y_sum0__24_carry__0_i_6_n_0,y_sum0__24_carry__0_i_7_n_0,y_sum0__24_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    y_sum0__24_carry__0_i_1
       (.I0(s_axis_tdata[14]),
        .I1(y_sum0_carry__1_n_7),
        .I2(s_axis_tdata[12]),
        .O(y_sum0__24_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    y_sum0__24_carry__0_i_2
       (.I0(s_axis_tdata[13]),
        .I1(y_sum0_carry__0_n_4),
        .I2(s_axis_tdata[11]),
        .O(y_sum0__24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    y_sum0__24_carry__0_i_3
       (.I0(s_axis_tdata[12]),
        .I1(y_sum0_carry__0_n_5),
        .I2(s_axis_tdata[10]),
        .O(y_sum0__24_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    y_sum0__24_carry__0_i_4
       (.I0(s_axis_tdata[11]),
        .I1(y_sum0_carry__0_n_6),
        .I2(s_axis_tdata[9]),
        .O(y_sum0__24_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    y_sum0__24_carry__0_i_5
       (.I0(s_axis_tdata[12]),
        .I1(y_sum0_carry__1_n_7),
        .I2(s_axis_tdata[14]),
        .I3(s_axis_tdata[15]),
        .I4(y_sum0_carry__1_n_2),
        .I5(s_axis_tdata[13]),
        .O(y_sum0__24_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    y_sum0__24_carry__0_i_6
       (.I0(s_axis_tdata[11]),
        .I1(y_sum0_carry__0_n_4),
        .I2(s_axis_tdata[13]),
        .I3(s_axis_tdata[14]),
        .I4(y_sum0_carry__1_n_7),
        .I5(s_axis_tdata[12]),
        .O(y_sum0__24_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    y_sum0__24_carry__0_i_7
       (.I0(s_axis_tdata[10]),
        .I1(y_sum0_carry__0_n_5),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[13]),
        .I4(y_sum0_carry__0_n_4),
        .I5(s_axis_tdata[11]),
        .O(y_sum0__24_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    y_sum0__24_carry__0_i_8
       (.I0(s_axis_tdata[9]),
        .I1(y_sum0_carry__0_n_6),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[12]),
        .I4(y_sum0_carry__0_n_5),
        .I5(s_axis_tdata[10]),
        .O(y_sum0__24_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum0__24_carry__1
       (.CI(y_sum0__24_carry__0_n_0),
        .CO({NLW_y_sum0__24_carry__1_CO_UNCONNECTED[3:1],y_sum0__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,y_sum0__24_carry__1_i_1_n_0}),
        .O({NLW_y_sum0__24_carry__1_O_UNCONNECTED[3:2],y_sum0[12:11]}),
        .S({1'b0,1'b0,y_sum0__24_carry__1_i_2_n_0,y_sum0__24_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    y_sum0__24_carry__1_i_1
       (.I0(s_axis_tdata[15]),
        .I1(y_sum0_carry__1_n_2),
        .I2(s_axis_tdata[13]),
        .O(y_sum0__24_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y_sum0__24_carry__1_i_2
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[15]),
        .O(y_sum0__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    y_sum0__24_carry__1_i_3
       (.I0(s_axis_tdata[13]),
        .I1(y_sum0_carry__1_n_2),
        .I2(s_axis_tdata[15]),
        .I3(s_axis_tdata[14]),
        .O(y_sum0__24_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    y_sum0__24_carry_i_1
       (.I0(s_axis_tdata[10]),
        .I1(y_sum0_carry__0_n_7),
        .I2(s_axis_tdata[8]),
        .O(y_sum0__24_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    y_sum0__24_carry_i_2
       (.I0(s_axis_tdata[10]),
        .I1(y_sum0_carry__0_n_7),
        .I2(s_axis_tdata[8]),
        .O(y_sum0__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y_sum0__24_carry_i_3
       (.I0(y_sum0_carry_n_5),
        .I1(s_axis_tdata[8]),
        .O(y_sum0__24_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    y_sum0__24_carry_i_4
       (.I0(s_axis_tdata[8]),
        .I1(y_sum0_carry__0_n_7),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[11]),
        .I4(y_sum0_carry__0_n_6),
        .I5(s_axis_tdata[9]),
        .O(y_sum0__24_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    y_sum0__24_carry_i_5
       (.I0(s_axis_tdata[10]),
        .I1(y_sum0_carry__0_n_7),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(y_sum0_carry_n_4),
        .O(y_sum0__24_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    y_sum0__24_carry_i_6
       (.I0(s_axis_tdata[8]),
        .I1(y_sum0_carry_n_5),
        .I2(y_sum0_carry_n_4),
        .I3(s_axis_tdata[9]),
        .O(y_sum0__24_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum0__24_carry_i_7
       (.I0(s_axis_tdata[8]),
        .I1(y_sum0_carry_n_5),
        .O(y_sum0__24_carry_i_7_n_0));
  CARRY4 y_sum0_carry
       (.CI(1'b0),
        .CO({y_sum0_carry_n_0,y_sum0_carry_n_1,y_sum0_carry_n_2,y_sum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[12:10],1'b0}),
        .O({y_sum0_carry_n_4,y_sum0_carry_n_5,y_sum0[2:1]}),
        .S({y_sum0_carry_i_1_n_0,y_sum0_carry_i_2_n_0,y_sum0_carry_i_3_n_0,s_axis_tdata[9]}));
  CARRY4 y_sum0_carry__0
       (.CI(y_sum0_carry_n_0),
        .CO({y_sum0_carry__0_n_0,y_sum0_carry__0_n_1,y_sum0_carry__0_n_2,y_sum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[15:13]}),
        .O({y_sum0_carry__0_n_4,y_sum0_carry__0_n_5,y_sum0_carry__0_n_6,y_sum0_carry__0_n_7}),
        .S({s_axis_tdata[14],y_sum0_carry__0_i_1_n_0,y_sum0_carry__0_i_2_n_0,y_sum0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum0_carry__0_i_1
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[13]),
        .O(y_sum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum0_carry__0_i_2
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[12]),
        .O(y_sum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum0_carry__0_i_3
       (.I0(s_axis_tdata[13]),
        .I1(s_axis_tdata[11]),
        .O(y_sum0_carry__0_i_3_n_0));
  CARRY4 y_sum0_carry__1
       (.CI(y_sum0_carry__0_n_0),
        .CO({NLW_y_sum0_carry__1_CO_UNCONNECTED[3:2],y_sum0_carry__1_n_2,NLW_y_sum0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_sum0_carry__1_O_UNCONNECTED[3:1],y_sum0_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[15]}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum0_carry_i_1
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[10]),
        .O(y_sum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum0_carry_i_2
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[9]),
        .O(y_sum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum0_carry_i_3
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[8]),
        .O(y_sum0_carry_i_3_n_0));
  CARRY4 y_sum1__25_carry
       (.CI(1'b0),
        .CO({y_sum1__25_carry_n_0,y_sum1__25_carry_n_1,y_sum1__25_carry_n_2,y_sum1__25_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum1_carry__0_n_7,y_sum1_carry_n_4,y_sum1_carry_n_5,1'b0}),
        .O({y_sum1__25_carry_n_4,y_sum1__25_carry_n_5,y_sum1__25_carry_n_6,y_sum1__25_carry_n_7}),
        .S({y_sum1__25_carry_i_1_n_0,y_sum1__25_carry_i_2_n_0,y_sum1__25_carry_i_3_n_0,y_sum1_carry_n_6}));
  CARRY4 y_sum1__25_carry__0
       (.CI(y_sum1__25_carry_n_0),
        .CO({y_sum1__25_carry__0_n_0,y_sum1__25_carry__0_n_1,y_sum1__25_carry__0_n_2,y_sum1__25_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum1__25_carry__0_i_1_n_0,y_sum1__25_carry__0_i_2_n_0,y_sum1__25_carry__0_i_3_n_0,s_axis_tdata[16]}),
        .O({y_sum1__25_carry__0_n_4,y_sum1__25_carry__0_n_5,y_sum1__25_carry__0_n_6,y_sum1__25_carry__0_n_7}),
        .S({y_sum1__25_carry__0_i_4_n_0,y_sum1__25_carry__0_i_5_n_0,y_sum1__25_carry__0_i_6_n_0,y_sum1__25_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y_sum1__25_carry__0_i_1
       (.I0(s_axis_tdata[21]),
        .I1(y_sum1_carry__0_n_4),
        .I2(s_axis_tdata[18]),
        .O(y_sum1__25_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y_sum1__25_carry__0_i_2
       (.I0(s_axis_tdata[20]),
        .I1(y_sum1_carry__0_n_5),
        .I2(s_axis_tdata[17]),
        .O(y_sum1__25_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    y_sum1__25_carry__0_i_3
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[20]),
        .I2(y_sum1_carry__0_n_5),
        .O(y_sum1__25_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y_sum1__25_carry__0_i_4
       (.I0(s_axis_tdata[22]),
        .I1(y_sum1_carry__1_n_7),
        .I2(s_axis_tdata[19]),
        .I3(y_sum1__25_carry__0_i_1_n_0),
        .O(y_sum1__25_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y_sum1__25_carry__0_i_5
       (.I0(s_axis_tdata[21]),
        .I1(y_sum1_carry__0_n_4),
        .I2(s_axis_tdata[18]),
        .I3(y_sum1__25_carry__0_i_2_n_0),
        .O(y_sum1__25_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    y_sum1__25_carry__0_i_6
       (.I0(s_axis_tdata[20]),
        .I1(y_sum1_carry__0_n_5),
        .I2(s_axis_tdata[17]),
        .I3(y_sum1_carry__0_n_6),
        .I4(s_axis_tdata[19]),
        .O(y_sum1__25_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    y_sum1__25_carry__0_i_7
       (.I0(s_axis_tdata[19]),
        .I1(y_sum1_carry__0_n_6),
        .I2(s_axis_tdata[16]),
        .O(y_sum1__25_carry__0_i_7_n_0));
  CARRY4 y_sum1__25_carry__1
       (.CI(y_sum1__25_carry__0_n_0),
        .CO({y_sum1__25_carry__1_n_0,y_sum1__25_carry__1_n_1,y_sum1__25_carry__1_n_2,y_sum1__25_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[21],y_sum1__25_carry__1_i_1_n_0}),
        .O({y_sum1__25_carry__1_n_4,y_sum1__25_carry__1_n_5,y_sum1__25_carry__1_n_6,y_sum1__25_carry__1_n_7}),
        .S({s_axis_tdata[23:22],y_sum1__25_carry__1_i_2_n_0,y_sum1__25_carry__1_i_3_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y_sum1__25_carry__1_i_1
       (.I0(s_axis_tdata[22]),
        .I1(y_sum1_carry__1_n_7),
        .I2(s_axis_tdata[19]),
        .O(y_sum1__25_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    y_sum1__25_carry__1_i_2
       (.I0(s_axis_tdata[20]),
        .I1(y_sum1_carry__1_n_2),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[21]),
        .O(y_sum1__25_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    y_sum1__25_carry__1_i_3
       (.I0(y_sum1__25_carry__1_i_1_n_0),
        .I1(y_sum1_carry__1_n_2),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[20]),
        .O(y_sum1__25_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1__25_carry_i_1
       (.I0(y_sum1_carry__0_n_7),
        .I1(s_axis_tdata[18]),
        .O(y_sum1__25_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1__25_carry_i_2
       (.I0(y_sum1_carry_n_4),
        .I1(s_axis_tdata[17]),
        .O(y_sum1__25_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1__25_carry_i_3
       (.I0(y_sum1_carry_n_5),
        .I1(s_axis_tdata[16]),
        .O(y_sum1__25_carry_i_3_n_0));
  CARRY4 y_sum1__58_carry
       (.CI(1'b0),
        .CO({y_sum1__58_carry_n_0,y_sum1__58_carry_n_1,y_sum1__58_carry_n_2,y_sum1__58_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[1:0],1'b0,1'b1}),
        .O({y_sum1__58_carry_n_4,y_sum1__58_carry_n_5,y_sum1[2:1]}),
        .S({y_sum1__58_carry_i_1_n_0,y_sum1__58_carry_i_2_n_0,y_sum1__58_carry_i_3_n_0,s_axis_tdata[0]}));
  CARRY4 y_sum1__58_carry__0
       (.CI(y_sum1__58_carry_n_0),
        .CO({y_sum1__58_carry__0_n_0,y_sum1__58_carry__0_n_1,y_sum1__58_carry__0_n_2,y_sum1__58_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_tdata[5:2]),
        .O({y_sum1__58_carry__0_n_4,y_sum1__58_carry__0_n_5,y_sum1__58_carry__0_n_6,y_sum1__58_carry__0_n_7}),
        .S({y_sum1__58_carry__0_i_1_n_0,y_sum1__58_carry__0_i_2_n_0,y_sum1__58_carry__0_i_3_n_0,y_sum1__58_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    y_sum1__58_carry__0_i_1
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_tdata[7]),
        .O(y_sum1__58_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y_sum1__58_carry__0_i_2
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[6]),
        .O(y_sum1__58_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y_sum1__58_carry__0_i_3
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_tdata[5]),
        .O(y_sum1__58_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y_sum1__58_carry__0_i_4
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[4]),
        .O(y_sum1__58_carry__0_i_4_n_0));
  CARRY4 y_sum1__58_carry__1
       (.CI(y_sum1__58_carry__0_n_0),
        .CO({NLW_y_sum1__58_carry__1_CO_UNCONNECTED[3],y_sum1__58_carry__1_n_1,NLW_y_sum1__58_carry__1_CO_UNCONNECTED[1],y_sum1__58_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_axis_tdata[7:6]}),
        .O({NLW_y_sum1__58_carry__1_O_UNCONNECTED[3:2],y_sum1__58_carry__1_n_6,y_sum1__58_carry__1_n_7}),
        .S({1'b0,1'b1,y_sum1__58_carry__1_i_1_n_0,y_sum1__58_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    y_sum1__58_carry__1_i_1
       (.I0(s_axis_tdata[7]),
        .O(y_sum1__58_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_sum1__58_carry__1_i_2
       (.I0(s_axis_tdata[6]),
        .O(y_sum1__58_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y_sum1__58_carry_i_1
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[3]),
        .O(y_sum1__58_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    y_sum1__58_carry_i_2
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_tdata[2]),
        .O(y_sum1__58_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    y_sum1__58_carry_i_3
       (.I0(s_axis_tdata[1]),
        .O(y_sum1__58_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum1__86_carry
       (.CI(1'b0),
        .CO({y_sum1__86_carry_n_0,y_sum1__86_carry_n_1,y_sum1__86_carry_n_2,y_sum1__86_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum1__58_carry__0_n_6,y_sum1__58_carry__0_n_7,y_sum1__58_carry_n_4,1'b0}),
        .O(y_sum1[6:3]),
        .S({y_sum1__86_carry_i_1_n_0,y_sum1__86_carry_i_2_n_0,y_sum1__86_carry_i_3_n_0,y_sum1__58_carry_n_5}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum1__86_carry__0
       (.CI(y_sum1__86_carry_n_0),
        .CO({y_sum1__86_carry__0_n_0,y_sum1__86_carry__0_n_1,y_sum1__86_carry__0_n_2,y_sum1__86_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum1__86_carry__0_i_1_n_0,y_sum1__86_carry__0_i_2_n_0,y_sum1__86_carry__0_i_3_n_0,s_axis_tdata[0]}),
        .O(y_sum1[10:7]),
        .S({y_sum1__86_carry__0_i_4_n_0,y_sum1__86_carry__0_i_5_n_0,y_sum1__86_carry__0_i_6_n_0,y_sum1__86_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y_sum1__86_carry__0_i_1
       (.I0(s_axis_tdata[5]),
        .I1(y_sum1__58_carry__1_n_7),
        .I2(s_axis_tdata[2]),
        .O(y_sum1__86_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y_sum1__86_carry__0_i_2
       (.I0(s_axis_tdata[4]),
        .I1(y_sum1__58_carry__0_n_4),
        .I2(s_axis_tdata[1]),
        .O(y_sum1__86_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    y_sum1__86_carry__0_i_3
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[4]),
        .I2(y_sum1__58_carry__0_n_4),
        .O(y_sum1__86_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y_sum1__86_carry__0_i_4
       (.I0(s_axis_tdata[6]),
        .I1(y_sum1__58_carry__1_n_6),
        .I2(s_axis_tdata[3]),
        .I3(y_sum1__86_carry__0_i_1_n_0),
        .O(y_sum1__86_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    y_sum1__86_carry__0_i_5
       (.I0(s_axis_tdata[5]),
        .I1(y_sum1__58_carry__1_n_7),
        .I2(s_axis_tdata[2]),
        .I3(y_sum1__86_carry__0_i_2_n_0),
        .O(y_sum1__86_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    y_sum1__86_carry__0_i_6
       (.I0(s_axis_tdata[4]),
        .I1(y_sum1__58_carry__0_n_4),
        .I2(s_axis_tdata[1]),
        .I3(y_sum1__58_carry__0_n_5),
        .I4(s_axis_tdata[3]),
        .O(y_sum1__86_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    y_sum1__86_carry__0_i_7
       (.I0(s_axis_tdata[3]),
        .I1(y_sum1__58_carry__0_n_5),
        .I2(s_axis_tdata[0]),
        .O(y_sum1__86_carry__0_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum1__86_carry__1
       (.CI(y_sum1__86_carry__0_n_0),
        .CO({y_sum1__86_carry__1_n_0,y_sum1__86_carry__1_n_1,y_sum1__86_carry__1_n_2,y_sum1__86_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum1__86_carry__1_i_1_n_0,y_sum1__86_carry__1_i_2_n_0,y_sum1__86_carry__1_i_3_n_0,y_sum1__86_carry__1_i_4_n_0}),
        .O(y_sum1[14:11]),
        .S({y_sum1__86_carry__1_i_5_n_0,y_sum1__86_carry__1_i_6_n_0,y_sum1__86_carry__1_i_7_n_0,y_sum1__86_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    y_sum1__86_carry__1_i_1
       (.I0(s_axis_tdata[6]),
        .I1(y_sum1__58_carry__1_n_1),
        .O(y_sum1__86_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    y_sum1__86_carry__1_i_2
       (.I0(s_axis_tdata[5]),
        .I1(y_sum1__58_carry__1_n_1),
        .O(y_sum1__86_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    y_sum1__86_carry__1_i_3
       (.I0(s_axis_tdata[7]),
        .I1(y_sum1__58_carry__1_n_1),
        .I2(s_axis_tdata[4]),
        .O(y_sum1__86_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    y_sum1__86_carry__1_i_4
       (.I0(s_axis_tdata[6]),
        .I1(y_sum1__58_carry__1_n_6),
        .I2(s_axis_tdata[3]),
        .O(y_sum1__86_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    y_sum1__86_carry__1_i_5
       (.I0(s_axis_tdata[6]),
        .I1(y_sum1__58_carry__1_n_1),
        .I2(s_axis_tdata[7]),
        .O(y_sum1__86_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    y_sum1__86_carry__1_i_6
       (.I0(s_axis_tdata[5]),
        .I1(y_sum1__58_carry__1_n_1),
        .I2(s_axis_tdata[6]),
        .O(y_sum1__86_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    y_sum1__86_carry__1_i_7
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[7]),
        .I2(y_sum1__58_carry__1_n_1),
        .I3(s_axis_tdata[5]),
        .O(y_sum1__86_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    y_sum1__86_carry__1_i_8
       (.I0(y_sum1__86_carry__1_i_4_n_0),
        .I1(y_sum1__58_carry__1_n_1),
        .I2(s_axis_tdata[7]),
        .I3(s_axis_tdata[4]),
        .O(y_sum1__86_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum1__86_carry__2
       (.CI(y_sum1__86_carry__1_n_0),
        .CO(NLW_y_sum1__86_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_sum1__86_carry__2_O_UNCONNECTED[3:1],y_sum1[15]}),
        .S({1'b0,1'b0,1'b0,y_sum1__86_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    y_sum1__86_carry__2_i_1
       (.I0(s_axis_tdata[7]),
        .I1(y_sum1__58_carry__1_n_1),
        .O(y_sum1__86_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1__86_carry_i_1
       (.I0(y_sum1__58_carry__0_n_6),
        .I1(s_axis_tdata[2]),
        .O(y_sum1__86_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1__86_carry_i_2
       (.I0(y_sum1__58_carry__0_n_7),
        .I1(s_axis_tdata[1]),
        .O(y_sum1__86_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1__86_carry_i_3
       (.I0(y_sum1__58_carry_n_4),
        .I1(s_axis_tdata[0]),
        .O(y_sum1__86_carry_i_3_n_0));
  CARRY4 y_sum1_carry
       (.CI(1'b0),
        .CO({y_sum1_carry_n_0,y_sum1_carry_n_1,y_sum1_carry_n_2,y_sum1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[20:18],1'b0}),
        .O({y_sum1_carry_n_4,y_sum1_carry_n_5,y_sum1_carry_n_6,y_sum1_carry_n_7}),
        .S({y_sum1_carry_i_1_n_0,y_sum1_carry_i_2_n_0,y_sum1_carry_i_3_n_0,s_axis_tdata[17]}));
  CARRY4 y_sum1_carry__0
       (.CI(y_sum1_carry_n_0),
        .CO({y_sum1_carry__0_n_0,y_sum1_carry__0_n_1,y_sum1_carry__0_n_2,y_sum1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_tdata[23:21]}),
        .O({y_sum1_carry__0_n_4,y_sum1_carry__0_n_5,y_sum1_carry__0_n_6,y_sum1_carry__0_n_7}),
        .S({s_axis_tdata[22],y_sum1_carry__0_i_1_n_0,y_sum1_carry__0_i_2_n_0,y_sum1_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1_carry__0_i_1
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[21]),
        .O(y_sum1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1_carry__0_i_2
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[20]),
        .O(y_sum1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1_carry__0_i_3
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[19]),
        .O(y_sum1_carry__0_i_3_n_0));
  CARRY4 y_sum1_carry__1
       (.CI(y_sum1_carry__0_n_0),
        .CO({NLW_y_sum1_carry__1_CO_UNCONNECTED[3:2],y_sum1_carry__1_n_2,NLW_y_sum1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_sum1_carry__1_O_UNCONNECTED[3:1],y_sum1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,s_axis_tdata[23]}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1_carry_i_1
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[18]),
        .O(y_sum1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1_carry_i_2
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[17]),
        .O(y_sum1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum1_carry_i_3
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[16]),
        .O(y_sum1_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum__41_carry
       (.CI(1'b0),
        .CO({y_sum__41_carry_n_0,y_sum__41_carry_n_1,y_sum__41_carry_n_2,y_sum__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI(y_sum1[4:1]),
        .O(NLW_y_sum__41_carry_O_UNCONNECTED[3:0]),
        .S({y_sum__41_carry_i_1_n_0,y_sum__41_carry_i_2_n_0,y_sum__41_carry_i_3_n_0,y_sum__41_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum__41_carry__0
       (.CI(y_sum__41_carry_n_0),
        .CO({y_sum__41_carry__0_n_0,y_sum__41_carry__0_n_1,y_sum__41_carry__0_n_2,y_sum__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(y_sum1[8:5]),
        .O({m_axis_tdata[0],NLW_y_sum__41_carry__0_O_UNCONNECTED[2:0]}),
        .S({y_sum__41_carry__0_i_1_n_0,y_sum__41_carry__0_i_2_n_0,y_sum__41_carry__0_i_3_n_0,y_sum__41_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__0_i_1
       (.I0(y_sum1[8]),
        .I1(C[8]),
        .O(y_sum__41_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__0_i_2
       (.I0(y_sum1[7]),
        .I1(C[7]),
        .O(y_sum__41_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__0_i_3
       (.I0(y_sum1[6]),
        .I1(C[6]),
        .O(y_sum__41_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__0_i_4
       (.I0(y_sum1[5]),
        .I1(C[5]),
        .O(y_sum__41_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum__41_carry__1
       (.CI(y_sum__41_carry__0_n_0),
        .CO({y_sum__41_carry__1_n_0,y_sum__41_carry__1_n_1,y_sum__41_carry__1_n_2,y_sum__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(y_sum1[12:9]),
        .O(m_axis_tdata[4:1]),
        .S({y_sum__41_carry__1_i_1_n_0,y_sum__41_carry__1_i_2_n_0,y_sum__41_carry__1_i_3_n_0,y_sum__41_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__1_i_1
       (.I0(y_sum1[12]),
        .I1(C[12]),
        .O(y_sum__41_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__1_i_2
       (.I0(y_sum1[11]),
        .I1(C[11]),
        .O(y_sum__41_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__1_i_3
       (.I0(y_sum1[10]),
        .I1(C[10]),
        .O(y_sum__41_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__1_i_4
       (.I0(y_sum1[9]),
        .I1(C[9]),
        .O(y_sum__41_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_sum__41_carry__2
       (.CI(y_sum__41_carry__1_n_0),
        .CO({NLW_y_sum__41_carry__2_CO_UNCONNECTED[3:2],y_sum__41_carry__2_n_2,y_sum__41_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,y_sum1[14:13]}),
        .O({NLW_y_sum__41_carry__2_O_UNCONNECTED[3],m_axis_tdata[7:5]}),
        .S({1'b0,y_sum__41_carry__2_i_1_n_0,y_sum__41_carry__2_i_2_n_0,y_sum__41_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__2_i_1
       (.I0(y_sum1[15]),
        .I1(y_sum_carry__2_n_0),
        .O(y_sum__41_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__2_i_2
       (.I0(y_sum1[14]),
        .I1(C[14]),
        .O(y_sum__41_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry__2_i_3
       (.I0(y_sum1[13]),
        .I1(C[13]),
        .O(y_sum__41_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry_i_1
       (.I0(y_sum1[4]),
        .I1(C[4]),
        .O(y_sum__41_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry_i_2
       (.I0(y_sum1[3]),
        .I1(C[3]),
        .O(y_sum__41_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry_i_3
       (.I0(y_sum1[2]),
        .I1(C[2]),
        .O(y_sum__41_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum__41_carry_i_4
       (.I0(y_sum1[1]),
        .I1(C[1]),
        .O(y_sum__41_carry_i_4_n_0));
  CARRY4 y_sum_carry
       (.CI(1'b0),
        .CO({y_sum_carry_n_0,y_sum_carry_n_1,y_sum_carry_n_2,y_sum_carry_n_3}),
        .CYINIT(1'b0),
        .DI({y_sum0[3:1],s_axis_tdata[8]}),
        .O({C[3:1],NLW_y_sum_carry_O_UNCONNECTED[0]}),
        .S({y_sum_carry_i_1_n_0,y_sum_carry_i_2_n_0,y_sum_carry_i_3_n_0,y_sum_carry_i_4_n_0}));
  CARRY4 y_sum_carry__0
       (.CI(y_sum_carry_n_0),
        .CO({y_sum_carry__0_n_0,y_sum_carry__0_n_1,y_sum_carry__0_n_2,y_sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(y_sum0[7:4]),
        .O(C[7:4]),
        .S({y_sum_carry__0_i_1_n_0,y_sum_carry__0_i_2_n_0,y_sum_carry__0_i_3_n_0,y_sum_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__0_i_1
       (.I0(y_sum0[7]),
        .I1(y_sum1__25_carry__0_n_6),
        .O(y_sum_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__0_i_2
       (.I0(y_sum0[6]),
        .I1(y_sum1__25_carry__0_n_7),
        .O(y_sum_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__0_i_3
       (.I0(y_sum0[5]),
        .I1(y_sum1__25_carry_n_4),
        .O(y_sum_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__0_i_4
       (.I0(y_sum0[4]),
        .I1(y_sum1__25_carry_n_5),
        .O(y_sum_carry__0_i_4_n_0));
  CARRY4 y_sum_carry__1
       (.CI(y_sum_carry__0_n_0),
        .CO({y_sum_carry__1_n_0,y_sum_carry__1_n_1,y_sum_carry__1_n_2,y_sum_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(y_sum0[11:8]),
        .O(C[11:8]),
        .S({y_sum_carry__1_i_1_n_0,y_sum_carry__1_i_2_n_0,y_sum_carry__1_i_3_n_0,y_sum_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__1_i_1
       (.I0(y_sum0[11]),
        .I1(y_sum1__25_carry__1_n_6),
        .O(y_sum_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__1_i_2
       (.I0(y_sum0[10]),
        .I1(y_sum1__25_carry__1_n_7),
        .O(y_sum_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__1_i_3
       (.I0(y_sum0[9]),
        .I1(y_sum1__25_carry__0_n_4),
        .O(y_sum_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__1_i_4
       (.I0(y_sum0[8]),
        .I1(y_sum1__25_carry__0_n_5),
        .O(y_sum_carry__1_i_4_n_0));
  CARRY4 y_sum_carry__2
       (.CI(y_sum_carry__1_n_0),
        .CO({y_sum_carry__2_n_0,NLW_y_sum_carry__2_CO_UNCONNECTED[2],y_sum_carry__2_n_2,y_sum_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,y_sum0[12]}),
        .O({NLW_y_sum_carry__2_O_UNCONNECTED[3],C[14:12]}),
        .S({1'b1,y_sum_carry__2_i_1_n_3,y_sum1__25_carry__1_n_4,y_sum_carry__2_i_2_n_0}));
  CARRY4 y_sum_carry__2_i_1
       (.CI(y_sum1__25_carry__1_n_0),
        .CO({NLW_y_sum_carry__2_i_1_CO_UNCONNECTED[3:1],y_sum_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_y_sum_carry__2_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry__2_i_2
       (.I0(y_sum0[12]),
        .I1(y_sum1__25_carry__1_n_5),
        .O(y_sum_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry_i_1
       (.I0(y_sum0[3]),
        .I1(y_sum1__25_carry_n_6),
        .O(y_sum_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry_i_2
       (.I0(y_sum0[2]),
        .I1(y_sum1__25_carry_n_7),
        .O(y_sum_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry_i_3
       (.I0(y_sum0[1]),
        .I1(y_sum1_carry_n_7),
        .O(y_sum_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    y_sum_carry_i_4
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[16]),
        .O(y_sum_carry_i_4_n_0));
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
