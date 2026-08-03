-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Aug  2 20:02:02 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_gray_128x128_0_0/system_gray_128x128_0_0_sim_netlist.vhdl
-- Design      : system_gray_128x128_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_gray_128x128_0_0_gray_128x128 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    cap_tuser : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    aclk : in STD_LOGIC;
    cap_tvalid : in STD_LOGIC;
    cap_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_gray_128x128_0_0_gray_128x128 : entity is "gray_128x128";
end system_gray_128x128_0_0_gray_128x128;

architecture STRUCTURE of system_gray_128x128_0_0_gray_128x128 is
  signal beat : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal gray_qq : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in_win : STD_LOGIC;
  signal lst_d1 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rd_addr_q : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \rd_addr_q[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_addr_q__0\ : STD_LOGIC;
  signal sx : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sx__0\ : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal \sx_q0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sx_q0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sx_q0_carry__0_n_0\ : STD_LOGIC;
  signal \sx_q0_carry__0_n_1\ : STD_LOGIC;
  signal \sx_q0_carry__0_n_2\ : STD_LOGIC;
  signal \sx_q0_carry__0_n_3\ : STD_LOGIC;
  signal \sx_q0_carry__1_n_2\ : STD_LOGIC;
  signal \sx_q0_carry__1_n_3\ : STD_LOGIC;
  signal sx_q0_carry_i_1_n_0 : STD_LOGIC;
  signal sx_q0_carry_i_2_n_0 : STD_LOGIC;
  signal sx_q0_carry_i_3_n_0 : STD_LOGIC;
  signal sx_q0_carry_i_4_n_0 : STD_LOGIC;
  signal sx_q0_carry_n_0 : STD_LOGIC;
  signal sx_q0_carry_n_1 : STD_LOGIC;
  signal sx_q0_carry_n_2 : STD_LOGIC;
  signal sx_q0_carry_n_3 : STD_LOGIC;
  signal \sx_q[11]_i_1_n_0\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \sx_q_reg_n_0_[9]\ : STD_LOGIC;
  signal sy : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal sy_q : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sy_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \sy_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \sy_q[3]_i_4_n_0\ : STD_LOGIC;
  signal \sy_q[3]_i_5_n_0\ : STD_LOGIC;
  signal \sy_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \sy_q[7]_i_4_n_0\ : STD_LOGIC;
  signal \sy_q[7]_i_5_n_0\ : STD_LOGIC;
  signal \sy_q_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \sy_q_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \sy_q_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \sy_q_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sy_q_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \sy_q_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \sy_q_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \sy_q_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sy_q_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sy_q_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sy_q_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \sy_q_reg_n_0_[9]\ : STD_LOGIC;
  signal usr_d1 : STD_LOGIC;
  signal vld_d1 : STD_LOGIC;
  signal vld_d1_i_1_n_0 : STD_LOGIC;
  signal vld_d2_i_1_n_0 : STD_LOGIC;
  signal win_d1 : STD_LOGIC;
  signal win_d1_i_2_n_0 : STD_LOGIC;
  signal win_d2 : STD_LOGIC;
  signal wr_addr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \wr_addr1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__0_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__0_n_1\ : STD_LOGIC;
  signal \wr_addr1_carry__0_n_2\ : STD_LOGIC;
  signal \wr_addr1_carry__0_n_3\ : STD_LOGIC;
  signal \wr_addr1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__1_n_0\ : STD_LOGIC;
  signal \wr_addr1_carry__1_n_1\ : STD_LOGIC;
  signal \wr_addr1_carry__1_n_2\ : STD_LOGIC;
  signal \wr_addr1_carry__1_n_3\ : STD_LOGIC;
  signal \wr_addr1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal wr_addr1_carry_i_1_n_0 : STD_LOGIC;
  signal wr_addr1_carry_i_2_n_0 : STD_LOGIC;
  signal wr_addr1_carry_i_3_n_0 : STD_LOGIC;
  signal wr_addr1_carry_i_4_n_0 : STD_LOGIC;
  signal wr_addr1_carry_n_0 : STD_LOGIC;
  signal wr_addr1_carry_n_1 : STD_LOGIC;
  signal wr_addr1_carry_n_2 : STD_LOGIC;
  signal wr_addr1_carry_n_3 : STD_LOGIC;
  signal \wr_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[13]_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr[13]_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr[13]_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr[13]_i_5_n_0\ : STD_LOGIC;
  signal \wr_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal wr_addr_now : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal NLW_mem_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_sx_q0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sx_q0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sy_q_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_addr1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wr_addr1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair5";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "U0/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 16383;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "U0/mem";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 16383;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 2;
  attribute ram_slice_end of mem_reg_1 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_2 : label is "";
  attribute RTL_RAM_BITS of mem_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_2 : label is "U0/mem";
  attribute RTL_RAM_TYPE of mem_reg_2 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_2 : label is 0;
  attribute ram_addr_end of mem_reg_2 : label is 16383;
  attribute ram_offset of mem_reg_2 : label is 0;
  attribute ram_slice_begin of mem_reg_2 : label is 4;
  attribute ram_slice_end of mem_reg_2 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d2";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d2";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_3 : label is "";
  attribute RTL_RAM_BITS of mem_reg_3 : label is 131072;
  attribute RTL_RAM_NAME of mem_reg_3 : label is "U0/mem";
  attribute RTL_RAM_TYPE of mem_reg_3 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_3 : label is 0;
  attribute ram_addr_end of mem_reg_3 : label is 16383;
  attribute ram_offset of mem_reg_3 : label is 0;
  attribute ram_slice_begin of mem_reg_3 : label is 6;
  attribute ram_slice_end of mem_reg_3 : label is 7;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sx_q0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sx_q0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sx_q0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sy_q_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \sy_q_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sy_q_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of vld_d1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vld_d2_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of wr_addr1_carry : label is 35;
  attribute ADDER_THRESHOLD of \wr_addr1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_addr1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_addr1_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \wr_addr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_addr[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_addr[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_addr[12]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wr_addr[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wr_addr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wr_addr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_addr[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_addr[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wr_addr[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wr_addr[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_addr[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_addr[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_addr[9]_i_1\ : label is "soft_lutpair7";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
lst_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => s_axis_tlast,
      Q => lst_d1,
      R => '0'
    );
lst_d2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aresetn,
      I1 => m_axis_tready,
      O => \rd_addr_q__0\
    );
lst_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => lst_d1,
      Q => m_axis_tlast,
      R => '0'
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_d2,
      I1 => gray_qq(7),
      O => m_axis_tdata(7)
    );
mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
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
      ADDRARDADDR(14 downto 1) => wr_addr_now(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => rd_addr_q(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => cap_tdata(1 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => gray_qq(1 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cap_tvalid,
      ENBWREN => \rd_addr_q__0\,
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => \rd_addr_q__0\,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => cap_tvalid,
      WEA(2) => cap_tvalid,
      WEA(1) => cap_tvalid,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(13),
      I1 => cap_tuser,
      O => wr_addr_now(13)
    );
mem_reg_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(4),
      I1 => cap_tuser,
      O => wr_addr_now(4)
    );
mem_reg_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(3),
      I1 => cap_tuser,
      O => wr_addr_now(3)
    );
mem_reg_0_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(2),
      I1 => cap_tuser,
      O => wr_addr_now(2)
    );
mem_reg_0_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(1),
      I1 => cap_tuser,
      O => wr_addr_now(1)
    );
mem_reg_0_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(0),
      I1 => cap_tuser,
      O => wr_addr_now(0)
    );
mem_reg_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(12),
      I1 => cap_tuser,
      O => wr_addr_now(12)
    );
mem_reg_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(11),
      I1 => cap_tuser,
      O => wr_addr_now(11)
    );
mem_reg_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(10),
      I1 => cap_tuser,
      O => wr_addr_now(10)
    );
mem_reg_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(9),
      I1 => cap_tuser,
      O => wr_addr_now(9)
    );
mem_reg_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(8),
      I1 => cap_tuser,
      O => wr_addr_now(8)
    );
