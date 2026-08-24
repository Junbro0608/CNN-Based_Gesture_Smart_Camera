// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug  4 13:08:16 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.v
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
xWRepHNTApDLOYXr
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
