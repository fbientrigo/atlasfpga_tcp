----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2022 21:55:12
-- Design Name: 
-- Module Name: reset_init - Behavioral
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
-- 
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

entity reset_init is
  Port (
  clk : in std_logic;
  rst: out std_logic;
  input_start : in std_logic
  
  
   );
end reset_init;

architecture Behavioral of reset_init is
signal flag_reset: std_logic:= '0';
signal counter : integer range 0 to 16;
begin
rst_proc: process(clk)
begin
if(rising_edge(clk)) then
    rst <= '1';
    if(input_start = '1') then
        rst <= '0';
        flag_reset <= '1';
    elsif(flag_reset = '1') then
        rst <= '0';
        counter <= counter + 1 ;
        if(counter = 15) then
            flag_reset <= '0';
            rst <= '1';
        end if;
    end if;
end if;

end process;

end Behavioral;
