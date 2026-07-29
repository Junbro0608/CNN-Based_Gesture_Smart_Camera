-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jul 29 15:12:12 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_grayscale_0_0/system_axis_grayscale_0_0_sim_netlist.vhdl
-- Design      : system_axis_grayscale_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axis_grayscale_0_0_axis_grayscale is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tvalid_reg_0 : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axis_grayscale_0_0_axis_grayscale : entity is "axis_grayscale";
end system_axis_grayscale_0_0_axis_grayscale;

architecture STRUCTURE of system_axis_grayscale_0_0_axis_grayscale is
  signal C : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal blue_weighted : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \blue_weighted__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_n_1\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_n_2\ : STD_LOGIC;
  signal \blue_weighted__24_carry__0_n_3\ : STD_LOGIC;
  signal \blue_weighted__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry__1_n_3\ : STD_LOGIC;
  signal \blue_weighted__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_n_0\ : STD_LOGIC;
  signal \blue_weighted__24_carry_n_1\ : STD_LOGIC;
  signal \blue_weighted__24_carry_n_2\ : STD_LOGIC;
  signal \blue_weighted__24_carry_n_3\ : STD_LOGIC;
  signal \blue_weighted_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \blue_weighted_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \blue_weighted_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_0\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_1\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_2\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_3\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_4\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_5\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_6\ : STD_LOGIC;
  signal \blue_weighted_carry__0_n_7\ : STD_LOGIC;
  signal \blue_weighted_carry__1_n_2\ : STD_LOGIC;
  signal \blue_weighted_carry__1_n_7\ : STD_LOGIC;
  signal blue_weighted_carry_i_1_n_0 : STD_LOGIC;
  signal blue_weighted_carry_i_2_n_0 : STD_LOGIC;
  signal blue_weighted_carry_i_3_n_0 : STD_LOGIC;
  signal blue_weighted_carry_n_0 : STD_LOGIC;
  signal blue_weighted_carry_n_1 : STD_LOGIC;
  signal blue_weighted_carry_n_2 : STD_LOGIC;
  signal blue_weighted_carry_n_3 : STD_LOGIC;
  signal blue_weighted_carry_n_4 : STD_LOGIC;
  signal blue_weighted_carry_n_5 : STD_LOGIC;
  signal gray_sum : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \gray_sum__41_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__0_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__0_n_1\ : STD_LOGIC;
  signal \gray_sum__41_carry__0_n_2\ : STD_LOGIC;
  signal \gray_sum__41_carry__0_n_3\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_n_1\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_n_2\ : STD_LOGIC;
  signal \gray_sum__41_carry__1_n_3\ : STD_LOGIC;
  signal \gray_sum__41_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry__2_n_2\ : STD_LOGIC;
  signal \gray_sum__41_carry__2_n_3\ : STD_LOGIC;
  signal \gray_sum__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry_n_0\ : STD_LOGIC;
  signal \gray_sum__41_carry_n_1\ : STD_LOGIC;
  signal \gray_sum__41_carry_n_2\ : STD_LOGIC;
  signal \gray_sum__41_carry_n_3\ : STD_LOGIC;
  signal \gray_sum_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__0_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__0_n_1\ : STD_LOGIC;
  signal \gray_sum_carry__0_n_2\ : STD_LOGIC;
  signal \gray_sum_carry__0_n_3\ : STD_LOGIC;
  signal \gray_sum_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__1_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__1_n_1\ : STD_LOGIC;
  signal \gray_sum_carry__1_n_2\ : STD_LOGIC;
  signal \gray_sum_carry__1_n_3\ : STD_LOGIC;
  signal \gray_sum_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__2_n_0\ : STD_LOGIC;
  signal \gray_sum_carry__2_n_2\ : STD_LOGIC;
  signal \gray_sum_carry__2_n_3\ : STD_LOGIC;
  signal gray_sum_carry_i_1_n_0 : STD_LOGIC;
  signal gray_sum_carry_i_2_n_0 : STD_LOGIC;
  signal gray_sum_carry_i_3_n_0 : STD_LOGIC;
  signal gray_sum_carry_i_4_n_0 : STD_LOGIC;
  signal gray_sum_carry_n_0 : STD_LOGIC;
  signal gray_sum_carry_n_1 : STD_LOGIC;
  signal gray_sum_carry_n_2 : STD_LOGIC;
  signal gray_sum_carry_n_3 : STD_LOGIC;
  signal green_weighted : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \green_weighted__27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_n_1\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_n_2\ : STD_LOGIC;
  signal \green_weighted__27_carry__0_n_3\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_n_1\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_n_2\ : STD_LOGIC;
  signal \green_weighted__27_carry__1_n_3\ : STD_LOGIC;
  signal \green_weighted__27_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry_i_1_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry_i_2_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry_i_3_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry_n_0\ : STD_LOGIC;
  signal \green_weighted__27_carry_n_1\ : STD_LOGIC;
  signal \green_weighted__27_carry_n_2\ : STD_LOGIC;
  signal \green_weighted__27_carry_n_3\ : STD_LOGIC;
  signal \green_weighted_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \green_weighted_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \green_weighted_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \green_weighted_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_0\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_1\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_2\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_3\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_4\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_5\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_6\ : STD_LOGIC;
  signal \green_weighted_carry__0_n_7\ : STD_LOGIC;
  signal \green_weighted_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \green_weighted_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \green_weighted_carry__1_n_1\ : STD_LOGIC;
  signal \green_weighted_carry__1_n_3\ : STD_LOGIC;
  signal \green_weighted_carry__1_n_6\ : STD_LOGIC;
  signal \green_weighted_carry__1_n_7\ : STD_LOGIC;
  signal green_weighted_carry_i_1_n_0 : STD_LOGIC;
  signal green_weighted_carry_i_2_n_0 : STD_LOGIC;
  signal green_weighted_carry_i_3_n_0 : STD_LOGIC;
  signal green_weighted_carry_n_0 : STD_LOGIC;
  signal green_weighted_carry_n_1 : STD_LOGIC;
  signal green_weighted_carry_n_2 : STD_LOGIC;
  signal green_weighted_carry_n_3 : STD_LOGIC;
  signal green_weighted_carry_n_4 : STD_LOGIC;
  signal green_weighted_carry_n_5 : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal m_axis_video_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_video_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal red_weighted : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \red_weighted__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_n_1\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_n_2\ : STD_LOGIC;
  signal \red_weighted__25_carry__0_n_3\ : STD_LOGIC;
  signal \red_weighted__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__1_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry__1_n_1\ : STD_LOGIC;
  signal \red_weighted__25_carry__1_n_2\ : STD_LOGIC;
  signal \red_weighted__25_carry__1_n_3\ : STD_LOGIC;
  signal \red_weighted__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry_n_0\ : STD_LOGIC;
  signal \red_weighted__25_carry_n_1\ : STD_LOGIC;
  signal \red_weighted__25_carry_n_2\ : STD_LOGIC;
  signal \red_weighted__25_carry_n_3\ : STD_LOGIC;
  signal \red_weighted_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \red_weighted_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \red_weighted_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_0\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_1\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_2\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_3\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_4\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_5\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_6\ : STD_LOGIC;
  signal \red_weighted_carry__0_n_7\ : STD_LOGIC;
  signal \red_weighted_carry__1_n_2\ : STD_LOGIC;
  signal \red_weighted_carry__1_n_7\ : STD_LOGIC;
  signal red_weighted_carry_i_1_n_0 : STD_LOGIC;
  signal red_weighted_carry_i_2_n_0 : STD_LOGIC;
  signal red_weighted_carry_i_3_n_0 : STD_LOGIC;
  signal red_weighted_carry_n_0 : STD_LOGIC;
  signal red_weighted_carry_n_1 : STD_LOGIC;
  signal red_weighted_carry_n_2 : STD_LOGIC;
  signal red_weighted_carry_n_3 : STD_LOGIC;
  signal red_weighted_carry_n_4 : STD_LOGIC;
  signal red_weighted_carry_n_5 : STD_LOGIC;
  signal red_weighted_carry_n_6 : STD_LOGIC;
  signal \NLW_blue_weighted__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_blue_weighted__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_blue_weighted_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_blue_weighted_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gray_sum__41_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gray_sum__41_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gray_sum__41_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gray_sum__41_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_gray_sum_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gray_sum_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_gray_sum_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gray_sum_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gray_sum_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_green_weighted__27_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_green_weighted__27_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_green_weighted_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_green_weighted_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_red_weighted_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_red_weighted_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \blue_weighted__24_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \blue_weighted__24_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \blue_weighted__24_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gray_sum__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \gray_sum__41_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gray_sum__41_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gray_sum__41_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \green_weighted__27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \green_weighted__27_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \green_weighted__27_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \green_weighted__27_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \green_weighted__27_carry__0_i_4\ : label is "lutpair5";
  attribute HLUTNM of \green_weighted__27_carry__0_i_5\ : label is "lutpair4";
  attribute HLUTNM of \green_weighted__27_carry__0_i_6\ : label is "lutpair3";
  attribute ADDER_THRESHOLD of \green_weighted__27_carry__1\ : label is 35;
  attribute HLUTNM of \green_weighted__27_carry__1_i_4\ : label is "lutpair5";
  attribute ADDER_THRESHOLD of \green_weighted__27_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_video_tvalid_i_1 : label is "soft_lutpair0";
  attribute HLUTNM of \red_weighted__25_carry__0_i_1\ : label is "lutpair1";
  attribute HLUTNM of \red_weighted__25_carry__0_i_2\ : label is "lutpair0";
  attribute HLUTNM of \red_weighted__25_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \red_weighted__25_carry__0_i_5\ : label is "lutpair1";
  attribute HLUTNM of \red_weighted__25_carry__0_i_6\ : label is "lutpair0";
  attribute HLUTNM of \red_weighted__25_carry__1_i_1\ : label is "lutpair2";
  attribute SOFT_HLUTNM of s_axis_video_tready_INST_0 : label is "soft_lutpair0";
