-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Aug  2 20:02:02 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_ds_128_0_0/system_ds_128_0_0_sim_netlist.vhdl
-- Design      : system_ds_128_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ds_128_0_0_ds_128 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ds_128_0_0_ds_128 : entity is "ds_128";
end system_ds_128_0_0_ds_128;

architecture STRUCTURE of system_ds_128_0_0_ds_128 is
  signal cx : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal cy : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_tuser0 : STD_LOGIC;
  signal m_axis_tuser_i_2_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_3_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_4_n_0 : STD_LOGIC;
  signal m_axis_tuser_i_5_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal take : STD_LOGIC;
  signal \x_q0_carry__0_n_0\ : STD_LOGIC;
  signal \x_q0_carry__0_n_1\ : STD_LOGIC;
  signal \x_q0_carry__0_n_2\ : STD_LOGIC;
  signal \x_q0_carry__0_n_3\ : STD_LOGIC;
  signal \x_q0_carry__1_n_2\ : STD_LOGIC;
  signal \x_q0_carry__1_n_3\ : STD_LOGIC;
  signal x_q0_carry_n_0 : STD_LOGIC;
  signal x_q0_carry_n_1 : STD_LOGIC;
  signal x_q0_carry_n_2 : STD_LOGIC;
  signal x_q0_carry_n_3 : STD_LOGIC;
  signal \x_q[11]_i_1_n_0\ : STD_LOGIC;
  signal \x_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \x_q_reg_n_0_[9]\ : STD_LOGIC;
  signal y_q : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \y_q[3]_i_5_n_0\ : STD_LOGIC;
  signal \y_q_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \y_q_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \y_q_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \y_q_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \y_q_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \y_q_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \y_q_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \y_q_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \y_q_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \y_q_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \y_q_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \y_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \y_q_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_x_q0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_q0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_q_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tlast_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tuser_i_5 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of x_q0_carry : label is 35;
  attribute ADDER_THRESHOLD of \x_q0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \x_q0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \x_q[0]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD of \y_q_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_q_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_q_reg[7]_i_1\ : label is 35;
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_3_n_0\,
      I1 => \m_axis_tdata[7]_i_4_n_0\,
      I2 => \y_q_reg_n_0_[9]\,
      O => take
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A00000000000000"
    )
        port map (
      I0 => \x_q_reg_n_0_[9]\,
      I1 => \x_q_reg_n_0_[8]\,
      I2 => \x_q_reg_n_0_[7]\,
      I3 => \m_axis_tdata[7]_i_5_n_0\,
      I4 => m_axis_tlast_i_2_n_0,
      I5 => s_axis_tvalid,
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEEEEEEEEEE"
    )
        port map (
      I0 => \y_q_reg_n_0_[8]\,
      I1 => \y_q_reg_n_0_[7]\,
      I2 => \y_q_reg_n_0_[3]\,
      I3 => \y_q_reg_n_0_[4]\,
      I4 => \y_q_reg_n_0_[5]\,
      I5 => \y_q_reg_n_0_[6]\,
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \y_q_reg_n_0_[11]\,
      I1 => \y_q_reg_n_0_[10]\,
      I2 => \y_q_reg_n_0_[1]\,
      I3 => \y_q_reg_n_0_[0]\,
      O => \m_axis_tdata[7]_i_5_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(0),
      Q => m_axis_tdata(0),
      R => p_0_in
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(1),
      Q => m_axis_tdata(1),
      R => p_0_in
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(2),
      Q => m_axis_tdata(2),
      R => p_0_in
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(3),
      Q => m_axis_tdata(3),
      R => p_0_in
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(4),
      Q => m_axis_tdata(4),
      R => p_0_in
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(5),
      Q => m_axis_tdata(5),
      R => p_0_in
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(6),
      Q => m_axis_tdata(6),
      R => p_0_in
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => s_axis_tdata(7),
      Q => m_axis_tdata(7),
      R => p_0_in
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => \x_q_reg_n_0_[2]\,
      I2 => \x_q_reg_n_0_[3]\,
      I3 => m_axis_tlast_i_3_n_0,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \x_q_reg_n_0_[0]\,
      I1 => \x_q_reg_n_0_[1]\,
      I2 => \x_q_reg_n_0_[10]\,
      I3 => \x_q_reg_n_0_[11]\,
      I4 => s_axis_tuser,
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \x_q_reg_n_0_[6]\,
      I1 => \x_q_reg_n_0_[7]\,
      I2 => \x_q_reg_n_0_[4]\,
      I3 => \x_q_reg_n_0_[5]\,
      I4 => \x_q_reg_n_0_[9]\,
      I5 => \x_q_reg_n_0_[8]\,
      O => m_axis_tlast_i_3_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => m_axis_tlast_i_1_n_0,
      Q => m_axis_tlast,
      R => p_0_in
    );
