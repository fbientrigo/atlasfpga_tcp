-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Mon Nov  4 16:09:20 2024
-- Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top zsys_CPLD_ctrl_0_0 -prefix
--               zsys_CPLD_ctrl_0_0_ zsys_CPLD_ctrl_0_0_sim_netlist.vhdl
-- Design      : zsys_CPLD_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_CPLD_ctrl_0_0_CPLD_comm_module is
  port (
    CPLD_SPI_SCLK : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CPLD_SPI_MOSI : out STD_LOGIC;
    CPLD_SPI_nCS : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    CPLD_Mux_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    nCS_CPLD : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    axi_wready_reg : in STD_LOGIC;
    axi_awready_reg : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    SPI_WR_en : in STD_LOGIC;
    \mezz_mux_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end zsys_CPLD_ctrl_0_0_CPLD_comm_module;

architecture STRUCTURE of zsys_CPLD_ctrl_0_0_CPLD_comm_module is
  signal \^cpld_spi_mosi\ : STD_LOGIC;
  signal \^cpld_spi_sclk\ : STD_LOGIC;
  signal \^cpld_spi_ncs\ : STD_LOGIC;
  signal CPLD_states_spi : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of CPLD_states_spi : signal is "yes";
  signal \FSM_sequential_CPLD_states_spi[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CPLD_states_spi[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CPLD_states_spi[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CPLD_states_spi[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_SPI_states[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_SPI_states[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_SPI_states[1]_i_3_n_0\ : STD_LOGIC;
  signal SPI_MOSI : STD_LOGIC;
  signal SPI_MOSI_i_1_n_0 : STD_LOGIC;
  signal SPI_MOSI_i_2_n_0 : STD_LOGIC;
  signal SPI_MOSI_i_4_n_0 : STD_LOGIC;
  signal SPI_SCLK_i_1_n_0 : STD_LOGIC;
  signal SPI_WRDATA : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal SPI_WRDATA0 : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[0]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[10]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[11]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[12]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[1]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[2]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[3]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[4]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[5]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[6]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[7]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[8]\ : STD_LOGIC;
  signal \SPI_WRDATA_reg_n_0_[9]\ : STD_LOGIC;
  signal SPI_bit_counter0 : STD_LOGIC;
  signal \SPI_bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_bit_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_bit_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_bit_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \SPI_bit_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \SPI_bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \SPI_bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \SPI_bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \SPI_bit_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal SPI_busy : STD_LOGIC;
  signal SPI_busy_i_1_n_0 : STD_LOGIC;
  signal SPI_counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \SPI_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \SPI_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal SPI_nCS : STD_LOGIC;
  signal SPI_nCS_i_1_n_0 : STD_LOGIC;
  signal SPI_states0 : STD_LOGIC;
  signal \SPI_states__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \SPI_states__0\ : signal is "yes";
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_wr[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_wr[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_wr[1]_i_2_n_0\ : STD_LOGIC;
  signal \count_wr[1]_i_3_n_0\ : STD_LOGIC;
  signal \count_wr[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_wr[2]_i_2_n_0\ : STD_LOGIC;
  signal \count_wr[2]_i_3_n_0\ : STD_LOGIC;
  signal \count_wr_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_wr_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_wr_reg_n_0_[2]\ : STD_LOGIC;
  signal cpld_count_bit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cpld_count_bit[3]_i_1_n_0\ : STD_LOGIC;
  signal \cpld_count_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \cpld_count_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \cpld_count_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \cpld_count_bit_reg_n_0_[3]\ : STD_LOGIC;
  signal cpld_data_rec : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \cpld_data_rec[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_in[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_in[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_in_reg_n_0_[9]\ : STD_LOGIC;
  signal flag_end_data_i_1_n_0 : STD_LOGIC;
  signal flag_end_data_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal start_SPI_com : STD_LOGIC;
  signal start_SPI_com_i_1_n_0 : STD_LOGIC;
  signal start_SPI_com_i_2_n_0 : STD_LOGIC;
  signal start_SPI_com_i_3_n_0 : STD_LOGIC;
  signal start_SPI_com_i_4_n_0 : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal wr_en_1 : STD_LOGIC;
  signal wr_en_1_i_1_n_0 : STD_LOGIC;
  signal wr_en_i_1_n_0 : STD_LOGIC;
  signal wr_ready : STD_LOGIC;
  signal wr_ready_i_1_n_0 : STD_LOGIC;
  signal wr_ready_i_2_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_CPLD_states_spi_reg[0]\ : label is "receaving_data:01,end_bit:10,wait_start:00,iSTATE:11";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_CPLD_states_spi_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CPLD_states_spi_reg[1]\ : label is "receaving_data:01,end_bit:10,wait_start:00,iSTATE:11";
  attribute KEEP of \FSM_sequential_CPLD_states_spi_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_SPI_states_reg[0]\ : label is "send_data:10,start_bit:01,idle:00,end_bit:11";
  attribute KEEP of \FSM_sequential_SPI_states_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_SPI_states_reg[1]\ : label is "send_data:10,start_bit:01,idle:00,end_bit:11";
  attribute KEEP of \FSM_sequential_SPI_states_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SPI_MOSI_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of SPI_MOSI_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of SPI_SCLK_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SPI_counter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \SPI_counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SPI_counter[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_wr[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_wr[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_wr[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_wr[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of start_SPI_com_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of wr_en_1_i_1 : label is "soft_lutpair2";
begin
  CPLD_SPI_MOSI <= \^cpld_spi_mosi\;
  CPLD_SPI_SCLK <= \^cpld_spi_sclk\;
  CPLD_SPI_nCS <= \^cpld_spi_ncs\;
  SR(0) <= \^sr\(0);
\FSM_sequential_CPLD_states_spi[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => CPLD_states_spi(0),
      I1 => SPI_MISO,
      I2 => CPLD_states_spi(1),
      O => \FSM_sequential_CPLD_states_spi[0]_i_1_n_0\
    );
\FSM_sequential_CPLD_states_spi[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8DF8"
    )
        port map (
      I0 => CPLD_states_spi(0),
      I1 => \FSM_sequential_CPLD_states_spi[1]_i_3_n_0\,
      I2 => CPLD_states_spi(1),
      I3 => SPI_MISO,
      O => \FSM_sequential_CPLD_states_spi[1]_i_1_n_0\
    );
\FSM_sequential_CPLD_states_spi[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => CPLD_states_spi(0),
      I1 => CPLD_states_spi(1),
      I2 => SPI_MISO,
      O => \FSM_sequential_CPLD_states_spi[1]_i_2_n_0\
    );
\FSM_sequential_CPLD_states_spi[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAAAA"
    )
        port map (
      I0 => CPLD_states_spi(1),
      I1 => \cpld_count_bit_reg_n_0_[3]\,
      I2 => \cpld_count_bit_reg_n_0_[0]\,
      I3 => \cpld_count_bit_reg_n_0_[1]\,
      I4 => \cpld_count_bit_reg_n_0_[2]\,
      O => \FSM_sequential_CPLD_states_spi[1]_i_3_n_0\
    );
\FSM_sequential_CPLD_states_spi_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^cpld_spi_sclk\,
      CE => \FSM_sequential_CPLD_states_spi[1]_i_1_n_0\,
      CLR => nCS_CPLD,
      D => \FSM_sequential_CPLD_states_spi[0]_i_1_n_0\,
      Q => CPLD_states_spi(0)
    );
\FSM_sequential_CPLD_states_spi_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^cpld_spi_sclk\,
      CE => \FSM_sequential_CPLD_states_spi[1]_i_1_n_0\,
      CLR => nCS_CPLD,
      D => \FSM_sequential_CPLD_states_spi[1]_i_2_n_0\,
      Q => CPLD_states_spi(1)
    );
\FSM_sequential_SPI_states[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0CFFFF0A0C0000"
    )
        port map (
      I0 => flag_end_data_reg_n_0,
      I1 => start_SPI_com,
      I2 => \SPI_states__0\(0),
      I3 => \SPI_states__0\(1),
      I4 => SPI_states0,
      I5 => \SPI_states__0\(0),
      O => \FSM_sequential_SPI_states[0]_i_1_n_0\
    );
\FSM_sequential_SPI_states[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38FF3800"
    )
        port map (
      I0 => flag_end_data_reg_n_0,
      I1 => \SPI_states__0\(1),
      I2 => \SPI_states__0\(0),
      I3 => SPI_states0,
      I4 => \SPI_states__0\(1),
      O => \FSM_sequential_SPI_states[1]_i_1_n_0\
    );
\FSM_sequential_SPI_states[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAAEAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_SPI_states[1]_i_3_n_0\,
      I1 => \^cpld_spi_sclk\,
      I2 => \SPI_states__0\(1),
      I3 => SPI_MOSI_i_4_n_0,
      I4 => s00_axi_aresetn,
      I5 => SPI_nCS,
      O => SPI_states0
    );
\FSM_sequential_SPI_states[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => SPI_counter(2),
      I1 => SPI_counter(1),
      I2 => flag_end_data_reg_n_0,
      I3 => SPI_counter(0),
      I4 => \SPI_states__0\(0),
      I5 => s00_axi_aresetn,
      O => \FSM_sequential_SPI_states[1]_i_3_n_0\
    );
\FSM_sequential_SPI_states_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_SPI_states[0]_i_1_n_0\,
      Q => \SPI_states__0\(0),
      R => '0'
    );
\FSM_sequential_SPI_states_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_SPI_states[1]_i_1_n_0\,
      Q => \SPI_states__0\(1),
      R => '0'
    );
SPI_MOSI_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AC0FFFF0AC00000"
    )
        port map (
      I0 => p_0_in,
      I1 => SPI_MOSI_i_2_n_0,
      I2 => \SPI_states__0\(0),
      I3 => \SPI_states__0\(1),
      I4 => SPI_MOSI,
      I5 => \^cpld_spi_mosi\,
      O => SPI_MOSI_i_1_n_0
    );
SPI_MOSI_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => SPI_counter(2),
      I1 => SPI_counter(1),
      I2 => SPI_counter(0),
      I3 => \^cpld_spi_sclk\,
      O => SPI_MOSI_i_2_n_0
    );
SPI_MOSI_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF00F"
    )
        port map (
      I0 => \^cpld_spi_sclk\,
      I1 => \SPI_bit_counter[3]_i_3_n_0\,
      I2 => \SPI_states__0\(0),
      I3 => \SPI_states__0\(1),
      I4 => SPI_MOSI_i_4_n_0,
      O => SPI_MOSI
    );
SPI_MOSI_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => SPI_counter(0),
      I1 => SPI_counter(1),
      I2 => SPI_counter(2),
      O => SPI_MOSI_i_4_n_0
    );
SPI_MOSI_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => SPI_MOSI_i_1_n_0,
      Q => \^cpld_spi_mosi\
    );
SPI_SCLK_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => SPI_counter(0),
      I1 => SPI_counter(2),
      I2 => SPI_counter(1),
      I3 => \^cpld_spi_sclk\,
      O => SPI_SCLK_i_1_n_0
    );
SPI_SCLK_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => SPI_SCLK_i_1_n_0,
      Q => \^cpld_spi_sclk\
    );
\SPI_WRDATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in,
      I1 => \SPI_states__0\(1),
      I2 => Q(0),
      O => SPI_WRDATA(0)
    );
\SPI_WRDATA[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[9]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(10),
      O => SPI_WRDATA(10)
    );
\SPI_WRDATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[10]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(11),
      O => SPI_WRDATA(11)
    );
\SPI_WRDATA[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[11]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(12),
      O => SPI_WRDATA(12)
    );
\SPI_WRDATA[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C800C00"
    )
        port map (
      I0 => SPI_MOSI_i_2_n_0,
      I1 => s00_axi_aresetn,
      I2 => \SPI_states__0\(1),
      I3 => \SPI_states__0\(0),
      I4 => \SPI_bit_counter[3]_i_3_n_0\,
      O => SPI_WRDATA0
    );
\SPI_WRDATA[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[12]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(13),
      O => SPI_WRDATA(13)
    );
\SPI_WRDATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[0]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(1),
      O => SPI_WRDATA(1)
    );
\SPI_WRDATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[1]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(2),
      O => SPI_WRDATA(2)
    );
\SPI_WRDATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[2]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(3),
      O => SPI_WRDATA(3)
    );
\SPI_WRDATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[3]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(4),
      O => SPI_WRDATA(4)
    );
\SPI_WRDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[4]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(5),
      O => SPI_WRDATA(5)
    );
