-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jul 29 09:48:39 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/kccistc/Downloads/Zybo-Z7-20-Pcam-5C-hw.xpr/hw/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.vhdl
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
hxbjVe1/SXrlF2LB0SBTetBr5zFCUg9w0ESFutwFG0xzXcOH+RAHxT0mnn0U9HGM/BtjkjCwFsxb
VxjCeZSg/ePduOJMjSEZNInIRRV7mELKmtpTTCH30XRXyCLfplPcUonD2z9UUwcVe8Mh//qvLQNq
5s+zp2Qljp6RDq5Lfw9Qn6pAuiCD+0eaV/lN3z6YsOoZdEcZAcWTEz9Wv9JfTBSWMW9B7DPBPhOg
Uo2DtFiitGm9IbjBZOKYzsI3NpyikcKT1UrxY/RYx8a2vqI/exUoOtpJJFW3OuX2iUWGuclm+UFE
huMXRWZAbHEAr55Ctkvqx4ZQN9O4rQYHqRbGkSkRlybtAm7MRplHpFVmHlnTHziLMUeQV1l87Pn3
P031GgwJuMC5JQba7H4bR6ea2C9RPl+ETCWRqVXHA66dafXMb56WcLzVZFWVpR9INN7i0jK1/V9H
9jTL6P4Lb27rmJ5lI/k+0G+eIumf2/WysXS7kjtCvsoebEjWITmpgkpMfGw/1ZWfOhM0tn/Cct8V
cOAX8hooWiEAiSBU1ZDdmPaTFB+QRO5gOUmBSA0t984p4EpMML8sSP9B+X7Mbrx9Fqid4ym/+nTs
2QXwcqz/d84wiANh/HhFli3H4f14NemVLQyLEAmaQporLmFHq9i7antsiwzzuuZZrHlwHa5m4FgK
JUXMoila+P3gQ31dX5pByZbIINo2PO7lZF9lwad4IL6+XuyO1gK2xr9Bgoy48ddEJh4Bam4wFz+q
/0vm4LaYiYeBXwDH5ngzGEI7+lt6LqNQP7GFtN/mQIicJrfJzLX/MDVNtMWJwR5tG7AuJhQ3kEIh
ZUbRZOHn0sH4vRinIieqFmOcvKeu7XSJgvLmn2ZiM/bivOsj4VbsGVU8gYZbY1MmIrAWr/Qf4t0y
dq6ZMaq8fiDEmfwKsz1eb8Di8GnvVUnZPsbVPXBdWiHwoKe8T7fV3jfGhFCS/sWUWMdDMVZIPnJb
Tf6i+oMR1S/v2uEP0Ra7dasZsdyyzkY48zzqrQ4zSf0ZIxQT4dXOjtw6I5AKlbhj4wwmXfU1XTIQ
xNBfHU2g78+jpaAGBSpc+BbkK6rozqcqW54HNbIvd0DYLHFPDMZEoPMSp3QDx6FUBnKl/SlhT4cc
dr75qOT9r8jsihJ3EzHZsvOST+cybUQ3OPn86MYHdCoN9EkDJ0YC/h0n7jjmNv1hx5rw9ErP8pKy
czcvbX/F1p7Q7jwBNu1L5sbNGwnVHvZMbLitAT/l7On3lrLoBO7V5fi+jxw7uvZ5fkjmIk1UVu67
jmtk8o0Zj7Gc6ycY7i8FksZK94ICiS9nPdSwPFTWjNVkDC7pfUv5cChybopZgUnvRZK/RmmTpM3X
Po5HgzDmWC5ZaZdIEqLRzgN2L833Wc68MVgCuI0tYe/t2DBZBOhUUqE7ZqoGXHDhYKlVfl2bqwaL
OUgDElSwg5nHEaiaQD9XTEBobRCqGWmeFWPJQZdTF0UV+BEPKx5DLzFmS8fl9cOBVb1wkhXM0a38
sr+0IYXPpkksSdSN9mJ/hpa8rxTTeM0dKfaRDhSGaVC83zGtwkpx6Lp7d3Ai5i6sZq7X8C2Kthzz
2SUHwqk6yCtJWHaF1Pty7A8zNWMcFHalESlvvO5oa9OHi8VVg/hYw3qyWCx5X93htvkr7dB3BfR/
9ZWsDh2qeUhWergOxZTWii2dJS+DOzNXNRkJql2Mv6LEsZlGsjcWVd/XaZiN7QqazBP2qFBVgl7j
AkItvbiYDY1QR5MABBQnun00TIPgfHTU6ZsvDSg130Ci0fayNAHaAIgwdRFpKHiiQMP8TzM1HcUg
fL0XOF2Tp3uuQ5tu3Te/h4MMlKeMJ/Blas6KelNa4XJvYx61eDaiijaVc8BoNf/As4/1aviCZIeN
U+GLdjBxH/9aW0YTbYQOnsi9Tlu76ZIkC/VKyq577SiKbInTNUHuIykNKRC9I2XtjDoQLRGB/CMt
ZKdo47H0m6Dy6hXdGTZ61YK1DYwsc+iZnruVE1Ulo6Sa2D+rT3W7df3PKcBLF6OXpNw08HUiE31C
o4FfOjAi6IYubf4x+nU1FV8+1IUS+5y6WLKKAYB7DnKD4m/9iq2kV9e5ZVeyvZsknRpUUU3SqSF3
oS/LSOjNx4cazNUWJTy0/0wcM3XlhCvS3KsakAcjVxPFG2UkOvhKUu2Gyp+yfi4CKqGeq1hrkvJC
43J78RfFUGYmITH2SZeEYrj0oEPSqYtdcV6zJQB9XZgk/7NZkde/pDYIh4v7x1TcDf9Hf+j0TDgJ
8JeOuzrAMMUv4GZFxvcvvBrq50PNLpjoqq6CYvOGnh5Gw0zHh5cBFPI23eJYfwQDrF0imPlmtVNk
/X/cNSfebzFf2f4OTYJVbMCe51YKUU+xLPr8250rTQHJU05AHfPovgnTnKJC2dpp3LMgYbKeHJXw
jyYs+Xwx7iNPCJ5AQXM9m8LrAg/uHtI5wT17tdvFRsU5PJScfYyPb4bz1c4TmBI4ZIOOjWO5vpCw
GRgztBpsFoGwwhQw2sUYUvHpurRoahx+KTlCRFtjIMUYI7yMmfydHFx+jxfjUCQeG6tDZBpm2tBy
L5Bs/ktzz1FHW9vSSYbOTIiCH8RFB6t0GggWs15odher8TqfySWnQWplkwsLYa5s2UOm/6wM6s5S
gNyVojO53NNCque+SrZbJ32CwewAeDs3geqAWvdVy9E8+5/s9OmOHE5+qNSHwi8v8EluvT84ermW
ZL6eBRPNBj4Rb11siAnpRGX6qhkwSgYoQ6E5gtAlWKfHNBpclulc309hwv3NyfuVhqi4Sqvga1y2
bsEh0AiXfPKcxbGxJss1E/n+pvk+y1gdKreB0tmeJUoZleCDVxlDdPMBMgrzgruwOuYAp1wubok0
nvafFeccLli6L81cuR+xvAuYFueWYJ43Wxvf6VokoEdftSHzuwtmh210e2Ji8IjDPonjs6askiwm
vfXgY03ZZ2CUG3ZjBivEnmm/cDVwDvO0liyFni6q0QmeeZ8F5vnKVDiMQRbqrer44GDvRbiwfI9M
zVpQuicBgXYAhwmyqshUREuCZ5PPNm33pS17TfQTfpyfoEFWcih3VZ9lk1qr5nB7ilDzLBWmD2q/
MfKMPu6UkAd0sieINsri02TS1sIywqgoEvvTIjHNyjtpR9UpN+OqAAvnVIUroD3uI+YleGFliPn7
CFgBYUWBLBk5pvtmKwyYjpGBXdL4+f1D6c7gaYFtq6xrOluoehJWADE5WF1voCjzDumokqWjQcN3
w8Cp/miJKr6i9fAQgdDYUVe65yvjV0/YOKX107xxn+tsJMx051TQHiLtvBm2XtyOY8/UUf5DBy4k
KpRfjDrjs6ESJJ0EevBXNE7j5AfaQ30s/EH9V6JmfJjQOl3eKS+lplCjbeklXkeck1tKFzcKJe2r
850V7nGRTaZFGGhBCUYB3FLpdc8fsxbsAlBbMnvZ3B9O5lWPygGjdUYRjqlm8xhSKAqZ2PdzBJo1
hLmj6P6SXswh83BND99yHa+s7rjnlNrJz+sCsqAH2YzASaQB6353VX90ADmC3x3Ohkuv4wTFZuq0
numLAhmge3HsOCt7M/b76JJURHjedG6vwb0UcOjOHY1tfdqjh3O4qSWMziRcOaInbBZqLOycw9uP
Z9LKOa0SQm1l5okcBVo0040gXBNfF/waycAnm/SdRHSSRGet3foE75uRpsA1JGG3033I59uxNgJi
xYNHts9F6egYrQEiSDtuI220HsACKwsPrLoSpaSM6JZN+p4tPopYLbGXAvGSbPJz8srxbHFdPzVi
fRj08BhrddG6zgXuIPTGs2GPXfSLfXzUKs34k1ZDdbXaNqhRYuzoO1ZeGIkUiHBmlE5q8V2OcQyc
Zq/QoNwD4W4ptcJTdaYRV6i079CjKptyIQwBykL2LjOtr4dwCC30pXIHg5LXqQ+wO5f2h0UCjQKL
ri/vSjeIIKtww36H/RrwtHm4i1+2FFf2OgMM8UDjE3gQ0PCvKV2DYAqd/hyZgFJ/Ov0I5FOCLhIo
6w73mYdDhTBxmMXp+TxDQwEuf4dNsTR2jUubsGW51PdbODOBToKjjRDsLFCU0NRsZwc6D+E58+PV
K83+TguFPZB5hV+tQg3wGG8J1xwHvt1KhMVApoHBqhjVSz9r8V1uQf2t+b5ThDz4gpu8wBQHH+di
9EDiJweAnV/QWZXqx2whLdLMqbhOAuTSTbN51GVboGA8lVdojib2UmojqVZc8/NpzgXv5L5nmpnI
2OtlRKTs/c5q+CoAweZQAIUUDz11a0HFd+W/07kWiQ2KkuC4vYrnf/cXNAOvIggeLxuB0Q3mvQX6
JBXLEJkmWLTIyf5rTCAeN1N0N07llH8KvotrqeL4p8btyRnmcPHVMVc56+AHOKLv0GyXDP23M6ZB
vrhfxtCYqJQ/+qrlSnEKSMWKhxaAzgh+uLmcMrqYZKmlyelGbI3aKQAZZXjf33iP+ttdgSBHlfOY
v4nLjO+FTXvU8/cmGJXT9rRgPrlZnHhXTFr+tiv5gntNlyhW2Uo+2zDS8G/Bd6N+3kDRRAXo9OZv
FUUtZH4jHA+MYK1Cm1owqv2gcWu1CpSir71ESq7n//jFD7zKC1yykTBQavpwlvtmOclJM/vlf9v5
1OmT+9mmzd/dYcJ4168zWyVPdTOEwDV4dCd9j8szIrnjGdgA/46UQ50lwX83qEr/8FR970u5ACZM
gQZ+9+M0r52m1EuDYA0+YfMrSmUqLa+8/+QUPHOvCFzugIifSIo+cfjaQorHG2Jd42JjtCshFEEX
etqL05nVKq1Za4JSsPzHoz9M5m8iAf0FGvS5HX3qw4wbxxSGFr+2Af9h0QIyHdUXXnxdZ05Ri149
rqYDDBGJbCR6MAorkaemY2OPe+vMdDliVDC3R6TpQ+JqM4d9fw6qo7UhbWOtFPRdDgABSvlT7Vpn
uLuloViBbe5iFUNk0V8Jak2W4n3rb00rPulT97JjZf5BGnVzL2w7k3sNvY82WFhFALWIxMuQVinx
nSynDzT6ItT+ZwlBmnvawOAS9NKujJuZ+hOVUfW15gM6yzYU+/ZUcb8hmgzVcKzBRXgcLYDTjZuV
tBPoiY4bL/1dOZRtFOUlYhrT1Sb1Dgs2bX8XTsmfWwkRX3WpTf3AM8bgQULx9h5Pg/jxN8DWZ42V
645wVWE7l10KFE2IsO4gKwm/w9i7BhqJ2Kj3bJSjRBCAnAiXiTRM8wFoKTSMhamnEnmF4z8MbH2Y
WClwuVYl4MiIH81bJSEdLb9EB7KliK7UCthqQyQyyhcAhqLRicuibthY2NTBXAa3cQv+YBY1lAD4
w1twxFc803wHS+4U9SCbcV0cQENWjMkrzHwbcEtidozN3mwklzNGq07z0wz8S7gngqdUA7QUWYnN
omM9v5iTjI1nb7NGnO9HUkjLdfxYsYGNEhIiE4v7Y1lKdLLrM5Q7Zx8lpgHlI9A+iRHDfyzDxYjQ
wQo9wcy4Pr3diFoIRx9CpZ0gyKQfvIHpGB2CP7eiOBSVQbArEnVh/1yq3coUwv+gElpIwD/R9C5c
a6BYjyjMypTIwOm7ss5JTBm7th2PsU0DYsdNHXx3yHZ+TPOBRrLKpwmBOb/5KPqpWi2M7J8PY6wa
CCcePe5Fhnbeqs/edwzX10KJAf2OJ7Uv0C/305RhE5IdooRcIK6EwBwzXLt8viiOfH/IJw2eIvzQ
6w/vEVXj6YaCtoTon/AuTWVWJDh+K9cdIYjoJ76rtyJ5lt+XBCMcfGM9adhiyMh1QQE81ozaSfIb
S33S0GKbu4ktsOa0dnSTfUWkVXfjlwMl1/wyz5bFaWYUVe7pELd1MlmP2H7Daqk24Vo8rPABGIYv
3IyR6/x1xfMaoBTuHsCDzoyrigxRUnshHNMe3d72xk/EGcbAMA1uu9lWrrp/K96bIISi1EUILA7q
TAsOHg9msfHggVW1pePcZY0AIV802QZiegxxB1hUrITMZPmP+DgRJuRhqG7yKo8zgtRIkyRFPyt7
BbUsN1VPU+GfRxp4oF+i41XZTcz8olcBhZW75tVBun8XcfNHydpvA6ePnXlXU3uq1SUWhHcTgnqD
9/Ie97nxdV1U6dq0iFVr4Cyqj8hG2831ruFdgVVaZXcBhX3cNsuy7Z3U3h34Km324bK9okgpvsxd
XjRoHnZDXJAT7hoRgpOGV/W3uwwZq8VOOud3HqQUSrbdK3ccWD6dPC7+pkfidLMte9dL7LIcaaTb
woF+7pZrra2V5b5mU+s61hLpF+HZz3+qcKFkYwi1hySuisB/CWp66mTc+vm6g9DG9Bchx6rxZ+YT
uqMsqbR1z+hvQQt/K1MhdErriLj+132jApr4uYCrmaKlHtucx7a1whlu+watFIF9witQGZZ6lOBp
BX3nlgK1JTh/9/OzIOLbgZbsIPfe9X1LYm6//nRVyivduUXbDjq031v80JZJKpR+eS9xS9EYEQxp
gRfv
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
hxbjVe1/SXrlF2LB0SBTetBr5zFCUg9w0ESFutwFG0xzXcOH+RAHxT0mnn0U9HGM/BtjkjCwFsxb
VxjCeZSg/ePduOJMjSEZNInIRRV7mELKmtpTTCH30XRXyCLfplPcUonD2z9UUwcVe8Mh//qvLQNq
5s+zp2Qljp6RDq5Lfw9Qn6pAuiCD+0eaV/lN3z6YsOoZdEcZAcWTEz9Wv9JfTAc34xcALN1VL4n7
nThJ+RQhl+wxgnqu13kXe18dKiN+ohfcmZu2Kqxwh3hiwk0gSdVYGo9KXXVMVWStppfeySK0RNRE
tsddCAJhvhrK49Psa+SCPZaWYdr5gpfam3w2vvvLv/N/j9SEVoXSGdsljcul08v6UZkqwpvnC6Qa
jWq+I3+o0KQuqmpYVzVTPszGF3adRkztlXCCn5Isf8p0vWwXN9CpFsDjO5xeu6xXvO3xlzzaMZrq
wCCeSLWCvCUYy+/abT6nbExk0Zfh/bKYL4F3P3UNvIZjsFNkQ0VpNrTwP28zQHJlyWs51vBJG5tW
V/tjuUONY7ZzdeFJKKPbl3Zg53OKXB4Z+1xOdBK9ELzFz7F9pCm4r5/YzbeqziybzCpTjzL0pi57
3Y7r2onUSZ6Rbh47ucfMgbheUfGL+/p/rgzQNNBWnPSZ6dbhOjuZmsPM0ELD42TxByOsS24khB/c
vfh5mhyllsSlYlU0KZB3LtqCEWsWBJUZHNaSRd4SlYPMzg8pQ0ZvIi4qvWg5fCqPY5ZO5UC02L75
A5iLBYw83b3FUAXD5Ca1MRiwSoTISq2TZFC0qU44HMFBssWNVYglyf5Io43b39xJpiIxczTDblr/
nsIOGhp5MRLnCfeKRgznkb68qfrOtoroGgSoIfpcMq3PNWM37wJQnUR1uhUSprszWIYAU+SibO23
ORt8icVzZue8zHWhldADliJZD0itkvsU751TSQXnQnz/6KtWcL7sC0QrBUnbnEXrf5ibqyXUDHS5
wmILfgvF4BfNUG0XPht0X7nS52N/nZllop2MTnn0JfirNK2uYaBv7JsiH50JnJhr+ePRKfOEA9gg
qfKm1mqvaL+ygVrooal/FTJnEj1+MHnO9MkdtTgeOQOYVsQRcE7FRR/NH+2urH/vICEM8UFATPaJ
GE9XyPmuFucQMnXCopewW8owE91+Vn3WsRrWhw6now+m50ruaerQVQ/Iy22Rnm4tzAXLo2ElhfhR
fskBRAj1jRse22EI++JugnlYq2OHD5tcB6O/8FDRbmydA1Smc9vYrAtD1MeRh8BuGXFTUxVGm4iK
mbi20VP8uReTg77aBxfUTlU1Ay6KgeKAKdgaOJWGREDXH39PhCWkGpHV8bWhQ5lR7wmmVY8lLGUr
BmzvHXMZUd9qNSLMPkzo4pghkGYtNZy9tzexZ+iM3y0i+Eg95ibdjywzI6oeL1ovcmKfwETBc9uD
XrC+cf7bMeWxDFQC++abh841SA3XZdKcbB3skasVGNXLH1vls9TzKixsW1D8Gip6NfZF9i8zQQTI
UQAW10qKqNIIMIb692dm8vmMtHQA7RK7KHod+DYIsmU9MnqcIs7rkSWWrHCXMrOmqhvXyhxXl1Fc
Bqh/LgY82IsW8A/ke2q2ZOSqbdMjXnpg4KY9MpA3rLcUUD5oGqS96W68tVcytLG3OC6mHWg27OB2
MP3fG1R1PpE6hs34Wj71wydk4mH8cHsaSx2pg3THyjcBXHwgjy4k/9aO5Ubu3J6D4j+phPR1/fR6
JpoxMAXQWqGc+ijJpdQoVjk=
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
