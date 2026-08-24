-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Aug  4 13:08:16 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/260731_pcam_128x128_grayscale/hw.srcs/sources_1/bd/system/ip/system_MIPI_CSI_2_RX_0_0/system_MIPI_CSI_2_RX_0_0_sim_netlist.vhdl
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
5tsw8jsf/R32JIophFGCf2cHRqEpBSjcYbj+xYwE+XdtKWXuEtFxKwAf1gU4iaasD8PZ0kBwiWx3
5/1hvacfsKb0pU51KJJFPar2HfIHKYBFlPVgbgTlOFmVU64W7UcxeoFRvMC4aFm5Z1C46LTH2mnN
mEaBGM+gs3eXW0VQercGT/MIWRr/tZViOTz1baOwPzNWrhcrKBLxDaUknrJolZUhvfQrNyCn99Dy
FwjYVyDVYazLoAvDuVVCXMSDkabEqE/u83Lu0gWMIOXFxE0BIn5Y7yfgJLZ0nySvg0K6mvi/k8Yt
uiQPNMWfAzmj6u0Je4QnxEtj3avLiutQshtN3NGfq5dD7t1sy3AoastoVr9YMGh6bnezv+Elspmg
yYmwi5xK6vNePkqr1tC9irsLh27uoEzAOjKrkGLCfOyEemfXSevm4sPVXV2jZiElQzaK4Rrn3mm2
YLR6U0SE5Xj1XrZqujuDDR/lxEz9n3D6jcRPKMYKwu74rEWfMNHSLOSqj6LDEWanypA9kbqzfSno
bKADXMFsJasCE34sVwvoS0cvGdCkiyyQTjxYIvs3kWsd9ncaSc+yc1Cb8tR2eOSrut8OcbTMlnML
bR14QMpHqH0kgnyR15HP4c9Oo2wf4bkGeQdBCsw5Wwpd9LAVXG4WutHJuTMgXTVJq20O+6a28rpm
dhjIsNKn9Cx/s3S1iYqDOD1AbogzieENAvHyo00ZczKW58Eh3d3cd/EnrSJcLmaIOd0t9XsR5+Fj
9pCB9RL5NbleEMrLilZ1Yne7GOOiYSm1nIR/HhTHdQ7IVc1MvR7ndGu4YjkDYjtSEmZ4CjBVobeN
cYogWfNrC8dMltTzcvs8ikYY5to1my76wro85r1tzY48v89YAiwZ44pOOxI2AakSBdxkeGWQWUZC
q4cGFRdTPBmEeWiVVGtboNGKuRbOacI/S5Jewb2fFGYnLf74wTiZjPit5DF5ImgrEL5sqOxwzjnb
NE7d9mCVxKOMNOMbI0Fm8Skl/W/aLrUvyHhnrBRBskbtTFa/isfNoUpZhWu0HVGsj+dd4xoSncQ1
LnYbhp5H5z2F7+30vjnUDX5BX3X254mdHxhuaHUeW5R/rM2id7QPJM64zC+tYOyGzon2D1h9YqsM
4T1hNVR43QlvTiCiy+HcpNkZWWJXk92Ck3552zprGlCVoHDBzFgtpJ6/ffnCbJxQwLysDHki89Es
a4MkN/6zZQvoGc242oD5Oy3YEFblTLe8zotGUe/zKPIngJ+vA2wGZX0XEkUpkgONrt3u4wzjm/lC
L/Jd9jQI2YppV6jm+5AudpNksLxk4ZZOGSWPoQLxHB+5LcfwxWQc85dfkqXchVXfLyvK9z2v4p4d
pyqd8lZRUw+eF6RkZG8kG08TyIBdwQRuARL4yz/n6W2lQX3W3iYp98OjJUOKVZ5g2BxGBeE/Aot1
uOGITjJ2rpmU9/N9yWURG5XBMNiD3CsXMM6vsTbhQkrA1ofZcQuq+9RUbD3KxrCQmCFkhDGOiwed
D6xDsJK7srGvVkX/CjlwObVWr4Aa6cC+CfLy+CVzd9TSqO/+JwCOycZ7sK1Lkjal4N6p6RhBy0Oi
aA+Ri2Xo7nIqBdoNEDmgixLNMH/48t02OvksGAc3OiK8QeiaKYGE8342Ty+DR5mkpFAFiACw2Rxi
5QEm8rnHkj5ZdrhNUHjSuqk1kXpM2he4nHoGxzEgX4I8wLrlpnLsxZef9Zf7i3jGF3cZAioEGqLq
cs5Hs/P8uWM+TyWMx4nYTVFgawggfVKNLcBjvP870aR1REUKNMtD7R2u26oiQUkfUIng2dh0EsBZ
AasfQw3WLHE0fFWx3r4wSA3E4aLyUoT/4tRVvwWUjQ6YXAc4X+A5BUJKbQ+0XIrbuIkz0M0eX17z
jhHJqi02D9dbRDTbHf1GkxmggfsJuqm16ClnHM7fTWkoyYoZR/opqYiqgwmM+KMjTL7NEWZQ/p1f
tEW34IoKmBof48Fvf/PnFESi+QMjCVy+mwjnbgEvuL++ppH3dJKwlav49bLbzeKSOVIAFmAdimyo
TPHFrQ7uyQS8OvoIxuV46j5tgmFE2+Lova7mmiDvA37ur38gBQVl4qSUREH205GYQqUaOPWJjvYc
s1mRsCP58Tl2B/LUEmSTCev/fRucpLUvADCskEe1Rj8SqMhLObyuUo1APQe/r8K/dTpSRYbdISRr
rTHyNb5PnA3YTOczAIQRIxp7yzxPPBFEBGHwD4MK4tvyRLr8NiB0n7HkVgNVagqbe1DvfWiqkvT5
dBSHwV2BQkssFbZi5CTcdGQy/SBo76M76CqywbCom6LPHkMNbpNjTj7wre7rWH6g6sNpFraUEGFL
sv/KzUcxInx4Faihrrn6hXpHd2gpnD9HHspy9CO6As1bPjP70Yhx4YdcIT9VRQbXC4EInyjT3+0N
fmXxQUTe1lkuEA3nrp77v+qgxVsfm3uLo5ukEHRJzeQrsUoaO2783O+l6MRV84uIN/8SRnyEMCIQ
R+SWhFWXNRBIz/RlhHfg6GmjP67Sv6pQ6sR8Js+8/tNfwEv1GZu41wY61TPFDy4XECAbZk+prjBw
kA/t6Oqkyk7FBalHCg3+R5n/NiZ/FcXFNiIcOrH8m7xC6rErEmn+yzVco2fKBSXWHQaWq8x+swPm
5oDiIRMIN2lS0ZOg/iuk09zu+Rtc3D5t3ezK4KWZp9RPCi7bXEe4ebmokY9l2uJjXIhQIxOh8GLb
e+8bU84MqxHWhY4hac36iMJtviGmtumaZUPqc3TpuxknfefO9vnZz0hL+971e83HKH2adPpgjPKp
0xZ55zz65g+C0zuD2SbiSn+8P3Jxkb9EeFYTQhBpq9xSxbA7tbwsBKScdhWSSk92RZHcqLzkYEpO
jJ+upqbtnQxzhlye8hX2Ju+AUoiQ8GcQeTyVoqt8UTnD+/c/4EM5PPVz79HvgnAH8UJTvCSTmo6c
H/BfJc84hjIT8aNeRKDTT/SHP6qcGl3J6YjLlS90ObgxY0M8XSxZPhQvUT+PvJ1WXl9Eoexo/BUi
RPwZ1JRRiGHOTvWgNO3cXUwXfVGfPOqjbiDjgurQ+SR9yUrZ8J/p7JTKMW4h7ehsbs2BVA2NoVax
woK0AiD5fHBjPbUeUPcHHekH7u76MKqkAF8YdQkbtNV3bSRcuRwC17IudbhgTJS+yBJCLwaQukuF
xGwXlDPB2KnEOsuDmGfS99MEzWw2VM/gtrPPJdNqdr8PGRlNhFXsecqjjJ5pSm21hRueLzZ8k3vE
5HLR3Qdl2tQeyrEGEefkDmEggrxbSd1wcNW+SY3PymTxM0sFUV8/lWcmfNzAp1P14w7WjnHNoS3P
SKeTpu5WzCGoSt9gRQoYp1ie9OJosxmo/LuhFUCqvXOrxyJX+sS3tKaQhGbz1eNIB9iIyvLwA3Vi
J07WNGFvu0AS5V0NOLJHFfT+N16KPC9jIE0TrYkzRzeUvxXpnL7m95F1D9kj2dVAK9bBpc3ZF9zb
QLPptlLi4V0vxIsUQdXGbZcc5dgn8yadgpFuY6NSREvtNnp3Api8r86HOFlhfDlFInhHLnu7oG/4
EFxNjJhZ4NKS/x4M4Hp/wkxTMyy9kyNAxIodGe4TN6lCuIVpZf9Q5umRVjavbS4gJT7mmYhN/8rQ
OZtnPOZ9sMAzgvkXsPFzUSdnrDuFQPrNgmSIvD/dnpO2QoOyu3pJbOk6JOLGOgMWIA+0r5LpebFs
qXMcNlawq8z6vuVT5/A5k0VoJi/MWa15UfwX2VmR/JVwqfh+w3s/DuBcCxKG+D3OS/ecpi6n/8cU
Od75b/7lC5mGUuly8PIjPE8AnPHq2S5h4MO2v3iIWOX3dduRdPL9WC37tDwpxmKOFbjcvDsiF7uz
GPf4YHgozES2vw10mrtCBQSbPL8/Ij8+9+o7fBDIZ94cXqccHzJPSn16t1cySvmKkEXHlR7P0YuB
Q4uQ/tdG0J6c09xd08LNXWOJ4sq0Ju3nxV4oXqKC+hOVYXkKjiWdGrMHL7Z22lfLrKF5RD7910f/
T9zy5Q7Q15Mt0USu1EpEikxc+sKARk7tXm6mmnfys1Omqn6ZOsPHKMKViMjEgC1XgSA+WT8LWgd7
VL+ebGR0NHjQYv4RiWuXKAqwF84vagznfBnfEKxzY0lMr8b4BwQa9K+iNG1iA/OCNeQfVYBzZ93Y
6KXUwz0VOULKrq1nzISESv0ujN9YVoWPCLKdzVVG4NkYknkvTDC9XskJO8gZY7EftfFAIhXtxmfh
VNcGVmhgo5ekaT2HU3I74NFAlweWdEq+JUQ4mbsWndRVJa6i2yUFLAHzBvfKlIFSPjoRUvPTVRIM
pzMv6NT8wpOubzsIdE3HfLe3rHsue1xvHN3n0FYdeiVsCnAAuGTNJ6jErY5RSDt7sDzTMEHeccBt
3CyDipcdD+CxLsKyGRIdY1XrhClmsV/ioq7+CFC2/o2ef3dTp3uZ8+BWFSE+6/kMCEtYWLYjlgnX
CYDZ+G/rO6wZ6fBojDL1JSQi0juwXMvgigOAPZpXMLlUniYDNy2mnFHgMG4zl8zNlZPWjQFicKZp
rZz64FMQV0Ij8xHBr7ooXd/caIvPR/gBtowB/txTCLte2cSuZTvrRR2J2IGCM2cEjBBv+s0wpwSf
djhaEY84iLPGsSUd0x7+OjsLDA2lGQCGM1lzfsNfngyUOTTE/4uERBeRUHjQLzT22PM/B9sdNWEJ
S3fdFcYAKC4E4E7/0iQ6gh+yKVrtsq5YFdeUJZ1US2PJkLUEmrH7qFSdUGXZKGaOHRntJG3O8kZT
DES6BDqK0k4nYi63x+03yUpdFDjsyok+13J4UKE5WAfQ3IGsvCOf/azIRYSeBhLoZj553N30INiX
y/212CP3YgfNlIVPeEvQ1pE9rPpozs1DYwOytn67VtolcozE8uJytDOhrwYhWze+MGjN0pLZmuiN
2iHHL/RJP9vM1o5wKp+kFORzkSvWTNgyIYyiH62WwJ03f3ECIV2agxt0o+iymo132uVfUJS43N18
ucviWLDuvx1cZsl+pop6+VdAxV7lijQqilWHJ4/1tybv/2rIetewnW/JV4SS0heDjQa1L391QAT5
nzzDYd5vUe+RJ0XRliYCguR01rPZAgtXe/oQJd/ch/gofZu2C6ZEXYMSKbp8rBz+bKvHQMqLdg64
GICMkiLIMCD7+8ArIpkQPpQmPWhItafkkOR5MjH4Or+2KvPxKmGnID3C1gPScZkl8Yh3t4sMrZi5
0X1GPx2o2rJn0D0uGQ6Ha1nyRsMezL86v075RoAABxScl70Ck5cpFEbsbS5NpPyT6HLAXGsVeCF9
M/96qmSDY8Di/j/FQpEqg9txSEDIntQFTdtjLLG99LmV4FElRRP2mmEevQ5HBWDieoc4Rc8uma+W
gG+ptzwOux1e3y05r7eskT6EvbOruYIynOSv7Cp6wIhaAAt11u6q9atDnoXfB+3sZfs2SXQ8bijO
TxMRcw2i1uICm2NA76jkJX3BK4KfC5CEgTqO7WMQwm3l/2cDId2fXZVmWFrtIHeqloZq/kopJZ1x
tpQOIAPxJL1OnUkFBH792dfgkeA+1MkEcSSvXs4VsEG63yPcfgoTsll4M7ub3uw5IJjDM3kSclcS
CMP2xSkAg4asoaRHof4YPubJhx67r8aPIkRpp/ig7OOfduksLkpk7KdmUXdAr6vrbDSTnbuAudvD
iEoQHuqEg7r3cjjVqQ/fI/CMSNTFRmw18PtkbDD6r1jsNT98ZmvaRa97Y1bKm/IZiBycZ1fxGrz6
lS+KEastLqbaa7OuRqjoTeq3M9fFZ75rEwTwkiBIBqrKh6oK0watMhFx5vY+4w5AJPSXaeuQ3pUD
K0OOy6dkoFfdSHjlBgrRtxRXZKmEUYzL7nHKfjzPHmQiZsf0WvP6/O1D4b5oaagBMJV9Gz62/ivT
TpllzMMdeQASw1B85/3/kBoN+faNHelr3Ba7rn6T7qf3ELbwIWNTvl1esTfGU1Px1j8OXNk2QYQ7
vQxt7ZQWFPPaIFl+SAjJiJWNmw/sj0ICMqFiH+8EV2muq91N8H59kvkPkJZK8JKHkHmX0gj4pLKu
QrKf1/+wX0C1rhhjpmeSKwR+sRaTdKgyRR6kTdF/mus3s2hxg8d/767l91GWVqXSZJbpy4rpz3M3
ByaROyE29NQ0QGNanxr0Pm3rdIfEZBCjoOSLA1sJ3+tx/aVgf/h/M4G6uiyv3hoZQphyc/xsNwoj
gGEBK2kC4HXd1Vn8Sne4VvSgisLbo63ak+C+HiGavTadfJB2+worGNeYSC9B0wMDV95PSPgwrKRI
EEaZc8BXGzoMluxAtSH0Wgv5L0yKfQY+2R3WzcXabZmY/hRtaceZmtKIoKZjy/xBr637qMcmaH+Q
xvJLj8zrfzSmTaRys3PuX4sJ76vGKfXgNVIQ6JJe089qPs6oC/KiWrcqC8FQm+wsQJL39uA2IG2T
0xk3
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
5tsw8jsf/R32JIophFGCf2cHRqEpBSjcYbj+xYwE+XdtKWXuEtFxKwAf1gU4iaasD8PZ0kBwiWx3
5/1hvacfsKb0pU51KJJFPar2HfIHKYBFlPVgbgTlOFmVU64W7UcxeoFRvMC4aFm5Z1C46LTH2mnN
mEaBGM+gs3eXW0VQercGT/MIWRr/tZViOTz1baOwPzNWrhcrKBLxDaUknrJolQ7A14b1EeJb+YuV
z1UYgtCXCfBPTJXNMWY5RV/rqSQPKHySFPU5Ot0gPu6katSBB9p4j/qHRFgdW4LYXUdZOPb1lt5J
YEf7gfT6ae8WpmWkEuYpS+1p7bm6UMKz9axFHo39sdan7K5KZ6w3AmDchrku68YCNzX3LKDednTb
XC/b2w9cmNuZLsknYexOY8squuM4rqw3IpfaxPIWY6LNEUZmzW7bJ2XVGR1Qux1iTQxSmvyfE4xA
8O3aWpChLge2qajvrmj9Rn7H9EBTxfOBhO8nUj5g4nEKAorM7TIvSibZvQrjP8AFBdGvXJwf6ygu
Bmv0Z4J6kKhR2wXo7gXgumSAQdFjkm2qq+lr7p+gRm+PadckE4an6pDLT2UWMfiwO/2JPu7qEeZZ
Dd2QpVOFQNzruJuT325U+MZGPvb+NqoAliCQbO4xwYHnlBGDVP0VaUEmCUzI8xmXUx0vcoibLntH
imjEPnDrEnpjhnbkfHQirc1EWkbPPzoQ29gfchYv3MCU35sEd38MMVCdS8O+HR8WZYJ1TRTBuikQ
04mDOZ/A3wZuRPb1F86VD8ll1N/piWeRlJrjXMnDSbZmhMcYRG6JI/h5+cQsFnrq4VGc1imvICRB
3gnTmMMr4ijlaoGif5M4iEk3ciXO8YVge17ekprc9wd++fGShULTM++FGDc8MKXkoezn5cqQJj6t
c/5+AhoLbP/XuwBAKxnGMW5CUfKHxheBZ+RyxdJE3aHwIviBlDM1VqOIggCVxfVPbWP3tDT+AACZ
SP75ok5HFdw/bkx8jieIR3LKpMg+8G8QeSAXSG50ae2Yg1IKFGlVvMGLazve617W5zemF28nf9T1
n3ccID1RvbYiXYd+nCqCDQxTRBV0HfddOUO9E20hGtDQ56KW+z2N82yEfjH42zR8hN6BFkPrewbB
gvhDSc0ywJdouZDEwKG9tqmIO61g45W7PFNh42Xc5LGVlpb/8yOLvNTBgHUFRlvgPA/03A8gM4aq
wYfAbriyGLFO8gZ09jbBcta74WRLyqVtSraF60kyaup3NFjwihgvREATJGzATTlugUmDQQk8v7BP
en704aWOlQwMg2nB4xZkZSv7MiRKNKvHnOmTABHJYEKu977wS27GaTgmnbD+Gropyur8VKGG6h71
MQcUEV9Ir8e0oQJG0iAE2coVBE6yafdImOtpmMGGKC+u26/M26HXVmT0NJEToHYj9XweHpnFsCGZ
PxBiHR9Bdbjre2zrLNYF1L7LAbw6TJ8V+Tl4214eehgJwR8yg0HQrbCTLb/SBsPohRu5wUS/mPh+
o5Z3jhilbdouZ4O3yS+gaFPA8+Z/WEOlzRC1md6v9syv9r7W4/NVl2QpmsqTwmgCdKXwwjnBsaNQ
zzQbtq3GVXYWFca8hmH0AHkZmZNGxnCdMxJArqcKn0t95xX66QKdYIp8E9WWtRK7sTP70jsLMdqu
cY9ajAK/UIaOisZLOMNJ1Uk+LiGqCqbWV97UWFWikObQ0CJ0HVgTpaQpqqu04Q/MujN+sqZrWsMZ
IkHGC9w0XyKLVvkqNXjAtmI=
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
