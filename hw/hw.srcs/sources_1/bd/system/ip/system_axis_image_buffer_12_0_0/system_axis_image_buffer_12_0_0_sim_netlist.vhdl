-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Jul 30 17:42:36 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Final_Team_Project/hw/hw.srcs/sources_1/bd/system/ip/system_axis_image_buffer_12_0_0/system_axis_image_buffer_12_0_0_sim_netlist.vhdl
-- Design      : system_axis_image_buffer_12_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axis_image_buffer_12_0_0_axis_image_buffer_128x128 is
  port (
    cnn_read_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_done : out STD_LOGIC;
    cnn_read_enable : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cnn_busy : in STD_LOGIC;
    aclk : in STD_LOGIC;
    cnn_read_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axis_image_buffer_12_0_0_axis_image_buffer_128x128 : entity is "axis_image_buffer_128x128";
end system_axis_image_buffer_12_0_0_axis_image_buffer_128x128;

architecture STRUCTURE of system_axis_image_buffer_12_0_0_axis_image_buffer_128x128 is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal buffer_write_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal buffer_write_enable : STD_LOGIC;
  signal frame_done_i_1_n_0 : STD_LOGIC;
  signal frame_done_i_2_n_0 : STD_LOGIC;
  signal frame_done_i_3_n_0 : STD_LOGIC;
  signal image_buffer_reg_3_i_2_n_0 : STD_LOGIC;
  signal image_buffer_reg_3_i_3_n_0 : STD_LOGIC;
  signal image_buffer_reg_3_i_7_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \write_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_x[0]_i_2_n_0\ : STD_LOGIC;
  signal \write_x[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_x[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_x[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_2_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_3_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_4_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_5_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_6_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_7_n_0\ : STD_LOGIC;
  signal \write_x[6]_i_8_n_0\ : STD_LOGIC;
  signal write_y0_carry_i_1_n_0 : STD_LOGIC;
  signal write_y0_carry_i_2_n_0 : STD_LOGIC;
  signal write_y0_carry_i_3_n_0 : STD_LOGIC;
  signal write_y0_carry_i_4_n_0 : STD_LOGIC;
  signal write_y0_carry_i_5_n_0 : STD_LOGIC;
  signal write_y0_carry_n_2 : STD_LOGIC;
  signal write_y0_carry_n_3 : STD_LOGIC;
  signal \write_y[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_y[0]_i_2_n_0\ : STD_LOGIC;
  signal \write_y[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_y[1]_i_2_n_0\ : STD_LOGIC;
  signal \write_y[1]_i_3_n_0\ : STD_LOGIC;
  signal NLW_image_buffer_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_image_buffer_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_image_buffer_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_image_buffer_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_image_buffer_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_image_buffer_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_image_buffer_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_image_buffer_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_image_buffer_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_image_buffer_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_image_buffer_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_image_buffer_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_image_buffer_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_image_buffer_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_image_buffer_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_image_buffer_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_image_buffer_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_image_buffer_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_write_y0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_write_y0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "WAIT_SOF:001,FRAME_READY:011,WAIT_CNN:100,CAPTURE:010,WAIT_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "WAIT_SOF:001,FRAME_READY:011,WAIT_CNN:100,CAPTURE:010,WAIT_IDLE:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "WAIT_SOF:001,FRAME_READY:011,WAIT_CNN:100,CAPTURE:010,WAIT_IDLE:000";
  attribute SOFT_HLUTNM of frame_done_i_3 : label is "soft_lutpair3";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of image_buffer_reg_0 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of image_buffer_reg_0 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of image_buffer_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of image_buffer_reg_0 : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of image_buffer_reg_0 : label is "U0/image_buffer";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of image_buffer_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of image_buffer_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of image_buffer_reg_0 : label is 16383;
  attribute ram_offset : integer;
  attribute ram_offset of image_buffer_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of image_buffer_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of image_buffer_reg_0 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of image_buffer_reg_1 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of image_buffer_reg_1 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of image_buffer_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of image_buffer_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of image_buffer_reg_1 : label is "U0/image_buffer";
  attribute RTL_RAM_TYPE of image_buffer_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of image_buffer_reg_1 : label is 0;
  attribute ram_addr_end of image_buffer_reg_1 : label is 16383;
  attribute ram_offset of image_buffer_reg_1 : label is 0;
  attribute ram_slice_begin of image_buffer_reg_1 : label is 2;
  attribute ram_slice_end of image_buffer_reg_1 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of image_buffer_reg_2 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of image_buffer_reg_2 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of image_buffer_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of image_buffer_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of image_buffer_reg_2 : label is "U0/image_buffer";
  attribute RTL_RAM_TYPE of image_buffer_reg_2 : label is "RAM_SDP";
  attribute ram_addr_begin of image_buffer_reg_2 : label is 0;
  attribute ram_addr_end of image_buffer_reg_2 : label is 16383;
  attribute ram_offset of image_buffer_reg_2 : label is 0;
  attribute ram_slice_begin of image_buffer_reg_2 : label is 4;
  attribute ram_slice_end of image_buffer_reg_2 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of image_buffer_reg_3 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of image_buffer_reg_3 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of image_buffer_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of image_buffer_reg_3 : label is 131072;
  attribute RTL_RAM_NAME of image_buffer_reg_3 : label is "U0/image_buffer";
  attribute RTL_RAM_TYPE of image_buffer_reg_3 : label is "RAM_SDP";
  attribute ram_addr_begin of image_buffer_reg_3 : label is 0;
  attribute ram_addr_end of image_buffer_reg_3 : label is 16383;
  attribute ram_offset of image_buffer_reg_3 : label is 0;
  attribute ram_slice_begin of image_buffer_reg_3 : label is 6;
  attribute ram_slice_end of image_buffer_reg_3 : label is 7;
  attribute SOFT_HLUTNM of \write_x[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_x[6]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_x[6]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \write_x[6]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_x[6]_i_7\ : label is "soft_lutpair4";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of write_y0_carry : label is 11;
  attribute SOFT_HLUTNM of \write_y[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_y[1]_i_3\ : label is "soft_lutpair1";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26660000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => state,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => aresetn,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222A226A00000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => state,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => cnn_busy,
      I5 => aresetn,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"62220000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => state,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => aresetn,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0400"
    )
        port map (
      I0 => write_y0_carry_i_1_n_0,
      I1 => \write_x[6]_i_5_n_0\,
      I2 => \write_x[6]_i_6_n_0\,
      I3 => frame_done_i_3_n_0,
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => \write_y[1]_i_3_n_0\,
      O => state
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0FF000FF0FF8F"
    )
        port map (
      I0 => s_axis_video_tuser,
      I1 => s_axis_video_tvalid,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => cnn_busy,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2),
      R => '0'
    );
frame_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400FFFF00000000"
    )
        port map (
      I0 => cnn_busy,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => frame_done_i_2_n_0,
      I5 => aresetn,
      O => frame_done_i_1_n_0
    );
frame_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_y0_carry_i_1_n_0,
      I1 => \write_x[6]_i_5_n_0\,
      I2 => p_0_in(5),
      I3 => p_0_in(4),
      I4 => p_0_in(6),
      I5 => frame_done_i_3_n_0,
      O => frame_done_i_2_n_0
    );
frame_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      O => frame_done_i_3_n_0
    );
frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => frame_done_i_1_n_0,
      Q => frame_done,
      R => '0'
    );
image_buffer_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => buffer_write_addr(13),
      ADDRARDADDR(13) => buffer_write_addr(13),
      ADDRARDADDR(12) => buffer_write_addr(13),
      ADDRARDADDR(11) => buffer_write_addr(13),
      ADDRARDADDR(10) => buffer_write_addr(13),
      ADDRARDADDR(9) => buffer_write_addr(13),
      ADDRARDADDR(8 downto 7) => buffer_write_addr(7 downto 6),
      ADDRARDADDR(6) => image_buffer_reg_3_i_7_n_0,
      ADDRARDADDR(5 downto 1) => buffer_write_addr(4 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => cnn_read_addr(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_image_buffer_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_image_buffer_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_image_buffer_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axis_video_tdata(1 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_image_buffer_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_image_buffer_reg_0_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => cnn_read_data(1 downto 0),
      DOPADOP(3 downto 0) => NLW_image_buffer_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_image_buffer_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_image_buffer_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => buffer_write_enable,
      ENBWREN => image_buffer_reg_3_i_2_n_0,
      INJECTDBITERR => NLW_image_buffer_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_image_buffer_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_image_buffer_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => image_buffer_reg_3_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_image_buffer_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => aresetn,
      WEA(2) => aresetn,
      WEA(1) => aresetn,
      WEA(0) => aresetn,
      WEBWE(7 downto 0) => B"00000000"
    );
image_buffer_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => buffer_write_addr(13),
      ADDRARDADDR(13) => buffer_write_addr(13),
      ADDRARDADDR(12) => buffer_write_addr(13),
      ADDRARDADDR(11) => buffer_write_addr(13),
      ADDRARDADDR(10) => buffer_write_addr(13),
      ADDRARDADDR(9) => buffer_write_addr(13),
      ADDRARDADDR(8 downto 7) => buffer_write_addr(7 downto 6),
      ADDRARDADDR(6) => image_buffer_reg_3_i_7_n_0,
      ADDRARDADDR(5 downto 1) => buffer_write_addr(4 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => cnn_read_addr(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_image_buffer_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_image_buffer_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_image_buffer_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axis_video_tdata(3 downto 2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_image_buffer_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_image_buffer_reg_1_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => cnn_read_data(3 downto 2),
      DOPADOP(3 downto 0) => NLW_image_buffer_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_image_buffer_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_image_buffer_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => buffer_write_enable,
      ENBWREN => image_buffer_reg_3_i_2_n_0,
      INJECTDBITERR => NLW_image_buffer_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_image_buffer_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_image_buffer_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => image_buffer_reg_3_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_image_buffer_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => aresetn,
      WEA(2) => aresetn,
      WEA(1) => aresetn,
      WEA(0) => aresetn,
      WEBWE(7 downto 0) => B"00000000"
    );
image_buffer_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => buffer_write_addr(13),
      ADDRARDADDR(13) => buffer_write_addr(13),
      ADDRARDADDR(12) => buffer_write_addr(13),
      ADDRARDADDR(11) => buffer_write_addr(13),
      ADDRARDADDR(10) => buffer_write_addr(13),
      ADDRARDADDR(9) => buffer_write_addr(13),
      ADDRARDADDR(8 downto 7) => buffer_write_addr(7 downto 6),
      ADDRARDADDR(6) => image_buffer_reg_3_i_7_n_0,
      ADDRARDADDR(5 downto 1) => buffer_write_addr(4 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => cnn_read_addr(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_image_buffer_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_image_buffer_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_image_buffer_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axis_video_tdata(5 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_image_buffer_reg_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_image_buffer_reg_2_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => cnn_read_data(5 downto 4),
      DOPADOP(3 downto 0) => NLW_image_buffer_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_image_buffer_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_image_buffer_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => buffer_write_enable,
      ENBWREN => image_buffer_reg_3_i_2_n_0,
      INJECTDBITERR => NLW_image_buffer_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_image_buffer_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_image_buffer_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => image_buffer_reg_3_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_image_buffer_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => aresetn,
      WEA(2) => aresetn,
      WEA(1) => aresetn,
      WEA(0) => aresetn,
      WEBWE(7 downto 0) => B"00000000"
    );
image_buffer_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => buffer_write_addr(13),
      ADDRARDADDR(13) => buffer_write_addr(13),
      ADDRARDADDR(12) => buffer_write_addr(13),
      ADDRARDADDR(11) => buffer_write_addr(13),
      ADDRARDADDR(10) => buffer_write_addr(13),
      ADDRARDADDR(9) => buffer_write_addr(13),
      ADDRARDADDR(8 downto 7) => buffer_write_addr(7 downto 6),
      ADDRARDADDR(6) => image_buffer_reg_3_i_7_n_0,
      ADDRARDADDR(5 downto 1) => buffer_write_addr(4 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => cnn_read_addr(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_image_buffer_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_image_buffer_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_image_buffer_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => s_axis_video_tdata(7 downto 6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_image_buffer_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_image_buffer_reg_3_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => cnn_read_data(7 downto 6),
      DOPADOP(3 downto 0) => NLW_image_buffer_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_image_buffer_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_image_buffer_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => buffer_write_enable,
      ENBWREN => image_buffer_reg_3_i_2_n_0,
      INJECTDBITERR => NLW_image_buffer_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_image_buffer_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_image_buffer_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => image_buffer_reg_3_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_image_buffer_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => aresetn,
      WEA(2) => aresetn,
      WEA(1) => aresetn,
      WEA(0) => aresetn,
      WEBWE(7 downto 0) => B"00000000"
    );
image_buffer_reg_3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06000400"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => s_axis_video_tvalid,
      I4 => s_axis_video_tuser,
      O => buffer_write_enable
    );
image_buffer_reg_3_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(2)
    );
image_buffer_reg_3_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(1)
    );
image_buffer_reg_3_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(0)
    );
image_buffer_reg_3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cnn_read_enable,
      I1 => aresetn,
      O => image_buffer_reg_3_i_2_n_0
    );
image_buffer_reg_3_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => image_buffer_reg_3_i_3_n_0
    );
image_buffer_reg_3_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(13)
    );
image_buffer_reg_3_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(7)
    );
image_buffer_reg_3_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(6)
    );
image_buffer_reg_3_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => p_0_in(5),
      O => image_buffer_reg_3_i_7_n_0
    );
