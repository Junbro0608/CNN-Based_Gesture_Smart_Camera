-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Aug  5 17:36:51 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/260731_pcam_128x128_grayscale_sujeong/hw.srcs/sources_1/bd/system/ip/system_rgb2gray_0_0/system_rgb2gray_0_0_sim_netlist.vhdl
-- Design      : system_rgb2gray_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_rgb2gray_0_0_rgb2gray is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_rgb2gray_0_0_rgb2gray : entity is "rgb2gray";
end system_rgb2gray_0_0_rgb2gray;

architecture STRUCTURE of system_rgb2gray_0_0_rgb2gray is
  signal C : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal y_sum1 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \y_sum1__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum1__24_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum1__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry__1_n_3\ : STD_LOGIC;
  signal \y_sum1__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_n_0\ : STD_LOGIC;
  signal \y_sum1__24_carry_n_1\ : STD_LOGIC;
  signal \y_sum1__24_carry_n_2\ : STD_LOGIC;
  signal \y_sum1__24_carry_n_3\ : STD_LOGIC;
  signal \y_sum1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_4\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_5\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_6\ : STD_LOGIC;
  signal \y_sum1_carry__0_n_7\ : STD_LOGIC;
  signal \y_sum1_carry__1_n_2\ : STD_LOGIC;
  signal \y_sum1_carry__1_n_7\ : STD_LOGIC;
  signal y_sum1_carry_i_1_n_0 : STD_LOGIC;
  signal y_sum1_carry_i_2_n_0 : STD_LOGIC;
  signal y_sum1_carry_i_3_n_0 : STD_LOGIC;
  signal y_sum1_carry_n_0 : STD_LOGIC;
  signal y_sum1_carry_n_1 : STD_LOGIC;
  signal y_sum1_carry_n_2 : STD_LOGIC;
  signal y_sum1_carry_n_3 : STD_LOGIC;
  signal y_sum1_carry_n_4 : STD_LOGIC;
  signal y_sum1_carry_n_5 : STD_LOGIC;
  signal y_sum2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \y_sum2__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_4\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_5\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_6\ : STD_LOGIC;
  signal \y_sum2__25_carry__0_n_7\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_1\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_2\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_3\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_4\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_5\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_6\ : STD_LOGIC;
  signal \y_sum2__25_carry__1_n_7\ : STD_LOGIC;
  signal \y_sum2__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_0\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_1\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_2\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_3\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_4\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_5\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_6\ : STD_LOGIC;
  signal \y_sum2__25_carry_n_7\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_4\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_5\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_6\ : STD_LOGIC;
  signal \y_sum2__58_carry__0_n_7\ : STD_LOGIC;
  signal \y_sum2__58_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry__1_n_1\ : STD_LOGIC;
  signal \y_sum2__58_carry__1_n_3\ : STD_LOGIC;
  signal \y_sum2__58_carry__1_n_6\ : STD_LOGIC;
  signal \y_sum2__58_carry__1_n_7\ : STD_LOGIC;
  signal \y_sum2__58_carry_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry_n_0\ : STD_LOGIC;
  signal \y_sum2__58_carry_n_1\ : STD_LOGIC;
  signal \y_sum2__58_carry_n_2\ : STD_LOGIC;
  signal \y_sum2__58_carry_n_3\ : STD_LOGIC;
  signal \y_sum2__58_carry_n_4\ : STD_LOGIC;
  signal \y_sum2__58_carry_n_5\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum2__86_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_n_1\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_n_2\ : STD_LOGIC;
  signal \y_sum2__86_carry__1_n_3\ : STD_LOGIC;
  signal \y_sum2__86_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry_n_0\ : STD_LOGIC;
  signal \y_sum2__86_carry_n_1\ : STD_LOGIC;
  signal \y_sum2__86_carry_n_2\ : STD_LOGIC;
  signal \y_sum2__86_carry_n_3\ : STD_LOGIC;
  signal \y_sum2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_4\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_5\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_6\ : STD_LOGIC;
  signal \y_sum2_carry__0_n_7\ : STD_LOGIC;
  signal \y_sum2_carry__1_n_2\ : STD_LOGIC;
  signal \y_sum2_carry__1_n_7\ : STD_LOGIC;
  signal y_sum2_carry_i_1_n_0 : STD_LOGIC;
  signal y_sum2_carry_i_2_n_0 : STD_LOGIC;
  signal y_sum2_carry_i_3_n_0 : STD_LOGIC;
  signal y_sum2_carry_n_0 : STD_LOGIC;
  signal y_sum2_carry_n_1 : STD_LOGIC;
  signal y_sum2_carry_n_2 : STD_LOGIC;
  signal y_sum2_carry_n_3 : STD_LOGIC;
  signal y_sum2_carry_n_4 : STD_LOGIC;
  signal y_sum2_carry_n_5 : STD_LOGIC;
  signal y_sum2_carry_n_6 : STD_LOGIC;
  signal y_sum2_carry_n_7 : STD_LOGIC;
  signal \y_sum__41_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum__41_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum__41_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum__41_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__1_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__1_n_1\ : STD_LOGIC;
  signal \y_sum__41_carry__1_n_2\ : STD_LOGIC;
  signal \y_sum__41_carry__1_n_3\ : STD_LOGIC;
  signal \y_sum__41_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry__2_n_2\ : STD_LOGIC;
  signal \y_sum__41_carry__2_n_3\ : STD_LOGIC;
  signal \y_sum__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry_n_0\ : STD_LOGIC;
  signal \y_sum__41_carry_n_1\ : STD_LOGIC;
  signal \y_sum__41_carry_n_2\ : STD_LOGIC;
  signal \y_sum__41_carry_n_3\ : STD_LOGIC;
  signal \y_sum__79_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum__79_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum__79_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum__79_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum__79_carry__1_n_3\ : STD_LOGIC;
  signal \y_sum__79_carry_i_1_n_0\ : STD_LOGIC;
  signal \y_sum__79_carry_n_0\ : STD_LOGIC;
  signal \y_sum__79_carry_n_1\ : STD_LOGIC;
  signal \y_sum__79_carry_n_2\ : STD_LOGIC;
  signal \y_sum__79_carry_n_3\ : STD_LOGIC;
  signal \y_sum_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y_sum_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y_sum_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y_sum_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \y_sum_carry__0_n_0\ : STD_LOGIC;
  signal \y_sum_carry__0_n_1\ : STD_LOGIC;
  signal \y_sum_carry__0_n_2\ : STD_LOGIC;
  signal \y_sum_carry__0_n_3\ : STD_LOGIC;
  signal \y_sum_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \y_sum_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \y_sum_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \y_sum_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \y_sum_carry__1_n_0\ : STD_LOGIC;
  signal \y_sum_carry__1_n_1\ : STD_LOGIC;
  signal \y_sum_carry__1_n_2\ : STD_LOGIC;
  signal \y_sum_carry__1_n_3\ : STD_LOGIC;
  signal \y_sum_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \y_sum_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \y_sum_carry__2_n_0\ : STD_LOGIC;
  signal \y_sum_carry__2_n_2\ : STD_LOGIC;
  signal \y_sum_carry__2_n_3\ : STD_LOGIC;
  signal y_sum_carry_i_1_n_0 : STD_LOGIC;
  signal y_sum_carry_i_2_n_0 : STD_LOGIC;
  signal y_sum_carry_i_3_n_0 : STD_LOGIC;
  signal y_sum_carry_i_4_n_0 : STD_LOGIC;
  signal y_sum_carry_n_0 : STD_LOGIC;
  signal y_sum_carry_n_1 : STD_LOGIC;
  signal y_sum_carry_n_2 : STD_LOGIC;
  signal y_sum_carry_n_3 : STD_LOGIC;
  signal \NLW_y_sum1__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_sum1__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_sum1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_sum1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_sum2__58_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_sum2__58_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_sum2__86_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_sum2__86_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_sum2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_sum2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_sum__41_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_sum__41_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_y_sum__41_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_sum__41_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_sum__79_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_y_sum__79_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_sum__79_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_y_sum_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_y_sum_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_y_sum_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_sum_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_y_sum_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \y_sum1__24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum1__24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum1__24_carry__1\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \y_sum2__25_carry__0_i_1\ : label is "lutpair1";
  attribute HLUTNM of \y_sum2__25_carry__0_i_2\ : label is "lutpair0";
  attribute HLUTNM of \y_sum2__25_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \y_sum2__25_carry__0_i_5\ : label is "lutpair1";
  attribute HLUTNM of \y_sum2__25_carry__0_i_6\ : label is "lutpair0";
  attribute HLUTNM of \y_sum2__25_carry__1_i_1\ : label is "lutpair2";
  attribute ADDER_THRESHOLD of \y_sum2__86_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum2__86_carry__0\ : label is 35;
  attribute HLUTNM of \y_sum2__86_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \y_sum2__86_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \y_sum2__86_carry__0_i_4\ : label is "lutpair5";
  attribute HLUTNM of \y_sum2__86_carry__0_i_5\ : label is "lutpair4";
  attribute HLUTNM of \y_sum2__86_carry__0_i_6\ : label is "lutpair3";
  attribute ADDER_THRESHOLD of \y_sum2__86_carry__1\ : label is 35;
  attribute HLUTNM of \y_sum2__86_carry__1_i_4\ : label is "lutpair5";
  attribute ADDER_THRESHOLD of \y_sum2__86_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum__41_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum__41_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum__41_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum__79_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum__79_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_sum__79_carry__1\ : label is 35;
