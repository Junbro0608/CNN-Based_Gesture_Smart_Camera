-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Jul 31 17:46:38 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/hw/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.vhdl
-- Design      : system_MIPI_CSI_2_RX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_ECC is
  port (
    sValid_reg_0 : out STD_LOGIC;
    sError_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_sState_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sHeaderOut_reg[5]_0\ : out STD_LOGIC;
    mReg_Tuser0 : out STD_LOGIC;
    m_axis_tready : out STD_LOGIC;
    \goreg_dm.dout_i_reg[0]\ : out STD_LOGIC;
    mIsHeader0 : out STD_LOGIC;
    mKeep0_out : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sValid_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sValid_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sValid_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \sErrSyndrome_reg[0]_0\ : out STD_LOGIC;
    \sErrSyndrome_reg[4]_0\ : out STD_LOGIC;
    sValid_reg_4 : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    sError_reg_1 : in STD_LOGIC;
    \mWordCount_reg[3]\ : in STD_LOGIC;
    \mWordCount_reg[3]_0\ : in STD_LOGIC;
    \mWordCount_reg[7]\ : in STD_LOGIC;
    \mWordCount_reg[7]_0\ : in STD_LOGIC;
    \mWordCount_reg[7]_1\ : in STD_LOGIC;
    \mWordCount_reg[7]_2\ : in STD_LOGIC;
    \mWordCount_reg[11]\ : in STD_LOGIC;
    \mWordCount_reg[11]_0\ : in STD_LOGIC;
    \mWordCount_reg[11]_1\ : in STD_LOGIC;
    \mWordCount_reg[11]_2\ : in STD_LOGIC;
    \mWordCount_reg[15]\ : in STD_LOGIC;
    \mWordCount_reg[15]_0\ : in STD_LOGIC;
    \mWordCount_reg[15]_1\ : in STD_LOGIC;
    m_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : in STD_LOGIC;
    \sECCIn_reg[0]_0\ : in STD_LOGIC;
    \mWordCount_reg[0]\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    mFlush_reg : in STD_LOGIC;
    mFlush_reg_0 : in STD_LOGIC;
    m_axis_tlast : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mWordCount_reg[15]_2\ : in STD_LOGIC;
    \mWordCount_reg[3]_1\ : in STD_LOGIC;
    \mWordCount_reg[3]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_ECC : entity is "ECC";
end system_MIPI_CSI_2_RX_0_0_ECC;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_ECC is
  signal \FSM_onehot_sState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sState[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_sstate_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_sState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_sState_reg_n_0_[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mFlush_i_2_n_0 : STD_LOGIC;
  signal \^misheader0\ : STD_LOGIC;
  signal mKeep_i_3_n_0 : STD_LOGIC;
  signal \mReg_Tuser[0]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_10_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_11_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[0]_i_9_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[12]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[4]_i_9_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_3_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_4_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_5_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_6_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_7_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_8_n_0\ : STD_LOGIC;
  signal \mWordCount[8]_i_9_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \mWordCount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \mWordCount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \sDataIn[23]_i_1_n_0\ : STD_LOGIC;
  signal sErrSyndrome : STD_LOGIC;
  signal sErrSyndrome0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sErrSyndrome[0]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[1]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[1]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[2]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[2]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[3]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[3]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[4]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[4]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[5]_i_2_n_0\ : STD_LOGIC;
  signal \sErrSyndrome[5]_i_3_n_0\ : STD_LOGIC;
  signal \sErrSyndrome_reg_n_0_[4]\ : STD_LOGIC;
  signal \sErrSyndrome_reg_n_0_[5]\ : STD_LOGIC;
  signal \^serror_reg_0\ : STD_LOGIC;
  signal \sHeaderOut[0]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[10]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[11]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[12]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[13]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[14]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[15]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[16]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[17]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[18]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[19]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[1]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[20]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[21]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[22]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_2_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_3_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_4_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_5_n_0\ : STD_LOGIC;
  signal \sHeaderOut[23]_i_6_n_0\ : STD_LOGIC;
  signal \sHeaderOut[2]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[3]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[4]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[5]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[8]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[9]_i_1_n_0\ : STD_LOGIC;
  signal \sHeaderOut[9]_i_2_n_0\ : STD_LOGIC;
  signal \sHeaderOut[9]_i_3_n_0\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[0]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[10]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[11]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[12]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[13]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[14]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[15]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[16]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[17]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[18]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[19]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[1]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[20]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[21]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[22]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[23]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[2]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[3]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[4]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[5]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[8]\ : STD_LOGIC;
  signal \sHeaderOut_reg_n_0_[9]\ : STD_LOGIC;
  signal \^svalid_reg_0\ : STD_LOGIC;
  signal \NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[0]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[1]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[2]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sState_reg[3]\ : label is "streset:0001,stidle:0010,stgenparity:0100,stcorrect:1000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mFlush_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of mKeep_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \mReg_Tuser[0]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mWordCount[0]_i_1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mWordCount_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \mWordCount_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \mWordCount_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \mWordCount_reg[8]_i_1\ : label is 11;
begin
  \FSM_onehot_sState_reg[3]_0\(0) <= \^fsm_onehot_sstate_reg[3]_0\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
  mIsHeader0 <= \^misheader0\;
  sError_reg_0 <= \^serror_reg_0\;
  sValid_reg_0 <= \^svalid_reg_0\;
DataFIFO_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFFFF808080"
    )
        port map (
      I0 => \FSM_onehot_sState_reg_n_0_[1]\,
      I1 => \sECCIn_reg[0]_0\,
      I2 => m_axis_tvalid,
      I3 => s_axis_tready,
      I4 => mFlush_reg,
      I5 => mFlush_reg_0,
      O => m_axis_tready
    );
\FSM_onehot_sState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_sstate_reg[3]_0\(0),
      I1 => \FSM_onehot_sState_reg_n_0_[0]\,
      O => \FSM_onehot_sState[1]_i_1_n_0\
    );
\FSM_onehot_sState[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \sECCIn_reg[0]_0\,
      I2 => \FSM_onehot_sState_reg_n_0_[1]\,
      I3 => \^fsm_onehot_sstate_reg[3]_0\(0),
      I4 => \FSM_onehot_sState_reg_n_0_[0]\,
      I5 => sErrSyndrome,
      O => \FSM_onehot_sState[3]_i_1_n_0\
    );
\FSM_onehot_sState_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => '0',
      Q => \FSM_onehot_sState_reg_n_0_[0]\,
      S => \out\(0)
    );
\FSM_onehot_sState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => \FSM_onehot_sState[1]_i_1_n_0\,
      Q => \FSM_onehot_sState_reg_n_0_[1]\,
      R => \out\(0)
    );
\FSM_onehot_sState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => \FSM_onehot_sState_reg_n_0_[1]\,
      Q => sErrSyndrome,
      R => \out\(0)
    );
\FSM_onehot_sState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => \FSM_onehot_sState[3]_i_1_n_0\,
      D => sErrSyndrome,
      Q => \^fsm_onehot_sstate_reg[3]_0\(0),
      R => \out\(0)
    );
mFlush_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077770007"
    )
        port map (
      I0 => \^misheader0\,
      I1 => m_axis_tlast,
      I2 => mFlush_i_2_n_0,
      I3 => \sECCIn_reg[0]_0\,
      I4 => mFlush_reg_0,
      I5 => \out\(0),
      O => \goreg_dm.dout_i_reg[0]\
    );
mFlush_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      I1 => \^serror_reg_0\,
      O => mFlush_i_2_n_0
    );
mIsHeader_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080F0F0F0808080"
    )
        port map (
      I0 => \FSM_onehot_sState_reg_n_0_[1]\,
      I1 => \sECCIn_reg[0]_0\,
      I2 => m_axis_tvalid,
      I3 => s_axis_tready,
      I4 => mFlush_reg,
      I5 => mFlush_reg_0,
      O => \^misheader0\
    );
mKeep_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[4]\,
      I1 => \sHeaderOut_reg_n_0_[2]\,
      I2 => \sHeaderOut_reg_n_0_[0]\,
      I3 => mKeep_i_3_n_0,
      O => mKeep0_out
    );
mKeep_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[5]\,
      I1 => \^svalid_reg_0\,
      I2 => \sHeaderOut_reg_n_0_[3]\,
      I3 => \sHeaderOut_reg_n_0_[1]\,
      O => mKeep_i_3_n_0
    );
\mReg_Tuser[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[2]\,
      I1 => \^svalid_reg_0\,
      I2 => \sHeaderOut_reg_n_0_[0]\,
      I3 => \sHeaderOut_reg_n_0_[1]\,
      I4 => \sHeaderOut_reg_n_0_[3]\,
      I5 => \mReg_Tuser[0]_i_3_n_0\,
      O => mReg_Tuser0
    );
\mReg_Tuser[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[5]\,
      I1 => \sHeaderOut_reg_n_0_[4]\,
      O => \mReg_Tuser[0]_i_3_n_0\
    );
\mWordCount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0EFE0"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[5]\,
      I1 => \sHeaderOut_reg_n_0_[4]\,
      I2 => \^svalid_reg_0\,
      I3 => m_axis_tkeep(0),
      I4 => \mWordCount_reg[0]\,
      O => \sHeaderOut_reg[5]_0\
    );
\mWordCount[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF807F0000807F"
    )
        port map (
      I0 => m_axis_tkeep(2),
      I1 => m_axis_tkeep(1),
      I2 => m_axis_tkeep(0),
      I3 => \mWordCount_reg[3]_2\,
      I4 => \^svalid_reg_0\,
      I5 => \sHeaderOut_reg_n_0_[9]\,
      O => \mWordCount[0]_i_10_n_0\
    );
\mWordCount[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \mWordCount[0]_i_7_n_0\,
      I1 => \mWordCount_reg[3]_1\,
      I2 => \^svalid_reg_0\,
      I3 => \sHeaderOut_reg_n_0_[8]\,
      O => \mWordCount[0]_i_11_n_0\
    );
\mWordCount[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_4_n_0\
    );
\mWordCount[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_5_n_0\
    );
\mWordCount[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
        port map (
      I0 => \^svalid_reg_0\,
      I1 => m_axis_tkeep(0),
      I2 => m_axis_tkeep(1),
      I3 => m_axis_tkeep(2),
      O => \mWordCount[0]_i_6_n_0\
    );
\mWordCount[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04555555"
    )
        port map (
      I0 => \^svalid_reg_0\,
      I1 => m_axis_tkeep(2),
      I2 => m_axis_tkeep(3),
      I3 => m_axis_tkeep(0),
      I4 => m_axis_tkeep(1),
      O => \mWordCount[0]_i_7_n_0\
    );
\mWordCount[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[3]_0\,
      I1 => \sHeaderOut_reg_n_0_[11]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_8_n_0\
    );
\mWordCount[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[3]\,
      I1 => \sHeaderOut_reg_n_0_[10]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[0]_i_9_n_0\
    );
\mWordCount[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_2_n_0\
    );
\mWordCount[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_3_n_0\
    );
\mWordCount[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_4_n_0\
    );
\mWordCount[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \sHeaderOut_reg_n_0_[23]\,
      I1 => \mWordCount_reg[15]_2\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_5_n_0\
    );
\mWordCount[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[15]_1\,
      I1 => \sHeaderOut_reg_n_0_[22]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_6_n_0\
    );
\mWordCount[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[15]_0\,
      I1 => \sHeaderOut_reg_n_0_[21]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_7_n_0\
    );
\mWordCount[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[15]\,
      I1 => \sHeaderOut_reg_n_0_[20]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[12]_i_8_n_0\
    );
\mWordCount[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_2_n_0\
    );
\mWordCount[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_3_n_0\
    );
\mWordCount[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_4_n_0\
    );
\mWordCount[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_5_n_0\
    );
\mWordCount[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]_2\,
      I1 => \sHeaderOut_reg_n_0_[15]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_6_n_0\
    );
\mWordCount[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]_1\,
      I1 => \sHeaderOut_reg_n_0_[14]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_7_n_0\
    );
\mWordCount[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]_0\,
      I1 => \sHeaderOut_reg_n_0_[13]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_8_n_0\
    );
\mWordCount[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[7]\,
      I1 => \sHeaderOut_reg_n_0_[12]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[4]_i_9_n_0\
    );
\mWordCount[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_2_n_0\
    );
\mWordCount[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_3_n_0\
    );
\mWordCount[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_4_n_0\
    );
\mWordCount[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_5_n_0\
    );
\mWordCount[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]_2\,
      I1 => \sHeaderOut_reg_n_0_[19]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_6_n_0\
    );
\mWordCount[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]_1\,
      I1 => \sHeaderOut_reg_n_0_[18]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_7_n_0\
    );
\mWordCount[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]_0\,
      I1 => \sHeaderOut_reg_n_0_[17]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_8_n_0\
    );
\mWordCount[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \mWordCount_reg[11]\,
      I1 => \sHeaderOut_reg_n_0_[16]\,
      I2 => \^svalid_reg_0\,
      O => \mWordCount[8]_i_9_n_0\
    );
\mWordCount_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mWordCount_reg[0]_i_2_n_0\,
      CO(2) => \mWordCount_reg[0]_i_2_n_1\,
      CO(1) => \mWordCount_reg[0]_i_2_n_2\,
      CO(0) => \mWordCount_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \mWordCount[0]_i_4_n_0\,
      DI(2) => \mWordCount[0]_i_5_n_0\,
      DI(1) => \mWordCount[0]_i_6_n_0\,
      DI(0) => \mWordCount[0]_i_7_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \mWordCount[0]_i_8_n_0\,
      S(2) => \mWordCount[0]_i_9_n_0\,
      S(1) => \mWordCount[0]_i_10_n_0\,
      S(0) => \mWordCount[0]_i_11_n_0\
    );
\mWordCount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mWordCount_reg[8]_i_1_n_0\,
      CO(3) => \NLW_mWordCount_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mWordCount_reg[12]_i_1_n_1\,
      CO(1) => \mWordCount_reg[12]_i_1_n_2\,
      CO(0) => \mWordCount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \mWordCount[12]_i_2_n_0\,
      DI(1) => \mWordCount[12]_i_3_n_0\,
      DI(0) => \mWordCount[12]_i_4_n_0\,
      O(3 downto 0) => sValid_reg_3(3 downto 0),
      S(3) => \mWordCount[12]_i_5_n_0\,
      S(2) => \mWordCount[12]_i_6_n_0\,
      S(1) => \mWordCount[12]_i_7_n_0\,
      S(0) => \mWordCount[12]_i_8_n_0\
    );
\mWordCount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mWordCount_reg[0]_i_2_n_0\,
      CO(3) => \mWordCount_reg[4]_i_1_n_0\,
      CO(2) => \mWordCount_reg[4]_i_1_n_1\,
      CO(1) => \mWordCount_reg[4]_i_1_n_2\,
      CO(0) => \mWordCount_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \mWordCount[4]_i_2_n_0\,
      DI(2) => \mWordCount[4]_i_3_n_0\,
      DI(1) => \mWordCount[4]_i_4_n_0\,
      DI(0) => \mWordCount[4]_i_5_n_0\,
      O(3 downto 0) => sValid_reg_1(3 downto 0),
      S(3) => \mWordCount[4]_i_6_n_0\,
      S(2) => \mWordCount[4]_i_7_n_0\,
      S(1) => \mWordCount[4]_i_8_n_0\,
      S(0) => \mWordCount[4]_i_9_n_0\
    );
\mWordCount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mWordCount_reg[4]_i_1_n_0\,
      CO(3) => \mWordCount_reg[8]_i_1_n_0\,
      CO(2) => \mWordCount_reg[8]_i_1_n_1\,
      CO(1) => \mWordCount_reg[8]_i_1_n_2\,
      CO(0) => \mWordCount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \mWordCount[8]_i_2_n_0\,
      DI(2) => \mWordCount[8]_i_3_n_0\,
      DI(1) => \mWordCount[8]_i_4_n_0\,
      DI(0) => \mWordCount[8]_i_5_n_0\,
      O(3 downto 0) => sValid_reg_2(3 downto 0),
      S(3) => \mWordCount[8]_i_6_n_0\,
      S(2) => \mWordCount[8]_i_7_n_0\,
      S(1) => \mWordCount[8]_i_8_n_0\,
      S(0) => \mWordCount[8]_i_9_n_0\
    );
\sDataIn[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sState_reg_n_0_[1]\,
      I1 => \sECCIn_reg[0]_0\,
      I2 => m_axis_tvalid,
      O => \sDataIn[23]_i_1_n_0\
    );
\sDataIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(0),
      Q => p_1_in(0),
      R => '0'
    );
\sDataIn_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(10),
      Q => p_1_in(10),
      R => '0'
    );
\sDataIn_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(11),
      Q => p_1_in(11),
      R => '0'
    );
\sDataIn_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(12),
      Q => p_1_in(12),
      R => '0'
    );
\sDataIn_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(13),
      Q => p_1_in(13),
      R => '0'
    );
\sDataIn_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(14),
      Q => p_1_in(14),
      R => '0'
    );
\sDataIn_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(15),
      Q => p_1_in(15),
      R => '0'
    );
\sDataIn_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(16),
      Q => p_1_in(16),
      R => '0'
    );
\sDataIn_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(17),
      Q => p_1_in(17),
      R => '0'
    );
\sDataIn_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(18),
      Q => p_1_in(18),
      R => '0'
    );
\sDataIn_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(19),
      Q => p_1_in(19),
      R => '0'
    );
\sDataIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(1),
      Q => p_1_in(1),
      R => '0'
    );
\sDataIn_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(20),
      Q => p_1_in(20),
      R => '0'
    );
\sDataIn_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(21),
      Q => p_1_in(21),
      R => '0'
    );
\sDataIn_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(22),
      Q => p_1_in(22),
      R => '0'
    );
\sDataIn_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(23),
      Q => p_1_in(23),
      R => '0'
    );
\sDataIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(2),
      Q => p_1_in(2),
      R => '0'
    );
\sDataIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(3),
      Q => p_1_in(3),
      R => '0'
    );
\sDataIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(4),
      Q => p_1_in(4),
      R => '0'
    );
\sDataIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(5),
      Q => p_1_in(5),
      R => '0'
    );
\sDataIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(6),
      Q => p_1_in(6),
      R => '0'
    );
\sDataIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(7),
      Q => p_1_in(7),
      R => '0'
    );
\sDataIn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(8),
      Q => p_1_in(8),
      R => '0'
    );
\sDataIn_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(9),
      Q => p_1_in(9),
      R => '0'
    );
\sECCIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(24),
      Q => p_1_in(24),
      R => '0'
    );
\sECCIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(25),
      Q => p_1_in(25),
      R => '0'
    );
\sECCIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(26),
      Q => p_1_in(26),
      R => '0'
    );
\sECCIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(27),
      Q => p_1_in(27),
      R => '0'
    );
\sECCIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(28),
      Q => p_1_in(28),
      R => '0'
    );
\sECCIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \sDataIn[23]_i_1_n_0\,
      D => D(29),
      Q => p_1_in(29),
      R => '0'
    );
\sErrSyndrome[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \sErrSyndrome[1]_i_2_n_0\,
      I1 => \sErrSyndrome[0]_i_2_n_0\,
      I2 => p_1_in(11),
      I3 => p_1_in(24),
      I4 => p_1_in(2),
      O => sErrSyndrome0(0)
    );
\sErrSyndrome[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(13),
      I1 => p_1_in(7),
      I2 => p_1_in(21),
      I3 => p_1_in(22),
      I4 => p_1_in(16),
      I5 => p_1_in(5),
      O => \sErrSyndrome[0]_i_2_n_0\
    );
\sErrSyndrome[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \sErrSyndrome[1]_i_2_n_0\,
      I1 => \sErrSyndrome[1]_i_3_n_0\,
      I2 => p_1_in(14),
      I3 => p_1_in(25),
      I4 => p_1_in(12),
      O => sErrSyndrome0(1)
    );
\sErrSyndrome[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(20),
      I1 => p_1_in(1),
      I2 => p_1_in(0),
      I3 => p_1_in(10),
      I4 => p_1_in(23),
      I5 => p_1_in(4),
      O => \sErrSyndrome[1]_i_2_n_0\
    );
\sErrSyndrome[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(17),
      I1 => p_1_in(8),
      I2 => p_1_in(21),
      I3 => p_1_in(22),
      I4 => p_1_in(6),
      I5 => p_1_in(3),
      O => \sErrSyndrome[1]_i_3_n_0\
    );
\sErrSyndrome[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[2]_i_2_n_0\,
      I1 => \sErrSyndrome[2]_i_3_n_0\,
      I2 => p_1_in(26),
      I3 => p_1_in(21),
      O => sErrSyndrome0(2)
    );
\sErrSyndrome[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(18),
      I1 => p_1_in(15),
      I2 => p_1_in(0),
      I3 => p_1_in(2),
      I4 => p_1_in(22),
      I5 => p_1_in(20),
      O => \sErrSyndrome[2]_i_2_n_0\
    );
\sErrSyndrome[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(11),
      I1 => p_1_in(12),
      I2 => p_1_in(3),
      I3 => p_1_in(9),
      I4 => p_1_in(5),
      I5 => p_1_in(6),
      O => \sErrSyndrome[2]_i_3_n_0\
    );
\sErrSyndrome[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[3]_i_2_n_0\,
      I1 => \sErrSyndrome[3]_i_3_n_0\,
      I2 => p_1_in(27),
      I3 => p_1_in(19),
      O => sErrSyndrome0(3)
    );
\sErrSyndrome[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(20),
      I1 => p_1_in(1),
      I2 => p_1_in(7),
      I3 => p_1_in(14),
      I4 => p_1_in(23),
      I5 => p_1_in(2),
      O => \sErrSyndrome[3]_i_2_n_0\
    );
\sErrSyndrome[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(13),
      I1 => p_1_in(8),
      I2 => p_1_in(21),
      I3 => p_1_in(15),
      I4 => p_1_in(3),
      I5 => p_1_in(9),
      O => \sErrSyndrome[3]_i_3_n_0\
    );
\sErrSyndrome[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[4]_i_2_n_0\,
      I1 => \sErrSyndrome[4]_i_3_n_0\,
      I2 => p_1_in(28),
      I3 => p_1_in(20),
      O => sErrSyndrome0(4)
    );
\sErrSyndrome[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_1_in(23),
      I2 => p_1_in(16),
      I3 => p_1_in(5),
      I4 => p_1_in(7),
      I5 => p_1_in(8),
      O => \sErrSyndrome[4]_i_2_n_0\
    );
\sErrSyndrome[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(6),
      I1 => p_1_in(17),
      I2 => p_1_in(22),
      I3 => p_1_in(19),
      I4 => p_1_in(9),
      I5 => p_1_in(18),
      O => \sErrSyndrome[4]_i_3_n_0\
    );
\sErrSyndrome[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sErrSyndrome[5]_i_2_n_0\,
      I1 => \sErrSyndrome[5]_i_3_n_0\,
      I2 => p_1_in(29),
      I3 => p_1_in(23),
      O => sErrSyndrome0(5)
    );
\sErrSyndrome[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(12),
      I1 => p_1_in(10),
      I2 => p_1_in(13),
      I3 => p_1_in(16),
      I4 => p_1_in(11),
      I5 => p_1_in(14),
      O => \sErrSyndrome[5]_i_2_n_0\
    );
\sErrSyndrome[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in(21),
      I1 => p_1_in(17),
      I2 => p_1_in(22),
      I3 => p_1_in(19),
      I4 => p_1_in(15),
      I5 => p_1_in(18),
      O => \sErrSyndrome[5]_i_3_n_0\
    );
\sErrSyndrome_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(0),
      Q => \^q\(0),
      R => '0'
    );
\sErrSyndrome_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(1),
      Q => \^q\(1),
      R => '0'
    );
\sErrSyndrome_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(2),
      Q => \^q\(2),
      R => '0'
    );
\sErrSyndrome_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(3),
      Q => \^q\(3),
      R => '0'
    );
\sErrSyndrome_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(4),
      Q => \sErrSyndrome_reg_n_0_[4]\,
      R => '0'
    );
\sErrSyndrome_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => sErrSyndrome,
      D => sErrSyndrome0(5),
      Q => \sErrSyndrome_reg_n_0_[5]\,
      R => '0'
    );
sError_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sErrSyndrome_reg_n_0_[4]\,
      I1 => \sErrSyndrome_reg_n_0_[5]\,
      O => \sErrSyndrome_reg[4]_0\
    );
sError_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => sError_reg_1,
      Q => \^serror_reg_0\,
      R => '0'
    );
\sHeaderOut[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => \sHeaderOut[9]_i_2_n_0\,
      I5 => p_1_in(0),
      O => \sHeaderOut[0]_i_1_n_0\
    );
\sHeaderOut[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(10),
      O => \sHeaderOut[10]_i_1_n_0\
    );
\sHeaderOut[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00004000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(11),
      O => \sHeaderOut[11]_i_1_n_0\
    );
\sHeaderOut[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00004000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(12),
      O => \sHeaderOut[12]_i_1_n_0\
    );
