-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Jul 30 17:50:11 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_resize_128x128_0_1/system_axis_resize_128x128_0_1_sim_netlist.vhdl
-- Design      : system_axis_resize_128x128_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axis_resize_128x128_0_1_axis_resize_128x128 is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid_reg_0 : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tready : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axis_resize_128x128_0_1_axis_resize_128x128 : entity is "axis_resize_128x128";
end system_axis_resize_128x128_0_1_axis_resize_128x128;

architecture STRUCTURE of system_axis_resize_128x128_0_1_axis_resize_128x128 is
  signal \horizontal_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \horizontal_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \horizontal_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \horizontal_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \horizontal_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \horizontal_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \horizontal_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \horizontal_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \horizontal_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \horizontal_count_reg_n_0_[3]\ : STD_LOGIC;
  signal input_y : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \input_y[10]_i_1_n_0\ : STD_LOGIC;
  signal \input_y[10]_i_3_n_0\ : STD_LOGIC;
  signal \input_y[10]_i_4_n_0\ : STD_LOGIC;
  signal \input_y[10]_i_5_n_0\ : STD_LOGIC;
  signal \input_y[6]_i_2_n_0\ : STD_LOGIC;
  signal input_y_0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \m_axis_video_tdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_video_tdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \^m_axis_video_tlast\ : STD_LOGIC;
  signal m_axis_video_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_video_tlast_i_2_n_0 : STD_LOGIC;
  signal \^m_axis_video_tuser\ : STD_LOGIC;
  signal m_axis_video_tuser0 : STD_LOGIC;
  signal m_axis_video_tuser_i_1_n_0 : STD_LOGIC;
  signal m_axis_video_tuser_i_3_n_0 : STD_LOGIC;
  signal m_axis_video_tuser_i_4_n_0 : STD_LOGIC;
  signal m_axis_video_tvalid_i_1_n_0 : STD_LOGIC;
  signal m_axis_video_tvalid_i_2_n_0 : STD_LOGIC;
  signal \^m_axis_video_tvalid_reg_0\ : STD_LOGIC;
  signal next_sample_y : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \next_sample_y[10]_i_4_n_0\ : STD_LOGIC;
  signal \next_sample_y[2]_i_3_n_0\ : STD_LOGIC;
  signal \next_sample_y[2]_i_4_n_0\ : STD_LOGIC;
  signal \next_sample_y[2]_i_5_n_0\ : STD_LOGIC;
  signal \next_sample_y[6]_i_2_n_0\ : STD_LOGIC;
  signal \next_sample_y_reg[10]_i_3_n_1\ : STD_LOGIC;
  signal \next_sample_y_reg[10]_i_3_n_2\ : STD_LOGIC;
  signal \next_sample_y_reg[10]_i_3_n_3\ : STD_LOGIC;
  signal \next_sample_y_reg[10]_i_3_n_4\ : STD_LOGIC;
  signal \next_sample_y_reg[10]_i_3_n_5\ : STD_LOGIC;
  signal \next_sample_y_reg[10]_i_3_n_6\ : STD_LOGIC;
  signal \next_sample_y_reg[10]_i_3_n_7\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_1_n_1\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_1_n_4\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_1_n_5\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \next_sample_y_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \next_sample_y_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal output_x : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \output_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_x[6]_i_2_n_0\ : STD_LOGIC;
  signal \output_x_reg_n_0_[0]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[1]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[2]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[3]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[4]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[5]\ : STD_LOGIC;
  signal \output_x_reg_n_0_[6]\ : STD_LOGIC;
  signal output_y : STD_LOGIC;
  signal \output_y[2]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[3]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[5]_i_1_n_0\ : STD_LOGIC;
  signal \output_y[6]_i_1_n_0\ : STD_LOGIC;
  signal output_y_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal selected_line0 : STD_LOGIC;
  signal selected_line0_carry_i_1_n_0 : STD_LOGIC;
  signal selected_line0_carry_i_2_n_0 : STD_LOGIC;
  signal selected_line0_carry_i_3_n_0 : STD_LOGIC;
  signal selected_line0_carry_i_4_n_0 : STD_LOGIC;
  signal selected_line0_carry_n_1 : STD_LOGIC;
  signal selected_line0_carry_n_2 : STD_LOGIC;
  signal selected_line0_carry_n_3 : STD_LOGIC;
  signal vertical_accumulator : STD_LOGIC;
  signal \vertical_accumulator[3]_i_2_n_0\ : STD_LOGIC;
  signal \vertical_accumulator[3]_i_3_n_0\ : STD_LOGIC;
  signal \vertical_accumulator[3]_i_4_n_0\ : STD_LOGIC;
  signal \vertical_accumulator[7]_i_2_n_0\ : STD_LOGIC;
  signal vertical_accumulator_reg : STD_LOGIC_VECTOR ( 17 downto 3 );
  signal \vertical_accumulator_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \vertical_accumulator_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \vertical_accumulator_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \vertical_accumulator_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \vertical_accumulator_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \vertical_accumulator_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \vertical_accumulator_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \vertical_accumulator_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \vertical_accumulator_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \vertical_accumulator_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \vertical_accumulator_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \vertical_accumulator_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \vertical_accumulator_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \vertical_accumulator_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \vertical_accumulator_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_next_sample_y_reg[10]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_sample_y_reg[2]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_next_sample_y_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_selected_line0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vertical_accumulator_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_vertical_accumulator_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \horizontal_count[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \input_y[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \input_y[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \input_y[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \input_y[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \input_y[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \input_y[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[23]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[23]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axis_video_tlast_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of m_axis_video_tuser_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_axis_video_tvalid_i_1 : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \next_sample_y_reg[10]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \next_sample_y_reg[2]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_sample_y_reg[2]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \next_sample_y_reg[6]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \output_x[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \output_x[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \output_x[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \output_x[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \output_y[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \output_y[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \output_y[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \output_y[4]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \vertical_accumulator_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \vertical_accumulator_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \vertical_accumulator_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \vertical_accumulator_reg[7]_i_1\ : label is 11;
begin
  m_axis_video_tlast <= \^m_axis_video_tlast\;
  m_axis_video_tuser <= \^m_axis_video_tuser\;
  m_axis_video_tvalid_reg_0 <= \^m_axis_video_tvalid_reg_0\;
\horizontal_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF000F2"
    )
        port map (
      I0 => \horizontal_count[0]_i_2_n_0\,
      I1 => s_axis_video_tlast,
      I2 => s_axis_video_tuser,
      I3 => \m_axis_video_tdata[23]_i_4_n_0\,
      I4 => \horizontal_count_reg_n_0_[0]\,
      O => \horizontal_count[0]_i_1_n_0\
    );
\horizontal_count[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \horizontal_count_reg_n_0_[2]\,
      I1 => \horizontal_count_reg_n_0_[1]\,
      I2 => \horizontal_count_reg_n_0_[3]\,
      O => \horizontal_count[0]_i_2_n_0\
    );
\horizontal_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000989A9A9A"
    )
        port map (
      I0 => \horizontal_count_reg_n_0_[1]\,
      I1 => \m_axis_video_tdata[23]_i_4_n_0\,
      I2 => \horizontal_count_reg_n_0_[0]\,
      I3 => \horizontal_count_reg_n_0_[3]\,
      I4 => \horizontal_count_reg_n_0_[2]\,
      I5 => \horizontal_count[3]_i_2_n_0\,
      O => \horizontal_count[1]_i_1_n_0\
    );
\horizontal_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009A8A9AAA"
    )
        port map (
      I0 => \horizontal_count_reg_n_0_[2]\,
      I1 => \m_axis_video_tdata[23]_i_4_n_0\,
      I2 => \horizontal_count_reg_n_0_[1]\,
      I3 => \horizontal_count_reg_n_0_[0]\,
      I4 => \horizontal_count_reg_n_0_[3]\,
      I5 => \horizontal_count[3]_i_2_n_0\,
      O => \horizontal_count[2]_i_1_n_0\
    );
\horizontal_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009AAA8AAA"
    )
        port map (
      I0 => \horizontal_count_reg_n_0_[3]\,
      I1 => \m_axis_video_tdata[23]_i_4_n_0\,
      I2 => \horizontal_count_reg_n_0_[1]\,
      I3 => \horizontal_count_reg_n_0_[2]\,
      I4 => \horizontal_count_reg_n_0_[0]\,
      I5 => \horizontal_count[3]_i_2_n_0\,
      O => \horizontal_count[3]_i_1_n_0\
    );
\horizontal_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F333F3F3B333B3B3"
    )
        port map (
      I0 => s_axis_video_tlast,
      I1 => aresetn,
      I2 => s_axis_video_tvalid,
      I3 => m_axis_video_tready,
      I4 => \^m_axis_video_tvalid_reg_0\,
      I5 => s_axis_video_tuser,
      O => \horizontal_count[3]_i_2_n_0\
    );
\horizontal_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \horizontal_count[0]_i_1_n_0\,
      Q => \horizontal_count_reg_n_0_[0]\,
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\horizontal_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \horizontal_count[1]_i_1_n_0\,
      Q => \horizontal_count_reg_n_0_[1]\,
      R => '0'
    );
\horizontal_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \horizontal_count[2]_i_1_n_0\,
      Q => \horizontal_count_reg_n_0_[2]\,
      R => '0'
    );
\horizontal_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \horizontal_count[3]_i_1_n_0\,
      Q => \horizontal_count_reg_n_0_[3]\,
      R => '0'
    );
\input_y[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => input_y(0),
      O => input_y_0(0)
    );
\input_y[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => s_axis_video_tlast,
      I1 => s_axis_video_tvalid,
      I2 => m_axis_video_tready,
      I3 => \^m_axis_video_tvalid_reg_0\,
      O => \input_y[10]_i_1_n_0\
    );
\input_y[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(10),
      I2 => input_y(7),
      I3 => input_y(8),
      I4 => input_y(9),
      I5 => \input_y[10]_i_4_n_0\,
      O => input_y_0(10)
    );
\input_y[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \input_y[10]_i_5_n_0\,
      I1 => input_y(5),
      I2 => input_y(2),
      I3 => input_y(0),
      I4 => input_y(1),
      I5 => input_y(4),
      O => \input_y[10]_i_3_n_0\
    );
\input_y[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => input_y(4),
      I1 => \input_y[6]_i_2_n_0\,
      I2 => input_y(5),
      I3 => input_y(3),
      I4 => input_y(6),
      O => \input_y[10]_i_4_n_0\
    );
\input_y[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => input_y(9),
      I1 => input_y(10),
      I2 => input_y(7),
      I3 => input_y(8),
      I4 => input_y(6),
      I5 => input_y(3),
      O => \input_y[10]_i_5_n_0\
    );
\input_y[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(1),
      I2 => input_y(0),
      O => input_y_0(1)
    );
\input_y[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(2),
      I2 => input_y(0),
      I3 => input_y(1),
      O => input_y_0(2)
    );
\input_y[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(3),
      I2 => input_y(1),
      I3 => input_y(0),
      I4 => input_y(2),
      O => input_y_0(3)
    );
\input_y[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(4),
      I2 => input_y(3),
      I3 => input_y(2),
      I4 => input_y(0),
      I5 => input_y(1),
      O => input_y_0(4)
    );
\input_y[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88882888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(5),
      I2 => input_y(3),
      I3 => input_y(4),
      I4 => \input_y[6]_i_2_n_0\,
      O => input_y_0(5)
    );
\input_y[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888288888888888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(6),
      I2 => input_y(3),
      I3 => input_y(5),
      I4 => \input_y[6]_i_2_n_0\,
      I5 => input_y(4),
      O => input_y_0(6)
    );
\input_y[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => input_y(1),
      I1 => input_y(0),
      I2 => input_y(2),
      O => \input_y[6]_i_2_n_0\
    );
\input_y[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(7),
      I2 => \input_y[10]_i_4_n_0\,
      O => input_y_0(7)
    );
\input_y[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(8),
      I2 => \input_y[10]_i_4_n_0\,
      I3 => input_y(7),
      O => input_y_0(8)
    );
\input_y[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \input_y[10]_i_3_n_0\,
      I1 => input_y(9),
      I2 => input_y(8),
      I3 => input_y(7),
      I4 => \input_y[10]_i_4_n_0\,
      O => input_y_0(9)
    );
\input_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(0),
      Q => input_y(0),
      R => vertical_accumulator
    );
\input_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(10),
      Q => input_y(10),
      R => vertical_accumulator
    );
\input_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(1),
      Q => input_y(1),
      R => vertical_accumulator
    );
\input_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(2),
      Q => input_y(2),
      R => vertical_accumulator
    );
\input_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(3),
      Q => input_y(3),
      R => vertical_accumulator
    );
\input_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(4),
      Q => input_y(4),
      R => vertical_accumulator
    );
