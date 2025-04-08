----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2022 22:42:59
-- Design Name: 
-- Module Name: drs4_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity drs4_tb is
Port ( 
drs_trigger: out std_logic
);
end drs4_tb;

architecture Behavioral of drs4_tb is
  signal drs_trg_delay           : std_logic_vector(16 downto 0);
  signal drs_trig_ff :std_logic;
  signal drs_ctl_delay_sel : std_logic_vector(7 downto 0);
begin
--Simulacion
init_trig: process
begin
drs_ctl_delay_sel<=X"05";
drs_trig_ff <= '0';
wait for 200 ns;
drs_trig_ff <= '1';
wait for 20 ns;
drs_trig_ff <= '0';
wait for 300 ns;
wait;
end process;

  drs_trg_delay(0)             <= drs_trig_ff;
  delayed_trig_gen: for bit_no in 1 to 16 generate
    LUT1_inst : LUT1
    generic map (
      INIT => "10")
    port map (
      O  => drs_trg_delay(bit_no),
      I0 => drs_trg_delay(bit_no-1)
    );
  end generate;
  
  -- select delayed hardware trigger
  drs_trigger    <= drs_trg_delay(CONV_INTEGER(drs_ctl_delay_sel));
  




end Behavioral;
