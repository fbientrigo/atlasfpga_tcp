-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Dec  3 15:03:35 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Elink_output_0_0/zsys_Elink_output_0_0_sim_netlist.vhdl
-- Design      : zsys_Elink_output_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Elink_output_0_0_Elink_output is
  port (
    lvds : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Elink_output_0_0_Elink_output : entity is "Elink_output";
end zsys_Elink_output_0_0_Elink_output;

architecture STRUCTURE of zsys_Elink_output_0_0_Elink_output is
  signal \^lvds\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  lvds <= \^lvds\;
clk_out_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^lvds\,
      O => p_0_in
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => \^lvds\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Elink_output_0_0 is
  port (
    clk : in STD_LOGIC;
    lvds : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_Elink_output_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_Elink_output_0_0 : entity is "zsys_Elink_output_0_0,Elink_output,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_Elink_output_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_Elink_output_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_Elink_output_0_0 : entity is "Elink_output,Vivado 2018.2";
end zsys_Elink_output_0_0;

architecture STRUCTURE of zsys_Elink_output_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
begin
U0: entity work.zsys_Elink_output_0_0_Elink_output
     port map (
      clk => clk,
      lvds => lvds
    );
end STRUCTURE;
