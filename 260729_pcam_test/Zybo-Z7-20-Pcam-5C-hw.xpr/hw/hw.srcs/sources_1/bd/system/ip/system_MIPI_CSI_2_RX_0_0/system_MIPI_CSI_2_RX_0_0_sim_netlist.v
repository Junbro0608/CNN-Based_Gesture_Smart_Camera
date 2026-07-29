// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jul 29 09:48:39 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/kccistc/Downloads/Zybo-Z7-20-Pcam-5C-hw.xpr/hw/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.v
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
RR6Yfti2acjdK0lJ
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
