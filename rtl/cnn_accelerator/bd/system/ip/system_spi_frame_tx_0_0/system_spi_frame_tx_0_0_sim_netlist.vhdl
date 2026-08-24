-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Aug 11 08:24:14 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_spi_frame_tx_0_0/system_spi_frame_tx_0_0_sim_netlist.vhdl
-- Design      : system_spi_frame_tx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spi_frame_tx_0_0_spi_slave is
  port (
    miso : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_active : out STD_LOGIC;
    \byte_cnt_reg[11]\ : out STD_LOGIC;
    \cs_n_sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_taken_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    spi_rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclk : in STD_LOGIC;
    \tx_shift_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    cnn_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    miso_r_i_5_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cs_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_spi_frame_tx_0_0_spi_slave : entity is "spi_slave";
end system_spi_frame_tx_0_0_spi_slave;

architecture STRUCTURE of system_spi_frame_tx_0_0_spi_slave is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bit_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \^byte_cnt_reg[11]\ : STD_LOGIC;
  signal cs_n_fall : STD_LOGIC;
  signal \cs_n_sync_reg_n_0_[0]\ : STD_LOGIC;
  signal \^miso\ : STD_LOGIC;
  signal miso_r_i_10_n_0 : STD_LOGIC;
  signal miso_r_i_2_n_0 : STD_LOGIC;
  signal miso_r_i_3_n_0 : STD_LOGIC;
  signal miso_r_i_4_n_0 : STD_LOGIC;
  signal miso_r_i_5_n_0 : STD_LOGIC;
  signal miso_r_i_6_n_0 : STD_LOGIC;
  signal miso_r_i_7_n_0 : STD_LOGIC;
  signal miso_r_i_8_n_0 : STD_LOGIC;
  signal miso_r_i_9_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_in : STD_LOGIC;
  signal \sclk_sync[0]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_sync[1]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_sync[2]_i_1_n_0\ : STD_LOGIC;
  signal \sclk_sync_reg_n_0_[0]\ : STD_LOGIC;
  signal \sclk_sync_reg_n_0_[2]\ : STD_LOGIC;
  signal step : STD_LOGIC;
  signal step_i_1_n_0 : STD_LOGIC;
  signal \tx_shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \tx_shift_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal tx_taken_i_1_n_0 : STD_LOGIC;
  signal tx_taken_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \byte_cnt[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of miso_r_i_10 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of miso_r_i_11 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of miso_r_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of miso_r_i_8 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sclk_sync[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sclk_sync[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sclk_sync[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_shift_reg[2]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_shift_reg[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_shift_reg[4]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_shift_reg[5]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_shift_reg[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_shift_reg[7]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_shift_reg[7]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_shift_reg[7]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of tx_taken_i_1 : label is "soft_lutpair2";
begin
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  \byte_cnt_reg[11]\ <= \^byte_cnt_reg[11]\;
  miso <= \^miso\;
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A99AAAAA"
    )
        port map (
      I0 => bit_cnt(0),
      I1 => \^q\(0),
      I2 => \sclk_sync_reg_n_0_[2]\,
      I3 => p_0_in_0(0),
      I4 => step,
      I5 => \bit_cnt[2]_i_3_n_0\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => bit_cnt(1),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => bit_cnt(0),
      I3 => \bit_cnt[2]_i_3_n_0\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => bit_cnt(2),
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => bit_cnt(1),
      I3 => bit_cnt(0),
      I4 => \bit_cnt[2]_i_3_n_0\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1400"
    )
        port map (
      I0 => \^q\(0),
      I1 => \sclk_sync_reg_n_0_[2]\,
      I2 => p_0_in_0(0),
      I3 => step,
      O => \bit_cnt[2]_i_2_n_0\
    );
\bit_cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555DDFDFDDD"
    )
        port map (
      I0 => rst_n,
      I1 => p_0_in(1),
      I2 => tx_taken_i_2_n_0,
      I3 => p_0_in_0(0),
      I4 => \sclk_sync_reg_n_0_[2]\,
      I5 => \^q\(0),
      O => \bit_cnt[2]_i_3_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      Q => bit_cnt(0),
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      Q => bit_cnt(1),
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      Q => bit_cnt(2),
      R => '0'
    );
\byte_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => rst_n,
      O => \cs_n_sync_reg[1]_0\(0)
    );
\byte_cnt[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => miso_r_i_10_n_0,
      I1 => \tx_shift_reg_reg[7]_0\(11),
      I2 => \tx_shift_reg_reg[7]_0\(10),
      I3 => \tx_shift_reg_reg[7]_0\(8),
      I4 => \tx_shift_reg_reg[7]_0\(13),
      I5 => miso_r_i_8_n_0,
      O => \^byte_cnt_reg[11]\
    );
\cs_n_sync_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => cs_n,
      Q => \cs_n_sync_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\cs_n_sync_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \cs_n_sync_reg_n_0_[0]\,
      Q => \^q\(0),
      S => \^sr\(0)
    );
\cs_n_sync_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \^q\(0),
      Q => p_0_in(1),
      S => \^sr\(0)
    );
miso_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^sr\(0)
    );
miso_r_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(6),
      I1 => \tx_shift_reg_reg[7]_0\(3),
      I2 => \tx_shift_reg_reg[7]_0\(9),
      I3 => \tx_shift_reg_reg[7]_0\(7),
      O => miso_r_i_10_n_0
    );
