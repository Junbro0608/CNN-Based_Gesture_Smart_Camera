-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Aug 12 09:52:53 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_CNN_accelerator_1_0/system_CNN_accelerator_1_0_stub.vhdl
-- Design      : system_CNN_accelerator_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_CNN_accelerator_1_0 is
  Port ( 
    sysclk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    start : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    done : out STD_LOGIC;
    busy : out STD_LOGIC;
    result : out STD_LOGIC;
    img_raddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    img_rdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cnn_led : out STD_LOGIC;
    probability_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end system_CNN_accelerator_1_0;

architecture stub of system_CNN_accelerator_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sysclk,rst_n,start,sw[3:0],done,busy,result,img_raddr[13:0],img_rdata[7:0],cnn_led,probability_data[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CNN_accelerator,Vivado 2020.2";
begin
end;
