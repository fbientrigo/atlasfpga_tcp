-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Dec  3 15:03:37 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_trigger_logic_0_0_sim_netlist.vhdl
-- Design      : zsys_trigger_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trigger_logic is
  port (
    o_out_trigger : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    areset : in STD_LOGIC;
    i_in_trigger : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_en_soft_trigger : in STD_LOGIC;
    i_soft_trigger : in STD_LOGIC;
    i_trigg_select_function : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_trigg_mask : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trigger_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trigger_logic is
  signal count_delay : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_delay[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_rise[0].rise_input_reg_n_0_[0]\ : STD_LOGIC;
  signal o_out_trigger0_out : STD_LOGIC;
  signal o_out_trigger1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal samp_out : STD_LOGIC;
  signal samp_out_i_10_n_0 : STD_LOGIC;
  signal samp_out_i_1_n_0 : STD_LOGIC;
  signal samp_out_i_2_n_0 : STD_LOGIC;
  signal samp_out_i_3_n_0 : STD_LOGIC;
  signal samp_out_i_4_n_0 : STD_LOGIC;
  signal samp_out_i_5_n_0 : STD_LOGIC;
  signal samp_out_i_6_n_0 : STD_LOGIC;
  signal samp_out_i_7_n_0 : STD_LOGIC;
  signal samp_out_i_8_n_0 : STD_LOGIC;
  signal samp_out_i_9_n_0 : STD_LOGIC;
  signal unset_input : STD_LOGIC;
  signal unset_out : STD_LOGIC;
  signal unset_out_i_1_n_0 : STD_LOGIC;
  signal unset_out_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_delay[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_delay[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_delay[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_delay[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_out_trigger_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of samp_out_i_10 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of samp_out_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of samp_out_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of samp_out_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of samp_out_i_6 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of samp_out_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of samp_out_i_8 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of samp_out_i_9 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of unset_out_i_2 : label is "soft_lutpair0";
begin
\count_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_delay(0),
      O => \count_delay[0]_i_1_n_0\
    );
\count_delay[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DF0"
    )
        port map (
      I0 => count_delay(2),
      I1 => count_delay(3),
      I2 => count_delay(1),
      I3 => count_delay(0),
      O => \count_delay[1]_i_1_n_0\
    );
\count_delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C8C"
    )
        port map (
      I0 => count_delay(3),
      I1 => count_delay(2),
      I2 => count_delay(0),
      I3 => count_delay(1),
      O => \count_delay[2]_i_1_n_0\
    );
\count_delay[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_soft_trigger,
      I1 => i_en_soft_trigger,
      I2 => samp_out,
      O => o_out_trigger1
    );
\count_delay[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_delay(3),
      I1 => count_delay(1),
      I2 => count_delay(2),
      I3 => count_delay(0),
      O => \count_delay[3]_i_2_n_0\
    );
\count_delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => o_out_trigger1,
      CLR => areset,
      D => \count_delay[0]_i_1_n_0\,
      Q => count_delay(0)
    );
\count_delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => o_out_trigger1,
      CLR => areset,
      D => \count_delay[1]_i_1_n_0\,
      Q => count_delay(1)
    );
\count_delay_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => o_out_trigger1,
      CLR => areset,
      D => \count_delay[2]_i_1_n_0\,
      Q => count_delay(2)
    );
\count_delay_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => o_out_trigger1,
      CLR => areset,
      D => \count_delay[3]_i_2_n_0\,
      Q => count_delay(3)
    );
\gen_rise[0].rise_input_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(0),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => \gen_rise[0].rise_input_reg_n_0_[0]\
    );
\gen_rise[1].rise_input_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(1),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => p_13_in
    );
\gen_rise[2].rise_input_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(2),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => p_11_in
    );
\gen_rise[3].rise_input_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(3),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => p_9_in
    );
\gen_rise[4].rise_input_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(4),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => p_7_in
    );
\gen_rise[5].rise_input_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(5),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => p_5_in
    );
\gen_rise[6].rise_input_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(6),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => p_3_in
    );
\gen_rise[7].rise_input_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_in_trigger(7),
      CE => '1',
      CLR => unset_input,
      D => '1',
      Q => p_1_in3_in
    );
o_out_trigger_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => count_delay(0),
      I1 => count_delay(2),
      I2 => count_delay(1),
      I3 => count_delay(3),
      I4 => o_out_trigger1,
      O => o_out_trigger0_out
    );
