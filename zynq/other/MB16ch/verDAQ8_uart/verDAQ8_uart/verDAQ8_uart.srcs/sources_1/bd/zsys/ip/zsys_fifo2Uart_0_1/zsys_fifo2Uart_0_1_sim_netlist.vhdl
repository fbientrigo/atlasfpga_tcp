-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat May 21 23:52:20 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_fifo2Uart_0_1/zsys_fifo2Uart_0_1_sim_netlist.vhdl
-- Design      : zsys_fifo2Uart_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_fifo2Uart_0_1_UART_RX is
  port (
    o_serial_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_UART_Rx : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_fifo2Uart_0_1_UART_RX : entity is "UART_RX";
end zsys_fifo2Uart_0_1_UART_RX;

architecture STRUCTURE of zsys_fifo2Uart_0_1_UART_RX is
  signal \^o_serial_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_Bit_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[2]_i_4_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[2]_i_5_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_5_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_6_n_0\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_RX_Byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_RX_Byte[7]_i_5_n_0\ : STD_LOGIC;
  signal r_RX_Data : STD_LOGIC;
  signal r_RX_Data_R : STD_LOGIC;
  signal \r_SM_Main[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_SM_Main[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_SM_Main_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Bit_Index[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_Clk_Count[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_Clk_Count[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Clk_Count[2]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Clk_Count[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_Clk_Count[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_Clk_Count[5]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_Clk_Count[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Clk_Count[8]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_Clk_Count[9]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_RX_Byte[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_RX_Byte[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_RX_Byte[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_RX_Byte[6]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_RX_Byte[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_RX_Byte[7]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_SM_Main[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_SM_Main[1]_i_2\ : label is "soft_lutpair1";
begin
  o_serial_out(7 downto 0) <= \^o_serial_out\(7 downto 0);
\r_Bit_Index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20008"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_RX_Byte[5]_i_2_n_0\,
      I2 => \r_SM_Main_reg_n_0_[2]\,
      I3 => \r_SM_Main_reg_n_0_[0]\,
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      O => \r_Bit_Index[0]_i_1_n_0\
    );
\r_Bit_Index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4C00000080"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_SM_Main_reg_n_0_[1]\,
      I2 => \r_RX_Byte[5]_i_2_n_0\,
      I3 => \r_SM_Main_reg_n_0_[2]\,
      I4 => \r_SM_Main_reg_n_0_[0]\,
      I5 => \r_Bit_Index_reg_n_0_[1]\,
      O => \r_Bit_Index[1]_i_1_n_0\
    );
\r_Bit_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F0FFFF80000000"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => \r_RX_Byte[5]_i_2_n_0\,
      I4 => \r_RX_Byte[4]_i_3_n_0\,
      I5 => \r_Bit_Index_reg_n_0_[2]\,
      O => \r_Bit_Index[2]_i_1_n_0\
    );
\r_Bit_Index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[0]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[0]\,
      R => '0'
    );
\r_Bit_Index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[1]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[1]\,
      R => '0'
    );
\r_Bit_Index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[2]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[2]\,
      R => '0'
    );
\r_Clk_Count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0F80C000808"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_RX_Byte[7]_i_3_n_0\,
      I2 => \r_SM_Main_reg_n_0_[2]\,
      I3 => \r_Clk_Count[2]_i_4_n_0\,
      I4 => \r_SM_Main_reg_n_0_[0]\,
      I5 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[0]_i_1_n_0\
    );
\r_Clk_Count[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606060606060FF00"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[1]_i_1__0_n_0\
    );
\r_Clk_Count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888FFFF80880000"
    )
        port map (
      I0 => \r_Clk_Count[2]_i_2_n_0\,
      I1 => \r_RX_Byte[7]_i_3_n_0\,
      I2 => \r_Clk_Count[2]_i_3_n_0\,
      I3 => \r_Clk_Count[2]_i_4_n_0\,
      I4 => \r_Clk_Count[9]_i_2__0_n_0\,
      I5 => \r_Clk_Count_reg_n_0_[2]\,
      O => \r_Clk_Count[2]_i_1_n_0\
    );
\r_Clk_Count[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_Clk_Count[2]_i_2_n_0\
    );
\r_Clk_Count[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[2]_i_3_n_0\
    );
\r_Clk_Count[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[3]\,
      I1 => \r_Clk_Count_reg_n_0_[4]\,
      I2 => \r_Clk_Count_reg_n_0_[5]\,
      I3 => \r_Clk_Count_reg_n_0_[6]\,
      I4 => \r_Clk_Count[9]_i_5_n_0\,
      I5 => \r_Clk_Count[2]_i_5_n_0\,
      O => \r_Clk_Count[2]_i_4_n_0\
    );
\r_Clk_Count[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_SM_Main_reg_n_0_[1]\,
      O => \r_Clk_Count[2]_i_5_n_0\
    );
\r_Clk_Count[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909090909090FF00"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[3]\,
      I1 => \r_Clk_Count[3]_i_2_n_0\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[3]_i_1__0_n_0\
    );
\r_Clk_Count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[2]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      I2 => \r_Clk_Count_reg_n_0_[1]\,
      O => \r_Clk_Count[3]_i_2_n_0\
    );
\r_Clk_Count[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909090909090FF00"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[4]\,
      I1 => \r_Clk_Count[4]_i_2_n_0\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[4]_i_1__0_n_0\
    );
\r_Clk_Count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      I2 => \r_Clk_Count_reg_n_0_[2]\,
      I3 => \r_Clk_Count_reg_n_0_[3]\,
      O => \r_Clk_Count[4]_i_2_n_0\
    );
\r_Clk_Count[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444444F0"
    )
        port map (
      I0 => \r_Clk_Count[5]_i_2_n_0\,
      I1 => \r_RX_Byte[7]_i_3_n_0\,
      I2 => r_RX_Data,
      I3 => \r_SM_Main_reg_n_0_[1]\,
      I4 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[5]_i_1__0_n_0\
    );
\r_Clk_Count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555555"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[5]\,
      I1 => \r_Clk_Count_reg_n_0_[4]\,
      I2 => \r_Clk_Count_reg_n_0_[1]\,
      I3 => \r_Clk_Count_reg_n_0_[0]\,
      I4 => \r_Clk_Count_reg_n_0_[2]\,
      I5 => \r_Clk_Count_reg_n_0_[3]\,
      O => \r_Clk_Count[5]_i_2_n_0\
    );
\r_Clk_Count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909090909090FF00"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[6]\,
      I1 => \r_Clk_Count[6]_i_2__0_n_0\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[6]_i_1__0_n_0\
    );
\r_Clk_Count[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[4]\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[3]\,
      I3 => \r_Clk_Count_reg_n_0_[2]\,
      I4 => \r_Clk_Count_reg_n_0_[0]\,
      I5 => \r_Clk_Count_reg_n_0_[1]\,
      O => \r_Clk_Count[6]_i_2__0_n_0\
    );
\r_Clk_Count[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909090909090FF00"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[7]\,
      I1 => \r_Clk_Count[7]_i_2_n_0\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[7]_i_1__0_n_0\
    );
\r_Clk_Count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \r_Clk_Count[4]_i_2_n_0\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[4]\,
      I3 => \r_Clk_Count_reg_n_0_[6]\,
      O => \r_Clk_Count[7]_i_2_n_0\
    );
\r_Clk_Count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606060606060FF00"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count[8]_i_2__0_n_0\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[7]\,
      I1 => \r_Clk_Count_reg_n_0_[6]\,
      I2 => \r_Clk_Count_reg_n_0_[4]\,
      I3 => \r_Clk_Count_reg_n_0_[5]\,
      I4 => \r_Clk_Count[4]_i_2_n_0\,
      O => \r_Clk_Count[8]_i_2__0_n_0\
    );
\r_Clk_Count[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      O => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5551555555555555"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_Clk_Count[9]_i_4_n_0\,
      I2 => \r_Clk_Count[9]_i_5_n_0\,
      I3 => \r_SM_Main_reg_n_0_[1]\,
      I4 => r_RX_Data,
      I5 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_Clk_Count[9]_i_2__0_n_0\
    );
\r_Clk_Count[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"282828282828FF00"
    )
        port map (
      I0 => \r_RX_Byte[7]_i_3_n_0\,
      I1 => \r_Clk_Count_reg_n_0_[9]\,
      I2 => \r_Clk_Count[9]_i_6_n_0\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main_reg_n_0_[1]\,
      I5 => \r_SM_Main[1]_i_2_n_0\,
      O => \r_Clk_Count[9]_i_3__0_n_0\
    );
\r_Clk_Count[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[3]\,
      I1 => \r_Clk_Count_reg_n_0_[4]\,
      I2 => \r_Clk_Count_reg_n_0_[5]\,
      I3 => \r_Clk_Count_reg_n_0_[6]\,
      O => \r_Clk_Count[9]_i_4_n_0\
    );
\r_Clk_Count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[0]\,
      I1 => \r_Clk_Count_reg_n_0_[1]\,
      I2 => \r_Clk_Count_reg_n_0_[2]\,
      I3 => \r_Clk_Count_reg_n_0_[7]\,
      I4 => \r_Clk_Count_reg_n_0_[9]\,
      I5 => \r_Clk_Count_reg_n_0_[8]\,
      O => \r_Clk_Count[9]_i_5_n_0\
    );
