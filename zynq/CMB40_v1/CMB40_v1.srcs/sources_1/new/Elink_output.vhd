----------------------------------------------------------------------------------
-- Company: SAPHIR
-- Engineer: Renzo Barraza
-- 
-- Create Date: 14/10/2024 04:13:09 PM
-- Design Name: 
-- Module Name: Elink_output - Behavioral
-- Project Name: Charge Monitoring Board 
-- Target Devices: Trenz0715 (rev 4) board
-- Tool Versions: Vivado 2018.2
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Elink_output is
    Port ( clk : in STD_LOGIC;
           lvds : out STD_LOGIC);
end Elink_output;

architecture Behavioral of Elink_output is

    signal clk_out : std_logic := '0';         -- Internal signal for clock generation

begin

    -- Process to toggle clk_out on every rising edge of the input clock
    process(clk)
    begin
        if rising_edge(clk) then
            clk_out <= not clk_out;            -- Toggle clk_out on each rising edge
        end if;
    end process;

    -- Assign the LVDS output signals
    lvds <= clk_out;                  -- Positive LVDS signal

end Behavioral;