m_axis_tuser_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => m_axis_tuser_i_2_n_0,
      I1 => m_axis_tuser_i_3_n_0,
      I2 => \y_q_reg_n_0_[5]\,
      I3 => \y_q_reg_n_0_[6]\,
      I4 => m_axis_tuser_i_4_n_0,
      I5 => m_axis_tuser_i_5_n_0,
      O => m_axis_tuser0
    );
m_axis_tuser_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \x_q_reg_n_0_[4]\,
      I1 => \x_q_reg_n_0_[5]\,
      I2 => \x_q_reg_n_0_[2]\,
      I3 => \x_q_reg_n_0_[3]\,
      I4 => \x_q_reg_n_0_[6]\,
      I5 => \x_q_reg_n_0_[7]\,
      O => m_axis_tuser_i_2_n_0
    );
m_axis_tuser_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \y_q_reg_n_0_[7]\,
      I1 => \y_q_reg_n_0_[8]\,
      O => m_axis_tuser_i_3_n_0
    );
m_axis_tuser_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \y_q_reg_n_0_[3]\,
      I1 => \y_q_reg_n_0_[2]\,
      I2 => \x_q_reg_n_0_[8]\,
      I3 => \x_q_reg_n_0_[9]\,
      I4 => \y_q_reg_n_0_[9]\,
      I5 => \y_q_reg_n_0_[4]\,
      O => m_axis_tuser_i_4_n_0
    );
m_axis_tuser_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \y_q_reg_n_0_[0]\,
      I1 => \y_q_reg_n_0_[1]\,
      I2 => \y_q_reg_n_0_[10]\,
      I3 => \y_q_reg_n_0_[11]\,
      I4 => m_axis_tlast_i_2_n_0,
      O => m_axis_tuser_i_5_n_0
    );
m_axis_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => take,
      D => m_axis_tuser0,
      Q => m_axis_tuser,
      R => p_0_in
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C00BEAA00000000"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => \m_axis_tdata[7]_i_4_n_0\,
      I2 => \y_q_reg_n_0_[9]\,
      I3 => \m_axis_tdata[7]_i_3_n_0\,
      I4 => m_axis_tready,
      I5 => aresetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
x_q0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => x_q0_carry_n_0,
      CO(2) => x_q0_carry_n_1,
      CO(1) => x_q0_carry_n_2,
      CO(0) => x_q0_carry_n_3,
      CYINIT => cx(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => cx(4 downto 1)
    );
\x_q0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => x_q0_carry_n_0,
      CO(3) => \x_q0_carry__0_n_0\,
      CO(2) => \x_q0_carry__0_n_1\,
      CO(1) => \x_q0_carry__0_n_2\,
      CO(0) => \x_q0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => cx(8 downto 5)
    );
\x_q0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[8]\,
      I1 => s_axis_tuser,
      O => cx(8)
    );
\x_q0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[7]\,
      I1 => s_axis_tuser,
      O => cx(7)
    );
\x_q0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[6]\,
      I1 => s_axis_tuser,
      O => cx(6)
    );
\x_q0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[5]\,
      I1 => s_axis_tuser,
      O => cx(5)
    );
\x_q0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_q0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_x_q0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \x_q0_carry__1_n_2\,
      CO(0) => \x_q0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_x_q0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => cx(11 downto 9)
    );
\x_q0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[11]\,
      I1 => s_axis_tuser,
      O => cx(11)
    );
\x_q0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[10]\,
      I1 => s_axis_tuser,
      O => cx(10)
    );
\x_q0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[9]\,
      I1 => s_axis_tuser,
      O => cx(9)
    );
x_q0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[0]\,
      I1 => s_axis_tuser,
      O => cx(0)
    );
x_q0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[4]\,
      I1 => s_axis_tuser,
      O => cx(4)
    );
x_q0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[3]\,
      I1 => s_axis_tuser,
      O => cx(3)
    );
x_q0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[2]\,
      I1 => s_axis_tuser,
      O => cx(2)
    );
x_q0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \x_q_reg_n_0_[1]\,
      I1 => s_axis_tuser,
      O => cx(1)
    );
\x_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \x_q_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\x_q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => aresetn,
      O => \x_q[11]_i_1_n_0\
    );
