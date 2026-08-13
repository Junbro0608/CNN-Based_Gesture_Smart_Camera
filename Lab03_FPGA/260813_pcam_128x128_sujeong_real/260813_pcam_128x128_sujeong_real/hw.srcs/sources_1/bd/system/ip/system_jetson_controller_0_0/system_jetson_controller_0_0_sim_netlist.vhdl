-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Aug 11 08:24:14 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/260809_pcam_128x128_sujeong_real/hw.srcs/sources_1/bd/system/ip/system_jetson_controller_0_0/system_jetson_controller_0_0_sim_netlist.vhdl
-- Design      : system_jetson_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_jetson_controller_0_0_jetson_controller is
  port (
    cnn_enable : out STD_LOGIC;
    jetson_o : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    done : in STD_LOGIC;
    result : in STD_LOGIC;
    jetson_i : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_jetson_controller_0_0_jetson_controller : entity is "jetson_controller";
end system_jetson_controller_0_0_jetson_controller;

architecture STRUCTURE of system_jetson_controller_0_0_jetson_controller is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal count : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_3_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^jetson_o\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_1_in_0 : STD_LOGIC;
  signal start_i_1_n_0 : STD_LOGIC;
  signal start_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "TRIG:01,RUN:10,IDLE:00,DONE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "TRIG:01,RUN:10,IDLE:00,DONE:11";
  attribute SOFT_HLUTNM of cnn_enable_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of jetson_o_INST_0 : label is "soft_lutpair4";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  jetson_o <= \^jetson_o\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00743330"
    )
        port map (
      I0 => p_0_in,
      I1 => current_state(1),
      I2 => start_reg_n_0,
      I3 => current_state(0),
      I4 => p_1_in_0,
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => p_1_in_0,
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_2_n_0\,
      Q => current_state(1),
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
cnn_enable_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => cnn_enable
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \count[6]_i_3_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(0),
      O => count(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \count[6]_i_3_n_0\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => count(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38C8"
    )
        port map (
      I0 => \count[3]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => count(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38C8C8C8"
    )
        port map (
      I0 => \count[3]_i_2_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => count(3)
    );
\count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \count[3]_i_2_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \count[6]_i_3_n_0\,
      O => count(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \count[6]_i_3_n_0\,
      O => count(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => result,
      I1 => done,
      I2 => resetn,
      O => \count[6]_i_1_n_0\
    );
\count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \count[6]_i_3_n_0\,
      O => count(6)
    );
\count[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => \count[6]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => count(0),
      Q => \^q\(0),
      R => \count[6]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => count(1),
      Q => \^q\(1),
      R => \count[6]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => count(2),
      Q => \^q\(2),
      R => \count[6]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => count(3),
      Q => \^q\(3),
      R => \count[6]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => count(4),
      Q => \^q\(4),
      R => \count[6]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => count(5),
      Q => \^q\(5),
      R => \count[6]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => count(6),
      Q => \^q\(6),
      R => \count[6]_i_1_n_0\
    );
\jetson_i_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => jetson_i,
      Q => p_1_in(1),
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\jetson_i_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => p_0_in,
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\jetson_i_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => p_1_in_0,
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
jetson_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => \^jetson_o\
    );
start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5755555503000000"
    )
        port map (
      I0 => \^jetson_o\,
      I1 => \count[3]_i_2_n_0\,
      I2 => \^q\(0),
      I3 => done,
      I4 => result,
      I5 => start_reg_n_0,
      O => start_i_1_n_0
    );
start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => start_i_1_n_0,
      Q => start_reg_n_0,
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_jetson_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    result : in STD_LOGIC;
    done : in STD_LOGIC;
    jetson_i : in STD_LOGIC;
    jetson_o : out STD_LOGIC;
    person_led : out STD_LOGIC;
    jetson_led : out STD_LOGIC;
    cnn_enable : out STD_LOGIC;
    person_cnt : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_jetson_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_jetson_controller_0_0 : entity is "system_jetson_controller_0_0,jetson_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_jetson_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_jetson_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of system_jetson_controller_0_0 : entity is "jetson_controller,Vivado 2020.2";
end system_jetson_controller_0_0;

architecture STRUCTURE of system_jetson_controller_0_0 is
  signal \^jetson_i\ : STD_LOGIC;
  signal \^result\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^jetson_i\ <= jetson_i;
  \^result\ <= result;
  jetson_led <= \^jetson_i\;
  person_led <= \^result\;
U0: entity work.system_jetson_controller_0_0_jetson_controller
     port map (
      Q(6 downto 0) => person_cnt(6 downto 0),
      clk => clk,
      cnn_enable => cnn_enable,
      done => done,
      jetson_i => \^jetson_i\,
      jetson_o => jetson_o,
      resetn => resetn,
      result => \^result\
    );
end STRUCTURE;