begin
\y_sum1__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_sum1__24_carry_n_0\,
      CO(2) => \y_sum1__24_carry_n_1\,
      CO(1) => \y_sum1__24_carry_n_2\,
      CO(0) => \y_sum1__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y_sum1__24_carry_i_1_n_0\,
      DI(2) => \y_sum1__24_carry_i_2_n_0\,
      DI(1) => \y_sum1__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => y_sum1(6 downto 3),
      S(3) => \y_sum1__24_carry_i_4_n_0\,
      S(2) => \y_sum1__24_carry_i_5_n_0\,
      S(1) => \y_sum1__24_carry_i_6_n_0\,
      S(0) => \y_sum1__24_carry_i_7_n_0\
    );
\y_sum1__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum1__24_carry_n_0\,
      CO(3) => \y_sum1__24_carry__0_n_0\,
      CO(2) => \y_sum1__24_carry__0_n_1\,
      CO(1) => \y_sum1__24_carry__0_n_2\,
      CO(0) => \y_sum1__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y_sum1__24_carry__0_i_1_n_0\,
      DI(2) => \y_sum1__24_carry__0_i_2_n_0\,
      DI(1) => \y_sum1__24_carry__0_i_3_n_0\,
      DI(0) => \y_sum1__24_carry__0_i_4_n_0\,
      O(3 downto 0) => y_sum1(10 downto 7),
      S(3) => \y_sum1__24_carry__0_i_5_n_0\,
      S(2) => \y_sum1__24_carry__0_i_6_n_0\,
      S(1) => \y_sum1__24_carry__0_i_7_n_0\,
      S(0) => \y_sum1__24_carry__0_i_8_n_0\
    );
\y_sum1__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \y_sum1_carry__1_n_7\,
      I2 => s_axis_tdata(12),
      O => \y_sum1__24_carry__0_i_1_n_0\
    );
\y_sum1__24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \y_sum1_carry__0_n_4\,
      I2 => s_axis_tdata(11),
      O => \y_sum1__24_carry__0_i_2_n_0\
    );
