-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Aug  5 09:23:33 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/project_19_Final_Project/260731_pcam_128x128_grayscale_sujeong/hw.srcs/sources_1/bd/system/ip/system_gray_128x128_0_0/system_gray_128x128_0_0_stub.vhdl
-- Design      : system_gray_128x128_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_gray_128x128_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cap_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cap_tvalid : in STD_LOGIC;
    cap_tready : out STD_LOGIC;
    cap_tlast : in STD_LOGIC;
    cap_tuser : in STD_LOGIC;
    busy : in STD_LOGIC;
    start : out STD_LOGIC;
    cnn_rd_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    cnn_rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cnn_enable : in STD_LOGIC;
    frame_dropped : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC
  );

end system_gray_128x128_0_0;

architecture stub of system_gray_128x128_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,cap_tdata[7:0],cap_tvalid,cap_tready,cap_tlast,cap_tuser,busy,start,cnn_rd_addr[13:0],cnn_rd_data[7:0],cnn_enable,frame_dropped,s_axis_tdata[23:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tuser,m_axis_tdata[23:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tuser";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "gray_128x128,Vivado 2020.2";
begin
end;
