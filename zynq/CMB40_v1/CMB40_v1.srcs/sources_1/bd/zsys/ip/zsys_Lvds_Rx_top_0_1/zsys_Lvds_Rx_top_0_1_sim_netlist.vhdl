-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Nov 21 17:21:09 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Lvds_Rx_top_0_1/zsys_Lvds_Rx_top_0_1_sim_netlist.vhdl
-- Design      : zsys_Lvds_Rx_top_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_1_Receiver is
  port (
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataInChP : in STD_LOGIC_VECTOR ( 0 to 0 );
    C : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC;
    IntRxEnaMuxN : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxEnaMuxP : in STD_LOGIC;
    IntRxDatMuxEna : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_1_Receiver : entity is "Receiver";
end zsys_Lvds_Rx_top_0_1_Receiver;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_1_Receiver is
  signal IntParDatOutN : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal IntParDatOutP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal IntRxDatInN : STD_LOGIC;
  signal IntRxDatInP : STD_LOGIC;
  signal IntRxDatShftN : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal IntRxDatShftP : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FfIobN : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of FfIobN : label is "TRUE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FfIobN : label is "FD";
  attribute BOX_TYPE of FfIobP : label is "PRIMITIVE";
  attribute IOB of FfIobP : label is "TRUE";
  attribute XILINX_LEGACY_PRIM of FfIobP : label is "FD";
  attribute BOX_TYPE of FfMuxN1 : label is "PRIMITIVE";
  attribute RLOC : string;
  attribute RLOC of FfMuxN1 : label is "X3Y0";
  attribute BOX_TYPE of FfMuxN11 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN11 : label is "X3Y2";
  attribute BOX_TYPE of FfMuxN3 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN3 : label is "X3Y0";
  attribute BOX_TYPE of FfMuxN5 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN5 : label is "X3Y1";
  attribute BOX_TYPE of FfMuxN7 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN7 : label is "X3Y1";
  attribute BOX_TYPE of FfMuxN9 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN9 : label is "X3Y2";
  attribute BOX_TYPE of FfMuxP0 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP0 : label is "X2Y0";
  attribute BOX_TYPE of FfMuxP10 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP10 : label is "X2Y2";
  attribute BOX_TYPE of FfMuxP2 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP2 : label is "X2Y0";
  attribute BOX_TYPE of FfMuxP4 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP4 : label is "X2Y1";
  attribute BOX_TYPE of FfMuxP6 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP6 : label is "X2Y1";
  attribute BOX_TYPE of FfMuxP8 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP8 : label is "X2Y2";
  attribute BOX_TYPE of FfShft0 : label is "PRIMITIVE";
  attribute RLOC of FfShft0 : label is "X0Y0";
  attribute XILINX_LEGACY_PRIM of FfShft0 : label is "FD";
  attribute BOX_TYPE of FfShft1 : label is "PRIMITIVE";
  attribute RLOC of FfShft1 : label is "X1Y0";
  attribute XILINX_LEGACY_PRIM of FfShft1 : label is "FD";
  attribute BOX_TYPE of FfShft10 : label is "PRIMITIVE";
  attribute RLOC of FfShft10 : label is "X0Y2";
  attribute XILINX_LEGACY_PRIM of FfShft10 : label is "FD";
  attribute BOX_TYPE of FfShft11 : label is "PRIMITIVE";
  attribute RLOC of FfShft11 : label is "X1Y2";
  attribute XILINX_LEGACY_PRIM of FfShft11 : label is "FD";
  attribute BOX_TYPE of FfShft2 : label is "PRIMITIVE";
  attribute RLOC of FfShft2 : label is "X0Y0";
  attribute XILINX_LEGACY_PRIM of FfShft2 : label is "FD";
  attribute BOX_TYPE of FfShft3 : label is "PRIMITIVE";
  attribute RLOC of FfShft3 : label is "X1Y0";
  attribute XILINX_LEGACY_PRIM of FfShft3 : label is "FD";
  attribute BOX_TYPE of FfShft4 : label is "PRIMITIVE";
  attribute RLOC of FfShft4 : label is "X0Y1";
  attribute XILINX_LEGACY_PRIM of FfShft4 : label is "FD";
  attribute BOX_TYPE of FfShft5 : label is "PRIMITIVE";
  attribute RLOC of FfShft5 : label is "X1Y1";
  attribute XILINX_LEGACY_PRIM of FfShft5 : label is "FD";
  attribute BOX_TYPE of FfShft6 : label is "PRIMITIVE";
  attribute RLOC of FfShft6 : label is "X0Y1";
  attribute XILINX_LEGACY_PRIM of FfShft6 : label is "FD";
  attribute BOX_TYPE of FfShft7 : label is "PRIMITIVE";
  attribute RLOC of FfShft7 : label is "X1Y1";
  attribute XILINX_LEGACY_PRIM of FfShft7 : label is "FD";
  attribute BOX_TYPE of FfShft8 : label is "PRIMITIVE";
  attribute RLOC of FfShft8 : label is "X0Y2";
  attribute XILINX_LEGACY_PRIM of FfShft8 : label is "FD";
  attribute BOX_TYPE of FfShft9 : label is "PRIMITIVE";
  attribute RLOC of FfShft9 : label is "X1Y2";
  attribute XILINX_LEGACY_PRIM of FfShft9 : label is "FD";
  attribute BOX_TYPE of LutMux0 : label is "PRIMITIVE";
  attribute RLOC of LutMux0 : label is "X2Y0";
  attribute BOX_TYPE of LutMux1 : label is "PRIMITIVE";
  attribute RLOC of LutMux1 : label is "X3Y0";
  attribute BOX_TYPE of LutMux10 : label is "PRIMITIVE";
  attribute RLOC of LutMux10 : label is "X2Y2";
  attribute BOX_TYPE of LutMux11 : label is "PRIMITIVE";
  attribute RLOC of LutMux11 : label is "X3Y2";
  attribute BOX_TYPE of LutMux2 : label is "PRIMITIVE";
  attribute RLOC of LutMux2 : label is "X2Y0";
  attribute BOX_TYPE of LutMux3 : label is "PRIMITIVE";
  attribute RLOC of LutMux3 : label is "X3Y0";
  attribute BOX_TYPE of LutMux4 : label is "PRIMITIVE";
  attribute RLOC of LutMux4 : label is "X2Y1";
  attribute BOX_TYPE of LutMux5 : label is "PRIMITIVE";
  attribute RLOC of LutMux5 : label is "X3Y1";
  attribute BOX_TYPE of LutMux6 : label is "PRIMITIVE";
  attribute RLOC of LutMux6 : label is "X2Y1";
  attribute BOX_TYPE of LutMux7 : label is "PRIMITIVE";
  attribute RLOC of LutMux7 : label is "X3Y1";
  attribute BOX_TYPE of LutMux8 : label is "PRIMITIVE";
  attribute RLOC of LutMux8 : label is "X2Y2";
  attribute BOX_TYPE of LutMux9 : label is "PRIMITIVE";
  attribute RLOC of LutMux9 : label is "X3Y2";
begin
FfIobN: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => DataInChP(0),
      Q => IntRxDatInN,
      R => '0'
    );