\y_sum1__24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \y_sum1_carry__0_n_5\,
      I2 => s_axis_tdata(10),
      O => \y_sum1__24_carry__0_i_3_n_0\
    );
\y_sum1__24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \y_sum1_carry__0_n_6\,
      I2 => s_axis_tdata(9),
      O => \y_sum1__24_carry__0_i_4_n_0\
    );
\y_sum1__24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \y_sum1_carry__1_n_7\,
      I2 => s_axis_tdata(14),
      I3 => s_axis_tdata(15),
      I4 => \y_sum1_carry__1_n_2\,
      I5 => s_axis_tdata(13),
      O => \y_sum1__24_carry__0_i_5_n_0\
    );
\y_sum1__24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \y_sum1_carry__0_n_4\,
      I2 => s_axis_tdata(13),
      I3 => s_axis_tdata(14),
      I4 => \y_sum1_carry__1_n_7\,
      I5 => s_axis_tdata(12),
      O => \y_sum1__24_carry__0_i_6_n_0\
    );
\y_sum1__24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \y_sum1_carry__0_n_5\,
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(13),
      I4 => \y_sum1_carry__0_n_4\,
      I5 => s_axis_tdata(11),
      O => \y_sum1__24_carry__0_i_7_n_0\
    );
\y_sum1__24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \y_sum1_carry__0_n_6\,
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(12),
      I4 => \y_sum1_carry__0_n_5\,
      I5 => s_axis_tdata(10),
      O => \y_sum1__24_carry__0_i_8_n_0\
    );
\y_sum1__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum1__24_carry__0_n_0\,
      CO(3 downto 1) => \NLW_y_sum1__24_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y_sum1__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \y_sum1__24_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_y_sum1__24_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => y_sum1(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \y_sum1__24_carry__1_i_2_n_0\,
      S(0) => \y_sum1__24_carry__1_i_3_n_0\
    );
\y_sum1__24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \y_sum1_carry__1_n_2\,
      I2 => s_axis_tdata(13),
      O => \y_sum1__24_carry__1_i_1_n_0\
    );
\y_sum1__24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(15),
      O => \y_sum1__24_carry__1_i_2_n_0\
    );
\y_sum1__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \y_sum1_carry__1_n_2\,
      I2 => s_axis_tdata(15),
      I3 => s_axis_tdata(14),
      O => \y_sum1__24_carry__1_i_3_n_0\
    );
\y_sum1__24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \y_sum1_carry__0_n_7\,
      I2 => s_axis_tdata(8),
      O => \y_sum1__24_carry_i_1_n_0\
    );
\y_sum1__24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \y_sum1_carry__0_n_7\,
      I2 => s_axis_tdata(8),
      O => \y_sum1__24_carry_i_2_n_0\
    );
\y_sum1__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => y_sum1_carry_n_5,
      I1 => s_axis_tdata(8),
      O => \y_sum1__24_carry_i_3_n_0\
    );
\y_sum1__24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \y_sum1_carry__0_n_7\,
      I2 => s_axis_tdata(10),
      I3 => s_axis_tdata(11),
      I4 => \y_sum1_carry__0_n_6\,
      I5 => s_axis_tdata(9),
      O => \y_sum1__24_carry_i_4_n_0\
    );
\y_sum1__24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \y_sum1_carry__0_n_7\,
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(9),
      I4 => y_sum1_carry_n_4,
      O => \y_sum1__24_carry_i_5_n_0\
    );
\y_sum1__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => y_sum1_carry_n_5,
      I2 => y_sum1_carry_n_4,
      I3 => s_axis_tdata(9),
      O => \y_sum1__24_carry_i_6_n_0\
    );
\y_sum1__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => y_sum1_carry_n_5,
      O => \y_sum1__24_carry_i_7_n_0\
    );
y_sum1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_sum1_carry_n_0,
      CO(2) => y_sum1_carry_n_1,
      CO(1) => y_sum1_carry_n_2,
      CO(0) => y_sum1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(12 downto 10),
      DI(0) => '0',
      O(3) => y_sum1_carry_n_4,
      O(2) => y_sum1_carry_n_5,
      O(1 downto 0) => y_sum1(2 downto 1),
      S(3) => y_sum1_carry_i_1_n_0,
      S(2) => y_sum1_carry_i_2_n_0,
      S(1) => y_sum1_carry_i_3_n_0,
      S(0) => s_axis_tdata(9)
    );
\y_sum1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_sum1_carry_n_0,
      CO(3) => \y_sum1_carry__0_n_0\,
      CO(2) => \y_sum1_carry__0_n_1\,
      CO(1) => \y_sum1_carry__0_n_2\,
      CO(0) => \y_sum1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(15 downto 13),
      O(3) => \y_sum1_carry__0_n_4\,
      O(2) => \y_sum1_carry__0_n_5\,
      O(1) => \y_sum1_carry__0_n_6\,
      O(0) => \y_sum1_carry__0_n_7\,
      S(3) => s_axis_tdata(14),
      S(2) => \y_sum1_carry__0_i_1_n_0\,
      S(1) => \y_sum1_carry__0_i_2_n_0\,
      S(0) => \y_sum1_carry__0_i_3_n_0\
    );
\y_sum1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(13),
      O => \y_sum1_carry__0_i_1_n_0\
    );
\y_sum1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(12),
      O => \y_sum1_carry__0_i_2_n_0\
    );
\y_sum1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => s_axis_tdata(11),
      O => \y_sum1_carry__0_i_3_n_0\
    );
\y_sum1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_y_sum1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_sum1_carry__1_n_2\,
      CO(0) => \NLW_y_sum1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_sum1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \y_sum1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(15)
    );
y_sum1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => s_axis_tdata(10),
      O => y_sum1_carry_i_1_n_0
    );
y_sum1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(9),
      O => y_sum1_carry_i_2_n_0
    );
y_sum1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => s_axis_tdata(8),
      O => y_sum1_carry_i_3_n_0
    );