miso_r_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \^q\(0),
      O => cs_n_fall
    );
miso_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FFFFFF450000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => miso_r_i_3_n_0,
      I2 => miso_r_i_4_n_0,
      I3 => miso_r_i_5_n_0,
      I4 => miso_r_i_6_n_0,
      I5 => \^miso\,
      O => miso_r_i_2_n_0
    );
miso_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFAAAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => step,
      I2 => bit_cnt(2),
      I3 => bit_cnt(0),
      I4 => bit_cnt(1),
      I5 => p_2_in,
      O => miso_r_i_3_n_0
    );
miso_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFBFFFFFFFF"
    )
        port map (
      I0 => miso_r_i_7_n_0,
      I1 => miso_r_i_8_n_0,
      I2 => miso_r_i_9_n_0,
      I3 => miso_r_i_10_n_0,
      I4 => spi_rd_data(7),
      I5 => tx_taken_i_2_n_0,
      O => miso_r_i_4_n_0
    );
miso_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA2A00000020"
    )
        port map (
      I0 => cs_n_fall,
      I1 => miso_r_i_7_n_0,
      I2 => miso_r_i_8_n_0,
      I3 => miso_r_i_9_n_0,
      I4 => miso_r_i_10_n_0,
      I5 => spi_rd_data(7),
      O => miso_r_i_5_n_0
    );
miso_r_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFFF28"
    )
        port map (
      I0 => step,
      I1 => p_0_in_0(0),
      I2 => \sclk_sync_reg_n_0_[2]\,
      I3 => p_0_in(1),
      I4 => \^q\(0),
      O => miso_r_i_6_n_0
    );
miso_r_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B44"
    )
        port map (
      I0 => cnn_byte(7),
      I1 => \tx_shift_reg_reg[7]_0\(1),
      I2 => miso_r_i_5_0(7),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => miso_r_i_7_n_0
    );
miso_r_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(5),
      I1 => \tx_shift_reg_reg[7]_0\(4),
      I2 => \tx_shift_reg_reg[7]_0\(2),
      I3 => \tx_shift_reg_reg[7]_0\(12),
      O => miso_r_i_8_n_0
    );
miso_r_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(11),
      I1 => \tx_shift_reg_reg[7]_0\(10),
      I2 => \tx_shift_reg_reg[7]_0\(8),
      I3 => \tx_shift_reg_reg[7]_0\(13),
      O => miso_r_i_9_n_0
    );
