-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep 18 16:50:43 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Vibufds_diff_out_0_0/zsys_Vibufds_diff_out_0_0_stub.vhdl
-- Design      : zsys_Vibufds_diff_out_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_Vibufds_diff_out_0_0 is
  Port ( 
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_MUXOUT_P : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_MUXOUT_N : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end zsys_Vibufds_diff_out_0_0;

architecture stub of zsys_Vibufds_diff_out_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "MUXOUT_P[7:0],MUXOUT_N[7:0],o_MUXOUT_P[7:0],o_MUXOUT_N[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Vibufds_diff_out,Vivado 2018.2";
begin
end;