\r_Clk_Count[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \r_Clk_Count[4]_i_2_n_0\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[4]\,
      I3 => \r_Clk_Count_reg_n_0_[6]\,
      I4 => \r_Clk_Count_reg_n_0_[7]\,
      I5 => \r_Clk_Count_reg_n_0_[8]\,
      O => \r_Clk_Count[9]_i_6_n_0\
    );
\r_Clk_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Clk_Count[0]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[0]\,
      R => '0'
    );
\r_Clk_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[1]_i_1__0_n_0\,
      Q => \r_Clk_Count_reg_n_0_[1]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Clk_Count[2]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[2]\,
      R => '0'
    );
\r_Clk_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[3]_i_1__0_n_0\,
      Q => \r_Clk_Count_reg_n_0_[3]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[4]_i_1__0_n_0\,
      Q => \r_Clk_Count_reg_n_0_[4]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[5]_i_1__0_n_0\,
      Q => \r_Clk_Count_reg_n_0_[5]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[6]_i_1__0_n_0\,
      Q => \r_Clk_Count_reg_n_0_[6]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[7]_i_1__0_n_0\,
      Q => \r_Clk_Count_reg_n_0_[7]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[8]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[8]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_Clk_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2__0_n_0\,
      D => \r_Clk_Count[9]_i_3__0_n_0\,
      Q => \r_Clk_Count_reg_n_0_[9]\,
      R => \r_Clk_Count[9]_i_1__0_n_0\
    );
\r_RX_Byte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[4]_i_2_n_0\,
      I2 => \r_RX_Byte[4]_i_3_n_0\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_RX_Byte[7]_i_3_n_0\,
      I5 => \^o_serial_out\(0),
      O => \r_RX_Byte[0]_i_1_n_0\
    );
\r_RX_Byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[1]_i_2_n_0\,
      I2 => \r_RX_Byte[4]_i_3_n_0\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_RX_Byte[7]_i_3_n_0\,
      I5 => \^o_serial_out\(1),
      O => \r_RX_Byte[1]_i_1_n_0\
    );
\r_RX_Byte[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      O => \r_RX_Byte[1]_i_2_n_0\
    );
\r_RX_Byte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[6]_i_2_n_0\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \^o_serial_out\(2),
      O => \r_RX_Byte[2]_i_1_n_0\
    );
