-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Jul 12 14:57:46 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_enable_signal_0_0/zsys_enable_signal_0_0_sim_netlist.vhdl
-- Design      : zsys_enable_signal_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_enable_signal_0_0 is
  port (
    signal_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_enable_signal_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_enable_signal_0_0 : entity is "zsys_enable_signal_0_0,enable_signal,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_enable_signal_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_enable_signal_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_enable_signal_0_0 : entity is "enable_signal,Vivado 2018.2";
end zsys_enable_signal_0_0;

architecture STRUCTURE of zsys_enable_signal_0_0 is
begin
\signal_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => signal_in(0),
      I1 => enable(0),
      O => signal_out(0)
    );
end STRUCTURE;
