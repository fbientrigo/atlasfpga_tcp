--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat May 21 23:51:40 2022
--Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
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
    ADC_MISO : in STD_LOGIC;
    ADC_MOSI : out STD_LOGIC;
    ADC_SCLK : out STD_LOGIC;
    B0_ADC_CH_1_N : in STD_LOGIC;
    B0_ADC_CH_1_P : in STD_LOGIC;
    B0_ADC_CH_2_N : in STD_LOGIC;
    B0_ADC_CH_2_P : in STD_LOGIC;
    B0_ADC_CH_3_N : in STD_LOGIC;
    B0_ADC_CH_3_P : in STD_LOGIC;
    B0_ADC_CH_4_N : in STD_LOGIC;
    B0_ADC_CH_4_P : in STD_LOGIC;
    B0_ADC_CH_5_N : in STD_LOGIC;
    B0_ADC_CH_5_P : in STD_LOGIC;
    B0_ADC_CH_6_N : in STD_LOGIC;
    B0_ADC_CH_6_P : in STD_LOGIC;
    B0_ADC_CH_7_N : in STD_LOGIC;
    B0_ADC_CH_7_P : in STD_LOGIC;
    B0_ADC_CH_8_N : in STD_LOGIC;
    B0_ADC_CH_8_P : in STD_LOGIC;
    B0_ADC_CLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_ADC_CLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_ADC_nCS : out STD_LOGIC;
    B0_AD_clk_N : in STD_LOGIC;
    B0_AD_clk_P : in STD_LOGIC;
    B0_DAC_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B0_DRS_A0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B0_DRS_DWRITE : out STD_LOGIC;
    B0_DRS_REFCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_DRS_REFCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_DRS_RSLOAD : out STD_LOGIC;
    B0_DRS_SRCLK : out STD_LOGIC;
    B0_DRS_SRIN : out STD_LOGIC;
    B0_DRS_SROUT : in STD_LOGIC;
    B0_LCLK_N : in STD_LOGIC;
    B0_LCLK_P : in STD_LOGIC;
    B1_DRS_DENABLE : out STD_LOGIC;
    B1_DRS_nRESET : out STD_LOGIC;
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
    E_Link_TX_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    E_Link_TX_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GAIN_CTRL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I2C_0_scl_io : inout STD_LOGIC;
    I2C_0_sda_io : inout STD_LOGIC;
    MUX_CTRL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TCal : out STD_LOGIC_VECTOR ( 0 to 0 );
    TEST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    nSHDN : out STD_LOGIC_VECTOR ( 0 to 0 )
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
    B0_ADC_CH_1_N : in STD_LOGIC;
    B0_ADC_CH_1_P : in STD_LOGIC;
    B0_ADC_CH_2_N : in STD_LOGIC;
    B0_ADC_CH_2_P : in STD_LOGIC;
    B0_ADC_CH_3_N : in STD_LOGIC;
    B0_ADC_CH_3_P : in STD_LOGIC;
    B0_ADC_CH_4_N : in STD_LOGIC;
    B0_ADC_CH_4_P : in STD_LOGIC;
    B0_ADC_CH_5_N : in STD_LOGIC;
    B0_ADC_CH_5_P : in STD_LOGIC;
    B0_ADC_CH_6_N : in STD_LOGIC;
    B0_ADC_CH_6_P : in STD_LOGIC;
    B0_ADC_CH_7_N : in STD_LOGIC;
    B0_ADC_CH_7_P : in STD_LOGIC;
    B0_ADC_CH_8_N : in STD_LOGIC;
    B0_ADC_CH_8_P : in STD_LOGIC;
    B0_AD_clk_N : in STD_LOGIC;
    B0_AD_clk_P : in STD_LOGIC;
    B0_LCLK_N : in STD_LOGIC;
    B0_LCLK_P : in STD_LOGIC;
    B0_DRS_SROUT : in STD_LOGIC;
    ADC_MISO : in STD_LOGIC;
    ADC_MOSI : out STD_LOGIC;
    ADC_SCLK : out STD_LOGIC;
    B0_ADC_nCS : out STD_LOGIC;
    TEST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    B0_DRS_REFCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_DRS_REFCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_ADC_CLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_ADC_CLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_DRS_DWRITE : out STD_LOGIC;
    B0_DRS_SRCLK : out STD_LOGIC;
    B0_DRS_SRIN : out STD_LOGIC;
    B0_DRS_RSLOAD : out STD_LOGIC;
    B0_DRS_A0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B1_DRS_nRESET : out STD_LOGIC;
    B1_DRS_DENABLE : out STD_LOGIC;
    B0_DAC_SEL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DAC_nCLR : out STD_LOGIC_VECTOR ( 0 to 0 );
    GAIN_CTRL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MUX_CTRL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    nSHDN : out STD_LOGIC_VECTOR ( 0 to 0 );
    TCal : out STD_LOGIC_VECTOR ( 0 to 0 );
    E_Link_TX_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    E_Link_TX_N : out STD_LOGIC_VECTOR ( 0 to 0 )
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
      ADC_MISO => ADC_MISO,
      ADC_MOSI => ADC_MOSI,
      ADC_SCLK => ADC_SCLK,
      B0_ADC_CH_1_N => B0_ADC_CH_1_N,
      B0_ADC_CH_1_P => B0_ADC_CH_1_P,
      B0_ADC_CH_2_N => B0_ADC_CH_2_N,
      B0_ADC_CH_2_P => B0_ADC_CH_2_P,
      B0_ADC_CH_3_N => B0_ADC_CH_3_N,
      B0_ADC_CH_3_P => B0_ADC_CH_3_P,
      B0_ADC_CH_4_N => B0_ADC_CH_4_N,
      B0_ADC_CH_4_P => B0_ADC_CH_4_P,
      B0_ADC_CH_5_N => B0_ADC_CH_5_N,
      B0_ADC_CH_5_P => B0_ADC_CH_5_P,
      B0_ADC_CH_6_N => B0_ADC_CH_6_N,
      B0_ADC_CH_6_P => B0_ADC_CH_6_P,
      B0_ADC_CH_7_N => B0_ADC_CH_7_N,
      B0_ADC_CH_7_P => B0_ADC_CH_7_P,
      B0_ADC_CH_8_N => B0_ADC_CH_8_N,
      B0_ADC_CH_8_P => B0_ADC_CH_8_P,
      B0_ADC_CLK_N(0) => B0_ADC_CLK_N(0),
      B0_ADC_CLK_P(0) => B0_ADC_CLK_P(0),
      B0_ADC_nCS => B0_ADC_nCS,
      B0_AD_clk_N => B0_AD_clk_N,
      B0_AD_clk_P => B0_AD_clk_P,
      B0_DAC_SEL(1 downto 0) => B0_DAC_SEL(1 downto 0),
      B0_DRS_A0(3 downto 0) => B0_DRS_A0(3 downto 0),
      B0_DRS_DWRITE => B0_DRS_DWRITE,
      B0_DRS_REFCLK_N(0) => B0_DRS_REFCLK_N(0),
      B0_DRS_REFCLK_P(0) => B0_DRS_REFCLK_P(0),
      B0_DRS_RSLOAD => B0_DRS_RSLOAD,
      B0_DRS_SRCLK => B0_DRS_SRCLK,
      B0_DRS_SRIN => B0_DRS_SRIN,
      B0_DRS_SROUT => B0_DRS_SROUT,
      B0_LCLK_N => B0_LCLK_N,
      B0_LCLK_P => B0_LCLK_P,
      B1_DRS_DENABLE => B1_DRS_DENABLE,
      B1_DRS_nRESET => B1_DRS_nRESET,
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
      E_Link_TX_N(0) => E_Link_TX_N(0),
      E_Link_TX_P(0) => E_Link_TX_P(0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GAIN_CTRL(1 downto 0) => GAIN_CTRL(1 downto 0),
      I2C_0_scl_i => I2C_0_scl_i,
      I2C_0_scl_o => I2C_0_scl_o,
      I2C_0_scl_t => I2C_0_scl_t,
      I2C_0_sda_i => I2C_0_sda_i,
      I2C_0_sda_o => I2C_0_sda_o,
      I2C_0_sda_t => I2C_0_sda_t,
      MUX_CTRL(1 downto 0) => MUX_CTRL(1 downto 0),
      TCal(0) => TCal(0),
      TEST(1 downto 0) => TEST(1 downto 0),
      nSHDN(0) => nSHDN(0)
    );
end STRUCTURE;
