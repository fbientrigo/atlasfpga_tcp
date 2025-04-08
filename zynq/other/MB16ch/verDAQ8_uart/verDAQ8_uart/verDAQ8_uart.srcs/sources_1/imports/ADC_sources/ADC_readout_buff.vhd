----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/09/2019 03:01:33 PM
-- Design Name: 
-- Module Name: ADC_readout_buff - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- using IBUFDS_DIFF_OUT instead of IBUFDS because there was an error on routing PCB and so all signals where swap in LVDS, so complement output is correct for 
-- PCB with 4 channels version
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

library UNISIM;
use UNISIM.VComponents.all;

entity ADC_readout_buff is
  Port (
    i_ADclk_p   : in  std_logic;
    i_ADclk_n   : in  std_logic;
    i_Lclk_p    : in  std_logic;
    i_Lclk_n    : in  std_logic;
    i_ADC_ch0_p : in  std_logic;
    i_ADC_ch0_n : in  std_logic;
    i_ADC_ch1_p : in  std_logic;
    i_ADC_ch1_n : in  std_logic;
    i_ADC_ch2_p : in  std_logic;
    i_ADC_ch2_n : in  std_logic;
    i_ADC_ch3_p : in  std_logic;
    i_ADC_ch3_n : in  std_logic;
    i_ADC_ch4_p : in  std_logic;
    i_ADC_ch4_n : in  std_logic;
    i_ADC_ch5_p : in  std_logic;
    i_ADC_ch5_n : in  std_logic;
    i_ADC_ch6_p : in  std_logic;
    i_ADC_ch6_n : in  std_logic;
    i_ADC_ch7_p : in  std_logic;
    i_ADC_ch7_n : in  std_logic;

    o_ADclk_p   : out std_logic;
    o_ADclk_n   : out std_logic;
    o_Lclk_p    : out std_logic;
    o_Lclk_n    : out std_logic;
    o_ADC_ch0_p : out std_logic;
    o_ADC_ch0_n : out std_logic;
    o_ADC_ch1_p : out std_logic;
    o_ADC_ch1_n : out std_logic;
    o_ADC_ch2_p : out std_logic;
    o_ADC_ch2_n : out std_logic;
    o_ADC_ch3_p : out std_logic;
    o_ADC_ch3_n : out std_logic;
    o_ADC_ch4_p : out std_logic;
    o_ADC_ch4_n : out std_logic;
    o_ADC_ch5_p : out std_logic;
    o_ADC_ch5_n : out std_logic;
    o_ADC_ch6_p : out std_logic;
    o_ADC_ch6_n : out std_logic;
    o_ADC_ch7_p : out std_logic;
    o_ADC_ch7_n : out std_logic

  
--    ADC_clk_p : out  std_logic;
--    ADC_clk_n : out  std_logic;

   );
end ADC_readout_buff;

architecture Behavioral of ADC_readout_buff is

--ATTRIBUTE X_INTERFACE_INFO : STRING;
--ATTRIBUTE X_INTERFACE_INFO of o_Lclk: SIGNAL is "xilinx.com:signal:clock:1.0 o_Lclk CLK";

--ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
--ATTRIBUTE X_INTERFACE_PARAMETER of o_Lclk: SIGNAL is "ASSOCIATED_BUSIF o_Lclk, FREQ_HZ 400000000";

signal Lclk : std_logic;
--signal ADclk   : std_logic;
signal ADC_ch0 : std_logic;
signal ADC_ch1 : std_logic;
signal ADC_ch2 : std_logic;
signal ADC_ch3 : std_logic;
signal ADC_ch4 : std_logic;
signal ADC_ch5 : std_logic;
signal ADC_ch6 : std_logic;
signal ADC_ch7 : std_logic;

begin