FfIobP: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => DataInChP(0),
      Q => IntRxDatInP,
      R => '0'
    );
FfMuxN1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(0),
      Q => IntParDatOutN(0)
    );
FfMuxN11: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(5),
      Q => IntParDatOutN(5)
    );
FfMuxN3: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(1),
      Q => IntParDatOutN(1)
    );
FfMuxN5: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(2),
      Q => IntParDatOutN(2)
    );
FfMuxN7: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(3),
      Q => IntParDatOutN(3)
    );
FfMuxN9: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(4),
      Q => IntParDatOutN(4)
    );
FfMuxP0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(0),
      Q => IntParDatOutP(0)
    );
FfMuxP10: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(5),
      Q => IntParDatOutP(5)
    );
FfMuxP2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(1),
      Q => IntParDatOutP(1)
    );
FfMuxP4: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(2),
      Q => IntParDatOutP(2)
    );
FfMuxP6: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(3),
      Q => IntParDatOutP(3)
    );
FfMuxP8: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(4),
      Q => IntParDatOutP(4)
    );
FfShft0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(1),
      Q => IntRxDatShftP(0),
      R => '0'
    );
FfShft1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(1),
      Q => IntRxDatShftN(0),
      R => '0'
    );
FfShft10: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatInP,
      Q => IntRxDatShftP(5),
      R => '0'
    );
