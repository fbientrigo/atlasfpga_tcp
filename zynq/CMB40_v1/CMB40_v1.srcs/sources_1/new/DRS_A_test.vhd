
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DRS_A_test is
  Port ( 
  A_vec : in std_logic_vector(3 downto 0);
  i_RSRLOAD : in std_logic;
  i_SRIN : in std_logic;
  i_dwrite : in std_logic;
  i_SRCLK : in std_logic;
  i_en_test: in std_logic;
  i_nrst : in std_logic;
  o_A_vec : out std_logic_vector(3 downto 0);
  o_RSRLOAD: out std_logic;
  o_dwrite : out std_logic;
  o_SRCLK: out std_logic;
  o_SRIN : out std_logic;
  i_clk : in std_logic
  );
end DRS_A_test;

architecture Behavioral of DRS_A_test is
signal sim_clk : std_logic_vector(3 downto 0);
signal count1,count2,count3,count4 : integer range 0 to 5 := 0;
begin

process(i_clk,i_nrst)
--sim_clk(0) -> 25 MHz
--sim_clk(1) -> 12.5 MHz
--sim_clk(2) -->6.25 MHz
--sim_clk(3) --> 3.12 MHz
begin
if(i_nrst = '0') then
    sim_clk <= (others => '0');
elsif(rising_edge(i_clk)) then
        sim_clk(0) <= not sim_clk(0);
        if(sim_clk(0)='1') then      
            sim_clk(1) <= not sim_clk(1);
        end if;
        if(sim_clk(1) = '1' and sim_clk(0) = '1') then
            sim_clk(2) <= not sim_clk(2);
        end if;
        if(sim_clk(2) = '1' and sim_clk(1) = '1' and sim_clk(0) = '1') then
            sim_clk(3) <= not sim_clk(3);
        end if;
end if;
end process;

process(i_clk)
begin
if(rising_edge(i_clk))then
    if(i_en_test = '1') then
         o_A_vec <= sim_clk;
         o_RSRLOAD <= sim_clk(0);
         o_dwrite <= sim_clk(1);
         o_SRCLK <= sim_clk(0);
         o_SRIN  <= sim_clk(2);
    else
        o_A_vec <= A_vec;
        o_RSRLOAD <= i_RSRLOAD;
        o_dwrite <= i_dwrite;
        o_SRCLK <= i_SRCLK;
        o_SRIN  <= i_SRIN;
    end if;
end if;
end process;

end Behavioral;