begin
  m_axis_video_tvalid_reg_0 <= \^m_axis_video_tvalid_reg_0\;
\blue_weighted__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \blue_weighted__24_carry_n_0\,
      CO(2) => \blue_weighted__24_carry_n_1\,
      CO(1) => \blue_weighted__24_carry_n_2\,
      CO(0) => \blue_weighted__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \blue_weighted__24_carry_i_1_n_0\,
      DI(2) => \blue_weighted__24_carry_i_2_n_0\,
      DI(1) => \blue_weighted__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => blue_weighted(6 downto 3),
      S(3) => \blue_weighted__24_carry_i_4_n_0\,
      S(2) => \blue_weighted__24_carry_i_5_n_0\,
      S(1) => \blue_weighted__24_carry_i_6_n_0\,
      S(0) => \blue_weighted__24_carry_i_7_n_0\
    );
\blue_weighted__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \blue_weighted__24_carry_n_0\,
      CO(3) => \blue_weighted__24_carry__0_n_0\,
      CO(2) => \blue_weighted__24_carry__0_n_1\,
      CO(1) => \blue_weighted__24_carry__0_n_2\,
      CO(0) => \blue_weighted__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \blue_weighted__24_carry__0_i_1_n_0\,
      DI(2) => \blue_weighted__24_carry__0_i_2_n_0\,
      DI(1) => \blue_weighted__24_carry__0_i_3_n_0\,
      DI(0) => \blue_weighted__24_carry__0_i_4_n_0\,
      O(3 downto 0) => blue_weighted(10 downto 7),
      S(3) => \blue_weighted__24_carry__0_i_5_n_0\,
      S(2) => \blue_weighted__24_carry__0_i_6_n_0\,
      S(1) => \blue_weighted__24_carry__0_i_7_n_0\,
      S(0) => \blue_weighted__24_carry__0_i_8_n_0\
    );
\blue_weighted__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_video_tdata(14),
      I1 => \blue_weighted_carry__1_n_7\,
      I2 => s_axis_video_tdata(12),
      O => \blue_weighted__24_carry__0_i_1_n_0\
    );
\blue_weighted__24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_video_tdata(13),
      I1 => \blue_weighted_carry__0_n_4\,
      I2 => s_axis_video_tdata(11),
      O => \blue_weighted__24_carry__0_i_2_n_0\
    );
\blue_weighted__24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_video_tdata(12),
      I1 => \blue_weighted_carry__0_n_5\,
      I2 => s_axis_video_tdata(10),
      O => \blue_weighted__24_carry__0_i_3_n_0\
    );
