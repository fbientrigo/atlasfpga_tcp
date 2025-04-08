-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Dec 13 09:13:22 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_Lvds_Rx_top_0_0/zsys_Lvds_Rx_top_0_0_sim_netlist.vhdl
-- Design      : zsys_Lvds_Rx_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_0_PhaseControlFullRange is
  port (
    IntLclkDcmPhsClkLocked : out STD_LOGIC;
    PSINCDEC : out STD_LOGIC;
    PSEN : out STD_LOGIC;
    Lclk : in STD_LOGIC;
    RxClk : in STD_LOGIC;
    CLK : in STD_LOGIC;
    IntLclkDcmPhaseDone : in STD_LOGIC;
    IntLclkDcmLocked : in STD_LOGIC;
    SysRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_0_PhaseControlFullRange : entity is "PhaseControlFullRange";
end zsys_Lvds_Rx_top_0_0_PhaseControlFullRange;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_0_PhaseControlFullRange is
  signal \FSM_sequential_IntState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_IntState[2]_i_8_n_0\ : STD_LOGIC;
  signal IntAction_i_1_n_0 : STD_LOGIC;
  signal IntAction_i_2_n_0 : STD_LOGIC;
  signal IntAction_reg_n_0 : STD_LOGIC;
  signal IntCal0 : STD_LOGIC;
  signal IntCal1 : STD_LOGIC;
  signal IntCal2 : STD_LOGIC;
  signal IntCal2A : STD_LOGIC;
  signal IntCal2_i_1_n_0 : STD_LOGIC;
  signal IntCalValid : STD_LOGIC;
  signal IntCalValid_reg_n_0 : STD_LOGIC;
  signal \IntCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \IntCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \IntCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \IntCount[3]_i_1_n_0\ : STD_LOGIC;
  signal IntCount_n_0 : STD_LOGIC;
  signal \IntCount_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IntHyst : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \IntHyst[3]_i_1_n_0\ : STD_LOGIC;
  signal \IntHyst[3]_i_3_n_0\ : STD_LOGIC;
  signal \IntHyst[3]_i_4_n_0\ : STD_LOGIC;
  signal \IntHyst[3]_i_5_n_0\ : STD_LOGIC;
  signal IntHyst_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^intlclkdcmphsclklocked\ : STD_LOGIC;
  signal IntLockedIn : STD_LOGIC;
  signal IntOldIntCal2 : STD_LOGIC;
  signal IntOldIntCal2_i_1_n_0 : STD_LOGIC;
  signal IntPs0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal IntPs0Bcd : STD_LOGIC;
  signal IntPs1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \IntPs1[8]_i_2_n_0\ : STD_LOGIC;
  signal \IntPs1[8]_i_3_n_0\ : STD_LOGIC;
  signal \IntPs1[8]_i_4_n_0\ : STD_LOGIC;
  signal IntPs1_0 : STD_LOGIC;
  signal IntPs3 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \IntPs3[0]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[1]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[2]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[3]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[4]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[5]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[6]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[7]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[8]_i_1_n_0\ : STD_LOGIC;
  signal \IntPs3[8]_i_2_n_0\ : STD_LOGIC;
  signal IntPsDone : STD_LOGIC;
  signal IntPsEn : STD_LOGIC;
  signal IntPsEn_i_1_n_0 : STD_LOGIC;
  signal IntPsIncDec_i_1_n_0 : STD_LOGIC;
  signal IntState : STD_LOGIC;
  signal \IntState__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \IntState__0\ : signal is "yes";
  signal \Int[5]_i_2_n_0\ : STD_LOGIC;
  signal \Int[7]_i_2_n_0\ : STD_LOGIC;
  signal \Int[8]_i_3_n_0\ : STD_LOGIC;
  signal \Int[8]_i_4_n_0\ : STD_LOGIC;
  signal \Int_reg_n_0_[0]\ : STD_LOGIC;
  signal \Int_reg_n_0_[1]\ : STD_LOGIC;
  signal \Int_reg_n_0_[2]\ : STD_LOGIC;
  signal \Int_reg_n_0_[3]\ : STD_LOGIC;
  signal \Int_reg_n_0_[4]\ : STD_LOGIC;
  signal \Int_reg_n_0_[5]\ : STD_LOGIC;
  signal \Int_reg_n_0_[6]\ : STD_LOGIC;
  signal \Int_reg_n_0_[7]\ : STD_LOGIC;
  signal \Int_reg_n_0_[8]\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal LockedOut_i_1_n_0 : STD_LOGIC;
  signal \^psen\ : STD_LOGIC;
  signal \^psincdec\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_eqOp_inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_IntState[2]_i_6\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_IntState_reg[0]\ : label is "iSTATE:101,iSTATE0:100,iSTATE1:000,iSTATE2:001,iSTATE3:010,iSTATE4:011,";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_IntState_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_IntState_reg[1]\ : label is "iSTATE:101,iSTATE0:100,iSTATE1:000,iSTATE2:001,iSTATE3:010,iSTATE4:011,";
  attribute KEEP of \FSM_sequential_IntState_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_IntState_reg[2]\ : label is "iSTATE:101,iSTATE0:100,iSTATE1:000,iSTATE2:001,iSTATE3:010,iSTATE4:011,";
  attribute KEEP of \FSM_sequential_IntState_reg[2]\ : label is "yes";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of FdRegIntCal0 : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of FdRegIntCal0 : label is "TRUE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FdRegIntCal0 : label is "FD";
  attribute BOX_TYPE of FdRegIntCal1 : label is "PRIMITIVE";
  attribute RLOC : string;
  attribute RLOC of FdRegIntCal1 : label is "x0y0";
  attribute XILINX_LEGACY_PRIM of FdRegIntCal1 : label is "FD";
  attribute BOX_TYPE of FdRegIntCal2 : label is "PRIMITIVE";
  attribute RLOC of FdRegIntCal2 : label is "x1y0";
  attribute XILINX_LEGACY_PRIM of FdRegIntCal2 : label is "FD";
  attribute BOX_TYPE of FdRetimePsDone : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FdRetimePsDone : label is "FD";
  attribute BOX_TYPE of FdRetimelocKed : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FdRetimelocKed : label is "FD";
  attribute SOFT_HLUTNM of IntAction_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of IntCal2_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of IntCalValid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \IntCount[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IntCount[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of IntOldIntCal2_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \IntPs3[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \IntPs3[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \IntPs3[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IntPs3[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IntPs3[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IntPs3[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Int[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Int[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Int[7]_i_2\ : label is "soft_lutpair4";
begin
  IntLclkDcmPhsClkLocked <= \^intlclkdcmphsclklocked\;
  PSEN <= \^psen\;
  PSINCDEC <= \^psincdec\;
\FSM_sequential_IntState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => \IntState__0\(0),
      I2 => IntState,
      I3 => \IntState__0\(0),
      O => \FSM_sequential_IntState[0]_i_1_n_0\
    );
\FSM_sequential_IntState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06FF0600"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntState__0\(0),
      I2 => \IntState__0\(2),
      I3 => IntState,
      I4 => \IntState__0\(1),
      O => \FSM_sequential_IntState[1]_i_1_n_0\
    );
\FSM_sequential_IntState[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntState__0\(0),
      I2 => \IntState__0\(2),
      I3 => IntState,
      I4 => \IntState__0\(2),
      O => \FSM_sequential_IntState[2]_i_1_n_0\
    );
\FSM_sequential_IntState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEFEEEEEEEFF"
    )
        port map (
      I0 => \FSM_sequential_IntState[2]_i_3_n_0\,
      I1 => \FSM_sequential_IntState[2]_i_4_n_0\,
      I2 => \eqOp_inferred__2/i__carry_n_1\,
      I3 => \FSM_sequential_IntState[2]_i_5_n_0\,
      I4 => IntAction_i_2_n_0,
      I5 => \IntState__0\(2),
      O => IntState
    );
\FSM_sequential_IntState[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF000F800F000"
    )
        port map (
      I0 => \IntPs1[8]_i_3_n_0\,
      I1 => \FSM_sequential_IntState[2]_i_6_n_0\,
      I2 => \IntPs1[8]_i_4_n_0\,
      I3 => \FSM_sequential_IntState[2]_i_7_n_0\,
      I4 => \IntHyst[3]_i_3_n_0\,
      I5 => \FSM_sequential_IntState[2]_i_8_n_0\,
      O => \FSM_sequential_IntState[2]_i_3_n_0\
    );
\FSM_sequential_IntState[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444404040"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntPs1[8]_i_4_n_0\,
      I2 => \Int_reg_n_0_[7]\,
      I3 => \Int_reg_n_0_[6]\,
      I4 => \Int[8]_i_3_n_0\,
      I5 => \Int_reg_n_0_[8]\,
      O => \FSM_sequential_IntState[2]_i_4_n_0\
    );
\FSM_sequential_IntState[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \IntState__0\(0),
      I1 => \IntState__0\(1),
      O => \FSM_sequential_IntState[2]_i_5_n_0\
    );
\FSM_sequential_IntState[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \Int_reg_n_0_[2]\,
      I1 => \Int_reg_n_0_[1]\,
      I2 => \Int_reg_n_0_[0]\,
      O => \FSM_sequential_IntState[2]_i_6_n_0\
    );
\FSM_sequential_IntState[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntState__0\(0),
      O => \FSM_sequential_IntState[2]_i_7_n_0\
    );
\FSM_sequential_IntState[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => IntHyst(0),
      I1 => IntHyst(1),
      I2 => IntHyst(2),
      I3 => \IntState__0\(0),
      I4 => IntHyst(3),
      O => \FSM_sequential_IntState[2]_i_8_n_0\
    );
\FSM_sequential_IntState_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \FSM_sequential_IntState[0]_i_1_n_0\,
      Q => \IntState__0\(0)
    );
\FSM_sequential_IntState_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \FSM_sequential_IntState[1]_i_1_n_0\,
      Q => \IntState__0\(1)
    );
\FSM_sequential_IntState_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \FSM_sequential_IntState[2]_i_1_n_0\,
      Q => \IntState__0\(2)
    );
FdRegIntCal0: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxClk,
      CE => '1',
      D => Lclk,
      Q => IntCal0,
      R => '0'
    );
FdRegIntCal1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => RxClk,
      CE => '1',
      D => IntCal0,
      Q => IntCal1,
      R => '0'
    );
FdRegIntCal2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => IntCal1,
      Q => IntCal2A,
      R => '0'
    );
FdRetimePsDone: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => IntLclkDcmPhaseDone,
      Q => IntPsDone,
      R => '0'
    );
FdRetimelocKed: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => IntLclkDcmLocked,
      Q => IntLockedIn,
      R => '0'
    );
