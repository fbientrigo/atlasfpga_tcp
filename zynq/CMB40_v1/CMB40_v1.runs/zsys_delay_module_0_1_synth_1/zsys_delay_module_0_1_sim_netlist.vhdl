-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep 25 14:18:25 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_delay_module_0_1_sim_netlist.vhdl
-- Design      : zsys_delay_module_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_module is
  port (
    signal_out : out STD_LOGIC;
    signal_in : in STD_LOGIC;
    delay_sel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_module;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_module is
  signal sig_delay : STD_LOGIC_VECTOR ( 30 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of sig_delay : signal is std.standard.true;
  attribute box_type : string;
  attribute box_type of \LUT1_gen[10].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[11].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[12].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[13].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[14].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[15].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[16].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[17].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[18].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[19].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[20].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[21].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[22].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[23].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[24].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[25].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[26].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[27].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[28].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[29].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[30].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[3].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[4].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[5].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[6].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[7].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[8].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[9].LUT1_inst\ : label is "PRIMITIVE";
begin
  sig_delay(0) <= signal_in;
\LUT1_gen[10].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(9),
      O => sig_delay(10)
    );
\LUT1_gen[11].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(10),
      O => sig_delay(11)
    );
\LUT1_gen[12].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(11),
      O => sig_delay(12)
    );
\LUT1_gen[13].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(12),
      O => sig_delay(13)
    );
\LUT1_gen[14].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(13),
      O => sig_delay(14)
    );
\LUT1_gen[15].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(14),
      O => sig_delay(15)
    );
\LUT1_gen[16].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(15),
      O => sig_delay(16)
    );
\LUT1_gen[17].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(16),
      O => sig_delay(17)
    );
\LUT1_gen[18].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(17),
      O => sig_delay(18)
    );
\LUT1_gen[19].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(18),
      O => sig_delay(19)
    );
\LUT1_gen[1].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(0),
      O => sig_delay(1)
    );
\LUT1_gen[20].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(19),
      O => sig_delay(20)
    );
\LUT1_gen[21].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(20),
      O => sig_delay(21)
    );
\LUT1_gen[22].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(21),
      O => sig_delay(22)
    );
\LUT1_gen[23].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(22),
      O => sig_delay(23)
    );
\LUT1_gen[24].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(23),
      O => sig_delay(24)
    );
\LUT1_gen[25].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(24),
      O => sig_delay(25)
    );
\LUT1_gen[26].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(25),
      O => sig_delay(26)
    );
\LUT1_gen[27].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(26),
      O => sig_delay(27)
    );
\LUT1_gen[28].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(27),
      O => sig_delay(28)
    );
\LUT1_gen[29].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(28),
      O => sig_delay(29)
    );
\LUT1_gen[2].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(1),
      O => sig_delay(2)
    );
\LUT1_gen[30].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(29),
      O => sig_delay(30)
    );
\LUT1_gen[3].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(2),
      O => sig_delay(3)
    );
\LUT1_gen[4].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(3),
      O => sig_delay(4)
    );
\LUT1_gen[5].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(4),
      O => sig_delay(5)
    );
\LUT1_gen[6].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(5),
      O => sig_delay(6)
    );
\LUT1_gen[7].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(6),
      O => sig_delay(7)
    );
\LUT1_gen[8].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(7),
      O => sig_delay(8)
    );
\LUT1_gen[9].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_delay(8),
      O => sig_delay(9)
    );
\signal_out__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sig_delay(24),
      I1 => sig_delay(16),
      I2 => delay_sel(1),
      I3 => sig_delay(8),
      I4 => delay_sel(0),
      I5 => sig_delay(0),
      O => signal_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    delay_sel : in STD_LOGIC_VECTOR ( 9 downto 0 );
    signal_in : in STD_LOGIC;
    signal_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_delay_module_0_1,delay_module,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "delay_module,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_module
     port map (
      delay_sel(1 downto 0) => delay_sel(1 downto 0),
      signal_in => signal_in,
      signal_out => signal_out
    );
end STRUCTURE;