\SPI_WRDATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[5]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(6),
      O => SPI_WRDATA(6)
    );
\SPI_WRDATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[6]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(7),
      O => SPI_WRDATA(7)
    );
\SPI_WRDATA[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[7]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(8),
      O => SPI_WRDATA(8)
    );
\SPI_WRDATA[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \SPI_WRDATA_reg_n_0_[8]\,
      I1 => \SPI_states__0\(1),
      I2 => Q(9),
      O => SPI_WRDATA(9)
    );
\SPI_WRDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(0),
      Q => \SPI_WRDATA_reg_n_0_[0]\,
      R => '0'
    );
\SPI_WRDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(10),
      Q => \SPI_WRDATA_reg_n_0_[10]\,
      R => '0'
    );
\SPI_WRDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(11),
      Q => \SPI_WRDATA_reg_n_0_[11]\,
      R => '0'
    );
\SPI_WRDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(12),
      Q => \SPI_WRDATA_reg_n_0_[12]\,
      R => '0'
    );
\SPI_WRDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(13),
      Q => p_0_in,
      R => '0'
    );
\SPI_WRDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(1),
      Q => \SPI_WRDATA_reg_n_0_[1]\,
      R => '0'
    );
\SPI_WRDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(2),
      Q => \SPI_WRDATA_reg_n_0_[2]\,
      R => '0'
    );