miso_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => miso_r_i_2_n_0,
      Q => \^miso\,
      S => \^sr\(0)
    );
\sclk_sync[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_n,
      I1 => sclk,
      O => \sclk_sync[0]_i_1_n_0\
    );
\sclk_sync[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_n,
      I1 => \sclk_sync_reg_n_0_[0]\,
      O => \sclk_sync[1]_i_1_n_0\
    );
\sclk_sync[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_n,
      I1 => p_0_in_0(0),
      O => \sclk_sync[2]_i_1_n_0\
    );
\sclk_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sclk_sync[0]_i_1_n_0\,
      Q => \sclk_sync_reg_n_0_[0]\,
      R => '0'
    );
\sclk_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sclk_sync[1]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => '0'
    );
\sclk_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sclk_sync[2]_i_1_n_0\,
      Q => \sclk_sync_reg_n_0_[2]\,
      R => '0'
    );
spi_active_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => spi_active
    );
step_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA0000009600"
    )
        port map (
      I0 => step,
      I1 => p_0_in_0(0),
      I2 => \sclk_sync_reg_n_0_[2]\,
      I3 => rst_n,
      I4 => p_0_in(1),
      I5 => \^q\(0),
      O => step_i_1_n_0
    );
step_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => step_i_1_n_0,
      Q => step,
      R => '0'
    );
\tx_shift_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30200020"
    )
        port map (
      I0 => \tx_shift_reg[1]_i_2_n_0\,
      I1 => \tx_shift_reg[7]_i_3_n_0\,
      I2 => rst_n,
      I3 => \^byte_cnt_reg[11]\,
      I4 => spi_rd_data(0),
      O => \tx_shift_reg[1]_i_1_n_0\
    );
\tx_shift_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D2DD"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(1),
      I1 => cnn_byte(0),
      I2 => miso_r_i_5_0(0),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => \tx_shift_reg[1]_i_2_n_0\
    );
\tx_shift_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_3_n_0\,
      I1 => \^byte_cnt_reg[11]\,
      I2 => \tx_shift_reg[2]_i_2_n_0\,
      I3 => spi_rd_data(1),
      I4 => \tx_shift_reg[7]_i_5_n_0\,
      I5 => \tx_shift_reg[2]_i_3_n_0\,
      O => \tx_shift_reg[2]_i_1_n_0\
    );
\tx_shift_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(1),
      I1 => cnn_byte(1),
      I2 => miso_r_i_5_0(1),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => \tx_shift_reg[2]_i_2_n_0\
    );
\tx_shift_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_shift_reg_reg_n_0_[1]\,
      I1 => \tx_shift_reg[7]_i_3_n_0\,
      I2 => rst_n,
      O => \tx_shift_reg[2]_i_3_n_0\
    );
\tx_shift_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_3_n_0\,
      I1 => \^byte_cnt_reg[11]\,
      I2 => \tx_shift_reg[3]_i_2_n_0\,
      I3 => spi_rd_data(2),
      I4 => \tx_shift_reg[7]_i_5_n_0\,
      I5 => \tx_shift_reg[3]_i_3_n_0\,
      O => \tx_shift_reg[3]_i_1_n_0\
    );
\tx_shift_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D2DD"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(1),
      I1 => cnn_byte(2),
      I2 => miso_r_i_5_0(2),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => \tx_shift_reg[3]_i_2_n_0\
    );
\tx_shift_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_shift_reg_reg_n_0_[2]\,
      I1 => \tx_shift_reg[7]_i_3_n_0\,
      I2 => rst_n,
      O => \tx_shift_reg[3]_i_3_n_0\
    );
\tx_shift_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_3_n_0\,
      I1 => \^byte_cnt_reg[11]\,
      I2 => \tx_shift_reg[4]_i_2_n_0\,
      I3 => spi_rd_data(3),
      I4 => \tx_shift_reg[7]_i_5_n_0\,
      I5 => \tx_shift_reg[4]_i_3_n_0\,
      O => \tx_shift_reg[4]_i_1_n_0\
    );