--o_ADclk  <= ADclk;
--o_Lclk <=  Lclk;


  ADclk_IBUFDS_inst : IBUFGDS_DIFF_OUT
    generic map (
      DIFF_TERM => TRUE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25")
    port map (
      O => o_ADclk_p,
      OB =>  o_ADclk_n,  -- Buffer output
      I => i_ADclk_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => i_ADclk_n -- Diff_n buffer input (connect directly to top-level port)
    );

  Lclk_IBUFDS_inst : IBUFGDS_DIFF_OUT
    generic map (
       DIFF_TERM => TRUE, -- Differential Termination 
       IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
       IOSTANDARD => "LVDS_25")
    port map (
      O => o_Lclk_p,
       OB => o_Lclk_n,  -- Buffer output
       I => i_Lclk_p,  -- Diff_p buffer input (connect directly to top-level port)
       IB => i_Lclk_n -- Diff_n buffer input (connect directly to top-level port)
);
--   BUFR_inst : BUFG
--generic map (
--   BUFG_DIVIDE => "BYPASS",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
--   SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
--)
--port map (
--   O => o_Lclk,     -- 1-bit output: Clock output port
--   CE => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
--   CLR => '0', -- 1-bit input: Active high, asynchronous clear (Divided modes only)
--   I => not Lclk      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
--);

  
  ADC_ch0_IBUFDS_inst : IBUFDS_DIFF_OUT
    generic map (
      DIFF_TERM => TRUE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25")
    port map (
      O => o_ADC_ch0_p,
      OB =>  o_ADC_ch0_n,  -- Buffer output
      I => i_ADC_ch0_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => i_ADC_ch0_n -- Diff_n buffer input (connect directly to top-level port)
    );
    ADC_ch1_IBUFDS_inst : IBUFDS_DIFF_OUT
      generic map (
        DIFF_TERM => TRUE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "LVDS_25")
      port map (
        O => o_ADC_ch1_p,
        OB =>  o_ADC_ch1_n,  -- Buffer output
        I => i_ADC_ch1_p,  -- Diff_p buffer input (connect directly to top-level port)
        IB => i_ADC_ch1_n -- Diff_n buffer input (connect directly to top-level port)
      );

  ADC_ch2_IBUFDS_inst : IBUFDS_DIFF_OUT
    generic map (
      DIFF_TERM => TRUE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25")
    port map (
      O => o_ADC_ch2_p,
      OB =>  o_ADC_ch2_n,  -- Buffer output
      I => i_ADC_ch2_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => i_ADC_ch2_n -- Diff_n buffer input (connect directly to top-level port)
    );
    ADC_ch3_IBUFDS_inst : IBUFDS_DIFF_OUT
      generic map (
        DIFF_TERM => TRUE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "LVDS_25")
      port map (
        O => o_ADC_ch3_p,
        OB =>  o_ADC_ch3_n,  -- Buffer output
        I => i_ADC_ch3_p,  -- Diff_p buffer input (connect directly to top-level port)
        IB => i_ADC_ch3_n -- Diff_n buffer input (connect directly to top-level port)
      );

  ADC_ch4_IBUFDS_inst : IBUFDS_DIFF_OUT
    generic map (
      DIFF_TERM => TRUE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25")
    port map (
      O => o_ADC_ch4_p,
      OB =>  o_ADC_ch4_n,  -- Buffer output
      I => i_ADC_ch4_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => i_ADC_ch4_n -- Diff_n buffer input (connect directly to top-level port)
    );
  ADC_ch5_IBUFDS_inst : IBUFDS_DIFF_OUT
      generic map (
        DIFF_TERM => TRUE, -- Differential Termination 
        IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
        IOSTANDARD => "LVDS_25")
      port map (
        O => o_ADC_ch5_p,
        OB =>  o_ADC_ch5_n,  -- Buffer output
        I => i_ADC_ch5_p,  -- Diff_p buffer input (connect directly to top-level port)
        IB => i_ADC_ch5_n -- Diff_n buffer input (connect directly to top-level port)
      );

  ADC_ch6_IBUFDS_inst : IBUFDS_DIFF_OUT
    generic map (
      DIFF_TERM => TRUE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25")
    port map (
      O => o_ADC_ch6_p,
      OB =>  o_ADC_ch6_n,  -- Buffer output
      I => i_ADC_ch6_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => i_ADC_ch6_n -- Diff_n buffer input (connect directly to top-level port)
);
  ADC_ch7_IBUFDS_inst : IBUFDS_DIFF_OUT
  generic map (
    DIFF_TERM => TRUE, -- Differential Termination 
    IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
    IOSTANDARD => "LVDS_25")
  port map (
    O => o_ADC_ch7_p,
    OB =>  o_ADC_ch7_n,  -- Buffer output
    I => i_ADC_ch7_p,  -- Diff_p buffer input (connect directly to top-level port)
    IB => i_ADC_ch7_n -- Diff_n buffer input (connect directly to top-level port)
  );

end Behavioral;
