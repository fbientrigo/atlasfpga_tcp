-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep 18 16:50:43 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Vibufds_diff_out_0_0/zsys_Vibufds_diff_out_0_0_sim_netlist.vhdl
-- Design      : zsys_Vibufds_diff_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Vibufds_diff_out_0_0_Vibufds_diff_out is
  port (
    o_MUXOUT_P : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_MUXOUT_N : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Vibufds_diff_out_0_0_Vibufds_diff_out : entity is "Vibufds_diff_out";
end zsys_Vibufds_diff_out_0_0_Vibufds_diff_out;

architecture STRUCTURE of zsys_Vibufds_diff_out_0_0_Vibufds_diff_out is
  attribute box_type : string;
  attribute box_type of \adc_buf_gen[0].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
  attribute box_type of \adc_buf_gen[1].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
  attribute box_type of \adc_buf_gen[2].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
  attribute box_type of \adc_buf_gen[3].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
  attribute box_type of \adc_buf_gen[4].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
  attribute box_type of \adc_buf_gen[5].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
  attribute box_type of \adc_buf_gen[6].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
  attribute box_type of \adc_buf_gen[7].IBUFDS_DIFF_OUT_inst\ : label is "PRIMITIVE";
begin
\adc_buf_gen[0].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(0),
      IB => MUXOUT_N(0),
      O => o_MUXOUT_P(0),
      OB => o_MUXOUT_N(0)
    );
\adc_buf_gen[1].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(1),
      IB => MUXOUT_N(1),
      O => o_MUXOUT_P(1),
      OB => o_MUXOUT_N(1)
    );
\adc_buf_gen[2].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(2),
      IB => MUXOUT_N(2),
      O => o_MUXOUT_P(2),
      OB => o_MUXOUT_N(2)
    );
\adc_buf_gen[3].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(3),
      IB => MUXOUT_N(3),
      O => o_MUXOUT_P(3),
      OB => o_MUXOUT_N(3)
    );
\adc_buf_gen[4].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(4),
      IB => MUXOUT_N(4),
      O => o_MUXOUT_P(4),
      OB => o_MUXOUT_N(4)
    );
\adc_buf_gen[5].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(5),
      IB => MUXOUT_N(5),
      O => o_MUXOUT_P(5),
      OB => o_MUXOUT_N(5)
    );
\adc_buf_gen[6].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(6),
      IB => MUXOUT_N(6),
      O => o_MUXOUT_P(6),
      OB => o_MUXOUT_N(6)
    );
\adc_buf_gen[7].IBUFDS_DIFF_OUT_inst\: unisim.vcomponents.IBUFDS_DIFF_OUT
     port map (
      I => MUXOUT_P(7),
      IB => MUXOUT_N(7),
      O => o_MUXOUT_P(7),
      OB => o_MUXOUT_N(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Vibufds_diff_out_0_0 is
  port (
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_MUXOUT_P : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_MUXOUT_N : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_Vibufds_diff_out_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_Vibufds_diff_out_0_0 : entity is "zsys_Vibufds_diff_out_0_0,Vibufds_diff_out,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_Vibufds_diff_out_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_Vibufds_diff_out_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_Vibufds_diff_out_0_0 : entity is "Vibufds_diff_out,Vivado 2018.2";
end zsys_Vibufds_diff_out_0_0;

architecture STRUCTURE of zsys_Vibufds_diff_out_0_0 is
begin
U0: entity work.zsys_Vibufds_diff_out_0_0_Vibufds_diff_out
     port map (
      MUXOUT_N(7 downto 0) => MUXOUT_N(7 downto 0),
      MUXOUT_P(7 downto 0) => MUXOUT_P(7 downto 0),
      o_MUXOUT_N(7 downto 0) => o_MUXOUT_N(7 downto 0),
      o_MUXOUT_P(7 downto 0) => o_MUXOUT_P(7 downto 0)
    );
end STRUCTURE;
