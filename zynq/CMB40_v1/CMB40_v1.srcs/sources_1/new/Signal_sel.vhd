----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Victor Arredondo
-- 
-- Create Date: 28.06.2023 15:32:25
-- Design Name: 
-- Module Name: Signal_sel - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Select from signals mezzanines to read on the firmware. 
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

entity Signal_sel is
 Port ( 
 Mux_sel: in std_logic_vector(2 downto 0);
 D : in std_logic_vector(4 downto 0); 
 O : out std_logic
 );
end Signal_sel;

architecture Behavioral of Signal_sel is
--attribute dont_touch : string;
--attribute dont_touch of Behavioral : architecture is "yes";

signal O_s: std_logic;
begin
O <= O_s;
O_s <= D(0) when Mux_sel = b"001" else
     D(1) when Mux_sel = b"010" else
     D(2) when Mux_sel = b"011" else
     D(3) when Mux_sel = b"100" else
     D(4) when Mux_sel = b"101" else
     '0' when Mux_sel = b"110" else
     '0' when Mux_sel = b"111" else
     '0';

end Behavioral;
