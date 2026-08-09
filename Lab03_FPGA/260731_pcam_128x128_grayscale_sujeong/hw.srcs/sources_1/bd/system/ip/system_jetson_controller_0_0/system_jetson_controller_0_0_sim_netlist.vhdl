-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Aug  5 17:36:51 2026
-- Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project_19_Final_Project/260731_pcam_128x128_grayscale_sujeong/hw.srcs/sources_1/bd/system/ip/system_jetson_controller_0_0/system_jetson_controller_0_0_sim_netlist.vhdl
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
    gpio_o : out STD_LOGIC;
    result : in STD_LOGIC;
    done : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    gpio_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_jetson_controller_0_0_jetson_controller : entity is "jetson_controller";
end system_jetson_controller_0_0_jetson_controller;

architecture STRUCTURE of system_jetson_controller_0_0_jetson_controller is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_1_in_0 : STD_LOGIC;
  signal start0_out : STD_LOGIC;
  signal start_i_1_n_0 : STD_LOGIC;
  signal start_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "TRIG:01,RUN:10,IDLE:00,DONE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "TRIG:01,RUN:10,IDLE:00,DONE:11";
  attribute SOFT_HLUTNM of cnn_enable_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of start_i_1 : label is "soft_lutpair1";
begin
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => done,
      I1 => \count_reg_n_0_[2]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count_reg_n_0_[0]\,
      I5 => result,
      O => start0_out
    );
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
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"23CC"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[0]\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => result,
      I1 => done,
      I2 => resetn,
      O => \count[3]_i_1_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68F0"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[3]\,
      I3 => \count_reg_n_0_[0]\,
      O => \count[3]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      R => \count[3]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      R => \count[3]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      R => \count[3]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => done,
      D => \count[3]_i_2_n_0\,
      Q => \count_reg_n_0_[3]\,
      R => \count[3]_i_1_n_0\
    );
\gpio_i_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => gpio_i,
      Q => p_1_in(1),
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\gpio_i_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => p_0_in,
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\gpio_i_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => p_1_in_0,
      R => \FSM_sequential_current_state[1]_i_1_n_0\
    );
gpio_o_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => gpio_o
    );
start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF0"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => start0_out,
      I3 => start_reg_n_0,
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
    gpio_i : in STD_LOGIC;
    gpio_o : out STD_LOGIC;
    cnn_enable : out STD_LOGIC
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
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.system_jetson_controller_0_0_jetson_controller
     port map (
      clk => clk,
      cnn_enable => cnn_enable,
      done => done,
      gpio_i => gpio_i,
      gpio_o => gpio_o,
      resetn => resetn,
      result => result
    );
end STRUCTURE;