FfShft11: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatInN,
      Q => IntRxDatShftN(5),
      R => '0'
    );
FfShft2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(2),
      Q => IntRxDatShftP(1),
      R => '0'
    );
FfShft3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(2),
      Q => IntRxDatShftN(1),
      R => '0'
    );
FfShft4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(3),
      Q => IntRxDatShftP(2),
      R => '0'
    );
FfShft5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(3),
      Q => IntRxDatShftN(2),
      R => '0'
    );
FfShft6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(4),
      Q => IntRxDatShftP(3),
      R => '0'
    );
FfShft7: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(4),
      Q => IntRxDatShftN(3),
      R => '0'
    );
FfShft8: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(5),
      Q => IntRxDatShftP(4),
      R => '0'
    );
FfShft9: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(5),
      Q => IntRxDatShftN(4),
      R => '0'
    );
LutMux0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(0),
      I1 => IntParDatOutP(0),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(0)
    );
LutMux1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(0),
      I1 => IntParDatOutN(0),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(1)
    );
LutMux10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(5),
      I1 => IntParDatOutP(5),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(10)
    );
LutMux11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(5),
      I1 => IntParDatOutN(5),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(11)
    );
LutMux2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(1),
      I1 => IntParDatOutP(1),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(2)
    );
LutMux3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(1),
      I1 => IntParDatOutN(1),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(3)
    );
LutMux4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(2),
      I1 => IntParDatOutP(2),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(4)
    );
LutMux5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(2),
      I1 => IntParDatOutN(2),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(5)
    );
LutMux6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(3),
      I1 => IntParDatOutP(3),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(6)
    );
LutMux7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(3),
      I1 => IntParDatOutN(3),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(7)
    );
LutMux8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(4),
      I1 => IntParDatOutP(4),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(8)
    );