\tx_shift_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(1),
      I1 => cnn_byte(3),
      I2 => miso_r_i_5_0(3),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => \tx_shift_reg[4]_i_2_n_0\
    );
\tx_shift_reg[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_shift_reg_reg_n_0_[3]\,
      I1 => \tx_shift_reg[7]_i_3_n_0\,
      I2 => rst_n,
      O => \tx_shift_reg[4]_i_3_n_0\
    );
\tx_shift_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_3_n_0\,
      I1 => \^byte_cnt_reg[11]\,
      I2 => \tx_shift_reg[5]_i_2_n_0\,
      I3 => spi_rd_data(4),
      I4 => \tx_shift_reg[7]_i_5_n_0\,
      I5 => \tx_shift_reg[5]_i_3_n_0\,
      O => \tx_shift_reg[5]_i_1_n_0\
    );
\tx_shift_reg[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(1),
      I1 => cnn_byte(4),
      I2 => miso_r_i_5_0(4),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => \tx_shift_reg[5]_i_2_n_0\
    );
\tx_shift_reg[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_shift_reg_reg_n_0_[4]\,
      I1 => \tx_shift_reg[7]_i_3_n_0\,
      I2 => rst_n,
      O => \tx_shift_reg[5]_i_3_n_0\
    );
\tx_shift_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_3_n_0\,
      I1 => \^byte_cnt_reg[11]\,
      I2 => \tx_shift_reg[6]_i_2_n_0\,
      I3 => spi_rd_data(5),
      I4 => \tx_shift_reg[7]_i_5_n_0\,
      I5 => \tx_shift_reg[6]_i_3_n_0\,
      O => \tx_shift_reg[6]_i_1_n_0\
    );
\tx_shift_reg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D2DD"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(1),
      I1 => cnn_byte(5),
      I2 => miso_r_i_5_0(5),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => \tx_shift_reg[6]_i_2_n_0\
    );
\tx_shift_reg[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_shift_reg_reg_n_0_[5]\,
      I1 => \tx_shift_reg[7]_i_3_n_0\,
      I2 => rst_n,
      O => \tx_shift_reg[6]_i_3_n_0\
    );
\tx_shift_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555DDFDFDDD"
    )
        port map (
      I0 => rst_n,
      I1 => p_0_in(1),
      I2 => step,
      I3 => p_0_in_0(0),
      I4 => \sclk_sync_reg_n_0_[2]\,
      I5 => \^q\(0),
      O => \tx_shift_reg[7]_i_1_n_0\
    );
\tx_shift_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABAFFBA"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_3_n_0\,
      I1 => \^byte_cnt_reg[11]\,
      I2 => \tx_shift_reg[7]_i_4_n_0\,
      I3 => spi_rd_data(6),
      I4 => \tx_shift_reg[7]_i_5_n_0\,
      I5 => \tx_shift_reg[7]_i_6_n_0\,
      O => \tx_shift_reg[7]_i_2_n_0\
    );
\tx_shift_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BBBBBBBBBBBBBBB"
    )
        port map (
      I0 => \^q\(0),
      I1 => p_0_in(1),
      I2 => bit_cnt(1),
      I3 => bit_cnt(0),
      I4 => bit_cnt(2),
      I5 => step,
      O => \tx_shift_reg[7]_i_3_n_0\
    );
\tx_shift_reg[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(1),
      I1 => cnn_byte(6),
      I2 => miso_r_i_5_0(6),
      I3 => \tx_shift_reg_reg[7]_0\(0),
      O => \tx_shift_reg[7]_i_4_n_0\
    );
\tx_shift_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \tx_shift_reg[7]_i_7_n_0\,
      I1 => \tx_shift_reg_reg[7]_0\(11),
      I2 => \tx_shift_reg_reg[7]_0\(10),
      I3 => \tx_shift_reg_reg[7]_0\(12),
      I4 => \tx_shift_reg_reg[7]_0\(13),
      I5 => \tx_shift_reg[7]_i_8_n_0\,
      O => \tx_shift_reg[7]_i_5_n_0\
    );
