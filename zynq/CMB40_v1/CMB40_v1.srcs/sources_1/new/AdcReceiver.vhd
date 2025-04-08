-----------------------------------------------------------------------------------------------------------------------------------------
-- Entity Name:  AdcReceiver
-- File Name:    AdcReceiver.vhd
-- File Path:    E:\Projects\Ads527x\Vhdl\XlvdsPro\AdcReceiver
-- Project : 
--
-- Purpose: 	Toplevel of the ADC receiver interface in the FPGA.
--				Contains the RECEIVER logic (input shifter and register) and
--				the TIMING interface.
--
-- Limitations: none
--
-- Authors: Marc Defossez
--
-- Tools: 
--
--  Contact:    e-mail  hotline@xilinx.com        phone   + 1 800 255 7778
--
--  Disclaimer:
--              LIMITED WARRANTY AND DISCLAIMER.
--              These designs are provided to you "as is". Xilinx and its licensors make and you
--              receive no warranties or conditions, express, implied, statutory or otherwise, and
--              Xilinx specifically disclaims any implied warranties of merchantability, non-infringement,
--              or fitness for a particular purpose. Xilinx does not warrant that the functions contained
--              in these designs will meet your requirements, or that the operation of these designs will
--              be uninterrupted or error free, or that defects in the designs will be corrected.
--              Furthermore, Xilinx does not warrant or make any representations regarding use or the
--              results of the use of the designs in terms of correctness, accuracy, reliability, or otherwise.
--
--              LIMITATION OF LIABILITY.
--              In no event will Xilinx or its licensors be liable for any loss of data, lost profits, cost or
--              procurement of substitute goods or services, or for any special, incidental, consequential,
--              or indirect damages arising from the use or operation of the designs or accompanying
--              documentation, however caused and on any theory of liability. This limitation will apply
--              even if Xilinx has been advised of the possibility of such damage. This limitation shall
--              apply not-withstanding the failure of the essential purpose of any limited remedies herein.
--
--              Copyright © 2002 Xilinx, Inc.
--              All rights reserved
--
-- Revision History:
--			Created:	20/04/04
--			Modified	22/06/04
--				Added the possibility to use a Block SelectRAM as register.
--				Generic value is used to select his possibility.
--				When "BramAsRegister" generic value is:
--					1 use BRAM as register.
--					0 straight output from this source.
--				Signals RXEnaRam and RxClkRam will be GND-ed when BRAM is used as register.
--
----------------------------------------------------------------------------------------------------------------------------------------
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_UNSIGNED.all;
-- Simulation libraries
	-- synopsys translate_off
	library UNISIM;
	use UNISIM.all;
	-- synopsys translate_on
-- end simulation libraries

-- Libraries for Synplicity
-- Needed for components as LUT, SRL which get an INIT parameter.
-- When this library is not mentioned Synplify_Pro fails during synthesis of
-- the hardware with an error about the INIT value.
-- library virtex2;
-- use virtex2.components.all;
-- This library is ignored by Mentor Precision.
-- Only a warning is generated.
-- End libraries for Synplicity