\y_sum2__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_sum2__25_carry_n_0\,
      CO(2) => \y_sum2__25_carry_n_1\,
      CO(1) => \y_sum2__25_carry_n_2\,
      CO(0) => \y_sum2__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y_sum2_carry__0_n_7\,
      DI(2) => y_sum2_carry_n_4,
      DI(1) => y_sum2_carry_n_5,
      DI(0) => '0',
      O(3) => \y_sum2__25_carry_n_4\,
      O(2) => \y_sum2__25_carry_n_5\,
      O(1) => \y_sum2__25_carry_n_6\,
      O(0) => \y_sum2__25_carry_n_7\,
      S(3) => \y_sum2__25_carry_i_1_n_0\,
      S(2) => \y_sum2__25_carry_i_2_n_0\,
      S(1) => \y_sum2__25_carry_i_3_n_0\,
      S(0) => y_sum2_carry_n_6
    );
\y_sum2__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__25_carry_n_0\,
      CO(3) => \y_sum2__25_carry__0_n_0\,
      CO(2) => \y_sum2__25_carry__0_n_1\,
      CO(1) => \y_sum2__25_carry__0_n_2\,
      CO(0) => \y_sum2__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y_sum2__25_carry__0_i_1_n_0\,
      DI(2) => \y_sum2__25_carry__0_i_2_n_0\,
      DI(1) => \y_sum2__25_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(16),
      O(3) => \y_sum2__25_carry__0_n_4\,
      O(2) => \y_sum2__25_carry__0_n_5\,
      O(1) => \y_sum2__25_carry__0_n_6\,
      O(0) => \y_sum2__25_carry__0_n_7\,
      S(3) => \y_sum2__25_carry__0_i_4_n_0\,
      S(2) => \y_sum2__25_carry__0_i_5_n_0\,
      S(1) => \y_sum2__25_carry__0_i_6_n_0\,
      S(0) => \y_sum2__25_carry__0_i_7_n_0\
    );
\y_sum2__25_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \y_sum2_carry__0_n_4\,
      I2 => s_axis_tdata(18),
      O => \y_sum2__25_carry__0_i_1_n_0\
    );
\y_sum2__25_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \y_sum2_carry__0_n_5\,
      I2 => s_axis_tdata(17),
      O => \y_sum2__25_carry__0_i_2_n_0\
    );
\y_sum2__25_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => s_axis_tdata(20),
      I2 => \y_sum2_carry__0_n_5\,
      O => \y_sum2__25_carry__0_i_3_n_0\
    );
\y_sum2__25_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \y_sum2_carry__1_n_7\,
      I2 => s_axis_tdata(19),
      I3 => \y_sum2__25_carry__0_i_1_n_0\,
      O => \y_sum2__25_carry__0_i_4_n_0\
    );
\y_sum2__25_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \y_sum2_carry__0_n_4\,
      I2 => s_axis_tdata(18),
      I3 => \y_sum2__25_carry__0_i_2_n_0\,
      O => \y_sum2__25_carry__0_i_5_n_0\
    );
\y_sum2__25_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \y_sum2_carry__0_n_5\,
      I2 => s_axis_tdata(17),
      I3 => \y_sum2_carry__0_n_6\,
      I4 => s_axis_tdata(19),
      O => \y_sum2__25_carry__0_i_6_n_0\
    );
\y_sum2__25_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \y_sum2_carry__0_n_6\,
      I2 => s_axis_tdata(16),
      O => \y_sum2__25_carry__0_i_7_n_0\
    );
\y_sum2__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__25_carry__0_n_0\,
      CO(3) => \y_sum2__25_carry__1_n_0\,
      CO(2) => \y_sum2__25_carry__1_n_1\,
      CO(1) => \y_sum2__25_carry__1_n_2\,
      CO(0) => \y_sum2__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_axis_tdata(21),
      DI(0) => \y_sum2__25_carry__1_i_1_n_0\,
      O(3) => \y_sum2__25_carry__1_n_4\,
      O(2) => \y_sum2__25_carry__1_n_5\,
      O(1) => \y_sum2__25_carry__1_n_6\,
      O(0) => \y_sum2__25_carry__1_n_7\,
      S(3 downto 2) => s_axis_tdata(23 downto 22),
      S(1) => \y_sum2__25_carry__1_i_2_n_0\,
      S(0) => \y_sum2__25_carry__1_i_3_n_0\
    );
\y_sum2__25_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \y_sum2_carry__1_n_7\,
      I2 => s_axis_tdata(19),
      O => \y_sum2__25_carry__1_i_1_n_0\
    );
\y_sum2__25_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \y_sum2_carry__1_n_2\,
      I2 => s_axis_tdata(23),
      I3 => s_axis_tdata(21),
      O => \y_sum2__25_carry__1_i_2_n_0\
    );
\y_sum2__25_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \y_sum2__25_carry__1_i_1_n_0\,
      I1 => \y_sum2_carry__1_n_2\,
      I2 => s_axis_tdata(23),
      I3 => s_axis_tdata(20),
      O => \y_sum2__25_carry__1_i_3_n_0\
    );
\y_sum2__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_sum2_carry__0_n_7\,
      I1 => s_axis_tdata(18),
      O => \y_sum2__25_carry_i_1_n_0\
    );
\y_sum2__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2_carry_n_4,
      I1 => s_axis_tdata(17),
      O => \y_sum2__25_carry_i_2_n_0\
    );
\y_sum2__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2_carry_n_5,
      I1 => s_axis_tdata(16),
      O => \y_sum2__25_carry_i_3_n_0\
    );
