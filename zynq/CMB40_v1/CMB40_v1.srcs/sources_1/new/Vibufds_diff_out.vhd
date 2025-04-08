----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2023 16:45:43
-- Design Name: 
-- Module Name: Vibufds_diff_out - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity Vibufds_diff_out is
  Port (
  MUXOUT_P : in std_logic_vector( 7 downto 0);
  MUXOUT_N : in std_logic_vector( 7 downto 0);
  o_MUXOUT_P : out std_logic_vector( 7 downto 0);
  o_MUXOUT_N : out std_logic_vector( 7 downto 0)
  );
end Vibufds_diff_out;

architecture Behavioral of Vibufds_diff_out is

begin

adc_buf_gen:
for i in 0 to 7 generate
   IBUFDS_DIFF_OUT_inst : IBUFDS_DIFF_OUT
   generic map (
      DIFF_TERM => TRUE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25") -- Specify the input I/O standard
   port map (
      O => o_MUXOUT_P(i),     -- Buffer diff_p output
      OB => o_MUXOUT_N(i),   -- Buffer diff_n output
      I => MUXOUT_P(i),  -- Diff_p buffer input (connect directly to top-level port)
      IB => MUXOUT_N(i) -- Diff_n buffer input (connect directly to top-level port)
   );
end generate;

end Behavioral;
