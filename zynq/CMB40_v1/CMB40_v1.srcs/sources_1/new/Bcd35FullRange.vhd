----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2024 05:35:49 PM
-- Design Name: 
-- Module Name: Bcd35FullRange - Behavioral
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
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all ;

--pragma translate_off
library unisim ;
use unisim.vcomponents.all ;
--pragma translate_on

entity Bcd35FullRange is
	port (
		Clk			: in std_logic;							-- clock
		Rst			: in std_logic;							-- reset
		EnableIn	: in std_logic;							-- enable in
		Up			: in std_logic;							-- count Up (not) down
		BcdVec		: out std_logic_vector(12 downto 0)		-- 3 1/2 decade output
		);	
end Bcd35FullRange;

architecture Bcd35FullRange_arch of Bcd35FullRange is


signal BcdInt 	: std_logic_vector(12 downto 0) ;

begin


BcdVec  <= BcdInt ;

process (Clk, Rst)
begin
	if (Rst = '1') then
		BcdInt <= "1001001010101" ;
	elsif (Clk'event and Clk = '1') then
		if (EnableIn = '1' and Up = '1' and (BcdInt /= "0001001010101")) then		-- count Up
			if (BcdInt = "1000000000001") then										-- -1 ??
				BcdInt <= "0000000000000" ;
			elsif (BcdInt(12) = '0' and BcdInt(7 downto 0) = "10011001") then			-- +x99 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) + 1 & "00000000" ;
			elsif (BcdInt(12) = '0' and BcdInt(3 downto 0) = "1001") then				-- +xx9 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) & BcdInt(7 downto 4) + 1 & "0000" ;
			elsif (BcdInt(12) = '0') then
				BcdInt <= BcdInt(12) & BcdInt(11 downto 4) & BcdInt(3 downto 0) + 1 ;
			elsif (BcdInt(12) = '1' and BcdInt(7 downto 0) = "00000000") then			-- -x00 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) - 1 & "10011001" ;
			elsif (BcdInt(12) = '1' and BcdInt(3 downto 0) = "0000") then				-- -xx0 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) & BcdInt(7 downto 4) - 1 & "1001" ;
			else
				BcdInt <= BcdInt(12) & BcdInt(11 downto 4) & BcdInt(3 downto 0) - 1 ;
			end if ;
		elsif (EnableIn = '1' and Up = '0'and (BcdInt /= "1001001010101")) then		-- count down
			if (BcdInt = "0000000000000") then										-- +000 ?
				BcdInt <= "1000000000001" ;
			elsif (BcdInt(12) = '0' and BcdInt(7 downto 0) = "00000000") then			-- +x00 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) - 1 & "10011001" ;
			elsif (BcdInt(12) = '0' and BcdInt(3 downto 0) = "0000") then				-- + xx0 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) & BcdInt(7 downto 4) - 1 & "1001" ;
			elsif (BcdInt(12) = '0') then
				BcdInt <= BcdInt(12) & BcdInt(11 downto 4) & BcdInt(3 downto 0) - 1 ;
			elsif (BcdInt(12) = '1' and BcdInt(7 downto 0) = "10011001") then			-- -x99 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) + 1 & "00000000" ;
			elsif (BcdInt(12) = '1' and BcdInt(3 downto 0) = "1001") then				-- -xx9 ?
				BcdInt <= BcdInt(12) & BcdInt(11 downto 8) & BcdInt(7 downto 4) + 1 & "0000" ;
			else
				BcdInt <= BcdInt(12) & BcdInt(11 downto 4) & BcdInt(3 downto 0) + 1 ;
			end if ;
		end if ;
	end if ;
end process ;

end Bcd35FullRange_arch;



