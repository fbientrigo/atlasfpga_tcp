----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2024 03:20:48 PM
-- Design Name: 
-- Module Name: Lvds_Rx_top - Behavioral
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
use IEEE.std_logic_UNSIGNED.all;
library UNISIM;
use UNISIM.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lvds_Rx_top is

	generic (
--=============================================================================================================
		ExternalClockIn	: integer := 1;		-- Indication that an external system clock is used for the design.
											-- When '1' external clock is used and a DCM is provided.
											-- When '0' no external clock is provided and the DCM is
											-- removed.
											-- Don't forget to eneable the attributes for the DCM.
		BramAsRegister  : integer := 0;		--  FfAsRegister  BramAsRegister                                            
		FfAsRegister	: integer := 0;		--			0		0		No register at all, direct out.
											--			0		1		Block SelectRAM used as register.
											--			1		0		Normal FFs register (look out for extra BUFG's).
											--			1		1		DO NOT USE !
											--
		PhaseControl	: integer := 1;		-- 1 = YES, 0 = NO
		LclkOffsetK 	: std_logic_vector (6 downto 0) := "0111111"
											-- This is the value indicating the mismatch between clock and data.
											-- This value depends on the PCB routing and layout.
											-- For the ADS5273 Lclk clock and data are already 90 degrees shifted.
											-- The DCM will bring this back to zero, and the LclkOffset must correct this.
											-- The value must be set to 64 when the clock is 90 degrees shifted.
--==============================================================================================================
	);


    port (
	-- FPGA interface
    --SysClkP    : in std_logic;        -- System clock input from FPGA.
    SysRst  : in std_logic;        -- System Reset, input into module.
    -- ADS interface
    Lclk        : in std_logic;        -- Six times ADCLK
    AdClk      : in std_logic;        -- Skewed and Data aligned version of the ADC sample clock. Used as strobe.
    DataInChP    : in std_logic_vector (7 downto 0);   -- In LVDS standard yet
    DataInChN    : in std_logic_vector (7 downto 0);   -- In LVDS standard yet

    AnalyseOut    : out std_logic; -- One Lclk clock cycle later than PostSyncOut, clock for analyser.
    -- Out data
    ChOut_0    : out std_logic_vector (11 downto 0);
	ChOut_1	: out std_logic_vector (11 downto 0)
    );

end Lvds_Rx_top;

architecture Lvds_Rx_top_arch of Lvds_Rx_top is

----------------------------------------------------------------------------------------------------------------------------------------
-- Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------
-- FF primitive with async preset
component FDP	port (C	: in std_logic;	D : in std_logic; PRE : in std_logic;	Q : out std_logic);	end component ;
-- CMOS25 input buffer primitive
component IBUF_LVCMOS25		port (I : in std_logic;	O : out std_logic);	end component;
-- CMOS25 output buffer primitive
component OBUF_LVCMOS25		port (I : in std_logic;	O : out std_logic);	end component;
-- BUFG primitive
component BUFG				port (I : in std_logic;	O : out std_logic);	end component;
-- Lvds input buffer primyive
component IBUFDS	port (I	: in std_logic;	IB : in std_logic;	O : out std_logic);	end component;


--component IDELAYE2
--    generic (
--        CINVCTRL_SEL        : string := "FALSE";
--        DELAY_SRC           : string := "IDATAIN";
--        HIGH_PERFORMANCE_MODE : string := "FALSE";
--        IDELAY_TYPE         : string := "FIXED";
--        IDELAY_VALUE        : integer := 0;
--        REFCLK_FREQUENCY    : real := 200.0;
--        PIPE_SEL            : string := "FALSE";
--        SIGNAL_PATTERN      : string := "DATA"
--    );
--    port (
--        C                  : in std_logic;
--        CE                 : in std_logic;
--        CINVCTRL           : in std_logic;
--        CNTVALUEIN         : in std_logic_vector(4 downto 0);
--        INC                : in std_logic;
--        LD                 : in std_logic;
--        IDATAIN            : in std_logic;
--        DATAOUT            : out std_logic;
--        CNTVALUEOUT        : out std_logic_vector(4 downto 0)
--    );
--end component;


component AdcReceiver is
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
end  component ;

component DCM 
--pragma translate_off (code only valid during simulation)
	generic (
		CLKIN_DIVIDE_BY_2	: boolean;
		DESKEW_ADJUST		: string;
		CLKDV_DIVIDE 		: real;
		CLKOUT_PHASE_SHIFT 	: string
		);
--pragma translate_on (code valid during synthesis of the design)
	port (
		CLKIN   	: in  std_logic ;
		CLKFB   	: in  std_logic ;
		DSSEN 		: in  std_logic ;
		PSINCDEC	: in  std_logic ;
		PSEN 		: in  std_logic ;
		PSCLK 		: in  std_logic ;
		RST     	: in  std_logic ;
		CLK0    	: out std_logic ;
		CLK90   	: out std_logic ;
		clk180  	: out std_logic ;
		CLK270  	: out std_logic ;
		CLK2X   	: out std_logic ;
		CLK2X180	: out std_logic ;
		CLKDV   	: out std_logic ;
		CLKFX   	: out std_logic ;
		CLKFX180	: out std_logic ;
		LOCKED  	: out std_logic ;
		PSDONE  	: out std_logic ;
		STATUS  	: out std_logic_vector(7 downto 0)); 	
end component;

component PhaseControlFullRange
	port (
		Enable			: in std_logic;				-- Enable input, allows function to be bypassed for simulation when Low
		MonClkIn		: in std_logic;				-- Clock to be monitored
		RxClkIn			: in std_logic;				-- Clock from DCM
		CtlClk			: in std_logic;				-- PhaseControlFullRange clocK
		LocKedIn		: in std_logic;				-- dcm locked in
		Rst				: in std_logic;				-- Reset
		PsDone			: in std_logic;				-- High when dcm has changed phase
		ForceUp			: in std_logic;				-- Forces phase value up when High
		ForceDown		: in std_logic;				-- Forces phase value down when High
		DcmDiv2Used		: in std_logic;				-- Normally '0', set to '1' if DCM divide_by_2 option
													-- is used (SDR designs)
		K 				: in std_logic_vector(6 downto 0);	-- constant to be modified in the case where the data
													-- and clock do not arrive at the part exactly aligned
													-- permissable values 0 to 127 (0 to 180 degrees),
													-- set default to "0000000"
		LockedOut		: out std_logic;			-- locKed out
		PsIncDec		: out std_logic ;			-- move phase up (not)down
		PsEn			: out std_logic ;			-- phase shift Enable
		PsClk			: out std_logic ;			-- phase shift clocK
		BinOut			: out std_logic_vector(8 downto 0);	-- binary current phase  value (0 to 511)
		BcdOut			: out std_logic_vector(39 downto 0) -- ( -255 to +255)
		);													-- 12 downto 0  : BCD current phase value
															-- 26 downto 14 : BCD for IntPs0
															-- 39 downto 27 : BCD for IntPs1
end component;


-- Signals

signal IntLclkDcmPhaseUpDwn : std_logic;
signal IntLclkDcmPhaseEna   : std_logic;
signal IntLclkDcmPhaseClk   : std_logic;
signal IntLclkDcmPhsClkLocked : std_logic;
signal IntLclkDcmPhsClkLockedNot : std_logic;
signal IntReceiverRst : std_logic;
signal IntDatCh10				: std_logic_vector (1 downto 0);
signal not_used_1 : std_logic;
signal not_used_2 : std_logic;
signal IntAdClkOut10 : std_logic;
signal IntDatRec10				: std_logic_vector (23 downto 0);
signal IntRxClk					: std_logic;
signal IntLclkDcmBufg			: std_logic;
signal IntLclkDcmNotBufg		: std_logic;
signal IntLclkDcmDvBufg			: std_logic;
signal IntRxClkNot				: std_logic;
signal IntRxClkDv				: std_logic;
signal IntLclkDcmLocked			: std_logic;
signal IntDatCh0                : std_logic;
signal IntDatCh1                : std_logic;
signal IntDatCh2                : std_logic;
signal IntDatCh3                : std_logic;
signal IntDatCh4                : std_logic;
signal IntDatCh5                : std_logic;
signal IntDatCh6                : std_logic;
signal IntDatCh7                : std_logic;
signal IntFpgaSystemRst         : std_logic;
signal IntLclkDcmPhaseDone		: std_logic;

----- Delays
--signal IntDatCh0_delayed : std_logic;
--signal IntDatCh1_delayed : std_logic;
--signal IntDatCh2_delayed : std_logic;
--signal IntDatCh3_delayed : std_logic;
--signal IntDatCh4_delayed : std_logic;
--signal IntDatCh5_delayed : std_logic;
--signal IntDatCh6_delayed : std_logic;
--signal IntDatCh7_delayed : std_logic;
--signal IntDatCh10_delayed : std_logic_vector (1 downto 0);

--signal AdClk_delayed   : std_logic;
--signal delay_enable    : std_logic := '0';       -- Enable signal
--signal delay_increment : std_logic := '0';       -- Increment/decrement signal
--signal delay_load      : std_logic := '0';       -- Load signal
--signal delay_value     : std_logic_vector(4 downto 0) := "00010"; -- 2 taps
--signal alignment_done : std_logic := '0';        -- Indicates completion of alignment process
--signal feedback_signal : std_logic := '0';      -- Feedback signal for alignment status
--signal alignment_direction : std_logic := '1';  -- '1' to increment, '0' to decrement delay


begin

-------------------------------------------------------
-- Reset f-f with async preset
-- Assuming PhaseControl = 0 is fixed
--IntLclkDcmPhaseUpDwn <= '0';
--IntLclkDcmPhaseEna <= '0';
--IntLclkDcmPhaseClk <= '0';
--IntLclkDcmPhsClkLocked <= IntLclkDcmLocked;
--IntLclkDcmPhsClkLockedNot <= not IntLclkDcmPhsClkLocked;

--RxRstFf : FDP
--    port map (
--        D    => IntLclkDcmPhsClkLockedNot,
--        C     => IntRxClk,
--        PRE => SysRst,
--        Q     => IntReceiverRst         -- Reset for the receiver interface.
--        );

--IntReceiverRst <= SysRst;

---------------------------------------------
-- Input data buffers
--Ch0Iob : IBUFDS	port map (I	=> DataInChP(0),	IB  => DataInChN(0),	O => IntDatCh0);
--Ch1Iob : IBUFDS	port map (I	=> DataInChP(1),	IB  => DataInChN(1),	O => IntDatCh1);
--Ch2Iob : IBUFDS	port map (I	=> DataInChP(2),	IB  => DataInChN(2),	O => IntDatCh2);
--Ch3Iob : IBUFDS port map (I	=> DataInChP(3),	IB  => DataInChN(3),	O => IntDatCh3);
--Ch4Iob : IBUFDS port map (I	=> DataInChP(4),	IB  => DataInChN(4),	O => IntDatCh4);
--Ch5Iob : IBUFDS port map (I	=> DataInChP(5),	IB  => DataInChN(5),	O => IntDatCh5);
--Ch6Iob : IBUFDS port map (I	=> DataInChP(6),	IB  => DataInChN(6),	O => IntDatCh6);
--Ch7Iob : IBUFDS port map (I	=> DataInChP(7),	IB  => DataInChN(7),	O => IntDatCh7);

IntDatCh0 <= DataInChP(0);
IntDatCh1 <= DataInChP(1);
IntDatCh2 <= DataInChP(2);
IntDatCh3 <= DataInChP(3);
IntDatCh4 <= DataInChP(4);
IntDatCh5 <= DataInChP(5);
IntDatCh6 <= DataInChP(6);
IntDatCh7 <= DataInChP(7);

---------------------------------------------
-- Channel 1 and 0 LVDS decoder
IntDatCh10 <= IntDatCh1 & IntDatCh0;
--IntDatCh10_delayed <= IntDatCh1_delayed & IntDatCh0_delayed;

AdcCh10 : AdcReceiver
	generic map (
		BramAsRegister => BramAsRegister,	-- Take the value given at the Entity level of this file.
		FfAsRegister => FfAsRegister		-- Take the value given at the Entity level of this file.
		)
    port map (
		RxClk		=> IntRxClk,
		RxClkNot	=> IntRxClkNot,
		RxRst		=> IntReceiverRst,
		RxDatIn		=> IntDatCh10,
		--RxDatIn => IntDatCh10_delayed, -- Use delayed signals
		RxSyncIn	=> AdClk,			-- Input of the external sync
		--RxSyncIn => AdClk_delayed,     -- Use delayed clock
		PreSyncInP	=> '0',					-- input from lower module.
		PreSyncInN	=> '0',					-- input from lower module.
		PostSyncOutP	=> not_used_1,	-- output to upper module.
		PostSyncOutN	=> not_used_2,	-- output to upper module.
		AdClkOut	=> IntAdClkOut10,		-- One Lclk later than PostSyncOut, for signal analyser purposes
		RxEnaRam	=> open,
		RxDatOut	=> IntDatRec10
    );

-- Output buffers for decoder signals
--Cust10 : for n in 23 downto 0 generate
--	Appl1 : if n > 11 generate
--		Ch1Obuf : BUFG	port map (I => IntDatRec10(n),	O => ChOut_1(n-12));
--	end generate;
--	Appl0 : if n <= 11 generate
--		Ch0Obuf : BUFG	port map (I => IntDatRec10(n),	O => ChOut_0(n));
--	end generate;
--end generate;





ChOut_1(11) <= IntDatRec10(23);
ChOut_1(10) <= IntDatRec10(22);
ChOut_1(9) <= IntDatRec10(21);
ChOut_1(8) <= IntDatRec10(20);
ChOut_1(7) <= IntDatRec10(19);
ChOut_1(6) <= IntDatRec10(18);
ChOut_1(5) <= IntDatRec10(17);
ChOut_1(4) <= IntDatRec10(16);
ChOut_1(3) <= IntDatRec10(15);
ChOut_1(2) <= IntDatRec10(14);
ChOut_1(1) <= IntDatRec10(13);
ChOut_1(0) <= IntDatRec10(12);

ChOut_0(11) <= IntDatRec10(11);
ChOut_0(10) <= IntDatRec10(10);
ChOut_0(9) <= IntDatRec10(9);
ChOut_0(8) <= IntDatRec10(8);
ChOut_0(7) <= IntDatRec10(7);
ChOut_0(6) <= IntDatRec10(6);
ChOut_0(5) <= IntDatRec10(5);
ChOut_0(4) <= IntDatRec10(4);
ChOut_0(3) <= IntDatRec10(3);
ChOut_0(2) <= IntDatRec10(2);
ChOut_0(1) <= IntDatRec10(1);
ChOut_0(0) <= IntDatRec10(0);


-------------------------------------------------------
--  DCM

IntFpgaSystemRst <= SysRst;


-- This DCM can be phase shifted to allign into the middle of the data bits.
LclkDcm : DCM
--pragma translate_off
	generic map (
		CLKIN_DIVIDE_BY_2	=> FALSE,
		DESKEW_ADJUST		=> "SOURCE_SYNCHRONOUS",
		CLKDV_DIVIDE		=> 3.0,
		PHASE_SHIFT 		=> -255,
		CLKOUT_PHASE_SHIFT 	=> "NONE"
		)
--pragma translate_on
	port map (
		CLKIN		=> Lclk,
		CLKFB   	=> IntRxClk,
		DSSEN 		=> '0',
		PSINCDEC	=> IntLclkDcmPhaseUpDwn,	-- If clock and data PCB line lengths perfectly match
		PSEN 		=> IntLclkDcmPhaseEna,		-- Clock and data will be shifted over 90 degrees.
		PSCLK 		=> IntLclkDcmPhaseClk,		-- These DCM inputs can be tied to GROUND.
		RST     	=> SysRst,		-- Reset, when application ready, release DCM
		CLK0    	=> IntLclkDcmBufg,
		CLK90   	=> open,
		CLK180  	=> IntLclkDcmNotBufg,
		CLK270  	=> open,
		CLK2X   	=> open,
		CLK2X180	=> open,
		CLKDV   	=> IntLclkDcmDvBufg,		-- Lclk divided by 3 = 2xADCLK.
		CLKFX   	=> open,
		CLKFX180	=> open,
		LOCKED  	=> IntLclkDcmLocked,
		PSDONE  	=> IntLclkDcmPhaseDone,
		STATUS  	=> open
	);
LclkBufg :		BUFG	port map (I => IntLclkDcmBufg,		O => IntRxClk);
LclkNotBufg :	BUFG	port map (I => IntLclkDcmNotBufg,	O => IntRxClkNot);
LclkDvBufg :	BUFG 	port map (I => IntLclkDcmDvBufg,	O => IntRxClkDv);


--------------------------------------------------------------------------
----- Phase Control to repair out of phase clocks

--
--	ButUpIbuf : IBUF_LVCMOS33	port map (I => ButtonUp,	O => IntButtonUp);
--	IntButtonUpNot <= not IntButtonUp;
--	ButDwnIbuf : IBUF_LVCMOS33	port map (I => ButtonDwn,	O => IntButtonDwn);
--	IntButtonDwnNot <= not IntButtonDwn;
--	
	ThePhaseCtrl : PhaseControlFullRange
		port map (
			Enable		=> '1',
			MonClkIn	=> Lclk,			-- Incoming clock
			RxClkIn		=> IntRxClk,				-- Clock after the DCM
			CtlClk		=> IntRxClkDv,				-- IntSysClk2X = Lclk/6,
			LocKedIn	=> IntLclkDcmLocked,		-- Rx DCM locked.
			Rst			=> SysRst,		-- Reset from application.
			PsDone		=> IntLclkDcmPhaseDone,		-- Phase shift Status from Rx DCM
			ForceUp		=> '0', --IntButtonUpNot,	-- Force a phase shift, to demo board buttons.
			ForceDown	=> '0', --IntButtonDwnNot,	-- Force a phase shift, to demo board buttons.
			DcmDiv2Used	=> '0',						-- Div2 is not used.
			K			=> LclkOffsetK,				-- Clk and Data nets all same length, all 0.
			LockedOut	=> IntLclkDcmPhsClkLocked,	-- Replacement for the locked DCM output.
			PsIncDec	=> IntLclkDcmPhaseUpDwn,
			PsEn		=> IntLclkDcmPhaseEna,
			PsClk		=> IntLclkDcmPhaseClk,
			BinOut		=> open,
			BcdOut		=> open
			);
	--------------------------------------------------------------------------------
	IntLclkDcmPhsClkLockedNot <= not IntLclkDcmPhsClkLocked;
	--
	RxRstFf : FDP
		port map (
			--D	=> IntLclkDcmPhsClkLockedNot,
			D	=> IntLclkDcmPhsClkLocked,
			C 	=> IntRxClk,
			PRE => SysRst,
			Q 	=> IntReceiverRst		-- Reset for the receiver interface.
			);


-----------------------------------
---- Delays

--Ch0Iob : IBUFDS
--    port map (I => DataInChP(0), IB => DataInChN(0), O => IntDatCh0);

--Ch0Delay : IDELAYE2
--    generic map (
--        DELAY_SRC => "IDATAIN",
--        IDELAY_TYPE => "VARIABLE", -- Or "FIXED" if you want a static delay
--        IDELAY_VALUE => 0,         -- Set to 0 for dynamic delay tuning
--        REFCLK_FREQUENCY => 150.0  -- Adjust to your reference clock frequency
--    )
--    port map (
--        IDATAIN => IntDatCh0,
--        DATAOUT => IntDatCh0_delayed,
--        C => IntRxClk,             -- Clock for dynamic control
--        CE => delay_enable,        -- Enable for delay adjustment
--        INC => delay_increment,    -- Increment signal
--        LD => delay_load,          -- Load signal for static tuning
--        CNTVALUEIN => (others => '0'), -- Control input for delay taps
--        CNTVALUEOUT => open ,       -- Optional: Connect for monitoring
--        CINVCTRL => '0'             -- Explicitly tie CINVCTRL to '0'
--    );
    
--Ch1Iob : IBUFDS
--        port map (I => DataInChP(1), IB => DataInChN(1), O => IntDatCh1);
    
--Ch1Delay : IDELAYE2
--    generic map (
--        DELAY_SRC => "IDATAIN",
--        IDELAY_TYPE => "VARIABLE", -- Or "FIXED" if you want a static delay
--        IDELAY_VALUE => 0,         -- Set to 0 for dynamic delay tuning
--        REFCLK_FREQUENCY => 150.0  -- Adjust to your reference clock frequency
--    )
--    port map (
--        IDATAIN => IntDatCh1,
--        DATAOUT => IntDatCh1_delayed,
--        C => IntRxClk,             -- Clock for dynamic control
--        CE => delay_enable,        -- Enable for delay adjustment
--        INC => delay_increment,    -- Increment signal
--        LD => delay_load,          -- Load signal for static tuning
--        CNTVALUEIN => (others => '0'), -- Control input for delay taps
--        CNTVALUEOUT => open ,       -- Optional: Connect for monitoring
--        CINVCTRL => '0'             -- Explicitly tie CINVCTRL to '0'
--    );


--AdClkDelay : IDELAYE2
--    generic map (
--        DELAY_SRC => "IDATAIN",
--        IDELAY_TYPE => "FIXED", -- Use "VARIABLE" if calibration is needed
--        IDELAY_VALUE => 64,    -- Example delay for alignment
--        REFCLK_FREQUENCY => 150.0
--    )
--    port map (
--        IDATAIN => AdClk,
--        DATAOUT => AdClk_delayed,
--        C => '0',
--        CE => '0',
--        INC => '0',
--        LD => '0',
--        CNTVALUEIN => (others => '0'),
--        CNTVALUEOUT => open,
--        CINVCTRL => '0'             -- Explicitly tie CINVCTRL to '0'
--    );



--process (IntRxClk)
--begin
--    if rising_edge(IntRxClk) then
--        if alignment_done = '0' then
--            -- Check feedback signal to determine alignment
--            if feedback_signal = '1' then
--                alignment_done <= '1'; -- Stop alignment
--                delay_enable <= '0';   -- Disable IDELAY adjustment
--            else
--                delay_enable <= '1';   -- Enable delay adjustment
--                delay_increment <= alignment_direction; -- Adjust delay
--            end if;
--        end if;
--    end if;
--end process;


end Lvds_Rx_top_arch;