IntAction_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1112FFFF11121112"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => IntAction_i_2_n_0,
      I2 => \IntState__0\(0),
      I3 => \IntState__0\(1),
      I4 => IntPsDone,
      I5 => IntAction_reg_n_0,
      O => IntAction_i_1_n_0
    );
IntAction_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => IntLockedIn,
      I1 => IntAction_reg_n_0,
      I2 => IntCalValid_reg_n_0,
      O => IntAction_i_2_n_0
    );
IntAction_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => IntAction_i_1_n_0,
      Q => IntAction_reg_n_0
    );
IntCal2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE8000"
    )
        port map (
      I0 => \IntCount_reg__0\(0),
      I1 => \IntCount_reg__0\(1),
      I2 => \IntCount_reg__0\(3),
      I3 => \IntCount_reg__0\(2),
      I4 => IntCal2,
      O => IntCal2_i_1_n_0
    );
IntCal2_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => IntCal2_i_1_n_0,
      Q => IntCal2
    );
IntCalValid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => \IntCount_reg__0\(0),
      I1 => \IntCount_reg__0\(1),
      I2 => \IntCount_reg__0\(3),
      I3 => \IntCount_reg__0\(2),
      O => IntCalValid
    );
IntCalValid_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => IntCalValid,
      Q => IntCalValid_reg_n_0
    );