\sHeaderOut[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00001000"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(13),
      O => \sHeaderOut[13]_i_1_n_0\
    );
\sHeaderOut[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FF00000800"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(14),
      O => \sHeaderOut[14]_i_1_n_0\
    );
\sHeaderOut[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000400"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(15),
      O => \sHeaderOut[15]_i_1_n_0\
    );
\sHeaderOut[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000400"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(16),
      O => \sHeaderOut[16]_i_1_n_0\
    );
\sHeaderOut[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000100"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(17),
      O => \sHeaderOut[17]_i_1_n_0\
    );
\sHeaderOut[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000080"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(18),
      O => \sHeaderOut[18]_i_1_n_0\
    );
\sHeaderOut[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000040"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(19),
      O => \sHeaderOut[19]_i_1_n_0\
    );
\sHeaderOut[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00010000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => \sHeaderOut[9]_i_2_n_0\,
      I5 => p_1_in(1),
      O => \sHeaderOut[1]_i_1_n_0\
    );
\sHeaderOut[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000040"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(20),
      O => \sHeaderOut[20]_i_1_n_0\
    );
\sHeaderOut[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000010"
    )
        port map (
      I0 => \sHeaderOut[23]_i_3_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(21),
      O => \sHeaderOut[21]_i_1_n_0\
    );
\sHeaderOut[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000008"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(22),
      O => \sHeaderOut[22]_i_1_n_0\
    );
\sHeaderOut[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000004"
    )
        port map (
      I0 => \sHeaderOut[23]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_4_n_0\,
      I3 => \sHeaderOut[23]_i_5_n_0\,
      I4 => \sHeaderOut[23]_i_6_n_0\,
      I5 => p_1_in(23),
      O => \sHeaderOut[23]_i_1_n_0\
    );
\sHeaderOut[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0092044984492196"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \sErrSyndrome_reg_n_0_[4]\,
      I5 => \sErrSyndrome_reg_n_0_[5]\,
      O => \sHeaderOut[23]_i_2_n_0\
    );
\sHeaderOut[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FEDEBD6FDBEDE68"
    )
        port map (
      I0 => \sErrSyndrome_reg_n_0_[4]\,
      I1 => \sErrSyndrome_reg_n_0_[5]\,
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \sHeaderOut[23]_i_3_n_0\
    );
\sHeaderOut[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0810120886206080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \sErrSyndrome_reg_n_0_[5]\,
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \sErrSyndrome_reg_n_0_[4]\,
      O => \sHeaderOut[23]_i_4_n_0\
    );
\sHeaderOut[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"977DFF96FF96D668"
    )
        port map (
      I0 => \sErrSyndrome_reg_n_0_[4]\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \sErrSyndrome_reg_n_0_[5]\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \sHeaderOut[23]_i_5_n_0\
    );
\sHeaderOut[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D77B7BB6FBB6B668"
    )
        port map (
      I0 => \^q\(0),
      I1 => \sErrSyndrome_reg_n_0_[5]\,
      I2 => \^q\(3),
      I3 => \sErrSyndrome_reg_n_0_[4]\,
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \sHeaderOut[23]_i_6_n_0\
    );
\sHeaderOut[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(2),
      O => \sHeaderOut[2]_i_1_n_0\
    );
\sHeaderOut[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_2_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(3),
      O => \sHeaderOut[3]_i_1_n_0\
    );
\sHeaderOut[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_2_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(4),
      O => \sHeaderOut[4]_i_1_n_0\
    );
\sHeaderOut[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[23]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_2_n_0\,
      I3 => \sHeaderOut[9]_i_3_n_0\,
      I4 => p_1_in(5),
      O => \sHeaderOut[5]_i_1_n_0\
    );
\sHeaderOut[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[9]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => p_1_in(8),
      O => \sHeaderOut[8]_i_1_n_0\
    );
\sHeaderOut[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \sHeaderOut[9]_i_2_n_0\,
      I1 => \sHeaderOut[9]_i_3_n_0\,
      I2 => \sHeaderOut[23]_i_3_n_0\,
      I3 => \sHeaderOut[23]_i_2_n_0\,
      I4 => p_1_in(9),
      O => \sHeaderOut[9]_i_1_n_0\
    );
\sHeaderOut[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEB9FFFFF977F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \sErrSyndrome_reg_n_0_[4]\,
      I3 => \^q\(3),
      I4 => \sErrSyndrome_reg_n_0_[5]\,
      I5 => \^q\(0),
      O => \sHeaderOut[9]_i_2_n_0\
    );
\sHeaderOut[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0890926996616197"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \sErrSyndrome_reg_n_0_[5]\,
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \sErrSyndrome_reg_n_0_[4]\,
      O => \sHeaderOut[9]_i_3_n_0\
    );
\sHeaderOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[0]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[0]\,
      R => '0'
    );
\sHeaderOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[10]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[10]\,
      R => '0'
    );
\sHeaderOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[11]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[11]\,
      R => '0'
    );
\sHeaderOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[12]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[12]\,
      R => '0'
    );
\sHeaderOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[13]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[13]\,
      R => '0'
    );
\sHeaderOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[14]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[14]\,
      R => '0'
    );
\sHeaderOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[15]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[15]\,
      R => '0'
    );
\sHeaderOut_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[16]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[16]\,
      R => '0'
    );
\sHeaderOut_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[17]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[17]\,
      R => '0'
    );
\sHeaderOut_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[18]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[18]\,
      R => '0'
    );
\sHeaderOut_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[19]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[19]\,
      R => '0'
    );
\sHeaderOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[1]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[1]\,
      R => '0'
    );
\sHeaderOut_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[20]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[20]\,
      R => '0'
    );
\sHeaderOut_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[21]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[21]\,
      R => '0'
    );
\sHeaderOut_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[22]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[22]\,
      R => '0'
    );
\sHeaderOut_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[23]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[23]\,
      R => '0'
    );
\sHeaderOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[2]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[2]\,
      R => '0'
    );
\sHeaderOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[3]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[3]\,
      R => '0'
    );
\sHeaderOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[4]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[4]\,
      R => '0'
    );
\sHeaderOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[5]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[5]\,
      R => '0'
    );
\sHeaderOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[8]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[8]\,
      R => '0'
    );
\sHeaderOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => \^fsm_onehot_sstate_reg[3]_0\(0),
      D => \sHeaderOut[9]_i_1_n_0\,
      Q => \sHeaderOut_reg_n_0_[9]\,
      R => '0'
    );
sValid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0996966996696997"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \sErrSyndrome_reg_n_0_[4]\,
      I5 => \sErrSyndrome_reg_n_0_[5]\,
      O => \sErrSyndrome_reg[0]_0\
    );
sValid_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => sValid_reg_4,
      Q => \^svalid_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE : entity is "MIPI_CSI_2_RX_S_AXI_LITE";
end system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal \control_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \control_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_lite_bvalid\ : STD_LOGIC;
  signal \^s_axi_lite_rvalid\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_awaddr[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \control_reg[31]_i_2\ : label is "soft_lutpair48";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s_axi_lite_bvalid <= \^s_axi_lite_bvalid\;
  s_axi_lite_rvalid <= \^s_axi_lite_rvalid\;
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(0),
      I1 => s_axi_lite_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_lite_araddr(1),
      I1 => s_axi_lite_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(0),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_lite_awaddr(1),
      I1 => s_axi_lite_wvalid,
      I2 => s_axi_lite_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => s_axi_lite_bready,
      I5 => \^s_axi_lite_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_lite_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[10]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[11]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[12]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[13]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[14]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \control_reg_reg_n_0_[16]\,
      I2 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[17]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[18]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[19]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => \^q\(1),
      I2 => axi_araddr(3),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[20]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[21]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[22]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[23]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[26]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[27]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[28]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[29]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[2]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[30]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_lite_arvalid,
      I2 => \^s_axi_lite_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[31]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[3]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[4]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[5]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[6]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[7]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[8]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \control_reg_reg_n_0_[9]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s_axi_lite_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s_axi_lite_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s_axi_lite_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s_axi_lite_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s_axi_lite_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s_axi_lite_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s_axi_lite_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s_axi_lite_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s_axi_lite_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s_axi_lite_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s_axi_lite_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s_axi_lite_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s_axi_lite_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s_axi_lite_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s_axi_lite_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s_axi_lite_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s_axi_lite_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s_axi_lite_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s_axi_lite_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s_axi_lite_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s_axi_lite_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s_axi_lite_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s_axi_lite_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s_axi_lite_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s_axi_lite_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s_axi_lite_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s_axi_lite_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s_axi_lite_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s_axi_lite_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s_axi_lite_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s_axi_lite_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s_axi_lite_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s_axi_lite_rvalid\,
      I3 => s_axi_lite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_lite_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\control_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(1),
      O => \control_reg[15]_i_1_n_0\
    );
\control_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(2),
      O => \control_reg[23]_i_1_n_0\
    );
\control_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(3),
      O => \control_reg[31]_i_1_n_0\
    );
\control_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s_axi_lite_wvalid,
      I3 => s_axi_lite_awvalid,
      O => \slv_reg_wren__0\
    );
\control_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s_axi_lite_wstrb(0),
      O => \control_reg[7]_i_1_n_0\
    );
\control_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => \control_reg_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => \control_reg_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => \control_reg_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => \control_reg_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => \control_reg_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => \control_reg_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => \control_reg_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => \control_reg_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => \control_reg_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => \control_reg_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => \^q\(1),
      S => axi_awready_i_1_n_0
    );
\control_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => \control_reg_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => \control_reg_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => \control_reg_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => \control_reg_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => \control_reg_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => \control_reg_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => \control_reg_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => \control_reg_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => \control_reg_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => \control_reg_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => \control_reg_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => \control_reg_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => \control_reg_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => \control_reg_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => \control_reg_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => \control_reg_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => \control_reg_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => \control_reg_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => \control_reg_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\control_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \control_reg[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => \control_reg_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SimpleFIFO is
  port (
    iEmptyInt_reg_0 : out STD_LOGIC;
    iFullInt_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rbByteCnt_reg[1]\ : out STD_LOGIC;
    rbNstate : out STD_LOGIC;
    iDataOut : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \andv__0\ : out STD_LOGIC;
    \rbState_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rbRst : in STD_LOGIC;
    iRdA0 : in STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    rbEnInt : in STD_LOGIC;
    iEmptyInt_reg_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbMAxisTvalidInt_reg : in STD_LOGIC;
    rbMAxisTvalidInt_reg_0 : in STD_LOGIC;
    \rbState_reg[0]_0\ : in STD_LOGIC;
    \rbState[2]_i_4_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rbMAxisTvalidInt_reg_1 : in STD_LOGIC;
    \rbState[2]_i_4_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbMAxisTvalidInt_reg_2 : in STD_LOGIC;
    iDataIn : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SimpleFIFO : entity is "SimpleFIFO";
end system_MIPI_CSI_2_RX_0_0_SimpleFIFO;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SimpleFIFO is
  signal FIFO_reg_0_31_6_10_n_2 : STD_LOGIC;
  signal \^idataout\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \iEmptyInt1__8\ : STD_LOGIC;
  signal iEmptyInt_i_1_n_0 : STD_LOGIC;
  signal iEmptyInt_i_3_n_0 : STD_LOGIC;
  signal iEmptyInt_i_4_n_0 : STD_LOGIC;
  signal \^iemptyint_reg_0\ : STD_LOGIC;
  signal \iFullInt2__8\ : STD_LOGIC;
  signal iFullInt_i_1_n_0 : STD_LOGIC;
  signal iFullInt_i_3_n_0 : STD_LOGIC;
  signal iFullInt_i_4_n_0 : STD_LOGIC;
  signal \^ifullint_reg_0\ : STD_LOGIC;
  signal iRdA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \iRdA[0]_i_1_n_0\ : STD_LOGIC;
  signal \iRdA[1]_i_1_n_0\ : STD_LOGIC;
  signal \iRdA[2]_i_1_n_0\ : STD_LOGIC;
  signal \iRdA[3]_i_2_n_0\ : STD_LOGIC;
  signal \iRdA[4]_i_1_n_0\ : STD_LOGIC;
  signal iWrA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \iWrA[0]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[1]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[2]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[3]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_2_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_3_n_0\ : STD_LOGIC;
  signal \^rbbytecnt_reg[1]\ : STD_LOGIC;
  signal \rbState[2]_i_5_n_0\ : STD_LOGIC;
  signal \rbState[2]_i_6_n_0\ : STD_LOGIC;
  signal NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of FIFO_reg_0_31_0_5 : label is 352;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_0_5 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of FIFO_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of FIFO_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_6_10 : label is "";
  attribute RTL_RAM_BITS of FIFO_reg_0_31_6_10 : label is 352;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_6_10 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[0].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_6_10 : label is "RAM_SDP";
  attribute ram_addr_begin of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_addr_end of FIFO_reg_0_31_6_10 : label is 31;
  attribute ram_offset of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_slice_begin of FIFO_reg_0_31_6_10 : label is 6;
  attribute ram_slice_end of FIFO_reg_0_31_6_10 : label is 10;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of iEmptyInt_i_4 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of iFullInt_i_4 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \iRdA[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \iRdA[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \iRdA[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \iRdA[3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \iRdA[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \iWrA[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \iWrA[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \iWrA[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \iWrA[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \iWrA[4]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rbTdataInt[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rbTdataInt[7]_i_1\ : label is "soft_lutpair31";
begin
  iDataOut(9 downto 0) <= \^idataout\(9 downto 0);
  iEmptyInt_reg_0 <= \^iemptyint_reg_0\;
  iFullInt_reg_0 <= \^ifullint_reg_0\;
  \rbByteCnt_reg[1]\ <= \^rbbytecnt_reg[1]\;
FIFO_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => iDataIn(1 downto 0),
      DIB(1 downto 0) => iDataIn(3 downto 2),
      DIC(1 downto 0) => iDataIn(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(1 downto 0),
      DOB(1 downto 0) => \^idataout\(3 downto 2),
      DOC(1 downto 0) => \^idataout\(5 downto 4),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
FIFO_reg_0_31_6_10: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => iDataIn(7 downto 6),
      DIB(1 downto 0) => iDataIn(9 downto 8),
      DIC(1) => '0',
      DIC(0) => iDataIn(10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(7 downto 6),
      DOB(1) => FIFO_reg_0_31_6_10_n_2,
      DOB(0) => \^idataout\(8),
      DOC(1) => NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED(1),
      DOC(0) => \^idataout\(9),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
iEmptyInt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => rbEnInt,
      I1 => iEmptyInt_reg_1,
      I2 => \iEmptyInt1__8\,
      I3 => \^iemptyint_reg_0\,
      O => iEmptyInt_i_1_n_0
    );
iEmptyInt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iWrA(3),
      I1 => iEmptyInt_i_3_n_0,
      I2 => iWrA(4),
      I3 => iRdA(4),
      I4 => iRdA(3),
      I5 => iEmptyInt_i_4_n_0,
      O => \iEmptyInt1__8\
    );
iEmptyInt_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082410014000082"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(2),
      I2 => iRdA(2),
      I3 => iRdA(0),
      I4 => iRdA(1),
      I5 => iWrA(1),
      O => iEmptyInt_i_3_n_0
    );
iEmptyInt_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => iEmptyInt_i_4_n_0
    );
iEmptyInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => iEmptyInt_i_1_n_0,
      Q => \^iemptyint_reg_0\,
      S => rbRst
    );
iFullInt_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05050400"
    )
        port map (
      I0 => \^iemptyint_reg_0\,
      I1 => \iFullInt2__8\,
      I2 => iEmptyInt_reg_1,
      I3 => rbEnInt,
      I4 => \^ifullint_reg_0\,
      O => iFullInt_i_1_n_0
    );
iFullInt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iRdA(3),
      I1 => iFullInt_i_3_n_0,
      I2 => iRdA(4),
      I3 => iWrA(4),
      I4 => iWrA(3),
      I5 => iFullInt_i_4_n_0,
      O => \iFullInt2__8\
    );
iFullInt_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820014000082"
    )
        port map (
      I0 => iRdA(0),
      I1 => iRdA(2),
      I2 => iWrA(2),
      I3 => iWrA(1),
      I4 => iWrA(0),
      I5 => iRdA(1),
      O => iFullInt_i_3_n_0
    );
iFullInt_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => iFullInt_i_4_n_0
    );
iFullInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => iFullInt_i_1_n_0,
      Q => \^ifullint_reg_0\,
      S => rbRst
    );
\iRdA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iRdA(0),
      O => \iRdA[0]_i_1_n_0\
    );
\iRdA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iRdA(1),
      I1 => iRdA(0),
      O => \iRdA[1]_i_1_n_0\
    );
\iRdA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => \iRdA[2]_i_1_n_0\
    );
\iRdA[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iRdA(3),
      I1 => iRdA(2),
      I2 => iRdA(1),
      I3 => iRdA(0),
      O => \iRdA[3]_i_2_n_0\
    );
\iRdA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iRdA(4),
      I1 => iRdA(3),
      I2 => iRdA(2),
      I3 => iRdA(1),
      I4 => iRdA(0),
      O => \iRdA[4]_i_1_n_0\
    );
\iRdA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[0]_i_1_n_0\,
      Q => iRdA(0),
      R => rbRst
    );
\iRdA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[1]_i_1_n_0\,
      Q => iRdA(1),
      R => rbRst
    );
\iRdA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[2]_i_1_n_0\,
      Q => iRdA(2),
      R => rbRst
    );
\iRdA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[3]_i_2_n_0\,
      Q => iRdA(3),
      R => rbRst
    );
\iRdA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0,
      D => \iRdA[4]_i_1_n_0\,
      Q => iRdA(4),
      R => rbRst
    );
\iWrA[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iWrA(0),
      O => \iWrA[0]_i_1_n_0\
    );
\iWrA[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(1),
      O => \iWrA[1]_i_1_n_0\
    );
\iWrA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => \iWrA[2]_i_1_n_0\
    );
\iWrA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iWrA(3),
      I1 => iWrA(2),
      I2 => iWrA(0),
      I3 => iWrA(1),
      O => \iWrA[3]_i_1_n_0\
    );
\iWrA[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rbEnInt,
      I1 => \^ifullint_reg_0\,
      O => \iWrA[4]_i_2_n_0\
    );
\iWrA[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iWrA(4),
      I1 => iWrA(3),
      I2 => iWrA(2),
      I3 => iWrA(0),
      I4 => iWrA(1),
      O => \iWrA[4]_i_3_n_0\
    );
\iWrA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[0]_i_1_n_0\,
      Q => iWrA(0),
      R => rbRst
    );
\iWrA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[1]_i_1_n_0\,
      Q => iWrA(1),
      R => rbRst
    );
\iWrA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[2]_i_1_n_0\,
      Q => iWrA(2),
      R => rbRst
    );
\iWrA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[3]_i_1_n_0\,
      Q => iWrA(3),
      R => rbRst
    );
\iWrA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_2_n_0\,
      D => \iWrA[4]_i_3_n_0\,
      Q => iWrA(4),
      R => rbRst
    );
\rbMAxisTdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rbbytecnt_reg[1]\,
      I1 => \out\(0),
      O => E(0)
    );
rbMAxisTvalidInt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0000005700"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_2,
      I1 => \^idataout\(8),
      I2 => \rbState[2]_i_4_0\(0),
      I3 => rbMAxisTvalidInt_reg,
      I4 => rbMAxisTvalidInt_reg_0,
      I5 => rbMAxisTvalidInt_reg_1,
      O => \^rbbytecnt_reg[1]\
    );
\rbState[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \rbState[2]_i_4_0\(0),
      O => \andv__0\
    );
\rbState[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rbState[2]_i_5_n_0\,
      I1 => rbMAxisTvalidInt_reg,
      I2 => \rbState[2]_i_6_n_0\,
      I3 => rbMAxisTvalidInt_reg_0,
      I4 => \rbState_reg[0]_0\,
      O => rbNstate
    );
\rbState[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FF1FFF1FFF1F"
    )
        port map (
      I0 => \^idataout\(9),
      I1 => \rbState[2]_i_4_0\(1),
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => rbMAxisTvalidInt_reg_1,
      I4 => \^idataout\(8),
      I5 => \rbState[2]_i_4_0\(0),
      O => \rbState[2]_i_5_n_0\
    );
\rbState[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFE0"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \rbState[2]_i_4_0\(0),
      I2 => rbMAxisTvalidInt_reg_1,
      I3 => \^ifullint_reg_0\,
      I4 => \rbState[2]_i_4_1\,
      I5 => D(0),
      O => \rbState[2]_i_6_n_0\
    );
\rbTdataInt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000024000000"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => \rbState[2]_i_4_0\(0),
      I5 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(1)
    );
\rbTdataInt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"24000000"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(2)
    );
\rbTdataInt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2400000000000000"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => \rbState[2]_i_4_0\(0),
      I5 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(3)
    );