\blue_weighted__24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_video_tdata(11),
      I1 => \blue_weighted_carry__0_n_6\,
      I2 => s_axis_video_tdata(9),
      O => \blue_weighted__24_carry__0_i_4_n_0\
    );
\blue_weighted__24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_video_tdata(12),
      I1 => \blue_weighted_carry__1_n_7\,
      I2 => s_axis_video_tdata(14),
      I3 => s_axis_video_tdata(15),
      I4 => \blue_weighted_carry__1_n_2\,
      I5 => s_axis_video_tdata(13),
      O => \blue_weighted__24_carry__0_i_5_n_0\
    );
\blue_weighted__24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_video_tdata(11),
      I1 => \blue_weighted_carry__0_n_4\,
      I2 => s_axis_video_tdata(13),
      I3 => s_axis_video_tdata(14),
      I4 => \blue_weighted_carry__1_n_7\,
      I5 => s_axis_video_tdata(12),
      O => \blue_weighted__24_carry__0_i_6_n_0\
    );
\blue_weighted__24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_video_tdata(10),
      I1 => \blue_weighted_carry__0_n_5\,
      I2 => s_axis_video_tdata(12),
      I3 => s_axis_video_tdata(13),
      I4 => \blue_weighted_carry__0_n_4\,
      I5 => s_axis_video_tdata(11),
      O => \blue_weighted__24_carry__0_i_7_n_0\
    );
\blue_weighted__24_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => \blue_weighted_carry__0_n_6\,
      I2 => s_axis_video_tdata(11),
      I3 => s_axis_video_tdata(12),
      I4 => \blue_weighted_carry__0_n_5\,
      I5 => s_axis_video_tdata(10),
      O => \blue_weighted__24_carry__0_i_8_n_0\
    );
\blue_weighted__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \blue_weighted__24_carry__0_n_0\,
      CO(3 downto 1) => \NLW_blue_weighted__24_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \blue_weighted__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \blue_weighted__24_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_blue_weighted__24_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => blue_weighted(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \blue_weighted__24_carry__1_i_2_n_0\,
      S(0) => \blue_weighted__24_carry__1_i_3_n_0\
    );
\blue_weighted__24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_video_tdata(15),
      I1 => \blue_weighted_carry__1_n_2\,
      I2 => s_axis_video_tdata(13),
      O => \blue_weighted__24_carry__1_i_1_n_0\
    );
\blue_weighted__24_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_video_tdata(14),
      I1 => s_axis_video_tdata(15),
      O => \blue_weighted__24_carry__1_i_2_n_0\
    );
\blue_weighted__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => s_axis_video_tdata(13),
      I1 => \blue_weighted_carry__1_n_2\,
      I2 => s_axis_video_tdata(15),
      I3 => s_axis_video_tdata(14),
      O => \blue_weighted__24_carry__1_i_3_n_0\
    );
\blue_weighted__24_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_video_tdata(10),
      I1 => \blue_weighted_carry__0_n_7\,
      I2 => s_axis_video_tdata(8),
      O => \blue_weighted__24_carry_i_1_n_0\
    );
\blue_weighted__24_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_axis_video_tdata(10),
      I1 => \blue_weighted_carry__0_n_7\,
      I2 => s_axis_video_tdata(8),
      O => \blue_weighted__24_carry_i_2_n_0\
    );
\blue_weighted__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => blue_weighted_carry_n_5,
      I1 => s_axis_video_tdata(8),
      O => \blue_weighted__24_carry_i_3_n_0\
    );
\blue_weighted__24_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => \blue_weighted_carry__0_n_7\,
      I2 => s_axis_video_tdata(10),
      I3 => s_axis_video_tdata(11),
      I4 => \blue_weighted_carry__0_n_6\,
      I5 => s_axis_video_tdata(9),
      O => \blue_weighted__24_carry_i_4_n_0\
    );
\blue_weighted__24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => s_axis_video_tdata(10),
      I1 => \blue_weighted_carry__0_n_7\,
      I2 => s_axis_video_tdata(8),
      I3 => s_axis_video_tdata(9),
      I4 => blue_weighted_carry_n_4,
      O => \blue_weighted__24_carry_i_5_n_0\
    );
\blue_weighted__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => blue_weighted_carry_n_5,
      I2 => blue_weighted_carry_n_4,
      I3 => s_axis_video_tdata(9),
      O => \blue_weighted__24_carry_i_6_n_0\
    );
\blue_weighted__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => blue_weighted_carry_n_5,
      O => \blue_weighted__24_carry_i_7_n_0\
    );
blue_weighted_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => blue_weighted_carry_n_0,
      CO(2) => blue_weighted_carry_n_1,
      CO(1) => blue_weighted_carry_n_2,
      CO(0) => blue_weighted_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_video_tdata(12 downto 10),
      DI(0) => '0',
      O(3) => blue_weighted_carry_n_4,
      O(2) => blue_weighted_carry_n_5,
      O(1 downto 0) => blue_weighted(2 downto 1),
      S(3) => blue_weighted_carry_i_1_n_0,
      S(2) => blue_weighted_carry_i_2_n_0,
      S(1) => blue_weighted_carry_i_3_n_0,
      S(0) => s_axis_video_tdata(9)
    );
\blue_weighted_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => blue_weighted_carry_n_0,
      CO(3) => \blue_weighted_carry__0_n_0\,
      CO(2) => \blue_weighted_carry__0_n_1\,
      CO(1) => \blue_weighted_carry__0_n_2\,
      CO(0) => \blue_weighted_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_video_tdata(15 downto 13),
      O(3) => \blue_weighted_carry__0_n_4\,
      O(2) => \blue_weighted_carry__0_n_5\,
      O(1) => \blue_weighted_carry__0_n_6\,
      O(0) => \blue_weighted_carry__0_n_7\,
      S(3) => s_axis_video_tdata(14),
      S(2) => \blue_weighted_carry__0_i_1_n_0\,
      S(1) => \blue_weighted_carry__0_i_2_n_0\,
      S(0) => \blue_weighted_carry__0_i_3_n_0\
    );
\blue_weighted_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(15),
      I1 => s_axis_video_tdata(13),
      O => \blue_weighted_carry__0_i_1_n_0\
    );
\blue_weighted_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(14),
      I1 => s_axis_video_tdata(12),
      O => \blue_weighted_carry__0_i_2_n_0\
    );