IntCount: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => IntCal2A,
      I1 => \IntCount_reg__0\(0),
      I2 => \IntCount_reg__0\(1),
      I3 => \IntCount_reg__0\(2),
      I4 => \IntCount_reg__0\(3),
      O => IntCount_n_0
    );
\IntCount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \IntCount_reg__0\(0),
      O => \IntCount[0]_i_1_n_0\
    );
\IntCount[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \IntCount_reg__0\(0),
      I1 => IntCal2A,
      I2 => \IntCount_reg__0\(1),
      O => \IntCount[1]_i_1_n_0\
    );
\IntCount[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \IntCount_reg__0\(0),
      I1 => IntCal2A,
      I2 => \IntCount_reg__0\(2),
      I3 => \IntCount_reg__0\(1),
      O => \IntCount[2]_i_1_n_0\
    );
\IntCount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => IntCal2A,
      I1 => \IntCount_reg__0\(0),
      I2 => \IntCount_reg__0\(1),
      I3 => \IntCount_reg__0\(3),
      I4 => \IntCount_reg__0\(2),
      O => \IntCount[3]_i_1_n_0\
    );
\IntCount_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntCount_n_0,
      CLR => SysRst,
      D => \IntCount[0]_i_1_n_0\,
      Q => \IntCount_reg__0\(0)
    );
\IntCount_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntCount_n_0,
      CLR => SysRst,
      D => \IntCount[1]_i_1_n_0\,
      Q => \IntCount_reg__0\(1)
    );
\IntCount_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntCount_n_0,
      CLR => SysRst,
      D => \IntCount[2]_i_1_n_0\,
      Q => \IntCount_reg__0\(2)
    );
\IntCount_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => IntCount_n_0,
      D => \IntCount[3]_i_1_n_0\,
      PRE => SysRst,
      Q => \IntCount_reg__0\(3)
    );
\IntHyst[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(0),
      I3 => IntHyst(0),
      O => IntHyst_1(0)
    );
\IntHyst[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EFEF00"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(0),
      I3 => IntHyst(1),
      I4 => IntHyst(0),
      O => IntHyst_1(1)
    );
