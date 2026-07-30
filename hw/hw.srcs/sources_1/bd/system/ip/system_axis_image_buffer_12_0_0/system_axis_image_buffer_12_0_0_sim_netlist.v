// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jul 30 22:12:03 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_image_buffer_12_0_0/system_axis_image_buffer_12_0_0_sim_netlist.v
// Design      : system_axis_image_buffer_12_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axis_image_buffer_12_0_0,axis_image_buffer_128x128,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axis_image_buffer_128x128,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_axis_image_buffer_12_0_0
   (aclk,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tuser,
    s_axis_video_tlast,
    s_axis_video_tready,
    cnn_busy,
    frame_done,
    cnn_read_enable,
    cnn_read_addr,
    cnn_read_data);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [23:0]s_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) input s_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input s_axis_video_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input s_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) output s_axis_video_tready;
  input cnn_busy;
  output frame_done;
  input cnn_read_enable;
  input [13:0]cnn_read_addr;
  output [7:0]cnn_read_data;

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire cnn_busy;
  wire [13:0]cnn_read_addr;
  wire [7:0]cnn_read_data;
  wire cnn_read_enable;
  wire frame_done;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  assign s_axis_video_tready = \<const1> ;
  system_axis_image_buffer_12_0_0_axis_image_buffer_128x128 U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .cnn_busy(cnn_busy),
        .cnn_read_addr(cnn_read_addr),
        .cnn_read_data(cnn_read_data),
        .cnn_read_enable(cnn_read_enable),
        .frame_done(frame_done),
        .s_axis_video_tdata(s_axis_video_tdata[7:0]),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "axis_image_buffer_128x128" *) 
