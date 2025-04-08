-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Dec  3 15:03:30 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_reset_init_0_0/zsys_reset_init_0_0_sim_netlist.vhdl
-- Design      : zsys_reset_init_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_reset_init_0_0_reset_init is
  port (
    rst : out STD_LOGIC;
    clk : in STD_LOGIC;
    input_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_reset_init_0_0_reset_init : entity is "reset_init";
end zsys_reset_init_0_0_reset_init;

architecture STRUCTURE of zsys_reset_init_0_0_reset_init is
  signal counter : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal flag_reset_i_1_n_0 : STD_LOGIC;
  signal flag_reset_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rst__0_n_0\ : STD_LOGIC;
  signal rst_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rst__0\ : label is "soft_lutpair1";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => flag_reset_reg_n_0,
      I1 => input_start,
      O => counter
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => p_0_in(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => p_0_in(0),
      Q => \counter_reg__0\(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => p_0_in(1),
      Q => \counter_reg__0\(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg__0\(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => p_0_in(3),
      Q => \counter_reg__0\(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter,
      D => p_0_in(4),
      Q => \counter_reg__0\(4),
      R => '0'
    );
flag_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAA2A"
    )
        port map (
      I0 => flag_reset_reg_n_0,
      I1 => \counter_reg__0\(2),
      I2 => \counter_reg__0\(3),
      I3 => \rst__0_n_0\,
      I4 => \counter_reg__0\(4),
      I5 => input_start,
      O => flag_reset_i_1_n_0
    );
flag_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => flag_reset_i_1_n_0,
      Q => flag_reset_reg_n_0,
      R => '0'
    );
\rst__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      O => \rst__0_n_0\
    );
rst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057555555"
    )
        port map (
      I0 => flag_reset_reg_n_0,
      I1 => \counter_reg__0\(4),
      I2 => \rst__0_n_0\,
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(2),
      I5 => input_start,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => rst,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_reset_init_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : out STD_LOGIC;
    input_start : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_reset_init_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_reset_init_0_0 : entity is "zsys_reset_init_0_0,reset_init,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_reset_init_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_reset_init_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_reset_init_0_0 : entity is "reset_init,Vivado 2018.2";
end zsys_reset_init_0_0;

architecture STRUCTURE of zsys_reset_init_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.zsys_reset_init_0_0_reset_init
     port map (
      clk => clk,
      input_start => input_start,
      rst => rst
    );
end STRUCTURE;