\IntHyst[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EFEF00EF00EF00"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(0),
      I3 => IntHyst(2),
      I4 => IntHyst(0),
      I5 => IntHyst(1),
      O => IntHyst_1(2)
    );
\IntHyst[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2060602020202020"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntState__0\(0),
      I2 => \IntHyst[3]_i_3_n_0\,
      I3 => IntCal2,
      I4 => IntOldIntCal2,
      I5 => \IntHyst[3]_i_4_n_0\,
      O => \IntHyst[3]_i_1_n_0\
    );
\IntHyst[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \IntHyst[3]_i_5_n_0\,
      I1 => IntHyst(3),
      I2 => IntHyst(2),
      I3 => IntHyst(1),
      I4 => IntHyst(0),
      O => IntHyst_1(3)
    );
\IntHyst[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => IntCalValid_reg_n_0,
      I1 => IntAction_reg_n_0,
      I2 => IntLockedIn,
      I3 => \IntState__0\(2),
      O => \IntHyst[3]_i_3_n_0\
    );
\IntHyst[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \Int_reg_n_0_[8]\,
      I1 => \Int[8]_i_3_n_0\,
      I2 => \Int_reg_n_0_[6]\,
      I3 => \Int_reg_n_0_[7]\,
      O => \IntHyst[3]_i_4_n_0\
    );
\IntHyst[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \IntState__0\(0),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(2),
      O => \IntHyst[3]_i_5_n_0\
    );
\IntHyst_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IntHyst[3]_i_1_n_0\,
      CLR => SysRst,
      D => IntHyst_1(0),
      Q => IntHyst(0)
    );
\IntHyst_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IntHyst[3]_i_1_n_0\,
      CLR => SysRst,
      D => IntHyst_1(1),
      Q => IntHyst(1)
    );
\IntHyst_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IntHyst[3]_i_1_n_0\,
      CLR => SysRst,
      D => IntHyst_1(2),
      Q => IntHyst(2)
    );
\IntHyst_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \IntHyst[3]_i_1_n_0\,
      CLR => SysRst,
      D => IntHyst_1(3),
      Q => IntHyst(3)
    );
IntOldIntCal2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => IntCal2,
      I1 => IntCalValid_reg_n_0,
      I2 => IntAction_reg_n_0,
      I3 => IntLockedIn,
      I4 => IntOldIntCal2,
      O => IntOldIntCal2_i_1_n_0
    );
IntOldIntCal2_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => IntOldIntCal2_i_1_n_0,
      Q => IntOldIntCal2
    );
\IntPs0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntState__0\(0),
      I2 => \IntHyst[3]_i_3_n_0\,
      I3 => IntCal2,
      I4 => IntOldIntCal2,
      I5 => \IntHyst[3]_i_4_n_0\,
      O => IntPs0Bcd
    );
\IntPs0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[0]\,
      Q => IntPs0(0)
    );
\IntPs0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[1]\,
      Q => IntPs0(1)
    );
\IntPs0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[2]\,
      Q => IntPs0(2)
    );
\IntPs0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[3]\,
      Q => IntPs0(3)
    );
\IntPs0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[4]\,
      Q => IntPs0(4)
    );
\IntPs0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[5]\,
      Q => IntPs0(5)
    );
\IntPs0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[6]\,
      Q => IntPs0(6)
    );
\IntPs0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[7]\,
      Q => IntPs0(7)
    );
\IntPs0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs0Bcd,
      CLR => SysRst,
      D => \Int_reg_n_0_[8]\,
      Q => IntPs0(8)
    );
\IntPs1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntState__0\(0),
      I2 => \IntPs1[8]_i_2_n_0\,
      O => IntPs1_0
    );
\IntPs1[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08000000"
    )
        port map (
      I0 => \IntHyst[3]_i_3_n_0\,
      I1 => \IntPs1[8]_i_3_n_0\,
      I2 => \Int_reg_n_0_[0]\,
      I3 => \Int_reg_n_0_[1]\,
      I4 => \Int_reg_n_0_[2]\,
      I5 => \IntPs1[8]_i_4_n_0\,
      O => \IntPs1[8]_i_2_n_0\
    );
\IntPs1[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Int_reg_n_0_[3]\,
      I1 => \Int_reg_n_0_[4]\,
      I2 => \Int_reg_n_0_[5]\,
      I3 => \Int_reg_n_0_[6]\,
      I4 => \Int_reg_n_0_[8]\,
      I5 => \Int_reg_n_0_[7]\,
      O => \IntPs1[8]_i_3_n_0\
    );
\IntPs1[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004000000"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => IntLockedIn,
      I2 => IntAction_reg_n_0,
      I3 => IntCalValid_reg_n_0,
      I4 => IntCal2,
      I5 => IntOldIntCal2,
      O => \IntPs1[8]_i_4_n_0\
    );