LutMux9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(4),
      I1 => IntParDatOutN(4),
      I2 => IntRxDatMuxEna,
      O => ChOut_0(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_1_Receiver_0 is
  port (
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataInChP : in STD_LOGIC_VECTOR ( 0 to 0 );
    C : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC;
    IntRxEnaMuxN : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxEnaMuxP : in STD_LOGIC;
    IntRxDatMuxEna : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_1_Receiver_0 : entity is "Receiver";
end zsys_Lvds_Rx_top_0_1_Receiver_0;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_1_Receiver_0 is
  signal IntParDatOutN : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal IntParDatOutP : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal IntRxDatInN : STD_LOGIC;
  signal IntRxDatInP : STD_LOGIC;
  signal IntRxDatShftN : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal IntRxDatShftP : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FfIobN : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of FfIobN : label is "TRUE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FfIobN : label is "FD";
  attribute BOX_TYPE of FfIobP : label is "PRIMITIVE";
  attribute IOB of FfIobP : label is "TRUE";
  attribute XILINX_LEGACY_PRIM of FfIobP : label is "FD";
  attribute BOX_TYPE of FfMuxN1 : label is "PRIMITIVE";
  attribute RLOC : string;
  attribute RLOC of FfMuxN1 : label is "X3Y0";
  attribute BOX_TYPE of FfMuxN11 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN11 : label is "X3Y2";
  attribute BOX_TYPE of FfMuxN3 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN3 : label is "X3Y0";
  attribute BOX_TYPE of FfMuxN5 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN5 : label is "X3Y1";
  attribute BOX_TYPE of FfMuxN7 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN7 : label is "X3Y1";
  attribute BOX_TYPE of FfMuxN9 : label is "PRIMITIVE";
  attribute RLOC of FfMuxN9 : label is "X3Y2";
  attribute BOX_TYPE of FfMuxP0 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP0 : label is "X2Y0";
  attribute BOX_TYPE of FfMuxP10 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP10 : label is "X2Y2";
  attribute BOX_TYPE of FfMuxP2 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP2 : label is "X2Y0";
  attribute BOX_TYPE of FfMuxP4 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP4 : label is "X2Y1";
  attribute BOX_TYPE of FfMuxP6 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP6 : label is "X2Y1";
  attribute BOX_TYPE of FfMuxP8 : label is "PRIMITIVE";
  attribute RLOC of FfMuxP8 : label is "X2Y2";
  attribute BOX_TYPE of FfShft0 : label is "PRIMITIVE";
  attribute RLOC of FfShft0 : label is "X0Y0";
  attribute XILINX_LEGACY_PRIM of FfShft0 : label is "FD";
  attribute BOX_TYPE of FfShft1 : label is "PRIMITIVE";
  attribute RLOC of FfShft1 : label is "X1Y0";
  attribute XILINX_LEGACY_PRIM of FfShft1 : label is "FD";
  attribute BOX_TYPE of FfShft10 : label is "PRIMITIVE";
  attribute RLOC of FfShft10 : label is "X0Y2";
  attribute XILINX_LEGACY_PRIM of FfShft10 : label is "FD";
  attribute BOX_TYPE of FfShft11 : label is "PRIMITIVE";
  attribute RLOC of FfShft11 : label is "X1Y2";
  attribute XILINX_LEGACY_PRIM of FfShft11 : label is "FD";
  attribute BOX_TYPE of FfShft2 : label is "PRIMITIVE";
  attribute RLOC of FfShft2 : label is "X0Y0";
  attribute XILINX_LEGACY_PRIM of FfShft2 : label is "FD";
  attribute BOX_TYPE of FfShft3 : label is "PRIMITIVE";
  attribute RLOC of FfShft3 : label is "X1Y0";
  attribute XILINX_LEGACY_PRIM of FfShft3 : label is "FD";
  attribute BOX_TYPE of FfShft4 : label is "PRIMITIVE";
  attribute RLOC of FfShft4 : label is "X0Y1";
  attribute XILINX_LEGACY_PRIM of FfShft4 : label is "FD";
  attribute BOX_TYPE of FfShft5 : label is "PRIMITIVE";
  attribute RLOC of FfShft5 : label is "X1Y1";
  attribute XILINX_LEGACY_PRIM of FfShft5 : label is "FD";
  attribute BOX_TYPE of FfShft6 : label is "PRIMITIVE";
  attribute RLOC of FfShft6 : label is "X0Y1";
  attribute XILINX_LEGACY_PRIM of FfShft6 : label is "FD";
  attribute BOX_TYPE of FfShft7 : label is "PRIMITIVE";
  attribute RLOC of FfShft7 : label is "X1Y1";
  attribute XILINX_LEGACY_PRIM of FfShft7 : label is "FD";
  attribute BOX_TYPE of FfShft8 : label is "PRIMITIVE";
  attribute RLOC of FfShft8 : label is "X0Y2";
  attribute XILINX_LEGACY_PRIM of FfShft8 : label is "FD";
  attribute BOX_TYPE of FfShft9 : label is "PRIMITIVE";
  attribute RLOC of FfShft9 : label is "X1Y2";
  attribute XILINX_LEGACY_PRIM of FfShft9 : label is "FD";
  attribute BOX_TYPE of LutMux0 : label is "PRIMITIVE";
  attribute RLOC of LutMux0 : label is "X2Y0";
  attribute BOX_TYPE of LutMux1 : label is "PRIMITIVE";
  attribute RLOC of LutMux1 : label is "X3Y0";
  attribute BOX_TYPE of LutMux10 : label is "PRIMITIVE";
  attribute RLOC of LutMux10 : label is "X2Y2";
  attribute BOX_TYPE of LutMux11 : label is "PRIMITIVE";
  attribute RLOC of LutMux11 : label is "X3Y2";
  attribute BOX_TYPE of LutMux2 : label is "PRIMITIVE";
  attribute RLOC of LutMux2 : label is "X2Y0";
  attribute BOX_TYPE of LutMux3 : label is "PRIMITIVE";
  attribute RLOC of LutMux3 : label is "X3Y0";
  attribute BOX_TYPE of LutMux4 : label is "PRIMITIVE";
  attribute RLOC of LutMux4 : label is "X2Y1";
  attribute BOX_TYPE of LutMux5 : label is "PRIMITIVE";
  attribute RLOC of LutMux5 : label is "X3Y1";
  attribute BOX_TYPE of LutMux6 : label is "PRIMITIVE";
  attribute RLOC of LutMux6 : label is "X2Y1";
  attribute BOX_TYPE of LutMux7 : label is "PRIMITIVE";
  attribute RLOC of LutMux7 : label is "X3Y1";
  attribute BOX_TYPE of LutMux8 : label is "PRIMITIVE";
  attribute RLOC of LutMux8 : label is "X2Y2";
  attribute BOX_TYPE of LutMux9 : label is "PRIMITIVE";
  attribute RLOC of LutMux9 : label is "X3Y2";
begin
FfIobN: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => DataInChP(0),
      Q => IntRxDatInN,
      R => '0'
    );
FfIobP: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => DataInChP(0),
      Q => IntRxDatInP,
      R => '0'
    );