module system_axis_image_buffer_12_0_0_axis_image_buffer_128x128
   (cnn_read_data,
    frame_done,
    cnn_read_enable,
    aresetn,
    aclk,
    cnn_read_addr,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    cnn_busy,
    s_axis_video_tuser);
  output [7:0]cnn_read_data;
  output frame_done;
  input cnn_read_enable;
  input aresetn;
  input aclk;
  input [13:0]cnn_read_addr;
  input [7:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  input cnn_busy;
  input s_axis_video_tuser;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire aclk;
  wire aresetn;
  wire [13:0]buffer_write_addr;
  wire buffer_write_enable;
  wire cnn_busy;
  wire [13:0]cnn_read_addr;
  wire [7:0]cnn_read_data;
  wire cnn_read_enable;
  wire frame_done;
  wire frame_done_i_1_n_0;
  wire frame_done_i_2_n_0;
  wire frame_done_i_3_n_0;
  wire frame_done_i_4_n_0;
  wire frame_done_i_5_n_0;
  wire image_buffer_reg_3_i_12_n_0;
  wire image_buffer_reg_3_i_2_n_0;
  wire image_buffer_reg_3_i_3_n_0;
  wire image_buffer_reg_3_i_5_n_0;
  wire [13:0]p_0_in;
  wire [7:0]s_axis_video_tdata;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [2:0]state__0;
  wire [1:1]state__1;
  wire \write_x[0]_i_1_n_0 ;
  wire \write_x[0]_i_2_n_0 ;
  wire \write_x[1]_i_1_n_0 ;
  wire \write_x[2]_i_1_n_0 ;
  wire \write_x[3]_i_1_n_0 ;
  wire \write_x[4]_i_1_n_0 ;
  wire \write_x[5]_i_1_n_0 ;
  wire \write_x[5]_i_2_n_0 ;
  wire \write_x[5]_i_3_n_0 ;
  wire \write_x[6]_i_1_n_0 ;
  wire \write_x[6]_i_2_n_0 ;
  wire \write_x[6]_i_3_n_0 ;
  wire \write_y[0]_i_1_n_0 ;
  wire \write_y[1]_i_1_n_0 ;
  wire \write_y[2]_i_1_n_0 ;
  wire \write_y[3]_i_1_n_0 ;
  wire \write_y[4]_i_1_n_0 ;
  wire \write_y[5]_i_1_n_0 ;
  wire \write_y[6]_i_1_n_0 ;
  wire \write_y[6]_i_2_n_0 ;
  wire \write_y[6]_i_3_n_0 ;
  wire \write_y[6]_i_4_n_0 ;
  wire \write_y[6]_i_5_n_0 ;
  wire \write_y[6]_i_6_n_0 ;
  wire NLW_image_buffer_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_image_buffer_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_image_buffer_reg_0_DBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_image_buffer_reg_0_DOADO_UNCONNECTED;
  wire [31:2]NLW_image_buffer_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_image_buffer_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_image_buffer_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_image_buffer_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_image_buffer_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_image_buffer_reg_1_DBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_image_buffer_reg_1_DOADO_UNCONNECTED;
  wire [31:2]NLW_image_buffer_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_image_buffer_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_image_buffer_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_image_buffer_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_image_buffer_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_image_buffer_reg_2_DBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_image_buffer_reg_2_DOADO_UNCONNECTED;
  wire [31:2]NLW_image_buffer_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_image_buffer_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_image_buffer_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_image_buffer_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_image_buffer_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_image_buffer_reg_3_DBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_image_buffer_reg_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_image_buffer_reg_3_DOADO_UNCONNECTED;
  wire [31:2]NLW_image_buffer_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_image_buffer_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_image_buffer_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_image_buffer_reg_3_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFBAA08AA00000000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(aresetn),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBAA08AA00000000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(state__1),
        .I5(aresetn),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h010C)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(cnn_busy),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .O(state__1));
  LUT6 #(
    .INIT(64'h08AAFBAA00000000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(aresetn),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\write_y[6]_i_6_n_0 ),
        .I1(frame_done_i_5_n_0),
        .I2(\write_x[5]_i_2_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(frame_done_i_4_n_0),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FF0000FFFF80F)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(s_axis_video_tuser),
        .I1(s_axis_video_tvalid),
        .I2(cnn_busy),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(cnn_busy),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_SOF:001,FRAME_READY:011,WAIT_CNN:100,CAPTURE:010,WAIT_IDLE:000" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WAIT_SOF:001,FRAME_READY:011,WAIT_CNN:100,CAPTURE:010,WAIT_IDLE:000" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WAIT_SOF:001,FRAME_READY:011,WAIT_CNN:100,CAPTURE:010,WAIT_IDLE:000" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF04040400000000)) 
    frame_done_i_1
       (.I0(cnn_busy),
        .I1(state__0[1]),
        .I2(frame_done_i_2_n_0),
        .I3(frame_done_i_3_n_0),
        .I4(frame_done_i_4_n_0),
        .I5(aresetn),
        .O(frame_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    frame_done_i_2
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .O(frame_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    frame_done_i_3
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(\write_x[5]_i_2_n_0 ),
        .I4(frame_done_i_5_n_0),
        .I5(\write_y[6]_i_6_n_0 ),
        .O(frame_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    frame_done_i_4
       (.I0(s_axis_video_tvalid),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(frame_done_i_4_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    frame_done_i_5
       (.I0(p_0_in[13]),
        .I1(p_0_in[11]),
        .I2(p_0_in[12]),
        .O(frame_done_i_5_n_0));
  FDRE frame_done_reg
       (.C(aclk),
        .CE(1'b1),
        .D(frame_done_i_1_n_0),
        .Q(frame_done),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/image_buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
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
    image_buffer_reg_0
       (.ADDRARDADDR({1'b1,buffer_write_addr[13],image_buffer_reg_3_i_5_n_0,buffer_write_addr[11:6],image_buffer_reg_3_i_12_n_0,buffer_write_addr[4:0],1'b1}),
        .ADDRBWRADDR({1'b1,cnn_read_addr,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_image_buffer_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_image_buffer_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_image_buffer_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_video_tdata[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_image_buffer_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_image_buffer_reg_0_DOBDO_UNCONNECTED[31:2],cnn_read_data[1:0]}),
        .DOPADOP(NLW_image_buffer_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_image_buffer_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_image_buffer_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(buffer_write_enable),
        .ENBWREN(image_buffer_reg_3_i_2_n_0),
        .INJECTDBITERR(NLW_image_buffer_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_image_buffer_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_image_buffer_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(image_buffer_reg_3_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_image_buffer_reg_0_SBITERR_UNCONNECTED),
        .WEA({aresetn,aresetn,aresetn,aresetn}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/image_buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
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
    image_buffer_reg_1
       (.ADDRARDADDR({1'b1,buffer_write_addr[13],image_buffer_reg_3_i_5_n_0,buffer_write_addr[11:6],image_buffer_reg_3_i_12_n_0,buffer_write_addr[4:0],1'b1}),
        .ADDRBWRADDR({1'b1,cnn_read_addr,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_image_buffer_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_image_buffer_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_image_buffer_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_video_tdata[3:2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_image_buffer_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_image_buffer_reg_1_DOBDO_UNCONNECTED[31:2],cnn_read_data[3:2]}),
        .DOPADOP(NLW_image_buffer_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_image_buffer_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_image_buffer_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(buffer_write_enable),
        .ENBWREN(image_buffer_reg_3_i_2_n_0),
        .INJECTDBITERR(NLW_image_buffer_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_image_buffer_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_image_buffer_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(image_buffer_reg_3_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_image_buffer_reg_1_SBITERR_UNCONNECTED),
        .WEA({aresetn,aresetn,aresetn,aresetn}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/image_buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
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
    image_buffer_reg_2
       (.ADDRARDADDR({1'b1,buffer_write_addr[13],image_buffer_reg_3_i_5_n_0,buffer_write_addr[11:6],image_buffer_reg_3_i_12_n_0,buffer_write_addr[4:0],1'b1}),
        .ADDRBWRADDR({1'b1,cnn_read_addr,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_image_buffer_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_image_buffer_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_image_buffer_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_video_tdata[5:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_image_buffer_reg_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_image_buffer_reg_2_DOBDO_UNCONNECTED[31:2],cnn_read_data[5:4]}),
        .DOPADOP(NLW_image_buffer_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_image_buffer_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_image_buffer_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(buffer_write_enable),
        .ENBWREN(image_buffer_reg_3_i_2_n_0),
        .INJECTDBITERR(NLW_image_buffer_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_image_buffer_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_image_buffer_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(image_buffer_reg_3_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_image_buffer_reg_2_SBITERR_UNCONNECTED),
        .WEA({aresetn,aresetn,aresetn,aresetn}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/image_buffer" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
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
    image_buffer_reg_3
       (.ADDRARDADDR({1'b1,buffer_write_addr[13],image_buffer_reg_3_i_5_n_0,buffer_write_addr[11:6],image_buffer_reg_3_i_12_n_0,buffer_write_addr[4:0],1'b1}),
        .ADDRBWRADDR({1'b1,cnn_read_addr,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_image_buffer_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_image_buffer_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_image_buffer_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_video_tdata[7:6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_image_buffer_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_image_buffer_reg_3_DOBDO_UNCONNECTED[31:2],cnn_read_data[7:6]}),
        .DOPADOP(NLW_image_buffer_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_image_buffer_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_image_buffer_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(buffer_write_enable),
        .ENBWREN(image_buffer_reg_3_i_2_n_0),
        .INJECTDBITERR(NLW_image_buffer_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_image_buffer_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_image_buffer_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(image_buffer_reg_3_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_image_buffer_reg_3_SBITERR_UNCONNECTED),
        .WEA({aresetn,aresetn,aresetn,aresetn}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h06000400)) 
    image_buffer_reg_3_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(s_axis_video_tvalid),
        .I4(s_axis_video_tuser),
        .O(buffer_write_enable));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_10
       (.I0(p_0_in[7]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[7]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_11
       (.I0(p_0_in[6]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[6]));
  LUT4 #(
    .INIT(16'hEF00)) 
    image_buffer_reg_3_i_12
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(p_0_in[5]),
        .O(image_buffer_reg_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_13
       (.I0(p_0_in[4]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[4]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_14
       (.I0(p_0_in[3]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[3]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_15
       (.I0(p_0_in[2]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[2]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_16
       (.I0(p_0_in[1]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[1]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_17
       (.I0(p_0_in[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[0]));
  LUT2 #(
    .INIT(4'hB)) 
    image_buffer_reg_3_i_2
       (.I0(cnn_read_enable),
        .I1(aresetn),
        .O(image_buffer_reg_3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    image_buffer_reg_3_i_3
       (.I0(aresetn),
        .O(image_buffer_reg_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_4
       (.I0(p_0_in[13]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[13]));
  LUT4 #(
    .INIT(16'hEF00)) 
    image_buffer_reg_3_i_5
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(p_0_in[12]),
        .O(image_buffer_reg_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_6
       (.I0(p_0_in[11]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[11]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_7
       (.I0(p_0_in[10]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[10]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_8
       (.I0(p_0_in[9]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[9]));
  LUT4 #(
    .INIT(16'hA8AA)) 
    image_buffer_reg_3_i_9
       (.I0(p_0_in[8]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(buffer_write_addr[8]));
  LUT6 #(
    .INIT(64'h003000BA0F300030)) 
    \write_x[0]_i_1 
       (.I0(\write_x[0]_i_2_n_0 ),
        .I1(p_0_in[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(cnn_busy),
        .I5(state__0[0]),
        .O(\write_x[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \write_x[0]_i_2 
       (.I0(s_axis_video_tvalid),
        .I1(s_axis_video_tuser),
        .O(\write_x[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003030008080808)) 
    \write_x[1]_i_1 
       (.I0(cnn_busy),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(state__0[1]),
        .O(\write_x[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AA2A2A2)) 
    \write_x[2]_i_1 
       (.I0(\write_x[5]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(\write_x[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28888888AAAAAAAA)) 
    \write_x[3]_i_1 
       (.I0(\write_x[5]_i_3_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(state__0[1]),
        .O(\write_x[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0308000800080308)) 
    \write_x[4]_i_1 
       (.I0(cnn_busy),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(p_0_in[4]),
        .I5(\write_x[5]_i_2_n_0 ),
        .O(\write_x[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD7DD0000)) 
    \write_x[5]_i_1 
       (.I0(state__0[1]),
        .I1(p_0_in[5]),
        .I2(\write_x[5]_i_2_n_0 ),
        .I3(p_0_in[4]),
        .I4(\write_x[5]_i_3_n_0 ),
        .O(\write_x[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \write_x[5]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(\write_x[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1410)) 
    \write_x[5]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(cnn_busy),
        .O(\write_x[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h010F015F010F010F)) 
    \write_x[6]_i_1 
       (.I0(state__0[0]),
        .I1(cnn_busy),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(frame_done_i_3_n_0),
        .I5(s_axis_video_tvalid),
        .O(\write_x[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F06600)) 
    \write_x[6]_i_2 
       (.I0(\write_x[6]_i_3_n_0 ),
        .I1(p_0_in[6]),
        .I2(cnn_busy),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .I5(state__0[0]),
        .O(\write_x[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_x[6]_i_3 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[4]),
        .I5(p_0_in[5]),
        .O(\write_x[6]_i_3_n_0 ));
  FDRE \write_x_reg[0] 
       (.C(aclk),
        .CE(\write_x[6]_i_1_n_0 ),
        .D(\write_x[0]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_x_reg[1] 
       (.C(aclk),
        .CE(\write_x[6]_i_1_n_0 ),
        .D(\write_x[1]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_x_reg[2] 
       (.C(aclk),
        .CE(\write_x[6]_i_1_n_0 ),
        .D(\write_x[2]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_x_reg[3] 
       (.C(aclk),
        .CE(\write_x[6]_i_1_n_0 ),
        .D(\write_x[3]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_x_reg[4] 
       (.C(aclk),
        .CE(\write_x[6]_i_1_n_0 ),
        .D(\write_x[4]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_x_reg[5] 
       (.C(aclk),
        .CE(\write_x[6]_i_1_n_0 ),
        .D(\write_x[5]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_x_reg[6] 
       (.C(aclk),
        .CE(\write_x[6]_i_1_n_0 ),
        .D(\write_x[6]_i_2_n_0 ),
        .Q(p_0_in[6]),
        .R(image_buffer_reg_3_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00080308)) 
    \write_y[0]_i_1 
       (.I0(cnn_busy),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(p_0_in[7]),
        .O(\write_y[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003030008080808)) 
    \write_y[1]_i_1 
       (.I0(cnn_busy),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(p_0_in[7]),
        .I4(p_0_in[8]),
        .I5(state__0[1]),
        .O(\write_y[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AA2A2A2)) 
    \write_y[2]_i_1 
       (.I0(\write_x[5]_i_3_n_0 ),
        .I1(state__0[1]),
        .I2(p_0_in[9]),
        .I3(p_0_in[8]),
        .I4(p_0_in[7]),
        .O(\write_y[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28888888AAAAAAAA)) 
    \write_y[3]_i_1 
       (.I0(\write_x[5]_i_3_n_0 ),
        .I1(p_0_in[10]),
        .I2(p_0_in[7]),
        .I3(p_0_in[8]),
        .I4(p_0_in[9]),
        .I5(state__0[1]),
        .O(\write_y[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0308000800080308)) 
    \write_y[4]_i_1 
       (.I0(cnn_busy),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(p_0_in[11]),
        .I5(\write_y[6]_i_6_n_0 ),
        .O(\write_y[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8288AAAA)) 
    \write_y[5]_i_1 
       (.I0(\write_x[5]_i_3_n_0 ),
        .I1(p_0_in[12]),
        .I2(\write_y[6]_i_6_n_0 ),
        .I3(p_0_in[11]),
        .I4(state__0[1]),
        .O(\write_y[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FF000400)) 
    \write_y[6]_i_1 
       (.I0(state__0[2]),
        .I1(s_axis_video_tvalid),
        .I2(frame_done_i_3_n_0),
        .I3(\write_y[6]_i_3_n_0 ),
        .I4(\write_y[6]_i_4_n_0 ),
        .I5(\write_y[6]_i_5_n_0 ),
        .O(\write_y[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88882888AAAAAAAA)) 
    \write_y[6]_i_2 
       (.I0(\write_x[5]_i_3_n_0 ),
        .I1(p_0_in[13]),
        .I2(p_0_in[12]),
        .I3(p_0_in[11]),
        .I4(\write_y[6]_i_6_n_0 ),
        .I5(state__0[1]),
        .O(\write_y[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \write_y[6]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\write_y[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \write_y[6]_i_4 
       (.I0(cnn_busy),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\write_y[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \write_y[6]_i_5 
       (.I0(\write_x[5]_i_2_n_0 ),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(p_0_in[6]),
        .O(\write_y[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \write_y[6]_i_6 
       (.I0(p_0_in[8]),
        .I1(p_0_in[7]),
        .I2(p_0_in[10]),
        .I3(p_0_in[9]),
        .O(\write_y[6]_i_6_n_0 ));
  FDRE \write_y_reg[0] 
       (.C(aclk),
        .CE(\write_y[6]_i_1_n_0 ),
        .D(\write_y[0]_i_1_n_0 ),
        .Q(p_0_in[7]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_y_reg[1] 
       (.C(aclk),
        .CE(\write_y[6]_i_1_n_0 ),
        .D(\write_y[1]_i_1_n_0 ),
        .Q(p_0_in[8]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_y_reg[2] 
       (.C(aclk),
        .CE(\write_y[6]_i_1_n_0 ),
        .D(\write_y[2]_i_1_n_0 ),
        .Q(p_0_in[9]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_y_reg[3] 
       (.C(aclk),
        .CE(\write_y[6]_i_1_n_0 ),
        .D(\write_y[3]_i_1_n_0 ),
        .Q(p_0_in[10]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_y_reg[4] 
       (.C(aclk),
        .CE(\write_y[6]_i_1_n_0 ),
        .D(\write_y[4]_i_1_n_0 ),
        .Q(p_0_in[11]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_y_reg[5] 
       (.C(aclk),
        .CE(\write_y[6]_i_1_n_0 ),
        .D(\write_y[5]_i_1_n_0 ),
        .Q(p_0_in[12]),
        .R(image_buffer_reg_3_i_3_n_0));
  FDRE \write_y_reg[6] 
       (.C(aclk),
        .CE(\write_y[6]_i_1_n_0 ),
        .D(\write_y[6]_i_2_n_0 ),
        .Q(p_0_in[13]),
        .R(image_buffer_reg_3_i_3_n_0));
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