\input_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(5),
      Q => input_y(5),
      R => vertical_accumulator
    );
\input_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(6),
      Q => input_y(6),
      R => vertical_accumulator
    );
\input_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(7),
      Q => input_y(7),
      R => vertical_accumulator
    );
\input_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(8),
      Q => input_y(8),
      R => vertical_accumulator
    );
\input_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \input_y[10]_i_1_n_0\,
      D => input_y_0(9),
      Q => input_y(9),
      R => vertical_accumulator
    );
\m_axis_video_tdata[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AEAA"
    )
        port map (
      I0 => s_axis_video_tuser,
      I1 => \m_axis_video_tdata[23]_i_3_n_0\,
      I2 => \horizontal_count_reg_n_0_[3]\,
      I3 => selected_line0,
      I4 => \m_axis_video_tdata[23]_i_4_n_0\,
      O => \m_axis_video_tdata[23]_i_2_n_0\
    );
\m_axis_video_tdata[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \horizontal_count_reg_n_0_[2]\,
      I1 => \horizontal_count_reg_n_0_[1]\,
      I2 => \horizontal_count_reg_n_0_[0]\,
      O => \m_axis_video_tdata[23]_i_3_n_0\
    );
\m_axis_video_tdata[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \^m_axis_video_tvalid_reg_0\,
      I1 => m_axis_video_tready,
      I2 => s_axis_video_tvalid,
      O => \m_axis_video_tdata[23]_i_4_n_0\
    );
