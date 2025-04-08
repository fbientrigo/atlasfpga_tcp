-----------------------------------------------------------------------------------------------------------------------------------------
-- Entity Name:  Receiver
-- File Name:    Receiver.vhd
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
-- Revision History:       Created:       20/04/04
--                         Last opened:   Aug. 2004
--							Modification	Data Multiplexer removed from inbetween serial shift register
--											and parallel data register. Multiplexer inserted after parallel
--											register.
--											Reason: There was not enough time to conduct the multiplexing 
--													at high speed when inbetween shift register and parallel
--													register. Only 2 ns are available while 2.6 where needed.
--													Multiplexer after the paralel register leaves rooom for timinginfortype
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
--library virtex2;
--use virtex2.components.all;
library UNISIM;
use UNISIM.VComponents.all;
-- This library is ignored by Mentor Precision.
-- Only a warning is generated.
-- End libraries for Synplicity

entity Receiver is
	port (
		RxClk		: in std_logic;
		RxClkNot	: in std_logic;
		RxRst		: in std_logic;
		RxDatIn		: in std_logic;
		RxEnaMuxP	: in std_logic;
		RxEnaMuxN	: in std_logic;
		RxDatMuxEna	: in std_logic;
		RxDatOut	: out std_logic_vector (11 downto 0)
    );
end  Receiver ;

architecture Receiver_arch of Receiver  is
----------------------------------------------------------------------------------------------------------------------------------------
-- Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------
component FD	port (D, C 			: in std_logic;		Q : out std_logic); end component;
component FDCE	port (D, C, CE, CLR	: in std_logic; 	Q : out std_logic); end component;
component LUT3	generic (INIT : bit_vector (7 downto 0));
				port (I2, I1, I0	: in std_logic;		O : out std_logic); end component;
----------------------------------------------------------------------------------------------------------------------------------------
-- Signal Declarations
----------------------------------------------------------------------------------------------------------------------------------------
signal IntRxDatInP		: std_logic;
signal IntRxDatShftP	: std_logic_vector (5 downto 0);
signal IntRxDatShftN	: std_logic_vector (5 downto 0);
signal IntParDatOutP	: std_logic_vector (5 downto 0);
signal IntParDatOutN	: std_logic_vector (5 downto 0);
signal IntRxDatInN		: std_logic;

attribute IOB	: string;
	attribute IOB of FfIobP: label is "TRUE";
	attribute IOB of FfIobN: label is "TRUE";
attribute RLOC	: string;
	attribute RLOC of FfShft0  : label is "X0Y0";
	attribute RLOC of FfShft1  : label is "X1Y0";
	attribute RLOC of FfShft2  : label is "X0Y0";
	attribute RLOC of FfShft3  : label is "X1Y0";
	attribute RLOC of FfShft4  : label is "X0Y1";
	attribute RLOC of FfShft5  : label is "X1Y1";
	attribute RLOC of FfShft6  : label is "X0Y1";
	attribute RLOC of FfShft7  : label is "X1Y1";
	attribute RLOC of FfShft8  : label is "X0Y2";
	attribute RLOC of FfShft9  : label is "X1Y2";
	attribute RLOC of FfShft10 : label is "X0Y2";
	attribute RLOC of FfShft11 : label is "X1Y2";
	attribute RLOC of FfMuxP0  : label is "X2Y0";
	attribute RLOC of FfMuxN1  : label is "X3Y0";
	attribute RLOC of FfMuxP2  : label is "X2Y0";
	attribute RLOC of FfMuxN3  : label is "X3Y0";
	attribute RLOC of FfMuxP4  : label is "X2Y1";
	attribute RLOC of FfMuxN5  : label is "X3Y1";
	attribute RLOC of FfMuxP6  : label is "X2Y1";
	attribute RLOC of FfMuxN7  : label is "X3Y1";
	attribute RLOC of FfMuxP8  : label is "X2Y2";
	attribute RLOC of FfMuxN9  : label is "X3Y2";
	attribute RLOC of FfMuxP10 : label is "X2Y2";
	attribute RLOC of FfMuxN11 : label is "X3Y2";

	attribute RLOC of LutMux0  : label is "X2Y0";
	attribute RLOC of LutMux1  : label is "X3Y0";
	attribute RLOC of LutMux2  : label is "X2Y0";
	attribute RLOC of LutMux3  : label is "X3Y0";
	attribute RLOC of LutMux4  : label is "X2Y1";
	attribute RLOC of LutMux5  : label is "X3Y1";
	attribute RLOC of LutMux6  : label is "X2Y1";
	attribute RLOC of LutMux7  : label is "X3Y1";
	attribute RLOC of LutMux8  : label is "X2Y2";
	attribute RLOC of LutMux9  : label is "X3Y2";
	attribute RLOC of LutMux10 : label is "X2Y2";
	attribute RLOC of LutMux11 : label is "X3Y2";

