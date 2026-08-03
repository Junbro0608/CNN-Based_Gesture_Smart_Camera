// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug  2 20:02:02 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_jetson_controller_0_0/system_jetson_controller_0_0_stub.v
// Design      : system_jetson_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "jetson_controller,Vivado 2020.2" *)
module system_jetson_controller_0_0(clk, resetn, sw, led, gpio_i, gpio_o)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,sw,led,gpio_i,gpio_o" */;
  input clk;
  input resetn;
  input sw;
  output led;
  input gpio_i;
  output gpio_o;
endmodule