\rbTdataInt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002400"
    )
        port map (
      I0 => rbMAxisTvalidInt_reg_1,
      I1 => rbMAxisTvalidInt_reg,
      I2 => rbMAxisTvalidInt_reg_0,
      I3 => \^idataout\(8),
      I4 => rbMAxisTvalidInt_reg_2,
      O => \rbState_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 is
  port (
    iFullInt_reg_0 : out STD_LOGIC;
    \rbState_reg[2]\ : out STD_LOGIC;
    iRdA0 : out STD_LOGIC;
    \rbState_reg[2]_0\ : out STD_LOGIC;
    iDataOut : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \rbState_reg[0]\ : out STD_LOGIC;
    rbTlastInt : out STD_LOGIC;
    \rbByteCnt_reg[1]\ : out STD_LOGIC;
    orv2_out : out STD_LOGIC;
    orv4_out : out STD_LOGIC;
    rbRst : in STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    rbEnInt : in STD_LOGIC;
    \iRdA_reg[0]_0\ : in STD_LOGIC;
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\ : in STD_LOGIC;
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\ : in STD_LOGIC;
    \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\ : in STD_LOGIC;
    p_0_in4_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rbState_reg[0]_0\ : in STD_LOGIC;
    \rbByteCnt_reg[1]_0\ : in STD_LOGIC;
    I62 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 : entity is "SimpleFIFO";
end system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2 is
  signal \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\ : STD_LOGIC;
  signal FIFO_reg_0_31_6_10_n_2 : STD_LOGIC;
  signal \^idataout\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \iEmptyInt1__8\ : STD_LOGIC;
  signal \iEmptyInt_i_1__0_n_0\ : STD_LOGIC;
  signal \iEmptyInt_i_3__0_n_0\ : STD_LOGIC;
  signal \iEmptyInt_i_4__0_n_0\ : STD_LOGIC;
  signal iEmptyInt_reg_n_0 : STD_LOGIC;
  signal \iFullInt2__8\ : STD_LOGIC;
  signal \iFullInt_i_1__0_n_0\ : STD_LOGIC;
  signal \iFullInt_i_3__0_n_0\ : STD_LOGIC;
  signal \iFullInt_i_4__0_n_0\ : STD_LOGIC;
  signal \^ifullint_reg_0\ : STD_LOGIC;
  signal iRdA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal iRdA0_0 : STD_LOGIC;
  signal \iRdA[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \iRdA[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \iRdA[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \iRdA[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \iRdA[4]_i_1__0_n_0\ : STD_LOGIC;
  signal iWrA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \iWrA[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_1_n_0\ : STD_LOGIC;
  signal \iWrA[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \^rbstate_reg[2]\ : STD_LOGIC;
  signal \^rbstate_reg[2]_0\ : STD_LOGIC;
  signal NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of FIFO_reg_0_31_0_5 : label is 352;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_0_5 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of FIFO_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of FIFO_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of FIFO_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of FIFO_reg_0_31_6_10 : label is "";
  attribute RTL_RAM_BITS of FIFO_reg_0_31_6_10 : label is 352;
  attribute RTL_RAM_NAME of FIFO_reg_0_31_6_10 : label is "MIPI_CSI2_Rx_inst/LM_inst/DeskewFIFOs[1].DeskewFIFOx/FIFO";
  attribute RTL_RAM_TYPE of FIFO_reg_0_31_6_10 : label is "RAM_SDP";
  attribute ram_addr_begin of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_addr_end of FIFO_reg_0_31_6_10 : label is 31;
  attribute ram_offset of FIFO_reg_0_31_6_10 : label is 0;
  attribute ram_slice_begin of FIFO_reg_0_31_6_10 : label is 6;
  attribute ram_slice_end of FIFO_reg_0_31_6_10 : label is 10;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \iEmptyInt_i_4__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \iFullInt_i_4__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \iRdA[0]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \iRdA[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \iRdA[2]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \iRdA[3]_i_2__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \iRdA[4]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \iWrA[0]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \iWrA[1]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \iWrA[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \iWrA[3]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \iWrA[4]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of rbMAxisTlast_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rbState[2]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rbState[2]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rbState[2]_i_7\ : label is "soft_lutpair38";
begin
  iDataOut(9 downto 0) <= \^idataout\(9 downto 0);
  iFullInt_reg_0 <= \^ifullint_reg_0\;
  \rbState_reg[2]\ <= \^rbstate_reg[2]\;
  \rbState_reg[2]_0\ <= \^rbstate_reg[2]_0\;
\DeskewFIFOs[0].rbActiveHS_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777773777777700"
    )
        port map (
      I0 => \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\,
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      I2 => \^idataout\(9),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I5 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      O => \^rbstate_reg[2]_0\
    );
\DeskewFIFOs[0].rbActiveHS_q[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => p_0_in4_in(1),
      I1 => p_0_in4_in(0),
      I2 => \^idataout\(9),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      O => \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\
    );
\DeskewFIFOs[1].rbActiveHS_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777773777777700"
    )
        port map (
      I0 => \DeskewFIFOs[0].rbActiveHS_q[0]_i_2_n_0\,
      I1 => \^idataout\(9),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I5 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      O => \^rbstate_reg[2]\
    );
FIFO_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => I62(1 downto 0),
      DIB(1 downto 0) => I62(3 downto 2),
      DIC(1 downto 0) => I62(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(1 downto 0),
      DOB(1 downto 0) => \^idataout\(3 downto 2),
      DOC(1 downto 0) => \^idataout\(5 downto 4),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
FIFO_reg_0_31_6_10: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => iRdA(4 downto 0),
      ADDRB(4 downto 0) => iRdA(4 downto 0),
      ADDRC(4 downto 0) => iRdA(4 downto 0),
      ADDRD(4 downto 0) => iWrA(4 downto 0),
      DIA(1 downto 0) => I62(7 downto 6),
      DIB(1 downto 0) => I62(9 downto 8),
      DIC(1) => '0',
      DIC(0) => I62(10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^idataout\(7 downto 6),
      DOB(1) => FIFO_reg_0_31_6_10_n_2,
      DOB(0) => \^idataout\(8),
      DOC(1) => NLW_FIFO_reg_0_31_6_10_DOC_UNCONNECTED(1),
      DOC(0) => \^idataout\(9),
      DOD(1 downto 0) => NLW_FIFO_reg_0_31_6_10_DOD_UNCONNECTED(1 downto 0),
      WCLK => RxByteClkHS,
      WE => rbEnInt
    );
\iEmptyInt_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => rbEnInt,
      I1 => \^rbstate_reg[2]\,
      I2 => \iEmptyInt1__8\,
      I3 => iEmptyInt_reg_n_0,
      O => \iEmptyInt_i_1__0_n_0\
    );
\iEmptyInt_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iWrA(3),
      I1 => \iEmptyInt_i_3__0_n_0\,
      I2 => iWrA(4),
      I3 => iRdA(4),
      I4 => iRdA(3),
      I5 => \iEmptyInt_i_4__0_n_0\,
      O => \iEmptyInt1__8\
    );
\iEmptyInt_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082410014000082"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(2),
      I2 => iRdA(2),
      I3 => iRdA(0),
      I4 => iRdA(1),
      I5 => iWrA(1),
      O => \iEmptyInt_i_3__0_n_0\
    );
\iEmptyInt_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => \iEmptyInt_i_4__0_n_0\
    );
iEmptyInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => \iEmptyInt_i_1__0_n_0\,
      Q => iEmptyInt_reg_n_0,
      S => rbRst
    );
\iFullInt_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05050400"
    )
        port map (
      I0 => iEmptyInt_reg_n_0,
      I1 => \iFullInt2__8\,
      I2 => \^rbstate_reg[2]\,
      I3 => rbEnInt,
      I4 => \^ifullint_reg_0\,
      O => \iFullInt_i_1__0_n_0\
    );
\iFullInt_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440800880084004"
    )
        port map (
      I0 => iRdA(3),
      I1 => \iFullInt_i_3__0_n_0\,
      I2 => iRdA(4),
      I3 => iWrA(4),
      I4 => iWrA(3),
      I5 => \iFullInt_i_4__0_n_0\,
      O => \iFullInt2__8\
    );
\iFullInt_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041820014000082"
    )
        port map (
      I0 => iRdA(0),
      I1 => iRdA(2),
      I2 => iWrA(2),
      I3 => iWrA(1),
      I4 => iWrA(0),
      I5 => iRdA(1),
      O => \iFullInt_i_3__0_n_0\
    );
\iFullInt_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => \iFullInt_i_4__0_n_0\
    );
iFullInt_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => \iFullInt_i_1__0_n_0\,
      Q => \^ifullint_reg_0\,
      S => rbRst
    );
\iRdA[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iRdA(0),
      O => \iRdA[0]_i_1__0_n_0\
    );
\iRdA[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iRdA(1),
      I1 => iRdA(0),
      O => \iRdA[1]_i_1__0_n_0\
    );
\iRdA[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iRdA(2),
      I1 => iRdA(1),
      I2 => iRdA(0),
      O => \iRdA[2]_i_1__0_n_0\
    );
\iRdA[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rbstate_reg[2]_0\,
      I1 => \iRdA_reg[0]_0\,
      O => iRdA0
    );
\iRdA[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rbstate_reg[2]\,
      I1 => iEmptyInt_reg_n_0,
      O => iRdA0_0
    );
\iRdA[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iRdA(3),
      I1 => iRdA(2),
      I2 => iRdA(1),
      I3 => iRdA(0),
      O => \iRdA[3]_i_2__0_n_0\
    );
\iRdA[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iRdA(4),
      I1 => iRdA(3),
      I2 => iRdA(2),
      I3 => iRdA(1),
      I4 => iRdA(0),
      O => \iRdA[4]_i_1__0_n_0\
    );
\iRdA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[0]_i_1__0_n_0\,
      Q => iRdA(0),
      R => rbRst
    );
\iRdA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[1]_i_1__0_n_0\,
      Q => iRdA(1),
      R => rbRst
    );
\iRdA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[2]_i_1__0_n_0\,
      Q => iRdA(2),
      R => rbRst
    );
\iRdA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[3]_i_2__0_n_0\,
      Q => iRdA(3),
      R => rbRst
    );
\iRdA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => iRdA0_0,
      D => \iRdA[4]_i_1__0_n_0\,
      Q => iRdA(4),
      R => rbRst
    );
\iWrA[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iWrA(0),
      O => \iWrA[0]_i_1__0_n_0\
    );
\iWrA[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iWrA(0),
      I1 => iWrA(1),
      O => \iWrA[1]_i_1__0_n_0\
    );
\iWrA[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => iWrA(2),
      I1 => iWrA(0),
      I2 => iWrA(1),
      O => \iWrA[2]_i_1__0_n_0\
    );
\iWrA[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => iWrA(3),
      I1 => iWrA(2),
      I2 => iWrA(0),
      I3 => iWrA(1),
      O => \iWrA[3]_i_1__0_n_0\
    );
\iWrA[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rbEnInt,
      I1 => \^ifullint_reg_0\,
      O => \iWrA[4]_i_1_n_0\
    );
\iWrA[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => iWrA(4),
      I1 => iWrA(3),
      I2 => iWrA(2),
      I3 => iWrA(0),
      I4 => iWrA(1),
      O => \iWrA[4]_i_2__0_n_0\
    );
\iWrA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[0]_i_1__0_n_0\,
      Q => iWrA(0),
      R => rbRst
    );
\iWrA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[1]_i_1__0_n_0\,
      Q => iWrA(1),
      R => rbRst
    );
\iWrA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[2]_i_1__0_n_0\,
      Q => iWrA(2),
      R => rbRst
    );
\iWrA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[3]_i_1__0_n_0\,
      Q => iWrA(3),
      R => rbRst
    );
\iWrA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \iWrA[4]_i_1_n_0\,
      D => \iWrA[4]_i_2__0_n_0\,
      Q => iWrA(4),
      R => rbRst
    );
\rbByteCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA555600AAAA"
    )
        port map (
      I0 => \rbByteCnt_reg[1]_0\,
      I1 => \^idataout\(8),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0),
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I5 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      O => \rbByteCnt_reg[1]\
    );
rbMAxisTlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F00010"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\,
      I3 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\,
      I4 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      O => rbTlastInt
    );
\rbState[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ifullint_reg_0\,
      I1 => \rbState_reg[0]_0\,
      O => orv4_out
    );
\rbState[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^idataout\(8),
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0),
      O => orv2_out
    );
\rbState[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F08F"
    )
        port map (
      I0 => \^idataout\(9),
      I1 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1),
      I2 => \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\,
      I3 => \rbState_reg[0]_0\,
      I4 => \^ifullint_reg_0\,
      O => \rbState_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    rbRst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SyncAsync : entity is "SyncAsync";
end system_MIPI_CSI_2_RX_0_0_SyncAsync;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SyncAsync is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => rbRst,
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => rbRst,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SyncAsync_0 is
  port (
    \YesAXILITE.vRst_n_reg\ : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    vRst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SyncAsync_0 : entity is "SyncAsync";
end system_MIPI_CSI_2_RX_0_0_SyncAsync_0;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SyncAsync_0 is
  signal \^yesaxilite.vrst_n_reg\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \YesAXILITE.vRst_n_reg\ <= \^yesaxilite.vrst_n_reg\;
\oSyncStages[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vRst_n,
      O => \^yesaxilite.vrst_n_reg\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      CLR => \^yesaxilite.vrst_n_reg\,
      D => D(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      CLR => \^yesaxilite.vrst_n_reg\,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_SyncAsync_1 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rbRst : out STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    \oSyncStages_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_SyncAsync_1 : entity is "SyncAsync";
end system_MIPI_CSI_2_RX_0_0_SyncAsync_1;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_SyncAsync_1 is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\iWrA[4]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => rbRst
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \oSyncStages_reg[1]_0\,
      D => '1',
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \oSyncStages_reg[1]_0\,
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\YesAXILITE.vRst_n_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => \oSyncStages_reg[1]_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\ is
  port (
    \oSyncStages_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \oSyncStages_reg[1]_0\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mReg_Tvalid_reg : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[0]\ : out STD_LOGIC;
    \oSyncStages_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aresetn : out STD_LOGIC;
    mFmt_Tvalid_reg : out STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC;
    \mReg_Tdata_reg[31]\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_1\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_2\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_1\ : in STD_LOGIC;
    cnt : in STD_LOGIC;
    \mFmt_Tuser_reg[0]\ : in STD_LOGIC;
    \mFmt_Tuser_reg[0]_0\ : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
LineBufferFIFO_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oSyncStages(1),
      O => s_axis_aresetn
    );
\RAW10Formatter.cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002A2A2A6A"
    )
        port map (
      I0 => \RAW10Formatter.cnt_reg[1]_1\,
      I1 => \RAW10Formatter.cnt_reg[2]_0\,
      I2 => s_axis_tready,
      I3 => \RAW10Formatter.cnt_reg[2]_1\,
      I4 => \RAW10Formatter.cnt_reg[2]_2\,
      I5 => oSyncStages(1),
      O => \RAW10Formatter.cnt_reg[0]\
    );
\RAW10Formatter.cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000A0A0A6A"
    )
        port map (
      I0 => \RAW10Formatter.cnt_reg[1]_0\,
      I1 => \RAW10Formatter.cnt_reg[1]_1\,
      I2 => cnt,
      I3 => \RAW10Formatter.cnt_reg[2]_1\,
      I4 => \RAW10Formatter.cnt_reg[2]_2\,
      I5 => oSyncStages(1),
      O => \RAW10Formatter.cnt_reg[1]\
    );
\RAW10Formatter.cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F3F0080"
    )
        port map (
      I0 => \RAW10Formatter.cnt_reg[2]\,
      I1 => \RAW10Formatter.cnt_reg[2]_0\,
      I2 => s_axis_tready,
      I3 => \RAW10Formatter.cnt_reg[2]_1\,
      I4 => \RAW10Formatter.cnt_reg[2]_2\,
      I5 => oSyncStages(1),
      O => mReg_Tvalid_reg
    );
\RAW10Formatter.pix_mux[0][9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[2]_2\,
      O => \oSyncStages_reg[1]_1\(0)
    );
\RAW10Formatter.pix_mux[1][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.cnt_reg[1]_1\,
      O => \oSyncStages_reg[1]_2\(0)
    );
\RAW10Formatter.pix_mux[2][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[1]_1\,
      I4 => \RAW10Formatter.cnt_reg[1]_0\,
      O => \oSyncStages_reg[1]_3\(0)
    );
\RAW10Formatter.pix_mux[3][9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40004040"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.cnt_reg[1]_1\,
      O => \oSyncStages_reg[1]_4\(0)
    );
\mFmt_Tdata[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040404000"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => s_axis_tready,
      I2 => \RAW10Formatter.cnt_reg[2]_0\,
      I3 => \RAW10Formatter.cnt_reg[2]_2\,
      I4 => \RAW10Formatter.cnt_reg[1]_0\,
      I5 => \RAW10Formatter.cnt_reg[1]_1\,
      O => \oSyncStages_reg[1]_0\(0)
    );
\mFmt_Tuser[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005F40"
    )
        port map (
      I0 => \mFmt_Tuser_reg[0]\,
      I1 => \mFmt_Tuser_reg[0]_0\,
      I2 => s_axis_tready,
      I3 => s_axis_tuser(0),
      I4 => oSyncStages(1),
      O => mFmt_Tvalid_reg
    );
\mReg_Tdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => m_axis_tvalid,
      I2 => \mReg_Tdata_reg[31]\,
      I3 => s_axis_tready,
      O => E(0)
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_0\ : out STD_LOGIC;
    vRst_n : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\ : entity is "SyncAsync";
end \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\ is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\aDEnableInt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => vRst_n,
      O => \oSyncStages_reg[1]_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => D(0),
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst : entity is "ASYNC_RST";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray : entity is "GRAY";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair3";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ : entity is "GRAY";
end \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single : entity is "SINGLE";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_single;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ : entity is "SINGLE";
end \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 4;
  attribute INIT : string;
  attribute INIT of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_counter_updn is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_counter_updn : entity is "xpm_counter_updn";
end system_MIPI_CSI_2_RX_0_0_xpm_counter_updn;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_counter_updn is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \gwdc.wr_data_count_i[3]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  \count_value_i_reg[1]_0\(0) <= \^count_value_i_reg[1]_0\(0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[0]_1\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A8AA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => ram_empty_i,
      I4 => \count_value_i_reg[0]_1\(0),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => count_value_i(0),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_0\(0),
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => count_value_i(0),
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\(0),
      R => '0'
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      O => \^di\(0)
    );
\gwdc.wr_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => Q(1),
      I2 => \^count_value_i_reg[1]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[3]\(1),
      O => S(1)
    );
\gwdc.wr_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => count_value_i(0),
      I1 => Q(0),
      I2 => \grdc.rd_data_count_i_reg[3]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_wr_en_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    \count_value_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\ is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_value_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__0\ : label is 35;
begin
  CO(0) <= \^co\(0);
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(10 downto 0) <= \^q\(10 downto 0);
\count_value_i[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_7\,
      Q => \^q\(0),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_4\,
      Q => \count_value_i_reg_n_0_[11]\,
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[11]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(3) => \NLW_count_value_i_reg[11]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \count_value_i_reg[11]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[11]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[11]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[11]_i_1__0_n_7\,
      S(3) => \count_value_i_reg_n_0_[11]\,
      S(2 downto 0) => \^q\(10 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[3]_i_1__0_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__0_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__0_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[7]_i_1__0_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__0_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__0_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__0_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__0_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__0_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[11]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i_reg[11]_i_1__0_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[11]_0\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFF0088"
    )
        port map (
      I0 => ram_wr_en_i,
      I1 => going_full1,
      I2 => \^co\(0),
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFBBBFBBBFBBB"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \^co\(0),
      I4 => going_full1,
      I5 => ram_wr_en_i,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(6),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[11]\(9),
      I2 => \^q\(10),
      I3 => \grdc.rd_data_count_i_reg[11]\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[11]\(6),
      I2 => \grdc.rd_data_count_i_reg[11]\(8),
      I3 => \^q\(8),
      I4 => \grdc.rd_data_count_i_reg[11]\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[11]\(3),
      I2 => \grdc.rd_data_count_i_reg[11]\(5),
      I3 => \^q\(5),
      I4 => \grdc.rd_data_count_i_reg[11]\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[11]\(0),
      I2 => \grdc.rd_data_count_i_reg[11]\(2),
      I3 => \^q\(2),
      I4 => \grdc.rd_data_count_i_reg[11]\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(9),
      I2 => \^q\(10),
      I3 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(10),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => going_full1,
      CO(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_1\,
      CO(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_2\,
      CO(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0\,
      S(2) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0\,
      S(1) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_11_n_0\,
      S(0) => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_12_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
\gwdc.wr_data_count_i[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(10),
      I1 => \grdc.rd_data_count_i_reg[11]\(10),
      I2 => \count_value_i_reg_n_0_[11]\,
      I3 => \grdc.rd_data_count_i_reg[11]\(11),
      O => S(3)
    );
\gwdc.wr_data_count_i[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[11]\(9),
      I2 => \^q\(10),
      I3 => \grdc.rd_data_count_i_reg[11]\(10),
      O => S(2)
    );
\gwdc.wr_data_count_i[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[11]\(8),
      I2 => \^q\(9),
      I3 => \grdc.rd_data_count_i_reg[11]\(9),
      O => S(1)
    );
\gwdc.wr_data_count_i[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[11]\(7),
      I2 => \^q\(8),
      I3 => \grdc.rd_data_count_i_reg[11]\(8),
      O => S(0)
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\(0),
      I2 => \grdc.rd_data_count_i_reg[11]\(1),
      O => DI(0)
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[11]\(2),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[11]\(3),
      O => \count_value_i_reg[2]_0\(0)
    );
\gwdc.wr_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[11]\(6),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[11]\(7),
      O => \count_value_i_reg[6]_0\(3)
    );
\gwdc.wr_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[11]\(5),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[11]\(6),
      O => \count_value_i_reg[6]_0\(2)
    );
\gwdc.wr_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[11]\(4),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[11]\(5),
      O => \count_value_i_reg[6]_0\(1)
    );
\gwdc.wr_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[11]\(3),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[11]\(4),
      O => \count_value_i_reg[6]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[11]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_value_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[11]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gwdc.wr_data_count_i_reg[7]_i_1\ : label is 35;
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_7\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_4\,
      Q => \^q\(11),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1_n_0\,
      CO(3) => \NLW_count_value_i_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_value_i_reg[11]_i_1_n_1\,
      CO(1) => \count_value_i_reg[11]_i_1_n_2\,
      CO(0) => \count_value_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[11]_i_1_n_4\,
      O(2) => \count_value_i_reg[11]_i_1_n_5\,
      O(1) => \count_value_i_reg[11]_i_1_n_6\,
      O(0) => \count_value_i_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^q\(11 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => S(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[11]_i_1_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[0]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => CO(0),
      I3 => E(0),
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(9),
      I2 => \^q\(10),
      I3 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(10),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(6),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(8),
      I3 => \^q\(8),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(7),
      I5 => \^q\(7),
      O => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(5),
      I3 => \^q\(5),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(4),
      I5 => \^q\(4),
      O => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
\gen_pntr_flags_cc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => going_empty1,
      CO(2) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1\,
      CO(1) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2\,
      CO(0) => \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      S(2) => \gen_pntr_flags_cc.ram_empty_i_i_4_n_0\,
      S(1) => \gen_pntr_flags_cc.ram_empty_i_i_5_n_0\,
      S(0) => \gen_pntr_flags_cc.ram_empty_i_i_6_n_0\
    );
\gwdc.wr_data_count_i[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(8),
      O => \gwdc.wr_data_count_i[11]_i_2_n_0\
    );
\gwdc.wr_data_count_i[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(7),
      O => \gwdc.wr_data_count_i[11]_i_3_n_0\
    );
\gwdc.wr_data_count_i[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(6),
      O => \gwdc.wr_data_count_i[11]_i_4_n_0\
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(1),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]_0\(0),
      I2 => \grdc.rd_data_count_i_reg[11]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[11]_0\(1),
      I4 => \^q\(2),
      O => \gwdc.wr_data_count_i[3]_i_6_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(5),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(4),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(3),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[11]_0\(2),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(3) => \NLW_gwdc.wr_data_count_i_reg[11]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gwdc.wr_data_count_i_reg[11]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[11]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gwdc.wr_data_count_i[11]_i_2_n_0\,
      DI(1) => \gwdc.wr_data_count_i[11]_i_3_n_0\,
      DI(0) => \gwdc.wr_data_count_i[11]_i_4_n_0\,
      O(3 downto 0) => D(11 downto 8),
      S(3 downto 0) => \grdc.rd_data_count_i_reg[11]\(3 downto 0)
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \grdc.rd_data_count_i_reg[3]\(2),
      S(2) => \gwdc.wr_data_count_i[3]_i_6_n_0\,
      S(1 downto 0) => \grdc.rd_data_count_i_reg[3]\(1 downto 0)
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      DI(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      DI(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      DI(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \grdc.rd_data_count_i_reg[7]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_value_i[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__1_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[10]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__1\ : label is 35;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\count_value_i[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[3]_0\(0),
      I3 => \count_value_i_reg[3]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[3]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_7\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[10]_i_1_n_2\,
      CO(0) => \count_value_i_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[10]_i_1_n_5\,
      O(1) => \count_value_i_reg[10]_i_1_n_6\,
      O(0) => \count_value_i_reg[10]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(10 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__1_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__1_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i[3]_i_2__1_n_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__1_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__1_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__1_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__1_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__1_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__1_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__1_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__1_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__1_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\ : entity is "xpm_counter_updn";
end \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_value_i_reg[10]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[10]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[3]_i_1__2_n_7\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_1\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_2\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_3\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_4\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_5\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_6\ : STD_LOGIC;
  signal \count_value_i_reg[7]_i_1__2_n_7\ : STD_LOGIC;
  signal \NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_value_i_reg[10]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[3]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count_value_i_reg[7]_i_1__2\ : label is 35;
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_7\,
      Q => \^q\(0),
      S => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1__0_n_5\,
      Q => \^q\(10),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[10]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(3 downto 2) => \NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_value_i_reg[10]_i_1__0_n_2\,
      CO(0) => \count_value_i_reg[10]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \count_value_i_reg[10]_i_1__0_n_5\,
      O(1) => \count_value_i_reg[10]_i_1__0_n_6\,
      O(0) => \count_value_i_reg[10]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^q\(10 downto 8)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_6\,
      Q => \^q\(1),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_5\,
      Q => \^q\(2),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[3]_i_1__2_n_4\,
      Q => \^q\(3),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[3]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[3]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[3]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[3]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \count_value_i_reg[3]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[3]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[3]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[3]_i_1__2_n_7\,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_7\,
      Q => \^q\(4),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_6\,
      Q => \^q\(5),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_5\,
      Q => \^q\(6),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[7]_i_1__2_n_4\,
      Q => \^q\(7),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[7]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_value_i_reg[3]_i_1__2_n_0\,
      CO(3) => \count_value_i_reg[7]_i_1__2_n_0\,
      CO(2) => \count_value_i_reg[7]_i_1__2_n_1\,
      CO(1) => \count_value_i_reg[7]_i_1__2_n_2\,
      CO(0) => \count_value_i_reg[7]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_value_i_reg[7]_i_1__2_n_4\,
      O(2) => \count_value_i_reg[7]_i_1__2_n_5\,
      O(1) => \count_value_i_reg[7]_i_1__2_n_6\,
      O(0) => \count_value_i_reg[7]_i_1__2_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1__0_n_7\,
      Q => \^q\(8),
      R => \count_value_i_reg[1]_0\(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i_reg[10]_i_1__0_n_6\,
      Q => \^q\(9),
      R => \count_value_i_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
\count_value_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \count_value_i_reg[3]\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]_0\(0),
      O => S(0)
    );
\count_value_i[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => Q(0),
      I2 => \count_value_i_reg[3]\,
      I3 => wr_en,
      I4 => \count_value_i_reg[3]_1\(0),
      O => d_out_reg_0(0)
    );
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[10]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst : entity is "xpm_fifo_rst";
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[10]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[0]\(0),
      I2 => \grdc.rd_data_count_i_reg[0]\(1),
      O => SR(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 53 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 53 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 53 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 53 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 110592;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2048;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 11;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 54;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 56;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of system_MIPI_CSI_2_RX_0_0_xpm_memory_base : entity is 56;
end system_MIPI_CSI_2_RX_0_0_xpm_memory_base;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \^doutb\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 17;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 17;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 110592;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0\ : label is 17;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p2_d16";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 18;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 35;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "p2_d16";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 18;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 110592;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 2047;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 18;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_1\ : label is 35;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 2047;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d6";
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 36;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 41;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 2047;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "p0_d6";
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 36;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 41;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 110592;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is "RAM_TDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 2047;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 36;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_2\ : label is 41;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  doutb(53 downto 52) <= \^doutb\(53 downto 52);
  doutb(51) <= \<const0>\;
  doutb(50) <= \<const0>\;
  doutb(49) <= \<const0>\;
  doutb(48) <= \<const0>\;
  doutb(47) <= \<const0>\;
  doutb(46) <= \<const0>\;
  doutb(45) <= \<const0>\;
  doutb(44) <= \<const0>\;
  doutb(43) <= \<const0>\;
  doutb(42) <= \<const0>\;
  doutb(41) <= \<const0>\;
  doutb(40) <= \<const0>\;
  doutb(39 downto 0) <= \^doutb\(39 downto 0);
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg_0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => dina(15 downto 0),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => dina(17 downto 16),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => \^doutb\(15 downto 0),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1 downto 0) => \^doutb\(17 downto 16),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_1\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED\,
      DIADI(31 downto 16) => B"0000000000000000",
      DIADI(15 downto 0) => dina(33 downto 18),
      DIBDI(31 downto 0) => B"00000000000000001111111111111111",
      DIPADIP(3 downto 2) => B"00",
      DIPADIP(1 downto 0) => dina(35 downto 34),
      DIPBDIP(3 downto 0) => B"0011",
      DOADO(31 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 16) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => \^doutb\(33 downto 18),
      DOPADOP(3 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 2) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1 downto 0) => \^doutb\(35 downto 34),
      ECCPARITY(7 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      INJECTDBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1 downto 0) => B"11",
      WEBWE(7 downto 0) => B"00000000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_2\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 3) => addrb(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 6) => B"0000000000",
      DIADI(5 downto 4) => dina(53 downto 52),
      DIADI(3 downto 0) => dina(39 downto 36),
      DIBDI(15 downto 0) => B"0000000000111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 6) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOBDO_UNCONNECTED\(15 downto 6),
      DOBDO(5 downto 4) => \^doutb\(53 downto 52),
      DOBDO(3 downto 0) => \^doutb\(39 downto 36),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      WEA(1) => wea(0),
      WEA(0) => '1',
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47360)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_LM is
  port (
    s_axis_tvalid : out STD_LOGIC;
    s_axis_tlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \rbMAxisTkeep_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RxByteClkHS : in STD_LOGIC;
    rbRst : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rbEnInt_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    iDataIn : in STD_LOGIC_VECTOR ( 10 downto 0 );
    I62 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_LM : entity is "LM";
end system_MIPI_CSI_2_RX_0_0_LM;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_LM is
  signal \DeskewFIFOs[0].DeskewFIFOx_n_0\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_1\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_16\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_17\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_18\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_19\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_2\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_3\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_5\ : STD_LOGIC;
  signal \DeskewFIFOs[0].DeskewFIFOx_n_6\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_0\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_1\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_10\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_11\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_12\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_13\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_14\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_16\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_3\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_4\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_5\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_6\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_7\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_8\ : STD_LOGIC;
  signal \DeskewFIFOs[1].DeskewFIFOx_n_9\ : STD_LOGIC;
  signal \andv__0\ : STD_LOGIC;
  signal iRdA0 : STD_LOGIC;
  signal orv2_out : STD_LOGIC;
  signal orv4_out : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rbByteCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal rbEnInt : STD_LOGIC;
  signal rbEnInt_i_1_n_0 : STD_LOGIC;
  signal rbNstate : STD_LOGIC;
  signal \rbState[0]_i_1_n_0\ : STD_LOGIC;
  signal \rbState[1]_i_1_n_0\ : STD_LOGIC;
  signal \rbState[2]_i_1_n_0\ : STD_LOGIC;
  signal \rbState_reg_n_0_[0]\ : STD_LOGIC;
  signal \rbState_reg_n_0_[1]\ : STD_LOGIC;
  signal \rbState_reg_n_0_[2]\ : STD_LOGIC;
  signal rbTdataInt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rbTdataInt1__0\ : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal \rbTkeepInt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[2]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[3]_i_1_n_0\ : STD_LOGIC;
  signal \rbTkeepInt[3]_i_2_n_0\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rbTkeepInt_reg_n_0_[3]\ : STD_LOGIC;
  signal rbTlastInt : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rbEnInt_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rbTkeepInt[3]_i_2\ : label is "soft_lutpair46";
begin
\DeskewFIFOs[0].DeskewFIFOx\: entity work.system_MIPI_CSI_2_RX_0_0_SimpleFIFO
     port map (
      D(0) => D(0),
      E(0) => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      RxByteClkHS => RxByteClkHS,
      \andv__0\ => \andv__0\,
      iDataIn(10 downto 0) => iDataIn(10 downto 0),
      iDataOut(9) => \DeskewFIFOs[0].DeskewFIFOx_n_5\,
      iDataOut(8) => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      iDataOut(7 downto 0) => \rbTdataInt1__0\(23 downto 16),
      iEmptyInt_reg_0 => \DeskewFIFOs[0].DeskewFIFOx_n_0\,
      iEmptyInt_reg_1 => \DeskewFIFOs[1].DeskewFIFOx_n_3\,
      iFullInt_reg_0 => \DeskewFIFOs[0].DeskewFIFOx_n_1\,
      iRdA0 => iRdA0,
      \out\(0) => \out\(0),
      \rbByteCnt_reg[1]\ => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      rbEnInt => rbEnInt,
      rbMAxisTvalidInt_reg => \rbState_reg_n_0_[2]\,
      rbMAxisTvalidInt_reg_0 => \rbState_reg_n_0_[1]\,
      rbMAxisTvalidInt_reg_1 => \rbState_reg_n_0_[0]\,
      rbMAxisTvalidInt_reg_2 => \rbByteCnt_reg_n_0_[1]\,
      rbNstate => rbNstate,
      rbRst => rbRst,
      \rbState[2]_i_4_0\(1) => \DeskewFIFOs[1].DeskewFIFOx_n_4\,
      \rbState[2]_i_4_0\(0) => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      \rbState[2]_i_4_1\ => \DeskewFIFOs[1].DeskewFIFOx_n_0\,
      \rbState_reg[0]\(3) => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      \rbState_reg[0]\(2) => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      \rbState_reg[0]\(1) => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      \rbState_reg[0]\(0) => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      \rbState_reg[0]_0\ => \DeskewFIFOs[1].DeskewFIFOx_n_14\
    );
\DeskewFIFOs[0].rbActiveHS_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[1].DeskewFIFOx_n_3\,
      D => \DeskewFIFOs[0].DeskewFIFOx_n_5\,
      Q => p_0_in4_in(0),
      R => '0'
    );
\DeskewFIFOs[1].DeskewFIFOx\: entity work.system_MIPI_CSI_2_RX_0_0_SimpleFIFO_2
     port map (
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(1) => \DeskewFIFOs[0].DeskewFIFOx_n_5\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]\(0) => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]_0\ => \rbState_reg_n_0_[2]\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]_1\ => \rbState_reg_n_0_[0]\,
      \DeskewFIFOs[1].rbActiveHS_q_reg[1]_2\ => \rbState_reg_n_0_[1]\,
      I62(10 downto 0) => I62(10 downto 0),
      RxByteClkHS => RxByteClkHS,
      iDataOut(9) => \DeskewFIFOs[1].DeskewFIFOx_n_4\,
      iDataOut(8) => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      iDataOut(7) => \DeskewFIFOs[1].DeskewFIFOx_n_6\,
      iDataOut(6) => \DeskewFIFOs[1].DeskewFIFOx_n_7\,
      iDataOut(5) => \DeskewFIFOs[1].DeskewFIFOx_n_8\,
      iDataOut(4) => \DeskewFIFOs[1].DeskewFIFOx_n_9\,
      iDataOut(3) => \DeskewFIFOs[1].DeskewFIFOx_n_10\,
      iDataOut(2) => \DeskewFIFOs[1].DeskewFIFOx_n_11\,
      iDataOut(1) => \DeskewFIFOs[1].DeskewFIFOx_n_12\,
      iDataOut(0) => \DeskewFIFOs[1].DeskewFIFOx_n_13\,
      iFullInt_reg_0 => \DeskewFIFOs[1].DeskewFIFOx_n_0\,
      iRdA0 => iRdA0,
      \iRdA_reg[0]_0\ => \DeskewFIFOs[0].DeskewFIFOx_n_0\,
      orv2_out => orv2_out,
      orv4_out => orv4_out,
      p_0_in4_in(1 downto 0) => p_0_in4_in(1 downto 0),
      \rbByteCnt_reg[1]\ => \DeskewFIFOs[1].DeskewFIFOx_n_16\,
      \rbByteCnt_reg[1]_0\ => \rbByteCnt_reg_n_0_[1]\,
      rbEnInt => rbEnInt,
      rbRst => rbRst,
      \rbState_reg[0]\ => \DeskewFIFOs[1].DeskewFIFOx_n_14\,
      \rbState_reg[0]_0\ => \DeskewFIFOs[0].DeskewFIFOx_n_1\,
      \rbState_reg[2]\ => \DeskewFIFOs[1].DeskewFIFOx_n_1\,
      \rbState_reg[2]_0\ => \DeskewFIFOs[1].DeskewFIFOx_n_3\,
      rbTlastInt => rbTlastInt
    );
\DeskewFIFOs[1].rbActiveHS_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[1].DeskewFIFOx_n_1\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_4\,
      Q => p_0_in4_in(1),
      R => '0'
    );
\rbByteCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxByteClkHS,
      CE => '1',
      D => \DeskewFIFOs[1].DeskewFIFOx_n_16\,
      Q => \rbByteCnt_reg_n_0_[1]\,
      R => '0'
    );
rbEnInt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \rbState_reg_n_0_[2]\,
      I1 => \rbState_reg_n_0_[0]\,
      I2 => \rbState_reg_n_0_[1]\,
      I3 => rbEnInt_reg_0(0),
      O => rbEnInt_i_1_n_0
    );