\r_RX_Byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[3]_i_2_n_0\,
      I2 => \r_RX_Byte[4]_i_3_n_0\,
      I3 => \r_RX_Byte[7]_i_3_n_0\,
      I4 => \r_Bit_Index_reg_n_0_[2]\,
      I5 => \^o_serial_out\(3),
      O => \r_RX_Byte[3]_i_1_n_0\
    );
\r_RX_Byte[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      O => \r_RX_Byte[3]_i_2_n_0\
    );
\r_RX_Byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[7]_i_3_n_0\,
      I2 => \r_Bit_Index_reg_n_0_[2]\,
      I3 => \r_RX_Byte[4]_i_2_n_0\,
      I4 => \r_RX_Byte[4]_i_3_n_0\,
      I5 => \^o_serial_out\(4),
      O => \r_RX_Byte[4]_i_1_n_0\
    );
\r_RX_Byte[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      O => \r_RX_Byte[4]_i_2_n_0\
    );
\r_RX_Byte[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_SM_Main_reg_n_0_[2]\,
      O => \r_RX_Byte[4]_i_3_n_0\
    );
\r_RX_Byte[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[5]_i_2_n_0\,
      I2 => \r_RX_Byte[5]_i_3_n_0\,
      I3 => \^o_serial_out\(5),
      O => \r_RX_Byte[5]_i_1_n_0\
    );
\r_RX_Byte[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000000000000"
    )
        port map (
      I0 => \r_RX_Byte[7]_i_5_n_0\,
      I1 => \r_Clk_Count_reg_n_0_[6]\,
      I2 => \r_Clk_Count_reg_n_0_[5]\,
      I3 => \r_Clk_Count_reg_n_0_[7]\,
      I4 => \r_Clk_Count_reg_n_0_[9]\,
      I5 => \r_Clk_Count_reg_n_0_[8]\,
      O => \r_RX_Byte[5]_i_2_n_0\
    );
\r_RX_Byte[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[1]\,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \r_SM_Main_reg_n_0_[0]\,
      I5 => \r_SM_Main_reg_n_0_[2]\,
      O => \r_RX_Byte[5]_i_3_n_0\
    );
\r_RX_Byte[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_RX_Byte[6]_i_2_n_0\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      I4 => \^o_serial_out\(6),
      O => \r_RX_Byte[6]_i_1_n_0\
    );
\r_RX_Byte[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[0]\,
      O => \r_RX_Byte[6]_i_2_n_0\
    );
\r_RX_Byte[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => r_RX_Data,
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => \r_RX_Byte[7]_i_2_n_0\,
      I3 => \r_RX_Byte[7]_i_3_n_0\,
      I4 => \^o_serial_out\(7),
      O => \r_RX_Byte[7]_i_1_n_0\
    );
\r_RX_Byte[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[0]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_Bit_Index_reg_n_0_[2]\,
      O => \r_RX_Byte[7]_i_2_n_0\
    );
\r_RX_Byte[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDFDFDFDFDFDF"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[1]\,
      I1 => \r_RX_Byte[7]_i_4_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[7]\,
      I3 => \r_Clk_Count_reg_n_0_[5]\,
      I4 => \r_Clk_Count_reg_n_0_[6]\,
      I5 => \r_RX_Byte[7]_i_5_n_0\,
      O => \r_RX_Byte[7]_i_3_n_0\
    );
\r_RX_Byte[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count_reg_n_0_[9]\,
      O => \r_RX_Byte[7]_i_4_n_0\
    );
\r_RX_Byte[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[1]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      I2 => \r_Clk_Count_reg_n_0_[2]\,
      I3 => \r_Clk_Count_reg_n_0_[3]\,
      I4 => \r_Clk_Count_reg_n_0_[4]\,
      O => \r_RX_Byte[7]_i_5_n_0\
    );
\r_RX_Byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[0]_i_1_n_0\,
      Q => \^o_serial_out\(0),
      R => '0'
    );
\r_RX_Byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[1]_i_1_n_0\,
      Q => \^o_serial_out\(1),
      R => '0'
    );
\r_RX_Byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[2]_i_1_n_0\,
      Q => \^o_serial_out\(2),
      R => '0'
    );
\r_RX_Byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[3]_i_1_n_0\,
      Q => \^o_serial_out\(3),
      R => '0'
    );
\r_RX_Byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[4]_i_1_n_0\,
      Q => \^o_serial_out\(4),
      R => '0'
    );
\r_RX_Byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[5]_i_1_n_0\,
      Q => \^o_serial_out\(5),
      R => '0'
    );
\r_RX_Byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[6]_i_1_n_0\,
      Q => \^o_serial_out\(6),
      R => '0'
    );
\r_RX_Byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_RX_Byte[7]_i_1_n_0\,
      Q => \^o_serial_out\(7),
      R => '0'
    );
r_RX_Data_R_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => i_UART_Rx,
      Q => r_RX_Data_R,
      R => '0'
    );
r_RX_Data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => r_RX_Data_R,
      Q => r_RX_Data,
      R => '0'
    );
\r_SM_Main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544444455445444"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main[0]_i_2_n_0\,
      I2 => \r_RX_Byte[5]_i_2_n_0\,
      I3 => \r_SM_Main_reg_n_0_[1]\,
      I4 => \r_SM_Main_reg_n_0_[0]\,
      I5 => \r_RX_Byte[7]_i_2_n_0\,
      O => \r_SM_Main[0]_i_1_n_0\
    );
\r_SM_Main[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D000D0F"
    )
        port map (
      I0 => \r_Clk_Count[9]_i_4_n_0\,
      I1 => \r_Clk_Count[9]_i_5_n_0\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => \r_SM_Main_reg_n_0_[0]\,
      I4 => r_RX_Data,
      O => \r_SM_Main[0]_i_2_n_0\
    );
\r_SM_Main[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202230303030"
    )
        port map (
      I0 => \r_RX_Byte[7]_i_3_n_0\,
      I1 => \r_SM_Main_reg_n_0_[2]\,
      I2 => \r_SM_Main_reg_n_0_[1]\,
      I3 => r_RX_Data,
      I4 => \r_SM_Main[1]_i_2_n_0\,
      I5 => \r_SM_Main_reg_n_0_[0]\,
      O => \r_SM_Main[1]_i_1_n_0\
    );