mem_reg_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(7),
      I1 => cap_tuser,
      O => wr_addr_now(7)
    );
mem_reg_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(6),
      I1 => cap_tuser,
      O => wr_addr_now(6)
    );
mem_reg_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(5),
      I1 => cap_tuser,
      O => wr_addr_now(5)
    );
mem_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
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
      ADDRARDADDR(14 downto 1) => wr_addr_now(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => rd_addr_q(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => cap_tdata(3 downto 2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => gray_qq(3 downto 2),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cap_tvalid,
      ENBWREN => \rd_addr_q__0\,
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => \rd_addr_q__0\,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => cap_tvalid,
      WEA(2) => cap_tvalid,
      WEA(1) => cap_tvalid,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
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
      ADDRARDADDR(14 downto 1) => wr_addr_now(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => rd_addr_q(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_mem_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => cap_tdata(5 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_2_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => gray_qq(5 downto 4),
      DOPADOP(3 downto 0) => NLW_mem_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cap_tvalid,
      ENBWREN => \rd_addr_q__0\,
      INJECTDBITERR => NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => \rd_addr_q__0\,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => cap_tvalid,
      WEA(2) => cap_tvalid,
      WEA(1) => cap_tvalid,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
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
      ADDRARDADDR(14 downto 1) => wr_addr_now(13 downto 0),
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 1) => rd_addr_q(13 downto 0),
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_mem_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 2) => B"000000000000000000000000000000",
      DIADI(1 downto 0) => cap_tdata(7 downto 6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000011",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 2) => NLW_mem_reg_3_DOBDO_UNCONNECTED(31 downto 2),
      DOBDO(1 downto 0) => gray_qq(7 downto 6),
      DOPADOP(3 downto 0) => NLW_mem_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cap_tvalid,
      ENBWREN => \rd_addr_q__0\,
      INJECTDBITERR => NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => \rd_addr_q__0\,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => cap_tvalid,
      WEA(2) => cap_tvalid,
      WEA(1) => cap_tvalid,
      WEA(0) => '1',
      WEBWE(7 downto 0) => B"00000000"
    );
\rd_addr_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[0]\,
      I1 => s_axis_tuser,
      O => sx(0)
    );
\rd_addr_q[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => m_axis_tready,
      I2 => aresetn,
      O => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => sx(0),
      Q => rd_addr_q(0),
      R => '0'
    );
\rd_addr_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sy_q_reg_n_0_[3]\,
      Q => rd_addr_q(10),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sy_q_reg_n_0_[4]\,
      Q => rd_addr_q(11),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sy_q_reg_n_0_[5]\,
      Q => rd_addr_q(12),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sy_q_reg_n_0_[6]\,
      Q => rd_addr_q(13),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sx_q_reg_n_0_[1]\,
      Q => rd_addr_q(1),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sx_q_reg_n_0_[2]\,
      Q => rd_addr_q(2),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sx_q_reg_n_0_[3]\,
      Q => rd_addr_q(3),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sx_q_reg_n_0_[4]\,
      Q => rd_addr_q(4),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sx_q_reg_n_0_[5]\,
      Q => rd_addr_q(5),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sx_q_reg_n_0_[6]\,
      Q => rd_addr_q(6),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sy_q_reg_n_0_[0]\,
      Q => rd_addr_q(7),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sy_q_reg_n_0_[1]\,
      Q => rd_addr_q(8),
      R => \rd_addr_q[13]_i_1_n_0\
    );
\rd_addr_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => \sy_q_reg_n_0_[2]\,
      Q => rd_addr_q(9),
      R => \rd_addr_q[13]_i_1_n_0\
    );
sx_q0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sx_q0_carry_n_0,
      CO(2) => sx_q0_carry_n_1,
      CO(1) => sx_q0_carry_n_2,
      CO(0) => sx_q0_carry_n_3,
      CYINIT => sx(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3) => sx_q0_carry_i_1_n_0,
      S(2) => sx_q0_carry_i_2_n_0,
      S(1) => sx_q0_carry_i_3_n_0,
      S(0) => sx_q0_carry_i_4_n_0
    );
