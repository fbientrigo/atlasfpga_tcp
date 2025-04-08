----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2024 05:34:27 PM
-- Design Name: 
-- Module Name: PhaseControlFullRange - Behavioral
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
use unisim.all ;
--pragma translate_on

-- Libraries for Synplicity
-- Needed for components as LUT, SRL which get an INIT parameter.
-- When this library is not mentioned Synplify_Pro fails during synthesis of
-- the hardware with an error about the INIT value.
-- library virtex2;
-- use virtex2.components.all;
-- This library is ignored by Mentor Precision.
-- Only a warning is generated.
-- End libraries for Synplicity

entity PhaseControlFullRange is
	port (
		Enable			: in std_logic;				-- Enable input, normally High, but alLows function to be bypassed to speed up simulation when Low
		MonClkIn		: in std_logic;				-- clocK to be monitored
		RxClkIn			: in std_logic;				-- clocK from dcm
		CtlClk			: in std_logic;				-- PhaseControlFullRange clocK
		LocKedIn		: in std_logic;				-- dcm locKed in
		Rst				: in std_logic;				-- reset
		PsDone			: in std_logic;				-- High when dcm has changed phase
		ForceUp			: in std_logic;				-- forces phase value up when High
		ForceDown		: in std_logic;				-- forces phase value down when High
		DcmDiv2Used		: in std_logic;				-- normally '0', set to '1' if DCM divide_by_2 option
													-- is used (SDR designs)
		K 				: in std_logic_vector(6 downto 0);	-- constant to be modified in the case where the data
													-- and clocK do not arrive at the part exactly aligned
													-- permissable values 0 to 127 (0 to 180 degrees),
													-- set default to "0000000"
		LockedOut		: out std_logic;			-- locKed out
		PsIncDec		: out std_logic ;			-- move phase up (not)down
		PsEn			: out std_logic ;			-- phase shift Enable
		PsClk			: out std_logic ;			-- phase shift clocK
		BinOut			: out std_logic_vector(8 downto 0);	-- binary current phase  value (0 to 511)
		BcdOut			: out std_logic_vector(39 downto 0) -- 12 downto 0  : BCD current phase value ( -255 to +255)
		);													-- 26 downto 14 : BCD for IntPs0
															-- 39 downto 27 : BCD for IntPs1
end PhaseControlFullRange;

architecture PhaseControlFullRange_arch of PhaseControlFullRange is
----------------------------------------------------------------------------------------------------------------------------------------
-- Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------
-- three and a half decade BCD IntCounter
component Bcd35FullRange
	port (
		Clk			: in std_logic;				-- clocK
		Rst			: in std_logic;				-- reset
		EnableIn	: in std_logic;				-- Enable in
		Up			: in std_logic;				-- IntCount up
		BcdVec		: out std_logic_vector(12 downto 0)	-- 3 1/2 decade output
		);
end component;
-- FF primitive
component FD
	port (
		C : in std_logic;
		D : in std_logic;
		Q : out std_logic
		);
end component;

----------------------------------------------------------------------------------------------------------------------------------------
-- Signal Declarations
----------------------------------------------------------------------------------------------------------------------------------------
signal IntForceUp 		: std_logic ;						-- Internal force up signal
signal IntForceDown 	: std_logic ;						-- Internal force down signal
signal IntPsDone 		: std_logic ;						-- Internal PsDone signal
signal IntLockedIn 		: std_logic ;						-- Internal LocKedIn signal
signal IntPsEn 			: std_logic ;						-- Internal PsEn signal
signal IntPsIncDec 		: std_logic ;						-- Internal PsIncDec signal
signal IntCal2, IntCal1, IntCal0	: std_logic ;			-- Internal FF outputs
signal IntOldIntCal2, IntCal2A		: std_logic ;			-- registered IntCal2
signal IntCalValid		: std_logic ;						-- indicates filter has finished
signal IntAction 		: std_logic ;						-- indicates IntAction (inc or dec) in progress
signal IntGt 			: std_logic ;						-- indicates when IntPs3 is greater than IntPs1
signal IntState 		: Integer range 0 to 7 ;			-- IntState IntCounter
signal IntBcdInt 		: std_logic_vector(12 downto 0) ;	-- Internal phase value in BCD
signal Int		 		: std_logic_vector(8 downto 0) ;	-- Internal phase value in binary
signal IntPs0 			: std_logic_vector(8 downto 0) ;	-- IntPs0 found
signal IntPs1 			: std_logic_vector(8 downto 0) ;	-- IntPs1 found
signal IntPs0Bcd 		: std_logic_vector(12 downto 0) ;	-- IntPs0 found in BCD
signal IntPs1Bcd 		: std_logic_vector(12 downto 0) ;	-- IntPs1 found in BCD
signal IntPs3 			: std_logic_vector(8 downto 0) ;	-- calclated IntPs3
signal IntPs3A 			: std_logic_vector(9 downto 0) ;	-- used to calculate IntPs3
signal IntPs3B 			: std_logic_vector(9 downto 0) ;	-- used to calculate IntPs3
signal IntPs3C 			: std_logic_vector(9 downto 0) ;	-- used to calculate IntPs3
signal IntHyst 			: std_logic_vector(3 downto 0) ;	-- IntHysteresis IntCounter
signal IntBigIntCounter : std_logic_vector(23 downto 0) ;	-- long IntCounter for time between increments/decrements when forcing up or down
signal IntCount	 		: std_logic_vector(3 downto 0) ;	-- used to build in some IntHysteresis
----------------------------------------------------------------------------------------------------------------------------------------
-- Attribute Declarations
----------------------------------------------------------------------------------------------------------------------------------------
attribute RLOC		: string ;
attribute IOB		: string ;