entity AdcReceiver is
	generic (
		BramAsRegister : integer := 1;	-- 1 use a BRAM as register, 0 don't.
		FfAsRegister : integer := 0		-- 1 use FFs as register, 0 don't.
										-- FfAsRegister  BramAsRegister
										--			0		0		No register at all, direct out.
										--			0		1		Block SelectRAM used as register.
										--			1		0		Normal FFs register (look out for extra BUFG's).
										--			1		1		DO NOT USE !		
		);
    port (
        RxClk		: in std_logic;
        RxClkNot	: in std_logic;
        RxRst		: in std_logic;
        RxDatIn		: in std_logic_vector (1 downto 0);
        RxSyncIn	: in std_logic;
        PreSyncInP	: in std_logic;		-- Sync coming from previous module. if not used tie it to GND.
        PreSyncInN	: in std_logic;		-- Sync coming from previous module. if not used tie it to GND.
        PostSyncOutP	: out std_logic;	-- Sync to the next module.
        PostSyncOutN	: out std_logic;	-- Sync to the next module.
        AdClkOut	: out std_logic;	-- One Lclk later than PostSyncOut, for signal analyser purposes
        RxEnaRam	: out std_logic;	-- Used with an external BRAM fifo.
        RxDatOut	: out std_logic_vector (23 downto 0)
    );
end  AdcReceiver ;

architecture AdcReceiver_arch of AdcReceiver  is
----------------------------------------------------------------------------------------------------------------------------------------
-- Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------
component RxTiming
    port (
        RxClk		: in std_logic;
        RxClkNot	: in std_logic;
        RxRst		: in std_logic;
        RxSyncIn	: in std_logic;		-- Input from ADCLK clock of ADC
        PreSyncInP	: in std_logic;		-- Sync coming from previous module. if not used tie it to GND.
        PreSyncInN	: in std_logic;		-- Sync coming from previous module. if not used tie it to GND.
        PostSyncOutP	: out std_logic;	-- Sync to the next module.
        PostSyncOutN	: out std_logic;	-- Sync to the next module.
        AdClkOut	: out std_logic;	-- One Lclk later than PostSyncOut, for signal analyser purposes
        RxEnaMuxP	: out std_logic;
        RxEnaMuxN	: out std_logic;
        RxDatMuxEna : out std_logic;
        RxEnaRam	: out std_logic 	-- This signal normally go to a BRAM Fifo interface
    );
end component;

component Receiver
	port (
      	RxClk		: in std_logic;
	    RxClkNot	: in std_logic;
    	RxRst		: in std_logic;
	    RxDatIn		: in std_logic;
    	RxDatOut	: out std_logic_vector (11 downto 0);
      	RxEnaMuxP	: in std_logic;
      	RxEnaMuxN	: in std_logic;
      	RxDatMuxEna	: in std_logic
    );
end component;

component RAMB16_S36
	port (
		WE		: in std_logic;
		EN		: in std_logic;
		SSR		: in std_logic;
		CLK		: in std_logic;
		ADDR	: in std_logic_vector (8 downto 0);
		DI		: in std_logic_vector (31 downto 0);
		DIP		: in std_logic_vector (3 downto 0);
		DOP		: out std_logic_vector (3 downto 0);
		DO		: out std_logic_vector (31 downto 0)
	);
end component;
----------------------------------------------------------------------------------------------------------------------------------------
-- Signal Declarations
----------------------------------------------------------------------------------------------------------------------------------------
signal IntRxEnaMuxP : std_logic;
signal IntRxEnaMuxN : std_logic;
signal IntRxEnaRam	: std_logic;
signal IntRxDatOut : std_logic_vector (23 downto 0);
signal IntRxRamRegIn : std_logic_vector (31 downto 0);
signal IntRxRamRegOut : std_logic_vector (31 downto 0);
signal IntRxDatMuxEna : std_logic;

signal Low			: std_logic := '0';
signal High			: std_logic := '1';
signal IntRegAddr	: std_logic_vector (8 downto 0) := "000000000";
signal IntDip		: std_logic_vector (3 downto 0) := "0000";

attribute RLOC : string;
	attribute RLOC  of TheRec1	: label is "X0Y5";
	attribute RLOC	of TheTime	: label is "X0Y3";
	attribute RLOC  of TheRec0	: label is "X0Y0";
-- The Block SelectRAM's are LOC-ed in the UCF file.
----------------------------------------------------------------------------------------------------------------------------------------
--
begin

TheTime : RxTiming
    port map (
        RxClk		=> RxClk,
        RxClkNot	=> RxClkNot,
        RxRst		=> RxRst,
        RxSyncIn	=> RxSyncIn,
        PreSyncInP	=> PreSyncInP,
        PreSyncInN	=> PreSyncInN,
        PostSyncOutP	=> PostSyncOutP,
        PostSyncOutN	=> PostSyncOutN,
        AdClkOut	=> AdClkOut,
        RxEnaMuxP	=> IntRxEnaMuxP,
        RxEnaMuxN	=> IntRxEnaMuxN,
        RxDatMuxEna	=> IntRxDatMuxEna,
        RxEnaRam	=> IntRxEnaRam
    );
--
TheRec0 : Receiver
	port map (
      	RxClk		=> RxClk,
	    RxClkNot	=> RxClkNot,
    	RxRst		=> RxRst,
	    RxDatIn		=> RxDatIn(0),
    	RxDatOut	=> IntRxDatOut (11 downto 0),
    	RxDatMuxEna => IntRxDatMuxEna,
      	RxEnaMuxP	=> IntRxEnaMuxP,
      	RxEnaMuxN	=> IntRxEnaMuxN
    );

TheRec1 : Receiver
	port map (
      	RxClk		=> RxClk,
	    RxClkNot	=> RxClkNot,
    	RxRst		=> RxRst,
	    RxDatIn		=> RxDatIn(1),
    	RxDatOut	=> IntRxDatOut (23 downto 12),
    	RxDatMuxEna => IntRxDatMuxEna,
      	RxEnaMuxP	=> IntRxEnaMuxP,
      	RxEnaMuxN	=> IntRxEnaMuxN
    );
------------------------------------------------------------------------------------------------------------------    
-- FfAsRegister  BramAsRegister
--			0		0		No register at all, direct out.
--			0		1		Block SelectRAM used as register.
--			1		0		Normal FFs register (look out for extra BUFG's).
--			1		1		DO NOT USE !
-- Watch also for the RLOC and RLOC_ORIGIN attributes in the different hierarchical levels and UCF file.
--
NoRegNoBram : if BramAsRegister = 0 and FfAsRegister = 0 generate
	RxEnaRam <= IntRxEnaRam;
	RxDatOut <= IntRxDatOut;
end generate;
--
BramAsReg : if BramAsRegister = 1 and FfAsRegister = 0 generate
-- RLOC or LOC constraints must be set in the UCF file.
begin
	RxEnaRam <= Low;
	IntRxRamRegIn <= X"00" & IntRxDatOut;

	TheRamReg : RAMB16_S36
		port map (
			WE		=> High,
			EN		=> IntRxEnaRam,
			SSR		=> RxRst,
			CLK		=> RxClk,
			ADDR	=> IntRegAddr,
			DI		=> IntRxRamRegIn,
			DIP		=> IntDip,
			DOP		=> open,
			DO		=> IntRxRamRegOut
		);
	RxDatOut <= IntRxRamRegOut (23 downto 0);
end generate;
--
FfAsReg : if BramAsRegister = 0 and FfAsRegister = 1 generate
-- RLOC or LOC constraints must be set in the UCF file.
begin
	TheFfReg : process (RxClk, IntRxEnaRam)
	begin
		if (RxRst = '1') then
			RxDatOut <= (others => '0');
		elsif (RxClk'event and RxClk = '1') then
			if (IntRxEnaRam = '1') then
				RxDatOut <= IntRxDatOut;
			end if;
		end if;
	end process;
end generate;
				
------------------------------------------------------------------------------------------------------------------
--
end AdcReceiver_arch;
