-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Mar  3 13:46:11 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/victo/Desktop/Vivados/daq_mb_te0716_v7/daq_mb_te0716_v7.srcs/sources_1/bd/zsys/ip/zsys_mapper_0_0/zsys_mapper_0_0_stub.vhdl
-- Design      : zsys_mapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_mapper_0_0 is
  Port ( 
    i_in_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_out_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_4 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_5 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_6 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_7 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end zsys_mapper_0_0;

architecture stub of zsys_mapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_in_0[15:0],i_in_1[15:0],i_in_2[15:0],i_in_3[15:0],i_in_4[15:0],i_in_5[15:0],i_in_6[15:0],i_in_7[15:0],o_out_0[11:0],o_out_1[11:0],o_out_2[11:0],o_out_3[11:0],o_out_4[11:0],o_out_5[11:0],o_out_6[11:0],o_out_7[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mapper,Vivado 2018.2";
begin
end;