\SPI_WRDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(3),
      Q => \SPI_WRDATA_reg_n_0_[3]\,
      R => '0'
    );
\SPI_WRDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(4),
      Q => \SPI_WRDATA_reg_n_0_[4]\,
      R => '0'
    );
\SPI_WRDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(5),
      Q => \SPI_WRDATA_reg_n_0_[5]\,
      R => '0'
    );
\SPI_WRDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(6),
      Q => \SPI_WRDATA_reg_n_0_[6]\,
      R => '0'
    );
\SPI_WRDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(7),
      Q => \SPI_WRDATA_reg_n_0_[7]\,
      R => '0'
    );
\SPI_WRDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(8),
      Q => \SPI_WRDATA_reg_n_0_[8]\,
      R => '0'
    );
\SPI_WRDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_WRDATA0,
      D => SPI_WRDATA(9),
      Q => \SPI_WRDATA_reg_n_0_[9]\,
      R => '0'
    );
\SPI_bit_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \SPI_states__0\(1),
      I1 => \SPI_bit_counter_reg_n_0_[0]\,
      O => \SPI_bit_counter[0]_i_1_n_0\
    );
\SPI_bit_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \SPI_bit_counter_reg_n_0_[1]\,
      I1 => \SPI_bit_counter_reg_n_0_[0]\,
      I2 => \SPI_states__0\(1),
      O => \SPI_bit_counter[1]_i_1_n_0\
    );
\SPI_bit_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"60C0"
    )
        port map (
      I0 => \SPI_bit_counter_reg_n_0_[1]\,
      I1 => \SPI_bit_counter_reg_n_0_[2]\,
      I2 => \SPI_states__0\(1),
      I3 => \SPI_bit_counter_reg_n_0_[0]\,
      O => \SPI_bit_counter[2]_i_1_n_0\
    );
\SPI_bit_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D000500"
    )
        port map (
      I0 => \SPI_states__0\(1),
      I1 => SPI_MOSI_i_2_n_0,
      I2 => \SPI_states__0\(0),
      I3 => s00_axi_aresetn,
      I4 => \SPI_bit_counter[3]_i_3_n_0\,
      O => SPI_bit_counter0
    );
\SPI_bit_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7800F000"
    )
        port map (
      I0 => \SPI_bit_counter_reg_n_0_[2]\,
      I1 => \SPI_bit_counter_reg_n_0_[1]\,
      I2 => \SPI_bit_counter_reg_n_0_[3]\,
      I3 => \SPI_states__0\(1),
      I4 => \SPI_bit_counter_reg_n_0_[0]\,
      O => \SPI_bit_counter[3]_i_2_n_0\
    );
\SPI_bit_counter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \SPI_bit_counter_reg_n_0_[2]\,
      I1 => \SPI_bit_counter_reg_n_0_[1]\,
      I2 => \SPI_bit_counter_reg_n_0_[3]\,
      O => \SPI_bit_counter[3]_i_3_n_0\
    );
\SPI_bit_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_bit_counter0,
      D => \SPI_bit_counter[0]_i_1_n_0\,
      Q => \SPI_bit_counter_reg_n_0_[0]\,
      R => '0'
    );
