-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Jun 26 16:42:38 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_M1to5_0_2/zsys_M1to5_0_2_stub.vhdl
-- Design      : zsys_M1to5_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_M1to5_0_2 is
  Port ( 
    in1 : in STD_LOGIC;
    out5 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end zsys_M1to5_0_2;

architecture stub of zsys_M1to5_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in1,out5[4:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "M1to5,Vivado 2018.2";
begin
end;