\m_axis_video_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(0),
      Q => m_axis_video_tdata(0),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(10),
      Q => m_axis_video_tdata(10),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(11),
      Q => m_axis_video_tdata(11),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(12),
      Q => m_axis_video_tdata(12),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(13),
      Q => m_axis_video_tdata(13),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(14),
      Q => m_axis_video_tdata(14),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(15),
      Q => m_axis_video_tdata(15),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(16),
      Q => m_axis_video_tdata(16),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(17),
      Q => m_axis_video_tdata(17),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(18),
      Q => m_axis_video_tdata(18),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(19),
      Q => m_axis_video_tdata(19),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(1),
      Q => m_axis_video_tdata(1),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(20),
      Q => m_axis_video_tdata(20),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(21),
      Q => m_axis_video_tdata(21),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(22),
      Q => m_axis_video_tdata(22),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(23),
      Q => m_axis_video_tdata(23),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(2),
      Q => m_axis_video_tdata(2),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(3),
      Q => m_axis_video_tdata(3),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(4),
      Q => m_axis_video_tdata(4),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(5),
      Q => m_axis_video_tdata(5),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(6),
      Q => m_axis_video_tdata(6),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(7),
      Q => m_axis_video_tdata(7),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(8),
      Q => m_axis_video_tdata(8),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\m_axis_video_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => s_axis_video_tdata(9),
      Q => m_axis_video_tdata(9),
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
m_axis_video_tlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \^m_axis_video_tlast\,
      I1 => \m_axis_video_tdata[23]_i_2_n_0\,
      I2 => m_axis_video_tlast_i_2_n_0,
      I3 => vertical_accumulator,
      O => m_axis_video_tlast_i_1_n_0
    );
