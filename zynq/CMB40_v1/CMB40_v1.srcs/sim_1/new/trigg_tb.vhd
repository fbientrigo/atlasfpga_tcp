----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2023 15:40:49
-- Design Name: 
-- Module Name: trigg_tb - Behavioral
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

entity trigg_tb is
--  Port ( );
end trigg_tb;

architecture Behavioral of trigg_tb is

signal CLK_in : std_logic := '0';
constant clk_period : time := 10.000ns;
signal rst : std_logic := '0';
signal i_in_trigger : std_logic_vector(7 downto 0);
signal out_trigg : std_logic;
signal mask : std_logic_vector ( 7 downto 0 );
component trigger_logic
Port ( sys_clk : in STD_LOGIC;
           areset : in std_logic;
           i_busy : in std_logic;
           i_in_trigger : in STD_LOGIC_vector (7 downto 0);
           i_soft_trigger : in std_logic;
           i_trigg_select_function: in std_logic_vector( 2 downto 0);
           i_trigg_mask: in std_logic_vector( 7 downto 0);
           o_out_trigger : out STD_LOGIC
           );
end component;
begin



CLK100_process:process
begin
    CLK_in <= '1';
    wait for clk_period/2;
    CLK_in <= '0';
    wait for clk_period/2;
end process;

trigg: trigger_logic
port map(
    sys_clk => CLK_in,
    areset => rst,
    i_busy => '0',
    i_in_trigger => i_in_trigger,
    i_soft_trigger => '0',
    i_trigg_select_function => b"010",
    i_trigg_mask => mask,
    o_out_trigger => out_trigg
);

TB:
process
begin
i_in_trigger <= (others => '0');
rst <= '1';
wait for 100 ns;
mask <= X"15";
rst <= '0';
wait for 100 ns;
i_in_trigger <= X"33";

wait for 100 ns;
i_in_trigger <= X"00";
mask <= X"64";

wait for 99 ns;
i_in_trigger <= X"64";

wait for 100 ns;
wait;
end process;

end Behavioral;