\SPI_bit_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_bit_counter0,
      D => \SPI_bit_counter[1]_i_1_n_0\,
      Q => \SPI_bit_counter_reg_n_0_[1]\,
      R => '0'
    );
\SPI_bit_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_bit_counter0,
      D => \SPI_bit_counter[2]_i_1_n_0\,
      Q => \SPI_bit_counter_reg_n_0_[2]\,
      R => '0'
    );
\SPI_bit_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_bit_counter0,
      D => \SPI_bit_counter[3]_i_2_n_0\,
      Q => \SPI_bit_counter_reg_n_0_[3]\,
      R => '0'
    );
SPI_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \SPI_states__0\(0),
      I1 => s00_axi_aresetn,
      I2 => \SPI_states__0\(1),
      I3 => SPI_busy,
      O => SPI_busy_i_1_n_0
    );
SPI_busy_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SPI_busy_i_1_n_0,
      Q => SPI_busy,
      R => '0'
    );
\SPI_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SPI_counter(0),
      O => \SPI_counter[0]_i_1_n_0\
    );
\SPI_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => SPI_counter(2),
      I1 => SPI_counter(0),
      I2 => SPI_counter(1),
      O => \SPI_counter[1]_i_1_n_0\
    );
\SPI_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"58"
    )
        port map (
      I0 => SPI_counter(0),
      I1 => SPI_counter(1),
      I2 => SPI_counter(2),
      O => \SPI_counter[2]_i_1_n_0\
    );
\SPI_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \SPI_counter[0]_i_1_n_0\,
      Q => SPI_counter(0)
    );
\SPI_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \SPI_counter[1]_i_1_n_0\,
      Q => SPI_counter(1)
    );
\SPI_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \SPI_counter[2]_i_1_n_0\,
      Q => SPI_counter(2)
    );
SPI_nCS_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BFF8B00"
    )
        port map (
      I0 => \^cpld_spi_sclk\,
      I1 => \SPI_states__0\(1),
      I2 => start_SPI_com,
      I3 => SPI_nCS,
      I4 => \^cpld_spi_ncs\,
      O => SPI_nCS_i_1_n_0
    );
SPI_nCS_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080000000000FFFF"
    )
        port map (
      I0 => SPI_counter(2),
      I1 => \^cpld_spi_sclk\,
      I2 => SPI_counter(1),
      I3 => SPI_counter(0),
      I4 => \SPI_states__0\(1),
      I5 => \SPI_states__0\(0),
      O => SPI_nCS
    );
SPI_nCS_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SPI_nCS_i_1_n_0,
      PRE => \^sr\(0),
      Q => \^cpld_spi_ncs\
    );
\count_wr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AA54FF00AAAA"
    )
        port map (
      I0 => \count_wr[1]_i_2_n_0\,
      I1 => \count_wr_reg_n_0_[1]\,
      I2 => \count_wr_reg_n_0_[2]\,
      I3 => \count_wr_reg_n_0_[0]\,
      I4 => \count_wr[1]_i_3_n_0\,
      I5 => \count_wr[2]_i_3_n_0\,
      O => \count_wr[0]_i_1_n_0\
    );
\count_wr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC9CCC55"
    )
        port map (
      I0 => \count_wr[1]_i_2_n_0\,
      I1 => \count_wr_reg_n_0_[1]\,
      I2 => \count_wr_reg_n_0_[0]\,
      I3 => \count_wr[1]_i_3_n_0\,
      I4 => \count_wr[2]_i_3_n_0\,
      O => \count_wr[1]_i_1_n_0\
    );
\count_wr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => SPI_counter(2),
      I1 => SPI_counter(1),
      I2 => \^cpld_spi_sclk\,
      O => \count_wr[1]_i_2_n_0\
    );
\count_wr[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => SPI_busy,
      I1 => s00_axi_aresetn,
      O => \count_wr[1]_i_3_n_0\
    );
\count_wr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC8CCCCCCC00CC"
    )
        port map (
      I0 => \count_wr[2]_i_2_n_0\,
      I1 => \count_wr_reg_n_0_[2]\,
      I2 => \count_wr_reg_n_0_[0]\,
      I3 => s00_axi_aresetn,
      I4 => SPI_busy,
      I5 => \count_wr[2]_i_3_n_0\,
      O => \count_wr[2]_i_1_n_0\
    );
\count_wr[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \^cpld_spi_sclk\,
      I1 => SPI_counter(1),
      I2 => SPI_counter(2),
      I3 => \count_wr_reg_n_0_[1]\,
      O => \count_wr[2]_i_2_n_0\
    );
\count_wr[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wr_en_1,
      I1 => wr_en,
      O => \count_wr[2]_i_3_n_0\
    );
\count_wr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count_wr[0]_i_1_n_0\,
      Q => \count_wr_reg_n_0_[0]\,
      R => '0'
    );
\count_wr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count_wr[1]_i_1_n_0\,
      Q => \count_wr_reg_n_0_[1]\,
      R => '0'
    );
\count_wr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \count_wr[2]_i_1_n_0\,
      Q => \count_wr_reg_n_0_[2]\,
      R => '0'
    );
\cpld_count_bit[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CPLD_states_spi(0),
      I1 => \cpld_count_bit_reg_n_0_[0]\,
      O => cpld_count_bit(0)
    );
\cpld_count_bit[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AA2A00"
    )
        port map (
      I0 => CPLD_states_spi(0),
      I1 => \cpld_count_bit_reg_n_0_[3]\,
      I2 => \cpld_count_bit_reg_n_0_[2]\,
      I3 => \cpld_count_bit_reg_n_0_[0]\,
      I4 => \cpld_count_bit_reg_n_0_[1]\,
      O => cpld_count_bit(1)
    );