FfMuxN1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(0),
      Q => IntParDatOutN(0)
    );
FfMuxN11: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(5),
      Q => IntParDatOutN(5)
    );
FfMuxN3: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(1),
      Q => IntParDatOutN(1)
    );
FfMuxN5: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(2),
      Q => IntParDatOutN(2)
    );
FfMuxN7: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(3),
      Q => IntParDatOutN(3)
    );
FfMuxN9: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => IntRxEnaMuxN,
      CLR => IntReceiverRst,
      D => IntRxDatShftN(4),
      Q => IntParDatOutN(4)
    );
FfMuxP0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(0),
      Q => IntParDatOutP(0)
    );
FfMuxP10: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(5),
      Q => IntParDatOutP(5)
    );
FfMuxP2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(1),
      Q => IntParDatOutP(1)
    );
FfMuxP4: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(2),
      Q => IntParDatOutP(2)
    );
FfMuxP6: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(3),
      Q => IntParDatOutP(3)
    );
FfMuxP8: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => C,
      CE => IntRxEnaMuxP,
      CLR => IntReceiverRst,
      D => IntRxDatShftP(4),
      Q => IntParDatOutP(4)
    );
FfShft0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(1),
      Q => IntRxDatShftP(0),
      R => '0'
    );
FfShft1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(1),
      Q => IntRxDatShftN(0),
      R => '0'
    );
FfShft10: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatInP,
      Q => IntRxDatShftP(5),
      R => '0'
    );
FfShft11: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatInN,
      Q => IntRxDatShftN(5),
      R => '0'
    );
FfShft2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(2),
      Q => IntRxDatShftP(1),
      R => '0'
    );
FfShft3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(2),
      Q => IntRxDatShftN(1),
      R => '0'
    );
FfShft4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(3),
      Q => IntRxDatShftP(2),
      R => '0'
    );
FfShft5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(3),
      Q => IntRxDatShftN(2),
      R => '0'
    );
FfShft6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(4),
      Q => IntRxDatShftP(3),
      R => '0'
    );
FfShft7: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(4),
      Q => IntRxDatShftN(3),
      R => '0'
    );
FfShft8: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => IntRxDatShftP(5),
      Q => IntRxDatShftP(4),
      R => '0'
    );
FfShft9: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => IntRxDatShftN(5),
      Q => IntRxDatShftN(4),
      R => '0'
    );
LutMux0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(0),
      I1 => IntParDatOutP(0),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(0)
    );
LutMux1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(0),
      I1 => IntParDatOutN(0),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(1)
    );
LutMux10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(5),
      I1 => IntParDatOutP(5),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(10)
    );
LutMux11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(5),
      I1 => IntParDatOutN(5),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(11)
    );
LutMux2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(1),
      I1 => IntParDatOutP(1),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(2)
    );
LutMux3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(1),
      I1 => IntParDatOutN(1),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(3)
    );
LutMux4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(2),
      I1 => IntParDatOutP(2),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(4)
    );
LutMux5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(2),
      I1 => IntParDatOutN(2),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(5)
    );
LutMux6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(3),
      I1 => IntParDatOutP(3),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(6)
    );
LutMux7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(3),
      I1 => IntParDatOutN(3),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(7)
    );
LutMux8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutN(4),
      I1 => IntParDatOutP(4),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(8)
    );
