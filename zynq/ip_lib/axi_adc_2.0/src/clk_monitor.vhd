----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.08.2023 10:22:51
-- Design Name: 
-- Module Name: clk_monitor - Behavioral
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

use IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_monitor is
  Generic(
  freq_clk_fix : integer := 100000000;
  size_counter : integer :=15;
  max_count : integer := 8191 --x1fff 13 bits
  );
  Port ( 
  
  clk_in : in std_logic; --clk to fix freq
  clk_monitor_in : in std_logic; --clk to be monitorized
  cnt_out : out std_logic_vector(size_counter downto 0) --count output
  );
end clk_monitor;

architecture Behavioral of clk_monitor is
 
signal max_count_un : unsigned (size_counter downto 0); 
signal cnt_x,cnt_4,cnt_1,cnt_2,cnt_3 : unsigned (size_counter downto 0) := (others => '0');
signal cnt_f,cnt_f_div :unsigned (size_counter downto 0) := (others => '0');
signal cnt_fix : unsigned (size_counter downto 0):= (others => '0');
signal flag_end_cnt : std_logic;
begin

max_count_un <=  to_unsigned(max_count,max_count_un'length); 

cnt_out <= std_logic_vector(cnt_f);
monitor_proc:
process(clk_monitor_in)
begin
if(flag_end_cnt = '1') then
    cnt_x <= (others => '0');
elsif(rising_edge(clk_monitor_in)) then
    cnt_x <= cnt_x +1;    
end if;
end process;

process(clk_in) 
begin
if(rising_edge(clk_in))then
    if(cnt_fix = max_count_un) then
         flag_end_cnt <= '1';
         cnt_fix <= (others => '0');
         cnt_f <= (cnt_1+cnt_2+cnt_3+cnt_4);
         cnt_f_div <= shift_right(cnt_f,2); -- divide by 4
         cnt_1 <= cnt_x;
         cnt_2 <= cnt_1;
         cnt_3 <= cnt_2;
         cnt_4 <= cnt_3;
    else
        flag_end_cnt <= '0';
        cnt_fix <= cnt_fix + 1;
    end if;
end if;
end process;

end Behavioral;