attribute IOB of FdRegIntCal0	: label is "true" ;			-- forces clocK receiver FFs Into IOBs
attribute RLOC of FdRegIntCal1	: label is "x0y0" ;
attribute RLOC of FdRegIntCal2	: label is "x1y0" ;
-- Mentor Precision attribute to keep the hierarchy of lower levels.
-- The attribute is applied to used components and is here written in the 
-- generate statement
attribute HIERARCHY : string;
-- For synplicity the hierarchy keeping attribute SYN_HIER must be applied on the lower level
-- of the used components. Thus it must be applied in the component itself.
attribute SYN_HIER : string;
	attribute SYN_HIER of PhaseControlFullRange_arch : architecture is "hard";
-- The used SYN_HIER attribute is to keep the hierarchy of the DdrReceiver together as one.
-- It's place here for when the DdrReceiver is used at higher levels.
-- Xilinx attributes
----------------------------------------------------------------------------------------------------------------------------------------
--
begin

PsEn <= IntPsEn ;
PsIncDec <= IntPsIncDec ;
BcdOut <= IntPs1Bcd & IntPs0Bcd & '0' & IntBcdInt ;
PsClk <= CtlClk ;
BinOut <= Int ;
IntPs3A <= ('0' & IntPs0) + ('0' & IntPs1) ;
IntPs3B <= ('0' & IntPs3A(8 downto 1)) - ("000" & K) ;
IntPs3C <= (('0' & IntPs3A(8 downto 1)) + "0100000000") - ("000" & K) ;

FdRegIntCal0	: FD  port map (c => RxClkIn, d => MonClkIn, q => IntCal0);			-- IOB risng edge reg
FdRegIntCal1	: FD  port map (c => RxClkIn, d => IntCal0,  q => IntCal1);
FdRegIntCal2 	: FD  port map (c => CtlClk,  d => IntCal1,  q => IntCal2A);		-- retime to CtlClk

FdRetimePsDone 	: FD  port map (c => CtlClk,  d => PsDone,    q => IntPsDone);		-- retime PsDone to CtlClk
FdRetimelocKed 	: FD  port map (c => CtlClk,  d => LocKedIn,  q => IntLockedIn);	-- retime LocKedIn to CtlClk

FdRetimeFup   	: FD  port map (c => CtlClk,  d => ForceUp,   q => IntForceUp);	-- retime ForceUp to CtlClk
FdRetimeFdn   	: FD  port map (c => CtlClk,  d => ForceDown, q => IntForceDown);	-- retime ForceDown to CtlClk

TheBcDCnt : Bcd35FullRange
	port map (
		Clk			=> CtlClk,
		Rst			=> Rst,
		EnableIn	=> IntPsDone,
		Up			=> IntPsIncDec,
		BcdVec		=> IntBcdInt
		);

