----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2021 12:20:43 AM
-- Design Name: 
-- Module Name: trigger_logic - Behavioral
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

entity trigger_logic is
    Port ( sys_clk : in STD_LOGIC;
            aresetn : in std_logic;
           i_in_0 : in STD_LOGIC;
           i_in_2 : in STD_LOGIC;
           i_trigger_in : in std_logic;
           i_soft_trigger : in std_logic;
           i_VETO : in std_logic;
           i_trigg_mask: in std_logic_vector(8 downto 0);
           i_scint1 : in std_logic;
--           i_scint1_n : in std_logic;
           i_scint2 : in std_logic;
           o_out : out STD_LOGIC
           );
end trigger_logic;

architecture Behavioral of trigger_logic is

signal in_0_delay_vector : std_logic_vector (9 downto 0);
signal in_2_delay_vector : std_logic_vector (9 downto 0);
signal in0_toggle : std_logic;
signal in2_toggle : std_logic;
signal in0_sync : std_logic;
signal in0_mono : std_logic;
signal in2_sync : std_logic;
signal in2_mono : std_logic;
signal scint1_i : std_logic;
begin

--  scint1_IBUFDS_inst : IBUFDS_DIFF_OUT
--    generic map (
--      DIFF_TERM => TRUE, -- Differential Termination 
--      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
--      IOSTANDARD => "LVDS_25")
--    port map (
--      O => scint1_i,
--      OB =>  open,  -- Buffer output
--      I => i_scint1_p,  -- Diff_p buffer input (connect directly to top-level port)
--      IB => i_scint1_n -- Diff_n buffer input (connect directly to top-level port)
--    );


process (i_in_0, aresetn) begin
if (aresetn = '0') then
    in0_toggle <= '0';
elsif rising_edge(i_in_0) then
  in0_toggle <= not in0_toggle;
end if;
end process;

process (i_in_2, aresetn) begin
if (aresetn = '0') then
    in2_toggle <= '0';
elsif rising_edge(i_in_2) then
  in2_toggle <= not in2_toggle;
end if;
end process;

process (sys_clk) begin
if rising_edge(sys_clk) then
  in0_sync <= in0_toggle;
  in_0_delay_vector <= in0_sync &in_0_delay_vector(9 downto 1) ;
  in2_sync <= in2_toggle;
  in_2_delay_vector <= in2_sync &in_2_delay_vector(9 downto 1) ;
end if;
end process;

in0_mono <= in0_toggle xor in_0_delay_vector(0);
in2_mono <= in2_toggle xor in_2_delay_vector(0);

o_out <=    ((((i_scint1 and  i_scint2 )or i_trigg_mask(0)) and 
            (in0_mono or i_trigg_mask(1)) and 
            (in2_mono or i_trigg_mask(3)))
            or i_soft_trigger) and 
            not i_VETO;

end Behavioral;