\r_SM_Main[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \r_Clk_Count[9]_i_5_n_0\,
      I1 => \r_Clk_Count_reg_n_0_[6]\,
      I2 => \r_Clk_Count_reg_n_0_[5]\,
      I3 => \r_Clk_Count_reg_n_0_[4]\,
      I4 => \r_Clk_Count_reg_n_0_[3]\,
      O => \r_SM_Main[1]_i_2_n_0\
    );
\r_SM_Main[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_SM_Main_reg_n_0_[2]\,
      I1 => \r_SM_Main_reg_n_0_[0]\,
      I2 => \r_RX_Byte[7]_i_3_n_0\,
      O => \r_SM_Main[2]_i_1_n_0\
    );
\r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_SM_Main[0]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[0]\,
      R => '0'
    );
\r_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_SM_Main[1]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[1]\,
      R => '0'
    );
\r_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_SM_Main[2]_i_1_n_0\,
      Q => \r_SM_Main_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_fifo2Uart_0_1_UART_TX is
  port (
    o_UART_Tx : out STD_LOGIC;
    o_fifo_rd_en_reg : out STD_LOGIC;
    \FSM_sequential_States_tx_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_States_tx_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_States_tx_reg[0]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    o_fifo_rd_en : in STD_LOGIC;
    U_tx_dv_reg : in STD_LOGIC;
    \counter_delay_tx_reg[5]\ : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_fifo_empty : in STD_LOGIC;
    i_fifo_dout : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_fifo2Uart_0_1_UART_TX : entity is "UART_TX";
end zsys_fifo2Uart_0_1_UART_TX;

architecture STRUCTURE of zsys_fifo2Uart_0_1_UART_TX is
  signal \FSM_sequential_States_tx[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_SM_Main[2]_i_4_n_0\ : STD_LOGIC;
  signal U_tx_active : STD_LOGIC;
  signal o_TX_Active_i_1_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_1_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_3_n_0 : STD_LOGIC;
  signal o_TX_Serial_i_4_n_0 : STD_LOGIC;
  signal o_TX_Serial_reg_i_2_n_0 : STD_LOGIC;
  signal \^o_uart_tx\ : STD_LOGIC;
  signal o_fifo_rd_en_i_2_n_0 : STD_LOGIC;
  signal \r_Bit_Index[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Bit_Index[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Bit_Index_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_Clk_Count[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_Clk_Count_reg_n_0_[9]\ : STD_LOGIC;
  signal r_SM_Main : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of r_SM_Main : signal is "yes";
  signal r_TX_Data : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_TX_Data_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_SM_Main[0]_i_2\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[0]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_r_SM_Main_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[1]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute KEEP of \FSM_sequential_r_SM_Main_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_SM_Main_reg[2]\ : label is "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_cleanup:100,s_tx_stop_bit:011";
  attribute KEEP of \FSM_sequential_r_SM_Main_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \r_Bit_Index[2]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_Clk_Count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_Clk_Count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_Clk_Count[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_Clk_Count[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_Clk_Count[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_Clk_Count[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_Clk_Count[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_Clk_Count[9]_i_3\ : label is "soft_lutpair9";
begin
  o_UART_Tx <= \^o_uart_tx\;
\FSM_sequential_States_tx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1455FFFF14550000"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => o_fifo_rd_en_i_2_n_0,
      I4 => \FSM_sequential_States_tx[0]_i_2_n_0\,
      I5 => in0(0),
      O => \FSM_sequential_States_tx_reg[0]\
    );
\FSM_sequential_States_tx[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F2F1F23"
    )
        port map (
      I0 => U_tx_active,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \counter_delay_tx_reg[5]\,
      O => \FSM_sequential_States_tx[0]_i_2_n_0\
    );
\FSM_sequential_States_tx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3F0E3FC03200320"
    )
        port map (
      I0 => U_tx_active,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \counter_delay_tx_reg[5]\,
      I5 => in0(1),
      O => \FSM_sequential_States_tx_reg[1]\
    );
\FSM_sequential_States_tx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0DCF0DC100C1000"
    )
        port map (
      I0 => U_tx_active,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \counter_delay_tx_reg[5]\,
      I5 => in0(2),
      O => \FSM_sequential_States_tx_reg[2]\
    );
\FSM_sequential_r_SM_Main[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5005540450005404"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => U_tx_dv_reg,
      I2 => r_SM_Main(0),
      I3 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I4 => r_SM_Main(1),
      I5 => \FSM_sequential_r_SM_Main[0]_i_2_n_0\,
      O => \FSM_sequential_r_SM_Main[0]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[2]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      I2 => \r_Bit_Index_reg_n_0_[0]\,
      O => \FSM_sequential_r_SM_Main[0]_i_2_n_0\
    );
\FSM_sequential_r_SM_Main[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5104"
    )
        port map (
      I0 => r_SM_Main(2),
      I1 => r_SM_Main(0),
      I2 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I3 => r_SM_Main(1),
      O => \FSM_sequential_r_SM_Main[1]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(2),
      I3 => r_SM_Main(1),
      O => \FSM_sequential_r_SM_Main[2]_i_1_n_0\
    );
\FSM_sequential_r_SM_Main[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F00FFDFDFFFFF"
    )
        port map (
      I0 => \FSM_sequential_r_SM_Main[2]_i_3_n_0\,
      I1 => \r_Clk_Count[6]_i_2_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[5]\,
      I3 => \r_Clk_Count_reg_n_0_[7]\,
      I4 => \r_Clk_Count_reg_n_0_[6]\,
      I5 => \FSM_sequential_r_SM_Main[2]_i_4_n_0\,
      O => \FSM_sequential_r_SM_Main[2]_i_2_n_0\
    );
\FSM_sequential_r_SM_Main[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[8]\,
      I1 => \r_Clk_Count_reg_n_0_[9]\,
      O => \FSM_sequential_r_SM_Main[2]_i_3_n_0\
    );
\FSM_sequential_r_SM_Main[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[9]\,
      I1 => \r_Clk_Count_reg_n_0_[8]\,
      I2 => \r_Clk_Count_reg_n_0_[2]\,
      I3 => \r_Clk_Count_reg_n_0_[7]\,
      I4 => \r_Clk_Count_reg_n_0_[3]\,
      I5 => \r_Clk_Count_reg_n_0_[4]\,
      O => \FSM_sequential_r_SM_Main[2]_i_4_n_0\
    );
\FSM_sequential_r_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[0]_i_1_n_0\,
      Q => r_SM_Main(0),
      R => '0'
    );
\FSM_sequential_r_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[1]_i_1_n_0\,
      Q => r_SM_Main(1),
      R => '0'
    );
\FSM_sequential_r_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_r_SM_Main[2]_i_1_n_0\,
      Q => r_SM_Main(2),
      R => '0'
    );
o_TX_Active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE04"
    )
        port map (
      I0 => r_SM_Main(1),
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(2),
      I3 => U_tx_active,
      O => o_TX_Active_i_1_n_0
    );
o_TX_Active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_Active_i_1_n_0,
      Q => U_tx_active,
      R => '0'
    );
o_TX_Serial_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE500E5"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => o_TX_Serial_reg_i_2_n_0,
      I2 => r_SM_Main(1),
      I3 => r_SM_Main(2),
      I4 => \^o_uart_tx\,
      O => o_TX_Serial_i_1_n_0
    );
o_TX_Serial_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_TX_Data_reg_n_0_[3]\,
      I1 => \r_TX_Data_reg_n_0_[2]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_TX_Data_reg_n_0_[1]\,
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => \r_TX_Data_reg_n_0_[0]\,
      O => o_TX_Serial_i_3_n_0
    );
