-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Aug  3 16:47:46 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_ADC_readout_buff_0_0/zsys_ADC_readout_buff_0_0_sim_netlist.vhdl
-- Design      : zsys_ADC_readout_buff_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_ADC_readout_buff_0_0_ADC_readout_buff is
  port (
    o_ADclk : out STD_LOGIC;
    o_Lclk : out STD_LOGIC;
    i_ADclk : in STD_LOGIC;
    i_Lclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_ADC_readout_buff_0_0_ADC_readout_buff : entity is "ADC_readout_buff";
end zsys_ADC_readout_buff_0_0_ADC_readout_buff;

architecture STRUCTURE of zsys_ADC_readout_buff_0_0_ADC_readout_buff is
  attribute box_type : string;
  attribute box_type of BUFG_inst_ADCLK : label is "PRIMITIVE";
  attribute box_type of BUFG_inst_LCLK : label is "PRIMITIVE";
begin
BUFG_inst_ADCLK: unisim.vcomponents.BUFG
     port map (
      I => i_ADclk,
      O => o_ADclk
    );
BUFG_inst_LCLK: unisim.vcomponents.BUFG
     port map (
      I => i_Lclk,
      O => o_Lclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_ADC_readout_buff_0_0 is
  port (
    i_ADclk : in STD_LOGIC;
    i_Lclk : in STD_LOGIC;
    i_ADC_ch_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_ADC_ch_n : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_ADclk : out STD_LOGIC;
    o_Lclk : out STD_LOGIC;
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
  attribute NotValidForBitStream of zsys_ADC_readout_buff_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_ADC_readout_buff_0_0 : entity is "zsys_ADC_readout_buff_0_0,ADC_readout_buff,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_ADC_readout_buff_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_ADC_readout_buff_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_ADC_readout_buff_0_0 : entity is "ADC_readout_buff,Vivado 2018.2";
end zsys_ADC_readout_buff_0_0;

architecture STRUCTURE of zsys_ADC_readout_buff_0_0 is
  signal \^i_adc_ch_n\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^i_adc_ch_p\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^i_adc_ch_n\(7 downto 0) <= i_ADC_ch_n(7 downto 0);
  \^i_adc_ch_p\(7 downto 0) <= i_ADC_ch_p(7 downto 0);
  o_ADC_ch0_n <= \^i_adc_ch_n\(0);
  o_ADC_ch0_p <= \^i_adc_ch_p\(0);
  o_ADC_ch1_n <= \^i_adc_ch_n\(1);
  o_ADC_ch1_p <= \^i_adc_ch_p\(1);
  o_ADC_ch2_n <= \^i_adc_ch_n\(2);
  o_ADC_ch2_p <= \^i_adc_ch_p\(2);
  o_ADC_ch3_n <= \^i_adc_ch_n\(3);
  o_ADC_ch3_p <= \^i_adc_ch_p\(3);
  o_ADC_ch4_n <= \^i_adc_ch_n\(4);
  o_ADC_ch4_p <= \^i_adc_ch_p\(4);
  o_ADC_ch5_n <= \^i_adc_ch_n\(5);
  o_ADC_ch5_p <= \^i_adc_ch_p\(5);
  o_ADC_ch6_n <= \^i_adc_ch_n\(6);
  o_ADC_ch6_p <= \^i_adc_ch_p\(6);
  o_ADC_ch7_n <= \^i_adc_ch_n\(7);
  o_ADC_ch7_p <= \^i_adc_ch_p\(7);
U0: entity work.zsys_ADC_readout_buff_0_0_ADC_readout_buff
     port map (
      i_ADclk => i_ADclk,
      i_Lclk => i_Lclk,
      o_ADclk => o_ADclk,
      o_Lclk => o_Lclk
    );
end STRUCTURE;
