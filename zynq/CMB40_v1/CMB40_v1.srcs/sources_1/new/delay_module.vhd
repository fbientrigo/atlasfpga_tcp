----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2023 14:19:46
-- Design Name: 
-- Module Name: delay_module - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity delay_module is
generic(
  Max_lut_number : integer := 1024 --Max number of lut that will be used for generate delay
);
  Port (
  delay_sel : in std_logic_vector(9 downto 0);
  signal_in : in std_logic;
  signal_out: out std_logic
  );
end delay_module;

architecture Behavioral of delay_module is
signal sig_delay : std_logic_vector(Max_lut_number-1 downto 0);

attribute dont_touch : string;
attribute dont_touch of sig_delay : signal is "true";
begin
sig_delay(0) <= signal_in;
signal_out <= sig_delay(CONV_INTEGER(delay_sel)*8);

LUT1_gen : for i in 1 to Max_lut_number-1 generate
LUT1_inst : LUT1
--attribute DONT_TOUCH : string;
--attribute DONT_TOUCH of LUT1_inst: label is "TRUE";
  generic map (
     INIT => B"10")--Modo buffer
  port map (
     O => sig_delay(i),   -- LUT general output
     I0 => sig_delay(i-1)  -- LUT input
  );
end generate;


end Behavioral;