\y_sum2__58_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_sum2__58_carry_n_0\,
      CO(2) => \y_sum2__58_carry_n_1\,
      CO(1) => \y_sum2__58_carry_n_2\,
      CO(0) => \y_sum2__58_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => s_axis_tdata(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => \y_sum2__58_carry_n_4\,
      O(2) => \y_sum2__58_carry_n_5\,
      O(1 downto 0) => y_sum2(2 downto 1),
      S(3) => \y_sum2__58_carry_i_1_n_0\,
      S(2) => \y_sum2__58_carry_i_2_n_0\,
      S(1) => \y_sum2__58_carry_i_3_n_0\,
      S(0) => s_axis_tdata(0)
    );
\y_sum2__58_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__58_carry_n_0\,
      CO(3) => \y_sum2__58_carry__0_n_0\,
      CO(2) => \y_sum2__58_carry__0_n_1\,
      CO(1) => \y_sum2__58_carry__0_n_2\,
      CO(0) => \y_sum2__58_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_tdata(5 downto 2),
      O(3) => \y_sum2__58_carry__0_n_4\,
      O(2) => \y_sum2__58_carry__0_n_5\,
      O(1) => \y_sum2__58_carry__0_n_6\,
      O(0) => \y_sum2__58_carry__0_n_7\,
      S(3) => \y_sum2__58_carry__0_i_1_n_0\,
      S(2) => \y_sum2__58_carry__0_i_2_n_0\,
      S(1) => \y_sum2__58_carry__0_i_3_n_0\,
      S(0) => \y_sum2__58_carry__0_i_4_n_0\
    );
\y_sum2__58_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => s_axis_tdata(7),
      O => \y_sum2__58_carry__0_i_1_n_0\
    );
\y_sum2__58_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(6),
      O => \y_sum2__58_carry__0_i_2_n_0\
    );
\y_sum2__58_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => s_axis_tdata(5),
      O => \y_sum2__58_carry__0_i_3_n_0\
    );
\y_sum2__58_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_axis_tdata(4),
      O => \y_sum2__58_carry__0_i_4_n_0\
    );
\y_sum2__58_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__58_carry__0_n_0\,
      CO(3) => \NLW_y_sum2__58_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \y_sum2__58_carry__1_n_1\,
      CO(1) => \NLW_y_sum2__58_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \y_sum2__58_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => s_axis_tdata(7 downto 6),
      O(3 downto 2) => \NLW_y_sum2__58_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \y_sum2__58_carry__1_n_6\,
      O(0) => \y_sum2__58_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \y_sum2__58_carry__1_i_1_n_0\,
      S(0) => \y_sum2__58_carry__1_i_2_n_0\
    );
\y_sum2__58_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(7),
      O => \y_sum2__58_carry__1_i_1_n_0\
    );
\y_sum2__58_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(6),
      O => \y_sum2__58_carry__1_i_2_n_0\
    );
\y_sum2__58_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(3),
      O => \y_sum2__58_carry_i_1_n_0\
    );
\y_sum2__58_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => s_axis_tdata(2),
      O => \y_sum2__58_carry_i_2_n_0\
    );
\y_sum2__58_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(1),
      O => \y_sum2__58_carry_i_3_n_0\
    );
\y_sum2__86_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_sum2__86_carry_n_0\,
      CO(2) => \y_sum2__86_carry_n_1\,
      CO(1) => \y_sum2__86_carry_n_2\,
      CO(0) => \y_sum2__86_carry_n_3\,
      CYINIT => '0',
      DI(3) => \y_sum2__58_carry__0_n_6\,
      DI(2) => \y_sum2__58_carry__0_n_7\,
      DI(1) => \y_sum2__58_carry_n_4\,
      DI(0) => '0',
      O(3 downto 0) => y_sum2(6 downto 3),
      S(3) => \y_sum2__86_carry_i_1_n_0\,
      S(2) => \y_sum2__86_carry_i_2_n_0\,
      S(1) => \y_sum2__86_carry_i_3_n_0\,
      S(0) => \y_sum2__58_carry_n_5\
    );
\y_sum2__86_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__86_carry_n_0\,
      CO(3) => \y_sum2__86_carry__0_n_0\,
      CO(2) => \y_sum2__86_carry__0_n_1\,
      CO(1) => \y_sum2__86_carry__0_n_2\,
      CO(0) => \y_sum2__86_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \y_sum2__86_carry__0_i_1_n_0\,
      DI(2) => \y_sum2__86_carry__0_i_2_n_0\,
      DI(1) => \y_sum2__86_carry__0_i_3_n_0\,
      DI(0) => s_axis_tdata(0),
      O(3 downto 0) => y_sum2(10 downto 7),
      S(3) => \y_sum2__86_carry__0_i_4_n_0\,
      S(2) => \y_sum2__86_carry__0_i_5_n_0\,
      S(1) => \y_sum2__86_carry__0_i_6_n_0\,
      S(0) => \y_sum2__86_carry__0_i_7_n_0\
    );
\y_sum2__86_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \y_sum2__58_carry__1_n_7\,
      I2 => s_axis_tdata(2),
      O => \y_sum2__86_carry__0_i_1_n_0\
    );
\y_sum2__86_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \y_sum2__58_carry__0_n_4\,
      I2 => s_axis_tdata(1),
      O => \y_sum2__86_carry__0_i_2_n_0\
    );
\y_sum2__86_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(4),
      I2 => \y_sum2__58_carry__0_n_4\,
      O => \y_sum2__86_carry__0_i_3_n_0\
    );
\y_sum2__86_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \y_sum2__58_carry__1_n_6\,
      I2 => s_axis_tdata(3),
      I3 => \y_sum2__86_carry__0_i_1_n_0\,
      O => \y_sum2__86_carry__0_i_4_n_0\
    );
\y_sum2__86_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \y_sum2__58_carry__1_n_7\,
      I2 => s_axis_tdata(2),
      I3 => \y_sum2__86_carry__0_i_2_n_0\,
      O => \y_sum2__86_carry__0_i_5_n_0\
    );