\blue_weighted_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(13),
      I1 => s_axis_video_tdata(11),
      O => \blue_weighted_carry__0_i_3_n_0\
    );
\blue_weighted_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \blue_weighted_carry__0_n_0\,
      CO(3 downto 2) => \NLW_blue_weighted_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \blue_weighted_carry__1_n_2\,
      CO(0) => \NLW_blue_weighted_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_blue_weighted_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \blue_weighted_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_video_tdata(15)
    );
blue_weighted_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(12),
      I1 => s_axis_video_tdata(10),
      O => blue_weighted_carry_i_1_n_0
    );
blue_weighted_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(11),
      I1 => s_axis_video_tdata(9),
      O => blue_weighted_carry_i_2_n_0
    );
blue_weighted_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(10),
      I1 => s_axis_video_tdata(8),
      O => blue_weighted_carry_i_3_n_0
    );
\gray_sum__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gray_sum__41_carry_n_0\,
      CO(2) => \gray_sum__41_carry_n_1\,
      CO(1) => \gray_sum__41_carry_n_2\,
      CO(0) => \gray_sum__41_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => green_weighted(4 downto 1),
      O(3 downto 0) => \NLW_gray_sum__41_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \gray_sum__41_carry_i_1_n_0\,
      S(2) => \gray_sum__41_carry_i_2_n_0\,
      S(1) => \gray_sum__41_carry_i_3_n_0\,
      S(0) => \gray_sum__41_carry_i_4_n_0\
    );
\gray_sum__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray_sum__41_carry_n_0\,
      CO(3) => \gray_sum__41_carry__0_n_0\,
      CO(2) => \gray_sum__41_carry__0_n_1\,
      CO(1) => \gray_sum__41_carry__0_n_2\,
      CO(0) => \gray_sum__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => green_weighted(8 downto 5),
      O(3) => gray_sum(8),
      O(2 downto 0) => \NLW_gray_sum__41_carry__0_O_UNCONNECTED\(2 downto 0),
      S(3) => \gray_sum__41_carry__0_i_1_n_0\,
      S(2) => \gray_sum__41_carry__0_i_2_n_0\,
      S(1) => \gray_sum__41_carry__0_i_3_n_0\,
      S(0) => \gray_sum__41_carry__0_i_4_n_0\
    );
\gray_sum__41_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(8),
      I1 => C(8),
      O => \gray_sum__41_carry__0_i_1_n_0\
    );
\gray_sum__41_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(7),
      I1 => C(7),
      O => \gray_sum__41_carry__0_i_2_n_0\
    );
\gray_sum__41_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(6),
      I1 => C(6),
      O => \gray_sum__41_carry__0_i_3_n_0\
    );
\gray_sum__41_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(5),
      I1 => C(5),
      O => \gray_sum__41_carry__0_i_4_n_0\
    );
\gray_sum__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray_sum__41_carry__0_n_0\,
      CO(3) => \gray_sum__41_carry__1_n_0\,
      CO(2) => \gray_sum__41_carry__1_n_1\,
      CO(1) => \gray_sum__41_carry__1_n_2\,
      CO(0) => \gray_sum__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => green_weighted(12 downto 9),
      O(3 downto 0) => gray_sum(12 downto 9),
      S(3) => \gray_sum__41_carry__1_i_1_n_0\,
      S(2) => \gray_sum__41_carry__1_i_2_n_0\,
      S(1) => \gray_sum__41_carry__1_i_3_n_0\,
      S(0) => \gray_sum__41_carry__1_i_4_n_0\
    );
\gray_sum__41_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(12),
      I1 => C(12),
      O => \gray_sum__41_carry__1_i_1_n_0\
    );
\gray_sum__41_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(11),
      I1 => C(11),
      O => \gray_sum__41_carry__1_i_2_n_0\
    );
\gray_sum__41_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(10),
      I1 => C(10),
      O => \gray_sum__41_carry__1_i_3_n_0\
    );
\gray_sum__41_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(9),
      I1 => C(9),
      O => \gray_sum__41_carry__1_i_4_n_0\
    );
\gray_sum__41_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray_sum__41_carry__1_n_0\,
      CO(3 downto 2) => \NLW_gray_sum__41_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gray_sum__41_carry__2_n_2\,
      CO(0) => \gray_sum__41_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => green_weighted(14 downto 13),
      O(3) => \NLW_gray_sum__41_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => gray_sum(15 downto 13),
      S(3) => '0',
      S(2) => \gray_sum__41_carry__2_i_1_n_0\,
      S(1) => \gray_sum__41_carry__2_i_2_n_0\,
      S(0) => \gray_sum__41_carry__2_i_3_n_0\
    );
\gray_sum__41_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(15),
      I1 => \gray_sum_carry__2_n_0\,
      O => \gray_sum__41_carry__2_i_1_n_0\
    );
\gray_sum__41_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(14),
      I1 => C(14),
      O => \gray_sum__41_carry__2_i_2_n_0\
    );
\gray_sum__41_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(13),
      I1 => C(13),
      O => \gray_sum__41_carry__2_i_3_n_0\
    );
\gray_sum__41_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(4),
      I1 => C(4),
      O => \gray_sum__41_carry_i_1_n_0\
    );
\gray_sum__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(3),
      I1 => C(3),
      O => \gray_sum__41_carry_i_2_n_0\
    );
\gray_sum__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(2),
      I1 => C(2),
      O => \gray_sum__41_carry_i_3_n_0\
    );
\gray_sum__41_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted(1),
      I1 => C(1),
      O => \gray_sum__41_carry_i_4_n_0\
    );
gray_sum_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gray_sum_carry_n_0,
      CO(2) => gray_sum_carry_n_1,
      CO(1) => gray_sum_carry_n_2,
      CO(0) => gray_sum_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => blue_weighted(3 downto 1),
      DI(0) => s_axis_video_tdata(8),
      O(3 downto 1) => C(3 downto 1),
      O(0) => NLW_gray_sum_carry_O_UNCONNECTED(0),
      S(3) => gray_sum_carry_i_1_n_0,
      S(2) => gray_sum_carry_i_2_n_0,
      S(1) => gray_sum_carry_i_3_n_0,
      S(0) => gray_sum_carry_i_4_n_0
    );
