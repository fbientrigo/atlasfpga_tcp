-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed May 18 18:10:17 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_xlslice_1_1/zsys_xlslice_1_1_stub.vhdl
-- Design      : zsys_xlslice_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_xlslice_1_1 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end zsys_xlslice_1_1;

architecture stub of zsys_xlslice_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Din[11:0],Dout[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlslice_v1_0_1_xlslice,Vivado 2018.2";
begin
end;
