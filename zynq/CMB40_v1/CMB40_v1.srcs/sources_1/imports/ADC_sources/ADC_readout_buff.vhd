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
    i_ADclk   : in  std_logic;
    --i_ADclk_n   : in  std_logic;
    i_Lclk    : in  std_logic;
    --i_Lclk_n    : in  std_logic;
    i_ADC_ch_p : in  std_logic_vector(7 downto 0);
    i_ADC_ch_n : in  std_logic_vector(7 downto 0);

    o_ADclk   : out std_logic;
    --o_ADclk_n   : out std_logic;
    o_Lclk   : out std_logic;
    --o_Lclk_n    : out std_logic;
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

BUFG_inst_ADCLK : BUFG
port map (
 O => o_ADclk, -- 1-bit output: Clock output
 I => i_ADclk  -- 1-bit input: Clock input
);

BUFG_inst_LCLK : BUFG
port map (
  O => o_Lclk,     -- 1-bit output: Clock output port
  I => i_Lclk      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
);
o_ADC_ch0_p <= i_ADC_ch_p(0);
o_ADC_ch0_n <= i_ADC_ch_n(0);

o_ADC_ch1_p <= i_ADC_ch_p(1);
o_ADC_ch1_n <= i_ADC_ch_n(1);

o_ADC_ch2_p <= i_ADC_ch_p(2);
o_ADC_ch2_n <= i_ADC_ch_n(2);

o_ADC_ch3_p <= i_ADC_ch_p(3);
o_ADC_ch3_n <= i_ADC_ch_n(3);

o_ADC_ch4_p <= i_ADC_ch_p(4);
o_ADC_ch4_n <= i_ADC_ch_n(4);

o_ADC_ch5_p <= i_ADC_ch_p(5);
o_ADC_ch5_n <= i_ADC_ch_n(5);

o_ADC_ch6_p <= i_ADC_ch_p(6);
o_ADC_ch6_n <= i_ADC_ch_n(6);

o_ADC_ch7_p <= i_ADC_ch_p(7);
o_ADC_ch7_n <= i_ADC_ch_n(7);

  
end Behavioral;