\sx_q0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sx_q0_carry_n_0,
      CO(3) => \sx_q0_carry__0_n_0\,
      CO(2) => \sx_q0_carry__0_n_1\,
      CO(1) => \sx_q0_carry__0_n_2\,
      CO(0) => \sx_q0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 2) => \sx__0\(8 downto 7),
      S(1) => \sx_q0_carry__0_i_3_n_0\,
      S(0) => \sx_q0_carry__0_i_4_n_0\
    );
\sx_q0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[8]\,
      I1 => s_axis_tuser,
      O => \sx__0\(8)
    );
\sx_q0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[7]\,
      I1 => s_axis_tuser,
      O => \sx__0\(7)
    );
\sx_q0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[6]\,
      I1 => s_axis_tuser,
      O => \sx_q0_carry__0_i_3_n_0\
    );
\sx_q0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[5]\,
      I1 => s_axis_tuser,
      O => \sx_q0_carry__0_i_4_n_0\
    );
\sx_q0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sx_q0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_sx_q0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sx_q0_carry__1_n_2\,
      CO(0) => \sx_q0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sx_q0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => \sx__0\(11 downto 9)
    );
\sx_q0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[11]\,
      I1 => s_axis_tuser,
      O => \sx__0\(11)
    );
\sx_q0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[10]\,
      I1 => s_axis_tuser,
      O => \sx__0\(10)
    );
