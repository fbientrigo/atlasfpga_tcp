-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Mar  8 23:59:16 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_ADC_readout_buff_0_0_sim_netlist.vhdl
-- Design      : zsys_ADC_readout_buff_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff is
  port (
    o_ADclk_p : out STD_LOGIC;
    o_ADclk_n : out STD_LOGIC;
    o_Lclk_p : out STD_LOGIC;
    o_Lclk_n : out STD_LOGIC;
    o_ADC_ch0_p : out STD_LOGIC;
    o_ADC_ch0_n : out STD_LOGIC;
    o_ADC_ch1_p : out STD_LOGIC;
    o_ADC_ch1_n : out STD_LOGIC;
    o_ADC_ch2_p : out STD_LOGIC;
    o_ADC_ch2_n : out STD_LOGIC;
    o_ADC_ch3_p : out STD_LOGIC;
    o_ADC_ch3_n : out STD_LOGIC;
    o_ADC_ch4_p : out STD_LOGIC;
    o_ADC_ch4_n : out STD_LOGIC;
    o_ADC_ch5_p : out STD_LOGIC;
    o_ADC_ch5_n : out STD_LOGIC;
    o_ADC_ch6_p : out STD_LOGIC;
    o_ADC_ch6_n : out STD_LOGIC;
    o_ADC_ch7_p : out STD_LOGIC;
    o_ADC_ch7_n : out STD_LOGIC;
    i_ADclk_p : in STD_LOGIC;
    i_ADclk_n : in STD_LOGIC;
    i_Lclk_p : in STD_LOGIC;
    i_Lclk_n : in STD_LOGIC;
    i_ADC_ch0_p : in STD_LOGIC;
    i_ADC_ch0_n : in STD_LOGIC;
    i_ADC_ch1_p : in STD_LOGIC;
    i_ADC_ch1_n : in STD_LOGIC;
    i_ADC_ch2_p : in STD_LOGIC;
    i_ADC_ch2_n : in STD_LOGIC;
    i_ADC_ch3_p : in STD_LOGIC;
    i_ADC_ch3_n : in STD_LOGIC;
    i_ADC_ch4_p : in STD_LOGIC;
    i_ADC_ch4_n : in STD_LOGIC;
    i_ADC_ch5_p : in STD_LOGIC;
    i_ADC_ch5_n : in STD_LOGIC;
    i_ADC_ch6_p : in STD_LOGIC;
    i_ADC_ch6_n : in STD_LOGIC;
    i_ADC_ch7_p : in STD_LOGIC;
    i_ADC_ch7_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff is
  attribute box_type : string;
  attribute box_type of ADC_ch0_IBUFDS_inst : label is "PRIMITIVE";
  attribute box_type of ADC_ch1_IBUFDS_inst : label is "PRIMITIVE";
  attribute box_type of ADC_ch2_IBUFDS_inst : label is "PRIMITIVE";
  attribute box_type of ADC_ch3_IBUFDS_inst : label is "PRIMITIVE";
  attribute box_type of ADC_ch4_IBUFDS_inst : label is "PRIMITIVE";
  attribute box_type of ADC_ch5_IBUFDS_inst : label is "PRIMITIVE";
  attribute box_type of ADC_ch6_IBUFDS_inst : label is "PRIMITIVE";
  attribute box_type of ADC_ch7_IBUFDS_inst : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ADclk_IBUFDS_inst : label is "IBUFGDS_DIFF_OUT";
  attribute box_type of ADclk_IBUFDS_inst : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Lclk_IBUFDS_inst : label is "IBUFGDS_DIFF_OUT";
  attribute box_type of Lclk_IBUFDS_inst : label is "PRIMITIVE";
begin
ADC_ch0_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch0_p,
      IB => i_ADC_ch0_n,
      O => o_ADC_ch0_p,
      OB => o_ADC_ch0_n
    );
ADC_ch1_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch1_p,
      IB => i_ADC_ch1_n,
      O => o_ADC_ch1_p,
      OB => o_ADC_ch1_n
    );
ADC_ch2_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch2_p,
      IB => i_ADC_ch2_n,
      O => o_ADC_ch2_p,
      OB => o_ADC_ch2_n
    );
ADC_ch3_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch3_p,
      IB => i_ADC_ch3_n,
      O => o_ADC_ch3_p,
      OB => o_ADC_ch3_n
    );
ADC_ch4_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch4_p,
      IB => i_ADC_ch4_n,
      O => o_ADC_ch4_p,
      OB => o_ADC_ch4_n
    );
ADC_ch5_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch5_p,
      IB => i_ADC_ch5_n,
      O => o_ADC_ch5_p,
      OB => o_ADC_ch5_n
    );
ADC_ch6_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch6_p,
      IB => i_ADC_ch6_n,
      O => o_ADC_ch6_p,
      OB => o_ADC_ch6_n
    );
ADC_ch7_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADC_ch7_p,
      IB => i_ADC_ch7_n,
      O => o_ADC_ch7_p,
      OB => o_ADC_ch7_n
    );
ADclk_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_ADclk_p,
      IB => i_ADclk_n,
      O => o_ADclk_p,
      OB => o_ADclk_n
    );
