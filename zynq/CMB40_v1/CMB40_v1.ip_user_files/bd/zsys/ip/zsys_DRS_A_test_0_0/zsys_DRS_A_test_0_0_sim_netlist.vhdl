-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Wed Dec  4 12:19:06 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_DRS_A_test_0_0/zsys_DRS_A_test_0_0_sim_netlist.vhdl
-- Design      : zsys_DRS_A_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_DRS_A_test_0_0_DRS_A_test is
  port (
    o_A_vec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_RSRLOAD : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_SRCLK : out STD_LOGIC;
    o_SRIN : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_nrst : in STD_LOGIC;
    i_en_test : in STD_LOGIC;
    A_vec : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_RSRLOAD : in STD_LOGIC;
    i_dwrite : in STD_LOGIC;
    i_SRCLK : in STD_LOGIC;
    i_SRIN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_DRS_A_test_0_0_DRS_A_test : entity is "DRS_A_test";
end zsys_DRS_A_test_0_0_DRS_A_test;

architecture STRUCTURE of zsys_DRS_A_test_0_0_DRS_A_test is
  signal \o_A_vec[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_A_vec[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_A_vec[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_A_vec[3]_i_1_n_0\ : STD_LOGIC;
  signal o_RSRLOAD_i_1_n_0 : STD_LOGIC;
  signal o_SRCLK_i_1_n_0 : STD_LOGIC;
  signal o_SRIN_i_1_n_0 : STD_LOGIC;
  signal o_dwrite_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sim_clk[0]_i_2_n_0\ : STD_LOGIC;
  signal \sim_clk[1]_i_1_n_0\ : STD_LOGIC;
  signal \sim_clk[2]_i_1_n_0\ : STD_LOGIC;
  signal \sim_clk[3]_i_1_n_0\ : STD_LOGIC;
  signal \sim_clk_reg_n_0_[0]\ : STD_LOGIC;
  signal \sim_clk_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_A_vec[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_A_vec[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_A_vec[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_A_vec[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_RSRLOAD_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of o_SRCLK_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of o_SRIN_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_dwrite_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sim_clk[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sim_clk[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sim_clk[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sim_clk[3]_i_1\ : label is "soft_lutpair0";
begin
\o_A_vec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sim_clk_reg_n_0_[0]\,
      I1 => i_en_test,
      I2 => A_vec(0),
      O => \o_A_vec[0]_i_1_n_0\
    );
\o_A_vec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => i_en_test,
      I2 => A_vec(1),
      O => \o_A_vec[1]_i_1_n_0\
    );
\o_A_vec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in,
      I1 => i_en_test,
      I2 => A_vec(2),
      O => \o_A_vec[2]_i_1_n_0\
    );
\o_A_vec[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sim_clk_reg_n_0_[3]\,
      I1 => i_en_test,
      I2 => A_vec(3),
      O => \o_A_vec[3]_i_1_n_0\
    );
\o_A_vec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_A_vec[0]_i_1_n_0\,
      Q => o_A_vec(0),
      R => '0'
    );
\o_A_vec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_A_vec[1]_i_1_n_0\,
      Q => o_A_vec(1),
      R => '0'
    );
\o_A_vec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_A_vec[2]_i_1_n_0\,
      Q => o_A_vec(2),
      R => '0'
    );
\o_A_vec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \o_A_vec[3]_i_1_n_0\,
      Q => o_A_vec(3),
      R => '0'
    );
o_RSRLOAD_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sim_clk_reg_n_0_[0]\,
      I1 => i_en_test,
      I2 => i_RSRLOAD,
      O => o_RSRLOAD_i_1_n_0
    );
o_RSRLOAD_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_RSRLOAD_i_1_n_0,
      Q => o_RSRLOAD,
      R => '0'
    );
o_SRCLK_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sim_clk_reg_n_0_[0]\,
      I1 => i_en_test,
      I2 => i_SRCLK,
      O => o_SRCLK_i_1_n_0
    );
o_SRCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_SRCLK_i_1_n_0,
      Q => o_SRCLK,
      R => '0'
    );
o_SRIN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in,
      I1 => i_en_test,
      I2 => i_SRIN,
      O => o_SRIN_i_1_n_0
    );
o_SRIN_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_SRIN_i_1_n_0,
      Q => o_SRIN,
      R => '0'
    );
o_dwrite_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => i_en_test,
      I2 => i_dwrite,
      O => o_dwrite_i_1_n_0
    );
o_dwrite_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_dwrite_i_1_n_0,
      Q => o_dwrite,
      R => '0'
    );
\sim_clk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sim_clk_reg_n_0_[0]\,
      O => p_4_out(0)
    );
\sim_clk[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_nrst,
      O => \sim_clk[0]_i_2_n_0\
    );
\sim_clk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sim_clk_reg_n_0_[0]\,
      I1 => p_1_in,
      O => \sim_clk[1]_i_1_n_0\
    );
\sim_clk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_1_in,
      I1 => \sim_clk_reg_n_0_[0]\,
      I2 => p_2_in,
      O => \sim_clk[2]_i_1_n_0\
    );
\sim_clk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_2_in,
      I1 => \sim_clk_reg_n_0_[0]\,
      I2 => p_1_in,
      I3 => \sim_clk_reg_n_0_[3]\,
      O => \sim_clk[3]_i_1_n_0\
    );
\sim_clk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => \sim_clk[0]_i_2_n_0\,
      D => p_4_out(0),
      Q => \sim_clk_reg_n_0_[0]\
    );
\sim_clk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => \sim_clk[0]_i_2_n_0\,
      D => \sim_clk[1]_i_1_n_0\,
      Q => p_1_in
    );
\sim_clk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => \sim_clk[0]_i_2_n_0\,
      D => \sim_clk[2]_i_1_n_0\,
      Q => p_2_in
    );
\sim_clk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => '1',
      CLR => \sim_clk[0]_i_2_n_0\,
      D => \sim_clk[3]_i_1_n_0\,
      Q => \sim_clk_reg_n_0_[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_DRS_A_test_0_0 is
  port (
    A_vec : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_RSRLOAD : in STD_LOGIC;
    i_SRIN : in STD_LOGIC;
    i_dwrite : in STD_LOGIC;
    i_SRCLK : in STD_LOGIC;
    i_en_test : in STD_LOGIC;
    i_nrst : in STD_LOGIC;
    o_A_vec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_RSRLOAD : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_SRCLK : out STD_LOGIC;
    o_SRIN : out STD_LOGIC;
    i_clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_DRS_A_test_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_DRS_A_test_0_0 : entity is "zsys_DRS_A_test_0_0,DRS_A_test,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_DRS_A_test_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_DRS_A_test_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_DRS_A_test_0_0 : entity is "DRS_A_test,Vivado 2018.2";
end zsys_DRS_A_test_0_0;

architecture STRUCTURE of zsys_DRS_A_test_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK1";
begin
U0: entity work.zsys_DRS_A_test_0_0_DRS_A_test
     port map (
      A_vec(3 downto 0) => A_vec(3 downto 0),
      i_RSRLOAD => i_RSRLOAD,
      i_SRCLK => i_SRCLK,
      i_SRIN => i_SRIN,
      i_clk => i_clk,
      i_dwrite => i_dwrite,
      i_en_test => i_en_test,
      i_nrst => i_nrst,
      o_A_vec(3 downto 0) => o_A_vec(3 downto 0),
      o_RSRLOAD => o_RSRLOAD,
      o_SRCLK => o_SRCLK,
      o_SRIN => o_SRIN,
      o_dwrite => o_dwrite
    );
end STRUCTURE;
