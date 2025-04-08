-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Aug  3 16:47:46 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_ADC_readout_buff_0_0_stub.vhdl
-- Design      : zsys_ADC_readout_buff_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_ADclk,i_Lclk,i_ADC_ch_p[7:0],i_ADC_ch_n[7:0],o_ADclk,o_Lclk,o_ADC_ch0_p,o_ADC_ch0_n,o_ADC_ch1_p,o_ADC_ch1_n,o_ADC_ch2_p,o_ADC_ch2_n,o_ADC_ch3_p,o_ADC_ch3_n,o_ADC_ch4_p,o_ADC_ch4_n,o_ADC_ch5_p,o_ADC_ch5_n,o_ADC_ch6_p,o_ADC_ch6_n,o_ADC_ch7_p,o_ADC_ch7_n";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ADC_readout_buff,Vivado 2018.2";
begin
end;
