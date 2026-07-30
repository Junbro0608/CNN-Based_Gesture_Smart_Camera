// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jul 30 22:12:03 2026
// Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_image_buffer_12_0_0/system_axis_image_buffer_12_0_0_stub.v
// Design      : system_axis_image_buffer_12_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axis_image_buffer_128x128,Vivado 2020.2" *)
module system_axis_image_buffer_12_0_0(aclk, aresetn, s_axis_video_tdata, 
  s_axis_video_tvalid, s_axis_video_tuser, s_axis_video_tlast, s_axis_video_tready, 
  cnn_busy, frame_done, cnn_read_enable, cnn_read_addr, cnn_read_data)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_video_tdata[23:0],s_axis_video_tvalid,s_axis_video_tuser,s_axis_video_tlast,s_axis_video_tready,cnn_busy,frame_done,cnn_read_enable,cnn_read_addr[13:0],cnn_read_data[7:0]" */;
  input aclk;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  output s_axis_video_tready;
  input cnn_busy;
  output frame_done;
  input cnn_read_enable;
  input [13:0]cnn_read_addr;
  output [7:0]cnn_read_data;
endmodule
