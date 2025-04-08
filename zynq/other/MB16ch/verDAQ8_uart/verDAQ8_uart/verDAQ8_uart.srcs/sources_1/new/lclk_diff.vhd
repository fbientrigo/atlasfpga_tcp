----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2021 23:15:06
-- Design Name: 
-- Module Name: lclk_diff - Behavioral
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

entity lclk_diff is
  Port ( 
    lclk : in std_logic;
    lclk_p: out std_logic;
    lclk_n: out std_logic
    );
end lclk_diff;

architecture Behavioral of lclk_diff is

begin

lclk_p <= lclk;
lclk_n <= not lclk;

end Behavioral;
