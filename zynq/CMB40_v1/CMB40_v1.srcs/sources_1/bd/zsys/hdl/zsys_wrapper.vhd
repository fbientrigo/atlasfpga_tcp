--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Fri Dec 13 18:51:52 2024
--Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
--Command     : generate_target zsys_wrapper.bd
--Design      : zsys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_wrapper is
  port (
    ADCLK_MUX_N : in STD_LOGIC;
    ADCLK_MUX_P : in STD_LOGIC;
    ADC_MISO : in STD_LOGIC;
    ADC_MOSI : out STD_LOGIC;
    ADC_SCLK : out STD_LOGIC;
    ADC_refclk_1_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_1_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_2_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_2_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_TRG : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPLD_MISO : in STD_LOGIC;
    CPLD_nCS : in STD_LOGIC;
    CSR_MOSI : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_SCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_SCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_nCS : out STD_LOGIC_VECTOR ( 0 to 0 );
    DAC_nCLR : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DRS_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DRS_DTAP0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DWRITE : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRS_REFCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_REFCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_RSLOAD : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRS_SRCLK : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRS_SRIN : out STD_LOGIC;
    DRS_SROUT : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Elink_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_clk_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_clk_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    I2C_0_scl_io : inout STD_LOGIC;
    I2C_0_sda_io : inout STD_LOGIC;
    LCLK_MUX_N : in STD_LOGIC;
    LCLK_MUX_P : in STD_LOGIC;
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUX_SEL : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end zsys_wrapper;

architecture STRUCTURE of zsys_wrapper is
  component zsys is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    I2C_0_scl_i : in STD_LOGIC;
    I2C_0_scl_o : out STD_LOGIC;
    I2C_0_scl_t : out STD_LOGIC;
    I2C_0_sda_i : in STD_LOGIC;
    I2C_0_sda_o : out STD_LOGIC;
    I2C_0_sda_t : out STD_LOGIC;
    DRS_REFCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_REFCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_1_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_1_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_TRG : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DRS_SRCLK : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ADC_SCLK : out STD_LOGIC;
    ADC_MOSI : out STD_LOGIC;
    DRS_DWRITE : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRS_RSLOAD : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ADC_refclk_2_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_2_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_SCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_SCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    MUX_SEL : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DRS_SROUT : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ADCLK_MUX_P : in STD_LOGIC;
    ADCLK_MUX_N : in STD_LOGIC;
    CSR_MOSI : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_nCS : out STD_LOGIC_VECTOR ( 0 to 0 );
    CPLD_nCS : in STD_LOGIC;
    CPLD_MISO : in STD_LOGIC;
    ADC_MISO : in STD_LOGIC;
    LCLK_MUX_P : in STD_LOGIC;
    LCLK_MUX_N : in STD_LOGIC;
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DRS_DTAP0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DRS_SRIN : out STD_LOGIC;
    Elink_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_clk_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_clk_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    DAC_nCLR : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal I2C_0_scl_i : STD_LOGIC;
  signal I2C_0_scl_o : STD_LOGIC;
  signal I2C_0_scl_t : STD_LOGIC;
  signal I2C_0_sda_i : STD_LOGIC;
  signal I2C_0_sda_o : STD_LOGIC;
  signal I2C_0_sda_t : STD_LOGIC;
begin
I2C_0_scl_iobuf: component IOBUF
     port map (
      I => I2C_0_scl_o,
      IO => I2C_0_scl_io,
      O => I2C_0_scl_i,
      T => I2C_0_scl_t
    );
I2C_0_sda_iobuf: component IOBUF
     port map (
      I => I2C_0_sda_o,
      IO => I2C_0_sda_io,
      O => I2C_0_sda_i,
      T => I2C_0_sda_t
    );
zsys_i: component zsys
     port map (
      ADCLK_MUX_N => ADCLK_MUX_N,
      ADCLK_MUX_P => ADCLK_MUX_P,
      ADC_MISO => ADC_MISO,
      ADC_MOSI => ADC_MOSI,
      ADC_SCLK => ADC_SCLK,
      ADC_refclk_1_N(0) => ADC_refclk_1_N(0),
      ADC_refclk_1_P(0) => ADC_refclk_1_P(0),
      ADC_refclk_2_N(0) => ADC_refclk_2_N(0),
      ADC_refclk_2_P(0) => ADC_refclk_2_P(0),
      ADC_refclk_3_N(0) => ADC_refclk_3_N(0),
      ADC_refclk_3_P(0) => ADC_refclk_3_P(0),
      ADC_refclk_4_N(0) => ADC_refclk_4_N(0),
      ADC_refclk_4_P(0) => ADC_refclk_4_P(0),
      ADC_refclk_5_N(0) => ADC_refclk_5_N(0),
      ADC_refclk_5_P(0) => ADC_refclk_5_P(0),
      B0_TRG(7 downto 0) => B0_TRG(7 downto 0),
      CPLD_MISO => CPLD_MISO,
      CPLD_nCS => CPLD_nCS,
      CSR_MOSI(0) => CSR_MOSI(0),
      CSR_SCLK_N(0) => CSR_SCLK_N(0),
      CSR_SCLK_P(0) => CSR_SCLK_P(0),
      CSR_nCS(0) => CSR_nCS(0),
      DAC_nCLR(0) => DAC_nCLR(0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      DRS_A(3 downto 0) => DRS_A(3 downto 0),
      DRS_DTAP0(0) => DRS_DTAP0(0),
      DRS_DTAP1(0) => DRS_DTAP1(0),
      DRS_DTAP2(0) => DRS_DTAP2(0),
      DRS_DTAP3(0) => DRS_DTAP3(0),
      DRS_DTAP4(0) => DRS_DTAP4(0),
      DRS_DWRITE(4 downto 0) => DRS_DWRITE(4 downto 0),
      DRS_REFCLK_N(0) => DRS_REFCLK_N(0),
      DRS_REFCLK_P(0) => DRS_REFCLK_P(0),
      DRS_RSLOAD(4 downto 0) => DRS_RSLOAD(4 downto 0),
      DRS_SRCLK(4 downto 0) => DRS_SRCLK(4 downto 0),
      DRS_SRIN => DRS_SRIN,
      DRS_SROUT(4 downto 0) => DRS_SROUT(4 downto 0),
      Elink_N(0) => Elink_N(0),
      Elink_P(0) => Elink_P(0),
      Elink_clk_N(0) => Elink_clk_N(0),
      Elink_clk_P(0) => Elink_clk_P(0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      I2C_0_scl_i => I2C_0_scl_i,
      I2C_0_scl_o => I2C_0_scl_o,
      I2C_0_scl_t => I2C_0_scl_t,
      I2C_0_sda_i => I2C_0_sda_i,
      I2C_0_sda_o => I2C_0_sda_o,
      I2C_0_sda_t => I2C_0_sda_t,
      LCLK_MUX_N => LCLK_MUX_N,
      LCLK_MUX_P => LCLK_MUX_P,
      MUXOUT_N(7 downto 0) => MUXOUT_N(7 downto 0),
      MUXOUT_P(7 downto 0) => MUXOUT_P(7 downto 0),
      MUX_SEL(2 downto 0) => MUX_SEL(2 downto 0)
    );
end STRUCTURE;