o_out_trigger_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => areset,
      D => o_out_trigger0_out,
      Q => o_out_trigger
    );
samp_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E2E2E22"
    )
        port map (
      I0 => samp_out_i_2_n_0,
      I1 => i_trigg_select_function(0),
      I2 => i_trigg_select_function(1),
      I3 => samp_out_i_3_n_0,
      I4 => samp_out_i_4_n_0,
      I5 => i_trigg_select_function(2),
      O => samp_out_i_1_n_0
    );
samp_out_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_11_in,
      I1 => i_trigg_mask(2),
      I2 => p_13_in,
      I3 => i_trigg_mask(1),
      O => samp_out_i_10_n_0
    );
samp_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => i_trigg_select_function(1),
      I1 => samp_out_i_5_n_0,
      I2 => samp_out_i_6_n_0,
      I3 => samp_out_i_7_n_0,
      I4 => samp_out_i_8_n_0,
      O => samp_out_i_2_n_0
    );
samp_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => i_trigg_mask(7),
      I1 => p_1_in3_in,
      I2 => i_trigg_mask(0),
      I3 => \gen_rise[0].rise_input_reg_n_0_[0]\,
      I4 => samp_out_i_9_n_0,
      O => samp_out_i_3_n_0
    );
samp_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => i_trigg_mask(3),
      I1 => p_9_in,
      I2 => i_trigg_mask(4),
      I3 => p_7_in,
      I4 => samp_out_i_10_n_0,
      O => samp_out_i_4_n_0
    );
samp_out_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => i_trigg_mask(4),
      I1 => p_7_in,
      I2 => i_trigg_mask(3),
      I3 => p_9_in,
      O => samp_out_i_5_n_0
    );
samp_out_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => i_trigg_mask(2),
      I1 => p_11_in,
      I2 => i_trigg_mask(1),
      I3 => p_13_in,
      O => samp_out_i_6_n_0
    );
samp_out_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => i_trigg_mask(0),
      I1 => \gen_rise[0].rise_input_reg_n_0_[0]\,
      I2 => i_trigg_mask(7),
      I3 => p_1_in3_in,
      O => samp_out_i_7_n_0
    );
samp_out_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => i_trigg_mask(6),
      I1 => p_3_in,
      I2 => i_trigg_mask(5),
      I3 => p_5_in,
      O => samp_out_i_8_n_0
    );
samp_out_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_3_in,
      I1 => i_trigg_mask(6),
      I2 => p_5_in,
      I3 => i_trigg_mask(5),
      O => samp_out_i_9_n_0
    );
samp_out_reg: unisim.vcomponents.FDCE
     port map (
      C => samp_out_i_1_n_0,
      CE => '1',
      CLR => unset_out,
      D => '1',
      Q => samp_out
    );
unset_input_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unset_input,
      O => p_0_in
    );
unset_input_reg: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => p_0_in,
      PRE => areset,
      Q => unset_input
    );
unset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000054045404"
    )
        port map (
      I0 => unset_out_i_2_n_0,
      I1 => samp_out,
      I2 => i_en_soft_trigger,
      I3 => i_soft_trigger,
      I4 => unset_out,
      I5 => areset,
      O => unset_out_i_1_n_0
    );
unset_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => count_delay(3),
      I1 => count_delay(1),
      I2 => count_delay(2),
      I3 => count_delay(0),
      O => unset_out_i_2_n_0
    );
unset_out_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => unset_out_i_1_n_0,
      Q => unset_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sys_clk : in STD_LOGIC;
    areset : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_in_trigger : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_soft_trigger : in STD_LOGIC;
    i_trigg_select_function : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_trigg_mask : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_en_soft_trigger : in STD_LOGIC;
    o_out_trigger : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_trigger_logic_0_0,trigger_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "trigger_logic,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trigger_logic
     port map (
      areset => areset,
      i_en_soft_trigger => i_en_soft_trigger,
      i_in_trigger(7 downto 0) => i_in_trigger(7 downto 0),
      i_soft_trigger => i_soft_trigger,
      i_trigg_mask(7 downto 0) => i_trigg_mask(7 downto 0),
      i_trigg_select_function(2 downto 0) => i_trigg_select_function(2 downto 0),
      o_out_trigger => o_out_trigger,
      sys_clk => sys_clk
    );
end STRUCTURE;