\sx_q0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[9]\,
      I1 => s_axis_tuser,
      O => \sx__0\(9)
    );
sx_q0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[4]\,
      I1 => s_axis_tuser,
      O => sx_q0_carry_i_1_n_0
    );
sx_q0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[3]\,
      I1 => s_axis_tuser,
      O => sx_q0_carry_i_2_n_0
    );
sx_q0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[2]\,
      I1 => s_axis_tuser,
      O => sx_q0_carry_i_3_n_0
    );
sx_q0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sx_q_reg_n_0_[1]\,
      I1 => s_axis_tuser,
      O => sx_q0_carry_i_4_n_0
    );
\sx_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \sx_q_reg_n_0_[0]\,
      O => p_1_in(0)
    );
\sx_q[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => aresetn,
      O => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(0),
      Q => \sx_q_reg_n_0_[0]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(10),
      Q => \sx_q_reg_n_0_[10]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(11),
      Q => \sx_q_reg_n_0_[11]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(1),
      Q => \sx_q_reg_n_0_[1]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(2),
      Q => \sx_q_reg_n_0_[2]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(3),
      Q => \sx_q_reg_n_0_[3]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(4),
      Q => \sx_q_reg_n_0_[4]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(5),
      Q => \sx_q_reg_n_0_[5]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(6),
      Q => \sx_q_reg_n_0_[6]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(7),
      Q => \sx_q_reg_n_0_[7]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(8),
      Q => \sx_q_reg_n_0_[8]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sx_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => p_1_in(9),
      Q => \sx_q_reg_n_0_[9]\,
      R => \sx_q[11]_i_1_n_0\
    );
\sy_q[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\sy_q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => beat
    );
\sy_q[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[11]\,
      I1 => s_axis_tuser,
      O => sy(11)
    );
\sy_q[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[10]\,
      I1 => s_axis_tuser,
      O => sy(10)
    );
\sy_q[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[9]\,
      I1 => s_axis_tuser,
      O => sy(9)
    );
\sy_q[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[8]\,
      I1 => s_axis_tuser,
      O => sy(8)
    );
\sy_q[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[3]\,
      I1 => s_axis_tuser,
      O => \sy_q[3]_i_2_n_0\
    );
\sy_q[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[2]\,
      I1 => s_axis_tuser,
      O => \sy_q[3]_i_3_n_0\
    );
\sy_q[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[1]\,
      I1 => s_axis_tuser,
      O => \sy_q[3]_i_4_n_0\
    );
\sy_q[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => s_axis_tuser,
      I1 => \sy_q_reg_n_0_[0]\,
      I2 => s_axis_tlast,
      O => \sy_q[3]_i_5_n_0\
    );
\sy_q[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[7]\,
      I1 => s_axis_tuser,
      O => sy(7)
    );
\sy_q[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[6]\,
      I1 => s_axis_tuser,
      O => \sy_q[7]_i_3_n_0\
    );
\sy_q[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[5]\,
      I1 => s_axis_tuser,
      O => \sy_q[7]_i_4_n_0\
    );
\sy_q[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sy_q_reg_n_0_[4]\,
      I1 => s_axis_tuser,
      O => \sy_q[7]_i_5_n_0\
    );
\sy_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(0),
      Q => \sy_q_reg_n_0_[0]\,
      R => p_0_in
    );
\sy_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(10),
      Q => \sy_q_reg_n_0_[10]\,
      R => p_0_in
    );
\sy_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(11),
      Q => \sy_q_reg_n_0_[11]\,
      R => p_0_in
    );
\sy_q_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sy_q_reg[7]_i_1_n_0\,
      CO(3) => \NLW_sy_q_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \sy_q_reg[11]_i_3_n_1\,
      CO(1) => \sy_q_reg[11]_i_3_n_2\,
      CO(0) => \sy_q_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sy_q(11 downto 8),
      S(3 downto 0) => sy(11 downto 8)
    );
\sy_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(1),
      Q => \sy_q_reg_n_0_[1]\,
      R => p_0_in
    );