image_buffer_reg_3_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(4)
    );
image_buffer_reg_3_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => buffer_write_addr(3)
    );
\write_x[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003022320C3C0030"
    )
        port map (
      I0 => \write_x[0]_i_2_n_0\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => p_0_in(0),
      I4 => cnn_busy,
      I5 => \state__0\(0),
      O => \write_x[0]_i_1_n_0\
    );
\write_x[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_tvalid,
      I1 => s_axis_video_tuser,
      O => \write_x[0]_i_2_n_0\
    );
\write_x[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003030008080808"
    )
        port map (
      I0 => cnn_busy,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \state__0\(1),
      O => \write_x[1]_i_1_n_0\
    );
\write_x[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2888AAAA"
    )
        port map (
      I0 => \write_x[5]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => \state__0\(1),
      O => \write_x[2]_i_1_n_0\
    );
\write_x[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AA2A2A2A2A2A2A2"
    )
        port map (
      I0 => \write_x[5]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => p_0_in(3),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => p_0_in(2),
      O => \write_x[3]_i_1_n_0\
    );
\write_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003030008080808"
    )
        port map (
      I0 => cnn_busy,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => p_0_in(4),
      I4 => \write_x[6]_i_5_n_0\,
      I5 => \state__0\(1),
      O => \write_x[4]_i_1_n_0\
    );