\tx_shift_reg[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \tx_shift_reg_reg_n_0_[6]\,
      I1 => \tx_shift_reg[7]_i_3_n_0\,
      I2 => rst_n,
      O => \tx_shift_reg[7]_i_6_n_0\
    );
\tx_shift_reg[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(9),
      I1 => \tx_shift_reg_reg[7]_0\(8),
      I2 => \tx_shift_reg_reg[7]_0\(7),
      I3 => \tx_shift_reg_reg[7]_0\(6),
      O => \tx_shift_reg[7]_i_7_n_0\
    );
\tx_shift_reg[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \tx_shift_reg_reg[7]_0\(5),
      I1 => \tx_shift_reg_reg[7]_0\(4),
      I2 => \tx_shift_reg_reg[7]_0\(3),
      I3 => \tx_shift_reg_reg[7]_0\(2),
      O => \tx_shift_reg[7]_i_8_n_0\
    );
\tx_shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_shift_reg[7]_i_1_n_0\,
      D => \tx_shift_reg[1]_i_1_n_0\,
      Q => \tx_shift_reg_reg_n_0_[1]\,
      R => '0'
    );
\tx_shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_shift_reg[7]_i_1_n_0\,
      D => \tx_shift_reg[2]_i_1_n_0\,
      Q => \tx_shift_reg_reg_n_0_[2]\,
      R => '0'
    );
\tx_shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_shift_reg[7]_i_1_n_0\,
      D => \tx_shift_reg[3]_i_1_n_0\,
      Q => \tx_shift_reg_reg_n_0_[3]\,
      R => '0'
    );
\tx_shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_shift_reg[7]_i_1_n_0\,
      D => \tx_shift_reg[4]_i_1_n_0\,
      Q => \tx_shift_reg_reg_n_0_[4]\,
      R => '0'
    );
\tx_shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_shift_reg[7]_i_1_n_0\,
      D => \tx_shift_reg[5]_i_1_n_0\,
      Q => \tx_shift_reg_reg_n_0_[5]\,
      R => '0'
    );
\tx_shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_shift_reg[7]_i_1_n_0\,
      D => \tx_shift_reg[6]_i_1_n_0\,
      Q => \tx_shift_reg_reg_n_0_[6]\,
      R => '0'
    );
\tx_shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_shift_reg[7]_i_1_n_0\,
      D => \tx_shift_reg[7]_i_2_n_0\,
      Q => p_2_in,
      R => '0'
    );
tx_taken_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0028"
    )
        port map (
      I0 => tx_taken_i_2_n_0,
      I1 => p_0_in_0(0),
      I2 => \sclk_sync_reg_n_0_[2]\,
      I3 => \^q\(0),
      I4 => p_0_in(1),
      O => tx_taken_i_1_n_0
    );
tx_taken_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => step,
      I1 => bit_cnt(2),
      I2 => bit_cnt(0),
      I3 => bit_cnt(1),
      O => tx_taken_i_2_n_0
    );
tx_taken_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_taken_i_1_n_0,
      Q => tx_taken_reg_0,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spi_frame_tx_0_0_spi_frame_tx is
  port (
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 );
    spi_active : out STD_LOGIC;
    miso : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    spi_rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    cs_n : in STD_LOGIC;
    result : in STD_LOGIC;
    person_cnt : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probability_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_spi_frame_tx_0_0_spi_frame_tx : entity is "spi_frame_tx";
end system_spi_frame_tx_0_0_spi_frame_tx;