\gray_sum_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gray_sum_carry_n_0,
      CO(3) => \gray_sum_carry__0_n_0\,
      CO(2) => \gray_sum_carry__0_n_1\,
      CO(1) => \gray_sum_carry__0_n_2\,
      CO(0) => \gray_sum_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => blue_weighted(7 downto 4),
      O(3 downto 0) => C(7 downto 4),
      S(3) => \gray_sum_carry__0_i_1_n_0\,
      S(2) => \gray_sum_carry__0_i_2_n_0\,
      S(1) => \gray_sum_carry__0_i_3_n_0\,
      S(0) => \gray_sum_carry__0_i_4_n_0\
    );
\gray_sum_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(7),
      I1 => red_weighted(7),
      O => \gray_sum_carry__0_i_1_n_0\
    );
\gray_sum_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(6),
      I1 => red_weighted(6),
      O => \gray_sum_carry__0_i_2_n_0\
    );
\gray_sum_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(5),
      I1 => red_weighted(5),
      O => \gray_sum_carry__0_i_3_n_0\
    );
\gray_sum_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(4),
      I1 => red_weighted(4),
      O => \gray_sum_carry__0_i_4_n_0\
    );
\gray_sum_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray_sum_carry__0_n_0\,
      CO(3) => \gray_sum_carry__1_n_0\,
      CO(2) => \gray_sum_carry__1_n_1\,
      CO(1) => \gray_sum_carry__1_n_2\,
      CO(0) => \gray_sum_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => blue_weighted(11 downto 8),
      O(3 downto 0) => C(11 downto 8),
      S(3) => \gray_sum_carry__1_i_1_n_0\,
      S(2) => \gray_sum_carry__1_i_2_n_0\,
      S(1) => \gray_sum_carry__1_i_3_n_0\,
      S(0) => \gray_sum_carry__1_i_4_n_0\
    );
\gray_sum_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(11),
      I1 => red_weighted(11),
      O => \gray_sum_carry__1_i_1_n_0\
    );
\gray_sum_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(10),
      I1 => red_weighted(10),
      O => \gray_sum_carry__1_i_2_n_0\
    );
\gray_sum_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(9),
      I1 => red_weighted(9),
      O => \gray_sum_carry__1_i_3_n_0\
    );
\gray_sum_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(8),
      I1 => red_weighted(8),
      O => \gray_sum_carry__1_i_4_n_0\
    );
\gray_sum_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gray_sum_carry__1_n_0\,
      CO(3) => \gray_sum_carry__2_n_0\,
      CO(2) => \NLW_gray_sum_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \gray_sum_carry__2_n_2\,
      CO(0) => \gray_sum_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => blue_weighted(12),
      O(3) => \NLW_gray_sum_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => C(14 downto 12),
      S(3) => '1',
      S(2 downto 1) => red_weighted(14 downto 13),
      S(0) => \gray_sum_carry__2_i_2_n_0\
    );
\gray_sum_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \red_weighted__25_carry__1_n_0\,
      CO(3 downto 1) => \NLW_gray_sum_carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => red_weighted(14),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gray_sum_carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\gray_sum_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(12),
      I1 => red_weighted(12),
      O => \gray_sum_carry__2_i_2_n_0\
    );
gray_sum_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(3),
      I1 => red_weighted(3),
      O => gray_sum_carry_i_1_n_0
    );
gray_sum_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(2),
      I1 => red_weighted(2),
      O => gray_sum_carry_i_2_n_0
    );
gray_sum_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => blue_weighted(1),
      I1 => red_weighted(1),
      O => gray_sum_carry_i_3_n_0
    );
gray_sum_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => s_axis_video_tdata(16),
      O => gray_sum_carry_i_4_n_0
    );
\green_weighted__27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \green_weighted__27_carry_n_0\,
      CO(2) => \green_weighted__27_carry_n_1\,
      CO(1) => \green_weighted__27_carry_n_2\,
      CO(0) => \green_weighted__27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \green_weighted_carry__0_n_6\,
      DI(2) => \green_weighted_carry__0_n_7\,
      DI(1) => green_weighted_carry_n_4,
      DI(0) => '0',
      O(3 downto 0) => green_weighted(6 downto 3),
      S(3) => \green_weighted__27_carry_i_1_n_0\,
      S(2) => \green_weighted__27_carry_i_2_n_0\,
      S(1) => \green_weighted__27_carry_i_3_n_0\,
      S(0) => green_weighted_carry_n_5
    );
\green_weighted__27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \green_weighted__27_carry_n_0\,
      CO(3) => \green_weighted__27_carry__0_n_0\,
      CO(2) => \green_weighted__27_carry__0_n_1\,
      CO(1) => \green_weighted__27_carry__0_n_2\,
      CO(0) => \green_weighted__27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \green_weighted__27_carry__0_i_1_n_0\,
      DI(2) => \green_weighted__27_carry__0_i_2_n_0\,
      DI(1) => \green_weighted__27_carry__0_i_3_n_0\,
      DI(0) => s_axis_video_tdata(0),
      O(3 downto 0) => green_weighted(10 downto 7),
      S(3) => \green_weighted__27_carry__0_i_4_n_0\,
      S(2) => \green_weighted__27_carry__0_i_5_n_0\,
      S(1) => \green_weighted__27_carry__0_i_6_n_0\,
      S(0) => \green_weighted__27_carry__0_i_7_n_0\
    );
\green_weighted__27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \green_weighted_carry__1_n_7\,
      I2 => s_axis_video_tdata(2),
      O => \green_weighted__27_carry__0_i_1_n_0\
    );
\green_weighted__27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => \green_weighted_carry__0_n_4\,
      I2 => s_axis_video_tdata(1),
      O => \green_weighted__27_carry__0_i_2_n_0\
    );
\green_weighted__27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(4),
      I2 => \green_weighted_carry__0_n_4\,
      O => \green_weighted__27_carry__0_i_3_n_0\
    );
\green_weighted__27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \green_weighted_carry__1_n_6\,
      I2 => s_axis_video_tdata(3),
      I3 => \green_weighted__27_carry__0_i_1_n_0\,
      O => \green_weighted__27_carry__0_i_4_n_0\
    );
\green_weighted__27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \green_weighted_carry__1_n_7\,
      I2 => s_axis_video_tdata(2),
      I3 => \green_weighted__27_carry__0_i_2_n_0\,
      O => \green_weighted__27_carry__0_i_5_n_0\
    );