\sy_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(2),
      Q => \sy_q_reg_n_0_[2]\,
      R => p_0_in
    );
\sy_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(3),
      Q => \sy_q_reg_n_0_[3]\,
      R => p_0_in
    );
\sy_q_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sy_q_reg[3]_i_1_n_0\,
      CO(2) => \sy_q_reg[3]_i_1_n_1\,
      CO(1) => \sy_q_reg[3]_i_1_n_2\,
      CO(0) => \sy_q_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => s_axis_tlast,
      O(3 downto 0) => sy_q(3 downto 0),
      S(3) => \sy_q[3]_i_2_n_0\,
      S(2) => \sy_q[3]_i_3_n_0\,
      S(1) => \sy_q[3]_i_4_n_0\,
      S(0) => \sy_q[3]_i_5_n_0\
    );
\sy_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(4),
      Q => \sy_q_reg_n_0_[4]\,
      R => p_0_in
    );
\sy_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(5),
      Q => \sy_q_reg_n_0_[5]\,
      R => p_0_in
    );
\sy_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(6),
      Q => \sy_q_reg_n_0_[6]\,
      R => p_0_in
    );
\sy_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(7),
      Q => \sy_q_reg_n_0_[7]\,
      R => p_0_in
    );
\sy_q_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sy_q_reg[3]_i_1_n_0\,
      CO(3) => \sy_q_reg[7]_i_1_n_0\,
      CO(2) => \sy_q_reg[7]_i_1_n_1\,
      CO(1) => \sy_q_reg[7]_i_1_n_2\,
      CO(0) => \sy_q_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sy_q(7 downto 4),
      S(3) => sy(7),
      S(2) => \sy_q[7]_i_3_n_0\,
      S(1) => \sy_q[7]_i_4_n_0\,
      S(0) => \sy_q[7]_i_5_n_0\
    );
\sy_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(8),
      Q => \sy_q_reg_n_0_[8]\,
      R => p_0_in
    );
\sy_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => beat,
      D => sy_q(9),
      Q => \sy_q_reg_n_0_[9]\,
      R => p_0_in
    );
usr_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => s_axis_tuser,
      Q => usr_d1,
      R => '0'
    );
usr_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => usr_d1,
      Q => m_axis_tuser,
      R => '0'
    );
vld_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => vld_d1,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      I3 => aresetn,
      O => vld_d1_i_1_n_0
    );
vld_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => vld_d1_i_1_n_0,
      Q => vld_d1,
      R => '0'
    );
vld_d2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      I2 => vld_d1,
      I3 => aresetn,
      O => vld_d2_i_1_n_0
    );
vld_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => vld_d2_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
win_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => win_d1_i_2_n_0,
      I1 => \sx_q_reg_n_0_[8]\,
      I2 => \sx_q_reg_n_0_[7]\,
      I3 => \sx_q_reg_n_0_[10]\,
      I4 => \sx_q_reg_n_0_[9]\,
      I5 => s_axis_tuser,
      O => in_win
    );
win_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sy_q_reg_n_0_[8]\,
      I1 => \sy_q_reg_n_0_[9]\,
      I2 => \sx_q_reg_n_0_[11]\,
      I3 => \sy_q_reg_n_0_[7]\,
      I4 => \sy_q_reg_n_0_[11]\,
      I5 => \sy_q_reg_n_0_[10]\,
      O => win_d1_i_2_n_0
    );
win_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => in_win,
      Q => win_d1,
      R => '0'
    );
win_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rd_addr_q__0\,
      D => win_d1,
      Q => win_d2,
      R => '0'
    );
wr_addr1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wr_addr1_carry_n_0,
      CO(2) => wr_addr1_carry_n_1,
      CO(1) => wr_addr1_carry_n_2,
      CO(0) => wr_addr1_carry_n_3,
      CYINIT => wr_addr_now(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => wr_addr1_carry_i_1_n_0,
      S(2) => wr_addr1_carry_i_2_n_0,
      S(1) => wr_addr1_carry_i_3_n_0,
      S(0) => wr_addr1_carry_i_4_n_0
    );