architecture STRUCTURE of system_spi_frame_tx_0_0_spi_frame_tx is
  signal \^q\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal byte_cnt : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \byte_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \byte_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \byte_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \byte_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \byte_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \byte_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \byte_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \byte_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal byte_cnt0_carry_n_0 : STD_LOGIC;
  signal byte_cnt0_carry_n_1 : STD_LOGIC;
  signal byte_cnt0_carry_n_2 : STD_LOGIC;
  signal byte_cnt0_carry_n_3 : STD_LOGIC;
  signal cnn_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal prob_lat : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_taken : STD_LOGIC;
  signal u_spi_n_1 : STD_LOGIC;
  signal u_spi_n_4 : STD_LOGIC;
  signal u_spi_n_5 : STD_LOGIC;
  signal \NLW_byte_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_byte_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of byte_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \byte_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \byte_cnt0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \byte_cnt[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \byte_cnt[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \byte_cnt[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \byte_cnt[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \byte_cnt[13]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \byte_cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \byte_cnt[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \byte_cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \byte_cnt[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \byte_cnt[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \byte_cnt[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \byte_cnt[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \byte_cnt[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \byte_cnt[9]_i_1\ : label is "soft_lutpair14";
begin
  Q(13 downto 0) <= \^q\(13 downto 0);
byte_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => byte_cnt0_carry_n_0,
      CO(2) => byte_cnt0_carry_n_1,
      CO(1) => byte_cnt0_carry_n_2,
      CO(0) => byte_cnt0_carry_n_3,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => \^q\(4 downto 1)
    );
\byte_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => byte_cnt0_carry_n_0,
      CO(3) => \byte_cnt0_carry__0_n_0\,
      CO(2) => \byte_cnt0_carry__0_n_1\,
      CO(1) => \byte_cnt0_carry__0_n_2\,
      CO(0) => \byte_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => \^q\(8 downto 5)
    );
\byte_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt0_carry__0_n_0\,
      CO(3) => \byte_cnt0_carry__1_n_0\,
      CO(2) => \byte_cnt0_carry__1_n_1\,
      CO(1) => \byte_cnt0_carry__1_n_2\,
      CO(0) => \byte_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => \^q\(12 downto 9)
    );
\byte_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_byte_cnt0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_byte_cnt0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => \^q\(13)
    );
\byte_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => byte_cnt(0)
    );
\byte_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(10),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(10)
    );
\byte_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(11),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(11)
    );
\byte_cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(12),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(12)
    );
\byte_cnt[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(13),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(13)
    );
\byte_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(1),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(1)
    );
\byte_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(2),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(2)
    );
\byte_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(3),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(3)
    );
\byte_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(4),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(4)
    );
\byte_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(5),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(5)
    );
\byte_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(6),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(6)
    );
\byte_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(7),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(7)
    );
\byte_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(8),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(8)
    );
\byte_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => data0(9),
      I1 => u_spi_n_4,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => byte_cnt(9)
    );
\byte_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(0),
      Q => \^q\(0),
      R => u_spi_n_5
    );
\byte_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(10),
      Q => \^q\(10),
      R => u_spi_n_5
    );
\byte_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(11),
      Q => \^q\(11),
      R => u_spi_n_5
    );
\byte_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(12),
      Q => \^q\(12),
      R => u_spi_n_5
    );
\byte_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(13),
      Q => \^q\(13),
      R => u_spi_n_5
    );
\byte_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(1),
      Q => \^q\(1),
      R => u_spi_n_5
    );
\byte_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(2),
      Q => \^q\(2),
      R => u_spi_n_5
    );
\byte_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(3),
      Q => \^q\(3),
      R => u_spi_n_5
    );
\byte_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(4),
      Q => \^q\(4),
      R => u_spi_n_5
    );
\byte_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(5),
      Q => \^q\(5),
      R => u_spi_n_5
    );
\byte_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(6),
      Q => \^q\(6),
      R => u_spi_n_5
    );
\byte_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(7),
      Q => \^q\(7),
      R => u_spi_n_5
    );
\byte_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(8),
      Q => \^q\(8),
      R => u_spi_n_5
    );