\cpld_count_bit[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AA020A0"
    )
        port map (
      I0 => CPLD_states_spi(0),
      I1 => \cpld_count_bit_reg_n_0_[3]\,
      I2 => \cpld_count_bit_reg_n_0_[2]\,
      I3 => \cpld_count_bit_reg_n_0_[0]\,
      I4 => \cpld_count_bit_reg_n_0_[1]\,
      O => cpld_count_bit(2)
    );
\cpld_count_bit[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CPLD_states_spi(1),
      O => \cpld_count_bit[3]_i_1_n_0\
    );
\cpld_count_bit[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28880888"
    )
        port map (
      I0 => CPLD_states_spi(0),
      I1 => \cpld_count_bit_reg_n_0_[3]\,
      I2 => \cpld_count_bit_reg_n_0_[2]\,
      I3 => \cpld_count_bit_reg_n_0_[0]\,
      I4 => \cpld_count_bit_reg_n_0_[1]\,
      O => cpld_count_bit(3)
    );
\cpld_count_bit_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_count_bit[3]_i_1_n_0\,
      CLR => nCS_CPLD,
      D => cpld_count_bit(0),
      Q => \cpld_count_bit_reg_n_0_[0]\
    );
\cpld_count_bit_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_count_bit[3]_i_1_n_0\,
      CLR => nCS_CPLD,
      D => cpld_count_bit(1),
      Q => \cpld_count_bit_reg_n_0_[1]\
    );
\cpld_count_bit_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_count_bit[3]_i_1_n_0\,
      CLR => nCS_CPLD,
      D => cpld_count_bit(2),
      Q => \cpld_count_bit_reg_n_0_[2]\
    );
\cpld_count_bit_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_count_bit[3]_i_1_n_0\,
      CLR => nCS_CPLD,
      D => cpld_count_bit(3),
      Q => \cpld_count_bit_reg_n_0_[3]\
    );
\cpld_data_rec[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => SPI_MISO,
      I1 => CPLD_states_spi(1),
      I2 => CPLD_states_spi(0),
      I3 => nCS_CPLD,
      O => \cpld_data_rec[13]_i_1_n_0\
    );
\cpld_data_rec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[0]\,
      Q => cpld_data_rec(0),
      R => '0'
    );
\cpld_data_rec_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[10]\,
      Q => cpld_data_rec(10),
      R => '0'
    );
\cpld_data_rec_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[11]\,
      Q => cpld_data_rec(11),
      R => '0'
    );
\cpld_data_rec_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[12]\,
      Q => cpld_data_rec(12),
      R => '0'
    );
\cpld_data_rec_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[13]\,
      Q => cpld_data_rec(13),
      R => '0'
    );
\cpld_data_rec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[1]\,
      Q => cpld_data_rec(1),
      R => '0'
    );
\cpld_data_rec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[2]\,
      Q => cpld_data_rec(2),
      R => '0'
    );
\cpld_data_rec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[3]\,
      Q => cpld_data_rec(3),
      R => '0'
    );
\cpld_data_rec_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[4]\,
      Q => cpld_data_rec(4),
      R => '0'
    );
\cpld_data_rec_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[5]\,
      Q => cpld_data_rec(5),
      R => '0'
    );
\cpld_data_rec_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[6]\,
      Q => cpld_data_rec(6),
      R => '0'
    );
\cpld_data_rec_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[7]\,
      Q => cpld_data_rec(7),
      R => '0'
    );
\cpld_data_rec_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[8]\,
      Q => cpld_data_rec(8),
      R => '0'
    );
\cpld_data_rec_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \cpld_data_rec[13]_i_1_n_0\,
      D => \data_in_reg_n_0_[9]\,
      Q => cpld_data_rec(9),
      R => '0'
    );
\data_in[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => CPLD_states_spi(1),
      I1 => nCS_CPLD,
      I2 => CPLD_states_spi(0),
      O => \data_in[13]_i_1_n_0\
    );
\data_in[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nCS_CPLD,
      I1 => CPLD_states_spi(1),
      O => \data_in[13]_i_2_n_0\
    );
\data_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => SPI_MISO,
      Q => \data_in_reg_n_0_[0]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[9]\,
      Q => \data_in_reg_n_0_[10]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[10]\,
      Q => \data_in_reg_n_0_[11]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[11]\,
      Q => \data_in_reg_n_0_[12]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[12]\,
      Q => \data_in_reg_n_0_[13]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[0]\,
      Q => \data_in_reg_n_0_[1]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[1]\,
      Q => \data_in_reg_n_0_[2]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[2]\,
      Q => \data_in_reg_n_0_[3]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[3]\,
      Q => \data_in_reg_n_0_[4]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[4]\,
      Q => \data_in_reg_n_0_[5]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[5]\,
      Q => \data_in_reg_n_0_[6]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[6]\,
      Q => \data_in_reg_n_0_[7]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[7]\,
      Q => \data_in_reg_n_0_[8]\,
      R => \data_in[13]_i_1_n_0\
    );
\data_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^cpld_spi_sclk\,
      CE => \data_in[13]_i_2_n_0\,
      D => \data_in_reg_n_0_[8]\,
      Q => \data_in_reg_n_0_[9]\,
      R => \data_in[13]_i_1_n_0\
    );
flag_end_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAA00000200"
    )
        port map (
      I0 => \SPI_states__0\(1),
      I1 => \SPI_bit_counter[3]_i_3_n_0\,
      I2 => \SPI_bit_counter_reg_n_0_[0]\,
      I3 => \^cpld_spi_sclk\,
      I4 => \SPI_states__0\(0),
      I5 => flag_end_data_reg_n_0,
      O => flag_end_data_i_1_n_0
    );
flag_end_data_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => flag_end_data_i_1_n_0,
      Q => flag_end_data_reg_n_0
    );
\o_Mux_sel[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\o_Mux_sel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \mezz_mux_reg[2]\(0),
      Q => CPLD_Mux_sel(0)
    );