constant M2To1Val : Bit_vector (7 downto 0) := X"CA";
----------------------------------------------------------------------------------------------------------------------------------------
--
begin
-- Positive clocked shift register.
FfIobP		: FD	port map (C => RxClk, D => RxDatIn,				Q => IntRxDatInP);
FfShft10	: FD	port map (C => RxClk, D => IntRxDatInP,			Q => IntRxDatShftP(5));
FfShft8		: FD	port map (C => RxClk, D => IntRxDatShftP(5), 	Q => IntRxDatShftP(4));
FfShft6		: FD	port map (C => RxClk, D => IntRxDatShftP(4), 	Q => IntRxDatShftP(3));
FfShft4		: FD	port map (C => RxClk, D => IntRxDatShftP(3), 	Q => IntRxDatShftP(2));
FfShft2		: FD	port map (C => RxClk, D => IntRxDatShftP(2), 	Q => IntRxDatShftP(1));
FfShft0 	: FD	port map (C => RxClk, D => IntRxDatShftP(1), 	Q => IntRxDatShftP(0));
-- Negative clocked shift register.                                	
FfIobN		: FD	port map (C => RxClkNot, D => RxDatIn, 			Q => IntRxDatInN);
FfShft11	: FD	port map (C => RxClkNot, D => IntRxDatInN, 		Q => IntRxDatShftN(5));
FfShft9		: FD	port map (C => RxClkNot, D => IntRxDatShftN(5),	Q => IntRxDatShftN(4));
FfShft7		: FD	port map (C => RxClkNot, D => IntRxDatShftN(4),	Q => IntRxDatShftN(3));
FfShft5		: FD	port map (C => RxClkNot, D => IntRxDatShftN(3),	Q => IntRxDatShftN(2));
FfShft3		: FD	port map (C => RxClkNot, D => IntRxDatShftN(2),	Q => IntRxDatShftN(1));
FfShft1		: FD	port map (C => RxClkNot, D => IntRxDatShftN(1),	Q => IntRxDatShftN(0));
-- Mux positive and negative data to one 12-bit parallel word.
FfMuxN11		: FDCE	port map (C => RxClkNot,	D => IntRxDatShftN(5), CE => RxEnaMuxN,	CLR => RxRst, Q => IntParDatOutN(5));
FfMuxP10		: FDCE	port map (C => RxClk,		D => IntRxDatShftP(5), CE => RxEnaMuxP,	CLR => RxRst, Q => IntParDatOutP(5));
FfMuxN9		: FDCE	port map (C => RxClkNot,	D => IntRxDatShftN(4), CE => RxEnaMuxN,	CLR => RxRst, Q => IntParDatOutN(4));
FfMuxP8		: FDCE	port map (C => RxClk,		D => IntRxDatShftP(4), CE => RxEnaMuxP,	CLR => RxRst, Q => IntParDatOutP(4));
FfMuxN7		: FDCE	port map (C => RxClkNot,	D => IntRxDatShftN(3), CE => RxEnaMuxN,	CLR => RxRst, Q => IntParDatOutN(3));
FfMuxP6		: FDCE	port map (C => RxClk,		D => IntRxDatShftP(3), CE => RxEnaMuxP,	CLR => RxRst, Q => IntParDatOutP(3));
FfMuxN5		: FDCE	port map (C => RxClkNot,	D => IntRxDatShftN(2), CE => RxEnaMuxN,	CLR => RxRst, Q => IntParDatOutN(2));
FfMuxP4		: FDCE	port map (C => RxClk,		D => IntRxDatShftP(2), CE => RxEnaMuxP,	CLR => RxRst, Q => IntParDatOutP(2));
FfMuxN3		: FDCE	port map (C => RxClkNot,	D => IntRxDatShftN(1), CE => RxEnaMuxN,	CLR => RxRst, Q => IntParDatOutN(1));
FfMuxP2		: FDCE	port map (C => RxClk,		D => IntRxDatShftP(1), CE => RxEnaMuxP,	CLR => RxRst, Q => IntParDatOutP(1));
FfMuxN1		: FDCE	port map (C => RxClkNot,	D => IntRxDatShftN(0), CE => RxEnaMuxN,	CLR => RxRst, Q => IntParDatOutN(0));
FfMuxP0		: FDCE	port map (C => RxClk,		D => IntRxDatShftP(0), CE => RxEnaMuxP,	CLR => RxRst, Q => IntParDatOutP(0));
-- Swap bits in case of negative edge clocking before positive edge clocking.
LutMux11	: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutN(5), I0 => IntParDatOutP(5), O => RxDatOut(11)); -- RxDatMuxEna =1 output I1 else I0
LutMux10	: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutP(5), I0 => IntParDatOutN(5), O => RxDatOut(10));
LutMux9		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutN(4), I0 => IntParDatOutP(4), O => RxDatOut(9));
LutMux8		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutP(4), I0 => IntParDatOutN(4), O => RxDatOut(8));
LutMux7		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutN(3), I0 => IntParDatOutP(3), O => RxDatOut(7));
LutMux6		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutP(3), I0 => IntParDatOutN(3), O => RxDatOut(6));
LutMux5		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutN(2), I0 => IntParDatOutP(2), O => RxDatOut(5));
LutMux4		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutP(2), I0 => IntParDatOutN(2), O => RxDatOut(4));
LutMux3		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutN(1), I0 => IntParDatOutP(1), O => RxDatOut(3));
LutMux2		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutP(1), I0 => IntParDatOutN(1), O => RxDatOut(2));
LutMux1		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutN(0), I0 => IntParDatOutP(0), O => RxDatOut(1));
LutMux0		: LUT3	generic map (INIT => M2To1Val)
					port map (I2 => RxDatMuxEna, I1 => IntParDatOutP(0), I0 => IntParDatOutN(0), O => RxDatOut(0));

--
end  Receiver_arch ;