rbEnInt_reg: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => rbEnInt_i_1_n_0,
      Q => rbEnInt,
      R => '0'
    );
\rbMAxisTdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(0),
      Q => Q(0),
      R => '0'
    );
\rbMAxisTdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(10),
      Q => Q(10),
      R => '0'
    );
\rbMAxisTdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(11),
      Q => Q(11),
      R => '0'
    );
\rbMAxisTdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(12),
      Q => Q(12),
      R => '0'
    );
\rbMAxisTdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(13),
      Q => Q(13),
      R => '0'
    );
\rbMAxisTdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(14),
      Q => Q(14),
      R => '0'
    );
\rbMAxisTdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(15),
      Q => Q(15),
      R => '0'
    );
\rbMAxisTdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(16),
      Q => Q(16),
      R => '0'
    );
\rbMAxisTdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(17),
      Q => Q(17),
      R => '0'
    );
\rbMAxisTdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(18),
      Q => Q(18),
      R => '0'
    );
\rbMAxisTdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(19),
      Q => Q(19),
      R => '0'
    );
\rbMAxisTdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(1),
      Q => Q(1),
      R => '0'
    );
\rbMAxisTdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(20),
      Q => Q(20),
      R => '0'
    );
\rbMAxisTdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(21),
      Q => Q(21),
      R => '0'
    );
\rbMAxisTdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(22),
      Q => Q(22),
      R => '0'
    );
\rbMAxisTdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(23),
      Q => Q(23),
      R => '0'
    );
\rbMAxisTdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(24),
      Q => Q(24),
      R => '0'
    );
\rbMAxisTdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(25),
      Q => Q(25),
      R => '0'
    );
\rbMAxisTdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(26),
      Q => Q(26),
      R => '0'
    );
\rbMAxisTdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(27),
      Q => Q(27),
      R => '0'
    );
\rbMAxisTdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(28),
      Q => Q(28),
      R => '0'
    );
\rbMAxisTdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(29),
      Q => Q(29),
      R => '0'
    );
\rbMAxisTdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(2),
      Q => Q(2),
      R => '0'
    );
\rbMAxisTdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(30),
      Q => Q(30),
      R => '0'
    );
\rbMAxisTdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(31),
      Q => Q(31),
      R => '0'
    );
\rbMAxisTdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(3),
      Q => Q(3),
      R => '0'
    );
\rbMAxisTdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(4),
      Q => Q(4),
      R => '0'
    );
\rbMAxisTdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(5),
      Q => Q(5),
      R => '0'
    );
\rbMAxisTdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(6),
      Q => Q(6),
      R => '0'
    );
\rbMAxisTdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(7),
      Q => Q(7),
      R => '0'
    );
\rbMAxisTdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(8),
      Q => Q(8),
      R => '0'
    );
\rbMAxisTdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTdataInt(9),
      Q => Q(9),
      R => '0'
    );
\rbMAxisTkeep_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[0]\,
      Q => \rbMAxisTkeep_reg[3]_0\(0),
      R => '0'
    );
\rbMAxisTkeep_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[1]\,
      Q => \rbMAxisTkeep_reg[3]_0\(1),
      R => '0'
    );
\rbMAxisTkeep_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[2]\,
      Q => \rbMAxisTkeep_reg[3]_0\(2),
      R => '0'
    );
\rbMAxisTkeep_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => \rbTkeepInt_reg_n_0_[3]\,
      Q => \rbMAxisTkeep_reg[3]_0\(3),
      R => '0'
    );
rbMAxisTlast_reg: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_2\,
      D => rbTlastInt,
      Q => s_axis_tlast,
      R => '0'
    );
rbMAxisTvalidInt_reg: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      Q => s_axis_tvalid,
      R => '0'
    );
\rbState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F3FFFFF3F00000"
    )
        port map (
      I0 => \andv__0\,
      I1 => orv4_out,
      I2 => \rbState_reg_n_0_[2]\,
      I3 => \rbState_reg_n_0_[1]\,
      I4 => rbNstate,
      I5 => \rbState_reg_n_0_[0]\,
      O => \rbState[0]_i_1_n_0\
    );
\rbState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054FFFF00FF0000"
    )
        port map (
      I0 => \rbState_reg_n_0_[0]\,
      I1 => \DeskewFIFOs[1].DeskewFIFOx_n_0\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_1\,
      I3 => \rbState_reg_n_0_[2]\,
      I4 => rbNstate,
      I5 => \rbState_reg_n_0_[1]\,
      O => \rbState[1]_i_1_n_0\
    );
\rbState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030FFFFEE880000"
    )
        port map (
      I0 => orv4_out,
      I1 => \rbState_reg_n_0_[1]\,
      I2 => orv2_out,
      I3 => \rbState_reg_n_0_[0]\,
      I4 => rbNstate,
      I5 => \rbState_reg_n_0_[2]\,
      O => \rbState[2]_i_1_n_0\
    );
\rbState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbState[0]_i_1_n_0\,
      Q => \rbState_reg_n_0_[0]\,
      R => rbRst
    );
\rbState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbState[1]_i_1_n_0\,
      Q => \rbState_reg_n_0_[1]\,
      R => rbRst
    );
\rbState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbState[2]_i_1_n_0\,
      Q => \rbState_reg_n_0_[2]\,
      R => rbRst
    );
\rbTdataInt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(16),
      Q => rbTdataInt(0),
      R => rbRst
    );
\rbTdataInt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_11\,
      Q => rbTdataInt(10),
      R => rbRst
    );
\rbTdataInt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_10\,
      Q => rbTdataInt(11),
      R => rbRst
    );
\rbTdataInt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_9\,
      Q => rbTdataInt(12),
      R => rbRst
    );
\rbTdataInt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_8\,
      Q => rbTdataInt(13),
      R => rbRst
    );
\rbTdataInt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_7\,
      Q => rbTdataInt(14),
      R => rbRst
    );
\rbTdataInt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_6\,
      Q => rbTdataInt(15),
      R => rbRst
    );
\rbTdataInt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(16),
      Q => rbTdataInt(16),
      R => rbRst
    );
\rbTdataInt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(17),
      Q => rbTdataInt(17),
      R => rbRst
    );
\rbTdataInt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(18),
      Q => rbTdataInt(18),
      R => rbRst
    );
\rbTdataInt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(19),
      Q => rbTdataInt(19),
      R => rbRst
    );
\rbTdataInt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(17),
      Q => rbTdataInt(1),
      R => rbRst
    );
\rbTdataInt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(20),
      Q => rbTdataInt(20),
      R => rbRst
    );
\rbTdataInt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(21),
      Q => rbTdataInt(21),
      R => rbRst
    );
\rbTdataInt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(22),
      Q => rbTdataInt(22),
      R => rbRst
    );
\rbTdataInt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_17\,
      D => \rbTdataInt1__0\(23),
      Q => rbTdataInt(23),
      R => rbRst
    );
\rbTdataInt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_13\,
      Q => rbTdataInt(24),
      R => rbRst
    );
\rbTdataInt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_12\,
      Q => rbTdataInt(25),
      R => rbRst
    );
\rbTdataInt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_11\,
      Q => rbTdataInt(26),
      R => rbRst
    );
\rbTdataInt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_10\,
      Q => rbTdataInt(27),
      R => rbRst
    );
\rbTdataInt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_9\,
      Q => rbTdataInt(28),
      R => rbRst
    );
\rbTdataInt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_8\,
      Q => rbTdataInt(29),
      R => rbRst
    );
\rbTdataInt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(18),
      Q => rbTdataInt(2),
      R => rbRst
    );
\rbTdataInt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_7\,
      Q => rbTdataInt(30),
      R => rbRst
    );
\rbTdataInt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_16\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_6\,
      Q => rbTdataInt(31),
      R => rbRst
    );
\rbTdataInt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(19),
      Q => rbTdataInt(3),
      R => rbRst
    );
\rbTdataInt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(20),
      Q => rbTdataInt(4),
      R => rbRst
    );
\rbTdataInt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(21),
      Q => rbTdataInt(5),
      R => rbRst
    );
\rbTdataInt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(22),
      Q => rbTdataInt(6),
      R => rbRst
    );
\rbTdataInt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_19\,
      D => \rbTdataInt1__0\(23),
      Q => rbTdataInt(7),
      R => rbRst
    );
\rbTdataInt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_13\,
      Q => rbTdataInt(8),
      R => rbRst
    );
\rbTdataInt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => \DeskewFIFOs[0].DeskewFIFOx_n_18\,
      D => \DeskewFIFOs[1].DeskewFIFOx_n_12\,
      Q => rbTdataInt(9),
      R => rbRst
    );
\rbTkeepInt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F700A0"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \rbByteCnt_reg_n_0_[1]\,
      I4 => \rbTkeepInt_reg_n_0_[0]\,
      O => \rbTkeepInt[0]_i_1_n_0\
    );
\rbTkeepInt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777F7770000A000"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      I4 => \rbByteCnt_reg_n_0_[1]\,
      I5 => \rbTkeepInt_reg_n_0_[1]\,
      O => \rbTkeepInt[1]_i_1_n_0\
    );
\rbTkeepInt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777A000"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \rbByteCnt_reg_n_0_[1]\,
      I4 => \rbTkeepInt_reg_n_0_[2]\,
      O => \rbTkeepInt[2]_i_1_n_0\
    );
\rbTkeepInt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777A0000000"
    )
        port map (
      I0 => \rbTkeepInt[3]_i_2_n_0\,
      I1 => \DeskewFIFOs[0].DeskewFIFOx_n_3\,
      I2 => \DeskewFIFOs[0].DeskewFIFOx_n_6\,
      I3 => \DeskewFIFOs[1].DeskewFIFOx_n_5\,
      I4 => \rbByteCnt_reg_n_0_[1]\,
      I5 => \rbTkeepInt_reg_n_0_[3]\,
      O => \rbTkeepInt[3]_i_1_n_0\
    );
\rbTkeepInt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \rbState_reg_n_0_[1]\,
      I1 => \rbState_reg_n_0_[2]\,
      I2 => \rbState_reg_n_0_[0]\,
      O => \rbTkeepInt[3]_i_2_n_0\
    );
\rbTkeepInt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[0]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[0]\,
      R => rbRst
    );
\rbTkeepInt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[1]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[1]\,
      R => rbRst
    );
\rbTkeepInt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[2]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[2]\,
      R => rbRst
    );