\o_Mux_sel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \mezz_mux_reg[2]\(1),
      Q => CPLD_Mux_sel(1)
    );
\o_Mux_sel_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \mezz_mux_reg[2]\(2),
      Q => CPLD_Mux_sel(2)
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => wr_ready,
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(0),
      O => D(0)
    );
\slv_reg1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(9),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(10),
      O => D(10)
    );
\slv_reg1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(10),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(11),
      O => D(11)
    );
\slv_reg1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(11),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(12),
      O => D(12)
    );
\slv_reg1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(12),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(13),
      O => D(13)
    );
\slv_reg1[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(13),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(14),
      O => D(14)
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(0),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(1),
      O => D(1)
    );
\slv_reg1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(1),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(2),
      O => D(2)
    );
\slv_reg1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(2),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(3),
      O => D(3)
    );
\slv_reg1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(3),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(4),
      O => D(4)
    );
\slv_reg1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(4),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(5),
      O => D(5)
    );
\slv_reg1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(5),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(6),
      O => D(6)
    );
\slv_reg1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(6),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(7),
      O => D(7)
    );
\slv_reg1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(7),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(8),
      O => D(8)
    );
\slv_reg1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => cpld_data_rec(8),
      I1 => axi_wready_reg,
      I2 => axi_awready_reg,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_wdata(9),
      O => D(9)
    );
start_SPI_com_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F040F0F0"
    )
        port map (
      I0 => wr_en_1,
      I1 => wr_en,
      I2 => start_SPI_com_i_2_n_0,
      I3 => start_SPI_com_i_3_n_0,
      I4 => s00_axi_aresetn,
      I5 => SPI_busy,
      O => start_SPI_com_i_1_n_0
    );
start_SPI_com_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00550054"
    )
        port map (
      I0 => \count_wr[1]_i_2_n_0\,
      I1 => \count_wr_reg_n_0_[1]\,
      I2 => \count_wr_reg_n_0_[2]\,
      I3 => \count_wr[1]_i_3_n_0\,
      I4 => start_SPI_com_i_4_n_0,
      I5 => start_SPI_com,
      O => start_SPI_com_i_2_n_0
    );
start_SPI_com_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFFFFFFFFFFF"
    )
        port map (
      I0 => \count_wr_reg_n_0_[0]\,
      I1 => \count_wr_reg_n_0_[2]\,
      I2 => \count_wr_reg_n_0_[1]\,
      I3 => SPI_counter(2),
      I4 => SPI_counter(1),
      I5 => \^cpld_spi_sclk\,
      O => start_SPI_com_i_3_n_0
    );
start_SPI_com_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \count_wr_reg_n_0_[0]\,
      I1 => wr_en,
      I2 => wr_en_1,
      O => start_SPI_com_i_4_n_0
    );
start_SPI_com_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_SPI_com_i_1_n_0,
      Q => start_SPI_com,
      R => '0'
    );
wr_en_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => wr_en,
      I1 => s00_axi_aresetn,
      I2 => SPI_busy,
      I3 => wr_en_1,
      O => wr_en_1_i_1_n_0
    );
wr_en_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => wr_en_1_i_1_n_0,
      Q => wr_en_1,
      R => '0'
    );
wr_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wr_en,
      I1 => SPI_busy,
      I2 => SPI_WR_en,
      O => wr_en_i_1_n_0
    );
wr_en_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => wr_en_i_1_n_0,
      Q => wr_en
    );
wr_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF33BF3FB033B030"
    )
        port map (
      I0 => \^cpld_spi_sclk\,
      I1 => \SPI_states__0\(0),
      I2 => wr_ready_i_2_n_0,
      I3 => \SPI_states__0\(1),
      I4 => s00_axi_aresetn,
      I5 => wr_ready,
      O => wr_ready_i_1_n_0
    );
wr_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => SPI_counter(2),
      I1 => \SPI_states__0\(0),
      I2 => SPI_counter(0),
      I3 => SPI_counter(1),
      I4 => \^cpld_spi_sclk\,
      I5 => s00_axi_aresetn,
      O => wr_ready_i_2_n_0
    );
wr_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => wr_ready_i_1_n_0,
      Q => wr_ready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0_S00_AXI is
  port (
    CLK : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    CPLD_Mux_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    CPLD_SPI_MOSI : out STD_LOGIC;
    CPLD_SPI_nCS : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    nCS_CPLD : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0_S00_AXI;

architecture STRUCTURE of zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0_S00_AXI is
  signal SPI_WR_en : STD_LOGIC;
  signal SPI_data : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal SPI_data_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal i_rst : STD_LOGIC;
  signal mezz_mux : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal uut_n_10 : STD_LOGIC;
  signal uut_n_11 : STD_LOGIC;
  signal uut_n_12 : STD_LOGIC;
  signal uut_n_13 : STD_LOGIC;
  signal uut_n_14 : STD_LOGIC;
  signal uut_n_15 : STD_LOGIC;
  signal uut_n_16 : STD_LOGIC;
  signal uut_n_17 : STD_LOGIC;
  signal uut_n_18 : STD_LOGIC;
  signal uut_n_4 : STD_LOGIC;
  signal uut_n_5 : STD_LOGIC;
  signal uut_n_6 : STD_LOGIC;
  signal uut_n_7 : STD_LOGIC;
  signal uut_n_8 : STD_LOGIC;
  signal uut_n_9 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair8";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
SPI_WR_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[14]\,
      Q => SPI_WR_en,
      R => '0'
    );
\SPI_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[0]\,
      Q => SPI_data(0),
      R => '0'
    );
\SPI_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[10]\,
      Q => SPI_data(10),
      R => '0'
    );
