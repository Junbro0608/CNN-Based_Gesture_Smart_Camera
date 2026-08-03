// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul 31 17:46:38 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/hw/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.v
// Design      : system_MIPI_CSI_2_RX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_MIPI_CSI_2_RX_0_0,mipi_csi2_rx_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mipi_csi2_rx_top,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_MIPI_CSI_2_RX_0_0
   (RxByteClkHS,
    aClkStopstate,
    aRxClkActiveHS,
    RxDataHSD0,
    RxSyncHSD0,
    RxValidHSD0,
    RxActiveHSD0,
    aD0Enable,
    RxDataHSD1,
    RxSyncHSD1,
    RxValidHSD1,
    RxActiveHSD1,
    aD1Enable,
    RxDataHSD2,
    RxSyncHSD2,
    RxValidHSD2,
    RxActiveHSD2,
    aD2Enable,
    RxDataHSD3,
    RxSyncHSD3,
    RxValidHSD3,
    RxActiveHSD3,
    aD3Enable,
    aClkEnable,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tlast,
    m_axis_video_tuser,
    video_aclk,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_aclk,
    s_axi_lite_aresetn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 RxByteClkHS CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME RxByteClkHS, ASSOCIATED_BUSIF rx_mipi_ppi, FREQ_HZ 84000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_MIPI_D_PHY_RX_0_0_RxByteClkHS, INSERT_VIP 0" *) input RxByteClkHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_STOPSTATE" *) input aClkStopstate;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_RXCLKACTIVEHS" *) input aRxClkActiveHS;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXDATAHS" *) input [7:0]RxDataHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXSYNCHS" *) input RxSyncHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXVALIDHS" *) input RxValidHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXACTIVEHS" *) input RxActiveHSD0;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_ENABLE" *) output aD0Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXDATAHS" *) input [7:0]RxDataHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXSYNCHS" *) input RxSyncHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXVALIDHS" *) input RxValidHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXACTIVEHS" *) input RxActiveHSD1;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_ENABLE" *) output aD1Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXDATAHS" *) input [7:0]RxDataHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXSYNCHS" *) input RxSyncHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXVALIDHS" *) input RxValidHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXACTIVEHS" *) input RxActiveHSD2;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_ENABLE" *) output aD2Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXDATAHS" *) input [7:0]RxDataHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXSYNCHS" *) input RxSyncHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXVALIDHS" *) input RxValidHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXACTIVEHS" *) input RxActiveHSD3;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_ENABLE" *) output aD3Enable;
  (* x_interface_info = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_ENABLE" *) output aClkEnable;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [39:0]m_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output m_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output [0:0]m_axis_video_tuser;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 video_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME video_aclk, ASSOCIATED_RESET video_aresetn, ASSOCIATED_BUSIF m_axis_video, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input video_aclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *) input [2:0]s_axi_lite_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]s_axi_lite_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [3:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *) input [2:0]s_axi_lite_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input s_axi_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_lite_aresetn;

  wire \<const0> ;
  wire RxActiveHSD0;
  wire RxActiveHSD1;
  wire RxByteClkHS;
  wire [7:0]RxDataHSD0;
  wire [7:0]RxDataHSD1;
  wire RxSyncHSD0;
  wire RxSyncHSD1;
  wire RxValidHSD0;
  wire RxValidHSD1;
  wire aClkEnable;
  wire aD0Enable;
  wire aD1Enable;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire video_aclk;
  wire NLW_U0_aD2Enable_UNCONNECTED;
  wire NLW_U0_aD3Enable_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_lite_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_lite_rresp_UNCONNECTED;

  assign aD2Enable = \<const0> ;
  assign aD3Enable = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_M_AXIS_COMPONENT_WIDTH = "10" *) 
  (* C_M_AXIS_TDATA_WIDTH = "40" *) 
  (* C_M_MAX_SAMPLES_PER_CLOCK = "4" *) 
  (* C_S_AXI_LITE_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
  (* kDebug = "FALSE" *) 
  (* kGenerateAXIL = "TRUE" *) 
  (* kLaneCount = "2" *) 
  (* kTargetDT = "RAW10" *) 
  (* kVersionMajor = "1" *) 
  (* kVersionMinor = "2" *) 
  system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top U0
       (.RxActiveHSD0(RxActiveHSD0),
        .RxActiveHSD1(RxActiveHSD1),
        .RxActiveHSD2(1'b0),
        .RxActiveHSD3(1'b0),
        .RxByteClkHS(RxByteClkHS),
        .RxDataHSD0(RxDataHSD0),
        .RxDataHSD1(RxDataHSD1),
        .RxDataHSD2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RxDataHSD3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RxSyncHSD0(RxSyncHSD0),
        .RxSyncHSD1(RxSyncHSD1),
        .RxSyncHSD2(1'b0),
        .RxSyncHSD3(1'b0),
        .RxValidHSD0(RxValidHSD0),
        .RxValidHSD1(RxValidHSD1),
        .RxValidHSD2(1'b0),
        .RxValidHSD3(1'b0),
        .aClkEnable(aClkEnable),
        .aClkStopstate(1'b0),
        .aD0Enable(aD0Enable),
        .aD1Enable(aD1Enable),
        .aD2Enable(NLW_U0_aD2Enable_UNCONNECTED),
        .aD3Enable(NLW_U0_aD3Enable_UNCONNECTED),
        .aRxClkActiveHS(1'b0),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr({s_axi_lite_araddr[3:2],1'b0,1'b0}),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arprot({1'b0,1'b0,1'b0}),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr({s_axi_lite_awaddr[3:2],1'b0,1'b0}),
        .s_axi_lite_awprot({1'b0,1'b0,1'b0}),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(NLW_U0_s_axi_lite_bresp_UNCONNECTED[1:0]),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(NLW_U0_s_axi_lite_rresp_UNCONNECTED[1:0]),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .video_aclk(video_aclk),
        .video_aresetn(1'b1));
endmodule

(* ORIG_REF_NAME = "ECC" *) 
module system_MIPI_CSI_2_RX_0_0_ECC
   (sValid_reg_0,
    sError_reg_0,
    Q,
    \FSM_onehot_sState_reg[3]_0 ,
    \sHeaderOut_reg[5]_0 ,
    mReg_Tuser0,
    m_axis_tready,
    \goreg_dm.dout_i_reg[0] ,
    mIsHeader0,
    mKeep0_out,
    O,
    sValid_reg_1,
    sValid_reg_2,
    sValid_reg_3,
    \sErrSyndrome_reg[0]_0 ,
    \sErrSyndrome_reg[4]_0 ,
    sValid_reg_4,
    video_aclk,
    sError_reg_1,
    \mWordCount_reg[3] ,
    \mWordCount_reg[3]_0 ,
    \mWordCount_reg[7] ,
    \mWordCount_reg[7]_0 ,
    \mWordCount_reg[7]_1 ,
    \mWordCount_reg[7]_2 ,
    \mWordCount_reg[11] ,
    \mWordCount_reg[11]_0 ,
    \mWordCount_reg[11]_1 ,
    \mWordCount_reg[11]_2 ,
    \mWordCount_reg[15] ,
    \mWordCount_reg[15]_0 ,
    \mWordCount_reg[15]_1 ,
    m_axis_tkeep,
    m_axis_tvalid,
    \sECCIn_reg[0]_0 ,
    \mWordCount_reg[0] ,
    s_axis_tready,
    mFlush_reg,
    mFlush_reg_0,
    m_axis_tlast,
    out,
    \mWordCount_reg[15]_2 ,
    \mWordCount_reg[3]_1 ,
    \mWordCount_reg[3]_2 ,
    D);
  output sValid_reg_0;
  output sError_reg_0;
  output [3:0]Q;
  output [0:0]\FSM_onehot_sState_reg[3]_0 ;
  output \sHeaderOut_reg[5]_0 ;
  output mReg_Tuser0;
  output m_axis_tready;
  output \goreg_dm.dout_i_reg[0] ;
  output mIsHeader0;
  output mKeep0_out;
  output [3:0]O;
  output [3:0]sValid_reg_1;
  output [3:0]sValid_reg_2;
  output [3:0]sValid_reg_3;
  output \sErrSyndrome_reg[0]_0 ;
  output \sErrSyndrome_reg[4]_0 ;
  input sValid_reg_4;
  input video_aclk;
  input sError_reg_1;
  input \mWordCount_reg[3] ;
  input \mWordCount_reg[3]_0 ;
  input \mWordCount_reg[7] ;
  input \mWordCount_reg[7]_0 ;
  input \mWordCount_reg[7]_1 ;
  input \mWordCount_reg[7]_2 ;
  input \mWordCount_reg[11] ;
  input \mWordCount_reg[11]_0 ;
  input \mWordCount_reg[11]_1 ;
  input \mWordCount_reg[11]_2 ;
  input \mWordCount_reg[15] ;
  input \mWordCount_reg[15]_0 ;
  input \mWordCount_reg[15]_1 ;
  input [3:0]m_axis_tkeep;
  input m_axis_tvalid;
  input \sECCIn_reg[0]_0 ;
  input \mWordCount_reg[0] ;
  input s_axis_tready;
  input mFlush_reg;
  input mFlush_reg_0;
  input m_axis_tlast;
  input [0:0]out;
  input \mWordCount_reg[15]_2 ;
  input \mWordCount_reg[3]_1 ;
  input \mWordCount_reg[3]_2 ;
  input [29:0]D;

  wire [29:0]D;
  wire \FSM_onehot_sState[1]_i_1_n_0 ;
  wire \FSM_onehot_sState[3]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_sState_reg[3]_0 ;
  wire \FSM_onehot_sState_reg_n_0_[0] ;
  wire \FSM_onehot_sState_reg_n_0_[1] ;
  wire [3:0]O;
  wire [3:0]Q;
  wire \goreg_dm.dout_i_reg[0] ;
  wire mFlush_i_2_n_0;
  wire mFlush_reg;
  wire mFlush_reg_0;
  wire mIsHeader0;
  wire mKeep0_out;
  wire mKeep_i_3_n_0;
  wire mReg_Tuser0;
  wire \mReg_Tuser[0]_i_3_n_0 ;
  wire \mWordCount[0]_i_10_n_0 ;
  wire \mWordCount[0]_i_11_n_0 ;
  wire \mWordCount[0]_i_4_n_0 ;
  wire \mWordCount[0]_i_5_n_0 ;
  wire \mWordCount[0]_i_6_n_0 ;
  wire \mWordCount[0]_i_7_n_0 ;
  wire \mWordCount[0]_i_8_n_0 ;
  wire \mWordCount[0]_i_9_n_0 ;
  wire \mWordCount[12]_i_2_n_0 ;
  wire \mWordCount[12]_i_3_n_0 ;
  wire \mWordCount[12]_i_4_n_0 ;
  wire \mWordCount[12]_i_5_n_0 ;
  wire \mWordCount[12]_i_6_n_0 ;
  wire \mWordCount[12]_i_7_n_0 ;
  wire \mWordCount[12]_i_8_n_0 ;
  wire \mWordCount[4]_i_2_n_0 ;
  wire \mWordCount[4]_i_3_n_0 ;
  wire \mWordCount[4]_i_4_n_0 ;
  wire \mWordCount[4]_i_5_n_0 ;
  wire \mWordCount[4]_i_6_n_0 ;
  wire \mWordCount[4]_i_7_n_0 ;
  wire \mWordCount[4]_i_8_n_0 ;
  wire \mWordCount[4]_i_9_n_0 ;
  wire \mWordCount[8]_i_2_n_0 ;
  wire \mWordCount[8]_i_3_n_0 ;
  wire \mWordCount[8]_i_4_n_0 ;
  wire \mWordCount[8]_i_5_n_0 ;
  wire \mWordCount[8]_i_6_n_0 ;
  wire \mWordCount[8]_i_7_n_0 ;
  wire \mWordCount[8]_i_8_n_0 ;
  wire \mWordCount[8]_i_9_n_0 ;
  wire \mWordCount_reg[0] ;
  wire \mWordCount_reg[0]_i_2_n_0 ;
  wire \mWordCount_reg[0]_i_2_n_1 ;
  wire \mWordCount_reg[0]_i_2_n_2 ;
  wire \mWordCount_reg[0]_i_2_n_3 ;
  wire \mWordCount_reg[11] ;
  wire \mWordCount_reg[11]_0 ;
  wire \mWordCount_reg[11]_1 ;
  wire \mWordCount_reg[11]_2 ;
  wire \mWordCount_reg[12]_i_1_n_1 ;
  wire \mWordCount_reg[12]_i_1_n_2 ;
  wire \mWordCount_reg[12]_i_1_n_3 ;
  wire \mWordCount_reg[15] ;
  wire \mWordCount_reg[15]_0 ;
  wire \mWordCount_reg[15]_1 ;
  wire \mWordCount_reg[15]_2 ;
  wire \mWordCount_reg[3] ;
  wire \mWordCount_reg[3]_0 ;
  wire \mWordCount_reg[3]_1 ;
  wire \mWordCount_reg[3]_2 ;
  wire \mWordCount_reg[4]_i_1_n_0 ;
  wire \mWordCount_reg[4]_i_1_n_1 ;
  wire \mWordCount_reg[4]_i_1_n_2 ;
  wire \mWordCount_reg[4]_i_1_n_3 ;
  wire \mWordCount_reg[7] ;
  wire \mWordCount_reg[7]_0 ;
  wire \mWordCount_reg[7]_1 ;
  wire \mWordCount_reg[7]_2 ;
  wire \mWordCount_reg[8]_i_1_n_0 ;
  wire \mWordCount_reg[8]_i_1_n_1 ;
  wire \mWordCount_reg[8]_i_1_n_2 ;
  wire \mWordCount_reg[8]_i_1_n_3 ;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [0:0]out;
  wire [29:0]p_1_in;
  wire \sDataIn[23]_i_1_n_0 ;
  wire \sECCIn_reg[0]_0 ;
  wire sErrSyndrome;
  wire [5:0]sErrSyndrome0;
  wire \sErrSyndrome[0]_i_2_n_0 ;
  wire \sErrSyndrome[1]_i_2_n_0 ;
  wire \sErrSyndrome[1]_i_3_n_0 ;
  wire \sErrSyndrome[2]_i_2_n_0 ;
  wire \sErrSyndrome[2]_i_3_n_0 ;
  wire \sErrSyndrome[3]_i_2_n_0 ;
  wire \sErrSyndrome[3]_i_3_n_0 ;
  wire \sErrSyndrome[4]_i_2_n_0 ;
  wire \sErrSyndrome[4]_i_3_n_0 ;
  wire \sErrSyndrome[5]_i_2_n_0 ;
  wire \sErrSyndrome[5]_i_3_n_0 ;
  wire \sErrSyndrome_reg[0]_0 ;
  wire \sErrSyndrome_reg[4]_0 ;
  wire \sErrSyndrome_reg_n_0_[4] ;
  wire \sErrSyndrome_reg_n_0_[5] ;
  wire sError_reg_0;
  wire sError_reg_1;
  wire \sHeaderOut[0]_i_1_n_0 ;
  wire \sHeaderOut[10]_i_1_n_0 ;
  wire \sHeaderOut[11]_i_1_n_0 ;
  wire \sHeaderOut[12]_i_1_n_0 ;
  wire \sHeaderOut[13]_i_1_n_0 ;
  wire \sHeaderOut[14]_i_1_n_0 ;
  wire \sHeaderOut[15]_i_1_n_0 ;
  wire \sHeaderOut[16]_i_1_n_0 ;
  wire \sHeaderOut[17]_i_1_n_0 ;
  wire \sHeaderOut[18]_i_1_n_0 ;
  wire \sHeaderOut[19]_i_1_n_0 ;
  wire \sHeaderOut[1]_i_1_n_0 ;
  wire \sHeaderOut[20]_i_1_n_0 ;
  wire \sHeaderOut[21]_i_1_n_0 ;
  wire \sHeaderOut[22]_i_1_n_0 ;
  wire \sHeaderOut[23]_i_1_n_0 ;
  wire \sHeaderOut[23]_i_2_n_0 ;
  wire \sHeaderOut[23]_i_3_n_0 ;
  wire \sHeaderOut[23]_i_4_n_0 ;
  wire \sHeaderOut[23]_i_5_n_0 ;
  wire \sHeaderOut[23]_i_6_n_0 ;
  wire \sHeaderOut[2]_i_1_n_0 ;
  wire \sHeaderOut[3]_i_1_n_0 ;
  wire \sHeaderOut[4]_i_1_n_0 ;
  wire \sHeaderOut[5]_i_1_n_0 ;
  wire \sHeaderOut[8]_i_1_n_0 ;
  wire \sHeaderOut[9]_i_1_n_0 ;
  wire \sHeaderOut[9]_i_2_n_0 ;
  wire \sHeaderOut[9]_i_3_n_0 ;
  wire \sHeaderOut_reg[5]_0 ;
  wire \sHeaderOut_reg_n_0_[0] ;
  wire \sHeaderOut_reg_n_0_[10] ;
  wire \sHeaderOut_reg_n_0_[11] ;
  wire \sHeaderOut_reg_n_0_[12] ;
  wire \sHeaderOut_reg_n_0_[13] ;
  wire \sHeaderOut_reg_n_0_[14] ;
  wire \sHeaderOut_reg_n_0_[15] ;
  wire \sHeaderOut_reg_n_0_[16] ;
  wire \sHeaderOut_reg_n_0_[17] ;
  wire \sHeaderOut_reg_n_0_[18] ;
  wire \sHeaderOut_reg_n_0_[19] ;
  wire \sHeaderOut_reg_n_0_[1] ;
  wire \sHeaderOut_reg_n_0_[20] ;
  wire \sHeaderOut_reg_n_0_[21] ;
  wire \sHeaderOut_reg_n_0_[22] ;
  wire \sHeaderOut_reg_n_0_[23] ;
  wire \sHeaderOut_reg_n_0_[2] ;
  wire \sHeaderOut_reg_n_0_[3] ;
  wire \sHeaderOut_reg_n_0_[4] ;
  wire \sHeaderOut_reg_n_0_[5] ;
  wire \sHeaderOut_reg_n_0_[8] ;
  wire \sHeaderOut_reg_n_0_[9] ;
  wire sValid_reg_0;
  wire [3:0]sValid_reg_1;
  wire [3:0]sValid_reg_2;
  wire [3:0]sValid_reg_3;
  wire sValid_reg_4;
  wire s_axis_tready;
  wire video_aclk;
  wire [3:3]\NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF80FFFFFF808080)) 
    DataFIFO_i_2
       (.I0(\FSM_onehot_sState_reg_n_0_[1] ),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(m_axis_tvalid),
        .I3(s_axis_tready),
        .I4(mFlush_reg),
        .I5(mFlush_reg_0),
        .O(m_axis_tready));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_sState[1]_i_1 
       (.I0(\FSM_onehot_sState_reg[3]_0 ),
        .I1(\FSM_onehot_sState_reg_n_0_[0] ),
        .O(\FSM_onehot_sState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \FSM_onehot_sState[3]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(\FSM_onehot_sState_reg_n_0_[1] ),
        .I3(\FSM_onehot_sState_reg[3]_0 ),
        .I4(\FSM_onehot_sState_reg_n_0_[0] ),
        .I5(sErrSyndrome),
        .O(\FSM_onehot_sState[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sState_reg[0] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_sState_reg_n_0_[0] ),
        .S(out));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sState_reg[1] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(\FSM_onehot_sState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sState_reg_n_0_[1] ),
        .R(out));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sState_reg[2] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(\FSM_onehot_sState_reg_n_0_[1] ),
        .Q(sErrSyndrome),
        .R(out));
  (* FSM_ENCODED_STATES = "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sState_reg[3] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState[3]_i_1_n_0 ),
        .D(sErrSyndrome),
        .Q(\FSM_onehot_sState_reg[3]_0 ),
        .R(out));
  LUT6 #(
    .INIT(64'h0000000077770007)) 
    mFlush_i_1
       (.I0(mIsHeader0),
        .I1(m_axis_tlast),
        .I2(mFlush_i_2_n_0),
        .I3(\sECCIn_reg[0]_0 ),
        .I4(mFlush_reg_0),
        .I5(out),
        .O(\goreg_dm.dout_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    mFlush_i_2
       (.I0(sValid_reg_0),
        .I1(sError_reg_0),
        .O(mFlush_i_2_n_0));
  LUT6 #(
    .INIT(64'hF080F0F0F0808080)) 
    mIsHeader_i_2
       (.I0(\FSM_onehot_sState_reg_n_0_[1] ),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(m_axis_tvalid),
        .I3(s_axis_tready),
        .I4(mFlush_reg),
        .I5(mFlush_reg_0),
        .O(mIsHeader0));
  LUT4 #(
    .INIT(16'h0010)) 
    mKeep_i_2
       (.I0(\sHeaderOut_reg_n_0_[4] ),
        .I1(\sHeaderOut_reg_n_0_[2] ),
        .I2(\sHeaderOut_reg_n_0_[0] ),
        .I3(mKeep_i_3_n_0),
        .O(mKeep0_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mKeep_i_3
       (.I0(\sHeaderOut_reg_n_0_[5] ),
        .I1(sValid_reg_0),
        .I2(\sHeaderOut_reg_n_0_[3] ),
        .I3(\sHeaderOut_reg_n_0_[1] ),
        .O(mKeep_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \mReg_Tuser[0]_i_2 
       (.I0(\sHeaderOut_reg_n_0_[2] ),
        .I1(sValid_reg_0),
        .I2(\sHeaderOut_reg_n_0_[0] ),
        .I3(\sHeaderOut_reg_n_0_[1] ),
        .I4(\sHeaderOut_reg_n_0_[3] ),
        .I5(\mReg_Tuser[0]_i_3_n_0 ),
        .O(mReg_Tuser0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mReg_Tuser[0]_i_3 
       (.I0(\sHeaderOut_reg_n_0_[5] ),
        .I1(\sHeaderOut_reg_n_0_[4] ),
        .O(\mReg_Tuser[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE0E0EFE0)) 
    \mWordCount[0]_i_1 
       (.I0(\sHeaderOut_reg_n_0_[5] ),
        .I1(\sHeaderOut_reg_n_0_[4] ),
        .I2(sValid_reg_0),
        .I3(m_axis_tkeep[0]),
        .I4(\mWordCount_reg[0] ),
        .O(\sHeaderOut_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hFFFF807F0000807F)) 
    \mWordCount[0]_i_10 
       (.I0(m_axis_tkeep[2]),
        .I1(m_axis_tkeep[1]),
        .I2(m_axis_tkeep[0]),
        .I3(\mWordCount_reg[3]_2 ),
        .I4(sValid_reg_0),
        .I5(\sHeaderOut_reg_n_0_[9] ),
        .O(\mWordCount[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \mWordCount[0]_i_11 
       (.I0(\mWordCount[0]_i_7_n_0 ),
        .I1(\mWordCount_reg[3]_1 ),
        .I2(sValid_reg_0),
        .I3(\sHeaderOut_reg_n_0_[8] ),
        .O(\mWordCount[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[0]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[0]_i_5 
       (.I0(sValid_reg_0),
        .O(\mWordCount[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1555)) 
    \mWordCount[0]_i_6 
       (.I0(sValid_reg_0),
        .I1(m_axis_tkeep[0]),
        .I2(m_axis_tkeep[1]),
        .I3(m_axis_tkeep[2]),
        .O(\mWordCount[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h04555555)) 
    \mWordCount[0]_i_7 
       (.I0(sValid_reg_0),
        .I1(m_axis_tkeep[2]),
        .I2(m_axis_tkeep[3]),
        .I3(m_axis_tkeep[0]),
        .I4(m_axis_tkeep[1]),
        .O(\mWordCount[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[0]_i_8 
       (.I0(\mWordCount_reg[3]_0 ),
        .I1(\sHeaderOut_reg_n_0_[11] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[0]_i_9 
       (.I0(\mWordCount_reg[3] ),
        .I1(\sHeaderOut_reg_n_0_[10] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[12]_i_2 
       (.I0(sValid_reg_0),
        .O(\mWordCount[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[12]_i_3 
       (.I0(sValid_reg_0),
        .O(\mWordCount[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[12]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \mWordCount[12]_i_5 
       (.I0(\sHeaderOut_reg_n_0_[23] ),
        .I1(\mWordCount_reg[15]_2 ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[12]_i_6 
       (.I0(\mWordCount_reg[15]_1 ),
        .I1(\sHeaderOut_reg_n_0_[22] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[12]_i_7 
       (.I0(\mWordCount_reg[15]_0 ),
        .I1(\sHeaderOut_reg_n_0_[21] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[12]_i_8 
       (.I0(\mWordCount_reg[15] ),
        .I1(\sHeaderOut_reg_n_0_[20] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_2 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_3 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[4]_i_5 
       (.I0(sValid_reg_0),
        .O(\mWordCount[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_6 
       (.I0(\mWordCount_reg[7]_2 ),
        .I1(\sHeaderOut_reg_n_0_[15] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_7 
       (.I0(\mWordCount_reg[7]_1 ),
        .I1(\sHeaderOut_reg_n_0_[14] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_8 
       (.I0(\mWordCount_reg[7]_0 ),
        .I1(\sHeaderOut_reg_n_0_[13] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[4]_i_9 
       (.I0(\mWordCount_reg[7] ),
        .I1(\sHeaderOut_reg_n_0_[12] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_2 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_3 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_4 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mWordCount[8]_i_5 
       (.I0(sValid_reg_0),
        .O(\mWordCount[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_6 
       (.I0(\mWordCount_reg[11]_2 ),
        .I1(\sHeaderOut_reg_n_0_[19] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_7 
       (.I0(\mWordCount_reg[11]_1 ),
        .I1(\sHeaderOut_reg_n_0_[18] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_8 
       (.I0(\mWordCount_reg[11]_0 ),
        .I1(\sHeaderOut_reg_n_0_[17] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \mWordCount[8]_i_9 
       (.I0(\mWordCount_reg[11] ),
        .I1(\sHeaderOut_reg_n_0_[16] ),
        .I2(sValid_reg_0),
        .O(\mWordCount[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\mWordCount_reg[0]_i_2_n_0 ,\mWordCount_reg[0]_i_2_n_1 ,\mWordCount_reg[0]_i_2_n_2 ,\mWordCount_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\mWordCount[0]_i_4_n_0 ,\mWordCount[0]_i_5_n_0 ,\mWordCount[0]_i_6_n_0 ,\mWordCount[0]_i_7_n_0 }),
        .O(O),
        .S({\mWordCount[0]_i_8_n_0 ,\mWordCount[0]_i_9_n_0 ,\mWordCount[0]_i_10_n_0 ,\mWordCount[0]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[12]_i_1 
       (.CI(\mWordCount_reg[8]_i_1_n_0 ),
        .CO({\NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED [3],\mWordCount_reg[12]_i_1_n_1 ,\mWordCount_reg[12]_i_1_n_2 ,\mWordCount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\mWordCount[12]_i_2_n_0 ,\mWordCount[12]_i_3_n_0 ,\mWordCount[12]_i_4_n_0 }),
        .O(sValid_reg_3),
        .S({\mWordCount[12]_i_5_n_0 ,\mWordCount[12]_i_6_n_0 ,\mWordCount[12]_i_7_n_0 ,\mWordCount[12]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[4]_i_1 
       (.CI(\mWordCount_reg[0]_i_2_n_0 ),
        .CO({\mWordCount_reg[4]_i_1_n_0 ,\mWordCount_reg[4]_i_1_n_1 ,\mWordCount_reg[4]_i_1_n_2 ,\mWordCount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mWordCount[4]_i_2_n_0 ,\mWordCount[4]_i_3_n_0 ,\mWordCount[4]_i_4_n_0 ,\mWordCount[4]_i_5_n_0 }),
        .O(sValid_reg_1),
        .S({\mWordCount[4]_i_6_n_0 ,\mWordCount[4]_i_7_n_0 ,\mWordCount[4]_i_8_n_0 ,\mWordCount[4]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mWordCount_reg[8]_i_1 
       (.CI(\mWordCount_reg[4]_i_1_n_0 ),
        .CO({\mWordCount_reg[8]_i_1_n_0 ,\mWordCount_reg[8]_i_1_n_1 ,\mWordCount_reg[8]_i_1_n_2 ,\mWordCount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\mWordCount[8]_i_2_n_0 ,\mWordCount[8]_i_3_n_0 ,\mWordCount[8]_i_4_n_0 ,\mWordCount[8]_i_5_n_0 }),
        .O(sValid_reg_2),
        .S({\mWordCount[8]_i_6_n_0 ,\mWordCount[8]_i_7_n_0 ,\mWordCount[8]_i_8_n_0 ,\mWordCount[8]_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h80)) 
    \sDataIn[23]_i_1 
       (.I0(\FSM_onehot_sState_reg_n_0_[1] ),
        .I1(\sECCIn_reg[0]_0 ),
        .I2(m_axis_tvalid),
        .O(\sDataIn[23]_i_1_n_0 ));
  FDRE \sDataIn_reg[0] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \sDataIn_reg[10] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \sDataIn_reg[11] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \sDataIn_reg[12] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \sDataIn_reg[13] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \sDataIn_reg[14] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE \sDataIn_reg[15] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE \sDataIn_reg[16] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[16]),
        .Q(p_1_in[16]),
        .R(1'b0));
  FDRE \sDataIn_reg[17] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[17]),
        .Q(p_1_in[17]),
        .R(1'b0));
  FDRE \sDataIn_reg[18] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[18]),
        .Q(p_1_in[18]),
        .R(1'b0));
  FDRE \sDataIn_reg[19] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[19]),
        .Q(p_1_in[19]),
        .R(1'b0));
  FDRE \sDataIn_reg[1] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \sDataIn_reg[20] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[20]),
        .Q(p_1_in[20]),
        .R(1'b0));
  FDRE \sDataIn_reg[21] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[21]),
        .Q(p_1_in[21]),
        .R(1'b0));
  FDRE \sDataIn_reg[22] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[22]),
        .Q(p_1_in[22]),
        .R(1'b0));
  FDRE \sDataIn_reg[23] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[23]),
        .Q(p_1_in[23]),
        .R(1'b0));
  FDRE \sDataIn_reg[2] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \sDataIn_reg[3] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \sDataIn_reg[4] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \sDataIn_reg[5] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \sDataIn_reg[6] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \sDataIn_reg[7] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \sDataIn_reg[8] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \sDataIn_reg[9] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \sECCIn_reg[0] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[24]),
        .Q(p_1_in[24]),
        .R(1'b0));
  FDRE \sECCIn_reg[1] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[25]),
        .Q(p_1_in[25]),
        .R(1'b0));
  FDRE \sECCIn_reg[2] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[26]),
        .Q(p_1_in[26]),
        .R(1'b0));
  FDRE \sECCIn_reg[3] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[27]),
        .Q(p_1_in[27]),
        .R(1'b0));
  FDRE \sECCIn_reg[4] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[28]),
        .Q(p_1_in[28]),
        .R(1'b0));
  FDRE \sECCIn_reg[5] 
       (.C(video_aclk),
        .CE(\sDataIn[23]_i_1_n_0 ),
        .D(D[29]),
        .Q(p_1_in[29]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \sErrSyndrome[0]_i_1 
       (.I0(\sErrSyndrome[1]_i_2_n_0 ),
        .I1(\sErrSyndrome[0]_i_2_n_0 ),
        .I2(p_1_in[11]),
        .I3(p_1_in[24]),
        .I4(p_1_in[2]),
        .O(sErrSyndrome0[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[0]_i_2 
       (.I0(p_1_in[13]),
        .I1(p_1_in[7]),
        .I2(p_1_in[21]),
        .I3(p_1_in[22]),
        .I4(p_1_in[16]),
        .I5(p_1_in[5]),
        .O(\sErrSyndrome[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \sErrSyndrome[1]_i_1 
       (.I0(\sErrSyndrome[1]_i_2_n_0 ),
        .I1(\sErrSyndrome[1]_i_3_n_0 ),
        .I2(p_1_in[14]),
        .I3(p_1_in[25]),
        .I4(p_1_in[12]),
        .O(sErrSyndrome0[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[1]_i_2 
       (.I0(p_1_in[20]),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .I3(p_1_in[10]),
        .I4(p_1_in[23]),
        .I5(p_1_in[4]),
        .O(\sErrSyndrome[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[1]_i_3 
       (.I0(p_1_in[17]),
        .I1(p_1_in[8]),
        .I2(p_1_in[21]),
        .I3(p_1_in[22]),
        .I4(p_1_in[6]),
        .I5(p_1_in[3]),
        .O(\sErrSyndrome[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[2]_i_1 
       (.I0(\sErrSyndrome[2]_i_2_n_0 ),
        .I1(\sErrSyndrome[2]_i_3_n_0 ),
        .I2(p_1_in[26]),
        .I3(p_1_in[21]),
        .O(sErrSyndrome0[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[2]_i_2 
       (.I0(p_1_in[18]),
        .I1(p_1_in[15]),
        .I2(p_1_in[0]),
        .I3(p_1_in[2]),
        .I4(p_1_in[22]),
        .I5(p_1_in[20]),
        .O(\sErrSyndrome[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[2]_i_3 
       (.I0(p_1_in[11]),
        .I1(p_1_in[12]),
        .I2(p_1_in[3]),
        .I3(p_1_in[9]),
        .I4(p_1_in[5]),
        .I5(p_1_in[6]),
        .O(\sErrSyndrome[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[3]_i_1 
       (.I0(\sErrSyndrome[3]_i_2_n_0 ),
        .I1(\sErrSyndrome[3]_i_3_n_0 ),
        .I2(p_1_in[27]),
        .I3(p_1_in[19]),
        .O(sErrSyndrome0[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[3]_i_2 
       (.I0(p_1_in[20]),
        .I1(p_1_in[1]),
        .I2(p_1_in[7]),
        .I3(p_1_in[14]),
        .I4(p_1_in[23]),
        .I5(p_1_in[2]),
        .O(\sErrSyndrome[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[3]_i_3 
       (.I0(p_1_in[13]),
        .I1(p_1_in[8]),
        .I2(p_1_in[21]),
        .I3(p_1_in[15]),
        .I4(p_1_in[3]),
        .I5(p_1_in[9]),
        .O(\sErrSyndrome[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[4]_i_1 
       (.I0(\sErrSyndrome[4]_i_2_n_0 ),
        .I1(\sErrSyndrome[4]_i_3_n_0 ),
        .I2(p_1_in[28]),
        .I3(p_1_in[20]),
        .O(sErrSyndrome0[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[4]_i_2 
       (.I0(p_1_in[4]),
        .I1(p_1_in[23]),
        .I2(p_1_in[16]),
        .I3(p_1_in[5]),
        .I4(p_1_in[7]),
        .I5(p_1_in[8]),
        .O(\sErrSyndrome[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[4]_i_3 
       (.I0(p_1_in[6]),
        .I1(p_1_in[17]),
        .I2(p_1_in[22]),
        .I3(p_1_in[19]),
        .I4(p_1_in[9]),
        .I5(p_1_in[18]),
        .O(\sErrSyndrome[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sErrSyndrome[5]_i_1 
       (.I0(\sErrSyndrome[5]_i_2_n_0 ),
        .I1(\sErrSyndrome[5]_i_3_n_0 ),
        .I2(p_1_in[29]),
        .I3(p_1_in[23]),
        .O(sErrSyndrome0[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[5]_i_2 
       (.I0(p_1_in[12]),
        .I1(p_1_in[10]),
        .I2(p_1_in[13]),
        .I3(p_1_in[16]),
        .I4(p_1_in[11]),
        .I5(p_1_in[14]),
        .O(\sErrSyndrome[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \sErrSyndrome[5]_i_3 
       (.I0(p_1_in[21]),
        .I1(p_1_in[17]),
        .I2(p_1_in[22]),
        .I3(p_1_in[19]),
        .I4(p_1_in[15]),
        .I5(p_1_in[18]),
        .O(\sErrSyndrome[5]_i_3_n_0 ));
  FDRE \sErrSyndrome_reg[0] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[1] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[2] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[3] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[4] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[4]),
        .Q(\sErrSyndrome_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \sErrSyndrome_reg[5] 
       (.C(video_aclk),
        .CE(sErrSyndrome),
        .D(sErrSyndrome0[5]),
        .Q(\sErrSyndrome_reg_n_0_[5] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    sError_i_2
       (.I0(\sErrSyndrome_reg_n_0_[4] ),
        .I1(\sErrSyndrome_reg_n_0_[5] ),
        .O(\sErrSyndrome_reg[4]_0 ));
  FDRE sError_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(sError_reg_1),
        .Q(sError_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \sHeaderOut[0]_i_1 
       (.I0(\sHeaderOut[9]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(\sHeaderOut[9]_i_2_n_0 ),
        .I5(p_1_in[0]),
        .O(\sHeaderOut[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \sHeaderOut[10]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[10]),
        .O(\sHeaderOut[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    \sHeaderOut[11]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[11]),
        .O(\sHeaderOut[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    \sHeaderOut[12]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[12]),
        .O(\sHeaderOut[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00001000)) 
    \sHeaderOut[13]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[13]),
        .O(\sHeaderOut[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FF00000800)) 
    \sHeaderOut[14]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[14]),
        .O(\sHeaderOut[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    \sHeaderOut[15]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[15]),
        .O(\sHeaderOut[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    \sHeaderOut[16]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[16]),
        .O(\sHeaderOut[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000100)) 
    \sHeaderOut[17]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[17]),
        .O(\sHeaderOut[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    \sHeaderOut[18]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[18]),
        .O(\sHeaderOut[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    \sHeaderOut[19]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[19]),
        .O(\sHeaderOut[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00010000)) 
    \sHeaderOut[1]_i_1 
       (.I0(\sHeaderOut[9]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(\sHeaderOut[9]_i_2_n_0 ),
        .I5(p_1_in[1]),
        .O(\sHeaderOut[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    \sHeaderOut[20]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[20]),
        .O(\sHeaderOut[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    \sHeaderOut[21]_i_1 
       (.I0(\sHeaderOut[23]_i_3_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[21]),
        .O(\sHeaderOut[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700000008)) 
    \sHeaderOut[22]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[22]),
        .O(\sHeaderOut[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000004)) 
    \sHeaderOut[23]_i_1 
       (.I0(\sHeaderOut[23]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_4_n_0 ),
        .I3(\sHeaderOut[23]_i_5_n_0 ),
        .I4(\sHeaderOut[23]_i_6_n_0 ),
        .I5(p_1_in[23]),
        .O(\sHeaderOut[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0092044984492196)) 
    \sHeaderOut[23]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\sErrSyndrome_reg_n_0_[4] ),
        .I5(\sErrSyndrome_reg_n_0_[5] ),
        .O(\sHeaderOut[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9FEDEBD6FDBEDE68)) 
    \sHeaderOut[23]_i_3 
       (.I0(\sErrSyndrome_reg_n_0_[4] ),
        .I1(\sErrSyndrome_reg_n_0_[5] ),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\sHeaderOut[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0810120886206080)) 
    \sHeaderOut[23]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\sErrSyndrome_reg_n_0_[5] ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sErrSyndrome_reg_n_0_[4] ),
        .O(\sHeaderOut[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h977DFF96FF96D668)) 
    \sHeaderOut[23]_i_5 
       (.I0(\sErrSyndrome_reg_n_0_[4] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\sErrSyndrome_reg_n_0_[5] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\sHeaderOut[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD77B7BB6FBB6B668)) 
    \sHeaderOut[23]_i_6 
       (.I0(Q[0]),
        .I1(\sErrSyndrome_reg_n_0_[5] ),
        .I2(Q[3]),
        .I3(\sErrSyndrome_reg_n_0_[4] ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\sHeaderOut[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \sHeaderOut[2]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[2]),
        .O(\sHeaderOut[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \sHeaderOut[3]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_2_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[3]),
        .O(\sHeaderOut[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \sHeaderOut[4]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_2_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[4]),
        .O(\sHeaderOut[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \sHeaderOut[5]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[23]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_2_n_0 ),
        .I3(\sHeaderOut[9]_i_3_n_0 ),
        .I4(p_1_in[5]),
        .O(\sHeaderOut[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \sHeaderOut[8]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[9]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(p_1_in[8]),
        .O(\sHeaderOut[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \sHeaderOut[9]_i_1 
       (.I0(\sHeaderOut[9]_i_2_n_0 ),
        .I1(\sHeaderOut[9]_i_3_n_0 ),
        .I2(\sHeaderOut[23]_i_3_n_0 ),
        .I3(\sHeaderOut[23]_i_2_n_0 ),
        .I4(p_1_in[9]),
        .O(\sHeaderOut[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEB9FFFFF977F)) 
    \sHeaderOut[9]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\sErrSyndrome_reg_n_0_[4] ),
        .I3(Q[3]),
        .I4(\sErrSyndrome_reg_n_0_[5] ),
        .I5(Q[0]),
        .O(\sHeaderOut[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0890926996616197)) 
    \sHeaderOut[9]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\sErrSyndrome_reg_n_0_[5] ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\sErrSyndrome_reg_n_0_[4] ),
        .O(\sHeaderOut[9]_i_3_n_0 ));
  FDRE \sHeaderOut_reg[0] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[0]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[10] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[10]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[11] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[11]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[12] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[12]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[13] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[13]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[14] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[14]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[15] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[15]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[16] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[16]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[17] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[17]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[18] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[18]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[19] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[19]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[1] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[1]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[20] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[20]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[21] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[21]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[22] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[22]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[23] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[23]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[2] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[2]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[3] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[3]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[4] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[4]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[5] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[5]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[8] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[8]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \sHeaderOut_reg[9] 
       (.C(video_aclk),
        .CE(\FSM_onehot_sState_reg[3]_0 ),
        .D(\sHeaderOut[9]_i_1_n_0 ),
        .Q(\sHeaderOut_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0996966996696997)) 
    sValid_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\sErrSyndrome_reg_n_0_[4] ),
        .I5(\sErrSyndrome_reg_n_0_[5] ),
        .O(\sErrSyndrome_reg[0]_0 ));
  FDRE sValid_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(sValid_reg_4),
        .Q(sValid_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "LLP" *) 
module system_MIPI_CSI_2_RX_0_0_LLP
   (out,
    \oSyncStages_reg[1] ,
    m_axis_tvalid,
    m_axis_tlast,
    s_axis_tready,
    m_axis_video_tvalid,
    m_axis_video_tdata,
    m_axis_video_tlast,
    m_axis_video_tuser,
    mFmt_Tvalid_reg_0,
    mFmt_Tlast_reg_0,
    mReg_Tlast_reg_0,
    \goreg_dm.dout_i_reg[0] ,
    sValid_reg,
    sError_reg,
    mKeep_reg_0,
    mIsHeader_reg_0,
    mReg_Tvalid_reg_0,
    \mReg_Tuser_reg[0]_0 ,
    \sErrSyndrome_reg[3] ,
    \FSM_onehot_sState_reg[3] ,
    \delay_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[2]_0 ,
    \RAW10Formatter.cnt_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[0]_0 ,
    \sErrSyndrome_reg[0] ,
    \sErrSyndrome_reg[4] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    mReg_Tuser0,
    mIsHeader0,
    mKeep0_out,
    video_aclk,
    RxByteClkHS,
    s_aresetn,
    s_axis_tvalid,
    Q,
    \gpr1.dout_i_reg[1] ,
    s_axis_tlast,
    m_axis_video_tready,
    sValid_reg_0,
    sError_reg_0,
    mKeep_reg_1,
    mIsHeader_reg_1,
    mReg_Tvalid_reg_1,
    \mReg_Tuser_reg[0]_1 ,
    mFmt_Tvalid_reg_1,
    mFmt_Tlast_reg_1,
    AS);
  output [0:0]out;
  output [0:0]\oSyncStages_reg[1] ;
  output m_axis_tvalid;
  output m_axis_tlast;
  output s_axis_tready;
  output m_axis_video_tvalid;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  output mFmt_Tvalid_reg_0;
  output mFmt_Tlast_reg_0;
  output mReg_Tlast_reg_0;
  output \goreg_dm.dout_i_reg[0] ;
  output sValid_reg;
  output sError_reg;
  output mKeep_reg_0;
  output mIsHeader_reg_0;
  output mReg_Tvalid_reg_0;
  output \mReg_Tuser_reg[0]_0 ;
  output [3:0]\sErrSyndrome_reg[3] ;
  output [0:0]\FSM_onehot_sState_reg[3] ;
  output [0:0]\delay_reg[1]_0 ;
  output \RAW10Formatter.cnt_reg[2]_0 ;
  output \RAW10Formatter.cnt_reg[1]_0 ;
  output \RAW10Formatter.cnt_reg[0]_0 ;
  output \sErrSyndrome_reg[0] ;
  output \sErrSyndrome_reg[4] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  output mReg_Tuser0;
  output mIsHeader0;
  output mKeep0_out;
  input video_aclk;
  input RxByteClkHS;
  input s_aresetn;
  input s_axis_tvalid;
  input [31:0]Q;
  input [3:0]\gpr1.dout_i_reg[1] ;
  input s_axis_tlast;
  input m_axis_video_tready;
  input sValid_reg_0;
  input sError_reg_0;
  input mKeep_reg_1;
  input mIsHeader_reg_1;
  input mReg_Tvalid_reg_1;
  input \mReg_Tuser_reg[0]_1 ;
  input mFmt_Tvalid_reg_1;
  input mFmt_Tlast_reg_1;
  input [0:0]AS;

  wire [0:0]AS;
  wire DataFIFO_n_10;
  wire DataFIFO_n_11;
  wire DataFIFO_n_12;
  wire DataFIFO_n_13;
  wire DataFIFO_n_14;
  wire DataFIFO_n_15;
  wire DataFIFO_n_16;
  wire DataFIFO_n_17;
  wire DataFIFO_n_18;
  wire DataFIFO_n_19;
  wire DataFIFO_n_2;
  wire DataFIFO_n_20;
  wire DataFIFO_n_21;
  wire DataFIFO_n_22;
  wire DataFIFO_n_23;
  wire DataFIFO_n_24;
  wire DataFIFO_n_25;
  wire DataFIFO_n_26;
  wire DataFIFO_n_27;
  wire DataFIFO_n_28;
  wire DataFIFO_n_29;
  wire DataFIFO_n_3;
  wire DataFIFO_n_30;
  wire DataFIFO_n_31;
  wire DataFIFO_n_32;
  wire DataFIFO_n_33;
  wire DataFIFO_n_34;
  wire DataFIFO_n_35;
  wire DataFIFO_n_36;
  wire DataFIFO_n_37;
  wire DataFIFO_n_4;
  wire DataFIFO_n_5;
  wire DataFIFO_n_6;
  wire DataFIFO_n_7;
  wire DataFIFO_n_8;
  wire DataFIFO_n_9;
  wire ECCx_n_10;
  wire ECCx_n_13;
  wire ECCx_n_14;
  wire ECCx_n_15;
  wire ECCx_n_16;
  wire ECCx_n_17;
  wire ECCx_n_18;
  wire ECCx_n_19;
  wire ECCx_n_20;
  wire ECCx_n_21;
  wire ECCx_n_22;
  wire ECCx_n_23;
  wire ECCx_n_24;
  wire ECCx_n_25;
  wire ECCx_n_26;
  wire ECCx_n_27;
  wire ECCx_n_28;
  wire ECCx_n_7;
  wire ECCx_n_9;
  wire [0:0]\FSM_onehot_sState_reg[3] ;
  wire [31:0]Q;
  wire \RAW10Formatter.cnt[2]_i_2_n_0 ;
  wire \RAW10Formatter.cnt_reg[0]_0 ;
  wire \RAW10Formatter.cnt_reg[1]_0 ;
  wire \RAW10Formatter.cnt_reg[2]_0 ;
  wire \RAW10Formatter.pix_mux[1][2]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][3]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][4]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][5]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][6]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][7]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][8]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[1][9]_i_3_n_0 ;
  wire \RAW10Formatter.pix_mux[2][2]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][3]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][4]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][5]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][6]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][7]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][8]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[2][9]_i_3_n_0 ;
  wire \RAW10Formatter.pix_mux[3][2]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][3]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][4]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][5]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][6]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][7]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][8]_i_2_n_0 ;
  wire \RAW10Formatter.pix_mux[3][9]_i_3_n_0 ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][2] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][3] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][4] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][5] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][6] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][7] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][8] ;
  wire \RAW10Formatter.pix_mux_reg_n_0_[3][9] ;
  wire RxByteClkHS;
  wire SyncMReset_n_1;
  wire SyncMReset_n_11;
  wire SyncMReset_n_2;
  wire SyncMReset_n_3;
  wire SyncMReset_n_4;
  wire SyncMReset_n_5;
  wire SyncMReset_n_6;
  wire SyncMReset_n_7;
  wire SyncMReset_n_8;
  wire SyncMReset_n_9;
  wire cnt;
  wire [29:2]data1;
  wire [0:0]delay;
  wire [0:0]\delay_reg[1]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire \goreg_dm.dout_i_reg[0] ;
  wire [3:0]\gpr1.dout_i_reg[1] ;
  wire mFlush_reg_n_0;
  wire [39:0]mFmt_Tdata;
  wire \mFmt_Tdata[39]_i_3_n_0 ;
  wire \mFmt_Tdata[39]_i_4_n_0 ;
  wire \mFmt_Tdata_reg_n_0_[0] ;
  wire \mFmt_Tdata_reg_n_0_[10] ;
  wire \mFmt_Tdata_reg_n_0_[11] ;
  wire \mFmt_Tdata_reg_n_0_[12] ;
  wire \mFmt_Tdata_reg_n_0_[13] ;
  wire \mFmt_Tdata_reg_n_0_[14] ;
  wire \mFmt_Tdata_reg_n_0_[15] ;
  wire \mFmt_Tdata_reg_n_0_[16] ;
  wire \mFmt_Tdata_reg_n_0_[17] ;
  wire \mFmt_Tdata_reg_n_0_[18] ;
  wire \mFmt_Tdata_reg_n_0_[19] ;
  wire \mFmt_Tdata_reg_n_0_[1] ;
  wire \mFmt_Tdata_reg_n_0_[20] ;
  wire \mFmt_Tdata_reg_n_0_[21] ;
  wire \mFmt_Tdata_reg_n_0_[22] ;
  wire \mFmt_Tdata_reg_n_0_[23] ;
  wire \mFmt_Tdata_reg_n_0_[24] ;
  wire \mFmt_Tdata_reg_n_0_[25] ;
  wire \mFmt_Tdata_reg_n_0_[26] ;
  wire \mFmt_Tdata_reg_n_0_[27] ;
  wire \mFmt_Tdata_reg_n_0_[28] ;
  wire \mFmt_Tdata_reg_n_0_[29] ;
  wire \mFmt_Tdata_reg_n_0_[2] ;
  wire \mFmt_Tdata_reg_n_0_[30] ;
  wire \mFmt_Tdata_reg_n_0_[31] ;
  wire \mFmt_Tdata_reg_n_0_[32] ;
  wire \mFmt_Tdata_reg_n_0_[33] ;
  wire \mFmt_Tdata_reg_n_0_[34] ;
  wire \mFmt_Tdata_reg_n_0_[35] ;
  wire \mFmt_Tdata_reg_n_0_[36] ;
  wire \mFmt_Tdata_reg_n_0_[37] ;
  wire \mFmt_Tdata_reg_n_0_[38] ;
  wire \mFmt_Tdata_reg_n_0_[39] ;
  wire \mFmt_Tdata_reg_n_0_[3] ;
  wire \mFmt_Tdata_reg_n_0_[4] ;
  wire \mFmt_Tdata_reg_n_0_[5] ;
  wire \mFmt_Tdata_reg_n_0_[6] ;
  wire \mFmt_Tdata_reg_n_0_[7] ;
  wire \mFmt_Tdata_reg_n_0_[8] ;
  wire \mFmt_Tdata_reg_n_0_[9] ;
  wire mFmt_Tlast_reg_0;
  wire mFmt_Tlast_reg_1;
  wire \mFmt_Tuser_reg_n_0_[0] ;
  wire mFmt_Tvalid_reg_0;
  wire mFmt_Tvalid_reg_1;
  wire mIsHeader0;
  wire mIsHeader_reg_0;
  wire mIsHeader_reg_1;
  wire mKeep0_out;
  wire mKeep_reg_0;
  wire mKeep_reg_1;
  wire \mReg_Tdata_reg_n_0_[0] ;
  wire \mReg_Tdata_reg_n_0_[10] ;
  wire \mReg_Tdata_reg_n_0_[11] ;
  wire \mReg_Tdata_reg_n_0_[12] ;
  wire \mReg_Tdata_reg_n_0_[13] ;
  wire \mReg_Tdata_reg_n_0_[14] ;
  wire \mReg_Tdata_reg_n_0_[15] ;
  wire \mReg_Tdata_reg_n_0_[16] ;
  wire \mReg_Tdata_reg_n_0_[17] ;
  wire \mReg_Tdata_reg_n_0_[18] ;
  wire \mReg_Tdata_reg_n_0_[19] ;
  wire \mReg_Tdata_reg_n_0_[1] ;
  wire \mReg_Tdata_reg_n_0_[20] ;
  wire \mReg_Tdata_reg_n_0_[21] ;
  wire \mReg_Tdata_reg_n_0_[22] ;
  wire \mReg_Tdata_reg_n_0_[23] ;
  wire \mReg_Tdata_reg_n_0_[24] ;
  wire \mReg_Tdata_reg_n_0_[25] ;
  wire \mReg_Tdata_reg_n_0_[26] ;
  wire \mReg_Tdata_reg_n_0_[27] ;
  wire \mReg_Tdata_reg_n_0_[28] ;
  wire \mReg_Tdata_reg_n_0_[29] ;
  wire \mReg_Tdata_reg_n_0_[2] ;
  wire \mReg_Tdata_reg_n_0_[30] ;
  wire \mReg_Tdata_reg_n_0_[31] ;
  wire \mReg_Tdata_reg_n_0_[3] ;
  wire \mReg_Tdata_reg_n_0_[4] ;
  wire \mReg_Tdata_reg_n_0_[5] ;
  wire \mReg_Tdata_reg_n_0_[6] ;
  wire \mReg_Tdata_reg_n_0_[7] ;
  wire \mReg_Tdata_reg_n_0_[8] ;
  wire \mReg_Tdata_reg_n_0_[9] ;
  wire mReg_Tlast_i_2_n_0;
  wire mReg_Tlast_i_3_n_0;
  wire mReg_Tlast_i_4_n_0;
  wire mReg_Tlast_i_5_n_0;
  wire mReg_Tlast_reg_0;
  wire mReg_Tuser0;
  wire \mReg_Tuser_reg[0]_0 ;
  wire \mReg_Tuser_reg[0]_1 ;
  wire mReg_Tvalid_reg_0;
  wire mReg_Tvalid_reg_1;
  wire \mWordCount_reg_n_0_[0] ;
  wire \mWordCount_reg_n_0_[10] ;
  wire \mWordCount_reg_n_0_[11] ;
  wire \mWordCount_reg_n_0_[12] ;
  wire \mWordCount_reg_n_0_[13] ;
  wire \mWordCount_reg_n_0_[14] ;
  wire \mWordCount_reg_n_0_[15] ;
  wire \mWordCount_reg_n_0_[1] ;
  wire \mWordCount_reg_n_0_[2] ;
  wire \mWordCount_reg_n_0_[3] ;
  wire \mWordCount_reg_n_0_[4] ;
  wire \mWordCount_reg_n_0_[5] ;
  wire \mWordCount_reg_n_0_[6] ;
  wire \mWordCount_reg_n_0_[7] ;
  wire \mWordCount_reg_n_0_[8] ;
  wire \mWordCount_reg_n_0_[9] ;
  wire m_axis_tlast;
  wire m_axis_tvalid;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]out;
  wire [9:2]\pix_mux[0]_1 ;
  wire [9:2]\pix_mux[1]_0 ;
  wire [9:2]\pix_mux[2]_2 ;
  wire [9:2]\pix_mux[3]_3 ;
  wire sAxisTreadyInt;
  wire \sErrSyndrome_reg[0] ;
  wire [3:0]\sErrSyndrome_reg[3] ;
  wire \sErrSyndrome_reg[4] ;
  wire sError_reg;
  wire sError_reg_0;
  wire sValid_reg;
  wire sValid_reg_0;
  wire s_aresetn;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire video_aclk;
  wire [31:0]NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "cdc_fifo,fifo_generator_v13_2_5,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
  system_MIPI_CSI_2_RX_0_0_cdc_fifo DataFIFO
       (.m_aclk(video_aclk),
        .m_axis_tdata({DataFIFO_n_2,DataFIFO_n_3,DataFIFO_n_4,DataFIFO_n_5,DataFIFO_n_6,DataFIFO_n_7,DataFIFO_n_8,DataFIFO_n_9,DataFIFO_n_10,DataFIFO_n_11,DataFIFO_n_12,DataFIFO_n_13,DataFIFO_n_14,DataFIFO_n_15,DataFIFO_n_16,DataFIFO_n_17,DataFIFO_n_18,DataFIFO_n_19,DataFIFO_n_20,DataFIFO_n_21,DataFIFO_n_22,DataFIFO_n_23,DataFIFO_n_24,DataFIFO_n_25,DataFIFO_n_26,DataFIFO_n_27,DataFIFO_n_28,DataFIFO_n_29,DataFIFO_n_30,DataFIFO_n_31,DataFIFO_n_32,DataFIFO_n_33}),
        .m_axis_tkeep({DataFIFO_n_34,DataFIFO_n_35,DataFIFO_n_36,DataFIFO_n_37}),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(ECCx_n_9),
        .m_axis_tvalid(m_axis_tvalid),
        .s_aclk(RxByteClkHS),
        .s_aresetn(s_aresetn),
        .s_axis_tdata(Q),
        .s_axis_tkeep(\gpr1.dout_i_reg[1] ),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(sAxisTreadyInt),
        .s_axis_tvalid(s_axis_tvalid));
  system_MIPI_CSI_2_RX_0_0_ECC ECCx
       (.D({DataFIFO_n_4,DataFIFO_n_5,DataFIFO_n_6,DataFIFO_n_7,DataFIFO_n_8,DataFIFO_n_9,DataFIFO_n_10,DataFIFO_n_11,DataFIFO_n_12,DataFIFO_n_13,DataFIFO_n_14,DataFIFO_n_15,DataFIFO_n_16,DataFIFO_n_17,DataFIFO_n_18,DataFIFO_n_19,DataFIFO_n_20,DataFIFO_n_21,DataFIFO_n_22,DataFIFO_n_23,DataFIFO_n_24,DataFIFO_n_25,DataFIFO_n_26,DataFIFO_n_27,DataFIFO_n_28,DataFIFO_n_29,DataFIFO_n_30,DataFIFO_n_31,DataFIFO_n_32,DataFIFO_n_33}),
        .\FSM_onehot_sState_reg[3]_0 (\FSM_onehot_sState_reg[3] ),
        .O({ECCx_n_13,ECCx_n_14,ECCx_n_15,ECCx_n_16}),
        .Q(\sErrSyndrome_reg[3] ),
        .\goreg_dm.dout_i_reg[0] (ECCx_n_10),
        .mFlush_reg(mKeep_reg_0),
        .mFlush_reg_0(mFlush_reg_n_0),
        .mIsHeader0(mIsHeader0),
        .mKeep0_out(mKeep0_out),
        .mReg_Tuser0(mReg_Tuser0),
        .\mWordCount_reg[0] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ),
        .\mWordCount_reg[11] (\mWordCount_reg_n_0_[8] ),
        .\mWordCount_reg[11]_0 (\mWordCount_reg_n_0_[9] ),
        .\mWordCount_reg[11]_1 (\mWordCount_reg_n_0_[10] ),
        .\mWordCount_reg[11]_2 (\mWordCount_reg_n_0_[11] ),
        .\mWordCount_reg[15] (\mWordCount_reg_n_0_[12] ),
        .\mWordCount_reg[15]_0 (\mWordCount_reg_n_0_[13] ),
        .\mWordCount_reg[15]_1 (\mWordCount_reg_n_0_[14] ),
        .\mWordCount_reg[15]_2 (\mWordCount_reg_n_0_[15] ),
        .\mWordCount_reg[3] (\mWordCount_reg_n_0_[2] ),
        .\mWordCount_reg[3]_0 (\mWordCount_reg_n_0_[3] ),
        .\mWordCount_reg[3]_1 (\mWordCount_reg_n_0_[0] ),
        .\mWordCount_reg[3]_2 (\mWordCount_reg_n_0_[1] ),
        .\mWordCount_reg[7] (\mWordCount_reg_n_0_[4] ),
        .\mWordCount_reg[7]_0 (\mWordCount_reg_n_0_[5] ),
        .\mWordCount_reg[7]_1 (\mWordCount_reg_n_0_[6] ),
        .\mWordCount_reg[7]_2 (\mWordCount_reg_n_0_[7] ),
        .m_axis_tkeep({DataFIFO_n_34,DataFIFO_n_35,DataFIFO_n_36,DataFIFO_n_37}),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(ECCx_n_9),
        .m_axis_tvalid(m_axis_tvalid),
        .out(out),
        .\sECCIn_reg[0]_0 (mIsHeader_reg_0),
        .\sErrSyndrome_reg[0]_0 (\sErrSyndrome_reg[0] ),
        .\sErrSyndrome_reg[4]_0 (\sErrSyndrome_reg[4] ),
        .sError_reg_0(sError_reg),
        .sError_reg_1(sError_reg_0),
        .\sHeaderOut_reg[5]_0 (ECCx_n_7),
        .sValid_reg_0(sValid_reg),
        .sValid_reg_1({ECCx_n_17,ECCx_n_18,ECCx_n_19,ECCx_n_20}),
        .sValid_reg_2({ECCx_n_21,ECCx_n_22,ECCx_n_23,ECCx_n_24}),
        .sValid_reg_3({ECCx_n_25,ECCx_n_26,ECCx_n_27,ECCx_n_28}),
        .sValid_reg_4(sValid_reg_0),
        .s_axis_tready(s_axis_tready),
        .video_aclk(video_aclk));
  (* CHECK_LICENSE_TYPE = "line_buffer,axis_data_fifo_v2_0_4_top,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axis_data_fifo_v2_0_4_top,Vivado 2020.2" *) 
  system_MIPI_CSI_2_RX_0_0_line_buffer LineBufferFIFO
       (.axis_rd_data_count(NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED[31:0]),
        .axis_wr_data_count(NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED[31:0]),
        .m_axis_tdata(m_axis_video_tdata),
        .m_axis_tlast(m_axis_video_tlast),
        .m_axis_tready(m_axis_video_tready),
        .m_axis_tuser(m_axis_video_tuser),
        .m_axis_tvalid(m_axis_video_tvalid),
        .s_axis_aclk(video_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata({\mFmt_Tdata_reg_n_0_[39] ,\mFmt_Tdata_reg_n_0_[38] ,\mFmt_Tdata_reg_n_0_[37] ,\mFmt_Tdata_reg_n_0_[36] ,\mFmt_Tdata_reg_n_0_[35] ,\mFmt_Tdata_reg_n_0_[34] ,\mFmt_Tdata_reg_n_0_[33] ,\mFmt_Tdata_reg_n_0_[32] ,\mFmt_Tdata_reg_n_0_[31] ,\mFmt_Tdata_reg_n_0_[30] ,\mFmt_Tdata_reg_n_0_[29] ,\mFmt_Tdata_reg_n_0_[28] ,\mFmt_Tdata_reg_n_0_[27] ,\mFmt_Tdata_reg_n_0_[26] ,\mFmt_Tdata_reg_n_0_[25] ,\mFmt_Tdata_reg_n_0_[24] ,\mFmt_Tdata_reg_n_0_[23] ,\mFmt_Tdata_reg_n_0_[22] ,\mFmt_Tdata_reg_n_0_[21] ,\mFmt_Tdata_reg_n_0_[20] ,\mFmt_Tdata_reg_n_0_[19] ,\mFmt_Tdata_reg_n_0_[18] ,\mFmt_Tdata_reg_n_0_[17] ,\mFmt_Tdata_reg_n_0_[16] ,\mFmt_Tdata_reg_n_0_[15] ,\mFmt_Tdata_reg_n_0_[14] ,\mFmt_Tdata_reg_n_0_[13] ,\mFmt_Tdata_reg_n_0_[12] ,\mFmt_Tdata_reg_n_0_[11] ,\mFmt_Tdata_reg_n_0_[10] ,\mFmt_Tdata_reg_n_0_[9] ,\mFmt_Tdata_reg_n_0_[8] ,\mFmt_Tdata_reg_n_0_[7] ,\mFmt_Tdata_reg_n_0_[6] ,\mFmt_Tdata_reg_n_0_[5] ,\mFmt_Tdata_reg_n_0_[4] ,\mFmt_Tdata_reg_n_0_[3] ,\mFmt_Tdata_reg_n_0_[2] ,\mFmt_Tdata_reg_n_0_[1] ,\mFmt_Tdata_reg_n_0_[0] }),
        .s_axis_tlast(mFmt_Tlast_reg_0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(\mFmt_Tuser_reg_n_0_[0] ),
        .s_axis_tvalid(mFmt_Tvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RAW10Formatter.cnt[1]_i_2 
       (.I0(s_axis_tready),
        .I1(mReg_Tvalid_reg_0),
        .O(cnt));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RAW10Formatter.cnt[2]_i_2 
       (.I0(\RAW10Formatter.cnt_reg[0]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .O(\RAW10Formatter.cnt[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RAW10Formatter.cnt_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_4),
        .Q(\RAW10Formatter.cnt_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAW10Formatter.cnt_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_3),
        .Q(\RAW10Formatter.cnt_reg[1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RAW10Formatter.cnt_reg[2] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_2),
        .Q(\RAW10Formatter.cnt_reg[2]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[24] ),
        .I1(\mReg_Tdata_reg_n_0_[8] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[16] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[0] ),
        .O(\pix_mux[0]_1 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[25] ),
        .I1(\mReg_Tdata_reg_n_0_[9] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[17] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[1] ),
        .O(\pix_mux[0]_1 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[26] ),
        .I1(\mReg_Tdata_reg_n_0_[10] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[18] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[2] ),
        .O(\pix_mux[0]_1 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[27] ),
        .I1(\mReg_Tdata_reg_n_0_[11] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[19] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[3] ),
        .O(\pix_mux[0]_1 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[28] ),
        .I1(\mReg_Tdata_reg_n_0_[12] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[20] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[4] ),
        .O(\pix_mux[0]_1 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[29] ),
        .I1(\mReg_Tdata_reg_n_0_[13] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[21] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[5] ),
        .O(\pix_mux[0]_1 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[30] ),
        .I1(\mReg_Tdata_reg_n_0_[14] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[22] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[6] ),
        .O(\pix_mux[0]_1 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \RAW10Formatter.pix_mux[0][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[31] ),
        .I1(\mReg_Tdata_reg_n_0_[15] ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .I3(\mReg_Tdata_reg_n_0_[23] ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\mReg_Tdata_reg_n_0_[7] ),
        .O(\pix_mux[0]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[24] ),
        .I1(\mReg_Tdata_reg_n_0_[0] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][2]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][2]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[16] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[8] ),
        .O(\RAW10Formatter.pix_mux[1][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[25] ),
        .I1(\mReg_Tdata_reg_n_0_[1] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][3]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][3]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[17] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[9] ),
        .O(\RAW10Formatter.pix_mux[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[26] ),
        .I1(\mReg_Tdata_reg_n_0_[2] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][4]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][4]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[18] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[10] ),
        .O(\RAW10Formatter.pix_mux[1][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[27] ),
        .I1(\mReg_Tdata_reg_n_0_[3] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][5]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][5]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[19] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[11] ),
        .O(\RAW10Formatter.pix_mux[1][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[28] ),
        .I1(\mReg_Tdata_reg_n_0_[4] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][6]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][6]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[20] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[12] ),
        .O(\RAW10Formatter.pix_mux[1][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[29] ),
        .I1(\mReg_Tdata_reg_n_0_[5] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][7]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][7]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[21] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[13] ),
        .O(\RAW10Formatter.pix_mux[1][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[30] ),
        .I1(\mReg_Tdata_reg_n_0_[6] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][8]_i_2_n_0 ),
        .O(\pix_mux[1]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][8]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[22] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[14] ),
        .O(\RAW10Formatter.pix_mux[1][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \RAW10Formatter.pix_mux[1][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[31] ),
        .I1(\mReg_Tdata_reg_n_0_[7] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][9]_i_3_n_0 ),
        .O(\pix_mux[1]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[1][9]_i_3 
       (.I0(\mReg_Tdata_reg_n_0_[23] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[15] ),
        .O(\RAW10Formatter.pix_mux[1][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[0] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[24] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][2]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][2]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[8] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[16] ),
        .O(\RAW10Formatter.pix_mux[2][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[1] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[25] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][3]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][3]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[9] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[17] ),
        .O(\RAW10Formatter.pix_mux[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[2] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[26] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][4]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][4]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[10] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[18] ),
        .O(\RAW10Formatter.pix_mux[2][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[3] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[27] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][5]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][5]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[11] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[19] ),
        .O(\RAW10Formatter.pix_mux[2][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[4] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[28] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][6]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][6]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[12] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[20] ),
        .O(\RAW10Formatter.pix_mux[2][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[5] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[29] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][7]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][7]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[13] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[21] ),
        .O(\RAW10Formatter.pix_mux[2][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[6] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[30] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][8]_i_2_n_0 ),
        .O(\pix_mux[2]_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][8]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[14] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[22] ),
        .O(\RAW10Formatter.pix_mux[2][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[2][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[7] ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[31] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.pix_mux[2][9]_i_3_n_0 ),
        .O(\pix_mux[2]_2 [9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[2][9]_i_3 
       (.I0(\mReg_Tdata_reg_n_0_[15] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[23] ),
        .O(\RAW10Formatter.pix_mux[2][9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][2]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[8] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[0] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][2]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][2]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[16] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[24] ),
        .O(\RAW10Formatter.pix_mux[3][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][3]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[9] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[1] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][3]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][3]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[17] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[25] ),
        .O(\RAW10Formatter.pix_mux[3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][4]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[10] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[2] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][4]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][4]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[18] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[26] ),
        .O(\RAW10Formatter.pix_mux[3][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][5]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[11] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[3] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][5]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][5]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[19] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[27] ),
        .O(\RAW10Formatter.pix_mux[3][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][6]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[12] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[4] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][6]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][6]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[20] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[28] ),
        .O(\RAW10Formatter.pix_mux[3][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][7]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[13] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[5] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][7]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][7]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[21] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[29] ),
        .O(\RAW10Formatter.pix_mux[3][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][8]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[14] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[6] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][8]_i_2_n_0 ),
        .O(\pix_mux[3]_3 [8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][8]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[22] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[30] ),
        .O(\RAW10Formatter.pix_mux[3][8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \RAW10Formatter.pix_mux[3][9]_i_2 
       (.I0(\mReg_Tdata_reg_n_0_[15] ),
        .I1(\RAW10Formatter.cnt_reg[0]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[7] ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[3][9]_i_3_n_0 ),
        .O(\pix_mux[3]_3 [9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RAW10Formatter.pix_mux[3][9]_i_3 
       (.I0(\mReg_Tdata_reg_n_0_[23] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[31] ),
        .O(\RAW10Formatter.pix_mux[3][9]_i_3_n_0 ));
  FDRE \RAW10Formatter.pix_mux_reg[0][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [2]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [3]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [4]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [5]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [6]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [7]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [8]),
        .Q(data1[8]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[0][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_6),
        .D(\pix_mux[0]_1 [9]),
        .Q(data1[9]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [2]),
        .Q(data1[12]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [3]),
        .Q(data1[13]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [4]),
        .Q(data1[14]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [5]),
        .Q(data1[15]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [6]),
        .Q(data1[16]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [7]),
        .Q(data1[17]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [8]),
        .Q(data1[18]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[1][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_7),
        .D(\pix_mux[1]_0 [9]),
        .Q(data1[19]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [2]),
        .Q(data1[22]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [3]),
        .Q(data1[23]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [4]),
        .Q(data1[24]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [5]),
        .Q(data1[25]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [6]),
        .Q(data1[26]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [7]),
        .Q(data1[27]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [8]),
        .Q(data1[28]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[2][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_8),
        .D(\pix_mux[2]_2 [9]),
        .Q(data1[29]),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [2]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [3]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [4]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [5]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [6]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [7]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [8]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][8] ),
        .R(1'b0));
  FDRE \RAW10Formatter.pix_mux_reg[3][9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_9),
        .D(\pix_mux[3]_3 [9]),
        .Q(\RAW10Formatter.pix_mux_reg_n_0_[3][9] ),
        .R(1'b0));
  system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3 SyncMReset
       (.AS(AS),
        .E(SyncMReset_n_1),
        .\RAW10Formatter.cnt_reg[0] (SyncMReset_n_4),
        .\RAW10Formatter.cnt_reg[1] (SyncMReset_n_3),
        .\RAW10Formatter.cnt_reg[1]_0 (\RAW10Formatter.cnt_reg[1]_0 ),
        .\RAW10Formatter.cnt_reg[1]_1 (\RAW10Formatter.cnt_reg[0]_0 ),
        .\RAW10Formatter.cnt_reg[2] (\RAW10Formatter.cnt[2]_i_2_n_0 ),
        .\RAW10Formatter.cnt_reg[2]_0 (mReg_Tvalid_reg_0),
        .\RAW10Formatter.cnt_reg[2]_1 (mReg_Tlast_reg_0),
        .\RAW10Formatter.cnt_reg[2]_2 (\RAW10Formatter.cnt_reg[2]_0 ),
        .cnt(cnt),
        .\mFmt_Tuser_reg[0] (mFmt_Tvalid_reg_0),
        .\mFmt_Tuser_reg[0]_0 (\mReg_Tuser_reg[0]_0 ),
        .mFmt_Tvalid_reg(SyncMReset_n_11),
        .\mReg_Tdata_reg[31] (mKeep_reg_0),
        .mReg_Tvalid_reg(SyncMReset_n_2),
        .m_axis_tvalid(m_axis_tvalid),
        .\oSyncStages_reg[1] (SyncMReset_n_5),
        .\oSyncStages_reg[1]_0 (SyncMReset_n_6),
        .\oSyncStages_reg[1]_1 (SyncMReset_n_7),
        .\oSyncStages_reg[1]_2 (SyncMReset_n_8),
        .\oSyncStages_reg[1]_3 (SyncMReset_n_9),
        .out(out),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(\mFmt_Tuser_reg_n_0_[0] ),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4 SyncSReset
       (.AS(AS),
        .RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1] (\oSyncStages_reg[1] ));
  FDCE \delay_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1] ),
        .D(sAxisTreadyInt),
        .Q(delay));
  FDCE \delay_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1] ),
        .D(delay),
        .Q(\delay_reg[1]_0 ));
  FDRE mFlush_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(ECCx_n_10),
        .Q(mFlush_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[0]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[0] ),
        .I1(\mReg_Tdata_reg_n_0_[24] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][2]_i_2_n_0 ),
        .O(mFmt_Tdata[0]));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[10]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[2] ),
        .I1(\mReg_Tdata_reg_n_0_[26] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][4]_i_2_n_0 ),
        .O(mFmt_Tdata[10]));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[11]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[3] ),
        .I1(\mReg_Tdata_reg_n_0_[27] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][5]_i_2_n_0 ),
        .O(mFmt_Tdata[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[12]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[0] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[12]),
        .O(mFmt_Tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[13]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[1] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[13]),
        .O(mFmt_Tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[14]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[2] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[14]),
        .O(mFmt_Tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[15]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[3] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[15]),
        .O(mFmt_Tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[16]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[4] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[16]),
        .O(mFmt_Tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[17]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[5] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[17]),
        .O(mFmt_Tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[18]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[6] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[18]),
        .O(mFmt_Tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mFmt_Tdata[19]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[7] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(data1[19]),
        .O(mFmt_Tdata[19]));
  LUT5 #(
    .INIT(32'hCFCAC0CA)) 
    \mFmt_Tdata[1]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[1] ),
        .I1(\mReg_Tdata_reg_n_0_[25] ),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.pix_mux[1][3]_i_2_n_0 ),
        .O(mFmt_Tdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[20]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[4] ),
        .I1(\mReg_Tdata_reg_n_0_[28] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[12] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[20] ),
        .O(mFmt_Tdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[21]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[5] ),
        .I1(\mReg_Tdata_reg_n_0_[29] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[13] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[21] ),
        .O(mFmt_Tdata[21]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[22]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[8] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[0] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[22]),
        .O(mFmt_Tdata[22]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[23]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[9] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[1] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[23]),
        .O(mFmt_Tdata[23]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[24]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[10] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[2] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[24]),
        .O(mFmt_Tdata[24]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[25]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[11] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[3] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[25]),
        .O(mFmt_Tdata[25]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[26]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[12] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[4] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[26]),
        .O(mFmt_Tdata[26]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[27]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[13] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[5] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[27]),
        .O(mFmt_Tdata[27]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[28]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[14] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[6] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[28]),
        .O(mFmt_Tdata[28]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \mFmt_Tdata[29]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[15] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(\mReg_Tdata_reg_n_0_[7] ),
        .I3(\RAW10Formatter.cnt_reg[0]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(data1[29]),
        .O(mFmt_Tdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[30]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[6] ),
        .I1(\mReg_Tdata_reg_n_0_[30] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[14] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[22] ),
        .O(mFmt_Tdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[31]_i_1 
       (.I0(\mReg_Tdata_reg_n_0_[7] ),
        .I1(\mReg_Tdata_reg_n_0_[31] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[15] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[23] ),
        .O(mFmt_Tdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[32]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][2] ),
        .I1(\mReg_Tdata_reg_n_0_[16] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[0] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[8] ),
        .O(mFmt_Tdata[32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[33]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][3] ),
        .I1(\mReg_Tdata_reg_n_0_[17] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[1] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[9] ),
        .O(mFmt_Tdata[33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[34]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][4] ),
        .I1(\mReg_Tdata_reg_n_0_[18] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[2] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[10] ),
        .O(mFmt_Tdata[34]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[35]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][5] ),
        .I1(\mReg_Tdata_reg_n_0_[19] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[3] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[11] ),
        .O(mFmt_Tdata[35]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[36]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][6] ),
        .I1(\mReg_Tdata_reg_n_0_[20] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[4] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[12] ),
        .O(mFmt_Tdata[36]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[37]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][7] ),
        .I1(\mReg_Tdata_reg_n_0_[21] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[5] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[13] ),
        .O(mFmt_Tdata[37]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[38]_i_1 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][8] ),
        .I1(\mReg_Tdata_reg_n_0_[22] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[6] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[14] ),
        .O(mFmt_Tdata[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mFmt_Tdata[39]_i_2 
       (.I0(\RAW10Formatter.pix_mux_reg_n_0_[3][9] ),
        .I1(\mReg_Tdata_reg_n_0_[23] ),
        .I2(\mFmt_Tdata[39]_i_3_n_0 ),
        .I3(\mReg_Tdata_reg_n_0_[7] ),
        .I4(\mFmt_Tdata[39]_i_4_n_0 ),
        .I5(\mReg_Tdata_reg_n_0_[15] ),
        .O(mFmt_Tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mFmt_Tdata[39]_i_3 
       (.I0(\RAW10Formatter.cnt_reg[2]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .O(\mFmt_Tdata[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \mFmt_Tdata[39]_i_4 
       (.I0(\RAW10Formatter.cnt_reg[2]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_0 ),
        .I2(\RAW10Formatter.cnt_reg[0]_0 ),
        .O(\mFmt_Tdata[39]_i_4_n_0 ));
  FDRE \mFmt_Tdata_reg[0] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[0]),
        .Q(\mFmt_Tdata_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[10] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[10]),
        .Q(\mFmt_Tdata_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[11] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[11]),
        .Q(\mFmt_Tdata_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[12] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[12]),
        .Q(\mFmt_Tdata_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[13] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[13]),
        .Q(\mFmt_Tdata_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[14] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[14]),
        .Q(\mFmt_Tdata_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[15] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[15]),
        .Q(\mFmt_Tdata_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[16] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[16]),
        .Q(\mFmt_Tdata_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[17] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[17]),
        .Q(\mFmt_Tdata_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[18] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[18]),
        .Q(\mFmt_Tdata_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[19] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[19]),
        .Q(\mFmt_Tdata_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[1] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[1]),
        .Q(\mFmt_Tdata_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[20] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[20]),
        .Q(\mFmt_Tdata_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[21] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[21]),
        .Q(\mFmt_Tdata_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[22] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[22]),
        .Q(\mFmt_Tdata_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[23] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[23]),
        .Q(\mFmt_Tdata_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[24] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[24]),
        .Q(\mFmt_Tdata_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[25] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[25]),
        .Q(\mFmt_Tdata_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[26] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[26]),
        .Q(\mFmt_Tdata_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[27] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[27]),
        .Q(\mFmt_Tdata_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[28] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[28]),
        .Q(\mFmt_Tdata_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[29] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[29]),
        .Q(\mFmt_Tdata_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[2]),
        .Q(\mFmt_Tdata_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[30] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[30]),
        .Q(\mFmt_Tdata_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[31] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[31]),
        .Q(\mFmt_Tdata_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[32] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[32]),
        .Q(\mFmt_Tdata_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[33] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[33]),
        .Q(\mFmt_Tdata_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[34] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[34]),
        .Q(\mFmt_Tdata_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[35] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[35]),
        .Q(\mFmt_Tdata_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[36] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[36]),
        .Q(\mFmt_Tdata_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[37] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[37]),
        .Q(\mFmt_Tdata_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[38] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[38]),
        .Q(\mFmt_Tdata_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[39] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(mFmt_Tdata[39]),
        .Q(\mFmt_Tdata_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[3]),
        .Q(\mFmt_Tdata_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[4]),
        .Q(\mFmt_Tdata_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[5]),
        .Q(\mFmt_Tdata_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[6]),
        .Q(\mFmt_Tdata_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[7]),
        .Q(\mFmt_Tdata_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[8]),
        .Q(\mFmt_Tdata_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mFmt_Tdata_reg[9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_5),
        .D(data1[9]),
        .Q(\mFmt_Tdata_reg_n_0_[9] ),
        .R(1'b0));
  FDRE mFmt_Tlast_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mFmt_Tlast_reg_1),
        .Q(mFmt_Tlast_reg_0),
        .R(1'b0));
  FDRE \mFmt_Tuser_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncMReset_n_11),
        .Q(\mFmt_Tuser_reg_n_0_[0] ),
        .R(1'b0));
  FDRE mFmt_Tvalid_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mFmt_Tvalid_reg_1),
        .Q(mFmt_Tvalid_reg_0),
        .R(out));
  FDSE mIsHeader_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mIsHeader_reg_1),
        .Q(mIsHeader_reg_0),
        .S(out));
  FDRE mKeep_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mKeep_reg_1),
        .Q(mKeep_reg_0),
        .R(out));
  FDRE \mReg_Tdata_reg[0] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_33),
        .Q(\mReg_Tdata_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[10] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_23),
        .Q(\mReg_Tdata_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[11] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_22),
        .Q(\mReg_Tdata_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[12] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_21),
        .Q(\mReg_Tdata_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[13] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_20),
        .Q(\mReg_Tdata_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[14] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_19),
        .Q(\mReg_Tdata_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[15] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_18),
        .Q(\mReg_Tdata_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[16] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_17),
        .Q(\mReg_Tdata_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[17] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_16),
        .Q(\mReg_Tdata_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[18] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_15),
        .Q(\mReg_Tdata_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[19] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_14),
        .Q(\mReg_Tdata_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[1] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_32),
        .Q(\mReg_Tdata_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[20] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_13),
        .Q(\mReg_Tdata_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[21] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_12),
        .Q(\mReg_Tdata_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[22] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_11),
        .Q(\mReg_Tdata_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[23] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_10),
        .Q(\mReg_Tdata_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[24] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_9),
        .Q(\mReg_Tdata_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[25] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_8),
        .Q(\mReg_Tdata_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[26] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_7),
        .Q(\mReg_Tdata_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[27] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_6),
        .Q(\mReg_Tdata_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[28] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_5),
        .Q(\mReg_Tdata_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[29] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_4),
        .Q(\mReg_Tdata_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[2] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_31),
        .Q(\mReg_Tdata_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[30] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_3),
        .Q(\mReg_Tdata_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[31] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_2),
        .Q(\mReg_Tdata_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[3] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_30),
        .Q(\mReg_Tdata_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[4] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_29),
        .Q(\mReg_Tdata_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[5] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_28),
        .Q(\mReg_Tdata_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[6] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_27),
        .Q(\mReg_Tdata_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[7] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_26),
        .Q(\mReg_Tdata_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[8] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_25),
        .Q(\mReg_Tdata_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mReg_Tdata_reg[9] 
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(DataFIFO_n_24),
        .Q(\mReg_Tdata_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    mReg_Tlast_i_1
       (.I0(m_axis_tlast),
        .I1(mReg_Tlast_i_2_n_0),
        .I2(mReg_Tlast_i_3_n_0),
        .I3(mReg_Tlast_i_4_n_0),
        .I4(mReg_Tlast_i_5_n_0),
        .O(\goreg_dm.dout_i_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mReg_Tlast_i_2
       (.I0(\mWordCount_reg_n_0_[15] ),
        .I1(\mWordCount_reg_n_0_[11] ),
        .I2(\mWordCount_reg_n_0_[7] ),
        .I3(\mWordCount_reg_n_0_[9] ),
        .I4(\mWordCount_reg_n_0_[8] ),
        .I5(\mWordCount_reg_n_0_[10] ),
        .O(mReg_Tlast_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mReg_Tlast_i_3
       (.I0(\mWordCount_reg_n_0_[5] ),
        .I1(\mWordCount_reg_n_0_[3] ),
        .I2(\mWordCount_reg_n_0_[13] ),
        .I3(\mWordCount_reg_n_0_[4] ),
        .O(mReg_Tlast_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    mReg_Tlast_i_4
       (.I0(\mWordCount_reg_n_0_[12] ),
        .I1(\mWordCount_reg_n_0_[14] ),
        .I2(\mWordCount_reg_n_0_[6] ),
        .O(mReg_Tlast_i_4_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    mReg_Tlast_i_5
       (.I0(\mWordCount_reg_n_0_[2] ),
        .I1(\mWordCount_reg_n_0_[1] ),
        .I2(\mWordCount_reg_n_0_[0] ),
        .O(mReg_Tlast_i_5_n_0));
  FDRE mReg_Tlast_reg
       (.C(video_aclk),
        .CE(SyncMReset_n_1),
        .D(\goreg_dm.dout_i_reg[0] ),
        .Q(mReg_Tlast_reg_0),
        .R(1'b0));
  FDRE \mReg_Tuser_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(\mReg_Tuser_reg[0]_1 ),
        .Q(\mReg_Tuser_reg[0]_0 ),
        .R(out));
  FDRE mReg_Tvalid_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(mReg_Tvalid_reg_1),
        .Q(mReg_Tvalid_reg_0),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \mWordCount[0]_i_3 
       (.I0(s_axis_tready),
        .I1(mKeep_reg_0),
        .I2(m_axis_tvalid),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ));
  FDRE \mWordCount_reg[0] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_16),
        .Q(\mWordCount_reg_n_0_[0] ),
        .R(out));
  FDRE \mWordCount_reg[10] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_22),
        .Q(\mWordCount_reg_n_0_[10] ),
        .R(out));
  FDRE \mWordCount_reg[11] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_21),
        .Q(\mWordCount_reg_n_0_[11] ),
        .R(out));
  FDRE \mWordCount_reg[12] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_28),
        .Q(\mWordCount_reg_n_0_[12] ),
        .R(out));
  FDRE \mWordCount_reg[13] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_27),
        .Q(\mWordCount_reg_n_0_[13] ),
        .R(out));
  FDRE \mWordCount_reg[14] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_26),
        .Q(\mWordCount_reg_n_0_[14] ),
        .R(out));
  FDRE \mWordCount_reg[15] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_25),
        .Q(\mWordCount_reg_n_0_[15] ),
        .R(out));
  FDRE \mWordCount_reg[1] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_15),
        .Q(\mWordCount_reg_n_0_[1] ),
        .R(out));
  FDRE \mWordCount_reg[2] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_14),
        .Q(\mWordCount_reg_n_0_[2] ),
        .R(out));
  FDRE \mWordCount_reg[3] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_13),
        .Q(\mWordCount_reg_n_0_[3] ),
        .R(out));
  FDRE \mWordCount_reg[4] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_20),
        .Q(\mWordCount_reg_n_0_[4] ),
        .R(out));
  FDRE \mWordCount_reg[5] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_19),
        .Q(\mWordCount_reg_n_0_[5] ),
        .R(out));
  FDRE \mWordCount_reg[6] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_18),
        .Q(\mWordCount_reg_n_0_[6] ),
        .R(out));
  FDRE \mWordCount_reg[7] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_17),
        .Q(\mWordCount_reg_n_0_[7] ),
        .R(out));
  FDRE \mWordCount_reg[8] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_24),
        .Q(\mWordCount_reg_n_0_[8] ),
        .R(out));
  FDRE \mWordCount_reg[9] 
       (.C(video_aclk),
        .CE(ECCx_n_7),
        .D(ECCx_n_23),
        .Q(\mWordCount_reg_n_0_[9] ),
        .R(out));
endmodule

(* ORIG_REF_NAME = "LM" *) 
module system_MIPI_CSI_2_RX_0_0_LM
   (s_axis_tvalid,
    s_axis_tlast,
    Q,
    \rbMAxisTkeep_reg[3]_0 ,
    RxByteClkHS,
    rbRst,
    out,
    rbEnInt_reg_0,
    D,
    iDataIn,
    I62);
  output s_axis_tvalid;
  output s_axis_tlast;
  output [31:0]Q;
  output [3:0]\rbMAxisTkeep_reg[3]_0 ;
  input RxByteClkHS;
  input rbRst;
  input [0:0]out;
  input [0:0]rbEnInt_reg_0;
  input [0:0]D;
  input [10:0]iDataIn;
  input [10:0]I62;

  wire [0:0]D;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_0 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_1 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_16 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_17 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_18 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_19 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_2 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_3 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_5 ;
  wire \DeskewFIFOs[0].DeskewFIFOx_n_6 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_0 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_1 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_10 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_11 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_12 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_13 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_14 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_16 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_3 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_4 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_5 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_6 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_7 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_8 ;
  wire \DeskewFIFOs[1].DeskewFIFOx_n_9 ;
  wire [10:0]I62;
  wire [31:0]Q;
  wire RxByteClkHS;
  wire andv__0;
  wire [10:0]iDataIn;
  wire iRdA0;
  wire orv2_out;
  wire orv4_out;
  wire [0:0]out;
  wire [1:0]p_0_in4_in;
  wire \rbByteCnt_reg_n_0_[1] ;
  wire rbEnInt;
  wire rbEnInt_i_1_n_0;
  wire [0:0]rbEnInt_reg_0;
  wire [3:0]\rbMAxisTkeep_reg[3]_0 ;
  wire rbNstate;
  wire rbRst;
  wire \rbState[0]_i_1_n_0 ;
  wire \rbState[1]_i_1_n_0 ;
  wire \rbState[2]_i_1_n_0 ;
  wire \rbState_reg_n_0_[0] ;
  wire \rbState_reg_n_0_[1] ;
  wire \rbState_reg_n_0_[2] ;
  wire [31:0]rbTdataInt;
  wire [23:16]rbTdataInt1__0;
  wire \rbTkeepInt[0]_i_1_n_0 ;
  wire \rbTkeepInt[1]_i_1_n_0 ;
  wire \rbTkeepInt[2]_i_1_n_0 ;
  wire \rbTkeepInt[3]_i_1_n_0 ;
  wire \rbTkeepInt[3]_i_2_n_0 ;
  wire \rbTkeepInt_reg_n_0_[0] ;
  wire \rbTkeepInt_reg_n_0_[1] ;
  wire \rbTkeepInt_reg_n_0_[2] ;
  wire \rbTkeepInt_reg_n_0_[3] ;
  wire rbTlastInt;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  system_MIPI_CSI_2_RX_0_0_SimpleFIFO \DeskewFIFOs[0].DeskewFIFOx 
       (.D(D),
        .E(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .RxByteClkHS(RxByteClkHS),
        .andv__0(andv__0),
        .iDataIn(iDataIn),
        .iDataOut({\DeskewFIFOs[0].DeskewFIFOx_n_5 ,\DeskewFIFOs[0].DeskewFIFOx_n_6 ,rbTdataInt1__0}),
        .iEmptyInt_reg_0(\DeskewFIFOs[0].DeskewFIFOx_n_0 ),
        .iEmptyInt_reg_1(\DeskewFIFOs[1].DeskewFIFOx_n_3 ),
        .iFullInt_reg_0(\DeskewFIFOs[0].DeskewFIFOx_n_1 ),
        .iRdA0(iRdA0),
        .out(out),
        .\rbByteCnt_reg[1] (\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .rbEnInt(rbEnInt),
        .rbMAxisTvalidInt_reg(\rbState_reg_n_0_[2] ),
        .rbMAxisTvalidInt_reg_0(\rbState_reg_n_0_[1] ),
        .rbMAxisTvalidInt_reg_1(\rbState_reg_n_0_[0] ),
        .rbMAxisTvalidInt_reg_2(\rbByteCnt_reg_n_0_[1] ),
        .rbNstate(rbNstate),
        .rbRst(rbRst),
        .\rbState[2]_i_4_0 ({\DeskewFIFOs[1].DeskewFIFOx_n_4 ,\DeskewFIFOs[1].DeskewFIFOx_n_5 }),
        .\rbState[2]_i_4_1 (\DeskewFIFOs[1].DeskewFIFOx_n_0 ),
        .\rbState_reg[0] ({\DeskewFIFOs[0].DeskewFIFOx_n_16 ,\DeskewFIFOs[0].DeskewFIFOx_n_17 ,\DeskewFIFOs[0].DeskewFIFOx_n_18 ,\DeskewFIFOs[0].DeskewFIFOx_n_19 }),
        .\rbState_reg[0]_0 (\DeskewFIFOs[1].DeskewFIFOx_n_14 ));
  FDRE \DeskewFIFOs[0].rbActiveHS_q_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[1].DeskewFIFOx_n_3 ),
        .D(\DeskewFIFOs[0].DeskewFIFOx_n_5 ),
        .Q(p_0_in4_in[0]),
        .R(1'b0));
  system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 \DeskewFIFOs[1].DeskewFIFOx 
       (.\DeskewFIFOs[1].rbActiveHS_q_reg[1] ({\DeskewFIFOs[0].DeskewFIFOx_n_5 ,\DeskewFIFOs[0].DeskewFIFOx_n_6 }),
        .\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 (\rbState_reg_n_0_[2] ),
        .\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 (\rbState_reg_n_0_[0] ),
        .\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 (\rbState_reg_n_0_[1] ),
        .I62(I62),
        .RxByteClkHS(RxByteClkHS),
        .iDataOut({\DeskewFIFOs[1].DeskewFIFOx_n_4 ,\DeskewFIFOs[1].DeskewFIFOx_n_5 ,\DeskewFIFOs[1].DeskewFIFOx_n_6 ,\DeskewFIFOs[1].DeskewFIFOx_n_7 ,\DeskewFIFOs[1].DeskewFIFOx_n_8 ,\DeskewFIFOs[1].DeskewFIFOx_n_9 ,\DeskewFIFOs[1].DeskewFIFOx_n_10 ,\DeskewFIFOs[1].DeskewFIFOx_n_11 ,\DeskewFIFOs[1].DeskewFIFOx_n_12 ,\DeskewFIFOs[1].DeskewFIFOx_n_13 }),
        .iFullInt_reg_0(\DeskewFIFOs[1].DeskewFIFOx_n_0 ),
        .iRdA0(iRdA0),
        .\iRdA_reg[0]_0 (\DeskewFIFOs[0].DeskewFIFOx_n_0 ),
        .orv2_out(orv2_out),
        .orv4_out(orv4_out),
        .p_0_in4_in(p_0_in4_in),
        .\rbByteCnt_reg[1] (\DeskewFIFOs[1].DeskewFIFOx_n_16 ),
        .\rbByteCnt_reg[1]_0 (\rbByteCnt_reg_n_0_[1] ),
        .rbEnInt(rbEnInt),
        .rbRst(rbRst),
        .\rbState_reg[0] (\DeskewFIFOs[1].DeskewFIFOx_n_14 ),
        .\rbState_reg[0]_0 (\DeskewFIFOs[0].DeskewFIFOx_n_1 ),
        .\rbState_reg[2] (\DeskewFIFOs[1].DeskewFIFOx_n_1 ),
        .\rbState_reg[2]_0 (\DeskewFIFOs[1].DeskewFIFOx_n_3 ),
        .rbTlastInt(rbTlastInt));
  FDRE \DeskewFIFOs[1].rbActiveHS_q_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[1].DeskewFIFOx_n_1 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_4 ),
        .Q(p_0_in4_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rbByteCnt_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_16 ),
        .Q(\rbByteCnt_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    rbEnInt_i_1
       (.I0(\rbState_reg_n_0_[2] ),
        .I1(\rbState_reg_n_0_[0] ),
        .I2(\rbState_reg_n_0_[1] ),
        .I3(rbEnInt_reg_0),
        .O(rbEnInt_i_1_n_0));
  FDRE rbEnInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(rbEnInt_i_1_n_0),
        .Q(rbEnInt),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[10] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[11] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[12] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[13] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[14] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[15] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[16] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[17] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[18] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[19] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[20] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[21] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[22] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[23] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[24] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[25] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[26] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[27] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[28] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[29] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[2] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[30] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[31] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[3] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[4] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[5] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[6] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[7] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[8] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \rbMAxisTdata_reg[9] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTdataInt[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[0] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[1] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[2] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[2] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \rbMAxisTkeep_reg[3] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(\rbTkeepInt_reg_n_0_[3] ),
        .Q(\rbMAxisTkeep_reg[3]_0 [3]),
        .R(1'b0));
  FDRE rbMAxisTlast_reg
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_2 ),
        .D(rbTlastInt),
        .Q(s_axis_tlast),
        .R(1'b0));
  FDRE rbMAxisTvalidInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .Q(s_axis_tvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF5F3FFFFF3F00000)) 
    \rbState[0]_i_1 
       (.I0(andv__0),
        .I1(orv4_out),
        .I2(\rbState_reg_n_0_[2] ),
        .I3(\rbState_reg_n_0_[1] ),
        .I4(rbNstate),
        .I5(\rbState_reg_n_0_[0] ),
        .O(\rbState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0054FFFF00FF0000)) 
    \rbState[1]_i_1 
       (.I0(\rbState_reg_n_0_[0] ),
        .I1(\DeskewFIFOs[1].DeskewFIFOx_n_0 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_1 ),
        .I3(\rbState_reg_n_0_[2] ),
        .I4(rbNstate),
        .I5(\rbState_reg_n_0_[1] ),
        .O(\rbState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0030FFFFEE880000)) 
    \rbState[2]_i_1 
       (.I0(orv4_out),
        .I1(\rbState_reg_n_0_[1] ),
        .I2(orv2_out),
        .I3(\rbState_reg_n_0_[0] ),
        .I4(rbNstate),
        .I5(\rbState_reg_n_0_[2] ),
        .O(\rbState[2]_i_1_n_0 ));
  FDRE \rbState_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbState[0]_i_1_n_0 ),
        .Q(\rbState_reg_n_0_[0] ),
        .R(rbRst));
  FDRE \rbState_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbState[1]_i_1_n_0 ),
        .Q(\rbState_reg_n_0_[1] ),
        .R(rbRst));
  FDRE \rbState_reg[2] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbState[2]_i_1_n_0 ),
        .Q(\rbState_reg_n_0_[2] ),
        .R(rbRst));
  FDRE \rbTdataInt_reg[0] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[16]),
        .Q(rbTdataInt[0]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[10] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_11 ),
        .Q(rbTdataInt[10]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[11] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_10 ),
        .Q(rbTdataInt[11]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[12] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_9 ),
        .Q(rbTdataInt[12]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[13] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_8 ),
        .Q(rbTdataInt[13]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[14] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_7 ),
        .Q(rbTdataInt[14]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[15] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_6 ),
        .Q(rbTdataInt[15]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[16] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[16]),
        .Q(rbTdataInt[16]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[17] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[17]),
        .Q(rbTdataInt[17]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[18] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[18]),
        .Q(rbTdataInt[18]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[19] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[19]),
        .Q(rbTdataInt[19]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[1] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[17]),
        .Q(rbTdataInt[1]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[20] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[20]),
        .Q(rbTdataInt[20]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[21] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[21]),
        .Q(rbTdataInt[21]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[22] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[22]),
        .Q(rbTdataInt[22]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[23] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_17 ),
        .D(rbTdataInt1__0[23]),
        .Q(rbTdataInt[23]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[24] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_13 ),
        .Q(rbTdataInt[24]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[25] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_12 ),
        .Q(rbTdataInt[25]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[26] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_11 ),
        .Q(rbTdataInt[26]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[27] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_10 ),
        .Q(rbTdataInt[27]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[28] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_9 ),
        .Q(rbTdataInt[28]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[29] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_8 ),
        .Q(rbTdataInt[29]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[2] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[18]),
        .Q(rbTdataInt[2]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[30] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_7 ),
        .Q(rbTdataInt[30]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[31] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_16 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_6 ),
        .Q(rbTdataInt[31]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[3] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[19]),
        .Q(rbTdataInt[3]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[4] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[20]),
        .Q(rbTdataInt[4]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[5] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[21]),
        .Q(rbTdataInt[5]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[6] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[22]),
        .Q(rbTdataInt[6]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[7] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_19 ),
        .D(rbTdataInt1__0[23]),
        .Q(rbTdataInt[7]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[8] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_13 ),
        .Q(rbTdataInt[8]),
        .R(rbRst));
  FDRE \rbTdataInt_reg[9] 
       (.C(RxByteClkHS),
        .CE(\DeskewFIFOs[0].DeskewFIFOx_n_18 ),
        .D(\DeskewFIFOs[1].DeskewFIFOx_n_12 ),
        .Q(rbTdataInt[9]),
        .R(rbRst));
  LUT5 #(
    .INIT(32'h77F700A0)) 
    \rbTkeepInt[0]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\rbByteCnt_reg_n_0_[1] ),
        .I4(\rbTkeepInt_reg_n_0_[0] ),
        .O(\rbTkeepInt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777F7770000A000)) 
    \rbTkeepInt[1]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\DeskewFIFOs[1].DeskewFIFOx_n_5 ),
        .I4(\rbByteCnt_reg_n_0_[1] ),
        .I5(\rbTkeepInt_reg_n_0_[1] ),
        .O(\rbTkeepInt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF777A000)) 
    \rbTkeepInt[2]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\rbByteCnt_reg_n_0_[1] ),
        .I4(\rbTkeepInt_reg_n_0_[2] ),
        .O(\rbTkeepInt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7777777A0000000)) 
    \rbTkeepInt[3]_i_1 
       (.I0(\rbTkeepInt[3]_i_2_n_0 ),
        .I1(\DeskewFIFOs[0].DeskewFIFOx_n_3 ),
        .I2(\DeskewFIFOs[0].DeskewFIFOx_n_6 ),
        .I3(\DeskewFIFOs[1].DeskewFIFOx_n_5 ),
        .I4(\rbByteCnt_reg_n_0_[1] ),
        .I5(\rbTkeepInt_reg_n_0_[3] ),
        .O(\rbTkeepInt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \rbTkeepInt[3]_i_2 
       (.I0(\rbState_reg_n_0_[1] ),
        .I1(\rbState_reg_n_0_[2] ),
        .I2(\rbState_reg_n_0_[0] ),
        .O(\rbTkeepInt[3]_i_2_n_0 ));
  FDRE \rbTkeepInt_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[0]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[0] ),
        .R(rbRst));
  FDRE \rbTkeepInt_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[1]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[1] ),
        .R(rbRst));
  FDRE \rbTkeepInt_reg[2] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[2]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[2] ),
        .R(rbRst));
  FDRE \rbTkeepInt_reg[3] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(\rbTkeepInt[3]_i_1_n_0 ),
        .Q(\rbTkeepInt_reg_n_0_[3] ),
        .R(rbRst));
endmodule

(* ORIG_REF_NAME = "MIPI_CSI2_Rx" *) 
module system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx
   (aD1Enable,
    m_axis_video_tvalid,
    m_axis_video_tdata,
    m_axis_video_tlast,
    m_axis_video_tuser,
    RxByteClkHS,
    video_aclk,
    \aDEnableInt_reg[0]_0 ,
    D,
    vRst_n,
    iDataIn,
    I62,
    m_axis_video_tready);
  output aD1Enable;
  output m_axis_video_tvalid;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  input RxByteClkHS;
  input video_aclk;
  input \aDEnableInt_reg[0]_0 ;
  input [0:0]D;
  input vRst_n;
  input [10:0]iDataIn;
  input [10:0]I62;
  input m_axis_video_tready;

  wire [0:0]D;
  wire DataFIFO_i_1_n_0;
  wire [10:0]I62;
  wire LLP_inst_n_0;
  wire LLP_inst_n_1;
  wire LLP_inst_n_2;
  wire LLP_inst_n_3;
  wire LLP_inst_n_4;
  wire LLP_inst_n_48;
  wire LLP_inst_n_49;
  wire LLP_inst_n_50;
  wire LLP_inst_n_51;
  wire LLP_inst_n_52;
  wire LLP_inst_n_53;
  wire LLP_inst_n_54;
  wire LLP_inst_n_55;
  wire LLP_inst_n_56;
  wire LLP_inst_n_57;
  wire LLP_inst_n_58;
  wire LLP_inst_n_59;
  wire LLP_inst_n_60;
  wire LLP_inst_n_61;
  wire LLP_inst_n_62;
  wire LLP_inst_n_64;
  wire LLP_inst_n_65;
  wire LLP_inst_n_66;
  wire LLP_inst_n_67;
  wire LLP_inst_n_68;
  wire LLP_inst_n_69;
  wire RxByteClkHS;
  wire SyncAsyncTready_n_0;
  wire aD1Enable;
  wire \aDEnableInt_reg[0]_0 ;
  wire [10:0]iDataIn;
  wire mFmt_Tlast_i_1_n_0;
  wire mFmt_Tvalid_i_1_n_0;
  wire mIsHeader0;
  wire mIsHeader_i_1_n_0;
  wire mKeep0_out;
  wire mKeep_i_1_n_0;
  wire mReg_Tuser0;
  wire \mReg_Tuser[0]_i_1_n_0 ;
  wire mReg_Tvalid_i_1_n_0;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire rbEn;
  wire rbLLPAxisTready;
  wire [31:0]rbLMAxisTdata;
  wire [3:0]rbLMAxisTkeep;
  wire rbLMAxisTlast;
  wire rbLMAxisTvalid;
  wire rbRst;
  wire rbRst_n;
  wire sError_i_1_n_0;
  wire sValid_i_1_n_0;
  wire vRst;
  wire vRst_n;
  wire video_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    DataFIFO_i_1
       (.I0(LLP_inst_n_1),
        .O(DataFIFO_i_1_n_0));
  system_MIPI_CSI_2_RX_0_0_LLP LLP_inst
       (.AS(vRst),
        .\FSM_onehot_sState_reg[3] (LLP_inst_n_62),
        .Q(rbLMAxisTdata),
        .\RAW10Formatter.cnt_reg[0]_0 (LLP_inst_n_66),
        .\RAW10Formatter.cnt_reg[1]_0 (LLP_inst_n_65),
        .\RAW10Formatter.cnt_reg[2]_0 (LLP_inst_n_64),
        .RxByteClkHS(RxByteClkHS),
        .\delay_reg[1]_0 (rbLLPAxisTready),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (LLP_inst_n_69),
        .\goreg_dm.dout_i_reg[0] (LLP_inst_n_51),
        .\gpr1.dout_i_reg[1] (rbLMAxisTkeep),
        .mFmt_Tlast_reg_0(LLP_inst_n_49),
        .mFmt_Tlast_reg_1(mFmt_Tlast_i_1_n_0),
        .mFmt_Tvalid_reg_0(LLP_inst_n_48),
        .mFmt_Tvalid_reg_1(mFmt_Tvalid_i_1_n_0),
        .mIsHeader0(mIsHeader0),
        .mIsHeader_reg_0(LLP_inst_n_55),
        .mIsHeader_reg_1(mIsHeader_i_1_n_0),
        .mKeep0_out(mKeep0_out),
        .mKeep_reg_0(LLP_inst_n_54),
        .mKeep_reg_1(mKeep_i_1_n_0),
        .mReg_Tlast_reg_0(LLP_inst_n_50),
        .mReg_Tuser0(mReg_Tuser0),
        .\mReg_Tuser_reg[0]_0 (LLP_inst_n_57),
        .\mReg_Tuser_reg[0]_1 (\mReg_Tuser[0]_i_1_n_0 ),
        .mReg_Tvalid_reg_0(LLP_inst_n_56),
        .mReg_Tvalid_reg_1(mReg_Tvalid_i_1_n_0),
        .m_axis_tlast(LLP_inst_n_3),
        .m_axis_tvalid(LLP_inst_n_2),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .\oSyncStages_reg[1] (LLP_inst_n_1),
        .out(LLP_inst_n_0),
        .\sErrSyndrome_reg[0] (LLP_inst_n_67),
        .\sErrSyndrome_reg[3] ({LLP_inst_n_58,LLP_inst_n_59,LLP_inst_n_60,LLP_inst_n_61}),
        .\sErrSyndrome_reg[4] (LLP_inst_n_68),
        .sError_reg(LLP_inst_n_53),
        .sError_reg_0(sError_i_1_n_0),
        .sValid_reg(LLP_inst_n_52),
        .sValid_reg_0(sValid_i_1_n_0),
        .s_aresetn(DataFIFO_i_1_n_0),
        .s_axis_tlast(rbLMAxisTlast),
        .s_axis_tready(LLP_inst_n_4),
        .s_axis_tvalid(rbLMAxisTvalid),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_LM LM_inst
       (.D(rbLLPAxisTready),
        .I62(I62),
        .Q(rbLMAxisTdata),
        .RxByteClkHS(RxByteClkHS),
        .iDataIn(iDataIn),
        .out(rbRst_n),
        .rbEnInt_reg_0(rbEn),
        .\rbMAxisTkeep_reg[3]_0 (rbLMAxisTkeep),
        .rbRst(rbRst),
        .s_axis_tlast(rbLMAxisTlast),
        .s_axis_tvalid(rbLMAxisTvalid));
  system_MIPI_CSI_2_RX_0_0_SyncAsync SyncAsyncEnable
       (.D(D),
        .RxByteClkHS(RxByteClkHS),
        .out(rbEn),
        .rbRst(rbRst));
  system_MIPI_CSI_2_RX_0_0_SyncAsync_0 SyncAsyncTready
       (.D(rbLLPAxisTready),
        .\YesAXILITE.vRst_n_reg (SyncAsyncTready_n_0),
        .vRst_n(vRst_n),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_ResetBridge SyncReset
       (.RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1] (SyncAsyncTready_n_0),
        .out(rbRst_n),
        .rbRst(rbRst));
  FDRE \aDEnableInt_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(\aDEnableInt_reg[0]_0 ),
        .Q(aD1Enable),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    mFmt_Tlast_i_1
       (.I0(LLP_inst_n_50),
        .I1(LLP_inst_n_56),
        .I2(LLP_inst_n_4),
        .I3(LLP_inst_n_0),
        .I4(LLP_inst_n_49),
        .O(mFmt_Tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA80000)) 
    mFmt_Tvalid_i_1
       (.I0(LLP_inst_n_56),
        .I1(LLP_inst_n_64),
        .I2(LLP_inst_n_65),
        .I3(LLP_inst_n_66),
        .I4(LLP_inst_n_4),
        .I5(LLP_inst_n_48),
        .O(mFmt_Tvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mIsHeader_i_1
       (.I0(LLP_inst_n_3),
        .I1(mIsHeader0),
        .I2(LLP_inst_n_55),
        .O(mIsHeader_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAA20)) 
    mKeep_i_1
       (.I0(mKeep0_out),
        .I1(LLP_inst_n_69),
        .I2(LLP_inst_n_51),
        .I3(LLP_inst_n_53),
        .I4(LLP_inst_n_52),
        .I5(LLP_inst_n_54),
        .O(mKeep_i_1_n_0));
  LUT4 #(
    .INIT(16'hF7F0)) 
    \mReg_Tuser[0]_i_1 
       (.I0(LLP_inst_n_56),
        .I1(LLP_inst_n_4),
        .I2(mReg_Tuser0),
        .I3(LLP_inst_n_57),
        .O(\mReg_Tuser[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    mReg_Tvalid_i_1
       (.I0(LLP_inst_n_54),
        .I1(LLP_inst_n_2),
        .I2(LLP_inst_n_4),
        .I3(LLP_inst_n_56),
        .O(mReg_Tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    sError_i_1
       (.I0(LLP_inst_n_68),
        .I1(LLP_inst_n_59),
        .I2(LLP_inst_n_58),
        .I3(LLP_inst_n_61),
        .I4(LLP_inst_n_60),
        .I5(LLP_inst_n_62),
        .O(sError_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sValid_i_1
       (.I0(LLP_inst_n_67),
        .I1(LLP_inst_n_62),
        .O(sValid_i_1_n_0));
  FDRE vRst_reg
       (.C(video_aclk),
        .CE(1'b1),
        .D(SyncAsyncTready_n_0),
        .Q(vRst),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "MIPI_CSI_2_RX_S_AXI_LITE" *) 
module system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s_axi_lite_bvalid,
    s_axi_lite_rvalid,
    Q,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_wvalid,
    s_axi_lite_awvalid,
    s_axi_lite_bready,
    s_axi_lite_arvalid,
    s_axi_lite_rready,
    s_axi_lite_araddr,
    s_axi_lite_awaddr,
    s_axi_lite_wdata,
    s_axi_lite_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s_axi_lite_bvalid;
  output s_axi_lite_rvalid;
  output [1:0]Q;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input s_axi_lite_wvalid;
  input s_axi_lite_awvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  input s_axi_lite_rready;
  input [1:0]s_axi_lite_araddr;
  input [1:0]s_axi_lite_awaddr;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;

  wire [1:0]Q;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire \control_reg[15]_i_1_n_0 ;
  wire \control_reg[23]_i_1_n_0 ;
  wire \control_reg[31]_i_1_n_0 ;
  wire \control_reg[7]_i_1_n_0 ;
  wire \control_reg_reg_n_0_[10] ;
  wire \control_reg_reg_n_0_[11] ;
  wire \control_reg_reg_n_0_[12] ;
  wire \control_reg_reg_n_0_[13] ;
  wire \control_reg_reg_n_0_[14] ;
  wire \control_reg_reg_n_0_[15] ;
  wire \control_reg_reg_n_0_[16] ;
  wire \control_reg_reg_n_0_[17] ;
  wire \control_reg_reg_n_0_[18] ;
  wire \control_reg_reg_n_0_[19] ;
  wire \control_reg_reg_n_0_[20] ;
  wire \control_reg_reg_n_0_[21] ;
  wire \control_reg_reg_n_0_[22] ;
  wire \control_reg_reg_n_0_[23] ;
  wire \control_reg_reg_n_0_[24] ;
  wire \control_reg_reg_n_0_[25] ;
  wire \control_reg_reg_n_0_[26] ;
  wire \control_reg_reg_n_0_[27] ;
  wire \control_reg_reg_n_0_[28] ;
  wire \control_reg_reg_n_0_[29] ;
  wire \control_reg_reg_n_0_[2] ;
  wire \control_reg_reg_n_0_[30] ;
  wire \control_reg_reg_n_0_[31] ;
  wire \control_reg_reg_n_0_[3] ;
  wire \control_reg_reg_n_0_[4] ;
  wire \control_reg_reg_n_0_[5] ;
  wire \control_reg_reg_n_0_[6] ;
  wire \control_reg_reg_n_0_[7] ;
  wire \control_reg_reg_n_0_[8] ;
  wire \control_reg_reg_n_0_[9] ;
  wire [31:0]reg_data_out;
  wire s_axi_lite_aclk;
  wire [1:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arvalid;
  wire [1:0]s_axi_lite_awaddr;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire slv_reg_rden;
  wire slv_reg_wren__0;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_lite_araddr[0]),
        .I1(s_axi_lite_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_lite_araddr[1]),
        .I1(s_axi_lite_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_lite_awaddr[0]),
        .I1(s_axi_lite_wvalid),
        .I2(s_axi_lite_awvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_lite_awaddr[1]),
        .I1(s_axi_lite_wvalid),
        .I2(s_axi_lite_awvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_lite_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(s_axi_lite_bready),
        .I5(s_axi_lite_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_lite_bvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[10]_i_1 
       (.I0(\control_reg_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[11]_i_1 
       (.I0(\control_reg_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[12]_i_1 
       (.I0(\control_reg_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[13]_i_1 
       (.I0(\control_reg_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[14]_i_1 
       (.I0(\control_reg_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[15]_i_1 
       (.I0(\control_reg_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\control_reg_reg_n_0_[16] ),
        .I2(axi_araddr[3]),
        .O(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[17]_i_1 
       (.I0(\control_reg_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[18]_i_1 
       (.I0(\control_reg_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[19]_i_1 
       (.I0(\control_reg_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_araddr[2]),
        .I1(Q[1]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[20]_i_1 
       (.I0(\control_reg_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[21]_i_1 
       (.I0(\control_reg_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[22]_i_1 
       (.I0(\control_reg_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[23]_i_1 
       (.I0(\control_reg_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[24]_i_1 
       (.I0(\control_reg_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[25]_i_1 
       (.I0(\control_reg_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[26]_i_1 
       (.I0(\control_reg_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[27]_i_1 
       (.I0(\control_reg_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[28]_i_1 
       (.I0(\control_reg_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[29]_i_1 
       (.I0(\control_reg_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[2]_i_1 
       (.I0(\control_reg_reg_n_0_[2] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[30]_i_1 
       (.I0(\control_reg_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_rvalid),
        .O(slv_reg_rden));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[31]_i_2 
       (.I0(\control_reg_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[3]_i_1 
       (.I0(\control_reg_reg_n_0_[3] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[4]_i_1 
       (.I0(\control_reg_reg_n_0_[4] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[5]_i_1 
       (.I0(\control_reg_reg_n_0_[5] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[6]_i_1 
       (.I0(\control_reg_reg_n_0_[6] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[7]_i_1 
       (.I0(\control_reg_reg_n_0_[7] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[8]_i_1 
       (.I0(\control_reg_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \axi_rdata[9]_i_1 
       (.I0(\control_reg_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_lite_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_lite_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_lite_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_lite_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_lite_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_lite_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_lite_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_lite_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_lite_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_lite_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_lite_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_lite_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_lite_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_lite_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_lite_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_lite_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_lite_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_lite_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_lite_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_lite_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_lite_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_lite_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_lite_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_lite_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_lite_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_lite_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_lite_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_lite_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_lite_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_lite_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s_axi_lite_rvalid),
        .I3(s_axi_lite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_lite_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[1]),
        .O(\control_reg[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[2]),
        .O(\control_reg[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[3]),
        .O(\control_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \control_reg[31]_i_2 
       (.I0(axi_awready_reg_0),
        .I1(axi_wready_reg_0),
        .I2(s_axi_lite_wvalid),
        .I3(s_axi_lite_awvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \control_reg[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s_axi_lite_wstrb[0]),
        .O(\control_reg[7]_i_1_n_0 ));
  FDRE \control_reg_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(\control_reg_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(\control_reg_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(\control_reg_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(\control_reg_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(\control_reg_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(\control_reg_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(\control_reg_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(\control_reg_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(\control_reg_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(\control_reg_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDSE \control_reg_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(Q[1]),
        .S(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(\control_reg_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(\control_reg_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(\control_reg_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(\control_reg_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(\control_reg_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(\control_reg_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(\control_reg_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(\control_reg_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(\control_reg_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(\control_reg_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(\control_reg_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(\control_reg_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(\control_reg_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(\control_reg_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(\control_reg_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(\control_reg_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(\control_reg_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(\control_reg_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(\control_reg_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \control_reg_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\control_reg[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(\control_reg_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge
   (out,
    rbRst,
    RxByteClkHS,
    \oSyncStages_reg[1] );
  output [0:0]out;
  output rbRst;
  input RxByteClkHS;
  input \oSyncStages_reg[1] ;

  wire RxByteClkHS;
  wire \oSyncStages_reg[1] ;
  wire [0:0]out;
  wire rbRst;

  system_MIPI_CSI_2_RX_0_0_SyncAsync_1 SyncAsyncx
       (.RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .out(out),
        .rbRst(rbRst));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0
   (\oSyncStages_reg[1] ,
    video_aclk,
    AS);
  output \oSyncStages_reg[1] ;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire \oSyncStages_reg[1] ;
  wire video_aclk;

  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0 SyncAsyncx
       (.AS(AS),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .video_aclk(video_aclk));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3
   (out,
    E,
    mReg_Tvalid_reg,
    \RAW10Formatter.cnt_reg[1] ,
    \RAW10Formatter.cnt_reg[0] ,
    \oSyncStages_reg[1] ,
    \oSyncStages_reg[1]_0 ,
    \oSyncStages_reg[1]_1 ,
    \oSyncStages_reg[1]_2 ,
    \oSyncStages_reg[1]_3 ,
    s_axis_aresetn,
    mFmt_Tvalid_reg,
    m_axis_tvalid,
    \mReg_Tdata_reg[31] ,
    s_axis_tready,
    \RAW10Formatter.cnt_reg[2] ,
    \RAW10Formatter.cnt_reg[2]_0 ,
    \RAW10Formatter.cnt_reg[2]_1 ,
    \RAW10Formatter.cnt_reg[2]_2 ,
    \RAW10Formatter.cnt_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[1]_1 ,
    cnt,
    \mFmt_Tuser_reg[0] ,
    \mFmt_Tuser_reg[0]_0 ,
    s_axis_tuser,
    video_aclk,
    AS);
  output [0:0]out;
  output [0:0]E;
  output mReg_Tvalid_reg;
  output \RAW10Formatter.cnt_reg[1] ;
  output \RAW10Formatter.cnt_reg[0] ;
  output [0:0]\oSyncStages_reg[1] ;
  output [0:0]\oSyncStages_reg[1]_0 ;
  output [0:0]\oSyncStages_reg[1]_1 ;
  output [0:0]\oSyncStages_reg[1]_2 ;
  output [0:0]\oSyncStages_reg[1]_3 ;
  output s_axis_aresetn;
  output mFmt_Tvalid_reg;
  input m_axis_tvalid;
  input \mReg_Tdata_reg[31] ;
  input s_axis_tready;
  input \RAW10Formatter.cnt_reg[2] ;
  input \RAW10Formatter.cnt_reg[2]_0 ;
  input \RAW10Formatter.cnt_reg[2]_1 ;
  input \RAW10Formatter.cnt_reg[2]_2 ;
  input \RAW10Formatter.cnt_reg[1]_0 ;
  input \RAW10Formatter.cnt_reg[1]_1 ;
  input cnt;
  input \mFmt_Tuser_reg[0] ;
  input \mFmt_Tuser_reg[0]_0 ;
  input [0:0]s_axis_tuser;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]E;
  wire \RAW10Formatter.cnt_reg[0] ;
  wire \RAW10Formatter.cnt_reg[1] ;
  wire \RAW10Formatter.cnt_reg[1]_0 ;
  wire \RAW10Formatter.cnt_reg[1]_1 ;
  wire \RAW10Formatter.cnt_reg[2] ;
  wire \RAW10Formatter.cnt_reg[2]_0 ;
  wire \RAW10Formatter.cnt_reg[2]_1 ;
  wire \RAW10Formatter.cnt_reg[2]_2 ;
  wire cnt;
  wire \mFmt_Tuser_reg[0] ;
  wire \mFmt_Tuser_reg[0]_0 ;
  wire mFmt_Tvalid_reg;
  wire \mReg_Tdata_reg[31] ;
  wire mReg_Tvalid_reg;
  wire m_axis_tvalid;
  wire [0:0]\oSyncStages_reg[1] ;
  wire [0:0]\oSyncStages_reg[1]_0 ;
  wire [0:0]\oSyncStages_reg[1]_1 ;
  wire [0:0]\oSyncStages_reg[1]_2 ;
  wire [0:0]\oSyncStages_reg[1]_3 ;
  wire [0:0]out;
  wire s_axis_aresetn;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire video_aclk;

  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6 SyncAsyncx
       (.AS(AS),
        .E(E),
        .\RAW10Formatter.cnt_reg[0] (\RAW10Formatter.cnt_reg[0] ),
        .\RAW10Formatter.cnt_reg[1] (\RAW10Formatter.cnt_reg[1] ),
        .\RAW10Formatter.cnt_reg[1]_0 (\RAW10Formatter.cnt_reg[1]_0 ),
        .\RAW10Formatter.cnt_reg[1]_1 (\RAW10Formatter.cnt_reg[1]_1 ),
        .\RAW10Formatter.cnt_reg[2] (\RAW10Formatter.cnt_reg[2] ),
        .\RAW10Formatter.cnt_reg[2]_0 (\RAW10Formatter.cnt_reg[2]_0 ),
        .\RAW10Formatter.cnt_reg[2]_1 (\RAW10Formatter.cnt_reg[2]_1 ),
        .\RAW10Formatter.cnt_reg[2]_2 (\RAW10Formatter.cnt_reg[2]_2 ),
        .cnt(cnt),
        .\mFmt_Tuser_reg[0] (\mFmt_Tuser_reg[0] ),
        .\mFmt_Tuser_reg[0]_0 (\mFmt_Tuser_reg[0]_0 ),
        .mFmt_Tvalid_reg(mFmt_Tvalid_reg),
        .\mReg_Tdata_reg[31] (\mReg_Tdata_reg[31] ),
        .mReg_Tvalid_reg(mReg_Tvalid_reg),
        .m_axis_tvalid(m_axis_tvalid),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ),
        .\oSyncStages_reg[1]_1 (\oSyncStages_reg[1]_0 ),
        .\oSyncStages_reg[1]_2 (\oSyncStages_reg[1]_1 ),
        .\oSyncStages_reg[1]_3 (\oSyncStages_reg[1]_2 ),
        .\oSyncStages_reg[1]_4 (\oSyncStages_reg[1]_3 ),
        .out(out),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .video_aclk(video_aclk));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4
   (\oSyncStages_reg[1] ,
    RxByteClkHS,
    AS);
  output [0:0]\oSyncStages_reg[1] ;
  input RxByteClkHS;
  input [0:0]AS;

  wire [0:0]AS;
  wire RxByteClkHS;
  wire [0:0]\oSyncStages_reg[1] ;

  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5 SyncAsyncx
       (.AS(AS),
        .RxByteClkHS(RxByteClkHS),
        .\oSyncStages_reg[1]_0 (\oSyncStages_reg[1] ));
endmodule

(* ORIG_REF_NAME = "SimpleFIFO" *) 
module system_MIPI_CSI_2_RX_0_0_SimpleFIFO
   (iEmptyInt_reg_0,
    iFullInt_reg_0,
    E,
    \rbByteCnt_reg[1] ,
    rbNstate,
    iDataOut,
    andv__0,
    \rbState_reg[0] ,
    rbRst,
    iRdA0,
    RxByteClkHS,
    rbEnInt,
    iEmptyInt_reg_1,
    out,
    rbMAxisTvalidInt_reg,
    rbMAxisTvalidInt_reg_0,
    \rbState_reg[0]_0 ,
    \rbState[2]_i_4_0 ,
    rbMAxisTvalidInt_reg_1,
    \rbState[2]_i_4_1 ,
    D,
    rbMAxisTvalidInt_reg_2,
    iDataIn);
  output iEmptyInt_reg_0;
  output iFullInt_reg_0;
  output [0:0]E;
  output \rbByteCnt_reg[1] ;
  output rbNstate;
  output [9:0]iDataOut;
  output andv__0;
  output [3:0]\rbState_reg[0] ;
  input rbRst;
  input iRdA0;
  input RxByteClkHS;
  input rbEnInt;
  input iEmptyInt_reg_1;
  input [0:0]out;
  input rbMAxisTvalidInt_reg;
  input rbMAxisTvalidInt_reg_0;
  input \rbState_reg[0]_0 ;
  input [1:0]\rbState[2]_i_4_0 ;
  input rbMAxisTvalidInt_reg_1;
  input \rbState[2]_i_4_1 ;
  input [0:0]D;
  input rbMAxisTvalidInt_reg_2;
  input [10:0]iDataIn;

  wire [0:0]D;
  wire [0:0]E;
  wire FIFO_reg_0_31_6_10_n_2;
  wire RxByteClkHS;
  wire andv__0;
  wire [10:0]iDataIn;
  wire [9:0]iDataOut;
  wire iEmptyInt1__8;
  wire iEmptyInt_i_1_n_0;
  wire iEmptyInt_i_3_n_0;
  wire iEmptyInt_i_4_n_0;
  wire iEmptyInt_reg_0;
  wire iEmptyInt_reg_1;
  wire iFullInt2__8;
  wire iFullInt_i_1_n_0;
  wire iFullInt_i_3_n_0;
  wire iFullInt_i_4_n_0;
  wire iFullInt_reg_0;
  wire [4:0]iRdA;
  wire iRdA0;
  wire \iRdA[0]_i_1_n_0 ;
  wire \iRdA[1]_i_1_n_0 ;
  wire \iRdA[2]_i_1_n_0 ;
  wire \iRdA[3]_i_2_n_0 ;
  wire \iRdA[4]_i_1_n_0 ;
  wire [4:0]iWrA;
  wire \iWrA[0]_i_1_n_0 ;
  wire \iWrA[1]_i_1_n_0 ;
  wire \iWrA[2]_i_1_n_0 ;
  wire \iWrA[3]_i_1_n_0 ;
  wire \iWrA[4]_i_2_n_0 ;
  wire \iWrA[4]_i_3_n_0 ;
  wire [0:0]out;
  wire \rbByteCnt_reg[1] ;
  wire rbEnInt;
  wire rbMAxisTvalidInt_reg;
  wire rbMAxisTvalidInt_reg_0;
  wire rbMAxisTvalidInt_reg_1;
  wire rbMAxisTvalidInt_reg_2;
  wire rbNstate;
  wire rbRst;
  wire [1:0]\rbState[2]_i_4_0 ;
  wire \rbState[2]_i_4_1 ;
  wire \rbState[2]_i_5_n_0 ;
  wire \rbState[2]_i_6_n_0 ;
  wire [3:0]\rbState_reg[0] ;
  wire \rbState_reg[0]_0 ;
  wire [1:0]NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED;
  wire [1:0]NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M FIFO_reg_0_31_0_5
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(iDataIn[1:0]),
        .DIB(iDataIn[3:2]),
        .DIC(iDataIn[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[1:0]),
        .DOB(iDataOut[3:2]),
        .DOC(iDataOut[5:4]),
        .DOD(NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "10" *) 
  RAM32M FIFO_reg_0_31_6_10
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(iDataIn[7:6]),
        .DIB(iDataIn[9:8]),
        .DIC({1'b0,iDataIn[10]}),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[7:6]),
        .DOB({FIFO_reg_0_31_6_10_n_2,iDataOut[8]}),
        .DOC({NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED[1],iDataOut[9]}),
        .DOD(NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  LUT4 #(
    .INIT(16'h5540)) 
    iEmptyInt_i_1
       (.I0(rbEnInt),
        .I1(iEmptyInt_reg_1),
        .I2(iEmptyInt1__8),
        .I3(iEmptyInt_reg_0),
        .O(iEmptyInt_i_1_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iEmptyInt_i_2
       (.I0(iWrA[3]),
        .I1(iEmptyInt_i_3_n_0),
        .I2(iWrA[4]),
        .I3(iRdA[4]),
        .I4(iRdA[3]),
        .I5(iEmptyInt_i_4_n_0),
        .O(iEmptyInt1__8));
  LUT6 #(
    .INIT(64'h0082410014000082)) 
    iEmptyInt_i_3
       (.I0(iWrA[0]),
        .I1(iWrA[2]),
        .I2(iRdA[2]),
        .I3(iRdA[0]),
        .I4(iRdA[1]),
        .I5(iWrA[1]),
        .O(iEmptyInt_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iEmptyInt_i_4
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(iEmptyInt_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iEmptyInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iEmptyInt_i_1_n_0),
        .Q(iEmptyInt_reg_0),
        .S(rbRst));
  LUT5 #(
    .INIT(32'h05050400)) 
    iFullInt_i_1
       (.I0(iEmptyInt_reg_0),
        .I1(iFullInt2__8),
        .I2(iEmptyInt_reg_1),
        .I3(rbEnInt),
        .I4(iFullInt_reg_0),
        .O(iFullInt_i_1_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iFullInt_i_2
       (.I0(iRdA[3]),
        .I1(iFullInt_i_3_n_0),
        .I2(iRdA[4]),
        .I3(iWrA[4]),
        .I4(iWrA[3]),
        .I5(iFullInt_i_4_n_0),
        .O(iFullInt2__8));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    iFullInt_i_3
       (.I0(iRdA[0]),
        .I1(iRdA[2]),
        .I2(iWrA[2]),
        .I3(iWrA[1]),
        .I4(iWrA[0]),
        .I5(iRdA[1]),
        .O(iFullInt_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iFullInt_i_4
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(iFullInt_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iFullInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iFullInt_i_1_n_0),
        .Q(iFullInt_reg_0),
        .S(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iRdA[0]_i_1 
       (.I0(iRdA[0]),
        .O(\iRdA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iRdA[1]_i_1 
       (.I0(iRdA[1]),
        .I1(iRdA[0]),
        .O(\iRdA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iRdA[2]_i_1 
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(\iRdA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iRdA[3]_i_2 
       (.I0(iRdA[3]),
        .I1(iRdA[2]),
        .I2(iRdA[1]),
        .I3(iRdA[0]),
        .O(\iRdA[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iRdA[4]_i_1 
       (.I0(iRdA[4]),
        .I1(iRdA[3]),
        .I2(iRdA[2]),
        .I3(iRdA[1]),
        .I4(iRdA[0]),
        .O(\iRdA[4]_i_1_n_0 ));
  FDRE \iRdA_reg[0] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[0]_i_1_n_0 ),
        .Q(iRdA[0]),
        .R(rbRst));
  FDRE \iRdA_reg[1] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[1]_i_1_n_0 ),
        .Q(iRdA[1]),
        .R(rbRst));
  FDRE \iRdA_reg[2] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[2]_i_1_n_0 ),
        .Q(iRdA[2]),
        .R(rbRst));
  FDRE \iRdA_reg[3] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[3]_i_2_n_0 ),
        .Q(iRdA[3]),
        .R(rbRst));
  FDRE \iRdA_reg[4] 
       (.C(RxByteClkHS),
        .CE(iRdA0),
        .D(\iRdA[4]_i_1_n_0 ),
        .Q(iRdA[4]),
        .R(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iWrA[0]_i_1 
       (.I0(iWrA[0]),
        .O(\iWrA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iWrA[1]_i_1 
       (.I0(iWrA[0]),
        .I1(iWrA[1]),
        .O(\iWrA[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iWrA[2]_i_1 
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(\iWrA[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iWrA[3]_i_1 
       (.I0(iWrA[3]),
        .I1(iWrA[2]),
        .I2(iWrA[0]),
        .I3(iWrA[1]),
        .O(\iWrA[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iWrA[4]_i_2 
       (.I0(rbEnInt),
        .I1(iFullInt_reg_0),
        .O(\iWrA[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iWrA[4]_i_3 
       (.I0(iWrA[4]),
        .I1(iWrA[3]),
        .I2(iWrA[2]),
        .I3(iWrA[0]),
        .I4(iWrA[1]),
        .O(\iWrA[4]_i_3_n_0 ));
  FDRE \iWrA_reg[0] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[0]_i_1_n_0 ),
        .Q(iWrA[0]),
        .R(rbRst));
  FDRE \iWrA_reg[1] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[1]_i_1_n_0 ),
        .Q(iWrA[1]),
        .R(rbRst));
  FDRE \iWrA_reg[2] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[2]_i_1_n_0 ),
        .Q(iWrA[2]),
        .R(rbRst));
  FDRE \iWrA_reg[3] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[3]_i_1_n_0 ),
        .Q(iWrA[3]),
        .R(rbRst));
  FDRE \iWrA_reg[4] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_2_n_0 ),
        .D(\iWrA[4]_i_3_n_0 ),
        .Q(iWrA[4]),
        .R(rbRst));
  LUT2 #(
    .INIT(4'hB)) 
    \rbMAxisTdata[31]_i_1 
       (.I0(\rbByteCnt_reg[1] ),
        .I1(out),
        .O(E));
  LUT6 #(
    .INIT(64'h0000FF0000005700)) 
    rbMAxisTvalidInt_i_1
       (.I0(rbMAxisTvalidInt_reg_2),
        .I1(iDataOut[8]),
        .I2(\rbState[2]_i_4_0 [0]),
        .I3(rbMAxisTvalidInt_reg),
        .I4(rbMAxisTvalidInt_reg_0),
        .I5(rbMAxisTvalidInt_reg_1),
        .O(\rbByteCnt_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \rbState[0]_i_2 
       (.I0(iDataOut[8]),
        .I1(\rbState[2]_i_4_0 [0]),
        .O(andv__0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rbState[2]_i_4 
       (.I0(\rbState[2]_i_5_n_0 ),
        .I1(rbMAxisTvalidInt_reg),
        .I2(\rbState[2]_i_6_n_0 ),
        .I3(rbMAxisTvalidInt_reg_0),
        .I4(\rbState_reg[0]_0 ),
        .O(rbNstate));
  LUT6 #(
    .INIT(64'hFF10FF1FFF1FFF1F)) 
    \rbState[2]_i_5 
       (.I0(iDataOut[9]),
        .I1(\rbState[2]_i_4_0 [1]),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(rbMAxisTvalidInt_reg_1),
        .I4(iDataOut[8]),
        .I5(\rbState[2]_i_4_0 [0]),
        .O(\rbState[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \rbState[2]_i_6 
       (.I0(iDataOut[8]),
        .I1(\rbState[2]_i_4_0 [0]),
        .I2(rbMAxisTvalidInt_reg_1),
        .I3(iFullInt_reg_0),
        .I4(\rbState[2]_i_4_1 ),
        .I5(D),
        .O(\rbState[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000024000000)) 
    \rbTdataInt[15]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(\rbState[2]_i_4_0 [0]),
        .I5(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h24000000)) 
    \rbTdataInt[23]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [2]));
  LUT6 #(
    .INIT(64'h2400000000000000)) 
    \rbTdataInt[31]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(\rbState[2]_i_4_0 [0]),
        .I5(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00002400)) 
    \rbTdataInt[7]_i_1 
       (.I0(rbMAxisTvalidInt_reg_1),
        .I1(rbMAxisTvalidInt_reg),
        .I2(rbMAxisTvalidInt_reg_0),
        .I3(iDataOut[8]),
        .I4(rbMAxisTvalidInt_reg_2),
        .O(\rbState_reg[0] [0]));
endmodule

(* ORIG_REF_NAME = "SimpleFIFO" *) 
module system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2
   (iFullInt_reg_0,
    \rbState_reg[2] ,
    iRdA0,
    \rbState_reg[2]_0 ,
    iDataOut,
    \rbState_reg[0] ,
    rbTlastInt,
    \rbByteCnt_reg[1] ,
    orv2_out,
    orv4_out,
    rbRst,
    RxByteClkHS,
    rbEnInt,
    \iRdA_reg[0]_0 ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1] ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ,
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ,
    p_0_in4_in,
    \rbState_reg[0]_0 ,
    \rbByteCnt_reg[1]_0 ,
    I62);
  output iFullInt_reg_0;
  output \rbState_reg[2] ;
  output iRdA0;
  output \rbState_reg[2]_0 ;
  output [9:0]iDataOut;
  output \rbState_reg[0] ;
  output rbTlastInt;
  output \rbByteCnt_reg[1] ;
  output orv2_out;
  output orv4_out;
  input rbRst;
  input RxByteClkHS;
  input rbEnInt;
  input \iRdA_reg[0]_0 ;
  input [1:0]\DeskewFIFOs[1].rbActiveHS_q_reg[1] ;
  input \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ;
  input \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ;
  input \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ;
  input [1:0]p_0_in4_in;
  input \rbState_reg[0]_0 ;
  input \rbByteCnt_reg[1]_0 ;
  input [10:0]I62;

  wire \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ;
  wire [1:0]\DeskewFIFOs[1].rbActiveHS_q_reg[1] ;
  wire \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ;
  wire \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ;
  wire \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ;
  wire FIFO_reg_0_31_6_10_n_2;
  wire [10:0]I62;
  wire RxByteClkHS;
  wire [9:0]iDataOut;
  wire iEmptyInt1__8;
  wire iEmptyInt_i_1__0_n_0;
  wire iEmptyInt_i_3__0_n_0;
  wire iEmptyInt_i_4__0_n_0;
  wire iEmptyInt_reg_n_0;
  wire iFullInt2__8;
  wire iFullInt_i_1__0_n_0;
  wire iFullInt_i_3__0_n_0;
  wire iFullInt_i_4__0_n_0;
  wire iFullInt_reg_0;
  wire [4:0]iRdA;
  wire iRdA0;
  wire iRdA0_0;
  wire \iRdA[0]_i_1__0_n_0 ;
  wire \iRdA[1]_i_1__0_n_0 ;
  wire \iRdA[2]_i_1__0_n_0 ;
  wire \iRdA[3]_i_2__0_n_0 ;
  wire \iRdA[4]_i_1__0_n_0 ;
  wire \iRdA_reg[0]_0 ;
  wire [4:0]iWrA;
  wire \iWrA[0]_i_1__0_n_0 ;
  wire \iWrA[1]_i_1__0_n_0 ;
  wire \iWrA[2]_i_1__0_n_0 ;
  wire \iWrA[3]_i_1__0_n_0 ;
  wire \iWrA[4]_i_1_n_0 ;
  wire \iWrA[4]_i_2__0_n_0 ;
  wire orv2_out;
  wire orv4_out;
  wire [1:0]p_0_in4_in;
  wire \rbByteCnt_reg[1] ;
  wire \rbByteCnt_reg[1]_0 ;
  wire rbEnInt;
  wire rbRst;
  wire \rbState_reg[0] ;
  wire \rbState_reg[0]_0 ;
  wire \rbState_reg[2] ;
  wire \rbState_reg[2]_0 ;
  wire rbTlastInt;
  wire [1:0]NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED;
  wire [1:0]NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h7777773777777700)) 
    \DeskewFIFOs[0].rbActiveHS_q[0]_i_1 
       (.I0(\DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .I2(iDataOut[9]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I5(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .O(\rbState_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h0777)) 
    \DeskewFIFOs[0].rbActiveHS_q[0]_i_2 
       (.I0(p_0_in4_in[1]),
        .I1(p_0_in4_in[0]),
        .I2(iDataOut[9]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .O(\DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7777773777777700)) 
    \DeskewFIFOs[1].rbActiveHS_q[1]_i_1 
       (.I0(\DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0 ),
        .I1(iDataOut[9]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I5(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .O(\rbState_reg[2] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M FIFO_reg_0_31_0_5
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(I62[1:0]),
        .DIB(I62[3:2]),
        .DIC(I62[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[1:0]),
        .DOB(iDataOut[3:2]),
        .DOC(iDataOut[5:4]),
        .DOD(NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "352" *) 
  (* RTL_RAM_NAME = "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "10" *) 
  RAM32M FIFO_reg_0_31_6_10
       (.ADDRA(iRdA),
        .ADDRB(iRdA),
        .ADDRC(iRdA),
        .ADDRD(iWrA),
        .DIA(I62[7:6]),
        .DIB(I62[9:8]),
        .DIC({1'b0,I62[10]}),
        .DID({1'b0,1'b0}),
        .DOA(iDataOut[7:6]),
        .DOB({FIFO_reg_0_31_6_10_n_2,iDataOut[8]}),
        .DOC({NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED[1],iDataOut[9]}),
        .DOD(NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED[1:0]),
        .WCLK(RxByteClkHS),
        .WE(rbEnInt));
  LUT4 #(
    .INIT(16'h5540)) 
    iEmptyInt_i_1__0
       (.I0(rbEnInt),
        .I1(\rbState_reg[2] ),
        .I2(iEmptyInt1__8),
        .I3(iEmptyInt_reg_n_0),
        .O(iEmptyInt_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iEmptyInt_i_2__0
       (.I0(iWrA[3]),
        .I1(iEmptyInt_i_3__0_n_0),
        .I2(iWrA[4]),
        .I3(iRdA[4]),
        .I4(iRdA[3]),
        .I5(iEmptyInt_i_4__0_n_0),
        .O(iEmptyInt1__8));
  LUT6 #(
    .INIT(64'h0082410014000082)) 
    iEmptyInt_i_3__0
       (.I0(iWrA[0]),
        .I1(iWrA[2]),
        .I2(iRdA[2]),
        .I3(iRdA[0]),
        .I4(iRdA[1]),
        .I5(iWrA[1]),
        .O(iEmptyInt_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iEmptyInt_i_4__0
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(iEmptyInt_i_4__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iEmptyInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iEmptyInt_i_1__0_n_0),
        .Q(iEmptyInt_reg_n_0),
        .S(rbRst));
  LUT5 #(
    .INIT(32'h05050400)) 
    iFullInt_i_1__0
       (.I0(iEmptyInt_reg_n_0),
        .I1(iFullInt2__8),
        .I2(\rbState_reg[2] ),
        .I3(rbEnInt),
        .I4(iFullInt_reg_0),
        .O(iFullInt_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    iFullInt_i_2__0
       (.I0(iRdA[3]),
        .I1(iFullInt_i_3__0_n_0),
        .I2(iRdA[4]),
        .I3(iWrA[4]),
        .I4(iWrA[3]),
        .I5(iFullInt_i_4__0_n_0),
        .O(iFullInt2__8));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    iFullInt_i_3__0
       (.I0(iRdA[0]),
        .I1(iRdA[2]),
        .I2(iWrA[2]),
        .I3(iWrA[1]),
        .I4(iWrA[0]),
        .I5(iRdA[1]),
        .O(iFullInt_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    iFullInt_i_4__0
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(iFullInt_i_4__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    iFullInt_reg
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(iFullInt_i_1__0_n_0),
        .Q(iFullInt_reg_0),
        .S(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iRdA[0]_i_1__0 
       (.I0(iRdA[0]),
        .O(\iRdA[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iRdA[1]_i_1__0 
       (.I0(iRdA[1]),
        .I1(iRdA[0]),
        .O(\iRdA[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iRdA[2]_i_1__0 
       (.I0(iRdA[2]),
        .I1(iRdA[1]),
        .I2(iRdA[0]),
        .O(\iRdA[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \iRdA[3]_i_1 
       (.I0(\rbState_reg[2]_0 ),
        .I1(\iRdA_reg[0]_0 ),
        .O(iRdA0));
  LUT2 #(
    .INIT(4'h2)) 
    \iRdA[3]_i_1__0 
       (.I0(\rbState_reg[2] ),
        .I1(iEmptyInt_reg_n_0),
        .O(iRdA0_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iRdA[3]_i_2__0 
       (.I0(iRdA[3]),
        .I1(iRdA[2]),
        .I2(iRdA[1]),
        .I3(iRdA[0]),
        .O(\iRdA[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iRdA[4]_i_1__0 
       (.I0(iRdA[4]),
        .I1(iRdA[3]),
        .I2(iRdA[2]),
        .I3(iRdA[1]),
        .I4(iRdA[0]),
        .O(\iRdA[4]_i_1__0_n_0 ));
  FDRE \iRdA_reg[0] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[0]_i_1__0_n_0 ),
        .Q(iRdA[0]),
        .R(rbRst));
  FDRE \iRdA_reg[1] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[1]_i_1__0_n_0 ),
        .Q(iRdA[1]),
        .R(rbRst));
  FDRE \iRdA_reg[2] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[2]_i_1__0_n_0 ),
        .Q(iRdA[2]),
        .R(rbRst));
  FDRE \iRdA_reg[3] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[3]_i_2__0_n_0 ),
        .Q(iRdA[3]),
        .R(rbRst));
  FDRE \iRdA_reg[4] 
       (.C(RxByteClkHS),
        .CE(iRdA0_0),
        .D(\iRdA[4]_i_1__0_n_0 ),
        .Q(iRdA[4]),
        .R(rbRst));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iWrA[0]_i_1__0 
       (.I0(iWrA[0]),
        .O(\iWrA[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iWrA[1]_i_1__0 
       (.I0(iWrA[0]),
        .I1(iWrA[1]),
        .O(\iWrA[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \iWrA[2]_i_1__0 
       (.I0(iWrA[2]),
        .I1(iWrA[0]),
        .I2(iWrA[1]),
        .O(\iWrA[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \iWrA[3]_i_1__0 
       (.I0(iWrA[3]),
        .I1(iWrA[2]),
        .I2(iWrA[0]),
        .I3(iWrA[1]),
        .O(\iWrA[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \iWrA[4]_i_1 
       (.I0(rbEnInt),
        .I1(iFullInt_reg_0),
        .O(\iWrA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \iWrA[4]_i_2__0 
       (.I0(iWrA[4]),
        .I1(iWrA[3]),
        .I2(iWrA[2]),
        .I3(iWrA[0]),
        .I4(iWrA[1]),
        .O(\iWrA[4]_i_2__0_n_0 ));
  FDRE \iWrA_reg[0] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[0]_i_1__0_n_0 ),
        .Q(iWrA[0]),
        .R(rbRst));
  FDRE \iWrA_reg[1] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[1]_i_1__0_n_0 ),
        .Q(iWrA[1]),
        .R(rbRst));
  FDRE \iWrA_reg[2] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[2]_i_1__0_n_0 ),
        .Q(iWrA[2]),
        .R(rbRst));
  FDRE \iWrA_reg[3] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[3]_i_1__0_n_0 ),
        .Q(iWrA[3]),
        .R(rbRst));
  FDRE \iWrA_reg[4] 
       (.C(RxByteClkHS),
        .CE(\iWrA[4]_i_1_n_0 ),
        .D(\iWrA[4]_i_2__0_n_0 ),
        .Q(iWrA[4]),
        .R(rbRst));
  LUT6 #(
    .INIT(64'hAAAAAA555600AAAA)) 
    \rbByteCnt[1]_i_1 
       (.I0(\rbByteCnt_reg[1]_0 ),
        .I1(iDataOut[8]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [0]),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I5(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .O(\rbByteCnt_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00F00010)) 
    rbMAxisTlast_i_1
       (.I0(iDataOut[8]),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [0]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_0 ),
        .I3(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_2 ),
        .I4(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .O(rbTlastInt));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rbState[2]_i_2 
       (.I0(iFullInt_reg_0),
        .I1(\rbState_reg[0]_0 ),
        .O(orv4_out));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rbState[2]_i_3 
       (.I0(iDataOut[8]),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [0]),
        .O(orv2_out));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hF0F0F08F)) 
    \rbState[2]_i_7 
       (.I0(iDataOut[9]),
        .I1(\DeskewFIFOs[1].rbActiveHS_q_reg[1] [1]),
        .I2(\DeskewFIFOs[1].rbActiveHS_q_reg[1]_1 ),
        .I3(\rbState_reg[0]_0 ),
        .I4(iFullInt_reg_0),
        .O(\rbState_reg[0] ));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync
   (out,
    RxByteClkHS,
    rbRst,
    D);
  output [0:0]out;
  input RxByteClkHS;
  input rbRst;
  input [0:0]D;

  wire [0:0]D;
  wire RxByteClkHS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire rbRst;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(rbRst),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(rbRst),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync_0
   (\YesAXILITE.vRst_n_reg ,
    video_aclk,
    D,
    vRst_n);
  output \YesAXILITE.vRst_n_reg ;
  input video_aclk;
  input [0:0]D;
  input vRst_n;

  wire [0:0]D;
  wire \YesAXILITE.vRst_n_reg ;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire vRst_n;
  wire video_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \oSyncStages[1]_i_1 
       (.I0(vRst_n),
        .O(\YesAXILITE.vRst_n_reg ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .CLR(\YesAXILITE.vRst_n_reg ),
        .D(D),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .CLR(\YesAXILITE.vRst_n_reg ),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync_1
   (out,
    rbRst,
    RxByteClkHS,
    \oSyncStages_reg[1]_0 );
  output [0:0]out;
  output rbRst;
  input RxByteClkHS;
  input \oSyncStages_reg[1]_0 ;

  wire RxByteClkHS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;
  wire rbRst;

  assign out[0] = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    \iWrA[4]_i_1__0 
       (.I0(oSyncStages[1]),
        .O(rbRst));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(1'b1),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .CLR(\oSyncStages_reg[1]_0 ),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0
   (\oSyncStages_reg[1]_0 ,
    video_aclk,
    AS);
  output \oSyncStages_reg[1]_0 ;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;
  wire video_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \YesAXILITE.vRst_n_i_1 
       (.I0(oSyncStages[1]),
        .O(\oSyncStages_reg[1]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5
   (\oSyncStages_reg[1]_0 ,
    RxByteClkHS,
    AS);
  output [0:0]\oSyncStages_reg[1]_0 ;
  input RxByteClkHS;
  input [0:0]AS;

  wire [0:0]AS;
  wire RxByteClkHS;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign \oSyncStages_reg[1]_0 [0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(RxByteClkHS),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6
   (out,
    E,
    mReg_Tvalid_reg,
    \RAW10Formatter.cnt_reg[1] ,
    \RAW10Formatter.cnt_reg[0] ,
    \oSyncStages_reg[1]_0 ,
    \oSyncStages_reg[1]_1 ,
    \oSyncStages_reg[1]_2 ,
    \oSyncStages_reg[1]_3 ,
    \oSyncStages_reg[1]_4 ,
    s_axis_aresetn,
    mFmt_Tvalid_reg,
    m_axis_tvalid,
    \mReg_Tdata_reg[31] ,
    s_axis_tready,
    \RAW10Formatter.cnt_reg[2] ,
    \RAW10Formatter.cnt_reg[2]_0 ,
    \RAW10Formatter.cnt_reg[2]_1 ,
    \RAW10Formatter.cnt_reg[2]_2 ,
    \RAW10Formatter.cnt_reg[1]_0 ,
    \RAW10Formatter.cnt_reg[1]_1 ,
    cnt,
    \mFmt_Tuser_reg[0] ,
    \mFmt_Tuser_reg[0]_0 ,
    s_axis_tuser,
    video_aclk,
    AS);
  output [0:0]out;
  output [0:0]E;
  output mReg_Tvalid_reg;
  output \RAW10Formatter.cnt_reg[1] ;
  output \RAW10Formatter.cnt_reg[0] ;
  output [0:0]\oSyncStages_reg[1]_0 ;
  output [0:0]\oSyncStages_reg[1]_1 ;
  output [0:0]\oSyncStages_reg[1]_2 ;
  output [0:0]\oSyncStages_reg[1]_3 ;
  output [0:0]\oSyncStages_reg[1]_4 ;
  output s_axis_aresetn;
  output mFmt_Tvalid_reg;
  input m_axis_tvalid;
  input \mReg_Tdata_reg[31] ;
  input s_axis_tready;
  input \RAW10Formatter.cnt_reg[2] ;
  input \RAW10Formatter.cnt_reg[2]_0 ;
  input \RAW10Formatter.cnt_reg[2]_1 ;
  input \RAW10Formatter.cnt_reg[2]_2 ;
  input \RAW10Formatter.cnt_reg[1]_0 ;
  input \RAW10Formatter.cnt_reg[1]_1 ;
  input cnt;
  input \mFmt_Tuser_reg[0] ;
  input \mFmt_Tuser_reg[0]_0 ;
  input [0:0]s_axis_tuser;
  input video_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [0:0]E;
  wire \RAW10Formatter.cnt_reg[0] ;
  wire \RAW10Formatter.cnt_reg[1] ;
  wire \RAW10Formatter.cnt_reg[1]_0 ;
  wire \RAW10Formatter.cnt_reg[1]_1 ;
  wire \RAW10Formatter.cnt_reg[2] ;
  wire \RAW10Formatter.cnt_reg[2]_0 ;
  wire \RAW10Formatter.cnt_reg[2]_1 ;
  wire \RAW10Formatter.cnt_reg[2]_2 ;
  wire cnt;
  wire \mFmt_Tuser_reg[0] ;
  wire \mFmt_Tuser_reg[0]_0 ;
  wire mFmt_Tvalid_reg;
  wire \mReg_Tdata_reg[31] ;
  wire mReg_Tvalid_reg;
  wire m_axis_tvalid;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire [0:0]\oSyncStages_reg[1]_0 ;
  wire [0:0]\oSyncStages_reg[1]_1 ;
  wire [0:0]\oSyncStages_reg[1]_2 ;
  wire [0:0]\oSyncStages_reg[1]_3 ;
  wire [0:0]\oSyncStages_reg[1]_4 ;
  wire s_axis_aresetn;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire video_aclk;

  assign out[0] = oSyncStages[1];
  LUT1 #(
    .INIT(2'h1)) 
    LineBufferFIFO_i_1
       (.I0(oSyncStages[1]),
        .O(s_axis_aresetn));
  LUT6 #(
    .INIT(64'h000000002A2A2A6A)) 
    \RAW10Formatter.cnt[0]_i_1 
       (.I0(\RAW10Formatter.cnt_reg[1]_1 ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(s_axis_tready),
        .I3(\RAW10Formatter.cnt_reg[2]_1 ),
        .I4(\RAW10Formatter.cnt_reg[2]_2 ),
        .I5(oSyncStages[1]),
        .O(\RAW10Formatter.cnt_reg[0] ));
  LUT6 #(
    .INIT(64'h000000000A0A0A6A)) 
    \RAW10Formatter.cnt[1]_i_1 
       (.I0(\RAW10Formatter.cnt_reg[1]_0 ),
        .I1(\RAW10Formatter.cnt_reg[1]_1 ),
        .I2(cnt),
        .I3(\RAW10Formatter.cnt_reg[2]_1 ),
        .I4(\RAW10Formatter.cnt_reg[2]_2 ),
        .I5(oSyncStages[1]),
        .O(\RAW10Formatter.cnt_reg[1] ));
  LUT6 #(
    .INIT(64'h000000003F3F0080)) 
    \RAW10Formatter.cnt[2]_i_1 
       (.I0(\RAW10Formatter.cnt_reg[2] ),
        .I1(\RAW10Formatter.cnt_reg[2]_0 ),
        .I2(s_axis_tready),
        .I3(\RAW10Formatter.cnt_reg[2]_1 ),
        .I4(\RAW10Formatter.cnt_reg[2]_2 ),
        .I5(oSyncStages[1]),
        .O(mReg_Tvalid_reg));
  LUT4 #(
    .INIT(16'h0040)) 
    \RAW10Formatter.pix_mux[0][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[2]_2 ),
        .O(\oSyncStages_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00404040)) 
    \RAW10Formatter.pix_mux[1][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_1 ),
        .O(\oSyncStages_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h40004040)) 
    \RAW10Formatter.pix_mux[2][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_1 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .O(\oSyncStages_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h40004040)) 
    \RAW10Formatter.pix_mux[3][9]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[1]_0 ),
        .I4(\RAW10Formatter.cnt_reg[1]_1 ),
        .O(\oSyncStages_reg[1]_4 ));
  LUT6 #(
    .INIT(64'h4040404040404000)) 
    \mFmt_Tdata[39]_i_1 
       (.I0(oSyncStages[1]),
        .I1(s_axis_tready),
        .I2(\RAW10Formatter.cnt_reg[2]_0 ),
        .I3(\RAW10Formatter.cnt_reg[2]_2 ),
        .I4(\RAW10Formatter.cnt_reg[1]_0 ),
        .I5(\RAW10Formatter.cnt_reg[1]_1 ),
        .O(\oSyncStages_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00005F40)) 
    \mFmt_Tuser[0]_i_1 
       (.I0(\mFmt_Tuser_reg[0] ),
        .I1(\mFmt_Tuser_reg[0]_0 ),
        .I2(s_axis_tready),
        .I3(s_axis_tuser),
        .I4(oSyncStages[1]),
        .O(mFmt_Tvalid_reg));
  LUT4 #(
    .INIT(16'h4000)) 
    \mReg_Tdata[31]_i_1 
       (.I0(oSyncStages[1]),
        .I1(m_axis_tvalid),
        .I2(\mReg_Tdata_reg[31] ),
        .I3(s_axis_tready),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1
   (out,
    \oSyncStages_reg[1]_0 ,
    vRst_n,
    video_aclk,
    D);
  output [0:0]out;
  output \oSyncStages_reg[1]_0 ;
  input vRst_n;
  input video_aclk;
  input [0:0]D;

  wire [0:0]D;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire \oSyncStages_reg[1]_0 ;
  wire vRst_n;
  wire video_aclk;

  assign out[0] = oSyncStages[1];
  LUT2 #(
    .INIT(4'h8)) 
    \aDEnableInt[0]_i_1 
       (.I0(oSyncStages[1]),
        .I1(vRst_n),
        .O(\oSyncStages_reg[1]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(D),
        .Q(oSyncStages[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(video_aclk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_data_fifo_v2_0_4_top" *) 
module system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top
   (s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tready);
  output s_axis_tready;
  output m_axis_tvalid;
  output [39:0]m_axis_tdata;
  output m_axis_tlast;
  output [0:0]m_axis_tuser;
  input s_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  input [39:0]s_axis_tdata;
  input s_axis_tlast;
  input [0:0]s_axis_tuser;
  input m_axis_tready;

  wire \gen_fifo.xpm_fifo_axis_inst_n_56 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_57 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_58 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_59 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_60 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_61 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_62 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_63 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_64 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_65 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_66 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_67 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_68 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_69 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_70 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_71 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_72 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_73 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_74 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_75 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_76 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_77 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_78 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_79 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_80 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_81 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_82 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_83 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_84 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_85 ;
  wire [39:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [39:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;

  (* AXIS_DATA_WIDTH = "54" *) 
  (* AXIS_FINAL_DATA_WIDTH = "54" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001010000000100" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001010000000100" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "2048" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* LOG_DEPTH_AXIS = "11" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "40" *) 
  (* TDATA_WIDTH = "40" *) 
  (* TDEST_OFFSET = "52" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "51" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "50" *) 
  (* TSTRB_OFFSET = "45" *) 
  (* TUSER_MAX_WIDTH = "4043" *) 
  (* TUSER_OFFSET = "53" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825503796" *) 
  (* USE_ADV_FEATURES_INT = "825503796" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* XPM_MODULE = "TRUE" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_83 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_69 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_85 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED [4:0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [4:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_70 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_56 ),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_71 ,\gen_fifo.xpm_fifo_axis_inst_n_72 ,\gen_fifo.xpm_fifo_axis_inst_n_73 ,\gen_fifo.xpm_fifo_axis_inst_n_74 ,\gen_fifo.xpm_fifo_axis_inst_n_75 ,\gen_fifo.xpm_fifo_axis_inst_n_76 ,\gen_fifo.xpm_fifo_axis_inst_n_77 ,\gen_fifo.xpm_fifo_axis_inst_n_78 ,\gen_fifo.xpm_fifo_axis_inst_n_79 ,\gen_fifo.xpm_fifo_axis_inst_n_80 ,\gen_fifo.xpm_fifo_axis_inst_n_81 ,\gen_fifo.xpm_fifo_axis_inst_n_82 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_84 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_57 ,\gen_fifo.xpm_fifo_axis_inst_n_58 ,\gen_fifo.xpm_fifo_axis_inst_n_59 ,\gen_fifo.xpm_fifo_axis_inst_n_60 ,\gen_fifo.xpm_fifo_axis_inst_n_61 ,\gen_fifo.xpm_fifo_axis_inst_n_62 ,\gen_fifo.xpm_fifo_axis_inst_n_63 ,\gen_fifo.xpm_fifo_axis_inst_n_64 ,\gen_fifo.xpm_fifo_axis_inst_n_65 ,\gen_fifo.xpm_fifo_axis_inst_n_66 ,\gen_fifo.xpm_fifo_axis_inst_n_67 ,\gen_fifo.xpm_fifo_axis_inst_n_68 }));
endmodule

(* CHECK_LICENSE_TYPE = "cdc_fifo,fifo_generator_v13_2_5,{}" *) (* ORIG_REF_NAME = "cdc_fifo" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
module system_MIPI_CSI_2_RX_0_0_cdc_fifo
   (m_aclk,
    s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 master_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME master_aclk, ASSOCIATED_BUSIF M_AXIS:M_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input m_aclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 slave_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [3:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;

  wire m_aclk;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [17:0]NLW_U0_dout_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "37" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "1" *) 
  (* C_HAS_AXIS_TLAST = "1" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "29" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "13" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1021" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "13" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "32" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "5" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  system_MIPI_CSI_2_RX_0_0_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[5:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[5:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[5:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_U0_dout_UNCONNECTED[17:0]),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(m_aclk),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(s_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "line_buffer,axis_data_fifo_v2_0_4_top,{}" *) (* ORIG_REF_NAME = "line_buffer" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axis_data_fifo_v2_0_4_top,Vivado 2020.2" *) 
module system_MIPI_CSI_2_RX_0_0_line_buffer
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser,
    axis_wr_data_count,
    axis_rd_data_count);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [39:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input [0:0]s_axis_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [39:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output [0:0]m_axis_tuser;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [39:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [39:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top inst
       (.m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_M_AXIS_COMPONENT_WIDTH = "10" *) (* C_M_AXIS_TDATA_WIDTH = "40" *) (* C_M_MAX_SAMPLES_PER_CLOCK = "4" *) 
(* C_S_AXI_LITE_ADDR_WIDTH = "4" *) (* C_S_AXI_LITE_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "mipi_csi2_rx_top" *) 
(* kDebug = "FALSE" *) (* kGenerateAXIL = "TRUE" *) (* kLaneCount = "2" *) 
(* kTargetDT = "RAW10" *) (* kVersionMajor = "1" *) (* kVersionMinor = "2" *) 
module system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top
   (RxByteClkHS,
    aClkStopstate,
    aRxClkActiveHS,
    RxDataHSD0,
    RxSyncHSD0,
    RxValidHSD0,
    RxActiveHSD0,
    aD0Enable,
    RxDataHSD1,
    RxSyncHSD1,
    RxValidHSD1,
    RxActiveHSD1,
    aD1Enable,
    RxDataHSD2,
    RxSyncHSD2,
    RxValidHSD2,
    RxActiveHSD2,
    aD2Enable,
    RxDataHSD3,
    RxSyncHSD3,
    RxValidHSD3,
    RxActiveHSD3,
    aD3Enable,
    aClkEnable,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tlast,
    m_axis_video_tuser,
    video_aresetn,
    video_aclk,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready);
  input RxByteClkHS;
  input aClkStopstate;
  input aRxClkActiveHS;
  input [7:0]RxDataHSD0;
  input RxSyncHSD0;
  input RxValidHSD0;
  input RxActiveHSD0;
  output aD0Enable;
  input [7:0]RxDataHSD1;
  input RxSyncHSD1;
  input RxValidHSD1;
  input RxActiveHSD1;
  output aD1Enable;
  input [7:0]RxDataHSD2;
  input RxSyncHSD2;
  input RxValidHSD2;
  input RxActiveHSD2;
  output aD2Enable;
  input [7:0]RxDataHSD3;
  input RxSyncHSD3;
  input RxValidHSD3;
  input RxActiveHSD3;
  output aD3Enable;
  output aClkEnable;
  output [39:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tlast;
  output [0:0]m_axis_video_tuser;
  input video_aresetn;
  input video_aclk;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input [3:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [3:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;

  wire \<const0> ;
  wire RxActiveHSD0;
  wire RxActiveHSD1;
  wire RxByteClkHS;
  wire [7:0]RxDataHSD0;
  wire [7:0]RxDataHSD1;
  wire RxSyncHSD0;
  wire RxSyncHSD1;
  wire RxValidHSD0;
  wire RxValidHSD1;
  wire \YesAXILITE.AXI_Lite_Control_n_5 ;
  wire \YesAXILITE.CoreSoftReset_n_0 ;
  wire \YesAXILITE.SyncAsyncClkEnable_n_1 ;
  wire aD1Enable;
  wire aReset;
  wire [39:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire vRst_n;
  wire vSoftEnable;
  wire video_aclk;

  assign aClkEnable = aD1Enable;
  assign aD0Enable = aD1Enable;
  assign aD2Enable = \<const0> ;
  assign aD3Enable = \<const0> ;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx MIPI_CSI2_Rx_inst
       (.D(vSoftEnable),
        .I62({RxActiveHSD1,RxSyncHSD1,RxValidHSD1,RxDataHSD1}),
        .RxByteClkHS(RxByteClkHS),
        .aD1Enable(aD1Enable),
        .\aDEnableInt_reg[0]_0 (\YesAXILITE.SyncAsyncClkEnable_n_1 ),
        .iDataIn({RxActiveHSD0,RxSyncHSD0,RxValidHSD0,RxDataHSD0}),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .vRst_n(vRst_n),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE \YesAXILITE.AXI_Lite_Control 
       (.Q({\YesAXILITE.AXI_Lite_Control_n_5 ,aReset}),
        .axi_arready_reg_0(s_axi_lite_arready),
        .axi_awready_reg_0(s_axi_lite_awready),
        .axi_wready_reg_0(s_axi_lite_wready),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr[3:2]),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[3:2]),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
  system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0 \YesAXILITE.CoreSoftReset 
       (.AS(aReset),
        .\oSyncStages_reg[1] (\YesAXILITE.CoreSoftReset_n_0 ),
        .video_aclk(video_aclk));
  system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1 \YesAXILITE.SyncAsyncClkEnable 
       (.D(\YesAXILITE.AXI_Lite_Control_n_5 ),
        .\oSyncStages_reg[1]_0 (\YesAXILITE.SyncAsyncClkEnable_n_1 ),
        .out(vSoftEnable),
        .vRst_n(vRst_n),
        .video_aclk(video_aclk));
  FDRE \YesAXILITE.vRst_n_reg 
       (.C(video_aclk),
        .CE(1'b1),
        .D(\YesAXILITE.CoreSoftReset_n_0 ),
        .Q(vRst_n),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn
   (S,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \grdc.rd_data_count_i_reg[3] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [1:0]S;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input [1:0]\grdc.rd_data_count_i_reg[3] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\grdc.rd_data_count_i_reg[3] ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000A8AA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(ram_empty_i),
        .I4(\count_value_i_reg[0]_1 ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(count_value_i),
        .I1(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[3]_i_7 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(\grdc.rd_data_count_i_reg[3] [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[3]_i_8 
       (.I0(count_value_i),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[3] [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0
   (Q,
    DI,
    S,
    CO,
    \count_value_i_reg[2]_0 ,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \grdc.rd_data_count_i_reg[11] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ,
    \grdc.rd_data_count_i_reg[3] ,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[0]_0 ,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    \count_value_i_reg[11]_0 ,
    wr_clk);
  output [10:0]Q;
  output [0:0]DI;
  output [3:0]S;
  output [0:0]CO;
  output [0:0]\count_value_i_reg[2]_0 ;
  output [3:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [11:0]\grdc.rd_data_count_i_reg[11] ;
  input [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ;
  input [0:0]\grdc.rd_data_count_i_reg[3] ;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[0]_0 ;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input [0:0]\count_value_i_reg[11]_0 ;
  input wr_clk;

  wire [0:0]CO;
  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [10:0]Q;
  wire [3:0]S;
  wire clr_full;
  wire \count_value_i[3]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[11]_0 ;
  wire \count_value_i_reg[11]_i_1__0_n_1 ;
  wire \count_value_i_reg[11]_i_1__0_n_2 ;
  wire \count_value_i_reg[11]_i_1__0_n_3 ;
  wire \count_value_i_reg[11]_i_1__0_n_4 ;
  wire \count_value_i_reg[11]_i_1__0_n_5 ;
  wire \count_value_i_reg[11]_i_1__0_n_6 ;
  wire \count_value_i_reg[11]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[2]_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_1 ;
  wire \count_value_i_reg[3]_i_1__0_n_2 ;
  wire \count_value_i_reg[3]_i_1__0_n_3 ;
  wire \count_value_i_reg[3]_i_1__0_n_4 ;
  wire \count_value_i_reg[3]_i_1__0_n_5 ;
  wire \count_value_i_reg[3]_i_1__0_n_6 ;
  wire \count_value_i_reg[3]_i_1__0_n_7 ;
  wire [3:0]\count_value_i_reg[6]_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_1 ;
  wire \count_value_i_reg[7]_i_1__0_n_2 ;
  wire \count_value_i_reg[7]_i_1__0_n_3 ;
  wire \count_value_i_reg[7]_i_1__0_n_4 ;
  wire \count_value_i_reg[7]_i_1__0_n_5 ;
  wire \count_value_i_reg[7]_i_1__0_n_6 ;
  wire \count_value_i_reg[7]_i_1__0_n_7 ;
  wire \count_value_i_reg_n_0_[11] ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 ;
  wire [10:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3 ;
  wire going_full1;
  wire [11:0]\grdc.rd_data_count_i_reg[11] ;
  wire [0:0]\grdc.rd_data_count_i_reg[3] ;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;
  wire [3:3]\NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_2__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(\count_value_i_reg[0]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_4 ),
        .Q(\count_value_i_reg_n_0_[11] ),
        .R(\count_value_i_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[11]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED [3],\count_value_i_reg[11]_i_1__0_n_1 ,\count_value_i_reg[11]_i_1__0_n_2 ,\count_value_i_reg[11]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1__0_n_4 ,\count_value_i_reg[11]_i_1__0_n_5 ,\count_value_i_reg[11]_i_1__0_n_6 ,\count_value_i_reg[11]_i_1__0_n_7 }),
        .S({\count_value_i_reg_n_0_[11] ,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[3]_i_1__0_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__0_n_0 ,\count_value_i_reg[3]_i_1__0_n_1 ,\count_value_i_reg[3]_i_1__0_n_2 ,\count_value_i_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__0_n_4 ,\count_value_i_reg[3]_i_1__0_n_5 ,\count_value_i_reg[3]_i_1__0_n_6 ,\count_value_i_reg[3]_i_1__0_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[7]_i_1__0_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1__0 
       (.CI(\count_value_i_reg[3]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__0_n_0 ,\count_value_i_reg[7]_i_1__0_n_1 ,\count_value_i_reg[7]_i_1__0_n_2 ,\count_value_i_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__0_n_4 ,\count_value_i_reg[7]_i_1__0_n_5 ,\count_value_i_reg[7]_i_1__0_n_6 ,\count_value_i_reg[7]_i_1__0_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i_reg[11]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(CO),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(CO),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[11] [9]),
        .I2(Q[10]),
        .I3(\grdc.rd_data_count_i_reg[11] [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[11] [6]),
        .I2(\grdc.rd_data_count_i_reg[11] [8]),
        .I3(Q[8]),
        .I4(\grdc.rd_data_count_i_reg[11] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[11] [3]),
        .I2(\grdc.rd_data_count_i_reg[11] [5]),
        .I3(Q[5]),
        .I4(\grdc.rd_data_count_i_reg[11] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[11] [0]),
        .I2(\grdc.rd_data_count_i_reg[11] [2]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[11] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 [10]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3 
       (.CI(1'b0),
        .CO({CO,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 }));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4 
       (.CI(1'b0),
        .CO({going_full1,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0 }));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_5 
       (.I0(Q[10]),
        .I1(\grdc.rd_data_count_i_reg[11] [10]),
        .I2(\count_value_i_reg_n_0_[11] ),
        .I3(\grdc.rd_data_count_i_reg[11] [11]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_6 
       (.I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[11] [9]),
        .I2(Q[10]),
        .I3(\grdc.rd_data_count_i_reg[11] [10]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_7 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[11] [8]),
        .I2(Q[9]),
        .I3(\grdc.rd_data_count_i_reg[11] [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[11]_i_8 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[11] [7]),
        .I2(Q[8]),
        .I3(\grdc.rd_data_count_i_reg[11] [8]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[11] [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[11] [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[11] [3]),
        .O(\count_value_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[11] [6]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[11] [7]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[11] [5]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[11] [6]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[11] [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[11] [5]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[11] [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[11] [4]),
        .O(\count_value_i_reg[6]_0 [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7
   (ram_empty_i0,
    Q,
    D,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    CO,
    E,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ,
    S,
    DI,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[11] ,
    \grdc.rd_data_count_i_reg[3]_0 ,
    \grdc.rd_data_count_i_reg[11]_0 ,
    \count_value_i_reg[0]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [11:0]Q;
  output [11:0]D;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input [0:0]CO;
  input [0:0]E;
  input ram_empty_i;
  input [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ;
  input [0:0]S;
  input [1:0]DI;
  input [2:0]\grdc.rd_data_count_i_reg[3] ;
  input [3:0]\grdc.rd_data_count_i_reg[7] ;
  input [3:0]\grdc.rd_data_count_i_reg[11] ;
  input [0:0]\grdc.rd_data_count_i_reg[3]_0 ;
  input [8:0]\grdc.rd_data_count_i_reg[11]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input wr_clk;

  wire [0:0]CO;
  wire [11:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [11:0]Q;
  wire [0:0]S;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[11]_i_1_n_1 ;
  wire \count_value_i_reg[11]_i_1_n_2 ;
  wire \count_value_i_reg[11]_i_1_n_3 ;
  wire \count_value_i_reg[11]_i_1_n_4 ;
  wire \count_value_i_reg[11]_i_1_n_5 ;
  wire \count_value_i_reg[11]_i_1_n_6 ;
  wire \count_value_i_reg[11]_i_1_n_7 ;
  wire \count_value_i_reg[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_i_1_n_1 ;
  wire \count_value_i_reg[3]_i_1_n_2 ;
  wire \count_value_i_reg[3]_i_1_n_3 ;
  wire \count_value_i_reg[3]_i_1_n_4 ;
  wire \count_value_i_reg[3]_i_1_n_5 ;
  wire \count_value_i_reg[3]_i_1_n_6 ;
  wire \count_value_i_reg[3]_i_1_n_7 ;
  wire \count_value_i_reg[7]_i_1_n_0 ;
  wire \count_value_i_reg[7]_i_1_n_1 ;
  wire \count_value_i_reg[7]_i_1_n_2 ;
  wire \count_value_i_reg[7]_i_1_n_3 ;
  wire \count_value_i_reg[7]_i_1_n_4 ;
  wire \count_value_i_reg[7]_i_1_n_5 ;
  wire \count_value_i_reg[7]_i_1_n_6 ;
  wire \count_value_i_reg[7]_i_1_n_7 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [10:0]\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 ;
  wire going_empty1;
  wire [3:0]\grdc.rd_data_count_i_reg[11] ;
  wire [8:0]\grdc.rd_data_count_i_reg[11]_0 ;
  wire [2:0]\grdc.rd_data_count_i_reg[3] ;
  wire [0:0]\grdc.rd_data_count_i_reg[3]_0 ;
  wire [3:0]\grdc.rd_data_count_i_reg[7] ;
  wire \gwdc.wr_data_count_i[11]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[11]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[11]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire wr_clk;
  wire [3:3]\NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_4 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[11]_i_1 
       (.CI(\count_value_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED [3],\count_value_i_reg[11]_i_1_n_1 ,\count_value_i_reg[11]_i_1_n_2 ,\count_value_i_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[11]_i_1_n_4 ,\count_value_i_reg[11]_i_1_n_5 ,\count_value_i_reg[11]_i_1_n_6 ,\count_value_i_reg[11]_i_1_n_7 }),
        .S(Q[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1_n_0 ,\count_value_i_reg[3]_i_1_n_1 ,\count_value_i_reg[3]_i_1_n_2 ,\count_value_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1_n_4 ,\count_value_i_reg[3]_i_1_n_5 ,\count_value_i_reg[3]_i_1_n_6 ,\count_value_i_reg[3]_i_1_n_7 }),
        .S({Q[3:1],S}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1 
       (.CI(\count_value_i_reg[3]_i_1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1_n_0 ,\count_value_i_reg[7]_i_1_n_1 ,\count_value_i_reg[7]_i_1_n_2 ,\count_value_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1_n_4 ,\count_value_i_reg[7]_i_1_n_5 ,\count_value_i_reg[7]_i_1_n_6 ,\count_value_i_reg[7]_i_1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[11]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(CO),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [9]),
        .I2(Q[10]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [10]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  CARRY4 \gen_pntr_flags_cc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({going_empty1,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 }));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_2 
       (.I0(Q[9]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [8]),
        .O(\gwdc.wr_data_count_i[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_3 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [7]),
        .O(\gwdc.wr_data_count_i[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[11]_i_4 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [6]),
        .O(\gwdc.wr_data_count_i[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [1]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[3]_i_6 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3]_0 ),
        .I2(\grdc.rd_data_count_i_reg[11]_0 [0]),
        .I3(\grdc.rd_data_count_i_reg[11]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[11]_0 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[11]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED [3],\gwdc.wr_data_count_i_reg[11]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gwdc.wr_data_count_i[11]_i_2_n_0 ,\gwdc.wr_data_count_i[11]_i_3_n_0 ,\gwdc.wr_data_count_i[11]_i_4_n_0 }),
        .O(D[11:8]),
        .S(\grdc.rd_data_count_i_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[3]_i_2_n_0 ,DI,Q[0]}),
        .O(D[3:0]),
        .S({\grdc.rd_data_count_i_reg[3] [2],\gwdc.wr_data_count_i[3]_i_6_n_0 ,\grdc.rd_data_count_i_reg[3] [1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 }),
        .O(D[7:4]),
        .S(\grdc.rd_data_count_i_reg[7] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1
   (Q,
    ram_empty_i,
    rd_en,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[1]_0 ,
    E,
    wr_clk);
  output [10:0]Q;
  input ram_empty_i;
  input rd_en;
  input [1:0]\count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [10:0]Q;
  wire \count_value_i[3]_i_2__1_n_0 ;
  wire \count_value_i_reg[10]_i_1_n_2 ;
  wire \count_value_i_reg[10]_i_1_n_3 ;
  wire \count_value_i_reg[10]_i_1_n_5 ;
  wire \count_value_i_reg[10]_i_1_n_6 ;
  wire \count_value_i_reg[10]_i_1_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1__1_n_0 ;
  wire \count_value_i_reg[3]_i_1__1_n_1 ;
  wire \count_value_i_reg[3]_i_1__1_n_2 ;
  wire \count_value_i_reg[3]_i_1__1_n_3 ;
  wire \count_value_i_reg[3]_i_1__1_n_4 ;
  wire \count_value_i_reg[3]_i_1__1_n_5 ;
  wire \count_value_i_reg[3]_i_1__1_n_6 ;
  wire \count_value_i_reg[3]_i_1__1_n_7 ;
  wire \count_value_i_reg[7]_i_1__1_n_0 ;
  wire \count_value_i_reg[7]_i_1__1_n_1 ;
  wire \count_value_i_reg[7]_i_1__1_n_2 ;
  wire \count_value_i_reg[7]_i_1__1_n_3 ;
  wire \count_value_i_reg[7]_i_1__1_n_4 ;
  wire \count_value_i_reg[7]_i_1__1_n_5 ;
  wire \count_value_i_reg[7]_i_1__1_n_6 ;
  wire \count_value_i_reg[7]_i_1__1_n_7 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hABAA5455)) 
    \count_value_i[3]_i_2__1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\count_value_i_reg[3]_0 [0]),
        .I3(\count_value_i_reg[3]_0 [1]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_7 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[10]_i_1 
       (.CI(\count_value_i_reg[7]_i_1__1_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1_n_2 ,\count_value_i_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1_n_5 ,\count_value_i_reg[10]_i_1_n_6 ,\count_value_i_reg[10]_i_1_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__1_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1__1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__1_n_0 ,\count_value_i_reg[3]_i_1__1_n_1 ,\count_value_i_reg[3]_i_1__1_n_2 ,\count_value_i_reg[3]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__1_n_4 ,\count_value_i_reg[3]_i_1__1_n_5 ,\count_value_i_reg[3]_i_1__1_n_6 ,\count_value_i_reg[3]_i_1__1_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__1_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1__1 
       (.CI(\count_value_i_reg[3]_i_1__1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__1_n_0 ,\count_value_i_reg[7]_i_1__1_n_1 ,\count_value_i_reg[7]_i_1__1_n_2 ,\count_value_i_reg[7]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__1_n_4 ,\count_value_i_reg[7]_i_1__1_n_5 ,\count_value_i_reg[7]_i_1__1_n_6 ,\count_value_i_reg[7]_i_1__1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8
   (Q,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[1]_0 ,
    E,
    wr_clk);
  output [10:0]Q;
  input [0:0]\count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [10:0]Q;
  wire \count_value_i_reg[10]_i_1__0_n_2 ;
  wire \count_value_i_reg[10]_i_1__0_n_3 ;
  wire \count_value_i_reg[10]_i_1__0_n_5 ;
  wire \count_value_i_reg[10]_i_1__0_n_6 ;
  wire \count_value_i_reg[10]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1__2_n_0 ;
  wire \count_value_i_reg[3]_i_1__2_n_1 ;
  wire \count_value_i_reg[3]_i_1__2_n_2 ;
  wire \count_value_i_reg[3]_i_1__2_n_3 ;
  wire \count_value_i_reg[3]_i_1__2_n_4 ;
  wire \count_value_i_reg[3]_i_1__2_n_5 ;
  wire \count_value_i_reg[3]_i_1__2_n_6 ;
  wire \count_value_i_reg[3]_i_1__2_n_7 ;
  wire \count_value_i_reg[7]_i_1__2_n_0 ;
  wire \count_value_i_reg[7]_i_1__2_n_1 ;
  wire \count_value_i_reg[7]_i_1__2_n_2 ;
  wire \count_value_i_reg[7]_i_1__2_n_3 ;
  wire \count_value_i_reg[7]_i_1__2_n_4 ;
  wire \count_value_i_reg[7]_i_1__2_n_5 ;
  wire \count_value_i_reg[7]_i_1__2_n_6 ;
  wire \count_value_i_reg[7]_i_1__2_n_7 ;
  wire wr_clk;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED ;

  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_7 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_5 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[10]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__2_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1__0_n_2 ,\count_value_i_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1__0_n_5 ,\count_value_i_reg[10]_i_1__0_n_6 ,\count_value_i_reg[10]_i_1__0_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_6 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_5 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[3]_i_1__2_n_4 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[3]_i_1__2 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__2_n_0 ,\count_value_i_reg[3]_i_1__2_n_1 ,\count_value_i_reg[3]_i_1__2_n_2 ,\count_value_i_reg[3]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__2_n_4 ,\count_value_i_reg[3]_i_1__2_n_5 ,\count_value_i_reg[3]_i_1__2_n_6 ,\count_value_i_reg[3]_i_1__2_n_7 }),
        .S({Q[3:1],\count_value_i_reg[3]_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_7 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_6 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_5 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[7]_i_1__2_n_4 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count_value_i_reg[7]_i_1__2 
       (.CI(\count_value_i_reg[3]_i_1__2_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__2_n_0 ,\count_value_i_reg[7]_i_1__2_n_1 ,\count_value_i_reg[7]_i_1__2_n_2 ,\count_value_i_reg[7]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__2_n_4 ,\count_value_i_reg[7]_i_1__2_n_5 ,\count_value_i_reg[7]_i_1__2_n_6 ,\count_value_i_reg[7]_i_1__2_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i_reg[10]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "54" *) (* AXIS_FINAL_DATA_WIDTH = "54" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001010000000100" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001010000000100" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "2048" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "11" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "40" *) 
(* TDATA_WIDTH = "40" *) (* TDEST_OFFSET = "52" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "51" *) (* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "50" *) 
(* TSTRB_OFFSET = "45" *) (* TUSER_MAX_WIDTH = "4043" *) (* TUSER_OFFSET = "53" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "825503796" *) (* USE_ADV_FEATURES_INT = "825503796" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [39:0]s_axis_tdata;
  input [4:0]s_axis_tstrb;
  input [4:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [39:0]m_axis_tdata;
  output [4:0]m_axis_tstrb;
  output [4:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [11:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [11:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [39:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [11:0]rd_data_count_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [39:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [11:0]wr_data_count_axis;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [51:40]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[4] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001010000000100" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "2048" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "110592" *) 
  (* FIFO_WRITE_DEPTH = "2048" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "2043" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "2043" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "12" *) 
  (* RD_DC_WIDTH_EXT = "12" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "54" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825503796" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "54" *) 
  (* WR_DATA_COUNT_WIDTH = "12" *) 
  (* WR_DC_WIDTH_EXT = "12" *) 
  (* WR_DEPTH_LOG = "11" *) 
  (* WR_PNTR_WIDTH = "11" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,NLW_xpm_fifo_base_inst_dout_UNCONNECTED[51:40],m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(rd_data_count_axis),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(wr_data_count_axis),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001010000000100" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "2048" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "110592" *) (* FIFO_WRITE_DEPTH = "2048" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "2043" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "9" *) (* PF_THRESH_MAX = "2043" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "12" *) 
(* RD_DC_WIDTH_EXT = "12" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "11" *) (* READ_DATA_WIDTH = "54" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825503796" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "54" *) 
(* WR_DATA_COUNT_WIDTH = "12" *) (* WR_DC_WIDTH_EXT = "12" *) (* WR_DEPTH_LOG = "11" *) 
(* WR_PNTR_WIDTH = "11" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [53:0]din;
  output full;
  output full_n;
  output prog_full;
  output [11:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [53:0]dout;
  output empty;
  output prog_empty;
  output [11:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [53:0]din;
  wire [53:0]\^dout ;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire [11:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire [10:0]rd_pntr_ext;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_2;
  wire rst_d1_inst_n_3;
  wire sleep;
  wire wr_clk;
  wire [11:0]wr_data_count;
  wire wr_en;
  wire [10:0]wr_pntr_ext;
  wire wrp_inst_n_1;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [53:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;
  wire [51:40]\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[53:52] = \^dout [53:52];
  assign dout[51] = \<const0> ;
  assign dout[50] = \<const0> ;
  assign dout[49] = \<const0> ;
  assign dout[48] = \<const0> ;
  assign dout[47] = \<const0> ;
  assign dout[46] = \<const0> ;
  assign dout[45] = \<const0> ;
  assign dout[44] = \<const0> ;
  assign dout[43] = \<const0> ;
  assign dout[42] = \<const0> ;
  assign dout[41] = \<const0> ;
  assign dout[40] = \<const0> ;
  assign dout[39:0] = \^dout [39:0];
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_2 ),
        .Q(rd_pntr_ext[1:0]),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\grdc.rd_data_count_i_reg[3] (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_22),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_24),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "11" *) 
  (* ADDR_WIDTH_B = "11" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "54" *) 
  (* BYTE_WRITE_WIDTH_B = "54" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "41" *) 
  (* \MEM.ADDRESS_SPACE_END  = "2047" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "42" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "110592" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "2048" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "54" *) 
  (* P_MIN_WIDTH_DATA_A = "54" *) 
  (* P_MIN_WIDTH_DATA_B = "54" *) 
  (* P_MIN_WIDTH_DATA_ECC = "54" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "54" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "11" *) 
  (* P_WIDTH_ADDR_READ_B = "11" *) 
  (* P_WIDTH_ADDR_WRITE_A = "11" *) 
  (* P_WIDTH_ADDR_WRITE_B = "11" *) 
  (* P_WIDTH_COL_WRITE_A = "54" *) 
  (* P_WIDTH_COL_WRITE_B = "54" *) 
  (* READ_DATA_WIDTH_A = "54" *) 
  (* READ_DATA_WIDTH_B = "54" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "54" *) 
  (* WRITE_DATA_WIDTH_B = "54" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "56" *) 
  (* rstb_loop_iter = "56" *) 
  system_MIPI_CSI_2_RX_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina({din[53:52],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[39:0]}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [53:0]),
        .doutb(\^dout ),
        .ena(1'b0),
        .enb(rdp_inst_n_23),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(rd_data_count[10]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(rd_data_count[11]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(wr_data_count[10]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [11]),
        .Q(wr_data_count[11]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(wr_data_count[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(wr_data_count[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(wr_data_count[9]),
        .R(xpm_fifo_rst_inst_n_1));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0 rdp_inst
       (.CO(leaving_empty0),
        .DI(rdp_inst_n_11),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_23),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_12,rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[11]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[2]_0 (rdp_inst_n_17),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_22),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_24),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\grdc.rd_data_count_i_reg[11] ({wrp_inst_n_1,wr_pntr_ext}),
        .\grdc.rd_data_count_i_reg[3] (count_value_i),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdp_inst_n_23),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .S(rst_d1_inst_n_2),
        .clr_full(clr_full),
        .\count_value_i_reg[3] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[3]_0 (wr_pntr_ext[0]),
        .\count_value_i_reg[3]_1 (wrpp1_inst_n_10),
        .d_out_reg_0(rst_d1_inst_n_3),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7 wrp_inst
       (.CO(leaving_empty0),
        .D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_11,\gen_fwft.rdpp1_inst_n_2 }),
        .E(ram_wr_en_i),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S(rst_d1_inst_n_2),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_23),
        .\gen_pntr_flags_cc.ram_empty_i_reg_i_2_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10}),
        .\grdc.rd_data_count_i_reg[11] ({rdp_inst_n_12,rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .\grdc.rd_data_count_i_reg[11]_0 (rd_pntr_ext[9:1]),
        .\grdc.rd_data_count_i_reg[3] ({rdp_inst_n_17,\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\grdc.rd_data_count_i_reg[3]_0 (count_value_i),
        .\grdc.rd_data_count_i_reg[7] ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3]_0 (rst_d1_inst_n_3),
        .wr_clk(wr_clk));
  system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .SR(\grdc.rd_data_count_i0 ),
        .\count_value_i_reg[10] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\grdc.rd_data_count_i_reg[0] (curr_fwft_state),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    S,
    d_out_reg_0,
    Q,
    wr_clk,
    rst,
    \count_value_i_reg[3] ,
    wr_en,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[3]_1 );
  output rst_d1;
  output clr_full;
  output [0:0]S;
  output [0:0]d_out_reg_0;
  input [0:0]Q;
  input wr_clk;
  input rst;
  input \count_value_i_reg[3] ;
  input wr_en;
  input [0:0]\count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[3]_1 ;

  wire [0:0]Q;
  wire [0:0]S;
  wire clr_full;
  wire \count_value_i_reg[3] ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire [0:0]\count_value_i_reg[3]_1 ;
  wire [0:0]d_out_reg_0;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\count_value_i_reg[3] ),
        .I3(wr_en),
        .I4(\count_value_i_reg[3]_0 ),
        .O(S));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \count_value_i[3]_i_2__2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(\count_value_i_reg[3] ),
        .I3(wr_en),
        .I4(\count_value_i_reg[3]_1 ),
        .O(d_out_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst
   (E,
    Q,
    SR,
    rst,
    wr_en,
    \count_value_i_reg[10] ,
    rst_d1,
    \grdc.rd_data_count_i_reg[0] ,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  output [0:0]SR;
  input rst;
  input wr_en;
  input \count_value_i_reg[10] ;
  input rst_d1;
  input [1:0]\grdc.rd_data_count_i_reg[0] ;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \count_value_i_reg[10] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [1:0]\grdc.rd_data_count_i_reg[0] ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[10] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[11]_i_1 
       (.I0(Q),
        .I1(\grdc.rd_data_count_i_reg[0] [0]),
        .I2(\grdc.rd_data_count_i_reg[0] [1]),
        .O(SR));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "11" *) (* ADDR_WIDTH_B = "11" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "54" *) (* BYTE_WRITE_WIDTH_B = "54" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "110592" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "2048" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "54" *) (* P_MIN_WIDTH_DATA_A = "54" *) (* P_MIN_WIDTH_DATA_B = "54" *) 
(* P_MIN_WIDTH_DATA_ECC = "54" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "54" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "11" *) 
(* P_WIDTH_ADDR_READ_B = "11" *) (* P_WIDTH_ADDR_WRITE_A = "11" *) (* P_WIDTH_ADDR_WRITE_B = "11" *) 
(* P_WIDTH_COL_WRITE_A = "54" *) (* P_WIDTH_COL_WRITE_B = "54" *) (* READ_DATA_WIDTH_A = "54" *) 
(* READ_DATA_WIDTH_B = "54" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "54" *) (* WRITE_DATA_WIDTH_B = "54" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "56" *) 
(* rstb_loop_iter = "56" *) 
module system_MIPI_CSI_2_RX_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [10:0]addra;
  input [53:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [53:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [10:0]addrb;
  input [53:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [53:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [53:0]dina;
  wire [53:0]\^doutb ;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED ;
  wire [15:6]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[53:52] = \^doutb [53:52];
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39:0] = \^doutb [39:0];
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "17" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "17" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "110592" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[15:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,dina[17:16]}),
        .DIPBDIP({1'b0,1'b0,1'b1,1'b1}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED [31:16],\^doutb [15:0]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED [3:2],\^doutb [17:16]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTA.DATA_LSB  = "18" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_LSB  = "18" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "110592" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[33:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,dina[35:34]}),
        .DIPBDIP({1'b0,1'b0,1'b1,1'b1}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED [31:16],\^doutb [33:18]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED [3:2],\^doutb [35:34]}),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "41" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "2047" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d6" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "41" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "110592" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "41" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \gen_wr_a.gen_word_narrow.mem_reg_2 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[53:52],dina[39:36]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED [15:6],\^doutb [53:52],\^doutb [39:36]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(wea),
        .ENBWREN(enb),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .WEA({wea,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 101472)
`pragma protect data_block
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
1OzC+MP3Gxk9FWAN
`pragma protect end_protected
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