\y_sum2__86_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \y_sum2__58_carry__0_n_4\,
      I2 => s_axis_tdata(1),
      I3 => \y_sum2__58_carry__0_n_5\,
      I4 => s_axis_tdata(3),
      O => \y_sum2__86_carry__0_i_6_n_0\
    );
\y_sum2__86_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \y_sum2__58_carry__0_n_5\,
      I2 => s_axis_tdata(0),
      O => \y_sum2__86_carry__0_i_7_n_0\
    );
\y_sum2__86_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__86_carry__0_n_0\,
      CO(3) => \y_sum2__86_carry__1_n_0\,
      CO(2) => \y_sum2__86_carry__1_n_1\,
      CO(1) => \y_sum2__86_carry__1_n_2\,
      CO(0) => \y_sum2__86_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \y_sum2__86_carry__1_i_1_n_0\,
      DI(2) => \y_sum2__86_carry__1_i_2_n_0\,
      DI(1) => \y_sum2__86_carry__1_i_3_n_0\,
      DI(0) => \y_sum2__86_carry__1_i_4_n_0\,
      O(3 downto 0) => y_sum2(14 downto 11),
      S(3) => \y_sum2__86_carry__1_i_5_n_0\,
      S(2) => \y_sum2__86_carry__1_i_6_n_0\,
      S(1) => \y_sum2__86_carry__1_i_7_n_0\,
      S(0) => \y_sum2__86_carry__1_i_8_n_0\
    );
\y_sum2__86_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \y_sum2__58_carry__1_n_1\,
      O => \y_sum2__86_carry__1_i_1_n_0\
    );
\y_sum2__86_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \y_sum2__58_carry__1_n_1\,
      O => \y_sum2__86_carry__1_i_2_n_0\
    );
\y_sum2__86_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \y_sum2__58_carry__1_n_1\,
      I2 => s_axis_tdata(4),
      O => \y_sum2__86_carry__1_i_3_n_0\
    );
\y_sum2__86_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \y_sum2__58_carry__1_n_6\,
      I2 => s_axis_tdata(3),
      O => \y_sum2__86_carry__1_i_4_n_0\
    );
\y_sum2__86_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \y_sum2__58_carry__1_n_1\,
      I2 => s_axis_tdata(7),
      O => \y_sum2__86_carry__1_i_5_n_0\
    );
\y_sum2__86_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \y_sum2__58_carry__1_n_1\,
      I2 => s_axis_tdata(6),
      O => \y_sum2__86_carry__1_i_6_n_0\
    );
\y_sum2__86_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(7),
      I2 => \y_sum2__58_carry__1_n_1\,
      I3 => s_axis_tdata(5),
      O => \y_sum2__86_carry__1_i_7_n_0\
    );
\y_sum2__86_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \y_sum2__86_carry__1_i_4_n_0\,
      I1 => \y_sum2__58_carry__1_n_1\,
      I2 => s_axis_tdata(7),
      I3 => s_axis_tdata(4),
      O => \y_sum2__86_carry__1_i_8_n_0\
    );
\y_sum2__86_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__86_carry__1_n_0\,
      CO(3 downto 0) => \NLW_y_sum2__86_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_sum2__86_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => y_sum2(15),
      S(3 downto 1) => B"000",
      S(0) => \y_sum2__86_carry__2_i_1_n_0\
    );
\y_sum2__86_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \y_sum2__58_carry__1_n_1\,
      O => \y_sum2__86_carry__2_i_1_n_0\
    );
\y_sum2__86_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_sum2__58_carry__0_n_6\,
      I1 => s_axis_tdata(2),
      O => \y_sum2__86_carry_i_1_n_0\
    );
\y_sum2__86_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_sum2__58_carry__0_n_7\,
      I1 => s_axis_tdata(1),
      O => \y_sum2__86_carry_i_2_n_0\
    );
\y_sum2__86_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_sum2__58_carry_n_4\,
      I1 => s_axis_tdata(0),
      O => \y_sum2__86_carry_i_3_n_0\
    );
y_sum2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_sum2_carry_n_0,
      CO(2) => y_sum2_carry_n_1,
      CO(1) => y_sum2_carry_n_2,
      CO(0) => y_sum2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_tdata(20 downto 18),
      DI(0) => '0',
      O(3) => y_sum2_carry_n_4,
      O(2) => y_sum2_carry_n_5,
      O(1) => y_sum2_carry_n_6,
      O(0) => y_sum2_carry_n_7,
      S(3) => y_sum2_carry_i_1_n_0,
      S(2) => y_sum2_carry_i_2_n_0,
      S(1) => y_sum2_carry_i_3_n_0,
      S(0) => s_axis_tdata(17)
    );
\y_sum2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_sum2_carry_n_0,
      CO(3) => \y_sum2_carry__0_n_0\,
      CO(2) => \y_sum2_carry__0_n_1\,
      CO(1) => \y_sum2_carry__0_n_2\,
      CO(0) => \y_sum2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_tdata(23 downto 21),
      O(3) => \y_sum2_carry__0_n_4\,
      O(2) => \y_sum2_carry__0_n_5\,
      O(1) => \y_sum2_carry__0_n_6\,
      O(0) => \y_sum2_carry__0_n_7\,
      S(3) => s_axis_tdata(22),
      S(2) => \y_sum2_carry__0_i_1_n_0\,
      S(1) => \y_sum2_carry__0_i_2_n_0\,
      S(0) => \y_sum2_carry__0_i_3_n_0\
    );
\y_sum2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(21),
      O => \y_sum2_carry__0_i_1_n_0\
    );
\y_sum2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => s_axis_tdata(20),
      O => \y_sum2_carry__0_i_2_n_0\
    );
\y_sum2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(19),
      O => \y_sum2_carry__0_i_3_n_0\
    );