\write_x[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DDD0000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => p_0_in(5),
      I2 => \write_x[6]_i_5_n_0\,
      I3 => p_0_in(4),
      I4 => \write_x[5]_i_2_n_0\,
      O => \write_x[5]_i_1_n_0\
    );
\write_x[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1410"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => cnn_busy,
      O => \write_x[5]_i_2_n_0\
    );
\write_x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888AAAAA8AA"
    )
        port map (
      I0 => \write_x[6]_i_3_n_0\,
      I1 => \write_x[6]_i_4_n_0\,
      I2 => write_y0_carry_i_1_n_0,
      I3 => \write_x[6]_i_5_n_0\,
      I4 => \write_x[6]_i_6_n_0\,
      I5 => \write_x[6]_i_7_n_0\,
      O => \write_x[6]_i_1_n_0\
    );
\write_x[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F09900"
    )
        port map (
      I0 => \write_x[6]_i_8_n_0\,
      I1 => p_0_in(6),
      I2 => cnn_busy,
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      I5 => \state__0\(0),
      O => \write_x[6]_i_2_n_0\
    );
\write_x[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => \write_x[6]_i_3_n_0\
    );
\write_x[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => cnn_busy,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => \write_x[6]_i_4_n_0\
    );
\write_x[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      O => \write_x[6]_i_5_n_0\
    );
