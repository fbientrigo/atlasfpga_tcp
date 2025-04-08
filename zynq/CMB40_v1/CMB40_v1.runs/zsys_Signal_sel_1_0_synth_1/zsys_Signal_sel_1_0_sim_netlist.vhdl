-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Jun 29 17:36:41 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_Signal_sel_1_0_sim_netlist.vhdl
-- Design      : zsys_Signal_sel_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Mux_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    O : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_Signal_sel_1_0,Signal_sel,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Signal_sel,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal O_INST_0_i_1_n_0 : STD_LOGIC;
begin
O_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8ABABABA8A8A8A"
    )
        port map (
      I0 => O_INST_0_i_1_n_0,
      I1 => Mux_sel(1),
      I2 => Mux_sel(2),
      I3 => D(4),
      I4 => Mux_sel(0),
      I5 => D(3),
      O => O
    );
O_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55C050C005C000C0"
    )
        port map (
      I0 => Mux_sel(2),
      I1 => D(0),
      I2 => Mux_sel(0),
      I3 => Mux_sel(1),
      I4 => D(1),
      I5 => D(2),
      O => O_INST_0_i_1_n_0
    );
end STRUCTURE;