o_TX_Serial_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_TX_Data_reg_n_0_[7]\,
      I1 => \r_TX_Data_reg_n_0_[6]\,
      I2 => \r_Bit_Index_reg_n_0_[1]\,
      I3 => \r_TX_Data_reg_n_0_[5]\,
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      I5 => \r_TX_Data_reg_n_0_[4]\,
      O => o_TX_Serial_i_4_n_0
    );
o_TX_Serial_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_TX_Serial_i_1_n_0,
      Q => \^o_uart_tx\,
      R => '0'
    );
o_TX_Serial_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => o_TX_Serial_i_3_n_0,
      I1 => o_TX_Serial_i_4_n_0,
      O => o_TX_Serial_reg_i_2_n_0,
      S => \r_Bit_Index_reg_n_0_[2]\
    );
o_fifo_rd_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDDFFD500000005"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => o_fifo_rd_en_i_2_n_0,
      I3 => rst,
      I4 => \out\(1),
      I5 => o_fifo_rd_en,
      O => o_fifo_rd_en_reg
    );
o_fifo_rd_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \out\(2),
      I1 => i_fifo_empty,
      I2 => U_tx_active,
      O => o_fifo_rd_en_i_2_n_0
    );
\r_Bit_Index[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0010"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_SM_Main(2),
      I2 => r_SM_Main(1),
      I3 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I4 => \r_Bit_Index_reg_n_0_[0]\,
      O => \r_Bit_Index[0]_i_1_n_0\
    );
\r_Bit_Index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFDFC00000200"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(2),
      I3 => r_SM_Main(1),
      I4 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I5 => \r_Bit_Index_reg_n_0_[1]\,
      O => \r_Bit_Index[1]_i_1_n_0\
    );
\r_Bit_Index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFEFC00000100"
    )
        port map (
      I0 => \r_Bit_Index[2]_i_2_n_0\,
      I1 => r_SM_Main(0),
      I2 => r_SM_Main(2),
      I3 => r_SM_Main(1),
      I4 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I5 => \r_Bit_Index_reg_n_0_[2]\,
      O => \r_Bit_Index[2]_i_1_n_0\
    );
\r_Bit_Index[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_Bit_Index_reg_n_0_[0]\,
      I1 => \r_Bit_Index_reg_n_0_[1]\,
      O => \r_Bit_Index[2]_i_2_n_0\
    );
\r_Bit_Index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[0]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[0]\,
      R => '0'
    );
\r_Bit_Index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[1]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[1]\,
      R => '0'
    );
\r_Bit_Index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Bit_Index[2]_i_1_n_0\,
      Q => \r_Bit_Index_reg_n_0_[2]\,
      R => '0'
    );
\r_Clk_Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[0]_i_1_n_0\
    );
\r_Clk_Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[0]\,
      I1 => \r_Clk_Count_reg_n_0_[1]\,
      O => \r_Clk_Count[1]_i_1_n_0\
    );
\r_Clk_Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[2]\,
      I1 => \r_Clk_Count_reg_n_0_[1]\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      O => \r_Clk_Count[2]_i_1_n_0\
    );
\r_Clk_Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[3]\,
      I1 => \r_Clk_Count_reg_n_0_[2]\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      I3 => \r_Clk_Count_reg_n_0_[1]\,
      O => \r_Clk_Count[3]_i_1_n_0\
    );
\r_Clk_Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[4]\,
      I1 => \r_Clk_Count_reg_n_0_[3]\,
      I2 => \r_Clk_Count_reg_n_0_[1]\,
      I3 => \r_Clk_Count_reg_n_0_[0]\,
      I4 => \r_Clk_Count_reg_n_0_[2]\,
      O => \r_Clk_Count[4]_i_1_n_0\
    );