\rbTkeepInt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => RxByteClkHS,
      CE => '1',
      D => \rbTkeepInt[3]_i_1_n_0\,
      Q => \rbTkeepInt_reg_n_0_[3]\,
      R => rbRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_ResetBridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rbRst : out STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    \oSyncStages_reg[1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_ResetBridge : entity is "ResetBridge";
end system_MIPI_CSI_2_RX_0_0_ResetBridge;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_ResetBridge is
begin
SyncAsyncx: entity work.system_MIPI_CSI_2_RX_0_0_SyncAsync_1
     port map (
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]_0\ => \oSyncStages_reg[1]\,
      \out\(0) => \out\(0),
      rbRst => rbRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\ is
  port (
    \oSyncStages_reg[1]\ : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\ : entity is "ResetBridge";
end \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\ is
begin
SyncAsyncx: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0\
     port map (
      AS(0) => AS(0),
      \oSyncStages_reg[1]_0\ => \oSyncStages_reg[1]\,
      video_aclk => video_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    mReg_Tvalid_reg : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[0]\ : out STD_LOGIC;
    \oSyncStages_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aresetn : out STD_LOGIC;
    mFmt_Tvalid_reg : out STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC;
    \mReg_Tdata_reg[31]\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_1\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[2]_2\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_0\ : in STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_1\ : in STD_LOGIC;
    cnt : in STD_LOGIC;
    \mFmt_Tuser_reg[0]\ : in STD_LOGIC;
    \mFmt_Tuser_reg[0]_0\ : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_aclk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\ : entity is "ResetBridge";
end \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\ is
begin
SyncAsyncx: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_6\
     port map (
      AS(0) => AS(0),
      E(0) => E(0),
      \RAW10Formatter.cnt_reg[0]\ => \RAW10Formatter.cnt_reg[0]\,
      \RAW10Formatter.cnt_reg[1]\ => \RAW10Formatter.cnt_reg[1]\,
      \RAW10Formatter.cnt_reg[1]_0\ => \RAW10Formatter.cnt_reg[1]_0\,
      \RAW10Formatter.cnt_reg[1]_1\ => \RAW10Formatter.cnt_reg[1]_1\,
      \RAW10Formatter.cnt_reg[2]\ => \RAW10Formatter.cnt_reg[2]\,
      \RAW10Formatter.cnt_reg[2]_0\ => \RAW10Formatter.cnt_reg[2]_0\,
      \RAW10Formatter.cnt_reg[2]_1\ => \RAW10Formatter.cnt_reg[2]_1\,
      \RAW10Formatter.cnt_reg[2]_2\ => \RAW10Formatter.cnt_reg[2]_2\,
      cnt => cnt,
      \mFmt_Tuser_reg[0]\ => \mFmt_Tuser_reg[0]\,
      \mFmt_Tuser_reg[0]_0\ => \mFmt_Tuser_reg[0]_0\,
      mFmt_Tvalid_reg => mFmt_Tvalid_reg,
      \mReg_Tdata_reg[31]\ => \mReg_Tdata_reg[31]\,
      mReg_Tvalid_reg => mReg_Tvalid_reg,
      m_axis_tvalid => m_axis_tvalid,
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0),
      \oSyncStages_reg[1]_1\(0) => \oSyncStages_reg[1]_0\(0),
      \oSyncStages_reg[1]_2\(0) => \oSyncStages_reg[1]_1\(0),
      \oSyncStages_reg[1]_3\(0) => \oSyncStages_reg[1]_2\(0),
      \oSyncStages_reg[1]_4\(0) => \oSyncStages_reg[1]_3\(0),
      \out\(0) => \out\(0),
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(0) => s_axis_tuser(0),
      video_aclk => video_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\ is
  port (
    \oSyncStages_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\ : entity is "ResetBridge";
end \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\;

architecture STRUCTURE of \system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\ is
begin
SyncAsyncx: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized0_5\
     port map (
      AS(0) => AS(0),
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]_0\(0) => \oSyncStages_reg[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 53 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 53 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "16'b0001010000000100";
  attribute EN_AE : string;
  attribute EN_AE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2048;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 110592;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2048;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2043;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2043;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 54;
  attribute READ_MODE : integer;
  attribute READ_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 825503796;
  attribute VERSION : integer;
  attribute VERSION of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 54;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 12;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 11;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base : entity is 1;
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_base;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_0\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_13 : STD_LOGIC;
  signal rdp_inst_n_14 : STD_LOGIC;
  signal rdp_inst_n_15 : STD_LOGIC;
  signal rdp_inst_n_17 : STD_LOGIC;
  signal rdp_inst_n_18 : STD_LOGIC;
  signal rdp_inst_n_19 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_10 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rdpp1_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_2 : STD_LOGIC;
  signal rst_d1_inst_n_3 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wrp_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_10 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp1_inst_n_5 : STD_LOGIC;
  signal wrpp1_inst_n_6 : STD_LOGIC;
  signal wrpp1_inst_n_7 : STD_LOGIC;
  signal wrpp1_inst_n_8 : STD_LOGIC;
  signal wrpp1_inst_n_9 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 51 downto 40 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair9";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 41;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 2047;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 42;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 110592;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 2048;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 11;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 54;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 56;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(53 downto 52) <= \^dout\(53 downto 52);
  dout(51) <= \<const0>\;
  dout(50) <= \<const0>\;
  dout(49) <= \<const0>\;
  dout(48) <= \<const0>\;
  dout(47) <= \<const0>\;
  dout(46) <= \<const0>\;
  dout(45) <= \<const0>\;
  dout(44) <= \<const0>\;
  dout(43) <= \<const0>\;
  dout(42) <= \<const0>\;
  dout(41) <= \<const0>\;
  dout(40) <= \<const0>\;
  dout(39 downto 0) <= \^dout\(39 downto 0);
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.rdpp1_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_counter_updn
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      Q(1 downto 0) => rd_pntr_ext(1 downto 0),
      S(1) => \gen_fwft.rdpp1_inst_n_0\,
      S(0) => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[3]\(1 downto 0) => wr_pntr_ext(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_22,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_24,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_memory_base
     port map (
      addra(10 downto 0) => wr_pntr_ext(10 downto 0),
      addrb(10 downto 0) => rd_pntr_ext(10 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(53 downto 52) => din(53 downto 52),
      dina(51 downto 40) => B"000000000000",
      dina(39 downto 0) => din(39 downto 0),
      dinb(53 downto 0) => B"000000000000000000000000000000000000000000000000000000",
      douta(53 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(53 downto 0),
      doutb(53 downto 52) => \^dout\(53 downto 52),
      doutb(51 downto 40) => \NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED\(51 downto 40),
      doutb(39 downto 0) => \^dout\(39 downto 0),
      ena => '0',
      enb => rdp_inst_n_23,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_i,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => rd_data_count(10),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(11),
      Q => rd_data_count(11),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => rd_data_count(9),
      R => \grdc.rd_data_count_i0\
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => wr_data_count(0),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(10),
      Q => wr_data_count(10),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(11),
      Q => wr_data_count(11),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => wr_data_count(1),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => wr_data_count(2),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => wr_data_count(3),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => wr_data_count(4),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => wr_data_count(5),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => wr_data_count(6),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => wr_data_count(7),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => wr_data_count(8),
      R => xpm_fifo_rst_inst_n_1
    );
\gwdc.wr_data_count_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(9),
      Q => wr_data_count(9),
      R => xpm_fifo_rst_inst_n_1
    );
rdp_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0\
     port map (
      CO(0) => leaving_empty0,
      DI(0) => rdp_inst_n_11,
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_23,
      Q(10 downto 0) => rd_pntr_ext(10 downto 0),
      S(3) => rdp_inst_n_12,
      S(2) => rdp_inst_n_13,
      S(1) => rdp_inst_n_14,
      S(0) => rdp_inst_n_15,
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[11]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[2]_0\(0) => rdp_inst_n_17,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_18,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_19,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_21,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_22,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_24,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(10) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(9) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(8) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(7) => wrpp1_inst_n_3,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(6) => wrpp1_inst_n_4,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(5) => wrpp1_inst_n_5,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(4) => wrpp1_inst_n_6,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(3) => wrpp1_inst_n_7,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(2) => wrpp1_inst_n_8,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(1) => wrpp1_inst_n_9,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg_i_4_0\(0) => wrpp1_inst_n_10,
      \grdc.rd_data_count_i_reg[11]\(11) => wrp_inst_n_1,
      \grdc.rd_data_count_i_reg[11]\(10 downto 0) => wr_pntr_ext(10 downto 0),
      \grdc.rd_data_count_i_reg[3]\(0) => count_value_i(1),
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_23,
      Q(10) => rdpp1_inst_n_0,
      Q(9) => rdpp1_inst_n_1,
      Q(8) => rdpp1_inst_n_2,
      Q(7) => rdpp1_inst_n_3,
      Q(6) => rdpp1_inst_n_4,
      Q(5) => rdpp1_inst_n_5,
      Q(4) => rdpp1_inst_n_6,
      Q(3) => rdpp1_inst_n_7,
      Q(2) => rdpp1_inst_n_8,
      Q(1) => rdpp1_inst_n_9,
      Q(0) => rdpp1_inst_n_10,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[3]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      ram_empty_i => ram_empty_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      S(0) => rst_d1_inst_n_2,
      clr_full => clr_full,
      \count_value_i_reg[3]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \count_value_i_reg[3]_0\(0) => wr_pntr_ext(0),
      \count_value_i_reg[3]_1\(0) => wrpp1_inst_n_10,
      d_out_reg_0(0) => rst_d1_inst_n_3,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wrp_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized0_7\
     port map (
      CO(0) => leaving_empty0,
      D(11 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(11 downto 0),
      DI(1) => rdp_inst_n_11,
      DI(0) => \gen_fwft.rdpp1_inst_n_2\,
      E(0) => ram_wr_en_i,
      Q(11) => wrp_inst_n_1,
      Q(10 downto 0) => wr_pntr_ext(10 downto 0),
      S(0) => rst_d1_inst_n_2,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdp_inst_n_23,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(10) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(9) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(8) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(7) => rdpp1_inst_n_3,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(6) => rdpp1_inst_n_4,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(5) => rdpp1_inst_n_5,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(4) => rdpp1_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(3) => rdpp1_inst_n_7,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(2) => rdpp1_inst_n_8,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(1) => rdpp1_inst_n_9,
      \gen_pntr_flags_cc.ram_empty_i_reg_i_2_0\(0) => rdpp1_inst_n_10,
      \grdc.rd_data_count_i_reg[11]\(3) => rdp_inst_n_12,
      \grdc.rd_data_count_i_reg[11]\(2) => rdp_inst_n_13,
      \grdc.rd_data_count_i_reg[11]\(1) => rdp_inst_n_14,
      \grdc.rd_data_count_i_reg[11]\(0) => rdp_inst_n_15,
      \grdc.rd_data_count_i_reg[11]_0\(8 downto 0) => rd_pntr_ext(9 downto 1),
      \grdc.rd_data_count_i_reg[3]\(2) => rdp_inst_n_17,
      \grdc.rd_data_count_i_reg[3]\(1) => \gen_fwft.rdpp1_inst_n_0\,
      \grdc.rd_data_count_i_reg[3]\(0) => \gen_fwft.rdpp1_inst_n_1\,
      \grdc.rd_data_count_i_reg[3]_0\(0) => count_value_i(1),
      \grdc.rd_data_count_i_reg[7]\(3) => rdp_inst_n_18,
      \grdc.rd_data_count_i_reg[7]\(2) => rdp_inst_n_19,
      \grdc.rd_data_count_i_reg[7]\(1) => rdp_inst_n_20,
      \grdc.rd_data_count_i_reg[7]\(0) => rdp_inst_n_21,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      wr_clk => wr_clk
    );
wrpp1_inst: entity work.\system_MIPI_CSI_2_RX_0_0_xpm_counter_updn__parameterized1_8\
     port map (
      E(0) => ram_wr_en_i,
      Q(10) => wrpp1_inst_n_0,
      Q(9) => wrpp1_inst_n_1,
      Q(8) => wrpp1_inst_n_2,
      Q(7) => wrpp1_inst_n_3,
      Q(6) => wrpp1_inst_n_4,
      Q(5) => wrpp1_inst_n_5,
      Q(4) => wrpp1_inst_n_6,
      Q(3) => wrpp1_inst_n_7,
      Q(2) => wrpp1_inst_n_8,
      Q(1) => wrpp1_inst_n_9,
      Q(0) => wrpp1_inst_n_10,
      \count_value_i_reg[1]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[3]_0\(0) => rst_d1_inst_n_3,
      wr_clk => wr_clk
    );
xpm_fifo_rst_inst: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_rst
     port map (
      E(0) => ram_wr_en_i,
      Q(0) => xpm_fifo_rst_inst_n_1,
      SR(0) => \grdc.rd_data_count_i0\,
      \count_value_i_reg[10]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \grdc.rd_data_count_i_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38448)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 11 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 11 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 54;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 54;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "16'b0001010000000100";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "16'b0001010000000100";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 2048;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "auto";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 11;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "xpm_fifo_axis";
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 12;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 40;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 40;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 52;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 51;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 50;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 45;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 4043;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 53;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 825503796;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 825503796;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis : entity is "true";
end system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 51 downto 40 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001010000000100";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 2048;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 110592;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 2048;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 2043;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 2043;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 11;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 12;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 54;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is 825503796;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 54;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 12;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 12;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 11;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 11;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 6;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty_axis <= \<const0>\;
  almost_full_axis <= \<const0>\;
  dbiterr_axis <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(4) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  prog_empty_axis <= \<const0>\;
  prog_full_axis <= \<const0>\;
  sbiterr_axis <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(53) => s_axis_tlast,
      din(52) => s_axis_tuser(0),
      din(51 downto 40) => B"000000000000",
      din(39 downto 0) => s_axis_tdata(39 downto 0),
      dout(53) => m_axis_tlast,
      dout(52) => m_axis_tuser(0),
      dout(51 downto 40) => NLW_xpm_fifo_base_inst_dout_UNCONNECTED(51 downto 40),
      dout(39 downto 0) => m_axis_tdata(39 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(11 downto 0) => rd_data_count_axis(11 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(11 downto 0) => wr_data_count_axis(11 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4848)
`protect data_block
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
fU6Y
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top : entity is "axis_data_fifo_v2_0_4_top";
end system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top is
  signal \gen_fifo.xpm_fifo_axis_inst_n_56\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_57\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_58\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_59\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_60\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_61\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_62\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_63\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_64\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_65\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_66\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_67\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_68\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_69\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_70\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_71\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_72\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_73\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_74\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_75\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_76\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_77\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_78\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_79\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_80\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_81\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_82\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_83\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_84\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_85\ : STD_LOGIC;
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 54;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 54;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \gen_fifo.xpm_fifo_axis_inst\ : label is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001010000000100";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001010000000100";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 2048;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is "auto";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of \gen_fifo.xpm_fifo_axis_inst\ : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 12;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 40;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 40;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 52;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 51;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 50;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 45;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 4043;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 53;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \gen_fifo.xpm_fifo_axis_inst\ : label is 825503796;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is 825503796;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 12;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_fifo.xpm_fifo_axis_inst\ : label is "TRUE";
begin
\gen_fifo.xpm_fifo_axis_inst\: entity work.system_MIPI_CSI_2_RX_0_0_xpm_fifo_axis
     port map (
      almost_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_83\,
      almost_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_69\,
      dbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_85\,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => s_axis_aclk,
      m_axis_tdata(39 downto 0) => m_axis_tdata(39 downto 0),
      m_axis_tdest(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\(0),
      m_axis_tid(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\(0),
      m_axis_tkeep(4 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\(4 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(4 downto 0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\(4 downto 0),
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      prog_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_70\,
      prog_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_56\,
      rd_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_71\,
      rd_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_72\,
      rd_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_73\,
      rd_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_74\,
      rd_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_75\,
      rd_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_76\,
      rd_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_77\,
      rd_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_78\,
      rd_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_79\,
      rd_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_80\,
      rd_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_81\,
      rd_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_82\,
      s_aclk => s_axis_aclk,
      s_aresetn => s_axis_aresetn,
      s_axis_tdata(39 downto 0) => s_axis_tdata(39 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(4 downto 0) => B"00000",
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(4 downto 0) => B"00000",
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid,
      sbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_84\,
      wr_data_count_axis(11) => \gen_fifo.xpm_fifo_axis_inst_n_57\,
      wr_data_count_axis(10) => \gen_fifo.xpm_fifo_axis_inst_n_58\,
      wr_data_count_axis(9) => \gen_fifo.xpm_fifo_axis_inst_n_59\,
      wr_data_count_axis(8) => \gen_fifo.xpm_fifo_axis_inst_n_60\,
      wr_data_count_axis(7) => \gen_fifo.xpm_fifo_axis_inst_n_61\,
      wr_data_count_axis(6) => \gen_fifo.xpm_fifo_axis_inst_n_62\,
      wr_data_count_axis(5) => \gen_fifo.xpm_fifo_axis_inst_n_63\,
      wr_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_64\,
      wr_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_65\,
      wr_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_66\,
      wr_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_67\,
      wr_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_68\
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 1328)
`protect data_block
Okjcird9SnSMJg2BySbbHf2HKMxSKZaOat09ncnIdCoQOPPacBg4MaRgGuZkRRw+fENKXaxskQOU
bLCfLlSHKq+t61S6txKoewph0ekHQHPOOl9l7hSPgBAsxDDlUL4+C3BsVFWFIjXPtlgTFN4wciHe
7qMaLY/WbjVuxBbnPXVFx440lpVSNV1AUpOXrWx8iRJXbf6unz3fHOQurh7J8Hfbiq/TWR6T7Wkv
4EApbpCj07QRVaMbNJqxMuYJpJlrLovcEpQNhUjxZ+5TYwscObnRz/mCGxPckgLVnn/CTzTuooN6
i8aPf2LVx6kXTfx8b8PFdWJ1vevfS/jH/fjxrF20CS9RQwjyzNq2fRJl8I/yBEqqFxPS5DrvXoUD
YweGnKn2mu6+97XQcmxTbKTnFszCuraFMUISeUFSg5z31tbw6ksWhzwbL/vt7YTcou+HMv9DcVBD
3EsFV5WfjXPoNvkpRcWwj2QNELeGJp7A3q+hrM13AI2l/1X+YVURLBJtnc5Ydk5nvTwybDJfg4dB
J8+LA2KJivX3FQLRYT/+palenzPLFPUbBt9+zDyBV9Ufbe5rXuTVI4aE12ABUAkNdlnK6fZ4sgIE
ioFLlDirz5Bqcvvey6gg9ueUzNE/1wGY2NFyJdHXpQf7Z0Dicelhr2ImfjlcOBY1nCsfCUwUYmCv
sS4jKfl8MwH8VYNyoOfOBOiWx1KbV4cZs0wPjxMEXg7zWwLC53z6nZNNfDiWFGR4CugRlZtn6mTZ
NVKpxGDBklui5wgYcOxg+qIqfwR9xVntLAscOqf4aqoKVhtpjzlNhp4+azZjblCCtpRd9gI3t5fS
MtYraVRN6EMF0RzOy8rY06Lfgx6w3YLumYuPU7OD73GXGrlBTsS+RIdjqv6WeTo10gGrROapneFm
m5pddMLIC5m3lJX/rSA3Z9/cIH152AUisGHNBHPprRINmRCsa3dTnBZVk6TXfsssQc4p6ItBm3Va
FyxfgPr83bpKaoaai5z24bcajB0yXZ/qPZqi4G6J7rawZG2I919FNO+1o6rfXz+8qp+Mrd5ZjJus
BAac7uTQFshFAc4tL2Uj5BEFl7tFClyCYSpF5wm6nH5bvU3RkpcjmRVMfCg2kIEnlyLJb2cc7EWl
lt9cTnBuhsFW4ndkO/ieMhNVAz8GW6glexGgSiHAcvKohkgzI18Y8i+8/QiRx1/9YXaFl63a+lQw
59MolK3f6AfIDyn7xOiywpXMTccKjKQcZIiUvEYxEQgIcpaqk76Qt8lMGFZW6GBLVNs1HqfA78+2
01X+B9OXsVR5ciDQ5Kb79Nb3Q3cli2wmWRB7gosE8IKlxefeOqcx1/zsbFiot/bV6g5XEGgkTR4a
E1aROW1dLY4qowC8qBS84fzpo3TuUDIomk1awad6gwd9V6dFxAepNqXb5ETTpXMVmSpEBi/QVCka
t86q4rxTFDWD5sqBgTW1m/I34Xf+E0d5NzBS6p5IJsLJj4A2MAaJFzKG5mEH8Zvsz5emzuqg0UC8
RN63sjSSl2B3oD004WR2ENtAdLPDijRkxnaVuVERJzjRJkX9OnC05UT59CiBhKfAVgoczk8D4yIK
+Is+D5eXPdsbKu84qpoph3DOCkovwSL76H/ifwhIv+pJ4dCh5Qj3T0wgao+MIy/yPsPwPElvEEut
eEcMOT6lLvfe5PZbRYmce577BFMg/OEOS+HvekwgmocpV9hRtEZxarFLEUr3z33SQ9ao1QEYm/ni
vth29O/R2aMatsq7X9mOK20=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_line_buffer is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "line_buffer,axis_data_fifo_v2_0_4_top,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "line_buffer";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_MIPI_CSI_2_RX_0_0_line_buffer : entity is "axis_data_fifo_v2_0_4_top,Vivado 2020.2";
end system_MIPI_CSI_2_RX_0_0_line_buffer;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_line_buffer is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_CLKIF CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_RSTIF RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_info of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute x_interface_parameter of m_axis_tuser : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_info of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute x_interface_parameter of s_axis_tuser : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  axis_rd_data_count(31) <= \<const0>\;
  axis_rd_data_count(30) <= \<const0>\;
  axis_rd_data_count(29) <= \<const0>\;
  axis_rd_data_count(28) <= \<const0>\;
  axis_rd_data_count(27) <= \<const0>\;
  axis_rd_data_count(26) <= \<const0>\;
  axis_rd_data_count(25) <= \<const0>\;
  axis_rd_data_count(24) <= \<const0>\;
  axis_rd_data_count(23) <= \<const0>\;
  axis_rd_data_count(22) <= \<const0>\;
  axis_rd_data_count(21) <= \<const0>\;
  axis_rd_data_count(20) <= \<const0>\;
  axis_rd_data_count(19) <= \<const0>\;
  axis_rd_data_count(18) <= \<const0>\;
  axis_rd_data_count(17) <= \<const0>\;
  axis_rd_data_count(16) <= \<const0>\;
  axis_rd_data_count(15) <= \<const0>\;
  axis_rd_data_count(14) <= \<const0>\;
  axis_rd_data_count(13) <= \<const0>\;
  axis_rd_data_count(12) <= \<const0>\;
  axis_rd_data_count(11) <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_wr_data_count(31) <= \<const0>\;
  axis_wr_data_count(30) <= \<const0>\;
  axis_wr_data_count(29) <= \<const0>\;
  axis_wr_data_count(28) <= \<const0>\;
  axis_wr_data_count(27) <= \<const0>\;
  axis_wr_data_count(26) <= \<const0>\;
  axis_wr_data_count(25) <= \<const0>\;
  axis_wr_data_count(24) <= \<const0>\;
  axis_wr_data_count(23) <= \<const0>\;
  axis_wr_data_count(22) <= \<const0>\;
  axis_wr_data_count(21) <= \<const0>\;
  axis_wr_data_count(20) <= \<const0>\;
  axis_wr_data_count(19) <= \<const0>\;
  axis_wr_data_count(18) <= \<const0>\;
  axis_wr_data_count(17) <= \<const0>\;
  axis_wr_data_count(16) <= \<const0>\;
  axis_wr_data_count(15) <= \<const0>\;
  axis_wr_data_count(14) <= \<const0>\;
  axis_wr_data_count(13) <= \<const0>\;
  axis_wr_data_count(12) <= \<const0>\;
  axis_wr_data_count(11) <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_MIPI_CSI_2_RX_0_0_axis_data_fifo_v2_0_4_top
     port map (
      m_axis_tdata(39 downto 0) => m_axis_tdata(39 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tuser(0) => m_axis_tuser(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(39 downto 0) => s_axis_tdata(39 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tuser(0) => s_axis_tuser(0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59392)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_cdc_fifo is
  port (
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "cdc_fifo,fifo_generator_v13_2_5,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "cdc_fifo";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_MIPI_CSI_2_RX_0_0_cdc_fifo : entity is "fifo_generator_v13_2_5,Vivado 2020.2";
end system_MIPI_CSI_2_RX_0_0_cdc_fifo;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_cdc_fifo is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 1;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 37;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 1;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 1;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 11;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 11;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 12;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 1;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "512x72";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 29;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 32;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 5;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of m_aclk : signal is "xilinx.com:signal:clock:1.0 master_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_aclk : signal is "XIL_INTERFACENAME master_aclk, ASSOCIATED_BUSIF M_AXIS:M_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_aclk : signal is "xilinx.com:signal:clock:1.0 slave_aclk CLK";
  attribute x_interface_parameter of s_aclk : signal is "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of s_aresetn : signal is "xilinx.com:signal:reset:1.0 slave_aresetn RST";
  attribute x_interface_parameter of s_aresetn : signal is "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_info of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_info of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
U0: entity work.system_MIPI_CSI_2_RX_0_0_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(5 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(5 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(4 downto 0) => B"00000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(4 downto 0) => B"00000",
      axis_rd_data_count(5 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(5 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(5 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(5 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => NLW_U0_data_count_UNCONNECTED(9 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => NLW_U0_dout_UNCONNECTED(17 downto 0),
      empty => NLW_U0_empty_UNCONNECTED,
      full => NLW_U0_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => m_aclk,
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(3 downto 0) => m_axis_tkeep(3 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(3 downto 0) => NLW_U0_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(0) => NLW_U0_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => s_aclk,
      s_aclk_en => '0',
      s_aresetn => s_aresetn,
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(3 downto 0) => s_axis_tkeep(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(9 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_LLP is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oSyncStages_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    mFmt_Tvalid_reg_0 : out STD_LOGIC;
    mFmt_Tlast_reg_0 : out STD_LOGIC;
    mReg_Tlast_reg_0 : out STD_LOGIC;
    \goreg_dm.dout_i_reg[0]\ : out STD_LOGIC;
    sValid_reg : out STD_LOGIC;
    sError_reg : out STD_LOGIC;
    mKeep_reg_0 : out STD_LOGIC;
    mIsHeader_reg_0 : out STD_LOGIC;
    mReg_Tvalid_reg_0 : out STD_LOGIC;
    \mReg_Tuser_reg[0]_0\ : out STD_LOGIC;
    \sErrSyndrome_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_sState_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \delay_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RAW10Formatter.cnt_reg[2]_0\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[1]_0\ : out STD_LOGIC;
    \RAW10Formatter.cnt_reg[0]_0\ : out STD_LOGIC;
    \sErrSyndrome_reg[0]\ : out STD_LOGIC;
    \sErrSyndrome_reg[4]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : out STD_LOGIC;
    mReg_Tuser0 : out STD_LOGIC;
    mIsHeader0 : out STD_LOGIC;
    mKeep0_out : out STD_LOGIC;
    video_aclk : in STD_LOGIC;
    RxByteClkHS : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    sValid_reg_0 : in STD_LOGIC;
    sError_reg_0 : in STD_LOGIC;
    mKeep_reg_1 : in STD_LOGIC;
    mIsHeader_reg_1 : in STD_LOGIC;
    mReg_Tvalid_reg_1 : in STD_LOGIC;
    \mReg_Tuser_reg[0]_1\ : in STD_LOGIC;
    mFmt_Tvalid_reg_1 : in STD_LOGIC;
    mFmt_Tlast_reg_1 : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_LLP : entity is "LLP";
end system_MIPI_CSI_2_RX_0_0_LLP;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_LLP is
  signal DataFIFO_n_10 : STD_LOGIC;
  signal DataFIFO_n_11 : STD_LOGIC;
  signal DataFIFO_n_12 : STD_LOGIC;
  signal DataFIFO_n_13 : STD_LOGIC;
  signal DataFIFO_n_14 : STD_LOGIC;
  signal DataFIFO_n_15 : STD_LOGIC;
  signal DataFIFO_n_16 : STD_LOGIC;
  signal DataFIFO_n_17 : STD_LOGIC;
  signal DataFIFO_n_18 : STD_LOGIC;
  signal DataFIFO_n_19 : STD_LOGIC;
  signal DataFIFO_n_2 : STD_LOGIC;
  signal DataFIFO_n_20 : STD_LOGIC;
  signal DataFIFO_n_21 : STD_LOGIC;
  signal DataFIFO_n_22 : STD_LOGIC;
  signal DataFIFO_n_23 : STD_LOGIC;
  signal DataFIFO_n_24 : STD_LOGIC;
  signal DataFIFO_n_25 : STD_LOGIC;
  signal DataFIFO_n_26 : STD_LOGIC;
  signal DataFIFO_n_27 : STD_LOGIC;
  signal DataFIFO_n_28 : STD_LOGIC;
  signal DataFIFO_n_29 : STD_LOGIC;
  signal DataFIFO_n_3 : STD_LOGIC;
  signal DataFIFO_n_30 : STD_LOGIC;
  signal DataFIFO_n_31 : STD_LOGIC;
  signal DataFIFO_n_32 : STD_LOGIC;
  signal DataFIFO_n_33 : STD_LOGIC;
  signal DataFIFO_n_34 : STD_LOGIC;
  signal DataFIFO_n_35 : STD_LOGIC;
  signal DataFIFO_n_36 : STD_LOGIC;
  signal DataFIFO_n_37 : STD_LOGIC;
  signal DataFIFO_n_4 : STD_LOGIC;
  signal DataFIFO_n_5 : STD_LOGIC;
  signal DataFIFO_n_6 : STD_LOGIC;
  signal DataFIFO_n_7 : STD_LOGIC;
  signal DataFIFO_n_8 : STD_LOGIC;
  signal DataFIFO_n_9 : STD_LOGIC;
  signal ECCx_n_10 : STD_LOGIC;
  signal ECCx_n_13 : STD_LOGIC;
  signal ECCx_n_14 : STD_LOGIC;
  signal ECCx_n_15 : STD_LOGIC;
  signal ECCx_n_16 : STD_LOGIC;
  signal ECCx_n_17 : STD_LOGIC;
  signal ECCx_n_18 : STD_LOGIC;
  signal ECCx_n_19 : STD_LOGIC;
  signal ECCx_n_20 : STD_LOGIC;
  signal ECCx_n_21 : STD_LOGIC;
  signal ECCx_n_22 : STD_LOGIC;
  signal ECCx_n_23 : STD_LOGIC;
  signal ECCx_n_24 : STD_LOGIC;
  signal ECCx_n_25 : STD_LOGIC;
  signal ECCx_n_26 : STD_LOGIC;
  signal ECCx_n_27 : STD_LOGIC;
  signal ECCx_n_28 : STD_LOGIC;
  signal ECCx_n_7 : STD_LOGIC;
  signal ECCx_n_9 : STD_LOGIC;
  signal \RAW10Formatter.cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \^raw10formatter.cnt_reg[0]_0\ : STD_LOGIC;
  signal \^raw10formatter.cnt_reg[1]_0\ : STD_LOGIC;
  signal \^raw10formatter.cnt_reg[2]_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][5]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][6]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][8]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[1][9]_i_3_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][6]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][8]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[2][9]_i_3_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][3]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][4]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][5]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][6]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][8]_i_2_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux[3][9]_i_3_n_0\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \RAW10Formatter.pix_mux_reg_n_0_[3][9]\ : STD_LOGIC;
  signal SyncMReset_n_1 : STD_LOGIC;
  signal SyncMReset_n_11 : STD_LOGIC;
  signal SyncMReset_n_2 : STD_LOGIC;
  signal SyncMReset_n_3 : STD_LOGIC;
  signal SyncMReset_n_4 : STD_LOGIC;
  signal SyncMReset_n_5 : STD_LOGIC;
  signal SyncMReset_n_6 : STD_LOGIC;
  signal SyncMReset_n_7 : STD_LOGIC;
  signal SyncMReset_n_8 : STD_LOGIC;
  signal SyncMReset_n_9 : STD_LOGIC;
  signal cnt : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 29 downto 2 );
  signal delay : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : STD_LOGIC;
  signal \^goreg_dm.dout_i_reg[0]\ : STD_LOGIC;
  signal mFlush_reg_n_0 : STD_LOGIC;
  signal mFmt_Tdata : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \mFmt_Tdata[39]_i_3_n_0\ : STD_LOGIC;
  signal \mFmt_Tdata[39]_i_4_n_0\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[32]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[33]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[34]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[35]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[36]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[37]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[38]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[39]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \mFmt_Tdata_reg_n_0_[9]\ : STD_LOGIC;
  signal \^mfmt_tlast_reg_0\ : STD_LOGIC;
  signal \mFmt_Tuser_reg_n_0_[0]\ : STD_LOGIC;
  signal \^mfmt_tvalid_reg_0\ : STD_LOGIC;
  signal \^misheader_reg_0\ : STD_LOGIC;
  signal \^mkeep_reg_0\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \mReg_Tdata_reg_n_0_[9]\ : STD_LOGIC;
  signal mReg_Tlast_i_2_n_0 : STD_LOGIC;
  signal mReg_Tlast_i_3_n_0 : STD_LOGIC;
  signal mReg_Tlast_i_4_n_0 : STD_LOGIC;
  signal mReg_Tlast_i_5_n_0 : STD_LOGIC;
  signal \^mreg_tlast_reg_0\ : STD_LOGIC;
  signal \^mreg_tuser_reg[0]_0\ : STD_LOGIC;
  signal \^mreg_tvalid_reg_0\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[10]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[11]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[12]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[13]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[14]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[15]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[7]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[8]\ : STD_LOGIC;
  signal \mWordCount_reg_n_0_[9]\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal \^osyncstages_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pix_mux[0]_1\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \pix_mux[1]_0\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \pix_mux[2]_2\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \pix_mux[3]_3\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal sAxisTreadyInt : STD_LOGIC;
  signal s_axis_aresetn : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DataFIFO : label is "cdc_fifo,fifo_generator_v13_2_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DataFIFO : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DataFIFO : label is "fifo_generator_v13_2_5,Vivado 2020.2";
  attribute CHECK_LICENSE_TYPE of LineBufferFIFO : label is "line_buffer,axis_data_fifo_v2_0_4_top,{}";
  attribute downgradeipidentifiedwarnings of LineBufferFIFO : label is "yes";
  attribute x_core_info of LineBufferFIFO : label is "axis_data_fifo_v2_0_4_top,Vivado 2020.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RAW10Formatter.cnt[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \RAW10Formatter.cnt[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][5]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][6]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][8]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[1][9]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][3]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][5]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][6]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][8]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][9]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[2][9]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][2]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][3]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][5]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][6]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][8]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \RAW10Formatter.pix_mux[3][9]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mFmt_Tdata[13]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mFmt_Tdata[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mFmt_Tdata[15]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mFmt_Tdata[16]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mFmt_Tdata[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mFmt_Tdata[18]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mFmt_Tdata[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mFmt_Tdata[39]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mFmt_Tdata[39]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mWordCount[0]_i_3\ : label is "soft_lutpair14";
begin
  \RAW10Formatter.cnt_reg[0]_0\ <= \^raw10formatter.cnt_reg[0]_0\;
  \RAW10Formatter.cnt_reg[1]_0\ <= \^raw10formatter.cnt_reg[1]_0\;
  \RAW10Formatter.cnt_reg[2]_0\ <= \^raw10formatter.cnt_reg[2]_0\;
  \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ <= \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\;
  \goreg_dm.dout_i_reg[0]\ <= \^goreg_dm.dout_i_reg[0]\;
  mFmt_Tlast_reg_0 <= \^mfmt_tlast_reg_0\;
  mFmt_Tvalid_reg_0 <= \^mfmt_tvalid_reg_0\;
  mIsHeader_reg_0 <= \^misheader_reg_0\;
  mKeep_reg_0 <= \^mkeep_reg_0\;
  mReg_Tlast_reg_0 <= \^mreg_tlast_reg_0\;
  \mReg_Tuser_reg[0]_0\ <= \^mreg_tuser_reg[0]_0\;
  mReg_Tvalid_reg_0 <= \^mreg_tvalid_reg_0\;
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  \oSyncStages_reg[1]\(0) <= \^osyncstages_reg[1]\(0);
  \out\(0) <= \^out\(0);
  s_axis_tready <= \^s_axis_tready\;
DataFIFO: entity work.system_MIPI_CSI_2_RX_0_0_cdc_fifo
     port map (
      m_aclk => video_aclk,
      m_axis_tdata(31) => DataFIFO_n_2,
      m_axis_tdata(30) => DataFIFO_n_3,
      m_axis_tdata(29) => DataFIFO_n_4,
      m_axis_tdata(28) => DataFIFO_n_5,
      m_axis_tdata(27) => DataFIFO_n_6,
      m_axis_tdata(26) => DataFIFO_n_7,
      m_axis_tdata(25) => DataFIFO_n_8,
      m_axis_tdata(24) => DataFIFO_n_9,
      m_axis_tdata(23) => DataFIFO_n_10,
      m_axis_tdata(22) => DataFIFO_n_11,
      m_axis_tdata(21) => DataFIFO_n_12,
      m_axis_tdata(20) => DataFIFO_n_13,
      m_axis_tdata(19) => DataFIFO_n_14,
      m_axis_tdata(18) => DataFIFO_n_15,
      m_axis_tdata(17) => DataFIFO_n_16,
      m_axis_tdata(16) => DataFIFO_n_17,
      m_axis_tdata(15) => DataFIFO_n_18,
      m_axis_tdata(14) => DataFIFO_n_19,
      m_axis_tdata(13) => DataFIFO_n_20,
      m_axis_tdata(12) => DataFIFO_n_21,
      m_axis_tdata(11) => DataFIFO_n_22,
      m_axis_tdata(10) => DataFIFO_n_23,
      m_axis_tdata(9) => DataFIFO_n_24,
      m_axis_tdata(8) => DataFIFO_n_25,
      m_axis_tdata(7) => DataFIFO_n_26,
      m_axis_tdata(6) => DataFIFO_n_27,
      m_axis_tdata(5) => DataFIFO_n_28,
      m_axis_tdata(4) => DataFIFO_n_29,
      m_axis_tdata(3) => DataFIFO_n_30,
      m_axis_tdata(2) => DataFIFO_n_31,
      m_axis_tdata(1) => DataFIFO_n_32,
      m_axis_tdata(0) => DataFIFO_n_33,
      m_axis_tkeep(3) => DataFIFO_n_34,
      m_axis_tkeep(2) => DataFIFO_n_35,
      m_axis_tkeep(1) => DataFIFO_n_36,
      m_axis_tkeep(0) => DataFIFO_n_37,
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => ECCx_n_9,
      m_axis_tvalid => \^m_axis_tvalid\,
      s_aclk => RxByteClkHS,
      s_aresetn => s_aresetn,
      s_axis_tdata(31 downto 0) => Q(31 downto 0),
      s_axis_tkeep(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => sAxisTreadyInt,
      s_axis_tvalid => s_axis_tvalid
    );
ECCx: entity work.system_MIPI_CSI_2_RX_0_0_ECC
     port map (
      D(29) => DataFIFO_n_4,
      D(28) => DataFIFO_n_5,
      D(27) => DataFIFO_n_6,
      D(26) => DataFIFO_n_7,
      D(25) => DataFIFO_n_8,
      D(24) => DataFIFO_n_9,
      D(23) => DataFIFO_n_10,
      D(22) => DataFIFO_n_11,
      D(21) => DataFIFO_n_12,
      D(20) => DataFIFO_n_13,
      D(19) => DataFIFO_n_14,
      D(18) => DataFIFO_n_15,
      D(17) => DataFIFO_n_16,
      D(16) => DataFIFO_n_17,
      D(15) => DataFIFO_n_18,
      D(14) => DataFIFO_n_19,
      D(13) => DataFIFO_n_20,
      D(12) => DataFIFO_n_21,
      D(11) => DataFIFO_n_22,
      D(10) => DataFIFO_n_23,
      D(9) => DataFIFO_n_24,
      D(8) => DataFIFO_n_25,
      D(7) => DataFIFO_n_26,
      D(6) => DataFIFO_n_27,
      D(5) => DataFIFO_n_28,
      D(4) => DataFIFO_n_29,
      D(3) => DataFIFO_n_30,
      D(2) => DataFIFO_n_31,
      D(1) => DataFIFO_n_32,
      D(0) => DataFIFO_n_33,
      \FSM_onehot_sState_reg[3]_0\(0) => \FSM_onehot_sState_reg[3]\(0),
      O(3) => ECCx_n_13,
      O(2) => ECCx_n_14,
      O(1) => ECCx_n_15,
      O(0) => ECCx_n_16,
      Q(3 downto 0) => \sErrSyndrome_reg[3]\(3 downto 0),
      \goreg_dm.dout_i_reg[0]\ => ECCx_n_10,
      mFlush_reg => \^mkeep_reg_0\,
      mFlush_reg_0 => mFlush_reg_n_0,
      mIsHeader0 => mIsHeader0,
      mKeep0_out => mKeep0_out,
      mReg_Tuser0 => mReg_Tuser0,
      \mWordCount_reg[0]\ => \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\,
      \mWordCount_reg[11]\ => \mWordCount_reg_n_0_[8]\,
      \mWordCount_reg[11]_0\ => \mWordCount_reg_n_0_[9]\,
      \mWordCount_reg[11]_1\ => \mWordCount_reg_n_0_[10]\,
      \mWordCount_reg[11]_2\ => \mWordCount_reg_n_0_[11]\,
      \mWordCount_reg[15]\ => \mWordCount_reg_n_0_[12]\,
      \mWordCount_reg[15]_0\ => \mWordCount_reg_n_0_[13]\,
      \mWordCount_reg[15]_1\ => \mWordCount_reg_n_0_[14]\,
      \mWordCount_reg[15]_2\ => \mWordCount_reg_n_0_[15]\,
      \mWordCount_reg[3]\ => \mWordCount_reg_n_0_[2]\,
      \mWordCount_reg[3]_0\ => \mWordCount_reg_n_0_[3]\,
      \mWordCount_reg[3]_1\ => \mWordCount_reg_n_0_[0]\,
      \mWordCount_reg[3]_2\ => \mWordCount_reg_n_0_[1]\,
      \mWordCount_reg[7]\ => \mWordCount_reg_n_0_[4]\,
      \mWordCount_reg[7]_0\ => \mWordCount_reg_n_0_[5]\,
      \mWordCount_reg[7]_1\ => \mWordCount_reg_n_0_[6]\,
      \mWordCount_reg[7]_2\ => \mWordCount_reg_n_0_[7]\,
      m_axis_tkeep(3) => DataFIFO_n_34,
      m_axis_tkeep(2) => DataFIFO_n_35,
      m_axis_tkeep(1) => DataFIFO_n_36,
      m_axis_tkeep(0) => DataFIFO_n_37,
      m_axis_tlast => \^m_axis_tlast\,
      m_axis_tready => ECCx_n_9,
      m_axis_tvalid => \^m_axis_tvalid\,
      \out\(0) => \^out\(0),
      \sECCIn_reg[0]_0\ => \^misheader_reg_0\,
      \sErrSyndrome_reg[0]_0\ => \sErrSyndrome_reg[0]\,
      \sErrSyndrome_reg[4]_0\ => \sErrSyndrome_reg[4]\,
      sError_reg_0 => sError_reg,
      sError_reg_1 => sError_reg_0,
      \sHeaderOut_reg[5]_0\ => ECCx_n_7,
      sValid_reg_0 => sValid_reg,
      sValid_reg_1(3) => ECCx_n_17,
      sValid_reg_1(2) => ECCx_n_18,
      sValid_reg_1(1) => ECCx_n_19,
      sValid_reg_1(0) => ECCx_n_20,
      sValid_reg_2(3) => ECCx_n_21,
      sValid_reg_2(2) => ECCx_n_22,
      sValid_reg_2(1) => ECCx_n_23,
      sValid_reg_2(0) => ECCx_n_24,
      sValid_reg_3(3) => ECCx_n_25,
      sValid_reg_3(2) => ECCx_n_26,
      sValid_reg_3(1) => ECCx_n_27,
      sValid_reg_3(0) => ECCx_n_28,
      sValid_reg_4 => sValid_reg_0,
      s_axis_tready => \^s_axis_tready\,
      video_aclk => video_aclk
    );
LineBufferFIFO: entity work.system_MIPI_CSI_2_RX_0_0_line_buffer
     port map (
      axis_rd_data_count(31 downto 0) => NLW_LineBufferFIFO_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_LineBufferFIFO_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_tlast => m_axis_video_tlast,
      m_axis_tready => m_axis_video_tready,
      m_axis_tuser(0) => m_axis_video_tuser(0),
      m_axis_tvalid => m_axis_video_tvalid,
      s_axis_aclk => video_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(39) => \mFmt_Tdata_reg_n_0_[39]\,
      s_axis_tdata(38) => \mFmt_Tdata_reg_n_0_[38]\,
      s_axis_tdata(37) => \mFmt_Tdata_reg_n_0_[37]\,
      s_axis_tdata(36) => \mFmt_Tdata_reg_n_0_[36]\,
      s_axis_tdata(35) => \mFmt_Tdata_reg_n_0_[35]\,
      s_axis_tdata(34) => \mFmt_Tdata_reg_n_0_[34]\,
      s_axis_tdata(33) => \mFmt_Tdata_reg_n_0_[33]\,
      s_axis_tdata(32) => \mFmt_Tdata_reg_n_0_[32]\,
      s_axis_tdata(31) => \mFmt_Tdata_reg_n_0_[31]\,
      s_axis_tdata(30) => \mFmt_Tdata_reg_n_0_[30]\,
      s_axis_tdata(29) => \mFmt_Tdata_reg_n_0_[29]\,
      s_axis_tdata(28) => \mFmt_Tdata_reg_n_0_[28]\,
      s_axis_tdata(27) => \mFmt_Tdata_reg_n_0_[27]\,
      s_axis_tdata(26) => \mFmt_Tdata_reg_n_0_[26]\,
      s_axis_tdata(25) => \mFmt_Tdata_reg_n_0_[25]\,
      s_axis_tdata(24) => \mFmt_Tdata_reg_n_0_[24]\,
      s_axis_tdata(23) => \mFmt_Tdata_reg_n_0_[23]\,
      s_axis_tdata(22) => \mFmt_Tdata_reg_n_0_[22]\,
      s_axis_tdata(21) => \mFmt_Tdata_reg_n_0_[21]\,
      s_axis_tdata(20) => \mFmt_Tdata_reg_n_0_[20]\,
      s_axis_tdata(19) => \mFmt_Tdata_reg_n_0_[19]\,
      s_axis_tdata(18) => \mFmt_Tdata_reg_n_0_[18]\,
      s_axis_tdata(17) => \mFmt_Tdata_reg_n_0_[17]\,
      s_axis_tdata(16) => \mFmt_Tdata_reg_n_0_[16]\,
      s_axis_tdata(15) => \mFmt_Tdata_reg_n_0_[15]\,
      s_axis_tdata(14) => \mFmt_Tdata_reg_n_0_[14]\,
      s_axis_tdata(13) => \mFmt_Tdata_reg_n_0_[13]\,
      s_axis_tdata(12) => \mFmt_Tdata_reg_n_0_[12]\,
      s_axis_tdata(11) => \mFmt_Tdata_reg_n_0_[11]\,
      s_axis_tdata(10) => \mFmt_Tdata_reg_n_0_[10]\,
      s_axis_tdata(9) => \mFmt_Tdata_reg_n_0_[9]\,
      s_axis_tdata(8) => \mFmt_Tdata_reg_n_0_[8]\,
      s_axis_tdata(7) => \mFmt_Tdata_reg_n_0_[7]\,
      s_axis_tdata(6) => \mFmt_Tdata_reg_n_0_[6]\,
      s_axis_tdata(5) => \mFmt_Tdata_reg_n_0_[5]\,
      s_axis_tdata(4) => \mFmt_Tdata_reg_n_0_[4]\,
      s_axis_tdata(3) => \mFmt_Tdata_reg_n_0_[3]\,
      s_axis_tdata(2) => \mFmt_Tdata_reg_n_0_[2]\,
      s_axis_tdata(1) => \mFmt_Tdata_reg_n_0_[1]\,
      s_axis_tdata(0) => \mFmt_Tdata_reg_n_0_[0]\,
      s_axis_tlast => \^mfmt_tlast_reg_0\,
      s_axis_tready => \^s_axis_tready\,
      s_axis_tuser(0) => \mFmt_Tuser_reg_n_0_[0]\,
      s_axis_tvalid => \^mfmt_tvalid_reg_0\
    );
\RAW10Formatter.cnt[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => \^mreg_tvalid_reg_0\,
      O => cnt
    );
\RAW10Formatter.cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^raw10formatter.cnt_reg[0]_0\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      O => \RAW10Formatter.cnt[2]_i_2_n_0\
    );
\RAW10Formatter.cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_4,
      Q => \^raw10formatter.cnt_reg[0]_0\,
      R => '0'
    );
\RAW10Formatter.cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_3,
      Q => \^raw10formatter.cnt_reg[1]_0\,
      R => '0'
    );
\RAW10Formatter.cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_2,
      Q => \^raw10formatter.cnt_reg[2]_0\,
      R => '0'
    );
\RAW10Formatter.pix_mux[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[24]\,
      I1 => \mReg_Tdata_reg_n_0_[8]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[16]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[0]\,
      O => \pix_mux[0]_1\(2)
    );
\RAW10Formatter.pix_mux[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[25]\,
      I1 => \mReg_Tdata_reg_n_0_[9]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[17]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[1]\,
      O => \pix_mux[0]_1\(3)
    );
\RAW10Formatter.pix_mux[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[26]\,
      I1 => \mReg_Tdata_reg_n_0_[10]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[18]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[2]\,
      O => \pix_mux[0]_1\(4)
    );
\RAW10Formatter.pix_mux[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[27]\,
      I1 => \mReg_Tdata_reg_n_0_[11]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[19]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[3]\,
      O => \pix_mux[0]_1\(5)
    );
\RAW10Formatter.pix_mux[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[28]\,
      I1 => \mReg_Tdata_reg_n_0_[12]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[20]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[4]\,
      O => \pix_mux[0]_1\(6)
    );
\RAW10Formatter.pix_mux[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[29]\,
      I1 => \mReg_Tdata_reg_n_0_[13]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[21]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[5]\,
      O => \pix_mux[0]_1\(7)
    );
\RAW10Formatter.pix_mux[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[30]\,
      I1 => \mReg_Tdata_reg_n_0_[14]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[22]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[6]\,
      O => \pix_mux[0]_1\(8)
    );
\RAW10Formatter.pix_mux[0][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[31]\,
      I1 => \mReg_Tdata_reg_n_0_[15]\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      I3 => \mReg_Tdata_reg_n_0_[23]\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => \mReg_Tdata_reg_n_0_[7]\,
      O => \pix_mux[0]_1\(9)
    );
\RAW10Formatter.pix_mux[1][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[24]\,
      I1 => \mReg_Tdata_reg_n_0_[0]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][2]_i_2_n_0\,
      O => \pix_mux[1]_0\(2)
    );
\RAW10Formatter.pix_mux[1][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[16]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[8]\,
      O => \RAW10Formatter.pix_mux[1][2]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[25]\,
      I1 => \mReg_Tdata_reg_n_0_[1]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][3]_i_2_n_0\,
      O => \pix_mux[1]_0\(3)
    );
\RAW10Formatter.pix_mux[1][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[17]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[9]\,
      O => \RAW10Formatter.pix_mux[1][3]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[26]\,
      I1 => \mReg_Tdata_reg_n_0_[2]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][4]_i_2_n_0\,
      O => \pix_mux[1]_0\(4)
    );
\RAW10Formatter.pix_mux[1][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[18]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[10]\,
      O => \RAW10Formatter.pix_mux[1][4]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[27]\,
      I1 => \mReg_Tdata_reg_n_0_[3]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][5]_i_2_n_0\,
      O => \pix_mux[1]_0\(5)
    );
\RAW10Formatter.pix_mux[1][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[19]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[11]\,
      O => \RAW10Formatter.pix_mux[1][5]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[28]\,
      I1 => \mReg_Tdata_reg_n_0_[4]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][6]_i_2_n_0\,
      O => \pix_mux[1]_0\(6)
    );
\RAW10Formatter.pix_mux[1][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[20]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[12]\,
      O => \RAW10Formatter.pix_mux[1][6]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[29]\,
      I1 => \mReg_Tdata_reg_n_0_[5]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][7]_i_2_n_0\,
      O => \pix_mux[1]_0\(7)
    );
\RAW10Formatter.pix_mux[1][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[21]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[13]\,
      O => \RAW10Formatter.pix_mux[1][7]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[30]\,
      I1 => \mReg_Tdata_reg_n_0_[6]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][8]_i_2_n_0\,
      O => \pix_mux[1]_0\(8)
    );
\RAW10Formatter.pix_mux[1][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[22]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[14]\,
      O => \RAW10Formatter.pix_mux[1][8]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[1][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[31]\,
      I1 => \mReg_Tdata_reg_n_0_[7]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][9]_i_3_n_0\,
      O => \pix_mux[1]_0\(9)
    );
\RAW10Formatter.pix_mux[1][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[23]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[15]\,
      O => \RAW10Formatter.pix_mux[1][9]_i_3_n_0\
    );
\RAW10Formatter.pix_mux[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[0]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[24]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][2]_i_2_n_0\,
      O => \pix_mux[2]_2\(2)
    );
\RAW10Formatter.pix_mux[2][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[8]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[16]\,
      O => \RAW10Formatter.pix_mux[2][2]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[1]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[25]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][3]_i_2_n_0\,
      O => \pix_mux[2]_2\(3)
    );
\RAW10Formatter.pix_mux[2][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[9]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[17]\,
      O => \RAW10Formatter.pix_mux[2][3]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[2]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[26]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][4]_i_2_n_0\,
      O => \pix_mux[2]_2\(4)
    );
\RAW10Formatter.pix_mux[2][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[10]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[18]\,
      O => \RAW10Formatter.pix_mux[2][4]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[3]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[27]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][5]_i_2_n_0\,
      O => \pix_mux[2]_2\(5)
    );
\RAW10Formatter.pix_mux[2][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[11]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[19]\,
      O => \RAW10Formatter.pix_mux[2][5]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[4]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[28]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][6]_i_2_n_0\,
      O => \pix_mux[2]_2\(6)
    );
