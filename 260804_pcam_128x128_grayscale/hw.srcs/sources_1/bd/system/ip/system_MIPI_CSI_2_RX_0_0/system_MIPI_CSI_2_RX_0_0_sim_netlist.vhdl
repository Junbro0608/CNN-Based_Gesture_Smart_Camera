-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Aug  5 17:07:31 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/hello3/CNN-Based_Gesture_Smart_Camera/260804_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.vhdl
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
nuZ8
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
Khl3w8P+aN9yNBzm52vK//oovnZAuisLRYOh9mOQ/RrhLE7Vf7N1vrD5ySmqP1LG+suvLWCwrt3s
zrwJqdIM7kDLuROvy6WUSq6WF6JaDpHDz6jhdh6QR3GW/m658u7GHw2SFXv4nHgD8NvodIQ6seaw
RPsWsHS8fN9GL9tK6waJAZV9H0oGm3OOWre234gGpj7UJ1nG6xrYtGzBtum5MHxSU17DlUmcS/0D
ssuIBwpcnID6VtM3OE/Z5laCyS13Nf0C7Uz4TznHudufOF6TINHZC0uPLfvdZzwtipjaCpz0WdOo
tbKc0uyylooOYDwTmo6e97dMBzx5l26d06NQVoystahhabc1PC/VSfUaMoJT9BqD3CxrdOSXfjI+
Qr2GuhbEkmpi5K6BIy2VJ6yV8PE3A47p3sLJ5B02ZufJOQmwNpQ2yAeQfDSg/Oxp1KeXo4hIuRFx
INq84AzO4iIUUhyBZVSKFHn16BcW414NCQN0UFWn16IcRDV27CqEAMGqch+yV3FvSsiBDlx1byR6
Cs9nxgXRk1TwkW3QuSRrgzkgeoSuNF2YD274c3qNQoTHoX+ZT7tXCfrX31kX+4fXdQ1mS6gm1FZI
c8u1gxk08W19pz1anKguV01roNPi5XwQ35wxFQMQLtfKfO90mOrZEHcE0iDeK7wbpNdSf7bn/CpU
u9o7mFKYxfMxM2qEoK4qmJiONx0nl0imfq2pZ3IiwETPjrA6BRTiGIuWAZgfobf7w1KBi+d7nnoS
cdwNVrDwojb/vFN7E9qN424372CXTsC6skzpxCRYsx6o0P1MSZrBgpFPpMyjwP0jzC7mIKhRXNYx
G+3JmoB55z8z23t/vB5asuTh0WaSYkMPPhVHA9NSX1026xkUICqbx5x4VsY89W/xjrsiTh6gpHaR
M8rXcXXrur5jQoMvc0LNLDWdMwr7Jd4/zaCszfqzwSh5i2qML/N0e8ggNq+2U5xsnWGjehDBoi0n
y6GIXN9zKRzpH6ZitfUPdJpNMwO9Q+Du52HXdtGd38LI0YbLo1XZuIDJoaMMXq4lM4ldYfQFViGN
xD7YEkiNMKnie4Bl0q3RBbistQQ1AkVbUct8M+caOzDJ7ZtHIVwfnis45kvCEGdkUWRyyQCPJHbk
0vORXtBYSwFsimrqyD1cwi9hLrhm7lSPLM+MgH1WpEita60Hx8urJIgwq7KTG3W3OqOkujUoSYtm
zGQD6tJOqjGBT5gmh5uVPNthuROc1oC/9CvBFpqPI64CnaACvvEd0m61zfU77L0OXy/HOxiJMOXV
9MJMn5ZLm02Kp0OkQCbpZLHZ3O/TL9psDBDy6L41kE0JyukMMJORKWq8wVbavzN/9cOSjcEbLN5B
7yNKY66E+398q67O0Byyz4kVce2v3YOx4DAFjAdCFF9K6eMNxrq2ZxORaQjXSrgjyyaT7caeyXAd
XobBm9L0ZSIxI5sVSIXX0NLgSWZsqRkupO4ah4ruVwzswyUHPZdOxehJLyLZYBf0oHf2SXcw/iNY
laNpFOAJyDDg7WkaQNh+3UUnkTcJPrKAUIL/zraE3uSI7yuQgD596IPuXPBiiE4uh7CkbNv0XyMP
mMy3Oj7EmrGaKgL3GWXlUMLJFpbMr+AldCCnnDPzomU9S9uDVxZzaKSqaVZpQZ/IMwoD5KG0IvSC
kE+PnYmu8oNv16FbbjUY8xAv7JzxjH6DDiAfGzApYU7WluwMz+VcePHCkrPej0hGuM6pNtlkJM7h
xOHcSX4+0GVhEFe0vzKyMlQ=
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
