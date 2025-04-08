----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 15:36:02
-- Design Name: 
-- Module Name: M1to5 - Behavioral
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

entity M1to5 is
  Port (in1  :in std_logic;
        out5 : out std_logic_vector(4 downto 0)
   );
end M1to5;

architecture Behavioral of M1to5 is

begin
Map_out :
for i in 0 to 4 generate
    out5(i) <= in1;
end generate;
end Behavioral;