\RAW10Formatter.pix_mux[2][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[12]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[20]\,
      O => \RAW10Formatter.pix_mux[2][6]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[5]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[29]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][7]_i_2_n_0\,
      O => \pix_mux[2]_2\(7)
    );
\RAW10Formatter.pix_mux[2][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[13]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[21]\,
      O => \RAW10Formatter.pix_mux[2][7]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[6]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[30]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][8]_i_2_n_0\,
      O => \pix_mux[2]_2\(8)
    );
\RAW10Formatter.pix_mux[2][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[14]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[22]\,
      O => \RAW10Formatter.pix_mux[2][8]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[2][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[7]\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \mReg_Tdata_reg_n_0_[31]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \RAW10Formatter.pix_mux[2][9]_i_3_n_0\,
      O => \pix_mux[2]_2\(9)
    );
\RAW10Formatter.pix_mux[2][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[15]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[23]\,
      O => \RAW10Formatter.pix_mux[2][9]_i_3_n_0\
    );
\RAW10Formatter.pix_mux[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[8]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[0]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][2]_i_2_n_0\,
      O => \pix_mux[3]_3\(2)
    );
\RAW10Formatter.pix_mux[3][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[16]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[24]\,
      O => \RAW10Formatter.pix_mux[3][2]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[9]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[1]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][3]_i_2_n_0\,
      O => \pix_mux[3]_3\(3)
    );