\x_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(0),
      Q => \x_q_reg_n_0_[0]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(10),
      Q => \x_q_reg_n_0_[10]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(11),
      Q => \x_q_reg_n_0_[11]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(1),
      Q => \x_q_reg_n_0_[1]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(2),
      Q => \x_q_reg_n_0_[2]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(3),
      Q => \x_q_reg_n_0_[3]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(4),
      Q => \x_q_reg_n_0_[4]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(5),
      Q => \x_q_reg_n_0_[5]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(6),
      Q => \x_q_reg_n_0_[6]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(7),
      Q => \x_q_reg_n_0_[7]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(8),
      Q => \x_q_reg_n_0_[8]\,
      R => \x_q[11]_i_1_n_0\
    );
\x_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => p_1_in(9),
      Q => \x_q_reg_n_0_[9]\,
      R => \x_q[11]_i_1_n_0\
    );
\y_q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[11]\,
      I1 => s_axis_tuser,
      O => cy(11)
    );
\y_q[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[10]\,
      I1 => s_axis_tuser,
      O => cy(10)
    );
\y_q[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[9]\,
      I1 => s_axis_tuser,
      O => cy(9)
    );
\y_q[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[8]\,
      I1 => s_axis_tuser,
      O => cy(8)
    );
\y_q[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[3]\,
      I1 => s_axis_tuser,
      O => cy(3)
    );
\y_q[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[2]\,
      I1 => s_axis_tuser,
      O => cy(2)
    );
\y_q[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[1]\,
      I1 => s_axis_tuser,
      O => cy(1)
    );
\y_q[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \y_q_reg_n_0_[0]\,
      I2 => s_axis_tlast,
      O => \y_q[3]_i_5_n_0\
    );
\y_q[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[7]\,
      I1 => s_axis_tuser,
      O => cy(7)
    );
\y_q[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[6]\,
      I1 => s_axis_tuser,
      O => cy(6)
    );
\y_q[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[5]\,
      I1 => s_axis_tuser,
      O => cy(5)
    );
\y_q[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \y_q_reg_n_0_[4]\,
      I1 => s_axis_tuser,
      O => cy(4)
    );
\y_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(0),
      Q => \y_q_reg_n_0_[0]\,
      R => p_0_in
    );
\y_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(10),
      Q => \y_q_reg_n_0_[10]\,
      R => p_0_in
    );
\y_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(11),
      Q => \y_q_reg_n_0_[11]\,
      R => p_0_in
    );
\y_q_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_q_reg[7]_i_1_n_0\,
      CO(3) => \NLW_y_q_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \y_q_reg[11]_i_1_n_1\,
      CO(1) => \y_q_reg[11]_i_1_n_2\,
      CO(0) => \y_q_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_q(11 downto 8),
      S(3 downto 0) => cy(11 downto 8)
    );
\y_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(1),
      Q => \y_q_reg_n_0_[1]\,
      R => p_0_in
    );
\y_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(2),
      Q => \y_q_reg_n_0_[2]\,
      R => p_0_in
    );
\y_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(3),
      Q => \y_q_reg_n_0_[3]\,
      R => p_0_in
    );
\y_q_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_q_reg[3]_i_1_n_0\,
      CO(2) => \y_q_reg[3]_i_1_n_1\,
      CO(1) => \y_q_reg[3]_i_1_n_2\,
      CO(0) => \y_q_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => s_axis_tlast,
      O(3 downto 0) => y_q(3 downto 0),
      S(3 downto 1) => cy(3 downto 1),
      S(0) => \y_q[3]_i_5_n_0\
    );
\y_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(4),
      Q => \y_q_reg_n_0_[4]\,
      R => p_0_in
    );
\y_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(5),
      Q => \y_q_reg_n_0_[5]\,
      R => p_0_in
    );
\y_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(6),
      Q => \y_q_reg_n_0_[6]\,
      R => p_0_in
    );
\y_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(7),
      Q => \y_q_reg_n_0_[7]\,
      R => p_0_in
    );
\y_q_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_q_reg[3]_i_1_n_0\,
      CO(3) => \y_q_reg[7]_i_1_n_0\,
      CO(2) => \y_q_reg[7]_i_1_n_1\,
      CO(1) => \y_q_reg[7]_i_1_n_2\,
      CO(0) => \y_q_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => y_q(7 downto 4),
      S(3 downto 0) => cy(7 downto 4)
    );
\y_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(8),
      Q => \y_q_reg_n_0_[8]\,
      R => p_0_in
    );
\y_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => y_q(9),
      Q => \y_q_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ds_128_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_ds_128_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_ds_128_0_0 : entity is "system_ds_128_0_0,ds_128,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_ds_128_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_ds_128_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_ds_128_0_0 : entity is "ds_128,Vivado 2020.2";
end system_ds_128_0_0;

architecture STRUCTURE of system_ds_128_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
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
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  s_axis_tready <= \<const1>\;
U0: entity work.system_ds_128_0_0_ds_128
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser => s_axis_tuser,
      s_axis_tvalid => s_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
