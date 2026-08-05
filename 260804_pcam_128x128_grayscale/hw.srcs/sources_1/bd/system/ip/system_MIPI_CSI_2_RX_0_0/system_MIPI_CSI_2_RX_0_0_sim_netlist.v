// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Aug  5 17:07:31 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/hello3/CNN-Based_Gesture_Smart_Camera/260804_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.v
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
LeqMOtIaBEadR4+l
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
