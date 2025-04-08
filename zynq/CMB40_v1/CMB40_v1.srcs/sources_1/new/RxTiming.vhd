-----------------------------------------------------------------------------------------------------------------------------------------
-- Entity Name:  RxTiming
-- File Name:    RxTiming.vhd
-- File Path:    E:\Projects\Ads527x\Vhdl\XlvdsPro\AdcReceiver
-- Project : 
--
-- Purpose: 
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
--				Created:       19/04/04
--				Modification:  Thursday 17 June 2004 Added ADCLK clock-out from FPGA for measurement purposes.
--								13 July 2004: Added Polarity selection FFs.
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

entity RxTiming is
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
        RxDatMuxEna	: out std_logic;
        RxEnaRam	: out std_logic
    );
end  RxTiming ;

architecture RxTiming_arch of RxTiming  is
----------------------------------------------------------------------------------------------------------------------------------------
-- Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------
component FDCE		port (D, C, CLR, CE : in std_logic;	Q : out std_logic); end component;
component FDC		port (D, C, CLR : in std_logic;		Q : out std_logic); end component;
component FD		port (D, C : in std_logic;			Q : out std_logic); end component;
component LD		port (D, G : in std_logic;			Q : out std_logic); end component;
----------------------------------------------------------------------------------------------------------------------------------------
-- Signal Declarations
----------------------------------------------------------------------------------------------------------------------------------------
signal High				: std_logic := '1';
signal IntRxSyncP		: std_logic;
signal IntPreSyncP		: std_logic;
signal IntPreSyncN		: std_logic;
signal IntSyncP			: std_logic;
signal IntSyncOneP		: std_logic;
signal IntSyncTwoP		: std_logic;
signal IntEnaMuxP		: std_logic;
signal IntEnaRamP		: std_logic;
signal IntRiseGateP		: std_logic;
signal IntRiseFfP		: std_logic;
signal IntRiseLatchN	: std_logic;
signal IntRiseGateN		: std_logic;
signal IntRiseFfN		: std_logic;
signal IntDatMuxEna		: std_logic;
signal IntRxSyncN		: std_logic;
signal IntSyncN			: std_logic;
signal IntSyncOneN		: std_logic;
signal IntSyncTwoN		: std_logic;
signal IntEnaMuxN		: std_logic;

signal IntRxDatMuxEna	: std_logic;
signal IntPostSyncP		: std_logic;
signal IntPostSyncN		: std_logic;

attribute IOB	: string;
	attribute IOB of FfIobSp : label is "TRUE";
	attribute IOB of FfIobSn : label is "TRUE";
	attribute IOB of FfPreSp : label is "FALSE";
	attribute IOB of FfPreSn : label is "FALSE";
attribute RLOC	: string;
	attribute RLOC of FfPreSp	: label is "X0Y1";
	attribute RLOC of FfOneP	: label is "X0Y1";
	attribute RLOC of FfTwoP	: label is "X1Y1";
	attribute RLOC of FfRiseP	: label is "X1Y1";
--	attribute RLOC of 			: label is "X2Y1"; --Can not be used due to Latch
	attribute RLOC of LdRiseN	: label is "X2Y1";
	attribute RLOC of FfEmuxP	: label is "X3Y1";
	attribute RLOC of FfEramP	: label is "X3Y1";
	
	attribute RLOC of FfPreSn	: label is "X0Y0";
	attribute RLOC of FfOneN	: label is "X0Y0";
	attribute RLOC of FfTwoN	: label is "X1Y0";
	attribute RLOC of FfEmuxN	: label is "X1Y0";
	attribute RLOC of FfRiseN	: label is "X2Y0";
--	attribute RLOC of 			: label is "X2Y0";	
	attribute RLOC of FfDmuxEna	: label is "X3Y0";
--	attribute RLOC of 			: label is "X3Y0";

attribute SYN_KEEP	: integer;
	attribute SYN_KEEP of IntRiseFfP : signal is 1;
attribute MAXDELAY	: string;
	attribute MAXDELAY of IntRiseFfP : signal is "550ps";
----------------------------------------------------------------------------------------------------------------------------------------
--
begin

FfIobSp : FD port map (D => RxSyncIn, C => RxClk, Q => IntRxSyncP);
FfPreSp : FDC port map (D => PreSyncInP, C => RxClk, CLR => RxRst, Q => IntPreSyncP);

IntSyncP <= IntRxSyncP or IntPreSyncP;

FfOneP	: FDC port map (D => IntSyncP, C => RxClk, CLR => RxRst, Q => IntSyncOneP);
FfTwoP	: FDC port map (D => IntSyncOneP, C => RxClk, CLR => RxRst, Q => IntSyncTwoP);

IntEnaMuxP <=  not IntSyncP and not IntSyncOneP and not IntSyncTwoP;
IntEnaRamP <= IntSyncP and IntSyncOneP and IntSyncTwoP;

FfEmuxP : FDC port map (D => IntEnaMuxP, C => RxClk, CLR => RxRst, Q => RxEnaMuxP);
FfEramP : FDC port map (D => IntEnaRamP, C => RxClk, CLR => RxRst, Q => RxEnaRam);
--
FfIobSn : FD port map (D => RxSyncIn, C => RxClkNot, Q => IntRxSyncN);
FfPreSn : FDC port map (D => PreSyncInN, C => RxClkNot, CLR => RxRst, Q => IntPreSyncN);

IntSyncN <= IntRxSyncN or IntPreSyncN;

FfOneN	: FDC port map (D => IntSyncN, C => RxClkNot, CLR => RxRst, Q => IntSyncOneN);
FfTwoN	: FDC port map (D => IntSyncOneN, C => RxClkNot, CLR => RxRst, Q => IntSyncTwoN);

IntEnaMuxN <= not IntSyncTwoN and not IntSyncOneN and not IntSyncN;
FfEmuxN : FDC port map (D => IntEnaMuxN, C => RxClknot, CLR => RxRst, Q => RxEnaMuxN);
--
IntRiseGateP <= IntSyncP and not IntSyncOneP;
IntRiseGateN <= IntSyncN and not IntSyncOneN;

FfRiseP : FDC port map (D => IntRiseGateP, C => RxClk, CLR => RxRst, Q => IntRiseFfP);
LdRiseN : LD port map (D => IntRiseFfP, G => RxClkNot, Q => IntRiseLatchN);
FfRiseN : FDC port map (D => IntRiseGateN, C => RxClkNot, CLR => RxRst, Q => IntRiseFfN); 

IntDatMuxEna <= IntRiseLatchN and IntRiseFfN;
FfDmuxEna : FDCE port map (D => High, CE => IntDatMuxEna, C => RxClkNot, CLR => IntRiseGateN, Q => IntRxDatMuxEna);
RxDatMuxEna <= IntRxDatMuxEna;
--
AdClkOut <= IntSyncOneP;

IntPostSyncP <= not IntSyncOneP;
FfPostSp : FDC port map (D => IntPostSyncP, C => RxClk, CLR => RxRst, Q => PostSyncOutP);
IntPostSyncN <= not IntSyncOneN;
FfPostSn : FDC port map (D => IntPostSyncN, C => RxClkNot, CLR => RxRst, Q => PostSyncOutN);

--
end  RxTiming_arch ;
