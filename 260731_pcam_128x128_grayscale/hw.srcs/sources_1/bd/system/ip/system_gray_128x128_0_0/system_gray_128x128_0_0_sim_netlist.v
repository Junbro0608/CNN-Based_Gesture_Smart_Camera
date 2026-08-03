// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug  2 20:02:02 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_gray_128x128_0_0/system_gray_128x128_0_0_sim_netlist.v
// Design      : system_gray_128x128_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_gray_128x128_0_0,gray_128x128,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "gray_128x128,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_gray_128x128_0_0
   (aclk,
    aresetn,
    cap_tdata,
    cap_tvalid,
    cap_tready,
    cap_tlast,
    cap_tuser,
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cap:m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 cap TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME cap, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]cap_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 cap TVALID" *) input cap_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 cap TREADY" *) output cap_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 cap TLAST" *) input cap_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 cap TUSER" *) input cap_tuser;
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

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [7:0]cap_tdata;
  wire cap_tuser;
  wire cap_tvalid;
  wire [7:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;

  assign cap_tready = \<const1> ;
  assign m_axis_tdata[23:16] = \^m_axis_tdata [7:0];
  assign m_axis_tdata[15:8] = \^m_axis_tdata [7:0];
  assign m_axis_tdata[7:0] = \^m_axis_tdata [7:0];
  assign s_axis_tready = m_axis_tready;
  system_gray_128x128_0_0_gray_128x128 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .cap_tdata(cap_tdata),
        .cap_tuser(cap_tuser),
        .cap_tvalid(cap_tvalid),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "gray_128x128" *) 