Lclk_IBUFDS_inst: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => i_Lclk_p,
      IB => i_Lclk_n,
      O => o_Lclk_p,
      OB => o_Lclk_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_ADclk_p : in STD_LOGIC;
    i_ADclk_n : in STD_LOGIC;
    i_Lclk_p : in STD_LOGIC;
    i_Lclk_n : in STD_LOGIC;
    i_ADC_ch0_p : in STD_LOGIC;
    i_ADC_ch0_n : in STD_LOGIC;
    i_ADC_ch1_p : in STD_LOGIC;
    i_ADC_ch1_n : in STD_LOGIC;
    i_ADC_ch2_p : in STD_LOGIC;
    i_ADC_ch2_n : in STD_LOGIC;
    i_ADC_ch3_p : in STD_LOGIC;
    i_ADC_ch3_n : in STD_LOGIC;
    i_ADC_ch4_p : in STD_LOGIC;
    i_ADC_ch4_n : in STD_LOGIC;
    i_ADC_ch5_p : in STD_LOGIC;
    i_ADC_ch5_n : in STD_LOGIC;
    i_ADC_ch6_p : in STD_LOGIC;
    i_ADC_ch6_n : in STD_LOGIC;
    i_ADC_ch7_p : in STD_LOGIC;
    i_ADC_ch7_n : in STD_LOGIC;
    o_ADclk_p : out STD_LOGIC;
    o_ADclk_n : out STD_LOGIC;
    o_Lclk_p : out STD_LOGIC;
    o_Lclk_n : out STD_LOGIC;
    o_ADC_ch0_p : out STD_LOGIC;
    o_ADC_ch0_n : out STD_LOGIC;
    o_ADC_ch1_p : out STD_LOGIC;
    o_ADC_ch1_n : out STD_LOGIC;
    o_ADC_ch2_p : out STD_LOGIC;
    o_ADC_ch2_n : out STD_LOGIC;
    o_ADC_ch3_p : out STD_LOGIC;
    o_ADC_ch3_n : out STD_LOGIC;
    o_ADC_ch4_p : out STD_LOGIC;
    o_ADC_ch4_n : out STD_LOGIC;
    o_ADC_ch5_p : out STD_LOGIC;
    o_ADC_ch5_n : out STD_LOGIC;
    o_ADC_ch6_p : out STD_LOGIC;
    o_ADC_ch6_n : out STD_LOGIC;
    o_ADC_ch7_p : out STD_LOGIC;
    o_ADC_ch7_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_ADC_readout_buff_0_0,ADC_readout_buff,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ADC_readout_buff,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_buff
     port map (
      i_ADC_ch0_n => i_ADC_ch0_n,
      i_ADC_ch0_p => i_ADC_ch0_p,
      i_ADC_ch1_n => i_ADC_ch1_n,
      i_ADC_ch1_p => i_ADC_ch1_p,
      i_ADC_ch2_n => i_ADC_ch2_n,
      i_ADC_ch2_p => i_ADC_ch2_p,
      i_ADC_ch3_n => i_ADC_ch3_n,
      i_ADC_ch3_p => i_ADC_ch3_p,
      i_ADC_ch4_n => i_ADC_ch4_n,
      i_ADC_ch4_p => i_ADC_ch4_p,
      i_ADC_ch5_n => i_ADC_ch5_n,
      i_ADC_ch5_p => i_ADC_ch5_p,
      i_ADC_ch6_n => i_ADC_ch6_n,
      i_ADC_ch6_p => i_ADC_ch6_p,
      i_ADC_ch7_n => i_ADC_ch7_n,
      i_ADC_ch7_p => i_ADC_ch7_p,
      i_ADclk_n => i_ADclk_n,
      i_ADclk_p => i_ADclk_p,
      i_Lclk_n => i_Lclk_n,
      i_Lclk_p => i_Lclk_p,
      o_ADC_ch0_n => o_ADC_ch0_n,
      o_ADC_ch0_p => o_ADC_ch0_p,
      o_ADC_ch1_n => o_ADC_ch1_n,
      o_ADC_ch1_p => o_ADC_ch1_p,
      o_ADC_ch2_n => o_ADC_ch2_n,
      o_ADC_ch2_p => o_ADC_ch2_p,
      o_ADC_ch3_n => o_ADC_ch3_n,
      o_ADC_ch3_p => o_ADC_ch3_p,
      o_ADC_ch4_n => o_ADC_ch4_n,
      o_ADC_ch4_p => o_ADC_ch4_p,
      o_ADC_ch5_n => o_ADC_ch5_n,
      o_ADC_ch5_p => o_ADC_ch5_p,
      o_ADC_ch6_n => o_ADC_ch6_n,
      o_ADC_ch6_p => o_ADC_ch6_p,
      o_ADC_ch7_n => o_ADC_ch7_n,
      o_ADC_ch7_p => o_ADC_ch7_p,
      o_ADclk_n => o_ADclk_n,
      o_ADclk_p => o_ADclk_p,
      o_Lclk_n => o_Lclk_n,
      o_Lclk_p => o_Lclk_p
    );
end STRUCTURE;