LutMux9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => IntParDatOutP(4),
      I1 => IntParDatOutN(4),
      I2 => IntRxDatMuxEna,
      O => ChOut_1(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_1_RxTiming is
  port (
    IntRxEnaMuxP : out STD_LOGIC;
    IntRxEnaMuxN : out STD_LOGIC;
    IntRxDatMuxEna : out STD_LOGIC;
    AdClk : in STD_LOGIC;
    C : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_1_RxTiming : entity is "RxTiming";
end zsys_Lvds_Rx_top_0_1_RxTiming;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_1_RxTiming is
  signal CE : STD_LOGIC;
  signal D5_out : STD_LOGIC;
  signal D6_out : STD_LOGIC;
  signal FfOneP_n_0 : STD_LOGIC;
  signal FfRiseN_i_1_n_0 : STD_LOGIC;
  signal FfRiseP_i_1_n_0 : STD_LOGIC;
  signal IntRiseFfN : STD_LOGIC;
  signal IntRiseFfP : STD_LOGIC;
  signal IntRiseLatchN : STD_LOGIC;
  signal IntRxSyncN : STD_LOGIC;
  signal IntSyncOneN : STD_LOGIC;
  signal IntSyncTwoN : STD_LOGIC;
  signal IntSyncTwoP : STD_LOGIC;
  signal Q : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FfDmuxEna : label is "PRIMITIVE";
  attribute RLOC : string;
  attribute RLOC of FfDmuxEna : label is "X3Y0";
  attribute BOX_TYPE of FfEmuxN : label is "PRIMITIVE";
  attribute RLOC of FfEmuxN : label is "X1Y0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FfEmuxN : label is "FDC";
  attribute BOX_TYPE of FfEmuxP : label is "PRIMITIVE";
  attribute RLOC of FfEmuxP : label is "X3Y1";
  attribute XILINX_LEGACY_PRIM of FfEmuxP : label is "FDC";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FfEmuxP_i_1 : label is "soft_lutpair0";
  attribute BOX_TYPE of FfIobSn : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of FfIobSn : label is "TRUE";
  attribute XILINX_LEGACY_PRIM of FfIobSn : label is "FD";
  attribute BOX_TYPE of FfIobSp : label is "PRIMITIVE";
  attribute IOB of FfIobSp : label is "TRUE";
  attribute XILINX_LEGACY_PRIM of FfIobSp : label is "FD";
  attribute BOX_TYPE of FfOneN : label is "PRIMITIVE";
  attribute RLOC of FfOneN : label is "X0Y0";
  attribute XILINX_LEGACY_PRIM of FfOneN : label is "FDC";
  attribute BOX_TYPE of FfOneP : label is "PRIMITIVE";
  attribute RLOC of FfOneP : label is "X0Y1";
  attribute XILINX_LEGACY_PRIM of FfOneP : label is "FDC";
  attribute BOX_TYPE of FfRiseN : label is "PRIMITIVE";
  attribute RLOC of FfRiseN : label is "X2Y0";
  attribute XILINX_LEGACY_PRIM of FfRiseN : label is "FDC";
  attribute BOX_TYPE of FfRiseP : label is "PRIMITIVE";
  attribute RLOC of FfRiseP : label is "X1Y1";
  attribute XILINX_LEGACY_PRIM of FfRiseP : label is "FDC";
  attribute SOFT_HLUTNM of FfRiseP_i_1 : label is "soft_lutpair0";
  attribute BOX_TYPE of FfTwoN : label is "PRIMITIVE";
  attribute RLOC of FfTwoN : label is "X1Y0";
  attribute XILINX_LEGACY_PRIM of FfTwoN : label is "FDC";
  attribute BOX_TYPE of FfTwoP : label is "PRIMITIVE";
  attribute RLOC of FfTwoP : label is "X1Y1";
  attribute XILINX_LEGACY_PRIM of FfTwoP : label is "FDC";
  attribute BOX_TYPE of LdRiseN : label is "PRIMITIVE";
  attribute RLOC of LdRiseN : label is "X2Y1";
  attribute XILINX_LEGACY_PRIM of LdRiseN : label is "LD";
begin
FfDmuxEna: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => CE,
      CLR => FfRiseN_i_1_n_0,
      D => '1',
      Q => IntRxDatMuxEna
    );
FfDmuxEna_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => IntRiseLatchN,
      I1 => IntRiseFfN,
      O => CE
    );
FfEmuxN: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      CLR => IntReceiverRst,
      D => D5_out,
      Q => IntRxEnaMuxN
    );
FfEmuxN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => IntSyncOneN,
      I1 => IntRxSyncN,
      I2 => IntSyncTwoN,
      O => D5_out
    );
FfEmuxP: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => IntReceiverRst,
      D => D6_out,
      Q => IntRxEnaMuxP
    );
FfEmuxP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => FfOneP_n_0,
      I1 => IntSyncTwoP,
      I2 => Q,
      O => D6_out
    );