\wr_addr1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wr_addr1_carry_n_0,
      CO(3) => \wr_addr1_carry__0_n_0\,
      CO(2) => \wr_addr1_carry__0_n_1\,
      CO(1) => \wr_addr1_carry__0_n_2\,
      CO(0) => \wr_addr1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \wr_addr1_carry__0_i_1_n_0\,
      S(2) => \wr_addr1_carry__0_i_2_n_0\,
      S(1) => \wr_addr1_carry__0_i_3_n_0\,
      S(0) => \wr_addr1_carry__0_i_4_n_0\
    );
\wr_addr1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(8),
      I1 => cap_tuser,
      O => \wr_addr1_carry__0_i_1_n_0\
    );
\wr_addr1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(7),
      I1 => cap_tuser,
      O => \wr_addr1_carry__0_i_2_n_0\
    );
\wr_addr1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(6),
      I1 => cap_tuser,
      O => \wr_addr1_carry__0_i_3_n_0\
    );
\wr_addr1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(5),
      I1 => cap_tuser,
      O => \wr_addr1_carry__0_i_4_n_0\
    );
\wr_addr1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr1_carry__0_n_0\,
      CO(3) => \wr_addr1_carry__1_n_0\,
      CO(2) => \wr_addr1_carry__1_n_1\,
      CO(1) => \wr_addr1_carry__1_n_2\,
      CO(0) => \wr_addr1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \wr_addr1_carry__1_i_1_n_0\,
      S(2) => \wr_addr1_carry__1_i_2_n_0\,
      S(1) => \wr_addr1_carry__1_i_3_n_0\,
      S(0) => \wr_addr1_carry__1_i_4_n_0\
    );
\wr_addr1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(12),
      I1 => cap_tuser,
      O => \wr_addr1_carry__1_i_1_n_0\
    );
\wr_addr1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(11),
      I1 => cap_tuser,
      O => \wr_addr1_carry__1_i_2_n_0\
    );
\wr_addr1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(10),
      I1 => cap_tuser,
      O => \wr_addr1_carry__1_i_3_n_0\
    );
\wr_addr1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(9),
      I1 => cap_tuser,
      O => \wr_addr1_carry__1_i_4_n_0\
    );
\wr_addr1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr1_carry__1_n_0\,
      CO(3 downto 0) => \NLW_wr_addr1_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wr_addr1_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => \wr_addr1_carry__2_i_1_n_0\
    );
\wr_addr1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(13),
      I1 => cap_tuser,
      O => \wr_addr1_carry__2_i_1_n_0\
    );
wr_addr1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(4),
      I1 => cap_tuser,
      O => wr_addr1_carry_i_1_n_0
    );
wr_addr1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(3),
      I1 => cap_tuser,
      O => wr_addr1_carry_i_2_n_0
    );
wr_addr1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(2),
      I1 => cap_tuser,
      O => wr_addr1_carry_i_3_n_0
    );
wr_addr1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_addr(1),
      I1 => cap_tuser,
      O => wr_addr1_carry_i_4_n_0
    );
\wr_addr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \wr_addr[13]_i_2_n_0\,
      I1 => cap_tuser,
      I2 => wr_addr(0),
      O => \wr_addr[0]_i_1_n_0\
    );
\wr_addr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(10),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[10]_i_1_n_0\
    );
\wr_addr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(11),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[11]_i_1_n_0\
    );
\wr_addr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(12),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[12]_i_1_n_0\
    );
\wr_addr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(13),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[13]_i_1_n_0\
    );
\wr_addr[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \wr_addr[13]_i_3_n_0\,
      I1 => wr_addr(12),
      I2 => cap_tuser,
      I3 => wr_addr(13),
      I4 => \wr_addr[13]_i_4_n_0\,
      I5 => \wr_addr[13]_i_5_n_0\,
      O => \wr_addr[13]_i_2_n_0\
    );
\wr_addr[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => wr_addr(10),
      I1 => wr_addr(11),
      I2 => wr_addr(8),
      I3 => cap_tuser,
      I4 => wr_addr(9),
      O => \wr_addr[13]_i_3_n_0\
    );
\wr_addr[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => wr_addr(2),
      I1 => wr_addr(3),
      I2 => wr_addr(0),
      I3 => cap_tuser,
      I4 => wr_addr(1),
      O => \wr_addr[13]_i_4_n_0\
    );
\wr_addr[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => wr_addr(6),
      I1 => wr_addr(7),
      I2 => wr_addr(4),
      I3 => cap_tuser,
      I4 => wr_addr(5),
      O => \wr_addr[13]_i_5_n_0\
    );
\wr_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(1),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[1]_i_1_n_0\
    );
