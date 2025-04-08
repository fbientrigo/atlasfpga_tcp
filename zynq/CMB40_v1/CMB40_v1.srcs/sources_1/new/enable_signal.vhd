----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.07.2023 12:16:28
-- Design Name: 
-- Module Name: enable_signal - Behavioral
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

entity enable_signal is
Generic(
    signal_size : integer:=1
    );
  Port ( 
  signal_in : in std_logic_vector(signal_size downto 0);
  enable : in std_logic_vector(signal_size downto 0);
  signal_out : out std_logic_vector(signal_size downto 0)
  );
end enable_signal;

architecture Behavioral of enable_signal is

begin

gen_output:
for i in 0 to signal_size generate
    signal_out(i) <= signal_in(i) and enable(i);
end generate gen_output;
   
end Behavioral;