\green_weighted__27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => \green_weighted_carry__0_n_4\,
      I2 => s_axis_video_tdata(1),
      I3 => \green_weighted_carry__0_n_5\,
      I4 => s_axis_video_tdata(3),
      O => \green_weighted__27_carry__0_i_6_n_0\
    );
\green_weighted__27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => \green_weighted_carry__0_n_5\,
      I2 => s_axis_video_tdata(0),
      O => \green_weighted__27_carry__0_i_7_n_0\
    );
\green_weighted__27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \green_weighted__27_carry__0_n_0\,
      CO(3) => \green_weighted__27_carry__1_n_0\,
      CO(2) => \green_weighted__27_carry__1_n_1\,
      CO(1) => \green_weighted__27_carry__1_n_2\,
      CO(0) => \green_weighted__27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \green_weighted__27_carry__1_i_1_n_0\,
      DI(2) => \green_weighted__27_carry__1_i_2_n_0\,
      DI(1) => \green_weighted__27_carry__1_i_3_n_0\,
      DI(0) => \green_weighted__27_carry__1_i_4_n_0\,
      O(3 downto 0) => green_weighted(14 downto 11),
      S(3) => \green_weighted__27_carry__1_i_5_n_0\,
      S(2) => \green_weighted__27_carry__1_i_6_n_0\,
      S(1) => \green_weighted__27_carry__1_i_7_n_0\,
      S(0) => \green_weighted__27_carry__1_i_8_n_0\
    );
\green_weighted__27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \green_weighted_carry__1_n_1\,
      O => \green_weighted__27_carry__1_i_1_n_0\
    );
\green_weighted__27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \green_weighted_carry__1_n_1\,
      O => \green_weighted__27_carry__1_i_2_n_0\
    );
\green_weighted__27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => \green_weighted_carry__1_n_1\,
      I2 => s_axis_video_tdata(4),
      O => \green_weighted__27_carry__1_i_3_n_0\
    );
\green_weighted__27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \green_weighted_carry__1_n_6\,
      I2 => s_axis_video_tdata(3),
      O => \green_weighted__27_carry__1_i_4_n_0\
    );
\green_weighted__27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      I1 => \green_weighted_carry__1_n_1\,
      I2 => s_axis_video_tdata(7),
      O => \green_weighted__27_carry__1_i_5_n_0\
    );
\green_weighted__27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => \green_weighted_carry__1_n_1\,
      I2 => s_axis_video_tdata(6),
      O => \green_weighted__27_carry__1_i_6_n_0\
    );
\green_weighted__27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(7),
      I2 => \green_weighted_carry__1_n_1\,
      I3 => s_axis_video_tdata(5),
      O => \green_weighted__27_carry__1_i_7_n_0\
    );
\green_weighted__27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \green_weighted__27_carry__1_i_4_n_0\,
      I1 => \green_weighted_carry__1_n_1\,
      I2 => s_axis_video_tdata(7),
      I3 => s_axis_video_tdata(4),
      O => \green_weighted__27_carry__1_i_8_n_0\
    );
\green_weighted__27_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \green_weighted__27_carry__1_n_0\,
      CO(3 downto 0) => \NLW_green_weighted__27_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_green_weighted__27_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => green_weighted(15),
      S(3 downto 1) => B"000",
      S(0) => \green_weighted__27_carry__2_i_1_n_0\
    );
\green_weighted__27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      I1 => \green_weighted_carry__1_n_1\,
      O => \green_weighted__27_carry__2_i_1_n_0\
    );
\green_weighted__27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \green_weighted_carry__0_n_6\,
      I1 => s_axis_video_tdata(2),
      O => \green_weighted__27_carry_i_1_n_0\
    );
\green_weighted__27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \green_weighted_carry__0_n_7\,
      I1 => s_axis_video_tdata(1),
      O => \green_weighted__27_carry_i_2_n_0\
    );
\green_weighted__27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => green_weighted_carry_n_4,
      I1 => s_axis_video_tdata(0),
      O => \green_weighted__27_carry_i_3_n_0\
    );
green_weighted_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => green_weighted_carry_n_0,
      CO(2) => green_weighted_carry_n_1,
      CO(1) => green_weighted_carry_n_2,
      CO(0) => green_weighted_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => s_axis_video_tdata(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => green_weighted_carry_n_4,
      O(2) => green_weighted_carry_n_5,
      O(1 downto 0) => green_weighted(2 downto 1),
      S(3) => green_weighted_carry_i_1_n_0,
      S(2) => green_weighted_carry_i_2_n_0,
      S(1) => green_weighted_carry_i_3_n_0,
      S(0) => s_axis_video_tdata(0)
    );
\green_weighted_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => green_weighted_carry_n_0,
      CO(3) => \green_weighted_carry__0_n_0\,
      CO(2) => \green_weighted_carry__0_n_1\,
      CO(1) => \green_weighted_carry__0_n_2\,
      CO(0) => \green_weighted_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => s_axis_video_tdata(5 downto 2),
      O(3) => \green_weighted_carry__0_n_4\,
      O(2) => \green_weighted_carry__0_n_5\,
      O(1) => \green_weighted_carry__0_n_6\,
      O(0) => \green_weighted_carry__0_n_7\,
      S(3) => \green_weighted_carry__0_i_1_n_0\,
      S(2) => \green_weighted_carry__0_i_2_n_0\,
      S(1) => \green_weighted_carry__0_i_3_n_0\,
      S(0) => \green_weighted_carry__0_i_4_n_0\
    );
\green_weighted_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_video_tdata(5),
      I1 => s_axis_video_tdata(7),
      O => \green_weighted_carry__0_i_1_n_0\
    );
\green_weighted_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_video_tdata(4),
      I1 => s_axis_video_tdata(6),
      O => \green_weighted_carry__0_i_2_n_0\
    );
\green_weighted_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_video_tdata(3),
      I1 => s_axis_video_tdata(5),
      O => \green_weighted_carry__0_i_3_n_0\
    );
\green_weighted_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_video_tdata(2),
      I1 => s_axis_video_tdata(4),
      O => \green_weighted_carry__0_i_4_n_0\
    );