\RAW10Formatter.pix_mux[3][3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[17]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[25]\,
      O => \RAW10Formatter.pix_mux[3][3]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[10]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[2]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][4]_i_2_n_0\,
      O => \pix_mux[3]_3\(4)
    );
\RAW10Formatter.pix_mux[3][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[18]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[26]\,
      O => \RAW10Formatter.pix_mux[3][4]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[11]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[3]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][5]_i_2_n_0\,
      O => \pix_mux[3]_3\(5)
    );
\RAW10Formatter.pix_mux[3][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[19]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[27]\,
      O => \RAW10Formatter.pix_mux[3][5]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[12]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[4]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][6]_i_2_n_0\,
      O => \pix_mux[3]_3\(6)
    );
\RAW10Formatter.pix_mux[3][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[20]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[28]\,
      O => \RAW10Formatter.pix_mux[3][6]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[13]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[5]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][7]_i_2_n_0\,
      O => \pix_mux[3]_3\(7)
    );
\RAW10Formatter.pix_mux[3][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[21]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[29]\,
      O => \RAW10Formatter.pix_mux[3][7]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[14]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[6]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][8]_i_2_n_0\,
      O => \pix_mux[3]_3\(8)
    );
\RAW10Formatter.pix_mux[3][8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[22]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[30]\,
      O => \RAW10Formatter.pix_mux[3][8]_i_2_n_0\
    );
\RAW10Formatter.pix_mux[3][9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[15]\,
      I1 => \^raw10formatter.cnt_reg[0]_0\,
      I2 => \mReg_Tdata_reg_n_0_[7]\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[3][9]_i_3_n_0\,
      O => \pix_mux[3]_3\(9)
    );
\RAW10Formatter.pix_mux[3][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[23]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[31]\,
      O => \RAW10Formatter.pix_mux[3][9]_i_3_n_0\
    );
\RAW10Formatter.pix_mux_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(2),
      Q => data1(2),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(3),
      Q => data1(3),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(4),
      Q => data1(4),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(5),
      Q => data1(5),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(6),
      Q => data1(6),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(7),
      Q => data1(7),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(8),
      Q => data1(8),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_6,
      D => \pix_mux[0]_1\(9),
      Q => data1(9),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(2),
      Q => data1(12),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(3),
      Q => data1(13),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(4),
      Q => data1(14),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(5),
      Q => data1(15),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(6),
      Q => data1(16),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(7),
      Q => data1(17),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(8),
      Q => data1(18),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_7,
      D => \pix_mux[1]_0\(9),
      Q => data1(19),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(2),
      Q => data1(22),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(3),
      Q => data1(23),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(4),
      Q => data1(24),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(5),
      Q => data1(25),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(6),
      Q => data1(26),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(7),
      Q => data1(27),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(8),
      Q => data1(28),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_8,
      D => \pix_mux[2]_2\(9),
      Q => data1(29),
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(2),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][2]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(3),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][3]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(4),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][4]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(5),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][5]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(6),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][6]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(7),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][7]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(8),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][8]\,
      R => '0'
    );
\RAW10Formatter.pix_mux_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_9,
      D => \pix_mux[3]_3\(9),
      Q => \RAW10Formatter.pix_mux_reg_n_0_[3][9]\,
      R => '0'
    );
SyncMReset: entity work.\system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_3\
     port map (
      AS(0) => AS(0),
      E(0) => SyncMReset_n_1,
      \RAW10Formatter.cnt_reg[0]\ => SyncMReset_n_4,
      \RAW10Formatter.cnt_reg[1]\ => SyncMReset_n_3,
      \RAW10Formatter.cnt_reg[1]_0\ => \^raw10formatter.cnt_reg[1]_0\,
      \RAW10Formatter.cnt_reg[1]_1\ => \^raw10formatter.cnt_reg[0]_0\,
      \RAW10Formatter.cnt_reg[2]\ => \RAW10Formatter.cnt[2]_i_2_n_0\,
      \RAW10Formatter.cnt_reg[2]_0\ => \^mreg_tvalid_reg_0\,
      \RAW10Formatter.cnt_reg[2]_1\ => \^mreg_tlast_reg_0\,
      \RAW10Formatter.cnt_reg[2]_2\ => \^raw10formatter.cnt_reg[2]_0\,
      cnt => cnt,
      \mFmt_Tuser_reg[0]\ => \^mfmt_tvalid_reg_0\,
      \mFmt_Tuser_reg[0]_0\ => \^mreg_tuser_reg[0]_0\,
      mFmt_Tvalid_reg => SyncMReset_n_11,
      \mReg_Tdata_reg[31]\ => \^mkeep_reg_0\,
      mReg_Tvalid_reg => SyncMReset_n_2,
      m_axis_tvalid => \^m_axis_tvalid\,
      \oSyncStages_reg[1]\(0) => SyncMReset_n_5,
      \oSyncStages_reg[1]_0\(0) => SyncMReset_n_6,
      \oSyncStages_reg[1]_1\(0) => SyncMReset_n_7,
      \oSyncStages_reg[1]_2\(0) => SyncMReset_n_8,
      \oSyncStages_reg[1]_3\(0) => SyncMReset_n_9,
      \out\(0) => \^out\(0),
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tready => \^s_axis_tready\,
      s_axis_tuser(0) => \mFmt_Tuser_reg_n_0_[0]\,
      video_aclk => video_aclk
    );
SyncSReset: entity work.\system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0_4\
     port map (
      AS(0) => AS(0),
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]\(0) => \^osyncstages_reg[1]\(0)
    );
\delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \^osyncstages_reg[1]\(0),
      D => sAxisTreadyInt,
      Q => delay(0)
    );
\delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => RxByteClkHS,
      CE => '1',
      CLR => \^osyncstages_reg[1]\(0),
      D => delay(0),
      Q => \delay_reg[1]_0\(0)
    );
mFlush_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => ECCx_n_10,
      Q => mFlush_reg_n_0,
      R => '0'
    );
\mFmt_Tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[0]\,
      I1 => \mReg_Tdata_reg_n_0_[24]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][2]_i_2_n_0\,
      O => mFmt_Tdata(0)
    );
\mFmt_Tdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[2]\,
      I1 => \mReg_Tdata_reg_n_0_[26]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][4]_i_2_n_0\,
      O => mFmt_Tdata(10)
    );
\mFmt_Tdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[3]\,
      I1 => \mReg_Tdata_reg_n_0_[27]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][5]_i_2_n_0\,
      O => mFmt_Tdata(11)
    );
\mFmt_Tdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[0]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(12),
      O => mFmt_Tdata(12)
    );
\mFmt_Tdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[1]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(13),
      O => mFmt_Tdata(13)
    );
\mFmt_Tdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[2]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(14),
      O => mFmt_Tdata(14)
    );
\mFmt_Tdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[3]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(15),
      O => mFmt_Tdata(15)
    );
\mFmt_Tdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[4]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(16),
      O => mFmt_Tdata(16)
    );
\mFmt_Tdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[5]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(17),
      O => mFmt_Tdata(17)
    );
\mFmt_Tdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[6]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(18),
      O => mFmt_Tdata(18)
    );
\mFmt_Tdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[7]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => data1(19),
      O => mFmt_Tdata(19)
    );
\mFmt_Tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCAC0CA"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[1]\,
      I1 => \mReg_Tdata_reg_n_0_[25]\,
      I2 => \^raw10formatter.cnt_reg[2]_0\,
      I3 => \^raw10formatter.cnt_reg[1]_0\,
      I4 => \RAW10Formatter.pix_mux[1][3]_i_2_n_0\,
      O => mFmt_Tdata(1)
    );
\mFmt_Tdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[4]\,
      I1 => \mReg_Tdata_reg_n_0_[28]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[12]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[20]\,
      O => mFmt_Tdata(20)
    );
\mFmt_Tdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[5]\,
      I1 => \mReg_Tdata_reg_n_0_[29]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[13]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[21]\,
      O => mFmt_Tdata(21)
    );
\mFmt_Tdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[8]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[0]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(22),
      O => mFmt_Tdata(22)
    );
\mFmt_Tdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[9]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[1]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(23),
      O => mFmt_Tdata(23)
    );
\mFmt_Tdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[10]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[2]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(24),
      O => mFmt_Tdata(24)
    );
\mFmt_Tdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[11]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[3]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(25),
      O => mFmt_Tdata(25)
    );
\mFmt_Tdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[12]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[4]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(26),
      O => mFmt_Tdata(26)
    );
\mFmt_Tdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[13]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[5]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(27),
      O => mFmt_Tdata(27)
    );
\mFmt_Tdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[14]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[6]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(28),
      O => mFmt_Tdata(28)
    );
\mFmt_Tdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[15]\,
      I1 => \^raw10formatter.cnt_reg[2]_0\,
      I2 => \mReg_Tdata_reg_n_0_[7]\,
      I3 => \^raw10formatter.cnt_reg[0]_0\,
      I4 => \^raw10formatter.cnt_reg[1]_0\,
      I5 => data1(29),
      O => mFmt_Tdata(29)
    );
\mFmt_Tdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[6]\,
      I1 => \mReg_Tdata_reg_n_0_[30]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[14]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[22]\,
      O => mFmt_Tdata(30)
    );
\mFmt_Tdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mReg_Tdata_reg_n_0_[7]\,
      I1 => \mReg_Tdata_reg_n_0_[31]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[15]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[23]\,
      O => mFmt_Tdata(31)
    );
\mFmt_Tdata[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][2]\,
      I1 => \mReg_Tdata_reg_n_0_[16]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[0]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[8]\,
      O => mFmt_Tdata(32)
    );
\mFmt_Tdata[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][3]\,
      I1 => \mReg_Tdata_reg_n_0_[17]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[1]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[9]\,
      O => mFmt_Tdata(33)
    );
\mFmt_Tdata[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][4]\,
      I1 => \mReg_Tdata_reg_n_0_[18]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[2]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[10]\,
      O => mFmt_Tdata(34)
    );
\mFmt_Tdata[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][5]\,
      I1 => \mReg_Tdata_reg_n_0_[19]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[3]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[11]\,
      O => mFmt_Tdata(35)
    );
\mFmt_Tdata[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][6]\,
      I1 => \mReg_Tdata_reg_n_0_[20]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[4]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[12]\,
      O => mFmt_Tdata(36)
    );
\mFmt_Tdata[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][7]\,
      I1 => \mReg_Tdata_reg_n_0_[21]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[5]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[13]\,
      O => mFmt_Tdata(37)
    );
\mFmt_Tdata[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][8]\,
      I1 => \mReg_Tdata_reg_n_0_[22]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[6]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[14]\,
      O => mFmt_Tdata(38)
    );
\mFmt_Tdata[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAW10Formatter.pix_mux_reg_n_0_[3][9]\,
      I1 => \mReg_Tdata_reg_n_0_[23]\,
      I2 => \mFmt_Tdata[39]_i_3_n_0\,
      I3 => \mReg_Tdata_reg_n_0_[7]\,
      I4 => \mFmt_Tdata[39]_i_4_n_0\,
      I5 => \mReg_Tdata_reg_n_0_[15]\,
      O => mFmt_Tdata(39)
    );
\mFmt_Tdata[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^raw10formatter.cnt_reg[2]_0\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      O => \mFmt_Tdata[39]_i_3_n_0\
    );
\mFmt_Tdata[39]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^raw10formatter.cnt_reg[2]_0\,
      I1 => \^raw10formatter.cnt_reg[1]_0\,
      I2 => \^raw10formatter.cnt_reg[0]_0\,
      O => \mFmt_Tdata[39]_i_4_n_0\
    );
\mFmt_Tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(0),
      Q => \mFmt_Tdata_reg_n_0_[0]\,
      R => '0'
    );
\mFmt_Tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(10),
      Q => \mFmt_Tdata_reg_n_0_[10]\,
      R => '0'
    );
\mFmt_Tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(11),
      Q => \mFmt_Tdata_reg_n_0_[11]\,
      R => '0'
    );
\mFmt_Tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(12),
      Q => \mFmt_Tdata_reg_n_0_[12]\,
      R => '0'
    );
\mFmt_Tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(13),
      Q => \mFmt_Tdata_reg_n_0_[13]\,
      R => '0'
    );
\mFmt_Tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(14),
      Q => \mFmt_Tdata_reg_n_0_[14]\,
      R => '0'
    );
\mFmt_Tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(15),
      Q => \mFmt_Tdata_reg_n_0_[15]\,
      R => '0'
    );
\mFmt_Tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(16),
      Q => \mFmt_Tdata_reg_n_0_[16]\,
      R => '0'
    );
\mFmt_Tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(17),
      Q => \mFmt_Tdata_reg_n_0_[17]\,
      R => '0'
    );
\mFmt_Tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(18),
      Q => \mFmt_Tdata_reg_n_0_[18]\,
      R => '0'
    );
\mFmt_Tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(19),
      Q => \mFmt_Tdata_reg_n_0_[19]\,
      R => '0'
    );
\mFmt_Tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(1),
      Q => \mFmt_Tdata_reg_n_0_[1]\,
      R => '0'
    );
\mFmt_Tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(20),
      Q => \mFmt_Tdata_reg_n_0_[20]\,
      R => '0'
    );
\mFmt_Tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(21),
      Q => \mFmt_Tdata_reg_n_0_[21]\,
      R => '0'
    );
\mFmt_Tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(22),
      Q => \mFmt_Tdata_reg_n_0_[22]\,
      R => '0'
    );
\mFmt_Tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(23),
      Q => \mFmt_Tdata_reg_n_0_[23]\,
      R => '0'
    );
\mFmt_Tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(24),
      Q => \mFmt_Tdata_reg_n_0_[24]\,
      R => '0'
    );
\mFmt_Tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(25),
      Q => \mFmt_Tdata_reg_n_0_[25]\,
      R => '0'
    );
\mFmt_Tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(26),
      Q => \mFmt_Tdata_reg_n_0_[26]\,
      R => '0'
    );
\mFmt_Tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(27),
      Q => \mFmt_Tdata_reg_n_0_[27]\,
      R => '0'
    );
\mFmt_Tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(28),
      Q => \mFmt_Tdata_reg_n_0_[28]\,
      R => '0'
    );
\mFmt_Tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(29),
      Q => \mFmt_Tdata_reg_n_0_[29]\,
      R => '0'
    );
\mFmt_Tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(2),
      Q => \mFmt_Tdata_reg_n_0_[2]\,
      R => '0'
    );
\mFmt_Tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(30),
      Q => \mFmt_Tdata_reg_n_0_[30]\,
      R => '0'
    );
\mFmt_Tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(31),
      Q => \mFmt_Tdata_reg_n_0_[31]\,
      R => '0'
    );
\mFmt_Tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(32),
      Q => \mFmt_Tdata_reg_n_0_[32]\,
      R => '0'
    );
\mFmt_Tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(33),
      Q => \mFmt_Tdata_reg_n_0_[33]\,
      R => '0'
    );
\mFmt_Tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(34),
      Q => \mFmt_Tdata_reg_n_0_[34]\,
      R => '0'
    );
\mFmt_Tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(35),
      Q => \mFmt_Tdata_reg_n_0_[35]\,
      R => '0'
    );
\mFmt_Tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(36),
      Q => \mFmt_Tdata_reg_n_0_[36]\,
      R => '0'
    );
\mFmt_Tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(37),
      Q => \mFmt_Tdata_reg_n_0_[37]\,
      R => '0'
    );
\mFmt_Tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(38),
      Q => \mFmt_Tdata_reg_n_0_[38]\,
      R => '0'
    );
\mFmt_Tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => mFmt_Tdata(39),
      Q => \mFmt_Tdata_reg_n_0_[39]\,
      R => '0'
    );
\mFmt_Tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(3),
      Q => \mFmt_Tdata_reg_n_0_[3]\,
      R => '0'
    );
\mFmt_Tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(4),
      Q => \mFmt_Tdata_reg_n_0_[4]\,
      R => '0'
    );
\mFmt_Tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(5),
      Q => \mFmt_Tdata_reg_n_0_[5]\,
      R => '0'
    );
\mFmt_Tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(6),
      Q => \mFmt_Tdata_reg_n_0_[6]\,
      R => '0'
    );
\mFmt_Tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(7),
      Q => \mFmt_Tdata_reg_n_0_[7]\,
      R => '0'
    );
\mFmt_Tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(8),
      Q => \mFmt_Tdata_reg_n_0_[8]\,
      R => '0'
    );
\mFmt_Tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_5,
      D => data1(9),
      Q => \mFmt_Tdata_reg_n_0_[9]\,
      R => '0'
    );
mFmt_Tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mFmt_Tlast_reg_1,
      Q => \^mfmt_tlast_reg_0\,
      R => '0'
    );
\mFmt_Tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => SyncMReset_n_11,
      Q => \mFmt_Tuser_reg_n_0_[0]\,
      R => '0'
    );
mFmt_Tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mFmt_Tvalid_reg_1,
      Q => \^mfmt_tvalid_reg_0\,
      R => \^out\(0)
    );
mIsHeader_reg: unisim.vcomponents.FDSE
     port map (
      C => video_aclk,
      CE => '1',
      D => mIsHeader_reg_1,
      Q => \^misheader_reg_0\,
      S => \^out\(0)
    );
mKeep_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mKeep_reg_1,
      Q => \^mkeep_reg_0\,
      R => \^out\(0)
    );
\mReg_Tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_33,
      Q => \mReg_Tdata_reg_n_0_[0]\,
      R => '0'
    );
\mReg_Tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_23,
      Q => \mReg_Tdata_reg_n_0_[10]\,
      R => '0'
    );
\mReg_Tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_22,
      Q => \mReg_Tdata_reg_n_0_[11]\,
      R => '0'
    );
\mReg_Tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_21,
      Q => \mReg_Tdata_reg_n_0_[12]\,
      R => '0'
    );
\mReg_Tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_20,
      Q => \mReg_Tdata_reg_n_0_[13]\,
      R => '0'
    );
\mReg_Tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_19,
      Q => \mReg_Tdata_reg_n_0_[14]\,
      R => '0'
    );
\mReg_Tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_18,
      Q => \mReg_Tdata_reg_n_0_[15]\,
      R => '0'
    );
\mReg_Tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_17,
      Q => \mReg_Tdata_reg_n_0_[16]\,
      R => '0'
    );
\mReg_Tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_16,
      Q => \mReg_Tdata_reg_n_0_[17]\,
      R => '0'
    );
\mReg_Tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_15,
      Q => \mReg_Tdata_reg_n_0_[18]\,
      R => '0'
    );
\mReg_Tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_14,
      Q => \mReg_Tdata_reg_n_0_[19]\,
      R => '0'
    );
\mReg_Tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_32,
      Q => \mReg_Tdata_reg_n_0_[1]\,
      R => '0'
    );
\mReg_Tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_13,
      Q => \mReg_Tdata_reg_n_0_[20]\,
      R => '0'
    );
\mReg_Tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_12,
      Q => \mReg_Tdata_reg_n_0_[21]\,
      R => '0'
    );
\mReg_Tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_11,
      Q => \mReg_Tdata_reg_n_0_[22]\,
      R => '0'
    );
\mReg_Tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_10,
      Q => \mReg_Tdata_reg_n_0_[23]\,
      R => '0'
    );
\mReg_Tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_9,
      Q => \mReg_Tdata_reg_n_0_[24]\,
      R => '0'
    );
\mReg_Tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_8,
      Q => \mReg_Tdata_reg_n_0_[25]\,
      R => '0'
    );
\mReg_Tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_7,
      Q => \mReg_Tdata_reg_n_0_[26]\,
      R => '0'
    );
\mReg_Tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_6,
      Q => \mReg_Tdata_reg_n_0_[27]\,
      R => '0'
    );
\mReg_Tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_5,
      Q => \mReg_Tdata_reg_n_0_[28]\,
      R => '0'
    );
\mReg_Tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_4,
      Q => \mReg_Tdata_reg_n_0_[29]\,
      R => '0'
    );
\mReg_Tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_31,
      Q => \mReg_Tdata_reg_n_0_[2]\,
      R => '0'
    );
\mReg_Tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_3,
      Q => \mReg_Tdata_reg_n_0_[30]\,
      R => '0'
    );
\mReg_Tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_2,
      Q => \mReg_Tdata_reg_n_0_[31]\,
      R => '0'
    );
\mReg_Tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_30,
      Q => \mReg_Tdata_reg_n_0_[3]\,
      R => '0'
    );
\mReg_Tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_29,
      Q => \mReg_Tdata_reg_n_0_[4]\,
      R => '0'
    );
\mReg_Tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_28,
      Q => \mReg_Tdata_reg_n_0_[5]\,
      R => '0'
    );
\mReg_Tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_27,
      Q => \mReg_Tdata_reg_n_0_[6]\,
      R => '0'
    );
\mReg_Tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_26,
      Q => \mReg_Tdata_reg_n_0_[7]\,
      R => '0'
    );
\mReg_Tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_25,
      Q => \mReg_Tdata_reg_n_0_[8]\,
      R => '0'
    );
\mReg_Tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => DataFIFO_n_24,
      Q => \mReg_Tdata_reg_n_0_[9]\,
      R => '0'
    );
mReg_Tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \^m_axis_tlast\,
      I1 => mReg_Tlast_i_2_n_0,
      I2 => mReg_Tlast_i_3_n_0,
      I3 => mReg_Tlast_i_4_n_0,
      I4 => mReg_Tlast_i_5_n_0,
      O => \^goreg_dm.dout_i_reg[0]\
    );
mReg_Tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[15]\,
      I1 => \mWordCount_reg_n_0_[11]\,
      I2 => \mWordCount_reg_n_0_[7]\,
      I3 => \mWordCount_reg_n_0_[9]\,
      I4 => \mWordCount_reg_n_0_[8]\,
      I5 => \mWordCount_reg_n_0_[10]\,
      O => mReg_Tlast_i_2_n_0
    );
mReg_Tlast_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[5]\,
      I1 => \mWordCount_reg_n_0_[3]\,
      I2 => \mWordCount_reg_n_0_[13]\,
      I3 => \mWordCount_reg_n_0_[4]\,
      O => mReg_Tlast_i_3_n_0
    );
mReg_Tlast_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[12]\,
      I1 => \mWordCount_reg_n_0_[14]\,
      I2 => \mWordCount_reg_n_0_[6]\,
      O => mReg_Tlast_i_4_n_0
    );
mReg_Tlast_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \mWordCount_reg_n_0_[2]\,
      I1 => \mWordCount_reg_n_0_[1]\,
      I2 => \mWordCount_reg_n_0_[0]\,
      O => mReg_Tlast_i_5_n_0
    );
mReg_Tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => SyncMReset_n_1,
      D => \^goreg_dm.dout_i_reg[0]\,
      Q => \^mreg_tlast_reg_0\,
      R => '0'
    );
\mReg_Tuser_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => \mReg_Tuser_reg[0]_1\,
      Q => \^mreg_tuser_reg[0]_0\,
      R => \^out\(0)
    );
mReg_Tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => mReg_Tvalid_reg_1,
      Q => \^mreg_tvalid_reg_0\,
      R => \^out\(0)
    );
\mWordCount[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => \^mkeep_reg_0\,
      I2 => \^m_axis_tvalid\,
      O => \^gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\
    );
\mWordCount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_16,
      Q => \mWordCount_reg_n_0_[0]\,
      R => \^out\(0)
    );
\mWordCount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_22,
      Q => \mWordCount_reg_n_0_[10]\,
      R => \^out\(0)
    );
\mWordCount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_21,
      Q => \mWordCount_reg_n_0_[11]\,
      R => \^out\(0)
    );
\mWordCount_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_28,
      Q => \mWordCount_reg_n_0_[12]\,
      R => \^out\(0)
    );
\mWordCount_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_27,
      Q => \mWordCount_reg_n_0_[13]\,
      R => \^out\(0)
    );
\mWordCount_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_26,
      Q => \mWordCount_reg_n_0_[14]\,
      R => \^out\(0)
    );
\mWordCount_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_25,
      Q => \mWordCount_reg_n_0_[15]\,
      R => \^out\(0)
    );
\mWordCount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_15,
      Q => \mWordCount_reg_n_0_[1]\,
      R => \^out\(0)
    );