\r_Clk_Count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[5]\,
      I1 => \r_Clk_Count_reg_n_0_[2]\,
      I2 => \r_Clk_Count_reg_n_0_[0]\,
      I3 => \r_Clk_Count_reg_n_0_[1]\,
      I4 => \r_Clk_Count_reg_n_0_[3]\,
      I5 => \r_Clk_Count_reg_n_0_[4]\,
      O => \r_Clk_Count[5]_i_1_n_0\
    );
\r_Clk_Count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[6]\,
      I1 => \r_Clk_Count_reg_n_0_[5]\,
      I2 => \r_Clk_Count_reg_n_0_[4]\,
      I3 => \r_Clk_Count_reg_n_0_[3]\,
      I4 => \r_Clk_Count[6]_i_2_n_0\,
      I5 => \r_Clk_Count_reg_n_0_[2]\,
      O => \r_Clk_Count[6]_i_1_n_0\
    );
\r_Clk_Count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[0]\,
      I1 => \r_Clk_Count_reg_n_0_[1]\,
      O => \r_Clk_Count[6]_i_2_n_0\
    );
\r_Clk_Count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[7]\,
      I1 => \r_Clk_Count[9]_i_4__0_n_0\,
      I2 => \r_Clk_Count_reg_n_0_[6]\,
      O => \r_Clk_Count[7]_i_1_n_0\
    );
\r_Clk_Count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA800000000A8"
    )
        port map (
      I0 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I1 => r_SM_Main(1),
      I2 => r_SM_Main(0),
      I3 => \r_Clk_Count[8]_i_2_n_0\,
      I4 => r_SM_Main(2),
      I5 => \r_Clk_Count_reg_n_0_[8]\,
      O => \r_Clk_Count[8]_i_1_n_0\
    );
\r_Clk_Count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \r_Clk_Count[9]_i_4__0_n_0\,
      I1 => \r_Clk_Count_reg_n_0_[6]\,
      I2 => \r_Clk_Count_reg_n_0_[7]\,
      O => \r_Clk_Count[8]_i_2_n_0\
    );
\r_Clk_Count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001F"
    )
        port map (
      I0 => r_SM_Main(0),
      I1 => r_SM_Main(1),
      I2 => \FSM_sequential_r_SM_Main[2]_i_2_n_0\,
      I3 => r_SM_Main(2),
      O => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_SM_Main(2),
      O => \r_Clk_Count[9]_i_2_n_0\
    );
\r_Clk_Count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[9]\,
      I1 => \r_Clk_Count_reg_n_0_[8]\,
      I2 => \r_Clk_Count[9]_i_4__0_n_0\,
      I3 => \r_Clk_Count_reg_n_0_[6]\,
      I4 => \r_Clk_Count_reg_n_0_[7]\,
      O => \r_Clk_Count[9]_i_3_n_0\
    );
\r_Clk_Count[9]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_Clk_Count_reg_n_0_[2]\,
      I1 => \r_Clk_Count_reg_n_0_[0]\,
      I2 => \r_Clk_Count_reg_n_0_[1]\,
      I3 => \r_Clk_Count_reg_n_0_[3]\,
      I4 => \r_Clk_Count_reg_n_0_[4]\,
      I5 => \r_Clk_Count_reg_n_0_[5]\,
      O => \r_Clk_Count[9]_i_4__0_n_0\
    );
\r_Clk_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[0]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[0]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[1]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[1]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[2]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[2]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[3]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[3]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[4]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[4]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[5]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[5]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[6]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[6]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[7]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[7]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_Clk_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_Clk_Count[8]_i_1_n_0\,
      Q => \r_Clk_Count_reg_n_0_[8]\,
      R => '0'
    );
\r_Clk_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \r_Clk_Count[9]_i_2_n_0\,
      D => \r_Clk_Count[9]_i_3_n_0\,
      Q => \r_Clk_Count_reg_n_0_[9]\,
      R => \r_Clk_Count[9]_i_1_n_0\
    );
\r_TX_Data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => U_tx_dv_reg,
      I1 => r_SM_Main(1),
      I2 => r_SM_Main(2),
      I3 => r_SM_Main(0),
      O => r_TX_Data
    );
\r_TX_Data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(0),
      Q => \r_TX_Data_reg_n_0_[0]\,
      R => '0'
    );
\r_TX_Data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(1),
      Q => \r_TX_Data_reg_n_0_[1]\,
      R => '0'
    );
\r_TX_Data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(2),
      Q => \r_TX_Data_reg_n_0_[2]\,
      R => '0'
    );
\r_TX_Data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(3),
      Q => \r_TX_Data_reg_n_0_[3]\,
      R => '0'
    );
\r_TX_Data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(4),
      Q => \r_TX_Data_reg_n_0_[4]\,
      R => '0'
    );
\r_TX_Data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(5),
      Q => \r_TX_Data_reg_n_0_[5]\,
      R => '0'
    );
\r_TX_Data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(6),
      Q => \r_TX_Data_reg_n_0_[6]\,
      R => '0'
    );