\green_weighted_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \green_weighted_carry__0_n_0\,
      CO(3) => \NLW_green_weighted_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \green_weighted_carry__1_n_1\,
      CO(1) => \NLW_green_weighted_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \green_weighted_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => s_axis_video_tdata(7 downto 6),
      O(3 downto 2) => \NLW_green_weighted_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \green_weighted_carry__1_n_6\,
      O(0) => \green_weighted_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \green_weighted_carry__1_i_1_n_0\,
      S(0) => \green_weighted_carry__1_i_2_n_0\
    );
\green_weighted_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_video_tdata(7),
      O => \green_weighted_carry__1_i_1_n_0\
    );
\green_weighted_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_video_tdata(6),
      O => \green_weighted_carry__1_i_2_n_0\
    );
green_weighted_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      I1 => s_axis_video_tdata(3),
      O => green_weighted_carry_i_1_n_0
    );
green_weighted_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_video_tdata(0),
      I1 => s_axis_video_tdata(2),
      O => green_weighted_carry_i_2_n_0
    );
green_weighted_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_video_tdata(1),
      O => green_weighted_carry_i_3_n_0
    );
\m_axis_video_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\m_axis_video_tdata[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^m_axis_video_tvalid_reg_0\,
      I1 => m_axis_video_tready,
      I2 => s_axis_video_tvalid,
      O => \m_axis_video_tdata[23]_i_2_n_0\
    );
\m_axis_video_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(8),
      Q => m_axis_video_tdata(0),
      R => p_0_in
    );
\m_axis_video_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(9),
      Q => m_axis_video_tdata(1),
      R => p_0_in
    );
\m_axis_video_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(10),
      Q => m_axis_video_tdata(2),
      R => p_0_in
    );
\m_axis_video_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(11),
      Q => m_axis_video_tdata(3),
      R => p_0_in
    );
\m_axis_video_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(12),
      Q => m_axis_video_tdata(4),
      R => p_0_in
    );
\m_axis_video_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(13),
      Q => m_axis_video_tdata(5),
      R => p_0_in
    );
\m_axis_video_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(14),
      Q => m_axis_video_tdata(6),
      R => p_0_in
    );
\m_axis_video_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => gray_sum(15),
      Q => m_axis_video_tdata(7),
      R => p_0_in
    );
m_axis_video_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tlast,
      Q => m_axis_video_tlast,
      R => p_0_in
    );
m_axis_video_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tuser,
      Q => m_axis_video_tuser,
      R => p_0_in
    );
m_axis_video_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \^m_axis_video_tvalid_reg_0\,
      I1 => m_axis_video_tready,
      I2 => s_axis_video_tvalid,
      I3 => aresetn,
      O => m_axis_video_tvalid_i_1_n_0
    );
m_axis_video_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_video_tvalid_i_1_n_0,
      Q => \^m_axis_video_tvalid_reg_0\,
      R => '0'
    );
\red_weighted__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \red_weighted__25_carry_n_0\,
      CO(2) => \red_weighted__25_carry_n_1\,
      CO(1) => \red_weighted__25_carry_n_2\,
      CO(0) => \red_weighted__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \red_weighted_carry__0_n_7\,
      DI(2) => red_weighted_carry_n_4,
      DI(1) => red_weighted_carry_n_5,
      DI(0) => '0',
      O(3 downto 0) => red_weighted(5 downto 2),
      S(3) => \red_weighted__25_carry_i_1_n_0\,
      S(2) => \red_weighted__25_carry_i_2_n_0\,
      S(1) => \red_weighted__25_carry_i_3_n_0\,
      S(0) => red_weighted_carry_n_6
    );
\red_weighted__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \red_weighted__25_carry_n_0\,
      CO(3) => \red_weighted__25_carry__0_n_0\,
      CO(2) => \red_weighted__25_carry__0_n_1\,
      CO(1) => \red_weighted__25_carry__0_n_2\,
      CO(0) => \red_weighted__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \red_weighted__25_carry__0_i_1_n_0\,
      DI(2) => \red_weighted__25_carry__0_i_2_n_0\,
      DI(1) => \red_weighted__25_carry__0_i_3_n_0\,
      DI(0) => s_axis_video_tdata(16),
      O(3 downto 0) => red_weighted(9 downto 6),
      S(3) => \red_weighted__25_carry__0_i_4_n_0\,
      S(2) => \red_weighted__25_carry__0_i_5_n_0\,
      S(1) => \red_weighted__25_carry__0_i_6_n_0\,
      S(0) => \red_weighted__25_carry__0_i_7_n_0\
    );
\red_weighted__25_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_video_tdata(21),
      I1 => \red_weighted_carry__0_n_4\,
      I2 => s_axis_video_tdata(18),
      O => \red_weighted__25_carry__0_i_1_n_0\
    );
\red_weighted__25_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_video_tdata(20),
      I1 => \red_weighted_carry__0_n_5\,
      I2 => s_axis_video_tdata(17),
      O => \red_weighted__25_carry__0_i_2_n_0\
    );
\red_weighted__25_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_video_tdata(17),
      I1 => s_axis_video_tdata(20),
      I2 => \red_weighted_carry__0_n_5\,
      O => \red_weighted__25_carry__0_i_3_n_0\
    );
\red_weighted__25_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_video_tdata(22),
      I1 => \red_weighted_carry__1_n_7\,
      I2 => s_axis_video_tdata(19),
      I3 => \red_weighted__25_carry__0_i_1_n_0\,
      O => \red_weighted__25_carry__0_i_4_n_0\
    );
\red_weighted__25_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_axis_video_tdata(21),
      I1 => \red_weighted_carry__0_n_4\,
      I2 => s_axis_video_tdata(18),
      I3 => \red_weighted__25_carry__0_i_2_n_0\,
      O => \red_weighted__25_carry__0_i_5_n_0\
    );
\red_weighted__25_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => s_axis_video_tdata(20),
      I1 => \red_weighted_carry__0_n_5\,
      I2 => s_axis_video_tdata(17),
      I3 => \red_weighted_carry__0_n_6\,
      I4 => s_axis_video_tdata(19),
      O => \red_weighted__25_carry__0_i_6_n_0\
    );
\red_weighted__25_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_video_tdata(19),
      I1 => \red_weighted_carry__0_n_6\,
      I2 => s_axis_video_tdata(16),
      O => \red_weighted__25_carry__0_i_7_n_0\
    );