m_axis_video_tlast_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \output_x[6]_i_2_n_0\,
      I1 => \output_x_reg_n_0_[6]\,
      O => m_axis_video_tlast_i_2_n_0
    );
m_axis_video_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_video_tlast_i_1_n_0,
      Q => \^m_axis_video_tlast\,
      R => '0'
    );
m_axis_video_tuser_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB88F8"
    )
        port map (
      I0 => m_axis_video_tuser0,
      I1 => \m_axis_video_tdata[23]_i_2_n_0\,
      I2 => s_axis_video_tuser,
      I3 => \m_axis_video_tdata[23]_i_4_n_0\,
      I4 => \^m_axis_video_tuser\,
      O => m_axis_video_tuser_i_1_n_0
    );
m_axis_video_tuser_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => m_axis_video_tuser_i_3_n_0,
      I1 => \output_x_reg_n_0_[0]\,
      I2 => \output_x_reg_n_0_[1]\,
      I3 => m_axis_video_tuser_i_4_n_0,
      O => m_axis_video_tuser0
    );
m_axis_video_tuser_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => output_y_reg(3),
      I1 => output_y_reg(4),
      I2 => output_y_reg(1),
      I3 => output_y_reg(2),
      I4 => output_y_reg(6),
      I5 => output_y_reg(5),
      O => m_axis_video_tuser_i_3_n_0
    );
m_axis_video_tuser_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \output_x_reg_n_0_[4]\,
      I1 => \output_x_reg_n_0_[5]\,
      I2 => \output_x_reg_n_0_[2]\,
      I3 => \output_x_reg_n_0_[3]\,
      I4 => output_y_reg(0),
      I5 => \output_x_reg_n_0_[6]\,
      O => m_axis_video_tuser_i_4_n_0
    );
m_axis_video_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_video_tuser_i_1_n_0,
      Q => \^m_axis_video_tuser\,
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
m_axis_video_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => m_axis_video_tvalid_i_2_n_0,
      I1 => s_axis_video_tvalid,
      I2 => m_axis_video_tready,
      I3 => \^m_axis_video_tvalid_reg_0\,
      O => m_axis_video_tvalid_i_1_n_0
    );
m_axis_video_tvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => selected_line0,
      I1 => \horizontal_count_reg_n_0_[3]\,
      I2 => \horizontal_count_reg_n_0_[2]\,
      I3 => \horizontal_count_reg_n_0_[1]\,
      I4 => \horizontal_count_reg_n_0_[0]\,
      I5 => s_axis_video_tuser,
      O => m_axis_video_tvalid_i_2_n_0
    );