\wr_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(2),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[2]_i_1_n_0\
    );
\wr_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(3),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[3]_i_1_n_0\
    );
\wr_addr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(4),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[4]_i_1_n_0\
    );
\wr_addr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(5),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[5]_i_1_n_0\
    );
\wr_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(6),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[6]_i_1_n_0\
    );
\wr_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(7),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[7]_i_1_n_0\
    );
\wr_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(8),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[8]_i_1_n_0\
    );
\wr_addr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(9),
      I1 => \wr_addr[13]_i_2_n_0\,
      O => \wr_addr[9]_i_1_n_0\
    );
\wr_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[0]_i_1_n_0\,
      Q => wr_addr(0),
      R => p_0_in
    );
\wr_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[10]_i_1_n_0\,
      Q => wr_addr(10),
      R => p_0_in
    );
\wr_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[11]_i_1_n_0\,
      Q => wr_addr(11),
      R => p_0_in
    );
\wr_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[12]_i_1_n_0\,
      Q => wr_addr(12),
      R => p_0_in
    );
\wr_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[13]_i_1_n_0\,
      Q => wr_addr(13),
      R => p_0_in
    );
\wr_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[1]_i_1_n_0\,
      Q => wr_addr(1),
      R => p_0_in
    );
\wr_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[2]_i_1_n_0\,
      Q => wr_addr(2),
      R => p_0_in
    );
\wr_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[3]_i_1_n_0\,
      Q => wr_addr(3),
      R => p_0_in
    );
\wr_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[4]_i_1_n_0\,
      Q => wr_addr(4),
      R => p_0_in
    );
\wr_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[5]_i_1_n_0\,
      Q => wr_addr(5),
      R => p_0_in
    );
\wr_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[6]_i_1_n_0\,
      Q => wr_addr(6),
      R => p_0_in
    );
\wr_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[7]_i_1_n_0\,
      Q => wr_addr(7),
      R => p_0_in
    );
\wr_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[8]_i_1_n_0\,
      Q => wr_addr(8),
      R => p_0_in
    );
\wr_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => cap_tvalid,
      D => \wr_addr[9]_i_1_n_0\,
      Q => wr_addr(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_gray_128x128_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cap_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cap_tvalid : in STD_LOGIC;
    cap_tready : out STD_LOGIC;
    cap_tlast : in STD_LOGIC;
    cap_tuser : in STD_LOGIC;
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
  attribute NotValidForBitStream of system_gray_128x128_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_gray_128x128_0_0 : entity is "system_gray_128x128_0_0,gray_128x128,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_gray_128x128_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_gray_128x128_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_gray_128x128_0_0 : entity is "gray_128x128,Vivado 2020.2";
end system_gray_128x128_0_0;

architecture STRUCTURE of system_gray_128x128_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axis_tready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cap:m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of cap_tlast : signal is "xilinx.com:interface:axis:1.0 cap TLAST";
  attribute x_interface_info of cap_tready : signal is "xilinx.com:interface:axis:1.0 cap TREADY";
  attribute x_interface_info of cap_tuser : signal is "xilinx.com:interface:axis:1.0 cap TUSER";
  attribute x_interface_info of cap_tvalid : signal is "xilinx.com:interface:axis:1.0 cap TVALID";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis TUSER";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis TUSER";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of cap_tdata : signal is "xilinx.com:interface:axis:1.0 cap TDATA";
  attribute x_interface_parameter of cap_tdata : signal is "XIL_INTERFACENAME cap, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^m_axis_tready\ <= m_axis_tready;
  cap_tready <= \<const1>\;
  m_axis_tdata(23 downto 16) <= \^m_axis_tdata\(7 downto 0);
  m_axis_tdata(15 downto 8) <= \^m_axis_tdata\(7 downto 0);
  m_axis_tdata(7 downto 0) <= \^m_axis_tdata\(7 downto 0);
  s_axis_tready <= \^m_axis_tready\;
U0: entity work.system_gray_128x128_0_0_gray_128x128
     port map (
      aclk => aclk,
      aresetn => aresetn,
      cap_tdata(7 downto 0) => cap_tdata(7 downto 0),
      cap_tuser => cap_tuser,
      cap_tvalid => cap_tvalid,
      m_axis_tdata(7 downto 0) => \^m_axis_tdata\(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tlast => s_axis_tlast,
      s_axis_tuser => s_axis_tuser,
      s_axis_tvalid => s_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