\IntPs1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[0]\,
      Q => IntPs1(0)
    );
\IntPs1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[1]\,
      Q => IntPs1(1)
    );
\IntPs1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[2]\,
      Q => IntPs1(2)
    );
\IntPs1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[3]\,
      Q => IntPs1(3)
    );
\IntPs1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[4]\,
      Q => IntPs1(4)
    );
\IntPs1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[5]\,
      Q => IntPs1(5)
    );
\IntPs1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[6]\,
      Q => IntPs1(6)
    );
\IntPs1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[7]\,
      Q => IntPs1(7)
    );
\IntPs1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPs1_0,
      CLR => SysRst,
      D => \Int_reg_n_0_[8]\,
      Q => IntPs1(8)
    );
\IntPs3[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(0),
      O => \IntPs3[0]_i_1_n_0\
    );
\IntPs3[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(0),
      I1 => L(1),
      O => \IntPs3[1]_i_1_n_0\
    );
\IntPs3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => L(0),
      I1 => L(1),
      I2 => L(2),
      O => \IntPs3[2]_i_1_n_0\
    );
\IntPs3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => L(1),
      I1 => L(0),
      I2 => L(2),
      I3 => L(3),
      O => \IntPs3[3]_i_1_n_0\
    );
\IntPs3[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => L(2),
      I1 => L(0),
      I2 => L(1),
      I3 => L(3),
      I4 => L(4),
      O => \IntPs3[4]_i_1_n_0\
    );
\IntPs3[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => L(3),
      I1 => L(1),
      I2 => L(0),
      I3 => L(2),
      I4 => L(4),
      I5 => L(5),
      O => \IntPs3[5]_i_1_n_0\
    );
\IntPs3[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \IntPs3[8]_i_2_n_0\,
      I1 => L(6),
      O => \IntPs3[6]_i_1_n_0\
    );
\IntPs3[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => L(6),
      I1 => \IntPs3[8]_i_2_n_0\,
      I2 => L(7),
      O => \IntPs3[7]_i_1_n_0\
    );
\IntPs3[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => L(6),
      I1 => \IntPs3[8]_i_2_n_0\,
      I2 => L(7),
      O => \IntPs3[8]_i_1_n_0\
    );
\IntPs3[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => L(5),
      I1 => L(3),
      I2 => L(1),
      I3 => L(0),
      I4 => L(2),
      I5 => L(4),
      O => \IntPs3[8]_i_2_n_0\
    );
\IntPs3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[0]_i_1_n_0\,
      Q => IntPs3(0)
    );
\IntPs3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[1]_i_1_n_0\,
      Q => IntPs3(1)
    );
\IntPs3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[2]_i_1_n_0\,
      Q => IntPs3(2)
    );
\IntPs3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[3]_i_1_n_0\,
      Q => IntPs3(3)
    );
\IntPs3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[4]_i_1_n_0\,
      Q => IntPs3(4)
    );
\IntPs3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[5]_i_1_n_0\,
      Q => IntPs3(5)
    );
\IntPs3_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[6]_i_1_n_0\,
      Q => IntPs3(6)
    );
\IntPs3_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[7]_i_1_n_0\,
      Q => IntPs3(7)
    );
\IntPs3_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => \IntPs3[8]_i_1_n_0\,
      Q => IntPs3(8)
    );
IntPsEn_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0056"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(0),
      I3 => IntAction_i_2_n_0,
      I4 => \^psen\,
      O => IntPsEn_i_1_n_0
    );
IntPsEn_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => IntPsEn_i_1_n_0,
      Q => \^psen\
    );
IntPsIncDec_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => \^psincdec\,
      I1 => IntAction_i_2_n_0,
      I2 => \IntState__0\(2),
      I3 => \IntState__0\(1),
      I4 => \IntState__0\(0),
      O => IntPsIncDec_i_1_n_0
    );
IntPsIncDec_reg: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => IntPsIncDec_i_1_n_0,
      PRE => SysRst,
      Q => \^psincdec\
    );
\Int[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Int_reg_n_0_[0]\,
      O => p_0_out(0)
    );
\Int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F10E0EF1"
    )
        port map (
      I0 => \IntState__0\(0),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(2),
      I3 => \Int_reg_n_0_[1]\,
      I4 => \Int_reg_n_0_[0]\,
      O => p_0_out(1)
    );
\Int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFFF54540000AB"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(0),
      I3 => \Int_reg_n_0_[1]\,
      I4 => \Int_reg_n_0_[0]\,
      I5 => \Int_reg_n_0_[2]\,
      O => p_0_out(2)
    );
\Int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFD4002"
    )
        port map (
      I0 => \Int[8]_i_4_n_0\,
      I1 => \Int_reg_n_0_[2]\,
      I2 => \Int_reg_n_0_[0]\,
      I3 => \Int_reg_n_0_[1]\,
      I4 => \Int_reg_n_0_[3]\,
      O => p_0_out(3)
    );
