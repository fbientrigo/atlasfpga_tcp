-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Jun 26 16:42:38 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_M1to5_0_2/zsys_M1to5_0_2_sim_netlist.vhdl
-- Design      : zsys_M1to5_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_M1to5_0_2 is
  port (
    in1 : in STD_LOGIC;
    out5 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_M1to5_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_M1to5_0_2 : entity is "zsys_M1to5_0_2,M1to5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_M1to5_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_M1to5_0_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_M1to5_0_2 : entity is "M1to5,Vivado 2018.2";
end zsys_M1to5_0_2;

architecture STRUCTURE of zsys_M1to5_0_2 is
  signal \^in1\ : STD_LOGIC;
begin
  \^in1\ <= in1;
  out5(4) <= \^in1\;
  out5(3) <= \^in1\;
  out5(2) <= \^in1\;
  out5(1) <= \^in1\;
  out5(0) <= \^in1\;
end STRUCTURE;