process (CtlClk, Rst)
begin
	if (Rst = '1') then
		IntCount <= "1000" ;
		IntCal2 <= '0' ;
		IntCalValid <= '0' ;
	elsif (CtlClk'event and CtlClk = '1') then
		if (IntCal2A = '1') then
			if IntCount < "1111" then
				IntCount <= IntCount + 1 ;
			end if ;
		else
			if IntCount > "0000" then
				IntCount <= IntCount - 1 ;
			end if ;
		end if ;
		if IntCount = "1111" then
			IntCal2 <= '1' ;
			IntCalValid <= '1' ;
		elsif IntCount = "0000" then
			IntCal2 <= '0' ;
			IntCalValid <= '1' ;
		else
			IntCalValid <= '0' ;
		end if ;
	end if ;
end process ;

process (CtlClk, Rst)
begin
	if (Rst = '1') then
		IntBigIntCounter <= (others => '0') ;
		IntPs0Bcd <= (others => '0') ;
		IntPs1Bcd <= (others => '0') ;
		IntPsIncDec <= '1' ;
		IntPsEn <= '0' ;
		IntPs0 <= (others => '0') ;
		IntPs1 <= (others => '0') ;
		IntPs3 <= (others => '0') ;
		IntHyst <= (others => '0') ;
		IntAction <= '0' ;
		IntState <= 0 ;
		LockedOut <= '0' ;
		IntGt <= '0' ;
		IntOldIntCal2 <= '0' ;
		Int <= (others => '0') ;
	elsif (CtlClk'event and CtlClk = '1') then
		if (K(6) = '1') then							-- K > 64 ??
			IntGt <= '1' ;
			IntPs3 <= IntPs3C(8 downto 0) ;
		else
			IntGt <= '0' ;
			IntPs3 <= IntPs3B(8 downto 0) ;
		end if ;
		
		IntBigIntCounter <= IntBigIntCounter + 1 ;
		
		if (IntPsDone = '1') then
			IntAction <= '0' ;
		end if ;
		
		if (IntLockedIn = '1' and IntAction = '0' and IntCalValid = '1') then
			IntOldIntCal2 <= IntCal2 ;
			if (Enable = '0') then
				LockedOut <= '1' ;
				IntState <= 5 ;
			elsif (IntState = 0) then						-- dummy IntState
				IntState <= 1 ;
			elsif (IntState = 1) then
				IntPsEn <= '1' ;					-- increment
				IntAction <= '1' ;
				Int <= Int + 1 ;
	--			if (DcmDiv2Used = '0' and IntCal2 /= IntOldIntCal2 ) or	-- find an edge (rising if SDR)
				if (DcmDiv2Used = '0' and IntCal2 /= IntOldIntCal2 and Int > "001000000" ) or	-- find an edge (rising if SDR)
				   (DcmDiv2Used = '1' and IntCal2 /= IntOldIntCal2 and IntCal2 = '1' and Int > "001000000" ) then
					IntState <= 2 ;
					IntHyst <= "0000" ;
					IntPs0Bcd <= IntBcdInt ;
					IntPs0 <= Int ;					-- save value
				end if ;
			elsif (IntState = 2) then						-- build in some IntHysteresis
				IntPsEn <= '1' ;
				IntAction <= '1' ;
				Int <= Int + 1 ;
				IntHyst <= IntHyst + 1 ;
				if (IntHyst = "1111") then
					IntState <= 3 ;
				end if ;
			elsif (IntState = 3) then
				IntPsEn <= '1' ;					-- increment
				IntAction <= '1' ;
				Int <= Int + 1 ;
				if (DcmDiv2Used = '0' and IntCal2 /= IntOldIntCal2) or
				   (DcmDiv2Used = '1' and IntCal2 /= IntOldIntCal2 and IntCal2 = '1' ) or
				   (Int = "111111110") then		-- find another edge (risng for SDR) or an overfLow condition
					IntState <= 4 ;
					IntPs1 <= Int ;
					IntPs1Bcd <= IntBcdInt ;
				end if ;
			elsif (IntState = 4) then
				IntPsIncDec <= IntGt ;
				IntPsEn <= '1' ;
				IntAction <= '1' ;
				if (IntGt = '1') then
					Int <= Int + 1 ;
				else
					Int <= Int - 1 ;
				end if ;
				if (Int = IntPs3) then
					IntState <= 5 ;
					LockedOut <= '1' ;
				end if ;
			elsif (IntState = 5 and IntBigIntCounter = "111111111111111111111111") then
				if (IntForceUp = '1') then
					IntPsIncDec <= '1' ;
					IntPsEn <= '1' ;
					IntAction <= '1' ;
					Int <= Int + 1 ;
				elsif (IntForceDown = '1') then
					IntPsIncDec <= '0' ;
					IntPsEn <= '1' ;
					IntAction <= '1' ;
					Int <= Int - 1 ;
				end if ;
			end if ;
		else
			IntPsEn <= '0' ;
		end if ;
	end if ;
end process ;

--
end PhaseControlFullRange_arch;