module system_gray_128x128_0_0_gray_128x128
   (m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    m_axis_tvalid,
    cap_tuser,
    s_axis_tuser,
    aclk,
    cap_tvalid,
    cap_tdata,
    m_axis_tready,
    aresetn,
    s_axis_tlast,
    s_axis_tvalid);
  output [7:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tuser;
  output m_axis_tvalid;
  input cap_tuser;
  input s_axis_tuser;
  input aclk;
  input cap_tvalid;
  input [7:0]cap_tdata;
  input m_axis_tready;
  input aresetn;
  input s_axis_tlast;
  input s_axis_tvalid;

  wire aclk;
  wire aresetn;
  wire beat;
  wire [7:0]cap_tdata;
  wire cap_tuser;
  wire cap_tvalid;
  wire [13:1]data0;
  wire [7:0]gray_qq;
  wire in_win;
  wire lst_d1;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tuser;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [11:0]p_1_in;
  wire [13:0]rd_addr_q;
  wire \rd_addr_q[13]_i_1_n_0 ;
  wire rd_addr_q__0;
  wire s_axis_tlast;
  wire s_axis_tuser;
  wire s_axis_tvalid;
  wire [0:0]sx;
  wire [11:7]sx__0;
  wire sx_q0_carry__0_i_3_n_0;
  wire sx_q0_carry__0_i_4_n_0;
  wire sx_q0_carry__0_n_0;
  wire sx_q0_carry__0_n_1;
  wire sx_q0_carry__0_n_2;
  wire sx_q0_carry__0_n_3;
  wire sx_q0_carry__1_n_2;
  wire sx_q0_carry__1_n_3;
  wire sx_q0_carry_i_1_n_0;
  wire sx_q0_carry_i_2_n_0;
  wire sx_q0_carry_i_3_n_0;
  wire sx_q0_carry_i_4_n_0;
  wire sx_q0_carry_n_0;
  wire sx_q0_carry_n_1;
  wire sx_q0_carry_n_2;
  wire sx_q0_carry_n_3;
  wire \sx_q[11]_i_1_n_0 ;
  wire \sx_q_reg_n_0_[0] ;
  wire \sx_q_reg_n_0_[10] ;
  wire \sx_q_reg_n_0_[11] ;
  wire \sx_q_reg_n_0_[1] ;
  wire \sx_q_reg_n_0_[2] ;
  wire \sx_q_reg_n_0_[3] ;
  wire \sx_q_reg_n_0_[4] ;
  wire \sx_q_reg_n_0_[5] ;
  wire \sx_q_reg_n_0_[6] ;
  wire \sx_q_reg_n_0_[7] ;
  wire \sx_q_reg_n_0_[8] ;
  wire \sx_q_reg_n_0_[9] ;
  wire [11:7]sy;
  wire [11:0]sy_q;
  wire \sy_q[3]_i_2_n_0 ;
  wire \sy_q[3]_i_3_n_0 ;
  wire \sy_q[3]_i_4_n_0 ;
  wire \sy_q[3]_i_5_n_0 ;
  wire \sy_q[7]_i_3_n_0 ;
  wire \sy_q[7]_i_4_n_0 ;
  wire \sy_q[7]_i_5_n_0 ;
  wire \sy_q_reg[11]_i_3_n_1 ;
  wire \sy_q_reg[11]_i_3_n_2 ;
  wire \sy_q_reg[11]_i_3_n_3 ;
  wire \sy_q_reg[3]_i_1_n_0 ;
  wire \sy_q_reg[3]_i_1_n_1 ;
  wire \sy_q_reg[3]_i_1_n_2 ;
  wire \sy_q_reg[3]_i_1_n_3 ;
  wire \sy_q_reg[7]_i_1_n_0 ;
  wire \sy_q_reg[7]_i_1_n_1 ;
  wire \sy_q_reg[7]_i_1_n_2 ;
  wire \sy_q_reg[7]_i_1_n_3 ;
  wire \sy_q_reg_n_0_[0] ;
  wire \sy_q_reg_n_0_[10] ;
  wire \sy_q_reg_n_0_[11] ;
  wire \sy_q_reg_n_0_[1] ;
  wire \sy_q_reg_n_0_[2] ;
  wire \sy_q_reg_n_0_[3] ;
  wire \sy_q_reg_n_0_[4] ;
  wire \sy_q_reg_n_0_[5] ;
  wire \sy_q_reg_n_0_[6] ;
  wire \sy_q_reg_n_0_[7] ;
  wire \sy_q_reg_n_0_[8] ;
  wire \sy_q_reg_n_0_[9] ;
  wire usr_d1;
  wire vld_d1;
  wire vld_d1_i_1_n_0;
  wire vld_d2_i_1_n_0;
  wire win_d1;
  wire win_d1_i_2_n_0;
  wire win_d2;
  wire [13:0]wr_addr;
  wire wr_addr1_carry__0_i_1_n_0;
  wire wr_addr1_carry__0_i_2_n_0;
  wire wr_addr1_carry__0_i_3_n_0;
  wire wr_addr1_carry__0_i_4_n_0;
  wire wr_addr1_carry__0_n_0;
  wire wr_addr1_carry__0_n_1;
  wire wr_addr1_carry__0_n_2;
  wire wr_addr1_carry__0_n_3;
  wire wr_addr1_carry__1_i_1_n_0;
  wire wr_addr1_carry__1_i_2_n_0;
  wire wr_addr1_carry__1_i_3_n_0;
  wire wr_addr1_carry__1_i_4_n_0;
  wire wr_addr1_carry__1_n_0;
  wire wr_addr1_carry__1_n_1;
  wire wr_addr1_carry__1_n_2;
  wire wr_addr1_carry__1_n_3;
  wire wr_addr1_carry__2_i_1_n_0;
  wire wr_addr1_carry_i_1_n_0;
  wire wr_addr1_carry_i_2_n_0;
  wire wr_addr1_carry_i_3_n_0;
  wire wr_addr1_carry_i_4_n_0;
  wire wr_addr1_carry_n_0;
  wire wr_addr1_carry_n_1;
  wire wr_addr1_carry_n_2;
  wire wr_addr1_carry_n_3;
  wire \wr_addr[0]_i_1_n_0 ;
  wire \wr_addr[10]_i_1_n_0 ;
  wire \wr_addr[11]_i_1_n_0 ;
  wire \wr_addr[12]_i_1_n_0 ;
  wire \wr_addr[13]_i_1_n_0 ;
  wire \wr_addr[13]_i_2_n_0 ;
  wire \wr_addr[13]_i_3_n_0 ;
  wire \wr_addr[13]_i_4_n_0 ;
  wire \wr_addr[13]_i_5_n_0 ;
  wire \wr_addr[1]_i_1_n_0 ;
  wire \wr_addr[2]_i_1_n_0 ;
  wire \wr_addr[3]_i_1_n_0 ;
  wire \wr_addr[4]_i_1_n_0 ;
  wire \wr_addr[5]_i_1_n_0 ;
  wire \wr_addr[6]_i_1_n_0 ;
  wire \wr_addr[7]_i_1_n_0 ;
  wire \wr_addr[8]_i_1_n_0 ;
  wire \wr_addr[9]_i_1_n_0 ;
  wire [13:0]wr_addr_now;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_mem_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_RDADDRECC_UNCONNECTED;
  wire [3:2]NLW_sx_q0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_sx_q0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_sy_q_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:0]NLW_wr_addr1_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_wr_addr1_carry__2_O_UNCONNECTED;

  FDRE lst_d1_reg
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(s_axis_tlast),
        .Q(lst_d1),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    lst_d2_i_1
       (.I0(aresetn),
        .I1(m_axis_tready),
        .O(rd_addr_q__0));
  FDRE lst_d2_reg
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(lst_d1),
        .Q(m_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[0]),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[1]),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[2]),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[3]),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[4]),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[5]),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[6]),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(win_d2),
        .I1(gray_qq[7]),
        .O(m_axis_tdata[7]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,wr_addr_now,1'b1}),
        .ADDRBWRADDR({1'b1,rd_addr_q,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cap_tdata[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:2],gray_qq[1:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cap_tvalid),
        .ENBWREN(rd_addr_q__0),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(rd_addr_q__0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({cap_tvalid,cap_tvalid,cap_tvalid,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_1
       (.I0(wr_addr[13]),
        .I1(cap_tuser),
        .O(wr_addr_now[13]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_10
       (.I0(wr_addr[4]),
        .I1(cap_tuser),
        .O(wr_addr_now[4]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_11
       (.I0(wr_addr[3]),
        .I1(cap_tuser),
        .O(wr_addr_now[3]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_12
       (.I0(wr_addr[2]),
        .I1(cap_tuser),
        .O(wr_addr_now[2]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_13
       (.I0(wr_addr[1]),
        .I1(cap_tuser),
        .O(wr_addr_now[1]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_14
       (.I0(wr_addr[0]),
        .I1(cap_tuser),
        .O(wr_addr_now[0]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_2
       (.I0(wr_addr[12]),
        .I1(cap_tuser),
        .O(wr_addr_now[12]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_3
       (.I0(wr_addr[11]),
        .I1(cap_tuser),
        .O(wr_addr_now[11]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_4
       (.I0(wr_addr[10]),
        .I1(cap_tuser),
        .O(wr_addr_now[10]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_5
       (.I0(wr_addr[9]),
        .I1(cap_tuser),
        .O(wr_addr_now[9]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_6
       (.I0(wr_addr[8]),
        .I1(cap_tuser),
        .O(wr_addr_now[8]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_7
       (.I0(wr_addr[7]),
        .I1(cap_tuser),
        .O(wr_addr_now[7]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_8
       (.I0(wr_addr[6]),
        .I1(cap_tuser),
        .O(wr_addr_now[6]));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_9
       (.I0(wr_addr[5]),
        .I1(cap_tuser),
        .O(wr_addr_now[5]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_1
       (.ADDRARDADDR({1'b1,wr_addr_now,1'b1}),
        .ADDRBWRADDR({1'b1,rd_addr_q,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cap_tdata[3:2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[31:2],gray_qq[3:2]}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cap_tvalid),
        .ENBWREN(rd_addr_q__0),
        .INJECTDBITERR(NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(rd_addr_q__0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({cap_tvalid,cap_tvalid,cap_tvalid,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_2
       (.ADDRARDADDR({1'b1,wr_addr_now,1'b1}),
        .ADDRBWRADDR({1'b1,rd_addr_q,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_mem_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cap_tdata[5:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_2_DOBDO_UNCONNECTED[31:2],gray_qq[5:4]}),
        .DOPADOP(NLW_mem_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cap_tvalid),
        .ENBWREN(rd_addr_q__0),
        .INJECTDBITERR(NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(rd_addr_q__0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_SBITERR_UNCONNECTED),
        .WEA({cap_tvalid,cap_tvalid,cap_tvalid,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    mem_reg_3
       (.ADDRARDADDR({1'b1,wr_addr_now,1'b1}),
        .ADDRBWRADDR({1'b1,rd_addr_q,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_mem_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cap_tdata[7:6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_3_DOBDO_UNCONNECTED[31:2],gray_qq[7:6]}),
        .DOPADOP(NLW_mem_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cap_tvalid),
        .ENBWREN(rd_addr_q__0),
        .INJECTDBITERR(NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(rd_addr_q__0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_SBITERR_UNCONNECTED),
        .WEA({cap_tvalid,cap_tvalid,cap_tvalid,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_addr_q[0]_i_1 
       (.I0(\sx_q_reg_n_0_[0] ),
        .I1(s_axis_tuser),
        .O(sx));
  LUT3 #(
    .INIT(8'h80)) 
    \rd_addr_q[13]_i_1 
       (.I0(s_axis_tuser),
        .I1(m_axis_tready),
        .I2(aresetn),
        .O(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[0] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(sx),
        .Q(rd_addr_q[0]),
        .R(1'b0));
  FDRE \rd_addr_q_reg[10] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sy_q_reg_n_0_[3] ),
        .Q(rd_addr_q[10]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[11] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sy_q_reg_n_0_[4] ),
        .Q(rd_addr_q[11]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[12] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sy_q_reg_n_0_[5] ),
        .Q(rd_addr_q[12]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[13] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sy_q_reg_n_0_[6] ),
        .Q(rd_addr_q[13]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[1] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sx_q_reg_n_0_[1] ),
        .Q(rd_addr_q[1]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[2] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sx_q_reg_n_0_[2] ),
        .Q(rd_addr_q[2]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[3] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sx_q_reg_n_0_[3] ),
        .Q(rd_addr_q[3]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[4] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sx_q_reg_n_0_[4] ),
        .Q(rd_addr_q[4]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[5] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sx_q_reg_n_0_[5] ),
        .Q(rd_addr_q[5]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[6] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sx_q_reg_n_0_[6] ),
        .Q(rd_addr_q[6]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[7] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sy_q_reg_n_0_[0] ),
        .Q(rd_addr_q[7]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[8] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sy_q_reg_n_0_[1] ),
        .Q(rd_addr_q[8]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  FDRE \rd_addr_q_reg[9] 
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(\sy_q_reg_n_0_[2] ),
        .Q(rd_addr_q[9]),
        .R(\rd_addr_q[13]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sx_q0_carry
       (.CI(1'b0),
        .CO({sx_q0_carry_n_0,sx_q0_carry_n_1,sx_q0_carry_n_2,sx_q0_carry_n_3}),
        .CYINIT(sx),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S({sx_q0_carry_i_1_n_0,sx_q0_carry_i_2_n_0,sx_q0_carry_i_3_n_0,sx_q0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sx_q0_carry__0
       (.CI(sx_q0_carry_n_0),
        .CO({sx_q0_carry__0_n_0,sx_q0_carry__0_n_1,sx_q0_carry__0_n_2,sx_q0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S({sx__0[8:7],sx_q0_carry__0_i_3_n_0,sx_q0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry__0_i_1
       (.I0(\sx_q_reg_n_0_[8] ),
        .I1(s_axis_tuser),
        .O(sx__0[8]));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry__0_i_2
       (.I0(\sx_q_reg_n_0_[7] ),
        .I1(s_axis_tuser),
        .O(sx__0[7]));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry__0_i_3
       (.I0(\sx_q_reg_n_0_[6] ),
        .I1(s_axis_tuser),
        .O(sx_q0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry__0_i_4
       (.I0(\sx_q_reg_n_0_[5] ),
        .I1(s_axis_tuser),
        .O(sx_q0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sx_q0_carry__1
       (.CI(sx_q0_carry__0_n_0),
        .CO({NLW_sx_q0_carry__1_CO_UNCONNECTED[3:2],sx_q0_carry__1_n_2,sx_q0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sx_q0_carry__1_O_UNCONNECTED[3],p_1_in[11:9]}),
        .S({1'b0,sx__0[11:9]}));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry__1_i_1
       (.I0(\sx_q_reg_n_0_[11] ),
        .I1(s_axis_tuser),
        .O(sx__0[11]));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry__1_i_2
       (.I0(\sx_q_reg_n_0_[10] ),
        .I1(s_axis_tuser),
        .O(sx__0[10]));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry__1_i_3
       (.I0(\sx_q_reg_n_0_[9] ),
        .I1(s_axis_tuser),
        .O(sx__0[9]));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry_i_1
       (.I0(\sx_q_reg_n_0_[4] ),
        .I1(s_axis_tuser),
        .O(sx_q0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry_i_2
       (.I0(\sx_q_reg_n_0_[3] ),
        .I1(s_axis_tuser),
        .O(sx_q0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry_i_3
       (.I0(\sx_q_reg_n_0_[2] ),
        .I1(s_axis_tuser),
        .O(sx_q0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sx_q0_carry_i_4
       (.I0(\sx_q_reg_n_0_[1] ),
        .I1(s_axis_tuser),
        .O(sx_q0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \sx_q[0]_i_1 
       (.I0(s_axis_tuser),
        .I1(\sx_q_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h80FF)) 
    \sx_q[11]_i_1 
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(aresetn),
        .O(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[0] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[0]),
        .Q(\sx_q_reg_n_0_[0] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[10] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[10]),
        .Q(\sx_q_reg_n_0_[10] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[11] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[11]),
        .Q(\sx_q_reg_n_0_[11] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[1] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[1]),
        .Q(\sx_q_reg_n_0_[1] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[2] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[2]),
        .Q(\sx_q_reg_n_0_[2] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[3] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[3]),
        .Q(\sx_q_reg_n_0_[3] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[4] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[4]),
        .Q(\sx_q_reg_n_0_[4] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[5] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[5]),
        .Q(\sx_q_reg_n_0_[5] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[6] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[6]),
        .Q(\sx_q_reg_n_0_[6] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[7] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[7]),
        .Q(\sx_q_reg_n_0_[7] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[8] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[8]),
        .Q(\sx_q_reg_n_0_[8] ),
        .R(\sx_q[11]_i_1_n_0 ));
  FDRE \sx_q_reg[9] 
       (.C(aclk),
        .CE(beat),
        .D(p_1_in[9]),
        .Q(\sx_q_reg_n_0_[9] ),
        .R(\sx_q[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sy_q[11]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \sy_q[11]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(beat));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[11]_i_4 
       (.I0(\sy_q_reg_n_0_[11] ),
        .I1(s_axis_tuser),
        .O(sy[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[11]_i_5 
       (.I0(\sy_q_reg_n_0_[10] ),
        .I1(s_axis_tuser),
        .O(sy[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[11]_i_6 
       (.I0(\sy_q_reg_n_0_[9] ),
        .I1(s_axis_tuser),
        .O(sy[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[11]_i_7 
       (.I0(\sy_q_reg_n_0_[8] ),
        .I1(s_axis_tuser),
        .O(sy[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[3]_i_2 
       (.I0(\sy_q_reg_n_0_[3] ),
        .I1(s_axis_tuser),
        .O(\sy_q[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[3]_i_3 
       (.I0(\sy_q_reg_n_0_[2] ),
        .I1(s_axis_tuser),
        .O(\sy_q[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[3]_i_4 
       (.I0(\sy_q_reg_n_0_[1] ),
        .I1(s_axis_tuser),
        .O(\sy_q[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \sy_q[3]_i_5 
       (.I0(s_axis_tuser),
        .I1(\sy_q_reg_n_0_[0] ),
        .I2(s_axis_tlast),
        .O(\sy_q[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[7]_i_2 
       (.I0(\sy_q_reg_n_0_[7] ),
        .I1(s_axis_tuser),
        .O(sy[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[7]_i_3 
       (.I0(\sy_q_reg_n_0_[6] ),
        .I1(s_axis_tuser),
        .O(\sy_q[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[7]_i_4 
       (.I0(\sy_q_reg_n_0_[5] ),
        .I1(s_axis_tuser),
        .O(\sy_q[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sy_q[7]_i_5 
       (.I0(\sy_q_reg_n_0_[4] ),
        .I1(s_axis_tuser),
        .O(\sy_q[7]_i_5_n_0 ));
  FDRE \sy_q_reg[0] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[0]),
        .Q(\sy_q_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \sy_q_reg[10] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[10]),
        .Q(\sy_q_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \sy_q_reg[11] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[11]),
        .Q(\sy_q_reg_n_0_[11] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sy_q_reg[11]_i_3 
       (.CI(\sy_q_reg[7]_i_1_n_0 ),
        .CO({\NLW_sy_q_reg[11]_i_3_CO_UNCONNECTED [3],\sy_q_reg[11]_i_3_n_1 ,\sy_q_reg[11]_i_3_n_2 ,\sy_q_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sy_q[11:8]),
        .S(sy[11:8]));
  FDRE \sy_q_reg[1] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[1]),
        .Q(\sy_q_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \sy_q_reg[2] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[2]),
        .Q(\sy_q_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \sy_q_reg[3] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[3]),
        .Q(\sy_q_reg_n_0_[3] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sy_q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\sy_q_reg[3]_i_1_n_0 ,\sy_q_reg[3]_i_1_n_1 ,\sy_q_reg[3]_i_1_n_2 ,\sy_q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_axis_tlast}),
        .O(sy_q[3:0]),
        .S({\sy_q[3]_i_2_n_0 ,\sy_q[3]_i_3_n_0 ,\sy_q[3]_i_4_n_0 ,\sy_q[3]_i_5_n_0 }));
  FDRE \sy_q_reg[4] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[4]),
        .Q(\sy_q_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \sy_q_reg[5] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[5]),
        .Q(\sy_q_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \sy_q_reg[6] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[6]),
        .Q(\sy_q_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \sy_q_reg[7] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[7]),
        .Q(\sy_q_reg_n_0_[7] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sy_q_reg[7]_i_1 
       (.CI(\sy_q_reg[3]_i_1_n_0 ),
        .CO({\sy_q_reg[7]_i_1_n_0 ,\sy_q_reg[7]_i_1_n_1 ,\sy_q_reg[7]_i_1_n_2 ,\sy_q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sy_q[7:4]),
        .S({sy[7],\sy_q[7]_i_3_n_0 ,\sy_q[7]_i_4_n_0 ,\sy_q[7]_i_5_n_0 }));
  FDRE \sy_q_reg[8] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[8]),
        .Q(\sy_q_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \sy_q_reg[9] 
       (.C(aclk),
        .CE(beat),
        .D(sy_q[9]),
        .Q(\sy_q_reg_n_0_[9] ),
        .R(p_0_in));
  FDRE usr_d1_reg
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(s_axis_tuser),
        .Q(usr_d1),
        .R(1'b0));
  FDRE usr_d2_reg
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(usr_d1),
        .Q(m_axis_tuser),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    vld_d1_i_1
       (.I0(vld_d1),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(aresetn),
        .O(vld_d1_i_1_n_0));
  FDRE vld_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vld_d1_i_1_n_0),
        .Q(vld_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    vld_d2_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(vld_d1),
        .I3(aresetn),
        .O(vld_d2_i_1_n_0));
  FDRE vld_d2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vld_d2_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    win_d1_i_1
       (.I0(win_d1_i_2_n_0),
        .I1(\sx_q_reg_n_0_[8] ),
        .I2(\sx_q_reg_n_0_[7] ),
        .I3(\sx_q_reg_n_0_[10] ),
        .I4(\sx_q_reg_n_0_[9] ),
        .I5(s_axis_tuser),
        .O(in_win));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    win_d1_i_2
       (.I0(\sy_q_reg_n_0_[8] ),
        .I1(\sy_q_reg_n_0_[9] ),
        .I2(\sx_q_reg_n_0_[11] ),
        .I3(\sy_q_reg_n_0_[7] ),
        .I4(\sy_q_reg_n_0_[11] ),
        .I5(\sy_q_reg_n_0_[10] ),
        .O(win_d1_i_2_n_0));
  FDRE win_d1_reg
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(in_win),
        .Q(win_d1),
        .R(1'b0));
  FDRE win_d2_reg
       (.C(aclk),
        .CE(rd_addr_q__0),
        .D(win_d1),
        .Q(win_d2),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_addr1_carry
       (.CI(1'b0),
        .CO({wr_addr1_carry_n_0,wr_addr1_carry_n_1,wr_addr1_carry_n_2,wr_addr1_carry_n_3}),
        .CYINIT(wr_addr_now[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({wr_addr1_carry_i_1_n_0,wr_addr1_carry_i_2_n_0,wr_addr1_carry_i_3_n_0,wr_addr1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_addr1_carry__0
       (.CI(wr_addr1_carry_n_0),
        .CO({wr_addr1_carry__0_n_0,wr_addr1_carry__0_n_1,wr_addr1_carry__0_n_2,wr_addr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({wr_addr1_carry__0_i_1_n_0,wr_addr1_carry__0_i_2_n_0,wr_addr1_carry__0_i_3_n_0,wr_addr1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__0_i_1
       (.I0(wr_addr[8]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__0_i_2
       (.I0(wr_addr[7]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__0_i_3
       (.I0(wr_addr[6]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__0_i_4
       (.I0(wr_addr[5]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_addr1_carry__1
       (.CI(wr_addr1_carry__0_n_0),
        .CO({wr_addr1_carry__1_n_0,wr_addr1_carry__1_n_1,wr_addr1_carry__1_n_2,wr_addr1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({wr_addr1_carry__1_i_1_n_0,wr_addr1_carry__1_i_2_n_0,wr_addr1_carry__1_i_3_n_0,wr_addr1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__1_i_1
       (.I0(wr_addr[12]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__1_i_2
       (.I0(wr_addr[11]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__1_i_3
       (.I0(wr_addr[10]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__1_i_4
       (.I0(wr_addr[9]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 wr_addr1_carry__2
       (.CI(wr_addr1_carry__1_n_0),
        .CO(NLW_wr_addr1_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_wr_addr1_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,wr_addr1_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry__2_i_1
       (.I0(wr_addr[13]),
        .I1(cap_tuser),
        .O(wr_addr1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry_i_1
       (.I0(wr_addr[4]),
        .I1(cap_tuser),
        .O(wr_addr1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry_i_2
       (.I0(wr_addr[3]),
        .I1(cap_tuser),
        .O(wr_addr1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry_i_3
       (.I0(wr_addr[2]),
        .I1(cap_tuser),
        .O(wr_addr1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_addr1_carry_i_4
       (.I0(wr_addr[1]),
        .I1(cap_tuser),
        .O(wr_addr1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \wr_addr[0]_i_1 
       (.I0(\wr_addr[13]_i_2_n_0 ),
        .I1(cap_tuser),
        .I2(wr_addr[0]),
        .O(\wr_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[10]_i_1 
       (.I0(data0[10]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[11]_i_1 
       (.I0(data0[11]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[12]_i_1 
       (.I0(data0[12]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[13]_i_1 
       (.I0(data0[13]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \wr_addr[13]_i_2 
       (.I0(\wr_addr[13]_i_3_n_0 ),
        .I1(wr_addr[12]),
        .I2(cap_tuser),
        .I3(wr_addr[13]),
        .I4(\wr_addr[13]_i_4_n_0 ),
        .I5(\wr_addr[13]_i_5_n_0 ),
        .O(\wr_addr[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \wr_addr[13]_i_3 
       (.I0(wr_addr[10]),
        .I1(wr_addr[11]),
        .I2(wr_addr[8]),
        .I3(cap_tuser),
        .I4(wr_addr[9]),
        .O(\wr_addr[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \wr_addr[13]_i_4 
       (.I0(wr_addr[2]),
        .I1(wr_addr[3]),
        .I2(wr_addr[0]),
        .I3(cap_tuser),
        .I4(wr_addr[1]),
        .O(\wr_addr[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \wr_addr[13]_i_5 
       (.I0(wr_addr[6]),
        .I1(wr_addr[7]),
        .I2(wr_addr[4]),
        .I3(cap_tuser),
        .I4(wr_addr[5]),
        .O(\wr_addr[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[1]_i_1 
       (.I0(data0[1]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[2]_i_1 
       (.I0(data0[2]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[3]_i_1 
       (.I0(data0[3]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[4]_i_1 
       (.I0(data0[4]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[5]_i_1 
       (.I0(data0[5]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[6]_i_1 
       (.I0(data0[6]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[7]_i_1 
       (.I0(data0[7]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[8]_i_1 
       (.I0(data0[8]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr[9]_i_1 
       (.I0(data0[9]),
        .I1(\wr_addr[13]_i_2_n_0 ),
        .O(\wr_addr[9]_i_1_n_0 ));
  FDRE \wr_addr_reg[0] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[0]_i_1_n_0 ),
        .Q(wr_addr[0]),
        .R(p_0_in));
  FDRE \wr_addr_reg[10] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[10]_i_1_n_0 ),
        .Q(wr_addr[10]),
        .R(p_0_in));
  FDRE \wr_addr_reg[11] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[11]_i_1_n_0 ),
        .Q(wr_addr[11]),
        .R(p_0_in));
  FDRE \wr_addr_reg[12] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[12]_i_1_n_0 ),
        .Q(wr_addr[12]),
        .R(p_0_in));
  FDRE \wr_addr_reg[13] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[13]_i_1_n_0 ),
        .Q(wr_addr[13]),
        .R(p_0_in));
  FDRE \wr_addr_reg[1] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[1]_i_1_n_0 ),
        .Q(wr_addr[1]),
        .R(p_0_in));
  FDRE \wr_addr_reg[2] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[2]_i_1_n_0 ),
        .Q(wr_addr[2]),
        .R(p_0_in));
  FDRE \wr_addr_reg[3] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[3]_i_1_n_0 ),
        .Q(wr_addr[3]),
        .R(p_0_in));
  FDRE \wr_addr_reg[4] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[4]_i_1_n_0 ),
        .Q(wr_addr[4]),
        .R(p_0_in));
  FDRE \wr_addr_reg[5] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[5]_i_1_n_0 ),
        .Q(wr_addr[5]),
        .R(p_0_in));
  FDRE \wr_addr_reg[6] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[6]_i_1_n_0 ),
        .Q(wr_addr[6]),
        .R(p_0_in));
  FDRE \wr_addr_reg[7] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[7]_i_1_n_0 ),
        .Q(wr_addr[7]),
        .R(p_0_in));
  FDRE \wr_addr_reg[8] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[8]_i_1_n_0 ),
        .Q(wr_addr[8]),
        .R(p_0_in));
  FDRE \wr_addr_reg[9] 
       (.C(aclk),
        .CE(cap_tvalid),
        .D(\wr_addr[9]_i_1_n_0 ),
        .Q(wr_addr[9]),
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
