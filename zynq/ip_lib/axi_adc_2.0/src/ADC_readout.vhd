----------------------------------------------------------------------------------
-- Company: UTFSM
-- Engineer: Rimsky Rojas
-- 
-- Create Date: 06/17/2019 10:09:09 PM
-- Design Name: 
-- Module Name: ADC_readout - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- readout of up to 65 MHz
-- Dependencies: 
-- my_iserdes.vhd
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--  must constrains generated clock data_clk to be Lclk divided by 6. and phase shift one clock of Lclk?
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ADC_readout is
Generic (
    N_bits      : natural := 12
);
Port ( sys_clk      : in STD_LOGIC;
       sys_rst      : in STD_LOGIC;
       
       ADclk        : in std_logic;
       i_Lclk         : in std_logic;
       data_in_ch0  : in std_logic;
       data_in_ch2  : in std_logic;
       data_in_ch4  : in std_logic;
       data_in_ch6  : in std_logic;
       data_out_ch0 : out std_logic_vector (N_bits - 1 downto 0);
       data_out_ch2 : out std_logic_vector (N_bits - 1 downto 0);
       data_out_ch4 : out std_logic_vector (N_bits - 1 downto 0);
       data_out_ch6 : out std_logic_vector (N_bits - 1 downto 0);
--       data_debug     : out std_logic_vector (N_bits - 1 downto 0)  
       o_data_clk     : out std_logic

       );
end ADC_readout;

architecture Behavioral of ADC_readout is
signal prev_ADCclk    : std_logic;
signal data_ch_0      : std_logic_vector (N_bits - 1 downto 0);
signal data_ch_0_temp      : std_logic_vector (0 to N_bits - 1);
signal data_ch_2      : std_logic_vector (N_bits - 1 downto 0);
signal data_ch_2_temp      : std_logic_vector (0 to N_bits - 1);
signal data_ch_4      : std_logic_vector (N_bits - 1 downto 0);
signal data_ch_4_temp      : std_logic_vector (0 to N_bits - 1);
signal data_ch_6      : std_logic_vector (N_bits - 1 downto 0);
signal data_ch_6_temp      : std_logic_vector (0 to N_bits - 1);
signal data_out_ch0_r : std_logic_vector (N_bits - 1 downto 0);
signal data_out_ch2_r : std_logic_vector (N_bits - 1 downto 0);
signal data_out_ch4_r : std_logic_vector (N_bits - 1 downto 0);
signal data_out_ch6_r : std_logic_vector (N_bits - 1 downto 0);

signal Lclk    : std_logic;
signal new_data : std_logic;
signal data_clk : std_logic;

ATTRIBUTE X_INTERFACE_INFO : STRING;
ATTRIBUTE X_INTERFACE_INFO of sys_clk: SIGNAL is "xilinx.com:signal:clock:1.0 sys_clk CLK";
ATTRIBUTE X_INTERFACE_INFO of i_Lclk: SIGNAL is "xilinx.com:signal:clock:1.0 i_Lclk CLK";
ATTRIBUTE X_INTERFACE_INFO of o_data_clk: SIGNAL is "xilinx.com:signal:clock:1.0 o_data_clk CLK";
ATTRIBUTE X_INTERFACE_INFO of sys_rst: SIGNAL is "xilinx.com:signal:reset:1.0 sys_rst RST";

ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER of sys_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clk, ASSOCIATED_RESET sys_rst, FREQ_HZ 100000000";
ATTRIBUTE X_INTERFACE_PARAMETER of i_Lclk: SIGNAL is "ASSOCIATED_BUSIF i_Lclk, ASSOCIATED_RESET sys_rst, FREQ_HZ 400000000";
ATTRIBUTE X_INTERFACE_PARAMETER of o_data_clk: SIGNAL is "ASSOCIATED_BUSIF o_data_clk, ASSOCIATED_RESET sys_rst, FREQ_HZ 80000000";
ATTRIBUTE X_INTERFACE_PARAMETER of sys_rst: SIGNAL is "POLARITY ACTIVE_HIGH";

begin


   BUFR_inst : BUFR
--generic mp (
--   BUFR_DIVIDE => "BYPASS",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
--   SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
--)
port map (
   O => Lclk,     -- 1-bit output: Clock output port
   CE => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
   CLR => '0', -- 1-bit input: Active high, asynchronous clear (Divided modes only)
   I => i_Lclk      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
);
   BUFG_inst : BUFG
port map (
O => data_clk,     -- 1-bit output: Clock output port
I => new_data      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
);

o_data_clk <= data_clk;

process (data_clk) begin
  if (rising_edge(data_clk)) then
    data_out_ch0 <= data_out_ch0_r;
    data_out_ch2 <= data_out_ch2_r;
    data_out_ch4 <= data_out_ch4_r;
    data_out_ch6 <= data_out_ch6_r;
  end if;
end process;

swap:
for i in data_ch_0'range generate
   data_ch_0_temp(i) <= data_ch_0(i) ; 
   data_ch_2_temp(i) <= data_ch_2(i) ; 
   data_ch_4_temp(i) <= data_ch_4(i) ; 
   data_ch_6_temp(i) <= data_ch_6(i) ; 
   --when i is 0, you assign a's right-most bit to b's left-most bit
end generate swap;

process (Lclk, ADclk) begin
  if (rising_edge(Lclk)) then
    prev_ADCclk <= ADclk;
    if (prev_ADCclk = '0' and ADclk = '1') then
      data_out_ch0_r <= data_ch_0_temp;
      data_out_ch2_r <= data_ch_2_temp;
      data_out_ch4_r <= data_ch_4_temp;
      data_out_ch6_r <= data_ch_6_temp;
    end if;
    if (ADclk = '1') then
      new_data <= '1';
    else
      new_data <= '0';
    end if;

  end if;
end process;

iserdes_ch0_inst: entity work.my_iserdes (Behavioral)
Port map(
    sys_clk       => sys_clk,
    sys_rst       => sys_rst,

    ADclk         => ADclk,
    Lclk          => Lclk,
    data_in       => data_in_ch0,
--    data_out      => open,
    data_debug    => data_ch_0
);

iserdes_ch2_inst: entity work.my_iserdes (Behavioral)
Port map(
    sys_clk       => sys_clk,
    sys_rst       => sys_rst,

    ADclk         => ADclk,
    Lclk          => Lclk,
    data_in       => data_in_ch2,
--    data_out      => open,
    data_debug    => data_ch_2
);
iserdes_ch4_inst: entity work.my_iserdes (Behavioral)
Port map(
    sys_clk       => sys_clk,
    sys_rst       => sys_rst,

    ADclk         => ADclk,
    Lclk          => Lclk,
    data_in       => data_in_ch4,
--    data_out      => open,
    data_debug    => data_ch_4
);
iserdes_ch6_inst: entity work.my_iserdes (Behavioral)
Port map(
    sys_clk       => sys_clk,
    sys_rst       => sys_rst,

    ADclk         => ADclk,
    Lclk          => Lclk,
    data_in       => data_in_ch6,
--    data_out      => open,
    data_debug    => data_ch_6
);
end Behavioral;