\SPI_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[11]\,
      Q => SPI_data(11),
      R => '0'
    );
\SPI_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[12]\,
      Q => SPI_data(12),
      R => '0'
    );
\SPI_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[13]\,
      Q => SPI_data(13),
      R => '0'
    );
\SPI_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[1]\,
      Q => SPI_data(1),
      R => '0'
    );
\SPI_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[2]\,
      Q => SPI_data(2),
      R => '0'
    );
\SPI_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[3]\,
      Q => SPI_data(3),
      R => '0'
    );
\SPI_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[4]\,
      Q => SPI_data(4),
      R => '0'
    );
\SPI_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[5]\,
      Q => SPI_data(5),
      R => '0'
    );
\SPI_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[6]\,
      Q => SPI_data(6),
      R => '0'
    );
\SPI_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[7]\,
      Q => SPI_data(7),
      R => '0'
    );
\SPI_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[8]\,
      Q => SPI_data(8),
      R => '0'
    );
\SPI_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[9]\,
      Q => SPI_data(9),
      R => '0'
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => i_rst
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => i_rst
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => i_rst
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => i_rst
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => i_rst
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => i_rst
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => \^s_axi_awready\,
      I5 => \^s_axi_wready\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => i_rst
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \slv_reg0_reg_n_0_[0]\,
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => \slv_reg0_reg_n_0_[10]\,
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => \slv_reg0_reg_n_0_[11]\,
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => \slv_reg0_reg_n_0_[12]\,
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => \slv_reg0_reg_n_0_[13]\,
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => \slv_reg0_reg_n_0_[14]\,
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => \slv_reg0_reg_n_0_[15]\,
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => \slv_reg0_reg_n_0_[16]\,
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => \slv_reg0_reg_n_0_[17]\,
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => \slv_reg0_reg_n_0_[18]\,
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => \slv_reg0_reg_n_0_[19]\,
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => \slv_reg0_reg_n_0_[1]\,
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => \slv_reg0_reg_n_0_[20]\,
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => \slv_reg0_reg_n_0_[21]\,
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => \slv_reg0_reg_n_0_[22]\,
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => \slv_reg0_reg_n_0_[23]\,
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => \slv_reg0_reg_n_0_[24]\,
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => \slv_reg0_reg_n_0_[25]\,
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => \slv_reg0_reg_n_0_[26]\,
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => \slv_reg0_reg_n_0_[27]\,
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => \slv_reg0_reg_n_0_[28]\,
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => \slv_reg0_reg_n_0_[29]\,
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => \slv_reg0_reg_n_0_[2]\,
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => \slv_reg0_reg_n_0_[30]\,
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => \slv_reg0_reg_n_0_[31]\,
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => \slv_reg0_reg_n_0_[3]\,
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => \slv_reg0_reg_n_0_[4]\,
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => \slv_reg0_reg_n_0_[5]\,
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => \slv_reg0_reg_n_0_[6]\,
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => \slv_reg0_reg_n_0_[7]\,
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => \slv_reg0_reg_n_0_[8]\,
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => \slv_reg0_reg_n_0_[9]\,
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => i_rst
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => i_rst
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => i_rst
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => i_rst
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => i_rst
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => i_rst
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => i_rst
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => i_rst
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => i_rst
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => i_rst
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => i_rst
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => i_rst
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => i_rst
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => i_rst
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => i_rst
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => i_rst
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => i_rst
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => i_rst
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => i_rst
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => i_rst
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => i_rst
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => i_rst
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => i_rst
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => i_rst
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => i_rst
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => i_rst
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => i_rst
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => i_rst
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => i_rst
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => i_rst
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => i_rst
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => i_rst
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => i_rst
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => i_rst
    );
\mezz_mux[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_aresetn,
      O => SPI_data_0
    );
\mezz_mux_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[15]\,
      Q => mezz_mux(0),
      R => '0'
    );
\mezz_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[16]\,
      Q => mezz_mux(1),
      R => '0'
    );
\mezz_mux_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => SPI_data_0,
      D => \slv_reg0_reg_n_0_[17]\,
      Q => mezz_mux(2),
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => i_rst
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => i_rst
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => i_rst
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => i_rst
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => i_rst
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => i_rst
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => i_rst
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => i_rst
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => i_rst
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => i_rst
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => i_rst
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => i_rst
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => i_rst
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => i_rst
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => i_rst
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => i_rst
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => i_rst
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => i_rst
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => i_rst
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => i_rst
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => i_rst
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => i_rst
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => i_rst
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => i_rst
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => i_rst
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => i_rst
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => i_rst
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => i_rst
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => i_rst
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => i_rst
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => i_rst
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => i_rst
    );