\r_TX_Data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => r_TX_Data,
      D => i_fifo_dout(7),
      Q => \r_TX_Data_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_fifo2Uart_0_1_fifo2Uart is
  port (
    o_UART_Tx : out STD_LOGIC;
    end_one_byte : out STD_LOGIC;
    o_fifo_rd_en : out STD_LOGIC;
    o_rst_fifo : out STD_LOGIC;
    o_serial_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_UART_Rx : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_fifo_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fifo_empty : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_fifo2Uart_0_1_fifo2Uart : entity is "fifo2Uart";
end zsys_fifo2Uart_0_1_fifo2Uart;

architecture STRUCTURE of zsys_fifo2Uart_0_1_fifo2Uart is
  signal \FSM_sequential_States_tx[2]_i_2_n_0\ : STD_LOGIC;
  signal \States_tx__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \States_tx__0\ : signal is "yes";
  signal U_tx_dv_i_1_n_0 : STD_LOGIC;
  signal U_tx_dv_reg_n_0 : STD_LOGIC;
  signal counter_delay_tx : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal counter_delay_tx0 : STD_LOGIC;
  signal \counter_delay_tx[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_delay_tx[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_delay_tx[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_delay_tx[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_delay_tx[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_delay_tx[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter_delay_tx[5]_i_3_n_0\ : STD_LOGIC;
  signal \counter_delay_tx[5]_i_4_n_0\ : STD_LOGIC;
  signal \^end_one_byte\ : STD_LOGIC;
  signal end_one_byte_i_1_n_0 : STD_LOGIC;
  signal \^o_fifo_rd_en\ : STD_LOGIC;
  signal \^o_rst_fifo\ : STD_LOGIC;
  signal o_rst_fifo_i_1_n_0 : STD_LOGIC;
  signal uart_tx_inst_n_1 : STD_LOGIC;
  signal uart_tx_inst_n_2 : STD_LOGIC;
  signal uart_tx_inst_n_3 : STD_LOGIC;
  signal uart_tx_inst_n_4 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_States_tx_reg[0]\ : label is "active_tx:010,sending:011,delay_next_state:100,done_byte:101,done_event:110,idle:000,read_one:001";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_States_tx_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_States_tx_reg[1]\ : label is "active_tx:010,sending:011,delay_next_state:100,done_byte:101,done_event:110,idle:000,read_one:001";
  attribute KEEP of \FSM_sequential_States_tx_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_States_tx_reg[2]\ : label is "active_tx:010,sending:011,delay_next_state:100,done_byte:101,done_event:110,idle:000,read_one:001";
  attribute KEEP of \FSM_sequential_States_tx_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_delay_tx[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter_delay_tx[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter_delay_tx[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter_delay_tx[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter_delay_tx[5]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter_delay_tx[5]_i_4\ : label is "soft_lutpair16";
  attribute x_interface_info : string;
  attribute x_interface_info of o_fifo_rd_en_reg : label is "xilinx.com:interface:fifo_read:1.0 F_read RD_EN";
begin
  end_one_byte <= \^end_one_byte\;
  o_fifo_rd_en <= \^o_fifo_rd_en\;
  o_rst_fifo <= \^o_rst_fifo\;
\FSM_sequential_States_tx[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => counter_delay_tx(5),
      I1 => counter_delay_tx(4),
      I2 => counter_delay_tx(0),
      I3 => counter_delay_tx(1),
      I4 => counter_delay_tx(2),
      I5 => counter_delay_tx(3),
      O => \FSM_sequential_States_tx[2]_i_2_n_0\
    );
\FSM_sequential_States_tx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => uart_tx_inst_n_4,
      Q => \States_tx__0\(0)
    );
\FSM_sequential_States_tx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => uart_tx_inst_n_3,
      Q => \States_tx__0\(1)
    );
\FSM_sequential_States_tx_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => uart_tx_inst_n_2,
      Q => \States_tx__0\(2)
    );
UART_RX_inst: entity work.zsys_fifo2Uart_0_1_UART_RX
     port map (
      clk => clk,
      i_UART_Rx => i_UART_Rx,
      o_serial_out(7 downto 0) => o_serial_out(7 downto 0)
    );
U_tx_dv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70006"
    )
        port map (
      I0 => \States_tx__0\(0),
      I1 => \States_tx__0\(1),
      I2 => \States_tx__0\(2),
      I3 => rst,
      I4 => U_tx_dv_reg_n_0,
      O => U_tx_dv_i_1_n_0
    );
U_tx_dv_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_tx_dv_i_1_n_0,
      Q => U_tx_dv_reg_n_0,
      R => '0'
    );
\counter_delay_tx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_delay_tx[5]_i_3_n_0\,
      I1 => counter_delay_tx(0),
      O => \counter_delay_tx[0]_i_1_n_0\
    );
\counter_delay_tx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \counter_delay_tx[5]_i_3_n_0\,
      I1 => counter_delay_tx(1),
      I2 => counter_delay_tx(0),
      O => \counter_delay_tx[1]_i_1_n_0\
    );
\counter_delay_tx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \counter_delay_tx[5]_i_3_n_0\,
      I1 => counter_delay_tx(0),
      I2 => counter_delay_tx(1),
      I3 => counter_delay_tx(2),
      O => \counter_delay_tx[2]_i_1_n_0\
    );
\counter_delay_tx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \counter_delay_tx[5]_i_3_n_0\,
      I1 => counter_delay_tx(1),
      I2 => counter_delay_tx(0),
      I3 => counter_delay_tx(2),
      I4 => counter_delay_tx(3),
      O => \counter_delay_tx[3]_i_1_n_0\
    );
\counter_delay_tx[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \counter_delay_tx[5]_i_3_n_0\,
      I1 => counter_delay_tx(4),
      I2 => counter_delay_tx(1),
      I3 => counter_delay_tx(0),
      I4 => counter_delay_tx(2),
      I5 => counter_delay_tx(3),
      O => \counter_delay_tx[4]_i_1_n_0\
    );
\counter_delay_tx[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \States_tx__0\(2),
      I1 => \States_tx__0\(0),
      I2 => \States_tx__0\(1),
      I3 => rst,
      O => counter_delay_tx0
    );
\counter_delay_tx[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"28A0"
    )
        port map (
      I0 => \counter_delay_tx[5]_i_3_n_0\,
      I1 => \counter_delay_tx[5]_i_4_n_0\,
      I2 => counter_delay_tx(5),
      I3 => counter_delay_tx(4),
      O => \counter_delay_tx[5]_i_2_n_0\
    );
\counter_delay_tx[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \States_tx__0\(1),
      I1 => \States_tx__0\(2),
      I2 => \FSM_sequential_States_tx[2]_i_2_n_0\,
      O => \counter_delay_tx[5]_i_3_n_0\
    );
\counter_delay_tx[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counter_delay_tx(3),
      I1 => counter_delay_tx(2),
      I2 => counter_delay_tx(0),
      I3 => counter_delay_tx(1),
      O => \counter_delay_tx[5]_i_4_n_0\
    );
\counter_delay_tx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_delay_tx0,
      D => \counter_delay_tx[0]_i_1_n_0\,
      Q => counter_delay_tx(0),
      R => '0'
    );
\counter_delay_tx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_delay_tx0,
      D => \counter_delay_tx[1]_i_1_n_0\,
      Q => counter_delay_tx(1),
      R => '0'
    );
