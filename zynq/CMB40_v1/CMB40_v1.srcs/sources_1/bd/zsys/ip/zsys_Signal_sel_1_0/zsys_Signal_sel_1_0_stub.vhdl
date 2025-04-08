-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Jun 29 17:36:42 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Signal_sel_1_0/zsys_Signal_sel_1_0_stub.vhdl
-- Design      : zsys_Signal_sel_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_Signal_sel_1_0 is
  Port ( 
    Mux_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    O : out STD_LOGIC
  );

end zsys_Signal_sel_1_0;

architecture stub of zsys_Signal_sel_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Mux_sel[2:0],D[4:0],O";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Signal_sel,Vivado 2018.2";
begin
end;
