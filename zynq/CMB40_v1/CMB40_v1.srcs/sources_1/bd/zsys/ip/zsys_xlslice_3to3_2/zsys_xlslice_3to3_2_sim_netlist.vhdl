-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
-- Date        : Mon Nov  4 01:05:15 2024
-- Host        : lapepuat11 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/osotosan/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_xlslice_3to3_2/zsys_xlslice_3to3_2_sim_netlist.vhdl
-- Design      : zsys_xlslice_3to3_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_xlslice_3to3_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_xlslice_3to3_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_xlslice_3to3_2 : entity is "zsys_xlslice_3to3_2,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_xlslice_3to3_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_xlslice_3to3_2 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.2.2";
end zsys_xlslice_3to3_2;

architecture STRUCTURE of zsys_xlslice_3to3_2 is
  signal \^din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Dout(0) <= \^din\(18);
  \^din\(18) <= Din(18);
end STRUCTURE;