\counter_delay_tx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_delay_tx0,
      D => \counter_delay_tx[2]_i_1_n_0\,
      Q => counter_delay_tx(2),
      R => '0'
    );
\counter_delay_tx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_delay_tx0,
      D => \counter_delay_tx[3]_i_1_n_0\,
      Q => counter_delay_tx(3),
      R => '0'
    );
\counter_delay_tx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_delay_tx0,
      D => \counter_delay_tx[4]_i_1_n_0\,
      Q => counter_delay_tx(4),
      R => '0'
    );
\counter_delay_tx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_delay_tx0,
      D => \counter_delay_tx[5]_i_2_n_0\,
      Q => counter_delay_tx(5),
      R => '0'
    );
end_one_byte_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFA0008"
    )
        port map (
      I0 => \States_tx__0\(2),
      I1 => \States_tx__0\(0),
      I2 => \States_tx__0\(1),
      I3 => rst,
      I4 => \^end_one_byte\,
      O => end_one_byte_i_1_n_0
    );
end_one_byte_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => end_one_byte_i_1_n_0,
      Q => \^end_one_byte\,
      R => '0'
    );
o_fifo_rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uart_tx_inst_n_1,
      Q => \^o_fifo_rd_en\,
      R => '0'
    );
o_rst_fifo_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^o_rst_fifo\,
      I1 => \States_tx__0\(1),
      I2 => \States_tx__0\(0),
      I3 => \States_tx__0\(2),
      O => o_rst_fifo_i_1_n_0
    );
o_rst_fifo_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => o_rst_fifo_i_1_n_0,
      PRE => rst,
      Q => \^o_rst_fifo\
    );
uart_tx_inst: entity work.zsys_fifo2Uart_0_1_UART_TX
     port map (
      \FSM_sequential_States_tx_reg[0]\ => uart_tx_inst_n_4,
      \FSM_sequential_States_tx_reg[1]\ => uart_tx_inst_n_3,
      \FSM_sequential_States_tx_reg[2]\ => uart_tx_inst_n_2,
      U_tx_dv_reg => U_tx_dv_reg_n_0,
      clk => clk,
      \counter_delay_tx_reg[5]\ => \FSM_sequential_States_tx[2]_i_2_n_0\,
      i_fifo_dout(7 downto 0) => i_fifo_dout(7 downto 0),
      i_fifo_empty => i_fifo_empty,
      in0(2 downto 0) => \States_tx__0\(2 downto 0),
      o_UART_Tx => o_UART_Tx,
      o_fifo_rd_en => \^o_fifo_rd_en\,
      o_fifo_rd_en_reg => uart_tx_inst_n_1,
      \out\(2 downto 0) => \States_tx__0\(2 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_fifo2Uart_0_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    i_f_wr_en : in STD_LOGIC;
    o_fifo_full : out STD_LOGIC;
    i_ascii : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_UART_Tx : out STD_LOGIC;
    i_UART_Rx : in STD_LOGIC;
    end_one_byte : out STD_LOGIC;
    o_serial_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fifo_wr_en : out STD_LOGIC;
    o_fifo_rd_en : out STD_LOGIC;
    o_rst_fifo : out STD_LOGIC;
    o_fifo_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fifo_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fifo_empty : in STD_LOGIC;
    i_fifo_full : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_fifo2Uart_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_fifo2Uart_0_1 : entity is "zsys_fifo2Uart_0_1,fifo2Uart,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_fifo2Uart_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_fifo2Uart_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_fifo2Uart_0_1 : entity is "fifo2Uart,Vivado 2018.2";
end zsys_fifo2Uart_0_1;

architecture STRUCTURE of zsys_fifo2Uart_0_1 is
  signal \^i_ascii\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^i_fifo_full\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of i_fifo_empty : signal is "xilinx.com:interface:fifo_read:1.0 F_read EMPTY";
  attribute x_interface_info of i_fifo_full : signal is "xilinx.com:interface:fifo_write:1.0 F_write FULL";
  attribute x_interface_info of o_fifo_rd_en : signal is "xilinx.com:interface:fifo_read:1.0 F_read RD_EN";
  attribute x_interface_info of o_fifo_wr_en : signal is "xilinx.com:interface:fifo_write:1.0 F_write WR_EN";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of i_fifo_dout : signal is "xilinx.com:interface:fifo_read:1.0 F_read RD_DATA";
  attribute x_interface_info of o_fifo_din : signal is "xilinx.com:interface:fifo_write:1.0 F_write WR_DATA";
begin
  \^i_ascii\(7 downto 0) <= i_ascii(7 downto 0);
  \^i_fifo_full\ <= i_fifo_full;
  o_fifo_din(7 downto 0) <= \^i_ascii\(7 downto 0);
  o_fifo_full <= \^i_fifo_full\;
U0: entity work.zsys_fifo2Uart_0_1_fifo2Uart
     port map (
      clk => clk,
      end_one_byte => end_one_byte,
      i_UART_Rx => i_UART_Rx,
      i_fifo_dout(7 downto 0) => i_fifo_dout(7 downto 0),
      i_fifo_empty => i_fifo_empty,
      o_UART_Tx => o_UART_Tx,
      o_fifo_rd_en => o_fifo_rd_en,
      o_rst_fifo => o_rst_fifo,
      o_serial_out(7 downto 0) => o_serial_out(7 downto 0),
      rst => rst
    );
o_fifo_wr_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_f_wr_en,
      I1 => \^i_fifo_full\,
      O => o_fifo_wr_en
    );
end STRUCTURE;
