-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Nov 21 16:48:33 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_vector_logic_2_0/zsys_util_vector_logic_2_0_sim_netlist.vhdl
-- Design      : zsys_util_vector_logic_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_util_vector_logic_2_0_util_vector_logic_v2_0_1_util_vector_logic is
  port (
    Res : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_util_vector_logic_2_0_util_vector_logic_v2_0_1_util_vector_logic : entity is "util_vector_logic_v2_0_1_util_vector_logic";
end zsys_util_vector_logic_2_0_util_vector_logic_v2_0_1_util_vector_logic;

architecture STRUCTURE of zsys_util_vector_logic_2_0_util_vector_logic_v2_0_1_util_vector_logic is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
\Res[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(10),
      I1 => Op2(10),
      O => Res(10)
    );
\Res[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(11),
      I1 => Op2(11),
      O => Res(11)
    );
\Res[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(1),
      I1 => Op2(1),
      O => Res(1)
    );
\Res[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(2),
      I1 => Op2(2),
      O => Res(2)
    );
\Res[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(3),
      I1 => Op2(3),
      O => Res(3)
    );
\Res[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(4),
      I1 => Op2(4),
      O => Res(4)
    );
\Res[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(5),
      I1 => Op2(5),
      O => Res(5)
    );
\Res[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(6),
      I1 => Op2(6),
      O => Res(6)
    );
\Res[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(7),
      I1 => Op2(7),
      O => Res(7)
    );
\Res[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(8),
      I1 => Op2(8),
      O => Res(8)
    );
\Res[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(9),
      I1 => Op2(9),
      O => Res(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_util_vector_logic_2_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_util_vector_logic_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_util_vector_logic_2_0 : entity is "zsys_util_vector_logic_2_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zsys_util_vector_logic_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zsys_util_vector_logic_2_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.2";
end zsys_util_vector_logic_2_0;

architecture STRUCTURE of zsys_util_vector_logic_2_0 is
begin
inst: entity work.zsys_util_vector_logic_2_0_util_vector_logic_v2_0_1_util_vector_logic
     port map (
      Op1(11 downto 0) => Op1(11 downto 0),
      Op2(11 downto 0) => Op2(11 downto 0),
      Res(11 downto 0) => Res(11 downto 0)
    );
end STRUCTURE;