\Int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFD40000002"
    )
        port map (
      I0 => \Int[8]_i_4_n_0\,
      I1 => \Int_reg_n_0_[3]\,
      I2 => \Int_reg_n_0_[1]\,
      I3 => \Int_reg_n_0_[0]\,
      I4 => \Int_reg_n_0_[2]\,
      I5 => \Int_reg_n_0_[4]\,
      O => p_0_out(4)
    );
\Int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888ABBBA77754445"
    )
        port map (
      I0 => \Int[5]_i_2_n_0\,
      I1 => \IntState__0\(2),
      I2 => \IntState__0\(1),
      I3 => \IntState__0\(0),
      I4 => \Int[7]_i_2_n_0\,
      I5 => \Int_reg_n_0_[5]\,
      O => p_0_out(5)
    );
\Int[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Int_reg_n_0_[3]\,
      I1 => \Int_reg_n_0_[1]\,
      I2 => \Int_reg_n_0_[0]\,
      I3 => \Int_reg_n_0_[2]\,
      I4 => \Int_reg_n_0_[4]\,
      O => \Int[5]_i_2_n_0\
    );
\Int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB7444"
    )
        port map (
      I0 => \Int[8]_i_3_n_0\,
      I1 => \Int[8]_i_4_n_0\,
      I2 => \Int_reg_n_0_[5]\,
      I3 => \Int[7]_i_2_n_0\,
      I4 => \Int_reg_n_0_[6]\,
      O => p_0_out(6)
    );
\Int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFBBBB30004444"
    )
        port map (
      I0 => \Int[8]_i_3_n_0\,
      I1 => \Int[8]_i_4_n_0\,
      I2 => \Int[7]_i_2_n_0\,
      I3 => \Int_reg_n_0_[5]\,
      I4 => \Int_reg_n_0_[6]\,
      I5 => \Int_reg_n_0_[7]\,
      O => p_0_out(7)
    );
\Int[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \Int_reg_n_0_[3]\,
      I1 => \Int_reg_n_0_[1]\,
      I2 => \Int_reg_n_0_[0]\,
      I3 => \Int_reg_n_0_[2]\,
      I4 => \Int_reg_n_0_[4]\,
      O => \Int[7]_i_2_n_0\
    );
\Int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000E00000"
    )
        port map (
      I0 => \IntState__0\(1),
      I1 => \IntState__0\(0),
      I2 => IntCalValid_reg_n_0,
      I3 => IntAction_reg_n_0,
      I4 => IntLockedIn,
      I5 => \IntState__0\(2),
      O => IntPsEn
    );
\Int[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => \Int[8]_i_3_n_0\,
      I1 => \Int_reg_n_0_[6]\,
      I2 => \Int_reg_n_0_[7]\,
      I3 => \Int_reg_n_0_[8]\,
      I4 => \Int[8]_i_4_n_0\,
      I5 => in7(8),
      O => p_0_out(8)
    );
\Int[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Int_reg_n_0_[4]\,
      I1 => \Int_reg_n_0_[2]\,
      I2 => \Int_reg_n_0_[0]\,
      I3 => \Int_reg_n_0_[1]\,
      I4 => \Int_reg_n_0_[3]\,
      I5 => \Int_reg_n_0_[5]\,
      O => \Int[8]_i_3_n_0\
    );
\Int[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \IntState__0\(2),
      I1 => \IntState__0\(1),
      I2 => \IntState__0\(0),
      O => \Int[8]_i_4_n_0\
    );
\Int[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Int[7]_i_2_n_0\,
      I1 => \Int_reg_n_0_[7]\,
      I2 => \Int_reg_n_0_[6]\,
      I3 => \Int_reg_n_0_[5]\,
      I4 => \Int_reg_n_0_[8]\,
      O => in7(8)
    );
\Int_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(0),
      Q => \Int_reg_n_0_[0]\
    );
\Int_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(1),
      Q => \Int_reg_n_0_[1]\
    );
\Int_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(2),
      Q => \Int_reg_n_0_[2]\
    );
\Int_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(3),
      Q => \Int_reg_n_0_[3]\
    );
\Int_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(4),
      Q => \Int_reg_n_0_[4]\
    );
\Int_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(5),
      Q => \Int_reg_n_0_[5]\
    );
\Int_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(6),
      Q => \Int_reg_n_0_[6]\
    );
\Int_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(7),
      Q => \Int_reg_n_0_[7]\
    );
\Int_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => IntPsEn,
      CLR => SysRst,
      D => p_0_out(8),
      Q => \Int_reg_n_0_[8]\
    );