\write_x[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      O => \write_x[6]_i_6_n_0\
    );
\write_x[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state__0\(2),
      I1 => s_axis_video_tvalid,
      O => \write_x[6]_i_7_n_0\
    );
\write_x[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => p_0_in(2),
      I4 => p_0_in(4),
      I5 => p_0_in(5),
      O => \write_x[6]_i_8_n_0\
    );
\write_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_x[6]_i_1_n_0\,
      D => \write_x[0]_i_1_n_0\,
      Q => p_0_in(0),
      R => image_buffer_reg_3_i_3_n_0
    );
\write_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_x[6]_i_1_n_0\,
      D => \write_x[1]_i_1_n_0\,
      Q => p_0_in(1),
      R => image_buffer_reg_3_i_3_n_0
    );
\write_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_x[6]_i_1_n_0\,
      D => \write_x[2]_i_1_n_0\,
      Q => p_0_in(2),
      R => image_buffer_reg_3_i_3_n_0
    );
\write_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_x[6]_i_1_n_0\,
      D => \write_x[3]_i_1_n_0\,
      Q => p_0_in(3),
      R => image_buffer_reg_3_i_3_n_0
    );
\write_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_x[6]_i_1_n_0\,
      D => \write_x[4]_i_1_n_0\,
      Q => p_0_in(4),
      R => image_buffer_reg_3_i_3_n_0
    );