m_axis_video_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_video_tvalid_i_1_n_0,
      Q => \^m_axis_video_tvalid_reg_0\,
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\next_sample_y[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A200FFFF"
    )
        port map (
      I0 => s_axis_video_tuser,
      I1 => \^m_axis_video_tvalid_reg_0\,
      I2 => m_axis_video_tready,
      I3 => s_axis_video_tvalid,
      I4 => aresetn,
      O => vertical_accumulator
    );
\next_sample_y[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400540000005400"
    )
        port map (
      I0 => \m_axis_video_tdata[23]_i_4_n_0\,
      I1 => selected_line0,
      I2 => s_axis_video_tuser,
      I3 => s_axis_video_tlast,
      I4 => output_y_reg(6),
      I5 => \next_sample_y[10]_i_4_n_0\,
      O => output_y
    );
\next_sample_y[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => output_y_reg(4),
      I1 => output_y_reg(2),
      I2 => output_y_reg(0),
      I3 => output_y_reg(1),
      I4 => output_y_reg(3),
      I5 => output_y_reg(5),
      O => \next_sample_y[10]_i_4_n_0\
    );
\next_sample_y[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(5),
      O => \next_sample_y[2]_i_3_n_0\
    );
\next_sample_y[2]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(4),
      O => \next_sample_y[2]_i_4_n_0\
    );
\next_sample_y[2]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(3),
      O => \next_sample_y[2]_i_5_n_0\
    );
\next_sample_y[6]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(10),
      O => \next_sample_y[6]_i_2_n_0\
    );
\next_sample_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[2]_i_1_n_6\,
      Q => next_sample_y(0),
      R => vertical_accumulator
    );
\next_sample_y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[10]_i_3_n_4\,
      Q => next_sample_y(10),
      R => vertical_accumulator
    );
\next_sample_y_reg[10]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_sample_y_reg[6]_i_1_n_0\,
      CO(3) => \NLW_next_sample_y_reg[10]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \next_sample_y_reg[10]_i_3_n_1\,
      CO(1) => \next_sample_y_reg[10]_i_3_n_2\,
      CO(0) => \next_sample_y_reg[10]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_sample_y_reg[10]_i_3_n_4\,
      O(2) => \next_sample_y_reg[10]_i_3_n_5\,
      O(1) => \next_sample_y_reg[10]_i_3_n_6\,
      O(0) => \next_sample_y_reg[10]_i_3_n_7\,
      S(3 downto 0) => vertical_accumulator_reg(17 downto 14)
    );
\next_sample_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[2]_i_1_n_5\,
      Q => next_sample_y(1),
      R => vertical_accumulator
    );
\next_sample_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[2]_i_1_n_4\,
      Q => next_sample_y(2),
      R => vertical_accumulator
    );
\next_sample_y_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_sample_y_reg[2]_i_2_n_0\,
      CO(3) => \next_sample_y_reg[2]_i_1_n_0\,
      CO(2) => \next_sample_y_reg[2]_i_1_n_1\,
      CO(1) => \next_sample_y_reg[2]_i_1_n_2\,
      CO(0) => \next_sample_y_reg[2]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_sample_y_reg[2]_i_1_n_4\,
      O(2) => \next_sample_y_reg[2]_i_1_n_5\,
      O(1) => \next_sample_y_reg[2]_i_1_n_6\,
      O(0) => \NLW_next_sample_y_reg[2]_i_1_O_UNCONNECTED\(0),
      S(3 downto 0) => vertical_accumulator_reg(9 downto 6)
    );
\next_sample_y_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \next_sample_y_reg[2]_i_2_n_0\,
      CO(2) => \next_sample_y_reg[2]_i_2_n_1\,
      CO(1) => \next_sample_y_reg[2]_i_2_n_2\,
      CO(0) => \next_sample_y_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => vertical_accumulator_reg(5 downto 3),
      DI(0) => '0',
      O(3 downto 0) => \NLW_next_sample_y_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \next_sample_y[2]_i_3_n_0\,
      S(2) => \next_sample_y[2]_i_4_n_0\,
      S(1) => \next_sample_y[2]_i_5_n_0\,
      S(0) => '0'
    );
\next_sample_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[6]_i_1_n_7\,
      Q => next_sample_y(3),
      R => vertical_accumulator
    );
\next_sample_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[6]_i_1_n_6\,
      Q => next_sample_y(4),
      R => vertical_accumulator
    );
\next_sample_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[6]_i_1_n_5\,
      Q => next_sample_y(5),
      R => vertical_accumulator
    );
\next_sample_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[6]_i_1_n_4\,
      Q => next_sample_y(6),
      R => vertical_accumulator
    );