\y_sum2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2_carry__0_n_0\,
      CO(3 downto 2) => \NLW_y_sum2_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_sum2_carry__1_n_2\,
      CO(0) => \NLW_y_sum2_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_sum2_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \y_sum2_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_tdata(23)
    );
y_sum2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(18),
      O => y_sum2_carry_i_1_n_0
    );
y_sum2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(17),
      O => y_sum2_carry_i_2_n_0
    );
y_sum2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => s_axis_tdata(16),
      O => y_sum2_carry_i_3_n_0
    );
\y_sum__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_sum__41_carry_n_0\,
      CO(2) => \y_sum__41_carry_n_1\,
      CO(1) => \y_sum__41_carry_n_2\,
      CO(0) => \y_sum__41_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_sum2(4 downto 1),
      O(3 downto 0) => \NLW_y_sum__41_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \y_sum__41_carry_i_1_n_0\,
      S(2) => \y_sum__41_carry_i_2_n_0\,
      S(1) => \y_sum__41_carry_i_3_n_0\,
      S(0) => \y_sum__41_carry_i_4_n_0\
    );
\y_sum__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum__41_carry_n_0\,
      CO(3) => \y_sum__41_carry__0_n_0\,
      CO(2) => \y_sum__41_carry__0_n_1\,
      CO(1) => \y_sum__41_carry__0_n_2\,
      CO(0) => \y_sum__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_sum2(8 downto 5),
      O(3 downto 1) => p_0_in(8 downto 6),
      O(0) => \NLW_y_sum__41_carry__0_O_UNCONNECTED\(0),
      S(3) => \y_sum__41_carry__0_i_1_n_0\,
      S(2) => \y_sum__41_carry__0_i_2_n_0\,
      S(1) => \y_sum__41_carry__0_i_3_n_0\,
      S(0) => \y_sum__41_carry__0_i_4_n_0\
    );
\y_sum__41_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(8),
      I1 => C(8),
      O => \y_sum__41_carry__0_i_1_n_0\
    );
\y_sum__41_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(7),
      I1 => C(7),
      O => \y_sum__41_carry__0_i_2_n_0\
    );
\y_sum__41_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(6),
      I1 => C(6),
      O => \y_sum__41_carry__0_i_3_n_0\
    );
\y_sum__41_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(5),
      I1 => C(5),
      O => \y_sum__41_carry__0_i_4_n_0\
    );
\y_sum__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum__41_carry__0_n_0\,
      CO(3) => \y_sum__41_carry__1_n_0\,
      CO(2) => \y_sum__41_carry__1_n_1\,
      CO(1) => \y_sum__41_carry__1_n_2\,
      CO(0) => \y_sum__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_sum2(12 downto 9),
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3) => \y_sum__41_carry__1_i_1_n_0\,
      S(2) => \y_sum__41_carry__1_i_2_n_0\,
      S(1) => \y_sum__41_carry__1_i_3_n_0\,
      S(0) => \y_sum__41_carry__1_i_4_n_0\
    );
\y_sum__41_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(12),
      I1 => C(12),
      O => \y_sum__41_carry__1_i_1_n_0\
    );
\y_sum__41_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(11),
      I1 => C(11),
      O => \y_sum__41_carry__1_i_2_n_0\
    );
\y_sum__41_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(10),
      I1 => C(10),
      O => \y_sum__41_carry__1_i_3_n_0\
    );
\y_sum__41_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(9),
      I1 => C(9),
      O => \y_sum__41_carry__1_i_4_n_0\
    );
\y_sum__41_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum__41_carry__1_n_0\,
      CO(3 downto 2) => \NLW_y_sum__41_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_sum__41_carry__2_n_2\,
      CO(0) => \y_sum__41_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => y_sum2(14 downto 13),
      O(3) => \NLW_y_sum__41_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(15 downto 13),
      S(3) => '0',
      S(2) => \y_sum__41_carry__2_i_1_n_0\,
      S(1) => \y_sum__41_carry__2_i_2_n_0\,
      S(0) => \y_sum__41_carry__2_i_3_n_0\
    );
\y_sum__41_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(15),
      I1 => \y_sum_carry__2_n_0\,
      O => \y_sum__41_carry__2_i_1_n_0\
    );
\y_sum__41_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(14),
      I1 => C(14),
      O => \y_sum__41_carry__2_i_2_n_0\
    );
\y_sum__41_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(13),
      I1 => C(13),
      O => \y_sum__41_carry__2_i_3_n_0\
    );
\y_sum__41_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(4),
      I1 => C(4),
      O => \y_sum__41_carry_i_1_n_0\
    );
\y_sum__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(3),
      I1 => C(3),
      O => \y_sum__41_carry_i_2_n_0\
    );
\y_sum__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(2),
      I1 => C(2),
      O => \y_sum__41_carry_i_3_n_0\
    );
\y_sum__41_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum2(1),
      I1 => C(1),
      O => \y_sum__41_carry_i_4_n_0\
    );
\y_sum__79_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_sum__79_carry_n_0\,
      CO(2) => \y_sum__79_carry_n_1\,
      CO(1) => \y_sum__79_carry_n_2\,
      CO(0) => \y_sum__79_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => p_0_in(7),
      DI(0) => '0',
      O(3 downto 2) => m_axis_tdata(1 downto 0),
      O(1 downto 0) => \NLW_y_sum__79_carry_O_UNCONNECTED\(1 downto 0),
      S(3 downto 2) => p_0_in(9 downto 8),
      S(1) => \y_sum__79_carry_i_1_n_0\,
      S(0) => p_0_in(6)
    );
\y_sum__79_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum__79_carry_n_0\,
      CO(3) => \y_sum__79_carry__0_n_0\,
      CO(2) => \y_sum__79_carry__0_n_1\,
      CO(1) => \y_sum__79_carry__0_n_2\,
      CO(0) => \y_sum__79_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => m_axis_tdata(5 downto 2),
      S(3 downto 0) => p_0_in(13 downto 10)
    );
