-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Jul 30 22:12:03 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_image_buffer_12_0_0/system_axis_image_buffer_12_0_0_stub.vhdl
-- Design      : system_axis_image_buffer_12_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_axis_image_buffer_12_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    cnn_busy : in STD_LOGIC;
    frame_done : out STD_LOGIC;
    cnn_read_enable : in STD_LOGIC;
    cnn_read_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    cnn_read_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end system_axis_image_buffer_12_0_0;

architecture stub of system_axis_image_buffer_12_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_video_tdata[23:0],s_axis_video_tvalid,s_axis_video_tuser,s_axis_video_tlast,s_axis_video_tready,cnn_busy,frame_done,cnn_read_enable,cnn_read_addr[13:0],cnn_read_data[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axis_image_buffer_128x128,Vivado 2020.2";
begin
end;
