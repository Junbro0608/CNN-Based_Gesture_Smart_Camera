// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 11 08:24:14 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_jetson_controller_0_0/system_jetson_controller_0_0_stub.v
// Design      : system_jetson_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "jetson_controller,Vivado 2020.2" *)
module system_jetson_controller_0_0(clk, resetn, result, done, jetson_i, jetson_o, 
  person_led, jetson_led, cnn_enable, person_cnt)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,result,done,jetson_i,jetson_o,person_led,jetson_led,cnn_enable,person_cnt[6:0]" */;
  input clk;
  input resetn;
  input result;
  input done;
  input jetson_i;
  output jetson_o;
  output person_led;
  output jetson_led;
  output cnn_enable;
  output [6:0]person_cnt;
endmodule