LockedOut_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00040000"
    )
        port map (
      I0 => IntAction_i_2_n_0,
      I1 => \eqOp_inferred__2/i__carry_n_1\,
      I2 => \IntState__0\(0),
      I3 => \IntState__0\(1),
      I4 => \IntState__0\(2),
      I5 => \^intlclkdcmphsclklocked\,
      O => LockedOut_i_1_n_0
    );
LockedOut_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SysRst,
      D => LockedOut_i_1_n_0,
      Q => \^intlclkdcmphsclklocked\
    );
\eqOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_eqOp_inferred__2/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \eqOp_inferred__2/i__carry_n_1\,
      CO(1) => \eqOp_inferred__2/i__carry_n_2\,
      CO(0) => \eqOp_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1_n_0\,
      S(1) => \i__carry_i_2_n_0\,
      S(0) => \i__carry_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(7),
      I1 => IntPs1(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(6),
      I1 => IntPs1(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(5),
      I1 => IntPs1(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(4),
      I1 => IntPs1(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(8),
      I1 => IntPs1(8),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => IntPs3(8),
      I1 => \Int_reg_n_0_[8]\,
      I2 => IntPs3(7),
      I3 => \Int_reg_n_0_[7]\,
      I4 => \Int_reg_n_0_[6]\,
      I5 => IntPs3(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(3),
      I1 => IntPs1(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => IntPs3(5),
      I1 => \Int_reg_n_0_[5]\,
      I2 => IntPs3(4),
      I3 => \Int_reg_n_0_[4]\,
      I4 => \Int_reg_n_0_[3]\,
      I5 => IntPs3(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(2),
      I1 => IntPs1(2),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => IntPs3(2),
      I1 => \Int_reg_n_0_[2]\,
      I2 => IntPs3(1),
      I3 => \Int_reg_n_0_[1]\,
      I4 => \Int_reg_n_0_[0]\,
      I5 => IntPs3(0),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(1),
      I1 => IntPs1(1),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => IntPs0(0),
      I1 => IntPs1(0),
      O => \i__carry_i_4_n_0\
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => IntPs0(3 downto 0),
      O(3 downto 1) => L(2 downto 0),
      O(0) => \NLW_plusOp_inferred__0/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => IntPs0(7 downto 4),
      O(3 downto 0) => L(6 downto 3),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3 downto 0) => \NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => L(7),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__1_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_0_Receiver is
  port (
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataInChP : in STD_LOGIC_VECTOR ( 0 to 0 );
    RxClk : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC;
    IntRxEnaMuxN : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxEnaMuxP : in STD_LOGIC;
    IntRxDatMuxEna : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_0_Receiver : entity is "Receiver";
end zsys_Lvds_Rx_top_0_0_Receiver;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_0_Receiver is
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
entity zsys_Lvds_Rx_top_0_0_Receiver_0 is
  port (
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DataInChP : in STD_LOGIC_VECTOR ( 0 to 0 );
    RxClk : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC;
    IntRxEnaMuxN : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxEnaMuxP : in STD_LOGIC;
    IntRxDatMuxEna : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_0_Receiver_0 : entity is "Receiver";
end zsys_Lvds_Rx_top_0_0_Receiver_0;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_0_Receiver_0 is
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
entity zsys_Lvds_Rx_top_0_0_RxTiming is
  port (
    IntRxEnaMuxP : out STD_LOGIC;
    IntRxEnaMuxN : out STD_LOGIC;
    IntRxDatMuxEna : out STD_LOGIC;
    AdClk : in STD_LOGIC;
    RxClk : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_0_RxTiming : entity is "RxTiming";
end zsys_Lvds_Rx_top_0_0_RxTiming;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_0_RxTiming is
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
      C => RxClk,
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
entity zsys_Lvds_Rx_top_0_0_AdcReceiver is
  port (
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AdClk : in STD_LOGIC;
    RxClk : in STD_LOGIC;
    IntReceiverRst : in STD_LOGIC;
    IntRxClkNot : in STD_LOGIC;
    DataInChP : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_0_AdcReceiver : entity is "AdcReceiver";
end zsys_Lvds_Rx_top_0_0_AdcReceiver;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_0_AdcReceiver is
  signal IntRxDatMuxEna : STD_LOGIC;
  signal IntRxEnaMuxN : STD_LOGIC;
  signal IntRxEnaMuxP : STD_LOGIC;
begin
TheRec0: entity work.zsys_Lvds_Rx_top_0_0_Receiver
     port map (
      ChOut_0(11 downto 0) => ChOut_0(11 downto 0),
      DataInChP(0) => DataInChP(0),
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot,
      IntRxDatMuxEna => IntRxDatMuxEna,
      IntRxEnaMuxN => IntRxEnaMuxN,
      IntRxEnaMuxP => IntRxEnaMuxP,
      RxClk => RxClk
    );
TheRec1: entity work.zsys_Lvds_Rx_top_0_0_Receiver_0
     port map (
      ChOut_1(11 downto 0) => ChOut_1(11 downto 0),
      DataInChP(0) => DataInChP(1),
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot,
      IntRxDatMuxEna => IntRxDatMuxEna,
      IntRxEnaMuxN => IntRxEnaMuxN,
      IntRxEnaMuxP => IntRxEnaMuxP,
      RxClk => RxClk
    );
TheTime: entity work.zsys_Lvds_Rx_top_0_0_RxTiming
     port map (
      AdClk => AdClk,
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot,
      IntRxDatMuxEna => IntRxDatMuxEna,
      IntRxEnaMuxN => IntRxEnaMuxN,
      IntRxEnaMuxP => IntRxEnaMuxP,
      RxClk => RxClk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_0_Lvds_Rx_top is
  port (
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    AdClk : in STD_LOGIC;
    DataInChP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Lclk : in STD_LOGIC;
    SysRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_Lvds_Rx_top_0_0_Lvds_Rx_top : entity is "Lvds_Rx_top";
end zsys_Lvds_Rx_top_0_0_Lvds_Rx_top;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_0_Lvds_Rx_top is
  signal IntLclkDcmBufg : STD_LOGIC;
  signal IntLclkDcmDvBufg : STD_LOGIC;
  signal IntLclkDcmLocked : STD_LOGIC;
  signal IntLclkDcmPhaseDone : STD_LOGIC;
  signal IntLclkDcmPhsClkLocked : STD_LOGIC;
  signal IntReceiverRst : STD_LOGIC;
  signal IntRxClkDv : STD_LOGIC;
  signal IntRxClkNot : STD_LOGIC;
  signal PSEN : STD_LOGIC;
  signal PSINCDEC : STD_LOGIC;
  signal RxClk : STD_LOGIC;
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
  signal NLW_LclkDcm_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
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
AdcCh10: entity work.zsys_Lvds_Rx_top_0_0_AdcReceiver
     port map (
      AdClk => AdClk,
      ChOut_0(11 downto 0) => ChOut_0(11 downto 0),
      ChOut_1(11 downto 0) => ChOut_1(11 downto 0),
      DataInChP(1 downto 0) => DataInChP(1 downto 0),
      IntReceiverRst => IntReceiverRst,
      IntRxClkNot => IntRxClkNot,
      RxClk => RxClk
    );
LclkBufg: unisim.vcomponents.BUFG
     port map (
      I => IntLclkDcmBufg,
      O => RxClk
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
      CLKFBIN => RxClk,
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
      LOCKED => IntLclkDcmLocked,
      PSCLK => IntRxClkDv,
      PSDONE => IntLclkDcmPhaseDone,
      PSEN => PSEN,
      PSINCDEC => PSINCDEC,
      PWRDWN => '0',
      RST => SysRst
    );
LclkDvBufg: unisim.vcomponents.BUFG
     port map (
      I => IntLclkDcmDvBufg,
      O => IntRxClkDv
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
      C => RxClk,
      CE => '1',
      D => IntLclkDcmPhsClkLocked,
      PRE => SysRst,
      Q => IntReceiverRst
    );
ThePhaseCtrl: entity work.zsys_Lvds_Rx_top_0_0_PhaseControlFullRange
     port map (
      CLK => IntRxClkDv,
      IntLclkDcmLocked => IntLclkDcmLocked,
      IntLclkDcmPhaseDone => IntLclkDcmPhaseDone,
      IntLclkDcmPhsClkLocked => IntLclkDcmPhsClkLocked,
      Lclk => Lclk,
      PSEN => PSEN,
      PSINCDEC => PSINCDEC,
      RxClk => RxClk,
      SysRst => SysRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_Lvds_Rx_top_0_0 is
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
  attribute NotValidForBitStream of zsys_Lvds_Rx_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_Lvds_Rx_top_0_0 : entity is "zsys_Lvds_Rx_top_0_0,Lvds_Rx_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_Lvds_Rx_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_Lvds_Rx_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_Lvds_Rx_top_0_0 : entity is "Lvds_Rx_top,Vivado 2018.2";
end zsys_Lvds_Rx_top_0_0;

architecture STRUCTURE of zsys_Lvds_Rx_top_0_0 is
begin
  AnalyseOut <= 'Z';
U0: entity work.zsys_Lvds_Rx_top_0_0_Lvds_Rx_top
     port map (
      AdClk => AdClk,
      ChOut_0(11 downto 0) => ChOut_0(11 downto 0),
      ChOut_1(11 downto 0) => ChOut_1(11 downto 0),
      DataInChP(1 downto 0) => DataInChP(1 downto 0),
      Lclk => Lclk,
      SysRst => SysRst
    );
end STRUCTURE;
