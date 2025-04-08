----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/17/2019 10:19:42 PM
-- Design Name: 
-- Module Name: my_iserders - Behavioral
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
-- This modules require a second ADclk pulse to read te first one, usefull in cotinuous mode, not in
-- single shot. for single shot, two clock must be given
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_iserdes is
Generic (
    N_bits      : natural := 12
);
Port ( sys_clk      : in  STD_LOGIC;
       sys_rst      : in  STD_LOGIC;
       
       ADclk        : in  std_logic;
       Lclk         : in  std_logic;
       data_in      : in  std_logic;
--       data_out     : out std_logic_vector (N_bits - 1 downto 0); 
       data_debug   : out std_logic_vector (N_bits - 1 downto 0)
--       new_data     : out std_logic
       );
end my_iserdes;

architecture Behavioral of my_iserdes is
--signal prev_ADCclk    : std_logic;
--signal bit_counter    : natural ;
signal data_odd       : std_logic_vector (N_bits/2 - 1 downto 0);
signal data_even      : std_logic_vector (N_bits/2 - 1 downto 0);
signal data_i   : std_logic_vector (N_bits - 1 downto 0);

attribute DONT_TOUCH : string;
attribute DONT_TOUCH of data_i: signal is "TRUE";

begin


my_label:
  for i in 0 to (N_bits/2 - 1) generate
  begin
    data_i(i*2+1 downto i*2) <= data_odd (i) & data_even(i);
  end generate;

data_debug <= data_i;

odd_catch:
process (Lclk, ADclk) begin
  if (rising_edge(Lclk)) then
    data_odd <= data_odd(N_bits/2 - 2 downto 0 ) & data_in;
  end if;
end process;

even_catch:
process (Lclk, ADclk) begin
  if (falling_edge(Lclk)) then
    data_even <= data_even(N_bits/2 - 2 downto 0 ) & data_in;
  end if;
end process;

end Behavioral;
