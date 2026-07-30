// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jul 30 17:50:11 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_resize_128x128_0_1/system_axis_resize_128x128_0_1_sim_netlist.v
// Design      : system_axis_resize_128x128_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axis_resize_128x128_0_1,axis_resize_128x128,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axis_resize_128x128,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_axis_resize_128x128_0_1
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
  wire [23:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  system_axis_resize_128x128_0_1_axis_resize_128x128 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_video_tdata(m_axis_video_tdata),
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

(* ORIG_REF_NAME = "axis_resize_128x128" *) 
module system_axis_resize_128x128_0_1_axis_resize_128x128
   (m_axis_video_tdata,
    m_axis_video_tvalid_reg_0,
    m_axis_video_tuser,
    m_axis_video_tlast,
    s_axis_video_tready,
    s_axis_video_tlast,
    s_axis_video_tuser,
    aclk,
    s_axis_video_tdata,
    m_axis_video_tready,
    s_axis_video_tvalid,
    aresetn);
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tvalid_reg_0;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output s_axis_video_tready;
  input s_axis_video_tlast;
  input s_axis_video_tuser;
  input aclk;
  input [23:0]s_axis_video_tdata;
  input m_axis_video_tready;
  input s_axis_video_tvalid;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire \horizontal_count[0]_i_1_n_0 ;
  wire \horizontal_count[0]_i_2_n_0 ;
  wire \horizontal_count[1]_i_1_n_0 ;
  wire \horizontal_count[2]_i_1_n_0 ;
  wire \horizontal_count[3]_i_1_n_0 ;
  wire \horizontal_count[3]_i_2_n_0 ;
  wire \horizontal_count_reg_n_0_[0] ;
  wire \horizontal_count_reg_n_0_[1] ;
  wire \horizontal_count_reg_n_0_[2] ;
  wire \horizontal_count_reg_n_0_[3] ;
  wire [10:0]input_y;
  wire \input_y[10]_i_1_n_0 ;
  wire \input_y[10]_i_3_n_0 ;
  wire \input_y[10]_i_4_n_0 ;
  wire \input_y[10]_i_5_n_0 ;
  wire \input_y[6]_i_2_n_0 ;
  wire [10:0]input_y_0;
  wire [23:0]m_axis_video_tdata;
  wire \m_axis_video_tdata[23]_i_1_n_0 ;
  wire \m_axis_video_tdata[23]_i_2_n_0 ;
  wire \m_axis_video_tdata[23]_i_3_n_0 ;
  wire \m_axis_video_tdata[23]_i_4_n_0 ;
  wire m_axis_video_tlast;
  wire m_axis_video_tlast_i_1_n_0;
  wire m_axis_video_tlast_i_2_n_0;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tuser0;
  wire m_axis_video_tuser_i_1_n_0;
  wire m_axis_video_tuser_i_3_n_0;
  wire m_axis_video_tuser_i_4_n_0;
  wire m_axis_video_tvalid_i_1_n_0;
  wire m_axis_video_tvalid_i_2_n_0;
  wire m_axis_video_tvalid_reg_0;
  wire [10:0]next_sample_y;
  wire \next_sample_y[10]_i_4_n_0 ;
  wire \next_sample_y[2]_i_3_n_0 ;
  wire \next_sample_y[2]_i_4_n_0 ;
  wire \next_sample_y[2]_i_5_n_0 ;
  wire \next_sample_y[6]_i_2_n_0 ;
  wire \next_sample_y_reg[10]_i_3_n_1 ;
  wire \next_sample_y_reg[10]_i_3_n_2 ;
  wire \next_sample_y_reg[10]_i_3_n_3 ;
  wire \next_sample_y_reg[10]_i_3_n_4 ;
  wire \next_sample_y_reg[10]_i_3_n_5 ;
  wire \next_sample_y_reg[10]_i_3_n_6 ;
  wire \next_sample_y_reg[10]_i_3_n_7 ;
  wire \next_sample_y_reg[2]_i_1_n_0 ;
  wire \next_sample_y_reg[2]_i_1_n_1 ;
  wire \next_sample_y_reg[2]_i_1_n_2 ;
  wire \next_sample_y_reg[2]_i_1_n_3 ;
  wire \next_sample_y_reg[2]_i_1_n_4 ;
  wire \next_sample_y_reg[2]_i_1_n_5 ;
  wire \next_sample_y_reg[2]_i_1_n_6 ;
  wire \next_sample_y_reg[2]_i_2_n_0 ;
  wire \next_sample_y_reg[2]_i_2_n_1 ;
  wire \next_sample_y_reg[2]_i_2_n_2 ;
  wire \next_sample_y_reg[2]_i_2_n_3 ;
  wire \next_sample_y_reg[6]_i_1_n_0 ;
  wire \next_sample_y_reg[6]_i_1_n_1 ;
  wire \next_sample_y_reg[6]_i_1_n_2 ;
  wire \next_sample_y_reg[6]_i_1_n_3 ;
  wire \next_sample_y_reg[6]_i_1_n_4 ;
  wire \next_sample_y_reg[6]_i_1_n_5 ;
  wire \next_sample_y_reg[6]_i_1_n_6 ;
  wire \next_sample_y_reg[6]_i_1_n_7 ;
  wire [6:1]output_x;
  wire \output_x[0]_i_1_n_0 ;
  wire \output_x[6]_i_2_n_0 ;
  wire \output_x_reg_n_0_[0] ;
  wire \output_x_reg_n_0_[1] ;
  wire \output_x_reg_n_0_[2] ;
  wire \output_x_reg_n_0_[3] ;
  wire \output_x_reg_n_0_[4] ;
  wire \output_x_reg_n_0_[5] ;
  wire \output_x_reg_n_0_[6] ;
  wire output_y;
  wire \output_y[2]_i_1_n_0 ;
  wire \output_y[3]_i_1_n_0 ;
  wire \output_y[4]_i_1_n_0 ;
  wire \output_y[5]_i_1_n_0 ;
  wire \output_y[6]_i_1_n_0 ;
  wire [6:0]output_y_reg;
  wire [1:0]p_0_in;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire selected_line0;
  wire selected_line0_carry_i_1_n_0;
  wire selected_line0_carry_i_2_n_0;
  wire selected_line0_carry_i_3_n_0;
  wire selected_line0_carry_i_4_n_0;
  wire selected_line0_carry_n_1;
  wire selected_line0_carry_n_2;
  wire selected_line0_carry_n_3;
  wire vertical_accumulator;
  wire \vertical_accumulator[3]_i_2_n_0 ;
  wire \vertical_accumulator[3]_i_3_n_0 ;
  wire \vertical_accumulator[3]_i_4_n_0 ;
  wire \vertical_accumulator[7]_i_2_n_0 ;
  wire [17:3]vertical_accumulator_reg;
  wire \vertical_accumulator_reg[11]_i_1_n_0 ;
  wire \vertical_accumulator_reg[11]_i_1_n_1 ;
  wire \vertical_accumulator_reg[11]_i_1_n_2 ;
  wire \vertical_accumulator_reg[11]_i_1_n_3 ;
  wire \vertical_accumulator_reg[11]_i_1_n_4 ;
  wire \vertical_accumulator_reg[11]_i_1_n_5 ;
  wire \vertical_accumulator_reg[11]_i_1_n_6 ;
  wire \vertical_accumulator_reg[11]_i_1_n_7 ;
  wire \vertical_accumulator_reg[15]_i_1_n_2 ;
  wire \vertical_accumulator_reg[15]_i_1_n_3 ;
  wire \vertical_accumulator_reg[15]_i_1_n_5 ;
  wire \vertical_accumulator_reg[15]_i_1_n_6 ;
  wire \vertical_accumulator_reg[15]_i_1_n_7 ;
  wire \vertical_accumulator_reg[3]_i_1_n_0 ;
  wire \vertical_accumulator_reg[3]_i_1_n_1 ;
  wire \vertical_accumulator_reg[3]_i_1_n_2 ;
  wire \vertical_accumulator_reg[3]_i_1_n_3 ;
  wire \vertical_accumulator_reg[3]_i_1_n_4 ;
  wire \vertical_accumulator_reg[3]_i_1_n_5 ;
  wire \vertical_accumulator_reg[3]_i_1_n_6 ;
  wire \vertical_accumulator_reg[3]_i_1_n_7 ;
  wire \vertical_accumulator_reg[7]_i_1_n_0 ;
  wire \vertical_accumulator_reg[7]_i_1_n_1 ;
  wire \vertical_accumulator_reg[7]_i_1_n_2 ;
  wire \vertical_accumulator_reg[7]_i_1_n_3 ;
  wire \vertical_accumulator_reg[7]_i_1_n_4 ;
  wire \vertical_accumulator_reg[7]_i_1_n_5 ;
  wire \vertical_accumulator_reg[7]_i_1_n_6 ;
  wire \vertical_accumulator_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_next_sample_y_reg[10]_i_3_CO_UNCONNECTED ;
  wire [0:0]\NLW_next_sample_y_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_next_sample_y_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_selected_line0_carry_O_UNCONNECTED;
  wire [3:2]\NLW_vertical_accumulator_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_vertical_accumulator_reg[15]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFF000F2)) 
    \horizontal_count[0]_i_1 
       (.I0(\horizontal_count[0]_i_2_n_0 ),
        .I1(s_axis_video_tlast),
        .I2(s_axis_video_tuser),
        .I3(\m_axis_video_tdata[23]_i_4_n_0 ),
        .I4(\horizontal_count_reg_n_0_[0] ),
        .O(\horizontal_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \horizontal_count[0]_i_2 
       (.I0(\horizontal_count_reg_n_0_[2] ),
        .I1(\horizontal_count_reg_n_0_[1] ),
        .I2(\horizontal_count_reg_n_0_[3] ),
        .O(\horizontal_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000989A9A9A)) 
    \horizontal_count[1]_i_1 
       (.I0(\horizontal_count_reg_n_0_[1] ),
        .I1(\m_axis_video_tdata[23]_i_4_n_0 ),
        .I2(\horizontal_count_reg_n_0_[0] ),
        .I3(\horizontal_count_reg_n_0_[3] ),
        .I4(\horizontal_count_reg_n_0_[2] ),
        .I5(\horizontal_count[3]_i_2_n_0 ),
        .O(\horizontal_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009A8A9AAA)) 
    \horizontal_count[2]_i_1 
       (.I0(\horizontal_count_reg_n_0_[2] ),
        .I1(\m_axis_video_tdata[23]_i_4_n_0 ),
        .I2(\horizontal_count_reg_n_0_[1] ),
        .I3(\horizontal_count_reg_n_0_[0] ),
        .I4(\horizontal_count_reg_n_0_[3] ),
        .I5(\horizontal_count[3]_i_2_n_0 ),
        .O(\horizontal_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAA8AAA)) 
    \horizontal_count[3]_i_1 
       (.I0(\horizontal_count_reg_n_0_[3] ),
        .I1(\m_axis_video_tdata[23]_i_4_n_0 ),
        .I2(\horizontal_count_reg_n_0_[1] ),
        .I3(\horizontal_count_reg_n_0_[2] ),
        .I4(\horizontal_count_reg_n_0_[0] ),
        .I5(\horizontal_count[3]_i_2_n_0 ),
        .O(\horizontal_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF333F3F3B333B3B3)) 
    \horizontal_count[3]_i_2 
       (.I0(s_axis_video_tlast),
        .I1(aresetn),
        .I2(s_axis_video_tvalid),
        .I3(m_axis_video_tready),
        .I4(m_axis_video_tvalid_reg_0),
        .I5(s_axis_video_tuser),
        .O(\horizontal_count[3]_i_2_n_0 ));
  FDRE \horizontal_count_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\horizontal_count[0]_i_1_n_0 ),
        .Q(\horizontal_count_reg_n_0_[0] ),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \horizontal_count_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\horizontal_count[1]_i_1_n_0 ),
        .Q(\horizontal_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \horizontal_count_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\horizontal_count[2]_i_1_n_0 ),
        .Q(\horizontal_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \horizontal_count_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\horizontal_count[3]_i_1_n_0 ),
        .Q(\horizontal_count_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \input_y[0]_i_1 
       (.I0(input_y[0]),
        .O(input_y_0[0]));
  LUT4 #(
    .INIT(16'h8088)) 
    \input_y[10]_i_1 
       (.I0(s_axis_video_tlast),
        .I1(s_axis_video_tvalid),
        .I2(m_axis_video_tready),
        .I3(m_axis_video_tvalid_reg_0),
        .O(\input_y[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \input_y[10]_i_2 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[10]),
        .I2(input_y[7]),
        .I3(input_y[8]),
        .I4(input_y[9]),
        .I5(\input_y[10]_i_4_n_0 ),
        .O(input_y_0[10]));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \input_y[10]_i_3 
       (.I0(\input_y[10]_i_5_n_0 ),
        .I1(input_y[5]),
        .I2(input_y[2]),
        .I3(input_y[0]),
        .I4(input_y[1]),
        .I5(input_y[4]),
        .O(\input_y[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \input_y[10]_i_4 
       (.I0(input_y[4]),
        .I1(\input_y[6]_i_2_n_0 ),
        .I2(input_y[5]),
        .I3(input_y[3]),
        .I4(input_y[6]),
        .O(\input_y[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \input_y[10]_i_5 
       (.I0(input_y[9]),
        .I1(input_y[10]),
        .I2(input_y[7]),
        .I3(input_y[8]),
        .I4(input_y[6]),
        .I5(input_y[3]),
        .O(\input_y[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \input_y[1]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[1]),
        .I2(input_y[0]),
        .O(input_y_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \input_y[2]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[2]),
        .I2(input_y[0]),
        .I3(input_y[1]),
        .O(input_y_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \input_y[3]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[3]),
        .I2(input_y[1]),
        .I3(input_y[0]),
        .I4(input_y[2]),
        .O(input_y_0[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \input_y[4]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[4]),
        .I2(input_y[3]),
        .I3(input_y[2]),
        .I4(input_y[0]),
        .I5(input_y[1]),
        .O(input_y_0[4]));
  LUT5 #(
    .INIT(32'h88882888)) 
    \input_y[5]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[5]),
        .I2(input_y[3]),
        .I3(input_y[4]),
        .I4(\input_y[6]_i_2_n_0 ),
        .O(input_y_0[5]));
  LUT6 #(
    .INIT(64'h8888288888888888)) 
    \input_y[6]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[6]),
        .I2(input_y[3]),
        .I3(input_y[5]),
        .I4(\input_y[6]_i_2_n_0 ),
        .I5(input_y[4]),
        .O(input_y_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \input_y[6]_i_2 
       (.I0(input_y[1]),
        .I1(input_y[0]),
        .I2(input_y[2]),
        .O(\input_y[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \input_y[7]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[7]),
        .I2(\input_y[10]_i_4_n_0 ),
        .O(input_y_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \input_y[8]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[8]),
        .I2(\input_y[10]_i_4_n_0 ),
        .I3(input_y[7]),
        .O(input_y_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \input_y[9]_i_1 
       (.I0(\input_y[10]_i_3_n_0 ),
        .I1(input_y[9]),
        .I2(input_y[8]),
        .I3(input_y[7]),
        .I4(\input_y[10]_i_4_n_0 ),
        .O(input_y_0[9]));
  FDRE \input_y_reg[0] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[0]),
        .Q(input_y[0]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[10] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[10]),
        .Q(input_y[10]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[1] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[1]),
        .Q(input_y[1]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[2] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[2]),
        .Q(input_y[2]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[3] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[3]),
        .Q(input_y[3]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[4] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[4]),
        .Q(input_y[4]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[5] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[5]),
        .Q(input_y[5]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[6] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[6]),
        .Q(input_y[6]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[7] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[7]),
        .Q(input_y[7]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[8] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[8]),
        .Q(input_y[8]),
        .R(vertical_accumulator));
  FDRE \input_y_reg[9] 
       (.C(aclk),
        .CE(\input_y[10]_i_1_n_0 ),
        .D(input_y_0[9]),
        .Q(input_y[9]),
        .R(vertical_accumulator));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_video_tdata[23]_i_1 
       (.I0(aresetn),
        .O(\m_axis_video_tdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AEAA)) 
    \m_axis_video_tdata[23]_i_2 
       (.I0(s_axis_video_tuser),
        .I1(\m_axis_video_tdata[23]_i_3_n_0 ),
        .I2(\horizontal_count_reg_n_0_[3] ),
        .I3(selected_line0),
        .I4(\m_axis_video_tdata[23]_i_4_n_0 ),
        .O(\m_axis_video_tdata[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_axis_video_tdata[23]_i_3 
       (.I0(\horizontal_count_reg_n_0_[2] ),
        .I1(\horizontal_count_reg_n_0_[1] ),
        .I2(\horizontal_count_reg_n_0_[0] ),
        .O(\m_axis_video_tdata[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \m_axis_video_tdata[23]_i_4 
       (.I0(m_axis_video_tvalid_reg_0),
        .I1(m_axis_video_tready),
        .I2(s_axis_video_tvalid),
        .O(\m_axis_video_tdata[23]_i_4_n_0 ));
  FDRE \m_axis_video_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[0]),
        .Q(m_axis_video_tdata[0]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[10]),
        .Q(m_axis_video_tdata[10]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[11]),
        .Q(m_axis_video_tdata[11]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[12]),
        .Q(m_axis_video_tdata[12]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[13]),
        .Q(m_axis_video_tdata[13]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[14]),
        .Q(m_axis_video_tdata[14]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[15]),
        .Q(m_axis_video_tdata[15]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[16]),
        .Q(m_axis_video_tdata[16]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[17]),
        .Q(m_axis_video_tdata[17]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[18]),
        .Q(m_axis_video_tdata[18]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[19]),
        .Q(m_axis_video_tdata[19]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[1]),
        .Q(m_axis_video_tdata[1]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[20]),
        .Q(m_axis_video_tdata[20]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[21]),
        .Q(m_axis_video_tdata[21]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[22]),
        .Q(m_axis_video_tdata[22]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[23]),
        .Q(m_axis_video_tdata[23]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[2]),
        .Q(m_axis_video_tdata[2]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[3]),
        .Q(m_axis_video_tdata[3]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[4]),
        .Q(m_axis_video_tdata[4]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[5]),
        .Q(m_axis_video_tdata[5]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[6]),
        .Q(m_axis_video_tdata[6]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[7]),
        .Q(m_axis_video_tdata[7]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[8]),
        .Q(m_axis_video_tdata[8]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \m_axis_video_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(s_axis_video_tdata[9]),
        .Q(m_axis_video_tdata[9]),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h002E)) 
    m_axis_video_tlast_i_1
       (.I0(m_axis_video_tlast),
        .I1(\m_axis_video_tdata[23]_i_2_n_0 ),
        .I2(m_axis_video_tlast_i_2_n_0),
        .I3(vertical_accumulator),
        .O(m_axis_video_tlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_axis_video_tlast_i_2
       (.I0(\output_x[6]_i_2_n_0 ),
        .I1(\output_x_reg_n_0_[6] ),
        .O(m_axis_video_tlast_i_2_n_0));
  FDRE m_axis_video_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_video_tlast_i_1_n_0),
        .Q(m_axis_video_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB88F8)) 
    m_axis_video_tuser_i_1
       (.I0(m_axis_video_tuser0),
        .I1(\m_axis_video_tdata[23]_i_2_n_0 ),
        .I2(s_axis_video_tuser),
        .I3(\m_axis_video_tdata[23]_i_4_n_0 ),
        .I4(m_axis_video_tuser),
        .O(m_axis_video_tuser_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    m_axis_video_tuser_i_2
       (.I0(m_axis_video_tuser_i_3_n_0),
        .I1(\output_x_reg_n_0_[0] ),
        .I2(\output_x_reg_n_0_[1] ),
        .I3(m_axis_video_tuser_i_4_n_0),
        .O(m_axis_video_tuser0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axis_video_tuser_i_3
       (.I0(output_y_reg[3]),
        .I1(output_y_reg[4]),
        .I2(output_y_reg[1]),
        .I3(output_y_reg[2]),
        .I4(output_y_reg[6]),
        .I5(output_y_reg[5]),
        .O(m_axis_video_tuser_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axis_video_tuser_i_4
       (.I0(\output_x_reg_n_0_[4] ),
        .I1(\output_x_reg_n_0_[5] ),
        .I2(\output_x_reg_n_0_[2] ),
        .I3(\output_x_reg_n_0_[3] ),
        .I4(output_y_reg[0]),
        .I5(\output_x_reg_n_0_[6] ),
        .O(m_axis_video_tuser_i_4_n_0));
  FDRE m_axis_video_tuser_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_video_tuser_i_1_n_0),
        .Q(m_axis_video_tuser),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    m_axis_video_tvalid_i_1
       (.I0(m_axis_video_tvalid_i_2_n_0),
        .I1(s_axis_video_tvalid),
        .I2(m_axis_video_tready),
        .I3(m_axis_video_tvalid_reg_0),
        .O(m_axis_video_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    m_axis_video_tvalid_i_2
       (.I0(selected_line0),
        .I1(\horizontal_count_reg_n_0_[3] ),
        .I2(\horizontal_count_reg_n_0_[2] ),
        .I3(\horizontal_count_reg_n_0_[1] ),
        .I4(\horizontal_count_reg_n_0_[0] ),
        .I5(s_axis_video_tuser),
        .O(m_axis_video_tvalid_i_2_n_0));
  FDRE m_axis_video_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_video_tvalid_i_1_n_0),
        .Q(m_axis_video_tvalid_reg_0),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA200FFFF)) 
    \next_sample_y[10]_i_1 
       (.I0(s_axis_video_tuser),
        .I1(m_axis_video_tvalid_reg_0),
        .I2(m_axis_video_tready),
        .I3(s_axis_video_tvalid),
        .I4(aresetn),
        .O(vertical_accumulator));
  LUT6 #(
    .INIT(64'h5400540000005400)) 
    \next_sample_y[10]_i_2 
       (.I0(\m_axis_video_tdata[23]_i_4_n_0 ),
        .I1(selected_line0),
        .I2(s_axis_video_tuser),
        .I3(s_axis_video_tlast),
        .I4(output_y_reg[6]),
        .I5(\next_sample_y[10]_i_4_n_0 ),
        .O(output_y));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \next_sample_y[10]_i_4 
       (.I0(output_y_reg[4]),
        .I1(output_y_reg[2]),
        .I2(output_y_reg[0]),
        .I3(output_y_reg[1]),
        .I4(output_y_reg[3]),
        .I5(output_y_reg[5]),
        .O(\next_sample_y[10]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_sample_y[2]_i_3 
       (.I0(vertical_accumulator_reg[5]),
        .O(\next_sample_y[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_sample_y[2]_i_4 
       (.I0(vertical_accumulator_reg[4]),
        .O(\next_sample_y[2]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_sample_y[2]_i_5 
       (.I0(vertical_accumulator_reg[3]),
        .O(\next_sample_y[2]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \next_sample_y[6]_i_2 
       (.I0(vertical_accumulator_reg[10]),
        .O(\next_sample_y[6]_i_2_n_0 ));
  FDRE \next_sample_y_reg[0] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[2]_i_1_n_6 ),
        .Q(next_sample_y[0]),
        .R(vertical_accumulator));
  FDRE \next_sample_y_reg[10] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[10]_i_3_n_4 ),
        .Q(next_sample_y[10]),
        .R(vertical_accumulator));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_sample_y_reg[10]_i_3 
       (.CI(\next_sample_y_reg[6]_i_1_n_0 ),
        .CO({\NLW_next_sample_y_reg[10]_i_3_CO_UNCONNECTED [3],\next_sample_y_reg[10]_i_3_n_1 ,\next_sample_y_reg[10]_i_3_n_2 ,\next_sample_y_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_sample_y_reg[10]_i_3_n_4 ,\next_sample_y_reg[10]_i_3_n_5 ,\next_sample_y_reg[10]_i_3_n_6 ,\next_sample_y_reg[10]_i_3_n_7 }),
        .S(vertical_accumulator_reg[17:14]));
  FDRE \next_sample_y_reg[1] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[2]_i_1_n_5 ),
        .Q(next_sample_y[1]),
        .R(vertical_accumulator));
  FDRE \next_sample_y_reg[2] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[2]_i_1_n_4 ),
        .Q(next_sample_y[2]),
        .R(vertical_accumulator));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_sample_y_reg[2]_i_1 
       (.CI(\next_sample_y_reg[2]_i_2_n_0 ),
        .CO({\next_sample_y_reg[2]_i_1_n_0 ,\next_sample_y_reg[2]_i_1_n_1 ,\next_sample_y_reg[2]_i_1_n_2 ,\next_sample_y_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\next_sample_y_reg[2]_i_1_n_4 ,\next_sample_y_reg[2]_i_1_n_5 ,\next_sample_y_reg[2]_i_1_n_6 ,\NLW_next_sample_y_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S(vertical_accumulator_reg[9:6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_sample_y_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\next_sample_y_reg[2]_i_2_n_0 ,\next_sample_y_reg[2]_i_2_n_1 ,\next_sample_y_reg[2]_i_2_n_2 ,\next_sample_y_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({vertical_accumulator_reg[5:3],1'b0}),
        .O(\NLW_next_sample_y_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\next_sample_y[2]_i_3_n_0 ,\next_sample_y[2]_i_4_n_0 ,\next_sample_y[2]_i_5_n_0 ,1'b0}));
  FDRE \next_sample_y_reg[3] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[6]_i_1_n_7 ),
        .Q(next_sample_y[3]),
        .R(vertical_accumulator));
  FDRE \next_sample_y_reg[4] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[6]_i_1_n_6 ),
        .Q(next_sample_y[4]),
        .R(vertical_accumulator));
  FDRE \next_sample_y_reg[5] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[6]_i_1_n_5 ),
        .Q(next_sample_y[5]),
        .R(vertical_accumulator));
  FDRE \next_sample_y_reg[6] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[6]_i_1_n_4 ),
        .Q(next_sample_y[6]),
        .R(vertical_accumulator));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \next_sample_y_reg[6]_i_1 
       (.CI(\next_sample_y_reg[2]_i_1_n_0 ),
        .CO({\next_sample_y_reg[6]_i_1_n_0 ,\next_sample_y_reg[6]_i_1_n_1 ,\next_sample_y_reg[6]_i_1_n_2 ,\next_sample_y_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vertical_accumulator_reg[10]}),
        .O({\next_sample_y_reg[6]_i_1_n_4 ,\next_sample_y_reg[6]_i_1_n_5 ,\next_sample_y_reg[6]_i_1_n_6 ,\next_sample_y_reg[6]_i_1_n_7 }),
        .S({vertical_accumulator_reg[13:11],\next_sample_y[6]_i_2_n_0 }));
  FDRE \next_sample_y_reg[7] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[10]_i_3_n_7 ),
        .Q(next_sample_y[7]),
        .R(vertical_accumulator));
  FDRE \next_sample_y_reg[8] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[10]_i_3_n_6 ),
        .Q(next_sample_y[8]),
        .R(vertical_accumulator));
  FDRE \next_sample_y_reg[9] 
       (.C(aclk),
        .CE(output_y),
        .D(\next_sample_y_reg[10]_i_3_n_5 ),
        .Q(next_sample_y[9]),
        .R(vertical_accumulator));
  LUT6 #(
    .INIT(64'hDD5D5555EEAEAAAA)) 
    \output_x[0]_i_1 
       (.I0(\m_axis_video_tdata[23]_i_2_n_0 ),
        .I1(s_axis_video_tuser),
        .I2(m_axis_video_tvalid_reg_0),
        .I3(m_axis_video_tready),
        .I4(s_axis_video_tvalid),
        .I5(\output_x_reg_n_0_[0] ),
        .O(\output_x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \output_x[1]_i_1 
       (.I0(m_axis_video_tlast_i_2_n_0),
        .I1(\output_x_reg_n_0_[1] ),
        .I2(\output_x_reg_n_0_[0] ),
        .O(output_x[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \output_x[2]_i_1 
       (.I0(m_axis_video_tlast_i_2_n_0),
        .I1(\output_x_reg_n_0_[2] ),
        .I2(\output_x_reg_n_0_[0] ),
        .I3(\output_x_reg_n_0_[1] ),
        .O(output_x[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \output_x[3]_i_1 
       (.I0(m_axis_video_tlast_i_2_n_0),
        .I1(\output_x_reg_n_0_[3] ),
        .I2(\output_x_reg_n_0_[1] ),
        .I3(\output_x_reg_n_0_[0] ),
        .I4(\output_x_reg_n_0_[2] ),
        .O(output_x[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \output_x[4]_i_1 
       (.I0(m_axis_video_tlast_i_2_n_0),
        .I1(\output_x_reg_n_0_[4] ),
        .I2(\output_x_reg_n_0_[2] ),
        .I3(\output_x_reg_n_0_[0] ),
        .I4(\output_x_reg_n_0_[1] ),
        .I5(\output_x_reg_n_0_[3] ),
        .O(output_x[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \output_x[5]_i_1 
       (.I0(\output_x_reg_n_0_[3] ),
        .I1(\output_x_reg_n_0_[1] ),
        .I2(\output_x_reg_n_0_[0] ),
        .I3(\output_x_reg_n_0_[2] ),
        .I4(\output_x_reg_n_0_[4] ),
        .I5(\output_x_reg_n_0_[5] ),
        .O(output_x[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \output_x[6]_i_1 
       (.I0(\output_x_reg_n_0_[6] ),
        .I1(\output_x[6]_i_2_n_0 ),
        .O(output_x[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \output_x[6]_i_2 
       (.I0(\output_x_reg_n_0_[4] ),
        .I1(\output_x_reg_n_0_[2] ),
        .I2(\output_x_reg_n_0_[0] ),
        .I3(\output_x_reg_n_0_[1] ),
        .I4(\output_x_reg_n_0_[3] ),
        .I5(\output_x_reg_n_0_[5] ),
        .O(\output_x[6]_i_2_n_0 ));
  FDRE \output_x_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\output_x[0]_i_1_n_0 ),
        .Q(\output_x_reg_n_0_[0] ),
        .R(\m_axis_video_tdata[23]_i_1_n_0 ));
  FDRE \output_x_reg[1] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(output_x[1]),
        .Q(\output_x_reg_n_0_[1] ),
        .R(vertical_accumulator));
  FDRE \output_x_reg[2] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(output_x[2]),
        .Q(\output_x_reg_n_0_[2] ),
        .R(vertical_accumulator));
  FDRE \output_x_reg[3] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(output_x[3]),
        .Q(\output_x_reg_n_0_[3] ),
        .R(vertical_accumulator));
  FDRE \output_x_reg[4] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(output_x[4]),
        .Q(\output_x_reg_n_0_[4] ),
        .R(vertical_accumulator));
  FDRE \output_x_reg[5] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(output_x[5]),
        .Q(\output_x_reg_n_0_[5] ),
        .R(vertical_accumulator));
  FDRE \output_x_reg[6] 
       (.C(aclk),
        .CE(\m_axis_video_tdata[23]_i_2_n_0 ),
        .D(output_x[6]),
        .Q(\output_x_reg_n_0_[6] ),
        .R(vertical_accumulator));
  LUT1 #(
    .INIT(2'h1)) 
    \output_y[0]_i_1 
       (.I0(output_y_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \output_y[1]_i_1 
       (.I0(output_y_reg[0]),
        .I1(output_y_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \output_y[2]_i_1 
       (.I0(output_y_reg[1]),
        .I1(output_y_reg[0]),
        .I2(output_y_reg[2]),
        .O(\output_y[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \output_y[3]_i_1 
       (.I0(output_y_reg[2]),
        .I1(output_y_reg[0]),
        .I2(output_y_reg[1]),
        .I3(output_y_reg[3]),
        .O(\output_y[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \output_y[4]_i_1 
       (.I0(output_y_reg[3]),
        .I1(output_y_reg[1]),
        .I2(output_y_reg[0]),
        .I3(output_y_reg[2]),
        .I4(output_y_reg[4]),
        .O(\output_y[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \output_y[5]_i_1 
       (.I0(output_y_reg[4]),
        .I1(output_y_reg[2]),
        .I2(output_y_reg[0]),
        .I3(output_y_reg[1]),
        .I4(output_y_reg[3]),
        .I5(output_y_reg[5]),
        .O(\output_y[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \output_y[6]_i_1 
       (.I0(\next_sample_y[10]_i_4_n_0 ),
        .I1(output_y_reg[6]),
        .O(\output_y[6]_i_1_n_0 ));
  FDRE \output_y_reg[0] 
       (.C(aclk),
        .CE(output_y),
        .D(p_0_in[0]),
        .Q(output_y_reg[0]),
        .R(vertical_accumulator));
  FDRE \output_y_reg[1] 
       (.C(aclk),
        .CE(output_y),
        .D(p_0_in[1]),
        .Q(output_y_reg[1]),
        .R(vertical_accumulator));
  FDRE \output_y_reg[2] 
       (.C(aclk),
        .CE(output_y),
        .D(\output_y[2]_i_1_n_0 ),
        .Q(output_y_reg[2]),
        .R(vertical_accumulator));
  FDRE \output_y_reg[3] 
       (.C(aclk),
        .CE(output_y),
        .D(\output_y[3]_i_1_n_0 ),
        .Q(output_y_reg[3]),
        .R(vertical_accumulator));
  FDRE \output_y_reg[4] 
       (.C(aclk),
        .CE(output_y),
        .D(\output_y[4]_i_1_n_0 ),
        .Q(output_y_reg[4]),
        .R(vertical_accumulator));
  FDRE \output_y_reg[5] 
       (.C(aclk),
        .CE(output_y),
        .D(\output_y[5]_i_1_n_0 ),
        .Q(output_y_reg[5]),
        .R(vertical_accumulator));
  FDRE \output_y_reg[6] 
       (.C(aclk),
        .CE(output_y),
        .D(\output_y[6]_i_1_n_0 ),
        .Q(output_y_reg[6]),
        .R(vertical_accumulator));
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_video_tready_INST_0
       (.I0(m_axis_video_tready),
        .I1(m_axis_video_tvalid_reg_0),
        .O(s_axis_video_tready));
  CARRY4 selected_line0_carry
       (.CI(1'b0),
        .CO({selected_line0,selected_line0_carry_n_1,selected_line0_carry_n_2,selected_line0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_selected_line0_carry_O_UNCONNECTED[3:0]),
        .S({selected_line0_carry_i_1_n_0,selected_line0_carry_i_2_n_0,selected_line0_carry_i_3_n_0,selected_line0_carry_i_4_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    selected_line0_carry_i_1
       (.I0(input_y[9]),
        .I1(next_sample_y[9]),
        .I2(input_y[10]),
        .I3(next_sample_y[10]),
        .O(selected_line0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    selected_line0_carry_i_2
       (.I0(next_sample_y[8]),
        .I1(input_y[8]),
        .I2(next_sample_y[7]),
        .I3(input_y[7]),
        .I4(input_y[6]),
        .I5(next_sample_y[6]),
        .O(selected_line0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    selected_line0_carry_i_3
       (.I0(next_sample_y[5]),
        .I1(input_y[5]),
        .I2(next_sample_y[4]),
        .I3(input_y[4]),
        .I4(input_y[3]),
        .I5(next_sample_y[3]),
        .O(selected_line0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    selected_line0_carry_i_4
       (.I0(next_sample_y[2]),
        .I1(input_y[2]),
        .I2(next_sample_y[1]),
        .I3(input_y[1]),
        .I4(input_y[0]),
        .I5(next_sample_y[0]),
        .O(selected_line0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \vertical_accumulator[3]_i_2 
       (.I0(vertical_accumulator_reg[5]),
        .O(\vertical_accumulator[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vertical_accumulator[3]_i_3 
       (.I0(vertical_accumulator_reg[4]),
        .O(\vertical_accumulator[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vertical_accumulator[3]_i_4 
       (.I0(vertical_accumulator_reg[3]),
        .O(\vertical_accumulator[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vertical_accumulator[7]_i_2 
       (.I0(vertical_accumulator_reg[10]),
        .O(\vertical_accumulator[7]_i_2_n_0 ));
  FDRE \vertical_accumulator_reg[10] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[7]_i_1_n_4 ),
        .Q(vertical_accumulator_reg[10]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[11] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[11]_i_1_n_7 ),
        .Q(vertical_accumulator_reg[11]),
        .R(vertical_accumulator));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \vertical_accumulator_reg[11]_i_1 
       (.CI(\vertical_accumulator_reg[7]_i_1_n_0 ),
        .CO({\vertical_accumulator_reg[11]_i_1_n_0 ,\vertical_accumulator_reg[11]_i_1_n_1 ,\vertical_accumulator_reg[11]_i_1_n_2 ,\vertical_accumulator_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vertical_accumulator_reg[11]_i_1_n_4 ,\vertical_accumulator_reg[11]_i_1_n_5 ,\vertical_accumulator_reg[11]_i_1_n_6 ,\vertical_accumulator_reg[11]_i_1_n_7 }),
        .S(vertical_accumulator_reg[14:11]));
  FDRE \vertical_accumulator_reg[12] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[11]_i_1_n_6 ),
        .Q(vertical_accumulator_reg[12]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[13] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[11]_i_1_n_5 ),
        .Q(vertical_accumulator_reg[13]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[14] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[11]_i_1_n_4 ),
        .Q(vertical_accumulator_reg[14]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[15] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[15]_i_1_n_7 ),
        .Q(vertical_accumulator_reg[15]),
        .R(vertical_accumulator));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \vertical_accumulator_reg[15]_i_1 
       (.CI(\vertical_accumulator_reg[11]_i_1_n_0 ),
        .CO({\NLW_vertical_accumulator_reg[15]_i_1_CO_UNCONNECTED [3:2],\vertical_accumulator_reg[15]_i_1_n_2 ,\vertical_accumulator_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_vertical_accumulator_reg[15]_i_1_O_UNCONNECTED [3],\vertical_accumulator_reg[15]_i_1_n_5 ,\vertical_accumulator_reg[15]_i_1_n_6 ,\vertical_accumulator_reg[15]_i_1_n_7 }),
        .S({1'b0,vertical_accumulator_reg[17:15]}));
  FDRE \vertical_accumulator_reg[16] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[15]_i_1_n_6 ),
        .Q(vertical_accumulator_reg[16]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[17] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[15]_i_1_n_5 ),
        .Q(vertical_accumulator_reg[17]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[3] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[3]_i_1_n_7 ),
        .Q(vertical_accumulator_reg[3]),
        .R(vertical_accumulator));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \vertical_accumulator_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\vertical_accumulator_reg[3]_i_1_n_0 ,\vertical_accumulator_reg[3]_i_1_n_1 ,\vertical_accumulator_reg[3]_i_1_n_2 ,\vertical_accumulator_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\vertical_accumulator_reg[3]_i_1_n_4 ,\vertical_accumulator_reg[3]_i_1_n_5 ,\vertical_accumulator_reg[3]_i_1_n_6 ,\vertical_accumulator_reg[3]_i_1_n_7 }),
        .S({vertical_accumulator_reg[6],\vertical_accumulator[3]_i_2_n_0 ,\vertical_accumulator[3]_i_3_n_0 ,\vertical_accumulator[3]_i_4_n_0 }));
  FDRE \vertical_accumulator_reg[4] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[3]_i_1_n_6 ),
        .Q(vertical_accumulator_reg[4]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[5] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[3]_i_1_n_5 ),
        .Q(vertical_accumulator_reg[5]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[6] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[3]_i_1_n_4 ),
        .Q(vertical_accumulator_reg[6]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[7] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[7]_i_1_n_7 ),
        .Q(vertical_accumulator_reg[7]),
        .R(vertical_accumulator));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \vertical_accumulator_reg[7]_i_1 
       (.CI(\vertical_accumulator_reg[3]_i_1_n_0 ),
        .CO({\vertical_accumulator_reg[7]_i_1_n_0 ,\vertical_accumulator_reg[7]_i_1_n_1 ,\vertical_accumulator_reg[7]_i_1_n_2 ,\vertical_accumulator_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({\vertical_accumulator_reg[7]_i_1_n_4 ,\vertical_accumulator_reg[7]_i_1_n_5 ,\vertical_accumulator_reg[7]_i_1_n_6 ,\vertical_accumulator_reg[7]_i_1_n_7 }),
        .S({\vertical_accumulator[7]_i_2_n_0 ,vertical_accumulator_reg[9:7]}));
  FDRE \vertical_accumulator_reg[8] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[7]_i_1_n_6 ),
        .Q(vertical_accumulator_reg[8]),
        .R(vertical_accumulator));
  FDRE \vertical_accumulator_reg[9] 
       (.C(aclk),
        .CE(output_y),
        .D(\vertical_accumulator_reg[7]_i_1_n_5 ),
        .Q(vertical_accumulator_reg[9]),
        .R(vertical_accumulator));
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