\next_sample_y_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_sample_y_reg[2]_i_1_n_0\,
      CO(3) => \next_sample_y_reg[6]_i_1_n_0\,
      CO(2) => \next_sample_y_reg[6]_i_1_n_1\,
      CO(1) => \next_sample_y_reg[6]_i_1_n_2\,
      CO(0) => \next_sample_y_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vertical_accumulator_reg(10),
      O(3) => \next_sample_y_reg[6]_i_1_n_4\,
      O(2) => \next_sample_y_reg[6]_i_1_n_5\,
      O(1) => \next_sample_y_reg[6]_i_1_n_6\,
      O(0) => \next_sample_y_reg[6]_i_1_n_7\,
      S(3 downto 1) => vertical_accumulator_reg(13 downto 11),
      S(0) => \next_sample_y[6]_i_2_n_0\
    );
\next_sample_y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[10]_i_3_n_7\,
      Q => next_sample_y(7),
      R => vertical_accumulator
    );
\next_sample_y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[10]_i_3_n_6\,
      Q => next_sample_y(8),
      R => vertical_accumulator
    );
\next_sample_y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \next_sample_y_reg[10]_i_3_n_5\,
      Q => next_sample_y(9),
      R => vertical_accumulator
    );
\output_x[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD5D5555EEAEAAAA"
    )
        port map (
      I0 => \m_axis_video_tdata[23]_i_2_n_0\,
      I1 => s_axis_video_tuser,
      I2 => \^m_axis_video_tvalid_reg_0\,
      I3 => m_axis_video_tready,
      I4 => s_axis_video_tvalid,
      I5 => \output_x_reg_n_0_[0]\,
      O => \output_x[0]_i_1_n_0\
    );
\output_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => m_axis_video_tlast_i_2_n_0,
      I1 => \output_x_reg_n_0_[1]\,
      I2 => \output_x_reg_n_0_[0]\,
      O => output_x(1)
    );
\output_x[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => m_axis_video_tlast_i_2_n_0,
      I1 => \output_x_reg_n_0_[2]\,
      I2 => \output_x_reg_n_0_[0]\,
      I3 => \output_x_reg_n_0_[1]\,
      O => output_x(2)
    );
\output_x[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => m_axis_video_tlast_i_2_n_0,
      I1 => \output_x_reg_n_0_[3]\,
      I2 => \output_x_reg_n_0_[1]\,
      I3 => \output_x_reg_n_0_[0]\,
      I4 => \output_x_reg_n_0_[2]\,
      O => output_x(3)
    );
\output_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => m_axis_video_tlast_i_2_n_0,
      I1 => \output_x_reg_n_0_[4]\,
      I2 => \output_x_reg_n_0_[2]\,
      I3 => \output_x_reg_n_0_[0]\,
      I4 => \output_x_reg_n_0_[1]\,
      I5 => \output_x_reg_n_0_[3]\,
      O => output_x(4)
    );
\output_x[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \output_x_reg_n_0_[3]\,
      I1 => \output_x_reg_n_0_[1]\,
      I2 => \output_x_reg_n_0_[0]\,
      I3 => \output_x_reg_n_0_[2]\,
      I4 => \output_x_reg_n_0_[4]\,
      I5 => \output_x_reg_n_0_[5]\,
      O => output_x(5)
    );
\output_x[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \output_x_reg_n_0_[6]\,
      I1 => \output_x[6]_i_2_n_0\,
      O => output_x(6)
    );
\output_x[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \output_x_reg_n_0_[4]\,
      I1 => \output_x_reg_n_0_[2]\,
      I2 => \output_x_reg_n_0_[0]\,
      I3 => \output_x_reg_n_0_[1]\,
      I4 => \output_x_reg_n_0_[3]\,
      I5 => \output_x_reg_n_0_[5]\,
      O => \output_x[6]_i_2_n_0\
    );
\output_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \output_x[0]_i_1_n_0\,
      Q => \output_x_reg_n_0_[0]\,
      R => \m_axis_video_tdata[23]_i_1_n_0\
    );
\output_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => output_x(1),
      Q => \output_x_reg_n_0_[1]\,
      R => vertical_accumulator
    );
\output_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => output_x(2),
      Q => \output_x_reg_n_0_[2]\,
      R => vertical_accumulator
    );
\output_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => output_x(3),
      Q => \output_x_reg_n_0_[3]\,
      R => vertical_accumulator
    );
\output_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => output_x(4),
      Q => \output_x_reg_n_0_[4]\,
      R => vertical_accumulator
    );
\output_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => output_x(5),
      Q => \output_x_reg_n_0_[5]\,
      R => vertical_accumulator
    );
\output_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_video_tdata[23]_i_2_n_0\,
      D => output_x(6),
      Q => \output_x_reg_n_0_[6]\,
      R => vertical_accumulator
    );
