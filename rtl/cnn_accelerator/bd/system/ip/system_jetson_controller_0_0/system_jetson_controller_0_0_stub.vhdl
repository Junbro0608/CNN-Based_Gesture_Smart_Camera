-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Aug 11 08:24:14 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_jetson_controller_0_0/system_jetson_controller_0_0_stub.vhdl
-- Design      : system_jetson_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_jetson_controller_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    result : in STD_LOGIC;
    done : in STD_LOGIC;
    jetson_i : in STD_LOGIC;
    jetson_o : out STD_LOGIC;
    person_led : out STD_LOGIC;
    jetson_led : out STD_LOGIC;
    cnn_enable : out STD_LOGIC;
    person_cnt : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end system_jetson_controller_0_0;

architecture stub of system_jetson_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,result,done,jetson_i,jetson_o,person_led,jetson_led,cnn_enable,person_cnt[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "jetson_controller,Vivado 2020.2";
begin
end;
