// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug  2 20:02:02 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_ds_128_0_0/system_ds_128_0_0_sim_netlist.v
// Design      : system_ds_128_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_ds_128_0_0,ds_128,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ds_128,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_ds_128_0_0
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TUSER" *) output m_axis_tuser;

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  assign s_axis_tready = \<const1> ;
  system_ds_128_0_0_ds_128 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata[7:0]),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "ds_128" *) 
module system_ds_128_0_0_ds_128
   (m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    m_axis_tvalid,
    s_axis_tvalid,
    aclk,
    s_axis_tdata,
    s_axis_tuser,
    aresetn,
    s_axis_tlast,
    m_axis_tready);
  output [7:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tuser;
  output m_axis_tvalid;
  input s_axis_tvalid;
  input aclk;
  input [7:0]s_axis_tdata;
  input s_axis_tuser;
  input aresetn;
  input s_axis_tlast;
  input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire [11:0]cx;
  wire [11:1]cy;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[7]_i_3_n_0 ;
  wire \m_axis_tdata[7]_i_4_n_0 ;
  wire \m_axis_tdata[7]_i_5_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tuser0;
  wire m_axis_tuser_i_2_n_0;
  wire m_axis_tuser_i_3_n_0;
  wire m_axis_tuser_i_4_n_0;
  wire m_axis_tuser_i_5_n_0;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire p_0_in;
  wire [11:0]p_1_in;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire take;
  wire x_q0_carry__0_n_0;
  wire x_q0_carry__0_n_1;
  wire x_q0_carry__0_n_2;
  wire x_q0_carry__0_n_3;
  wire x_q0_carry__1_n_2;
  wire x_q0_carry__1_n_3;
  wire x_q0_carry_n_0;
  wire x_q0_carry_n_1;
  wire x_q0_carry_n_2;
  wire x_q0_carry_n_3;
  wire \x_q[11]_i_1_n_0 ;
  wire \x_q_reg_n_0_[0] ;
  wire \x_q_reg_n_0_[10] ;
  wire \x_q_reg_n_0_[11] ;
  wire \x_q_reg_n_0_[1] ;
  wire \x_q_reg_n_0_[2] ;
  wire \x_q_reg_n_0_[3] ;
  wire \x_q_reg_n_0_[4] ;
  wire \x_q_reg_n_0_[5] ;
  wire \x_q_reg_n_0_[6] ;
  wire \x_q_reg_n_0_[7] ;
  wire \x_q_reg_n_0_[8] ;
  wire \x_q_reg_n_0_[9] ;
  wire [11:0]y_q;
  wire \y_q[3]_i_5_n_0 ;
  wire \y_q_reg[11]_i_1_n_1 ;
  wire \y_q_reg[11]_i_1_n_2 ;
  wire \y_q_reg[11]_i_1_n_3 ;
  wire \y_q_reg[3]_i_1_n_0 ;
  wire \y_q_reg[3]_i_1_n_1 ;
  wire \y_q_reg[3]_i_1_n_2 ;
  wire \y_q_reg[3]_i_1_n_3 ;
  wire \y_q_reg[7]_i_1_n_0 ;
  wire \y_q_reg[7]_i_1_n_1 ;
  wire \y_q_reg[7]_i_1_n_2 ;
  wire \y_q_reg[7]_i_1_n_3 ;
  wire \y_q_reg_n_0_[0] ;
  wire \y_q_reg_n_0_[10] ;
  wire \y_q_reg_n_0_[11] ;
  wire \y_q_reg_n_0_[1] ;
  wire \y_q_reg_n_0_[2] ;
  wire \y_q_reg_n_0_[3] ;
  wire \y_q_reg_n_0_[4] ;
  wire \y_q_reg_n_0_[5] ;
  wire \y_q_reg_n_0_[6] ;
  wire \y_q_reg_n_0_[7] ;
  wire \y_q_reg_n_0_[8] ;
  wire \y_q_reg_n_0_[9] ;
  wire [3:2]NLW_x_q0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_x_q0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_y_q_reg[11]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[7]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h28)) 
    \m_axis_tdata[7]_i_2 
       (.I0(\m_axis_tdata[7]_i_3_n_0 ),
        .I1(\m_axis_tdata[7]_i_4_n_0 ),
        .I2(\y_q_reg_n_0_[9] ),
        .O(take));
  LUT6 #(
    .INIT(64'h6A00000000000000)) 
    \m_axis_tdata[7]_i_3 
       (.I0(\x_q_reg_n_0_[9] ),
        .I1(\x_q_reg_n_0_[8] ),
        .I2(\x_q_reg_n_0_[7] ),
        .I3(\m_axis_tdata[7]_i_5_n_0 ),
        .I4(m_axis_tlast_i_2_n_0),
        .I5(s_axis_tvalid),
        .O(\m_axis_tdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \m_axis_tdata[7]_i_4 
       (.I0(\y_q_reg_n_0_[8] ),
        .I1(\y_q_reg_n_0_[7] ),
        .I2(\y_q_reg_n_0_[3] ),
        .I3(\y_q_reg_n_0_[4] ),
        .I4(\y_q_reg_n_0_[5] ),
        .I5(\y_q_reg_n_0_[6] ),
        .O(\m_axis_tdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m_axis_tdata[7]_i_5 
       (.I0(\y_q_reg_n_0_[11] ),
        .I1(\y_q_reg_n_0_[10] ),
        .I2(\y_q_reg_n_0_[1] ),
        .I3(\y_q_reg_n_0_[0] ),
        .O(\m_axis_tdata[7]_i_5_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(take),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast_i_2_n_0),
        .I1(\x_q_reg_n_0_[2] ),
        .I2(\x_q_reg_n_0_[3] ),
        .I3(m_axis_tlast_i_3_n_0),
        .O(m_axis_tlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    m_axis_tlast_i_2
       (.I0(\x_q_reg_n_0_[0] ),
        .I1(\x_q_reg_n_0_[1] ),
        .I2(\x_q_reg_n_0_[10] ),
        .I3(\x_q_reg_n_0_[11] ),
        .I4(s_axis_tuser),
        .O(m_axis_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    m_axis_tlast_i_3
       (.I0(\x_q_reg_n_0_[6] ),
        .I1(\x_q_reg_n_0_[7] ),
        .I2(\x_q_reg_n_0_[4] ),
        .I3(\x_q_reg_n_0_[5] ),
        .I4(\x_q_reg_n_0_[9] ),
        .I5(\x_q_reg_n_0_[8] ),
        .O(m_axis_tlast_i_3_n_0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(take),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    m_axis_tuser_i_1
       (.I0(m_axis_tuser_i_2_n_0),
        .I1(m_axis_tuser_i_3_n_0),
        .I2(\y_q_reg_n_0_[5] ),
        .I3(\y_q_reg_n_0_[6] ),
        .I4(m_axis_tuser_i_4_n_0),
        .I5(m_axis_tuser_i_5_n_0),
        .O(m_axis_tuser0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    m_axis_tuser_i_2
       (.I0(\x_q_reg_n_0_[4] ),
        .I1(\x_q_reg_n_0_[5] ),
        .I2(\x_q_reg_n_0_[2] ),
        .I3(\x_q_reg_n_0_[3] ),
        .I4(\x_q_reg_n_0_[6] ),
        .I5(\x_q_reg_n_0_[7] ),
        .O(m_axis_tuser_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    m_axis_tuser_i_3
       (.I0(\y_q_reg_n_0_[7] ),
        .I1(\y_q_reg_n_0_[8] ),
        .O(m_axis_tuser_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    m_axis_tuser_i_4
       (.I0(\y_q_reg_n_0_[3] ),
        .I1(\y_q_reg_n_0_[2] ),
        .I2(\x_q_reg_n_0_[8] ),
        .I3(\x_q_reg_n_0_[9] ),
        .I4(\y_q_reg_n_0_[9] ),
        .I5(\y_q_reg_n_0_[4] ),
        .O(m_axis_tuser_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    m_axis_tuser_i_5
       (.I0(\y_q_reg_n_0_[0] ),
        .I1(\y_q_reg_n_0_[1] ),
        .I2(\y_q_reg_n_0_[10] ),
        .I3(\y_q_reg_n_0_[11] ),
        .I4(m_axis_tlast_i_2_n_0),
        .O(m_axis_tuser_i_5_n_0));
  FDRE m_axis_tuser_reg
       (.C(aclk),
        .CE(take),
        .D(m_axis_tuser0),
        .Q(m_axis_tuser),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h3C00BEAA00000000)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_tvalid),
        .I1(\m_axis_tdata[7]_i_4_n_0 ),
        .I2(\y_q_reg_n_0_[9] ),
        .I3(\m_axis_tdata[7]_i_3_n_0 ),
        .I4(m_axis_tready),
        .I5(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 x_q0_carry
       (.CI(1'b0),
        .CO({x_q0_carry_n_0,x_q0_carry_n_1,x_q0_carry_n_2,x_q0_carry_n_3}),
        .CYINIT(cx[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(cx[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 x_q0_carry__0
       (.CI(x_q0_carry_n_0),
        .CO({x_q0_carry__0_n_0,x_q0_carry__0_n_1,x_q0_carry__0_n_2,x_q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(cx[8:5]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry__0_i_1
       (.I0(\x_q_reg_n_0_[8] ),
        .I1(s_axis_tuser),
        .O(cx[8]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry__0_i_2
       (.I0(\x_q_reg_n_0_[7] ),
        .I1(s_axis_tuser),
        .O(cx[7]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry__0_i_3
       (.I0(\x_q_reg_n_0_[6] ),
        .I1(s_axis_tuser),
        .O(cx[6]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry__0_i_4
       (.I0(\x_q_reg_n_0_[5] ),
        .I1(s_axis_tuser),
        .O(cx[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 x_q0_carry__1
       (.CI(x_q0_carry__0_n_0),
        .CO({NLW_x_q0_carry__1_CO_UNCONNECTED[3:2],x_q0_carry__1_n_2,x_q0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_x_q0_carry__1_O_UNCONNECTED[3],p_1_in[11:9]}),
        .S({1'b0,cx[11:9]}));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry__1_i_1
       (.I0(\x_q_reg_n_0_[11] ),
        .I1(s_axis_tuser),
        .O(cx[11]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry__1_i_2
       (.I0(\x_q_reg_n_0_[10] ),
        .I1(s_axis_tuser),
        .O(cx[10]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry__1_i_3
       (.I0(\x_q_reg_n_0_[9] ),
        .I1(s_axis_tuser),
        .O(cx[9]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry_i_1
       (.I0(\x_q_reg_n_0_[0] ),
        .I1(s_axis_tuser),
        .O(cx[0]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry_i_2
       (.I0(\x_q_reg_n_0_[4] ),
        .I1(s_axis_tuser),
        .O(cx[4]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry_i_3
       (.I0(\x_q_reg_n_0_[3] ),
        .I1(s_axis_tuser),
        .O(cx[3]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry_i_4
       (.I0(\x_q_reg_n_0_[2] ),
        .I1(s_axis_tuser),
        .O(cx[2]));
  LUT2 #(
    .INIT(4'h2)) 
    x_q0_carry_i_5
       (.I0(\x_q_reg_n_0_[1] ),
        .I1(s_axis_tuser),
        .O(cx[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \x_q[0]_i_1 
       (.I0(s_axis_tuser),
        .I1(\x_q_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'h8F)) 
    \x_q[11]_i_1 
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(aresetn),
        .O(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[0]),
        .Q(\x_q_reg_n_0_[0] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[10]),
        .Q(\x_q_reg_n_0_[10] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[11]),
        .Q(\x_q_reg_n_0_[11] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[1]),
        .Q(\x_q_reg_n_0_[1] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[2]),
        .Q(\x_q_reg_n_0_[2] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[3]),
        .Q(\x_q_reg_n_0_[3] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[4]),
        .Q(\x_q_reg_n_0_[4] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[5]),
        .Q(\x_q_reg_n_0_[5] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[6]),
        .Q(\x_q_reg_n_0_[6] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[7]),
        .Q(\x_q_reg_n_0_[7] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[8]),
        .Q(\x_q_reg_n_0_[8] ),
        .R(\x_q[11]_i_1_n_0 ));
  FDRE \x_q_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(p_1_in[9]),
        .Q(\x_q_reg_n_0_[9] ),
        .R(\x_q[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[11]_i_2 
       (.I0(\y_q_reg_n_0_[11] ),
        .I1(s_axis_tuser),
        .O(cy[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[11]_i_3 
       (.I0(\y_q_reg_n_0_[10] ),
        .I1(s_axis_tuser),
        .O(cy[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[11]_i_4 
       (.I0(\y_q_reg_n_0_[9] ),
        .I1(s_axis_tuser),
        .O(cy[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[11]_i_5 
       (.I0(\y_q_reg_n_0_[8] ),
        .I1(s_axis_tuser),
        .O(cy[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[3]_i_2 
       (.I0(\y_q_reg_n_0_[3] ),
        .I1(s_axis_tuser),
        .O(cy[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[3]_i_3 
       (.I0(\y_q_reg_n_0_[2] ),
        .I1(s_axis_tuser),
        .O(cy[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[3]_i_4 
       (.I0(\y_q_reg_n_0_[1] ),
        .I1(s_axis_tuser),
        .O(cy[1]));
  LUT3 #(
    .INIT(8'hB4)) 
    \y_q[3]_i_5 
       (.I0(s_axis_tuser),
        .I1(\y_q_reg_n_0_[0] ),
        .I2(s_axis_tlast),
        .O(\y_q[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[7]_i_2 
       (.I0(\y_q_reg_n_0_[7] ),
        .I1(s_axis_tuser),
        .O(cy[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[7]_i_3 
       (.I0(\y_q_reg_n_0_[6] ),
        .I1(s_axis_tuser),
        .O(cy[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[7]_i_4 
       (.I0(\y_q_reg_n_0_[5] ),
        .I1(s_axis_tuser),
        .O(cy[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \y_q[7]_i_5 
       (.I0(\y_q_reg_n_0_[4] ),
        .I1(s_axis_tuser),
        .O(cy[4]));
  FDRE \y_q_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[0]),
        .Q(\y_q_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \y_q_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[10]),
        .Q(\y_q_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \y_q_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[11]),
        .Q(\y_q_reg_n_0_[11] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_q_reg[11]_i_1 
       (.CI(\y_q_reg[7]_i_1_n_0 ),
        .CO({\NLW_y_q_reg[11]_i_1_CO_UNCONNECTED [3],\y_q_reg[11]_i_1_n_1 ,\y_q_reg[11]_i_1_n_2 ,\y_q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_q[11:8]),
        .S(cy[11:8]));
  FDRE \y_q_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[1]),
        .Q(\y_q_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \y_q_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[2]),
        .Q(\y_q_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \y_q_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[3]),
        .Q(\y_q_reg_n_0_[3] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\y_q_reg[3]_i_1_n_0 ,\y_q_reg[3]_i_1_n_1 ,\y_q_reg[3]_i_1_n_2 ,\y_q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_axis_tlast}),
        .O(y_q[3:0]),
        .S({cy[3:1],\y_q[3]_i_5_n_0 }));
  FDRE \y_q_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[4]),
        .Q(\y_q_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \y_q_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[5]),
        .Q(\y_q_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \y_q_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[6]),
        .Q(\y_q_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \y_q_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[7]),
        .Q(\y_q_reg_n_0_[7] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_q_reg[7]_i_1 
       (.CI(\y_q_reg[3]_i_1_n_0 ),
        .CO({\y_q_reg[7]_i_1_n_0 ,\y_q_reg[7]_i_1_n_1 ,\y_q_reg[7]_i_1_n_2 ,\y_q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(y_q[7:4]),
        .S(cy[7:4]));
  FDRE \y_q_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[8]),
        .Q(\y_q_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \y_q_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(y_q[9]),
        .Q(\y_q_reg_n_0_[9] ),
        .R(p_0_in));
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