\red_weighted__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \red_weighted__25_carry__0_n_0\,
      CO(3) => \red_weighted__25_carry__1_n_0\,
      CO(2) => \red_weighted__25_carry__1_n_1\,
      CO(1) => \red_weighted__25_carry__1_n_2\,
      CO(0) => \red_weighted__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => s_axis_video_tdata(21),
      DI(0) => \red_weighted__25_carry__1_i_1_n_0\,
      O(3 downto 0) => red_weighted(13 downto 10),
      S(3 downto 2) => s_axis_video_tdata(23 downto 22),
      S(1) => \red_weighted__25_carry__1_i_2_n_0\,
      S(0) => \red_weighted__25_carry__1_i_3_n_0\
    );
\red_weighted__25_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => s_axis_video_tdata(22),
      I1 => \red_weighted_carry__1_n_7\,
      I2 => s_axis_video_tdata(19),
      O => \red_weighted__25_carry__1_i_1_n_0\
    );
\red_weighted__25_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => s_axis_video_tdata(20),
      I1 => \red_weighted_carry__1_n_2\,
      I2 => s_axis_video_tdata(23),
      I3 => s_axis_video_tdata(21),
      O => \red_weighted__25_carry__1_i_2_n_0\
    );
\red_weighted__25_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \red_weighted__25_carry__1_i_1_n_0\,
      I1 => \red_weighted_carry__1_n_2\,
      I2 => s_axis_video_tdata(23),
      I3 => s_axis_video_tdata(20),
      O => \red_weighted__25_carry__1_i_3_n_0\
    );
\red_weighted__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \red_weighted_carry__0_n_7\,
      I1 => s_axis_video_tdata(18),
      O => \red_weighted__25_carry_i_1_n_0\
    );
\red_weighted__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => red_weighted_carry_n_4,
      I1 => s_axis_video_tdata(17),
      O => \red_weighted__25_carry_i_2_n_0\
    );
\red_weighted__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => red_weighted_carry_n_5,
      I1 => s_axis_video_tdata(16),
      O => \red_weighted__25_carry_i_3_n_0\
    );
red_weighted_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => red_weighted_carry_n_0,
      CO(2) => red_weighted_carry_n_1,
      CO(1) => red_weighted_carry_n_2,
      CO(0) => red_weighted_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => s_axis_video_tdata(20 downto 18),
      DI(0) => '0',
      O(3) => red_weighted_carry_n_4,
      O(2) => red_weighted_carry_n_5,
      O(1) => red_weighted_carry_n_6,
      O(0) => red_weighted(1),
      S(3) => red_weighted_carry_i_1_n_0,
      S(2) => red_weighted_carry_i_2_n_0,
      S(1) => red_weighted_carry_i_3_n_0,
      S(0) => s_axis_video_tdata(17)
    );
\red_weighted_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => red_weighted_carry_n_0,
      CO(3) => \red_weighted_carry__0_n_0\,
      CO(2) => \red_weighted_carry__0_n_1\,
      CO(1) => \red_weighted_carry__0_n_2\,
      CO(0) => \red_weighted_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_video_tdata(23 downto 21),
      O(3) => \red_weighted_carry__0_n_4\,
      O(2) => \red_weighted_carry__0_n_5\,
      O(1) => \red_weighted_carry__0_n_6\,
      O(0) => \red_weighted_carry__0_n_7\,
      S(3) => s_axis_video_tdata(22),
      S(2) => \red_weighted_carry__0_i_1_n_0\,
      S(1) => \red_weighted_carry__0_i_2_n_0\,
      S(0) => \red_weighted_carry__0_i_3_n_0\
    );
\red_weighted_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(23),
      I1 => s_axis_video_tdata(21),
      O => \red_weighted_carry__0_i_1_n_0\
    );
\red_weighted_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(22),
      I1 => s_axis_video_tdata(20),
      O => \red_weighted_carry__0_i_2_n_0\
    );
\red_weighted_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(21),
      I1 => s_axis_video_tdata(19),
      O => \red_weighted_carry__0_i_3_n_0\
    );
\red_weighted_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \red_weighted_carry__0_n_0\,
      CO(3 downto 2) => \NLW_red_weighted_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \red_weighted_carry__1_n_2\,
      CO(0) => \NLW_red_weighted_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_red_weighted_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \red_weighted_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => s_axis_video_tdata(23)
    );
red_weighted_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(20),
      I1 => s_axis_video_tdata(18),
      O => red_weighted_carry_i_1_n_0
    );
red_weighted_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(19),
      I1 => s_axis_video_tdata(17),
      O => red_weighted_carry_i_2_n_0
    );
red_weighted_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_video_tdata(18),
      I1 => s_axis_video_tdata(16),
      O => red_weighted_carry_i_3_n_0
    );
s_axis_video_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => \^m_axis_video_tvalid_reg_0\,
      O => s_axis_video_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axis_grayscale_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axis_grayscale_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axis_grayscale_0_0 : entity is "system_axis_grayscale_0_0,axis_grayscale,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_axis_grayscale_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_axis_grayscale_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_axis_grayscale_0_0 : entity is "axis_grayscale,Vivado 2020.2";
end system_axis_grayscale_0_0;

architecture STRUCTURE of system_axis_grayscale_0_0 is
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_video:s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  attribute x_interface_info of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  attribute x_interface_info of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  attribute x_interface_info of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  attribute x_interface_info of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_video TLAST";
  attribute x_interface_info of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_video TREADY";
  attribute x_interface_info of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_video TUSER";
  attribute x_interface_info of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_video TVALID";
  attribute x_interface_info of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  attribute x_interface_parameter of m_axis_video_tdata : signal is "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDATA";
  attribute x_interface_parameter of s_axis_video_tdata : signal is "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  m_axis_video_tdata(23 downto 16) <= \^m_axis_video_tdata\(15 downto 8);
  m_axis_video_tdata(15 downto 8) <= \^m_axis_video_tdata\(15 downto 8);
  m_axis_video_tdata(7 downto 0) <= \^m_axis_video_tdata\(15 downto 8);
U0: entity work.system_axis_grayscale_0_0_axis_grayscale
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_video_tdata(7 downto 0) => \^m_axis_video_tdata\(15 downto 8),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tvalid_reg_0 => m_axis_video_tvalid,
      s_axis_video_tdata(23 downto 0) => s_axis_video_tdata(23 downto 0),
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
end STRUCTURE;
