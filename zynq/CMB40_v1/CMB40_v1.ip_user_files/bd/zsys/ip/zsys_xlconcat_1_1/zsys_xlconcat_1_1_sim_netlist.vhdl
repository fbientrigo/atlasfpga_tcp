-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Aug 14 13:17:53 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_xlconcat_1_1/zsys_xlconcat_1_1_sim_netlist.vhdl
-- Design      : zsys_xlconcat_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_xlconcat_1_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_xlconcat_1_1 : entity is "zsys_xlconcat_1_1,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_xlconcat_1_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_xlconcat_1_1 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2018.2";
end zsys_xlconcat_1_1;

architecture STRUCTURE of zsys_xlconcat_1_1 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^in0\(23 downto 0) <= In0(23 downto 0);
  \^in1\(7 downto 0) <= In1(7 downto 0);
  dout(31 downto 24) <= \^in1\(7 downto 0);
  dout(23 downto 0) <= \^in0\(23 downto 0);
end STRUCTURE;