\y_sum__79_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum__79_carry__0_n_0\,
      CO(3 downto 1) => \NLW_y_sum__79_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y_sum__79_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_y_sum__79_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => m_axis_tdata(7 downto 6),
      S(3 downto 2) => B"00",
      S(1 downto 0) => p_0_in(15 downto 14)
    );
\y_sum__79_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(7),
      O => \y_sum__79_carry_i_1_n_0\
    );
y_sum_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_sum_carry_n_0,
      CO(2) => y_sum_carry_n_1,
      CO(1) => y_sum_carry_n_2,
      CO(0) => y_sum_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => y_sum1(3 downto 1),
      DI(0) => s_axis_tdata(8),
      O(3 downto 1) => C(3 downto 1),
      O(0) => NLW_y_sum_carry_O_UNCONNECTED(0),
      S(3) => y_sum_carry_i_1_n_0,
      S(2) => y_sum_carry_i_2_n_0,
      S(1) => y_sum_carry_i_3_n_0,
      S(0) => y_sum_carry_i_4_n_0
    );
\y_sum_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_sum_carry_n_0,
      CO(3) => \y_sum_carry__0_n_0\,
      CO(2) => \y_sum_carry__0_n_1\,
      CO(1) => \y_sum_carry__0_n_2\,
      CO(0) => \y_sum_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_sum1(7 downto 4),
      O(3 downto 0) => C(7 downto 4),
      S(3) => \y_sum_carry__0_i_1_n_0\,
      S(2) => \y_sum_carry__0_i_2_n_0\,
      S(1) => \y_sum_carry__0_i_3_n_0\,
      S(0) => \y_sum_carry__0_i_4_n_0\
    );
\y_sum_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(7),
      I1 => \y_sum2__25_carry__0_n_6\,
      O => \y_sum_carry__0_i_1_n_0\
    );
\y_sum_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(6),
      I1 => \y_sum2__25_carry__0_n_7\,
      O => \y_sum_carry__0_i_2_n_0\
    );
\y_sum_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(5),
      I1 => \y_sum2__25_carry_n_4\,
      O => \y_sum_carry__0_i_3_n_0\
    );
\y_sum_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(4),
      I1 => \y_sum2__25_carry_n_5\,
      O => \y_sum_carry__0_i_4_n_0\
    );
\y_sum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum_carry__0_n_0\,
      CO(3) => \y_sum_carry__1_n_0\,
      CO(2) => \y_sum_carry__1_n_1\,
      CO(1) => \y_sum_carry__1_n_2\,
      CO(0) => \y_sum_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => y_sum1(11 downto 8),
      O(3 downto 0) => C(11 downto 8),
      S(3) => \y_sum_carry__1_i_1_n_0\,
      S(2) => \y_sum_carry__1_i_2_n_0\,
      S(1) => \y_sum_carry__1_i_3_n_0\,
      S(0) => \y_sum_carry__1_i_4_n_0\
    );
\y_sum_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(11),
      I1 => \y_sum2__25_carry__1_n_6\,
      O => \y_sum_carry__1_i_1_n_0\
    );
\y_sum_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(10),
      I1 => \y_sum2__25_carry__1_n_7\,
      O => \y_sum_carry__1_i_2_n_0\
    );
\y_sum_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(9),
      I1 => \y_sum2__25_carry__0_n_4\,
      O => \y_sum_carry__1_i_3_n_0\
    );
\y_sum_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(8),
      I1 => \y_sum2__25_carry__0_n_5\,
      O => \y_sum_carry__1_i_4_n_0\
    );
\y_sum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum_carry__1_n_0\,
      CO(3) => \y_sum_carry__2_n_0\,
      CO(2) => \NLW_y_sum_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \y_sum_carry__2_n_2\,
      CO(0) => \y_sum_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => y_sum1(12),
      O(3) => \NLW_y_sum_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => C(14 downto 12),
      S(3) => '1',
      S(2) => \y_sum_carry__2_i_1_n_3\,
      S(1) => \y_sum2__25_carry__1_n_4\,
      S(0) => \y_sum_carry__2_i_2_n_0\
    );
\y_sum_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_sum2__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_y_sum_carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \y_sum_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_y_sum_carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\y_sum_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(12),
      I1 => \y_sum2__25_carry__1_n_5\,
      O => \y_sum_carry__2_i_2_n_0\
    );
y_sum_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(3),
      I1 => \y_sum2__25_carry_n_6\,
      O => y_sum_carry_i_1_n_0
    );
y_sum_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(2),
      I1 => \y_sum2__25_carry_n_7\,
      O => y_sum_carry_i_2_n_0
    );
y_sum_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_sum1(1),
      I1 => y_sum2_carry_n_7,
      O => y_sum_carry_i_3_n_0
    );
y_sum_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => s_axis_tdata(16),
      O => y_sum_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_rgb2gray_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_rgb2gray_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_rgb2gray_0_0 : entity is "system_rgb2gray_0_0,rgb2gray,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_rgb2gray_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_rgb2gray_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_rgb2gray_0_0 : entity is "rgb2gray,Vivado 2020.2";
end system_rgb2gray_0_0;

architecture STRUCTURE of system_rgb2gray_0_0 is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tuser\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tuser\ <= s_axis_tuser;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(23 downto 16) <= \^m_axis_tdata\(7 downto 0);
  m_axis_tdata(15 downto 8) <= \^m_axis_tdata\(7 downto 0);
  m_axis_tdata(7 downto 0) <= \^m_axis_tdata\(7 downto 0);
  m_axis_tlast <= \^s_axis_tlast\;
  m_axis_tuser <= \^s_axis_tuser\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
U0: entity work.system_rgb2gray_0_0_rgb2gray
     port map (
      m_axis_tdata(7 downto 0) => \^m_axis_tdata\(7 downto 0),
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
end STRUCTURE;