FfIobSn: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      D => AdClk,
      Q => IntRxSyncN,
      R => '0'
    );
FfIobSp: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      D => AdClk,
      Q => Q,
      R => '0'
    );
FfOneN: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      CLR => IntReceiverRst,
      D => IntRxSyncN,
      Q => IntSyncOneN
    );
FfOneP: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => IntReceiverRst,
      D => Q,
      Q => FfOneP_n_0
    );
FfRiseN: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      CLR => IntReceiverRst,
      D => FfRiseN_i_1_n_0,
      Q => IntRiseFfN
    );
FfRiseN_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => IntRxSyncN,
      I1 => IntSyncOneN,
      O => FfRiseN_i_1_n_0
    );
FfRiseP: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => IntReceiverRst,
      D => FfRiseP_i_1_n_0,
      Q => IntRiseFfP
    );
FfRiseP_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q,
      I1 => FfOneP_n_0,
      O => FfRiseP_i_1_n_0
    );
FfTwoN: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => IntRxClkNot,
      CE => '1',
      CLR => IntReceiverRst,
      D => IntSyncOneN,
      Q => IntSyncTwoN
    );
FfTwoP: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => C,
      CE => '1',
      CLR => IntReceiverRst,
      D => FfOneP_n_0,
      Q => IntSyncTwoP
    );
