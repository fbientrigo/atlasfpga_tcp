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
           areset : in std_logic;
           i_busy : in std_logic;
           i_in_trigger : in STD_LOGIC_vector (7 downto 0);
           i_soft_trigger : in std_logic;
           i_trigg_select_function: in std_logic_vector( 2 downto 0);
           i_trigg_mask: in std_logic_vector( 7 downto 0);
           i_en_soft_trigger : in std_logic;
           o_out_trigger : out STD_LOGIC
           );
end trigger_logic;

architecture Behavioral of trigger_logic is
signal trigger_input_samp,trigger_buff,trigg_read,trigg_selec_buff: std_logic_vector ( 7 downto 0);
signal out_set : std_logic_vector(7 downto 0);
signal ones_counter : integer range 0 to 8;
signal new_input_AND,new_input_OR,rise_input : std_logic_vector(7 downto 0);
signal samp_out,unset_out : std_logic;
signal count_delay: integer range 0 to 15;
signal out_set_OR,out_set_AND,out_set_F,unset_input:std_logic;
begin

new_i:for I in 0 to 7 generate
    new_input_AND(I) <= (not i_trigg_mask(I)) or rise_input(I);
    new_input_OR(I) <=  i_trigg_mask(I) and rise_input(I);
end generate;
-----------
gen_rise:for I in 0 to 7 generate
    process(i_in_trigger(I),unset_input) 
    begin
    if(unset_input = '1') then
        rise_input(I) <= '0';
    elsif(rising_edge(i_in_trigger(I))) then
        rise_input(I) <= '1';
    end if;
    end process;
end generate;


--out_set_F <= out_set(0) or out_set(1) or out_set(2) or out_set(3) or out_set(4) or out_set(5) or out_set(6) or out_set(7);
out_set_OR <=  new_input_OR(0) or new_input_OR(1) or new_input_OR(2) or new_input_OR(3) or new_input_OR(4) or new_input_OR(5) or new_input_OR(6) or new_input_OR(7);

out_set_AND <= new_input_AND(0) and new_input_AND(1) and new_input_AND(2) and new_input_AND(3) and new_input_AND(4) and new_input_AND(5) and new_input_AND(6) and new_input_AND(7);

out_set_F <= out_set_OR when (i_trigg_select_function = b"001") else
             out_set_AND when  (i_trigg_select_function = b"010") else
             '0';
--trigg_gen: for I in 0 to 7 generate
--    input_trigg_proc:
--    process(new_input(I),areset)
--    begin
--        if(areset = '1') then
--            out_set(I) <= '0';
--        elsif(rising_edge(new_input(I))) then           
--               CASE i_trigg_select_function is
--                       WHEN b"001" =>--OR 
--                           out_set(I) <= new_input(0) and new_input(1) and new_input(2) and new_input(3) and new_input(4) and new_input(5) and new_input(6) and trigger_buff(7);
--                       WHEN b"010" =>--AND
--                           out_set(I) <= new_input(0) or new_input(1) or new_input(2) or new_input(3) or new_input(4) or new_input(5) or new_input(6) or new_input(7);
--                       WHEN others =>
--                           out_set(I) <= '0';
--               end CASE; 
--        end if;
--    end process;
--end generate;

process(out_set_F,unset_out)
begin
if(unset_out='1') then
    samp_out <= '0';
elsif(rising_edge(out_set_F)) then
    samp_out <= '1';
end if;
end process;

process(sys_clk,areset)
begin
    if(areset = '1') then
        count_delay <= 0;
        o_out_trigger <= '0';
        unset_input <= '1';
    elsif(rising_edge(sys_clk))then
        unset_input <= not unset_input;
        --unset_input <= '0';
        if((samp_out = '1' and  i_en_soft_trigger='0') or (i_soft_trigger = '1' and i_en_soft_trigger='1')) then --add delay to the out for long the trigger           
            if(count_delay = 5) then
                o_out_trigger <= '0';
                unset_out <= '1';
                count_delay <= 0;
            else
                unset_out <= '0';
                o_out_trigger <= '1';
                count_delay <= count_delay+1;
            end if;
         else
            unset_out <= '0';
            o_out_trigger <= '0';
         end if;
    end if;               
end process;

--process(sys_clk,areset) 
--begin
--    if(areset = '1') then
--        trigger_buff <= (others => '0');
--    elsif(rising_edge(sys_clk)) then
--        for i in 0 to 7 loop
--           trigger_buff(i)<= trigger_input_samp (i);
--        end loop;
--    end if;
--end process;
--o_out_trigger <= out_set or out_set_1 or out_set_2;
--function_process:
--process(sys_clk,areset)
--begin
--if(areset = '1') then
--   rst_trig <= '1';
--elsif(rising_edge(sys_clk))then
--   if(out_set = '1') then
--    rst_trig <= '1';
--   else
--    rst_trig <= '0';
--   end if;
--   out_set_1 <= out_set;
--   out_set_2 <= out_set_1;
   
--    CASE i_trigg_select_function is
--        WHEN b"001" =>--OR 
--            out_set <= trigger_buff(0) and trigger_buff(1) and trigger_buff(2) and trigger_buff(3) and trigger_buff(4) and trigger_buff(5) and trigger_buff(6) and trigger_buff(7);
--        WHEN b"010" =>--AND
--            out_set <= trigger_buff(0) or trigger_buff(1) or trigger_buff(2) or trigger_buff(3) or trigger_buff(4) or trigger_buff(5) or trigger_buff(6) or trigger_buff(7);
--        WHEN others =>
--            out_set <= '0';
--    end CASE; 
--end if;
--end process;

end Behavioral;
