----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2020 05:03:08 PM
-- Design Name: 
-- Module Name: mapper - Behavioral
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

entity mapper is
  Port (
    i_in_0  : in std_logic_vector(15 downto 0);
    i_in_1  : in std_logic_vector(15 downto 0);
    i_in_2  : in std_logic_vector(15 downto 0);
    i_in_3  : in std_logic_vector(15 downto 0);
    i_in_4  : in std_logic_vector(15 downto 0);
    i_in_5  : in std_logic_vector(15 downto 0);
    i_in_6  : in std_logic_vector(15 downto 0);
    i_in_7  : in std_logic_vector(15 downto 0);
    o_out_0 : out std_logic_vector (11 downto 0); 
    o_out_1 : out std_logic_vector (11 downto 0); 
    o_out_2 : out std_logic_vector (11 downto 0); 
    o_out_3 : out std_logic_vector (11 downto 0); 
    o_out_4 : out std_logic_vector (11 downto 0); 
    o_out_5 : out std_logic_vector (11 downto 0); 
    o_out_6 : out std_logic_vector (11 downto 0); 
    o_out_7 : out std_logic_vector (11 downto 0) 
  );
end mapper;

architecture Behavioral of mapper is
signal ch0 : std_logic_vector (0 to 11);
signal ch1 : std_logic_vector (0 to 11);
signal ch2 : std_logic_vector (0 to 11);
signal ch3 : std_logic_vector (0 to 11);
signal ch4 : std_logic_vector (0 to 11);
signal ch5 : std_logic_vector (0 to 11);
signal ch6 : std_logic_vector (0 to 11);
signal ch7 : std_logic_vector (0 to 11);

begin

--ch0 <= not(i_in_0(12 downto 8)) & i_in_0 (5 downto 0) & not(i_in_0(13 ));
--ch1 <= not(i_in_1(12 downto 8)) & i_in_1 (5 downto 0) & not(i_in_1(13 ));
--ch2 <= i_in_2(12 downto 8) & not(i_in_2 (5 downto 0)) & i_in_2(13 );
--ch3 <= not(i_in_3(12 downto 8)) & i_in_3 (5 downto 0) & not(i_in_3  (13 ));
--ch4 <= i_in_4(12 downto 8) & not(i_in_4 (5 downto 0)) & i_in_4(13 );
--ch5 <= i_in_5(12 downto 8) & not(i_in_5 (5 downto 0)) & i_in_5(13 );
--ch6 <= i_in_6(12 downto 8) & not(i_in_6 (5 downto 0)) & i_in_6(13 );
--ch7 <= i_in_7(12 downto 8) & not(i_in_7 (5 downto 0)) & i_in_7(13 );


change_endian: for i in 0 to 5 generate
o_out_0(11 - i*2 downto 11 - i*2 - 1) <=  i_in_0(i) & not(i_in_0(i+8)) ;
o_out_1(11 - i*2 downto 11 - i*2 - 1) <=  i_in_1(i) & not(i_in_1(i+8)) ;
o_out_2(11 - i*2 downto 11 - i*2 - 1) <=  not(i_in_2(i)) & i_in_2(i+8) ;
o_out_3(11 - i*2 downto 11 - i*2 - 1) <=  i_in_3(i) & not(i_in_3(i+8)) ;
o_out_4(11 - i*2 downto 11 - i*2 - 1) <=  (i_in_4(i)) & not(i_in_4(i+8)) ;
o_out_5(11 - i*2 downto 11 - i*2 - 1) <=  not(i_in_5(i)) & (i_in_5(i+8)) ;
o_out_6(11 - i*2 downto 11 - i*2 - 1) <=  not(i_in_6(i)) & (i_in_6(i+8))  ;
o_out_7(11 - i*2 downto 11 - i*2 - 1) <=  not(i_in_7(i)) & (i_in_7(i+8)) ;
--o_out_1(i) <= ch1(i);
--o_out_2(i) <= ch2(i);
--o_out_3(i) <= ch3(i);
--o_out_4(i) <= ch4(i);
--o_out_5(i) <= ch5(i);
--o_out_6(i) <= ch6(i);
--o_out_7(i) <= ch7(i);
end generate;

end Behavioral;