\output_y[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => output_y_reg(0),
      O => p_0_in(0)
    );
\output_y[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => output_y_reg(0),
      I1 => output_y_reg(1),
      O => p_0_in(1)
    );
\output_y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => output_y_reg(1),
      I1 => output_y_reg(0),
      I2 => output_y_reg(2),
      O => \output_y[2]_i_1_n_0\
    );
\output_y[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => output_y_reg(2),
      I1 => output_y_reg(0),
      I2 => output_y_reg(1),
      I3 => output_y_reg(3),
      O => \output_y[3]_i_1_n_0\
    );
\output_y[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => output_y_reg(3),
      I1 => output_y_reg(1),
      I2 => output_y_reg(0),
      I3 => output_y_reg(2),
      I4 => output_y_reg(4),
      O => \output_y[4]_i_1_n_0\
    );
\output_y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => output_y_reg(4),
      I1 => output_y_reg(2),
      I2 => output_y_reg(0),
      I3 => output_y_reg(1),
      I4 => output_y_reg(3),
      I5 => output_y_reg(5),
      O => \output_y[5]_i_1_n_0\
    );
\output_y[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \next_sample_y[10]_i_4_n_0\,
      I1 => output_y_reg(6),
      O => \output_y[6]_i_1_n_0\
    );
\output_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => p_0_in(0),
      Q => output_y_reg(0),
      R => vertical_accumulator
    );
\output_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => p_0_in(1),
      Q => output_y_reg(1),
      R => vertical_accumulator
    );
\output_y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \output_y[2]_i_1_n_0\,
      Q => output_y_reg(2),
      R => vertical_accumulator
    );
\output_y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \output_y[3]_i_1_n_0\,
      Q => output_y_reg(3),
      R => vertical_accumulator
    );
\output_y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \output_y[4]_i_1_n_0\,
      Q => output_y_reg(4),
      R => vertical_accumulator
    );
\output_y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \output_y[5]_i_1_n_0\,
      Q => output_y_reg(5),
      R => vertical_accumulator
    );
\output_y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \output_y[6]_i_1_n_0\,
      Q => output_y_reg(6),
      R => vertical_accumulator
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
selected_line0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => selected_line0,
      CO(2) => selected_line0_carry_n_1,
      CO(1) => selected_line0_carry_n_2,
      CO(0) => selected_line0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_selected_line0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => selected_line0_carry_i_1_n_0,
      S(2) => selected_line0_carry_i_2_n_0,
      S(1) => selected_line0_carry_i_3_n_0,
      S(0) => selected_line0_carry_i_4_n_0
    );
selected_line0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => input_y(9),
      I1 => next_sample_y(9),
      I2 => input_y(10),
      I3 => next_sample_y(10),
      O => selected_line0_carry_i_1_n_0
    );
selected_line0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => next_sample_y(8),
      I1 => input_y(8),
      I2 => next_sample_y(7),
      I3 => input_y(7),
      I4 => input_y(6),
      I5 => next_sample_y(6),
      O => selected_line0_carry_i_2_n_0
    );
selected_line0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => next_sample_y(5),
      I1 => input_y(5),
      I2 => next_sample_y(4),
      I3 => input_y(4),
      I4 => input_y(3),
      I5 => next_sample_y(3),
      O => selected_line0_carry_i_3_n_0
    );
selected_line0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => next_sample_y(2),
      I1 => input_y(2),
      I2 => next_sample_y(1),
      I3 => input_y(1),
      I4 => input_y(0),
      I5 => next_sample_y(0),
      O => selected_line0_carry_i_4_n_0
    );
\vertical_accumulator[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(5),
      O => \vertical_accumulator[3]_i_2_n_0\
    );
\vertical_accumulator[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(4),
      O => \vertical_accumulator[3]_i_3_n_0\
    );
\vertical_accumulator[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(3),
      O => \vertical_accumulator[3]_i_4_n_0\
    );
\vertical_accumulator[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vertical_accumulator_reg(10),
      O => \vertical_accumulator[7]_i_2_n_0\
    );
\vertical_accumulator_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[7]_i_1_n_4\,
      Q => vertical_accumulator_reg(10),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[11]_i_1_n_7\,
      Q => vertical_accumulator_reg(11),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vertical_accumulator_reg[7]_i_1_n_0\,
      CO(3) => \vertical_accumulator_reg[11]_i_1_n_0\,
      CO(2) => \vertical_accumulator_reg[11]_i_1_n_1\,
      CO(1) => \vertical_accumulator_reg[11]_i_1_n_2\,
      CO(0) => \vertical_accumulator_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \vertical_accumulator_reg[11]_i_1_n_4\,
      O(2) => \vertical_accumulator_reg[11]_i_1_n_5\,
      O(1) => \vertical_accumulator_reg[11]_i_1_n_6\,
      O(0) => \vertical_accumulator_reg[11]_i_1_n_7\,
      S(3 downto 0) => vertical_accumulator_reg(14 downto 11)
    );