\byte_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_taken,
      D => byte_cnt(9),
      Q => \^q\(9),
      R => u_spi_n_5
    );
\pcnt_lat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => person_cnt(0),
      Q => cnn_byte(1),
      R => u_spi_n_1
    );
\pcnt_lat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => person_cnt(1),
      Q => cnn_byte(2),
      R => u_spi_n_1
    );
\pcnt_lat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => person_cnt(2),
      Q => cnn_byte(3),
      R => u_spi_n_1
    );
\pcnt_lat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => person_cnt(3),
      Q => cnn_byte(4),
      R => u_spi_n_1
    );
\pcnt_lat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => person_cnt(4),
      Q => cnn_byte(5),
      R => u_spi_n_1
    );
\pcnt_lat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => person_cnt(5),
      Q => cnn_byte(6),
      R => u_spi_n_1
    );
\pcnt_lat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => person_cnt(6),
      Q => cnn_byte(7),
      R => u_spi_n_1
    );
\prob_lat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(0),
      Q => prob_lat(0),
      R => u_spi_n_1
    );
\prob_lat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(1),
      Q => prob_lat(1),
      R => u_spi_n_1
    );
\prob_lat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(2),
      Q => prob_lat(2),
      R => u_spi_n_1
    );
\prob_lat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(3),
      Q => prob_lat(3),
      R => u_spi_n_1
    );
\prob_lat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(4),
      Q => prob_lat(4),
      R => u_spi_n_1
    );
\prob_lat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(5),
      Q => prob_lat(5),
      R => u_spi_n_1
    );
\prob_lat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(6),
      Q => prob_lat(6),
      R => u_spi_n_1
    );
\prob_lat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => probability_data(7),
      Q => prob_lat(7),
      R => u_spi_n_1
    );
result_lat_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in(0),
      D => result,
      Q => cnn_byte(0),
      R => u_spi_n_1
    );
u_spi: entity work.system_spi_frame_tx_0_0_spi_slave
     port map (
      Q(0) => p_0_in(0),
      SR(0) => u_spi_n_1,
      \byte_cnt_reg[11]\ => u_spi_n_4,
      clk => clk,
      cnn_byte(7 downto 0) => cnn_byte(7 downto 0),
      cs_n => cs_n,
      \cs_n_sync_reg[1]_0\(0) => u_spi_n_5,
      miso => miso,
      miso_r_i_5_0(7 downto 0) => prob_lat(7 downto 0),
      rst_n => rst_n,
      sclk => sclk,
      spi_active => spi_active,
      spi_rd_data(7 downto 0) => spi_rd_data(7 downto 0),
      \tx_shift_reg_reg[7]_0\(13 downto 0) => \^q\(13 downto 0),
      tx_taken_reg_0 => tx_taken
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spi_frame_tx_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    sclk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC;
    cs_n : in STD_LOGIC;
    spi_rd_addr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    spi_rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spi_active : out STD_LOGIC;
    probability_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    result : in STD_LOGIC;
    person_cnt : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_spi_frame_tx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_spi_frame_tx_0_0 : entity is "system_spi_frame_tx_0_0,spi_frame_tx,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_spi_frame_tx_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_spi_frame_tx_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_spi_frame_tx_0_0 : entity is "spi_frame_tx,Vivado 2020.2";
end system_spi_frame_tx_0_0;

architecture STRUCTURE of system_spi_frame_tx_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.system_spi_frame_tx_0_0_spi_frame_tx
     port map (
      Q(13 downto 0) => spi_rd_addr(13 downto 0),
      clk => clk,
      cs_n => cs_n,
      miso => miso,
      person_cnt(6 downto 0) => person_cnt(6 downto 0),
      probability_data(7 downto 0) => probability_data(7 downto 0),
      result => result,
      rst_n => rst_n,
      sclk => sclk,
      spi_active => spi_active,
      spi_rd_data(7 downto 0) => spi_rd_data(7 downto 0)
    );
end STRUCTURE;
