// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Aug 12 09:50:50 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_gray_128x128_0_0/system_gray_128x128_0_0_stub.v
// Design      : system_gray_128x128_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gray_128x128,Vivado 2020.2" *)
module system_gray_128x128_0_0(aclk, aresetn, cap_tdata, cap_tvalid, cap_tready, 
  cap_tlast, cap_tuser, busy, start, cnn_rd_addr, cnn_rd_data, cnn_enable, spi_rd_addr, 
  spi_rd_data, spi_active)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,cap_tdata[7:0],cap_tvalid,cap_tready,cap_tlast,cap_tuser,busy,start,cnn_rd_addr[13:0],cnn_rd_data[7:0],cnn_enable,spi_rd_addr[13:0],spi_rd_data[7:0],spi_active" */;
  input aclk;
  input aresetn;
  input [7:0]cap_tdata;
  input cap_tvalid;
  output cap_tready;
  input cap_tlast;
  input cap_tuser;
  input busy;
  output start;
  input [13:0]cnn_rd_addr;
  output [7:0]cnn_rd_data;
  input cnn_enable;
  input [13:0]spi_rd_addr;
  output [7:0]spi_rd_data;
  input spi_active;
endmodule