\write_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_x[6]_i_1_n_0\,
      D => \write_x[5]_i_1_n_0\,
      Q => p_0_in(5),
      R => image_buffer_reg_3_i_3_n_0
    );
\write_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_x[6]_i_1_n_0\,
      D => \write_x[6]_i_2_n_0\,
      Q => p_0_in(6),
      R => image_buffer_reg_3_i_3_n_0
    );
write_y0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_write_y0_carry_CO_UNCONNECTED(3),
      CO(2) => p_1_in,
      CO(1) => write_y0_carry_n_2,
      CO(0) => write_y0_carry_n_3,
      CYINIT => write_y0_carry_i_1_n_0,
      DI(3) => '0',
      DI(2) => write_y0_carry_i_2_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_write_y0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => write_y0_carry_i_3_n_0,
      S(1) => write_y0_carry_i_4_n_0,
      S(0) => write_y0_carry_i_5_n_0
    );
write_y0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(7),
      O => write_y0_carry_i_1_n_0
    );
write_y0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(8),
      O => write_y0_carry_i_2_n_0
    );
write_y0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(7),
      O => write_y0_carry_i_3_n_0
    );
write_y0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(7),
      O => write_y0_carry_i_4_n_0
    );
write_y0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(8),
      I1 => p_0_in(7),
      O => write_y0_carry_i_5_n_0
    );
\write_y[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE2E222200000000"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \write_y[0]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => p_1_in,
      I4 => \write_x[5]_i_2_n_0\,
      I5 => aresetn,
      O => \write_y[0]_i_1_n_0\
    );
\write_y[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000F040F000"
    )
        port map (
      I0 => \write_x[6]_i_7_n_0\,
      I1 => write_y0_carry_i_1_n_0,
      I2 => \write_x[6]_i_3_n_0\,
      I3 => \write_x[6]_i_4_n_0\,
      I4 => \write_x[6]_i_5_n_0\,
      I5 => \write_x[6]_i_6_n_0\,
      O => \write_y[0]_i_2_n_0\
    );
\write_y[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAA02AA00000000"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \write_y[1]_i_2_n_0\,
      I2 => \write_x[6]_i_4_n_0\,
      I3 => \write_x[6]_i_1_n_0\,
      I4 => \write_y[1]_i_3_n_0\,
      I5 => aresetn,
      O => \write_y[1]_i_1_n_0\
    );
\write_y[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \write_x[6]_i_5_n_0\,
      I1 => p_0_in(5),
      I2 => p_0_in(4),
      I3 => p_0_in(6),
      O => \write_y[1]_i_2_n_0\
    );
\write_y[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => cnn_busy,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \write_y[1]_i_3_n_0\
    );
\write_y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_y[0]_i_1_n_0\,
      Q => p_0_in(7),
      R => '0'
    );
\write_y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \write_y[1]_i_1_n_0\,
      Q => p_0_in(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axis_image_buffer_12_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axis_image_buffer_12_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axis_image_buffer_12_0_0 : entity is "system_axis_image_buffer_12_0_0,axis_image_buffer_128x128,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_axis_image_buffer_12_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_axis_image_buffer_12_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_axis_image_buffer_12_0_0 : entity is "axis_image_buffer_128x128,Vivado 2020.2";
end system_axis_image_buffer_12_0_0;

architecture STRUCTURE of system_axis_image_buffer_12_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_video TLAST";
  attribute x_interface_info of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_video TREADY";
  attribute x_interface_info of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_video TUSER";
  attribute x_interface_info of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_video TVALID";
  attribute x_interface_info of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDATA";
  attribute x_interface_parameter of s_axis_video_tdata : signal is "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  s_axis_video_tready <= \<const1>\;
U0: entity work.system_axis_image_buffer_12_0_0_axis_image_buffer_128x128
     port map (
      aclk => aclk,
      aresetn => aresetn,
      cnn_busy => cnn_busy,
      cnn_read_addr(13 downto 0) => cnn_read_addr(13 downto 0),
      cnn_read_data(7 downto 0) => cnn_read_data(7 downto 0),
      cnn_read_enable => cnn_read_enable,
      frame_done => frame_done,
      s_axis_video_tdata(7 downto 0) => s_axis_video_tdata(7 downto 0),
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tvalid => s_axis_video_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