\vertical_accumulator_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[11]_i_1_n_6\,
      Q => vertical_accumulator_reg(12),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[11]_i_1_n_5\,
      Q => vertical_accumulator_reg(13),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[11]_i_1_n_4\,
      Q => vertical_accumulator_reg(14),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[15]_i_1_n_7\,
      Q => vertical_accumulator_reg(15),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vertical_accumulator_reg[11]_i_1_n_0\,
      CO(3 downto 2) => \NLW_vertical_accumulator_reg[15]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \vertical_accumulator_reg[15]_i_1_n_2\,
      CO(0) => \vertical_accumulator_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_vertical_accumulator_reg[15]_i_1_O_UNCONNECTED\(3),
      O(2) => \vertical_accumulator_reg[15]_i_1_n_5\,
      O(1) => \vertical_accumulator_reg[15]_i_1_n_6\,
      O(0) => \vertical_accumulator_reg[15]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => vertical_accumulator_reg(17 downto 15)
    );
\vertical_accumulator_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[15]_i_1_n_6\,
      Q => vertical_accumulator_reg(16),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[15]_i_1_n_5\,
      Q => vertical_accumulator_reg(17),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[3]_i_1_n_7\,
      Q => vertical_accumulator_reg(3),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \vertical_accumulator_reg[3]_i_1_n_0\,
      CO(2) => \vertical_accumulator_reg[3]_i_1_n_1\,
      CO(1) => \vertical_accumulator_reg[3]_i_1_n_2\,
      CO(0) => \vertical_accumulator_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \vertical_accumulator_reg[3]_i_1_n_4\,
      O(2) => \vertical_accumulator_reg[3]_i_1_n_5\,
      O(1) => \vertical_accumulator_reg[3]_i_1_n_6\,
      O(0) => \vertical_accumulator_reg[3]_i_1_n_7\,
      S(3) => vertical_accumulator_reg(6),
      S(2) => \vertical_accumulator[3]_i_2_n_0\,
      S(1) => \vertical_accumulator[3]_i_3_n_0\,
      S(0) => \vertical_accumulator[3]_i_4_n_0\
    );
\vertical_accumulator_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[3]_i_1_n_6\,
      Q => vertical_accumulator_reg(4),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[3]_i_1_n_5\,
      Q => vertical_accumulator_reg(5),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[3]_i_1_n_4\,
      Q => vertical_accumulator_reg(6),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[7]_i_1_n_7\,
      Q => vertical_accumulator_reg(7),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vertical_accumulator_reg[3]_i_1_n_0\,
      CO(3) => \vertical_accumulator_reg[7]_i_1_n_0\,
      CO(2) => \vertical_accumulator_reg[7]_i_1_n_1\,
      CO(1) => \vertical_accumulator_reg[7]_i_1_n_2\,
      CO(0) => \vertical_accumulator_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3) => \vertical_accumulator_reg[7]_i_1_n_4\,
      O(2) => \vertical_accumulator_reg[7]_i_1_n_5\,
      O(1) => \vertical_accumulator_reg[7]_i_1_n_6\,
      O(0) => \vertical_accumulator_reg[7]_i_1_n_7\,
      S(3) => \vertical_accumulator[7]_i_2_n_0\,
      S(2 downto 0) => vertical_accumulator_reg(9 downto 7)
    );
\vertical_accumulator_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[7]_i_1_n_6\,
      Q => vertical_accumulator_reg(8),
      R => vertical_accumulator
    );
\vertical_accumulator_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => output_y,
      D => \vertical_accumulator_reg[7]_i_1_n_5\,
      Q => vertical_accumulator_reg(9),
      R => vertical_accumulator
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axis_resize_128x128_0_1 is
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
  attribute NotValidForBitStream of system_axis_resize_128x128_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axis_resize_128x128_0_1 : entity is "system_axis_resize_128x128_0_1,axis_resize_128x128,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_axis_resize_128x128_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_axis_resize_128x128_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_axis_resize_128x128_0_1 : entity is "axis_resize_128x128,Vivado 2020.2";
end system_axis_resize_128x128_0_1;

architecture STRUCTURE of system_axis_resize_128x128_0_1 is
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
U0: entity work.system_axis_resize_128x128_0_1_axis_resize_128x128
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_video_tdata(23 downto 0) => m_axis_video_tdata(23 downto 0),
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