LdRiseN: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => IntRiseFfP,
      G => IntRxClkNot,
      GE => '1',
      Q => IntRiseLatchN
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_1_AdcReceiver is
  port (
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AdClk : in STD_LOGIC;
    C : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC;
    DataInChP : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_1_AdcReceiver : entity is "AdcReceiver";
end zsys_Lvds_Rx_top_0_1_AdcReceiver;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_1_AdcReceiver is
  signal IntRxDatMuxEna : STD_LOGIC;
  signal IntRxEnaMuxN : STD_LOGIC;
  signal IntRxEnaMuxP : STD_LOGIC;
begin
TheRec0: entity work.zsys_Lvds_Rx_top_0_1_Receiver
     port map (
      C => C,
      ChOut_0(11 downto 0) => ChOut_0(11 downto 0),
      DataInChP(0) => DataInChP(0),
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot,
      IntRxDatMuxEna => IntRxDatMuxEna,
      IntRxEnaMuxN => IntRxEnaMuxN,
      IntRxEnaMuxP => IntRxEnaMuxP
    );
TheRec1: entity work.zsys_Lvds_Rx_top_0_1_Receiver_0
     port map (
      C => C,
      ChOut_1(11 downto 0) => ChOut_1(11 downto 0),
      DataInChP(0) => DataInChP(1),
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot,
      IntRxDatMuxEna => IntRxDatMuxEna,
      IntRxEnaMuxN => IntRxEnaMuxN,
      IntRxEnaMuxP => IntRxEnaMuxP
    );
TheTime: entity work.zsys_Lvds_Rx_top_0_1_RxTiming
     port map (
      AdClk => AdClk,
      C => C,
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot,
      IntRxDatMuxEna => IntRxDatMuxEna,
      IntRxEnaMuxN => IntRxEnaMuxN,
      IntRxEnaMuxP => IntRxEnaMuxP
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_1_Lvds_Rx_top is
  port (
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AdClk : in STD_LOGIC;
    DataInChP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SysRst : in STD_LOGIC;
    Lclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_1_Lvds_Rx_top : entity is "Lvds_Rx_top";
end zsys_Lvds_Rx_top_0_1_Lvds_Rx_top;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_1_Lvds_Rx_top is
  signal C : STD_LOGIC;
  signal D : STD_LOGIC;
  signal IntLclkDcmBufg : STD_LOGIC;
  signal IntLclkDcmDvBufg : STD_LOGIC;
  signal IntReceiverRst : STD_LOGIC;
  signal IntRxClkNot : STD_LOGIC;
  signal LOCKED : STD_LOGIC;
  signal clk180 : STD_LOGIC;
  signal NLW_LclkDcm_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_LclkDcm_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_LclkDvBufg_O_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LclkBufg : label is "PRIMITIVE";
  attribute BOX_TYPE of LclkDcm : label is "PRIMITIVE";
  attribute DSS_MODE : string;
  attribute DSS_MODE of LclkDcm : label is "NONE";
  attribute SIM_MODE : string;
  attribute SIM_MODE of LclkDcm : label is "SAFE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of LclkDcm : label is "DCM";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of LclkDcm : label is "STATUS[7]:DO[7] STATUS[6]:DO[6] STATUS[5]:DO[5] STATUS[4]:DO[4] STATUS[3]:DO[3] STATUS[2]:DO[2] STATUS[1]:DO[1] STATUS[0]:DO[0] CLKIN:CLKIN1 CLKFX:CLKOUT0 CLKFX180:CLKOUT0B CLK2X:CLKOUT1 CLK2X180:CLKOUT1B CLK90:CLKOUT2 CLK270:CLKOUT2B CLKDV:CLKOUT4 CLK0:CLKFBOUT CLK180:CLKFBOUTB CLKFB:CLKFBIN";
  attribute BOX_TYPE of LclkDvBufg : label is "PRIMITIVE";
  attribute BOX_TYPE of LclkNotBufg : label is "PRIMITIVE";
  attribute BOX_TYPE of RxRstFf : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of RxRstFf : label is "FDP";
begin
AdcCh10: entity work.zsys_Lvds_Rx_top_0_1_AdcReceiver
     port map (
      AdClk => AdClk,
      C => C,
      ChOut_0(11 downto 0) => ChOut_0(11 downto 0),
      ChOut_1(11 downto 0) => ChOut_1(11 downto 0),
      DataInChP(1 downto 0) => DataInChP(1 downto 0),
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot
    );
LclkBufg: unisim.vcomponents.BUFG
     port map (
      I => IntLclkDcmBufg,
      O => C
    );
LclkDcm: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 8.000000,
      CLKFBOUT_PHASE => -0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 1.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 4,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 8,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 90.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 8,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 16,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_PSINCDEC_INVERTED => '1',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => C,
      CLKFBOUT => IntLclkDcmBufg,
      CLKFBOUTB => clk180,
      CLKFBSTOPPED => NLW_LclkDcm_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => Lclk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_LclkDcm_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => NLW_LclkDcm_CLKOUT0_UNCONNECTED,
      CLKOUT0B => NLW_LclkDcm_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_LclkDcm_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_LclkDcm_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_LclkDcm_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_LclkDcm_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_LclkDcm_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_LclkDcm_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => IntLclkDcmDvBufg,
      CLKOUT5 => NLW_LclkDcm_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_LclkDcm_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_LclkDcm_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_LclkDcm_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => LOCKED,
      PSCLK => '0',
      PSDONE => NLW_LclkDcm_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => SysRst
    );
LclkDvBufg: unisim.vcomponents.BUFG
     port map (
      I => IntLclkDcmDvBufg,
      O => NLW_LclkDvBufg_O_UNCONNECTED
    );
LclkNotBufg: unisim.vcomponents.BUFG
     port map (
      I => clk180,
      O => IntRxClkNot
    );
RxRstFf: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => C,
      CE => '1',
      D => D,
      PRE => SysRst,
      Q => IntReceiverRst
    );
RxRstFf_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => LOCKED,
      O => D
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_1 is
  port (
    SysRst : in STD_LOGIC;
    Lclk : in STD_LOGIC;
    AdClk : in STD_LOGIC;
    DataInChP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DataInChN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AnalyseOut : out STD_LOGIC;
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_Lvds_Rx_top_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_Lvds_Rx_top_0_1 : entity is "zsys_Lvds_Rx_top_0_1,Lvds_Rx_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_Lvds_Rx_top_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_Lvds_Rx_top_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_Lvds_Rx_top_0_1 : entity is "Lvds_Rx_top,Vivado 2018.2";
end zsys_Lvds_Rx_top_0_1;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_1 is
begin
  AnalyseOut <= 'Z';
U0: entity work.zsys_Lvds_Rx_top_0_1_Lvds_Rx_top
     port map (
      AdClk => AdClk,
      ChOut_0(11 downto 0) => ChOut_0(11 downto 0),
      ChOut_1(11 downto 0) => ChOut_1(11 downto 0),
      DataInChP(1 downto 0) => DataInChP(1 downto 0),
      Lclk => Lclk,
      SysRst => SysRst
    );
end STRUCTURE;
