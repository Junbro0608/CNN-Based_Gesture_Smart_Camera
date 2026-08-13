// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Aug 12 09:52:53 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_CNN_accelerator_1_0/system_CNN_accelerator_1_0_stub.v
// Design      : system_CNN_accelerator_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CNN_accelerator,Vivado 2020.2" *)
module system_CNN_accelerator_1_0(sysclk, rst_n, start, sw, done, busy, result, 
  img_raddr, img_rdata, cnn_led, probability_data)
/* synthesis syn_black_box black_box_pad_pin="sysclk,rst_n,start,sw[3:0],done,busy,result,img_raddr[13:0],img_rdata[7:0],cnn_led,probability_data[7:0]" */;
  input sysclk;
  input rst_n;
  input start;
  input [3:0]sw;
  output done;
  output busy;
  output result;
  output [13:0]img_raddr;
  input [7:0]img_rdata;
  output cnn_led;
  output [7:0]probability_data;
endmodule