\mWordCount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_14,
      Q => \mWordCount_reg_n_0_[2]\,
      R => \^out\(0)
    );
\mWordCount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_13,
      Q => \mWordCount_reg_n_0_[3]\,
      R => \^out\(0)
    );
\mWordCount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_20,
      Q => \mWordCount_reg_n_0_[4]\,
      R => \^out\(0)
    );
\mWordCount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_19,
      Q => \mWordCount_reg_n_0_[5]\,
      R => \^out\(0)
    );
\mWordCount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_18,
      Q => \mWordCount_reg_n_0_[6]\,
      R => \^out\(0)
    );
\mWordCount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_17,
      Q => \mWordCount_reg_n_0_[7]\,
      R => \^out\(0)
    );
\mWordCount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_24,
      Q => \mWordCount_reg_n_0_[8]\,
      R => \^out\(0)
    );
\mWordCount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => ECCx_n_7,
      D => ECCx_n_23,
      Q => \mWordCount_reg_n_0_[9]\,
      R => \^out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx is
  port (
    aD1Enable : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    RxByteClkHS : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    \aDEnableInt_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    vRst_n : in STD_LOGIC;
    iDataIn : in STD_LOGIC_VECTOR ( 10 downto 0 );
    I62 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axis_video_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx : entity is "MIPI_CSI2_Rx";
end system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx is
  signal DataFIFO_i_1_n_0 : STD_LOGIC;
  signal LLP_inst_n_0 : STD_LOGIC;
  signal LLP_inst_n_1 : STD_LOGIC;
  signal LLP_inst_n_2 : STD_LOGIC;
  signal LLP_inst_n_3 : STD_LOGIC;
  signal LLP_inst_n_4 : STD_LOGIC;
  signal LLP_inst_n_48 : STD_LOGIC;
  signal LLP_inst_n_49 : STD_LOGIC;
  signal LLP_inst_n_50 : STD_LOGIC;
  signal LLP_inst_n_51 : STD_LOGIC;
  signal LLP_inst_n_52 : STD_LOGIC;
  signal LLP_inst_n_53 : STD_LOGIC;
  signal LLP_inst_n_54 : STD_LOGIC;
  signal LLP_inst_n_55 : STD_LOGIC;
  signal LLP_inst_n_56 : STD_LOGIC;
  signal LLP_inst_n_57 : STD_LOGIC;
  signal LLP_inst_n_58 : STD_LOGIC;
  signal LLP_inst_n_59 : STD_LOGIC;
  signal LLP_inst_n_60 : STD_LOGIC;
  signal LLP_inst_n_61 : STD_LOGIC;
  signal LLP_inst_n_62 : STD_LOGIC;
  signal LLP_inst_n_64 : STD_LOGIC;
  signal LLP_inst_n_65 : STD_LOGIC;
  signal LLP_inst_n_66 : STD_LOGIC;
  signal LLP_inst_n_67 : STD_LOGIC;
  signal LLP_inst_n_68 : STD_LOGIC;
  signal LLP_inst_n_69 : STD_LOGIC;
  signal SyncAsyncTready_n_0 : STD_LOGIC;
  signal mFmt_Tlast_i_1_n_0 : STD_LOGIC;
  signal mFmt_Tvalid_i_1_n_0 : STD_LOGIC;
  signal mIsHeader0 : STD_LOGIC;
  signal mIsHeader_i_1_n_0 : STD_LOGIC;
  signal mKeep0_out : STD_LOGIC;
  signal mKeep_i_1_n_0 : STD_LOGIC;
  signal mReg_Tuser0 : STD_LOGIC;
  signal \mReg_Tuser[0]_i_1_n_0\ : STD_LOGIC;
  signal mReg_Tvalid_i_1_n_0 : STD_LOGIC;
  signal rbEn : STD_LOGIC;
  signal rbLLPAxisTready : STD_LOGIC;
  signal rbLMAxisTdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rbLMAxisTkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rbLMAxisTlast : STD_LOGIC;
  signal rbLMAxisTvalid : STD_LOGIC;
  signal rbRst : STD_LOGIC;
  signal rbRst_n : STD_LOGIC;
  signal sError_i_1_n_0 : STD_LOGIC;
  signal sValid_i_1_n_0 : STD_LOGIC;
  signal vRst : STD_LOGIC;
begin
DataFIFO_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LLP_inst_n_1,
      O => DataFIFO_i_1_n_0
    );
LLP_inst: entity work.system_MIPI_CSI_2_RX_0_0_LLP
     port map (
      AS(0) => vRst,
      \FSM_onehot_sState_reg[3]\(0) => LLP_inst_n_62,
      Q(31 downto 0) => rbLMAxisTdata(31 downto 0),
      \RAW10Formatter.cnt_reg[0]_0\ => LLP_inst_n_66,
      \RAW10Formatter.cnt_reg[1]_0\ => LLP_inst_n_65,
      \RAW10Formatter.cnt_reg[2]_0\ => LLP_inst_n_64,
      RxByteClkHS => RxByteClkHS,
      \delay_reg[1]_0\(0) => rbLLPAxisTready,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ => LLP_inst_n_69,
      \goreg_dm.dout_i_reg[0]\ => LLP_inst_n_51,
      \gpr1.dout_i_reg[1]\(3 downto 0) => rbLMAxisTkeep(3 downto 0),
      mFmt_Tlast_reg_0 => LLP_inst_n_49,
      mFmt_Tlast_reg_1 => mFmt_Tlast_i_1_n_0,
      mFmt_Tvalid_reg_0 => LLP_inst_n_48,
      mFmt_Tvalid_reg_1 => mFmt_Tvalid_i_1_n_0,
      mIsHeader0 => mIsHeader0,
      mIsHeader_reg_0 => LLP_inst_n_55,
      mIsHeader_reg_1 => mIsHeader_i_1_n_0,
      mKeep0_out => mKeep0_out,
      mKeep_reg_0 => LLP_inst_n_54,
      mKeep_reg_1 => mKeep_i_1_n_0,
      mReg_Tlast_reg_0 => LLP_inst_n_50,
      mReg_Tuser0 => mReg_Tuser0,
      \mReg_Tuser_reg[0]_0\ => LLP_inst_n_57,
      \mReg_Tuser_reg[0]_1\ => \mReg_Tuser[0]_i_1_n_0\,
      mReg_Tvalid_reg_0 => LLP_inst_n_56,
      mReg_Tvalid_reg_1 => mReg_Tvalid_i_1_n_0,
      m_axis_tlast => LLP_inst_n_3,
      m_axis_tvalid => LLP_inst_n_2,
      m_axis_video_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser(0) => m_axis_video_tuser(0),
      m_axis_video_tvalid => m_axis_video_tvalid,
      \oSyncStages_reg[1]\(0) => LLP_inst_n_1,
      \out\(0) => LLP_inst_n_0,
      \sErrSyndrome_reg[0]\ => LLP_inst_n_67,
      \sErrSyndrome_reg[3]\(3) => LLP_inst_n_58,
      \sErrSyndrome_reg[3]\(2) => LLP_inst_n_59,
      \sErrSyndrome_reg[3]\(1) => LLP_inst_n_60,
      \sErrSyndrome_reg[3]\(0) => LLP_inst_n_61,
      \sErrSyndrome_reg[4]\ => LLP_inst_n_68,
      sError_reg => LLP_inst_n_53,
      sError_reg_0 => sError_i_1_n_0,
      sValid_reg => LLP_inst_n_52,
      sValid_reg_0 => sValid_i_1_n_0,
      s_aresetn => DataFIFO_i_1_n_0,
      s_axis_tlast => rbLMAxisTlast,
      s_axis_tready => LLP_inst_n_4,
      s_axis_tvalid => rbLMAxisTvalid,
      video_aclk => video_aclk
    );
LM_inst: entity work.system_MIPI_CSI_2_RX_0_0_LM
     port map (
      D(0) => rbLLPAxisTready,
      I62(10 downto 0) => I62(10 downto 0),
      Q(31 downto 0) => rbLMAxisTdata(31 downto 0),
      RxByteClkHS => RxByteClkHS,
      iDataIn(10 downto 0) => iDataIn(10 downto 0),
      \out\(0) => rbRst_n,
      rbEnInt_reg_0(0) => rbEn,
      \rbMAxisTkeep_reg[3]_0\(3 downto 0) => rbLMAxisTkeep(3 downto 0),
      rbRst => rbRst,
      s_axis_tlast => rbLMAxisTlast,
      s_axis_tvalid => rbLMAxisTvalid
    );
SyncAsyncEnable: entity work.system_MIPI_CSI_2_RX_0_0_SyncAsync
     port map (
      D(0) => D(0),
      RxByteClkHS => RxByteClkHS,
      \out\(0) => rbEn,
      rbRst => rbRst
    );
SyncAsyncTready: entity work.system_MIPI_CSI_2_RX_0_0_SyncAsync_0
     port map (
      D(0) => rbLLPAxisTready,
      \YesAXILITE.vRst_n_reg\ => SyncAsyncTready_n_0,
      vRst_n => vRst_n,
      video_aclk => video_aclk
    );
SyncReset: entity work.system_MIPI_CSI_2_RX_0_0_ResetBridge
     port map (
      RxByteClkHS => RxByteClkHS,
      \oSyncStages_reg[1]\ => SyncAsyncTready_n_0,
      \out\(0) => rbRst_n,
      rbRst => rbRst
    );
\aDEnableInt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => \aDEnableInt_reg[0]_0\,
      Q => aD1Enable,
      R => '0'
    );
mFmt_Tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => LLP_inst_n_50,
      I1 => LLP_inst_n_56,
      I2 => LLP_inst_n_4,
      I3 => LLP_inst_n_0,
      I4 => LLP_inst_n_49,
      O => mFmt_Tlast_i_1_n_0
    );
mFmt_Tvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFFAAA80000"
    )
        port map (
      I0 => LLP_inst_n_56,
      I1 => LLP_inst_n_64,
      I2 => LLP_inst_n_65,
      I3 => LLP_inst_n_66,
      I4 => LLP_inst_n_4,
      I5 => LLP_inst_n_48,
      O => mFmt_Tvalid_i_1_n_0
    );
mIsHeader_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => LLP_inst_n_3,
      I1 => mIsHeader0,
      I2 => LLP_inst_n_55,
      O => mIsHeader_i_1_n_0
    );
mKeep_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
        port map (
      I0 => mKeep0_out,
      I1 => LLP_inst_n_69,
      I2 => LLP_inst_n_51,
      I3 => LLP_inst_n_53,
      I4 => LLP_inst_n_52,
      I5 => LLP_inst_n_54,
      O => mKeep_i_1_n_0
    );
\mReg_Tuser[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => LLP_inst_n_56,
      I1 => LLP_inst_n_4,
      I2 => mReg_Tuser0,
      I3 => LLP_inst_n_57,
      O => \mReg_Tuser[0]_i_1_n_0\
    );
mReg_Tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => LLP_inst_n_54,
      I1 => LLP_inst_n_2,
      I2 => LLP_inst_n_4,
      I3 => LLP_inst_n_56,
      O => mReg_Tvalid_i_1_n_0
    );
sError_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => LLP_inst_n_68,
      I1 => LLP_inst_n_59,
      I2 => LLP_inst_n_58,
      I3 => LLP_inst_n_61,
      I4 => LLP_inst_n_60,
      I5 => LLP_inst_n_62,
      O => sError_i_1_n_0
    );
sValid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => LLP_inst_n_67,
      I1 => LLP_inst_n_62,
      O => sValid_i_1_n_0
    );
vRst_reg: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => SyncAsyncTready_n_0,
      Q => vRst,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top is
  port (
    RxByteClkHS : in STD_LOGIC;
    aClkStopstate : in STD_LOGIC;
    aRxClkActiveHS : in STD_LOGIC;
    RxDataHSD0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD0 : in STD_LOGIC;
    RxValidHSD0 : in STD_LOGIC;
    RxActiveHSD0 : in STD_LOGIC;
    aD0Enable : out STD_LOGIC;
    RxDataHSD1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD1 : in STD_LOGIC;
    RxValidHSD1 : in STD_LOGIC;
    RxActiveHSD1 : in STD_LOGIC;
    aD1Enable : out STD_LOGIC;
    RxDataHSD2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD2 : in STD_LOGIC;
    RxValidHSD2 : in STD_LOGIC;
    RxActiveHSD2 : in STD_LOGIC;
    aD2Enable : out STD_LOGIC;
    RxDataHSD3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD3 : in STD_LOGIC;
    RxValidHSD3 : in STD_LOGIC;
    RxActiveHSD3 : in STD_LOGIC;
    aD3Enable : out STD_LOGIC;
    aClkEnable : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_aresetn : in STD_LOGIC;
    video_aclk : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );
  attribute C_M_AXIS_COMPONENT_WIDTH : integer;
  attribute C_M_AXIS_COMPONENT_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 10;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 40;
  attribute C_M_MAX_SAMPLES_PER_CLOCK : integer;
  attribute C_M_MAX_SAMPLES_PER_CLOCK of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 4;
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "mipi_csi2_rx_top";
  attribute kDebug : string;
  attribute kDebug of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "FALSE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "TRUE";
  attribute kLaneCount : integer;
  attribute kLaneCount of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 2;
  attribute kTargetDT : string;
  attribute kTargetDT of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is "RAW10";
  attribute kVersionMajor : integer;
  attribute kVersionMajor of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top : entity is 2;
end system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top is
  signal \<const0>\ : STD_LOGIC;
  signal \YesAXILITE.AXI_Lite_Control_n_5\ : STD_LOGIC;
  signal \YesAXILITE.CoreSoftReset_n_0\ : STD_LOGIC;
  signal \YesAXILITE.SyncAsyncClkEnable_n_1\ : STD_LOGIC;
  signal \^ad1enable\ : STD_LOGIC;
  signal aReset : STD_LOGIC;
  signal vRst_n : STD_LOGIC;
  signal vSoftEnable : STD_LOGIC;
begin
  aClkEnable <= \^ad1enable\;
  aD0Enable <= \^ad1enable\;
  aD1Enable <= \^ad1enable\;
  aD2Enable <= \<const0>\;
  aD3Enable <= \<const0>\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
MIPI_CSI2_Rx_inst: entity work.system_MIPI_CSI_2_RX_0_0_MIPI_CSI2_Rx
     port map (
      D(0) => vSoftEnable,
      I62(10) => RxActiveHSD1,
      I62(9) => RxSyncHSD1,
      I62(8) => RxValidHSD1,
      I62(7 downto 0) => RxDataHSD1(7 downto 0),
      RxByteClkHS => RxByteClkHS,
      aD1Enable => \^ad1enable\,
      \aDEnableInt_reg[0]_0\ => \YesAXILITE.SyncAsyncClkEnable_n_1\,
      iDataIn(10) => RxActiveHSD0,
      iDataIn(9) => RxSyncHSD0,
      iDataIn(8) => RxValidHSD0,
      iDataIn(7 downto 0) => RxDataHSD0(7 downto 0),
      m_axis_video_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser(0) => m_axis_video_tuser(0),
      m_axis_video_tvalid => m_axis_video_tvalid,
      vRst_n => vRst_n,
      video_aclk => video_aclk
    );
\YesAXILITE.AXI_Lite_Control\: entity work.system_MIPI_CSI_2_RX_0_0_MIPI_CSI_2_RX_S_AXI_LITE
     port map (
      Q(1) => \YesAXILITE.AXI_Lite_Control_n_5\,
      Q(0) => aReset,
      axi_arready_reg_0 => s_axi_lite_arready,
      axi_awready_reg_0 => s_axi_lite_awready,
      axi_wready_reg_0 => s_axi_lite_wready,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(1 downto 0) => s_axi_lite_araddr(3 downto 2),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(1 downto 0) => s_axi_lite_awaddr(3 downto 2),
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
\YesAXILITE.CoreSoftReset\: entity work.\system_MIPI_CSI_2_RX_0_0_ResetBridge__parameterized0\
     port map (
      AS(0) => aReset,
      \oSyncStages_reg[1]\ => \YesAXILITE.CoreSoftReset_n_0\,
      video_aclk => video_aclk
    );
\YesAXILITE.SyncAsyncClkEnable\: entity work.\system_MIPI_CSI_2_RX_0_0_SyncAsync__parameterized1\
     port map (
      D(0) => \YesAXILITE.AXI_Lite_Control_n_5\,
      \oSyncStages_reg[1]_0\ => \YesAXILITE.SyncAsyncClkEnable_n_1\,
      \out\(0) => vSoftEnable,
      vRst_n => vRst_n,
      video_aclk => video_aclk
    );
\YesAXILITE.vRst_n_reg\: unisim.vcomponents.FDRE
     port map (
      C => video_aclk,
      CE => '1',
      D => \YesAXILITE.CoreSoftReset_n_0\,
      Q => vRst_n,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_MIPI_CSI_2_RX_0_0 is
  port (
    RxByteClkHS : in STD_LOGIC;
    aClkStopstate : in STD_LOGIC;
    aRxClkActiveHS : in STD_LOGIC;
    RxDataHSD0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD0 : in STD_LOGIC;
    RxValidHSD0 : in STD_LOGIC;
    RxActiveHSD0 : in STD_LOGIC;
    aD0Enable : out STD_LOGIC;
    RxDataHSD1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD1 : in STD_LOGIC;
    RxValidHSD1 : in STD_LOGIC;
    RxActiveHSD1 : in STD_LOGIC;
    aD1Enable : out STD_LOGIC;
    RxDataHSD2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD2 : in STD_LOGIC;
    RxValidHSD2 : in STD_LOGIC;
    RxActiveHSD2 : in STD_LOGIC;
    aD2Enable : out STD_LOGIC;
    RxDataHSD3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RxSyncHSD3 : in STD_LOGIC;
    RxValidHSD3 : in STD_LOGIC;
    RxActiveHSD3 : in STD_LOGIC;
    aD3Enable : out STD_LOGIC;
    aClkEnable : out STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_aclk : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_MIPI_CSI_2_RX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_MIPI_CSI_2_RX_0_0 : entity is "system_MIPI_CSI_2_RX_0_0,mipi_csi2_rx_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_MIPI_CSI_2_RX_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_MIPI_CSI_2_RX_0_0 : entity is "mipi_csi2_rx_top,Vivado 2020.2";
end system_MIPI_CSI_2_RX_0_0;

architecture STRUCTURE of system_MIPI_CSI_2_RX_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_aD2Enable_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_aD3Enable_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_lite_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_lite_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_M_AXIS_COMPONENT_WIDTH : integer;
  attribute C_M_AXIS_COMPONENT_WIDTH of U0 : label is 10;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of U0 : label is 40;
  attribute C_M_MAX_SAMPLES_PER_CLOCK : integer;
  attribute C_M_MAX_SAMPLES_PER_CLOCK of U0 : label is 4;
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of U0 : label is 32;
  attribute kDebug : string;
  attribute kDebug of U0 : label is "FALSE";
  attribute kGenerateAXIL : string;
  attribute kGenerateAXIL of U0 : label is "TRUE";
  attribute kLaneCount : integer;
  attribute kLaneCount of U0 : label is 2;
  attribute kTargetDT : string;
  attribute kTargetDT of U0 : label is "RAW10";
  attribute kVersionMajor : integer;
  attribute kVersionMajor of U0 : label is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of U0 : label is 2;
  attribute x_interface_info : string;
  attribute x_interface_info of RxActiveHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXACTIVEHS";
  attribute x_interface_info of RxActiveHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXACTIVEHS";
  attribute x_interface_info of RxActiveHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXACTIVEHS";
  attribute x_interface_info of RxActiveHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXACTIVEHS";
  attribute x_interface_info of RxByteClkHS : signal is "xilinx.com:signal:clock:1.0 RxByteClkHS CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RxByteClkHS : signal is "XIL_INTERFACENAME RxByteClkHS, ASSOCIATED_BUSIF rx_mipi_ppi, FREQ_HZ 84000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_MIPI_D_PHY_RX_0_0_RxByteClkHS, INSERT_VIP 0";
  attribute x_interface_info of RxSyncHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXSYNCHS";
  attribute x_interface_info of RxSyncHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXSYNCHS";
  attribute x_interface_info of RxSyncHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXSYNCHS";
  attribute x_interface_info of RxSyncHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXSYNCHS";
  attribute x_interface_info of RxValidHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXVALIDHS";
  attribute x_interface_info of RxValidHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXVALIDHS";
  attribute x_interface_info of RxValidHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXVALIDHS";
  attribute x_interface_info of RxValidHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXVALIDHS";
  attribute x_interface_info of aClkEnable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_ENABLE";
  attribute x_interface_info of aClkStopstate : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_STOPSTATE";
  attribute x_interface_info of aD0Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_ENABLE";
  attribute x_interface_info of aD1Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_ENABLE";
  attribute x_interface_info of aD2Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_ENABLE";
  attribute x_interface_info of aD3Enable : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_ENABLE";
  attribute x_interface_info of aRxClkActiveHS : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi CL_RXCLKACTIVEHS";
  attribute x_interface_info of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  attribute x_interface_info of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  attribute x_interface_info of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  attribute x_interface_info of s_axi_lite_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  attribute x_interface_parameter of s_axi_lite_aclk : signal is "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF S_AXI_LITE, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  attribute x_interface_parameter of s_axi_lite_aresetn : signal is "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  attribute x_interface_info of s_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  attribute x_interface_info of s_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  attribute x_interface_info of s_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  attribute x_interface_info of s_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  attribute x_interface_info of s_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  attribute x_interface_info of s_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  attribute x_interface_info of s_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  attribute x_interface_info of s_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  attribute x_interface_info of s_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  attribute x_interface_info of video_aclk : signal is "xilinx.com:signal:clock:1.0 video_aclk CLK";
  attribute x_interface_parameter of video_aclk : signal is "XIL_INTERFACENAME video_aclk, ASSOCIATED_RESET video_aresetn, ASSOCIATED_BUSIF m_axis_video, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of RxDataHSD0 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL0_RXDATAHS";
  attribute x_interface_info of RxDataHSD1 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL1_RXDATAHS";
  attribute x_interface_info of RxDataHSD2 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL2_RXDATAHS";
  attribute x_interface_info of RxDataHSD3 : signal is "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi DL3_RXDATAHS";
  attribute x_interface_info of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  attribute x_interface_parameter of m_axis_video_tdata : signal is "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  attribute x_interface_info of s_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  attribute x_interface_info of s_axi_lite_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT";
  attribute x_interface_info of s_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  attribute x_interface_parameter of s_axi_lite_awaddr : signal is "XIL_INTERFACENAME S_AXI_LITE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_lite_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT";
  attribute x_interface_info of s_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  attribute x_interface_info of s_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  attribute x_interface_info of s_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  attribute x_interface_info of s_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  attribute x_interface_info of s_axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
begin
  aD2Enable <= \<const0>\;
  aD3Enable <= \<const0>\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.system_MIPI_CSI_2_RX_0_0_mipi_csi2_rx_top
     port map (
      RxActiveHSD0 => RxActiveHSD0,
      RxActiveHSD1 => RxActiveHSD1,
      RxActiveHSD2 => '0',
      RxActiveHSD3 => '0',
      RxByteClkHS => RxByteClkHS,
      RxDataHSD0(7 downto 0) => RxDataHSD0(7 downto 0),
      RxDataHSD1(7 downto 0) => RxDataHSD1(7 downto 0),
      RxDataHSD2(7 downto 0) => B"00000000",
      RxDataHSD3(7 downto 0) => B"00000000",
      RxSyncHSD0 => RxSyncHSD0,
      RxSyncHSD1 => RxSyncHSD1,
      RxSyncHSD2 => '0',
      RxSyncHSD3 => '0',
      RxValidHSD0 => RxValidHSD0,
      RxValidHSD1 => RxValidHSD1,
      RxValidHSD2 => '0',
      RxValidHSD3 => '0',
      aClkEnable => aClkEnable,
      aClkStopstate => '0',
      aD0Enable => aD0Enable,
      aD1Enable => aD1Enable,
      aD2Enable => NLW_U0_aD2Enable_UNCONNECTED,
      aD3Enable => NLW_U0_aD3Enable_UNCONNECTED,
      aRxClkActiveHS => '0',
      m_axis_video_tdata(39 downto 0) => m_axis_video_tdata(39 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser(0) => m_axis_video_tuser(0),
      m_axis_video_tvalid => m_axis_video_tvalid,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(3 downto 2) => s_axi_lite_araddr(3 downto 2),
      s_axi_lite_araddr(1 downto 0) => B"00",
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arprot(2 downto 0) => B"000",
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(3 downto 2) => s_axi_lite_awaddr(3 downto 2),
      s_axi_lite_awaddr(1 downto 0) => B"00",
      s_axi_lite_awprot(2 downto 0) => B"000",
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bresp(1 downto 0) => NLW_U0_s_axi_lite_bresp_UNCONNECTED(1 downto 0),
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rresp(1 downto 0) => NLW_U0_s_axi_lite_rresp_UNCONNECTED(1 downto 0),
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      video_aclk => video_aclk,
      video_aresetn => '1'
    );
end STRUCTURE;