\slv_reg1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => p_0_in(0),
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[14]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      I4 => p_0_in(0),
      I5 => slv_reg1(15),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in(1),
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => p_0_in(0),
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_18,
      Q => slv_reg1(0),
      R => i_rst
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[14]_i_1_n_0\,
      D => uut_n_8,
      Q => slv_reg1(10),
      R => i_rst
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[14]_i_1_n_0\,
      D => uut_n_7,
      Q => slv_reg1(11),
      R => i_rst
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[14]_i_1_n_0\,
      D => uut_n_6,
      Q => slv_reg1(12),
      R => i_rst
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[14]_i_1_n_0\,
      D => uut_n_5,
      Q => slv_reg1(13),
      R => i_rst
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[14]_i_1_n_0\,
      D => uut_n_4,
      Q => slv_reg1(14),
      R => i_rst
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[15]_i_1_n_0\,
      Q => slv_reg1(15),
      R => i_rst
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => i_rst
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => i_rst
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => i_rst
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => i_rst
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_17,
      Q => slv_reg1(1),
      R => i_rst
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => i_rst
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => i_rst
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => i_rst
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => i_rst
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => i_rst
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => i_rst
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => i_rst
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => i_rst
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => i_rst
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => i_rst
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_16,
      Q => slv_reg1(2),
      R => i_rst
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => i_rst
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => i_rst
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_15,
      Q => slv_reg1(3),
      R => i_rst
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_14,
      Q => slv_reg1(4),
      R => i_rst
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_13,
      Q => slv_reg1(5),
      R => i_rst
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_12,
      Q => slv_reg1(6),
      R => i_rst
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => uut_n_11,
      Q => slv_reg1(7),
      R => i_rst
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[14]_i_1_n_0\,
      D => uut_n_10,
      Q => slv_reg1(8),
      R => i_rst
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[14]_i_1_n_0\,
      D => uut_n_9,
      Q => slv_reg1(9),
      R => i_rst
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => i_rst
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => i_rst
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => i_rst
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => i_rst
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => i_rst
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => i_rst
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => i_rst
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => i_rst
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => i_rst
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => i_rst
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => i_rst
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => i_rst
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => i_rst
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => i_rst
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => i_rst
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => i_rst
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => i_rst
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => i_rst
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => i_rst
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => i_rst
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => i_rst
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => i_rst
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => i_rst
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => i_rst
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => i_rst
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => i_rst
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => i_rst
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => i_rst
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => i_rst
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => i_rst
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => i_rst
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => i_rst
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => i_rst
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => i_rst
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => i_rst
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => i_rst
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => i_rst
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => i_rst
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => i_rst
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => i_rst
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => i_rst
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => i_rst
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => i_rst
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => i_rst
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => i_rst
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => i_rst
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => i_rst
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => i_rst
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => i_rst
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => i_rst
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => i_rst
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => i_rst
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => i_rst
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => i_rst
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => i_rst
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => i_rst
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => i_rst
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => i_rst
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => i_rst
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => i_rst
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => i_rst
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => i_rst
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => i_rst
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => i_rst
    );
uut: entity work.zsys_CPLD_ctrl_0_0_CPLD_comm_module
     port map (
      CPLD_Mux_sel(2 downto 0) => CPLD_Mux_sel(2 downto 0),
      CPLD_SPI_MOSI => CPLD_SPI_MOSI,
      CPLD_SPI_SCLK => CLK,
      CPLD_SPI_nCS => CPLD_SPI_nCS,
      D(14) => uut_n_4,
      D(13) => uut_n_5,
      D(12) => uut_n_6,
      D(11) => uut_n_7,
      D(10) => uut_n_8,
      D(9) => uut_n_9,
      D(8) => uut_n_10,
      D(7) => uut_n_11,
      D(6) => uut_n_12,
      D(5) => uut_n_13,
      D(4) => uut_n_14,
      D(3) => uut_n_15,
      D(2) => uut_n_16,
      D(1) => uut_n_17,
      D(0) => uut_n_18,
      Q(13 downto 0) => SPI_data(13 downto 0),
      SPI_MISO => SPI_MISO,
      SPI_WR_en => SPI_WR_en,
      SR(0) => i_rst,
      axi_awready_reg => \^s_axi_awready\,
      axi_wready_reg => \^s_axi_wready\,
      \mezz_mux_reg[2]\(2 downto 0) => mezz_mux(2 downto 0),
      nCS_CPLD => nCS_CPLD,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(14 downto 0) => s00_axi_wdata(14 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0 is
  port (
    CPLD_SPI_SCLK : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    CPLD_Mux_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    CPLD_SPI_MOSI : out STD_LOGIC;
    CPLD_SPI_nCS : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    nCS_CPLD : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0;

architecture STRUCTURE of zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0 is
begin
CPLD_ctrl_v1_0_S00_AXI_inst: entity work.zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0_S00_AXI
     port map (
      CLK => CPLD_SPI_SCLK,
      CPLD_Mux_sel(2 downto 0) => CPLD_Mux_sel(2 downto 0),
      CPLD_SPI_MOSI => CPLD_SPI_MOSI,
      CPLD_SPI_nCS => CPLD_SPI_nCS,
      SPI_MISO => SPI_MISO,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      nCS_CPLD => nCS_CPLD,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_CPLD_ctrl_0_0 is
  port (
    CPLD_Mux_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CPLD_SPI_MOSI : out STD_LOGIC;
    CPLD_SPI_SCLK : out STD_LOGIC;
    CPLD_SPI_nCS : out STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    nCS_CPLD : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_CPLD_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_CPLD_ctrl_0_0 : entity is "zsys_CPLD_ctrl_0_0,CPLD_ctrl_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_CPLD_ctrl_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of zsys_CPLD_ctrl_0_0 : entity is "CPLD_ctrl_v1_0,Vivado 2018.2";
end zsys_CPLD_ctrl_0_0;

architecture STRUCTURE of zsys_CPLD_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zsys_CPLD_ctrl_0_0_CPLD_ctrl_v1_0
     port map (
      CPLD_Mux_sel(2 downto 0) => CPLD_Mux_sel(2 downto 0),
      CPLD_SPI_MOSI => CPLD_SPI_MOSI,
      CPLD_SPI_SCLK => CPLD_SPI_SCLK,
      CPLD_SPI_nCS => CPLD_SPI_nCS,
      SPI_MISO => SPI_MISO,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      nCS_CPLD => nCS_CPLD,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
