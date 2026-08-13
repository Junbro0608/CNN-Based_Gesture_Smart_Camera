// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 11 08:24:14 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_spi_frame_tx_0_0/system_spi_frame_tx_0_0_stub.v
// Design      : system_spi_frame_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi_frame_tx,Vivado 2020.2" *)
module system_spi_frame_tx_0_0(clk, rst_n, sclk, mosi, miso, cs_n, spi_rd_addr, 
  spi_rd_data, spi_active, probability_data, result, person_cnt)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,sclk,mosi,miso,cs_n,spi_rd_addr[13:0],spi_rd_data[7:0],spi_active,probability_data[7:0],result,person_cnt[6:0]" */;
  input clk;
  input rst_n;
  input sclk;
  input mosi;
  output miso;
  input cs_n;
  output [13:0]spi_rd_addr;
  input [7:0]spi_rd_data;
  output spi_active;
  input [7:0]probability_data;
  input result;
  input [6:0]person_cnt;
endmodule
