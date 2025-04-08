----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- Rimsky Rojas
-- Create Date: 11/20/2020 09:43:52 PM
-- Design Name: 
-- Module Name: ADC_readout_2 - Behavioral
-- Project Name: 
-- Target Devices: Artix 7 -35
-- Tool Versions: Vivado 2018.2
-- Description: 
-- implements fabric iserdes to readout 12 bit ADC
-- be aware that this implementation requires to LOC the iserdes and BUFR to prevent the tool to place them wherever it wants.
-- this is why constraints includes pins location. This works only on Artix-7-35
--  One could migrate this code to other device, but must LOC properly.
-- Dependencies: 
-- 
-- 
-- Revision:
-- Revision 1.02 - Include generic
-- - include generic FRAME_PATTERN to allow select the training pattern
-- - this is usefull in case the frame signal is shifted or different
-- - a complete pattern should be used in future versions.
-- - also include FRAME_PATTER_H_bit adn FRAME_PATTER_L_bit, to selecto wich side align, even or odd bits
-- Revision 1.01 - File Created
-- Additional Comments:
--  THIS IMPLEMENTATION will probably work only on this FPGA, no time to do something more generic.
-- there is a latency of 5 clocks app., so it is "fixed" using the inverted AD clk, asserted at the inverted lclk
-- Lclk is already inverted on the routing for this Module, it wont for other module. a more general using idelaye2 should be implemented.
-- this solution works for this specific situation.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ADC_readout_2 is
Generic(
  FRAME_PATTERN : std_logic_vector (5 downto 0) := "111000"
);
  Port (
  i_ADclk_p        : in std_logic;
  i_ADclk_n        : in std_logic;
  i_Lclk_p         : in std_logic;
  i_Lclk_n         : in std_logic;
  i_ch0_p  : in std_logic;
  i_ch0_n  : in std_logic;
  i_ch1_p  : in std_logic;
  i_ch1_n  : in std_logic;
  i_ch2_p  : in std_logic;
  i_ch2_n  : in std_logic;
  i_ch3_p  : in std_logic;
  i_ch3_n  : in std_logic;
  i_ch4_p  : in std_logic;
  i_ch4_n  : in std_logic;
  i_ch5_p  : in std_logic;
  i_ch5_n  : in std_logic;
  i_ch6_p  : in std_logic;
  i_ch6_n  : in std_logic;
  i_ch7_p  : in std_logic;
  i_ch7_n  : in std_logic;
  o_ch0 : out std_logic_vector (15 downto 0);
  o_ch1 : out std_logic_vector (15 downto 0);
  o_ch2 : out std_logic_vector (15 downto 0);
  o_ch3 : out std_logic_vector (15 downto 0);
  o_ch4 : out std_logic_vector (15 downto 0);
  o_ch5 : out std_logic_vector (15 downto 0);
  o_ch6 : out std_logic_vector (15 downto 0);
  o_ch7 : out std_logic_vector (15 downto 0);

  i_rst       : in std_logic;
  o_data_clk  : out std_logic
  ------
 );

end ADC_readout_2;

architecture Behavioral of ADC_readout_2 is

ATTRIBUTE X_INTERFACE_INFO : STRING;

--ATTRIBUTE X_INTERFACE_INFO of i_Lclk: SIGNAL is "xilinx.com:signal:clock:1.0 i_Lclk CLK";
ATTRIBUTE X_INTERFACE_INFO of i_Lclk_p: SIGNAL is "xilinx.com:interface:diff_clock:1.0 i_Lclk_p CLK_P";
ATTRIBUTE X_INTERFACE_INFO of i_Lclk_n: SIGNAL is "xilinx.com:interface:diff_clock:1.0 i_Lclk_n CLK_N";
ATTRIBUTE X_INTERFACE_INFO of o_data_clk: SIGNAL is "xilinx.com:signal:clock:1.0 o_data_clk CLK";
ATTRIBUTE X_INTERFACE_INFO of i_rst: SIGNAL is "xilinx.com:signal:reset:1.0 i_rst RST";

ATTRIBUTE X_INTERFACE_PARAMETER : STRING;

ATTRIBUTE X_INTERFACE_PARAMETER of i_Lclk_p: SIGNAL is "ASSOCIATED_BUSIF i_Lclk_p, ASSOCIATED_RESET i_rst, FREQ_HZ 400000000";
ATTRIBUTE X_INTERFACE_PARAMETER of o_data_clk: SIGNAL is "ASSOCIATED_BUSIF o_data_clk, ASSOCIATED_RESET i_rst, FREQ_HZ 80000000";
ATTRIBUTE X_INTERFACE_PARAMETER of i_rst: SIGNAL is "POLARITY ACTIVE_HIGH";


--signal adclk_p_i : std_logic;
signal adclk_i : std_logic;
signal adclk_p_prev : std_logic;
signal adclk : std_logic;
signal Lclk : std_logic;
signal Lclk_B : std_logic;
signal lclk_sys : std_logic;
signal not_lclk_sys : std_logic;

signal  ch0 : std_logic_vector (15 downto 0);
signal  ch1 : std_logic_vector (15 downto 0);
signal  ch2 : std_logic_vector (15 downto 0);
signal  ch3 : std_logic_vector (15 downto 0);
signal  ch4 : std_logic_vector (15 downto 0);
signal  ch5 : std_logic_vector (15 downto 0);
signal  ch6 : std_logic_vector (15 downto 0);
signal  ch7 : std_logic_vector (15 downto 0);
  
signal  frame : std_logic_vector (15 downto 0);
signal delay_odd : std_logic_vector(2 downto 0);
signal bitslip_odd : std_logic;
signal delay_even : std_logic_vector(2 downto 0);
signal bitslip_even : std_logic;

begin


--  Lclk_IBUFDS_inst : IBUFDS_DIFF_OUT
--    generic map (
--       DIFF_TERM => TRUE, -- Differential Termination 
--       IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
--       IOSTANDARD => "LVDS_25")
--    port map (
--      O => Lclk ,
--       OB => Lclk_B,  -- Buffer output
--       I => i_Lclk_p,  -- Diff_p buffer input (connect directly to top-level port)
--       IB => i_Lclk_n -- Diff_n buffer input (connect directly to top-level port)
--);
    Lclk <= i_Lclk_p;
    Lclk_B <= i_Lclk_n;
    
process (Lclk)
begin
  if rising_edge(Lclk) then
      adclk <= i_ADclk_p;
--    adclk_p_prev <= i_ADclk_n;
--    if (adclk_p_prev = '1' and i_ADclk_n = '1') then
----    if ( i_ADclk_n = '1') then
--      adclk <= '1';
--    end if;
--    if (adclk_p_prev = '0' and i_ADclk_n = '0') then
----    if ( i_ADclk_n = '0') then
--      adclk <= '0';
--    end if;
  end if;
end process;

align_odd: process(adclk_i, i_rst)
variable inc : std_logic := '1';
variable t_wait  : std_logic_vector(2 downto 0) := "000";
begin
  if (i_rst = '1')then
    delay_odd <= "000";
    bitslip_odd <= '0';
  elsif rising_edge(adclk_i) then
    bitslip_odd <= '0';
    if (frame(5 downto 0) = FRAME_PATTERN)then
      delay_odd <= delay_odd;
    else
      if (delay_odd = "111") then
        inc := '0';
      elsif (delay_odd = "000") then
        inc := '1';
      end if;
      if (inc = '1')then
        if (t_wait = "111")then
          t_wait := "000";
          delay_odd <= delay_odd +1;
          bitslip_odd <= '1';
        else
          t_wait := t_wait + 1;
        end if;
      elsif (inc = '0')then
        if (t_wait = "111")then
          t_wait := "000";
          delay_odd <= delay_odd -1;
        else
          t_wait := t_wait + 1;
        end if;
      end if;
    end if;
  end if;
end process;

align_even: process(adclk_i, i_rst)
variable inc : std_logic := '1';
variable t_wait  : std_logic_vector(2 downto 0) := "000";
begin
  if (i_rst = '1')then
    delay_even <= "000";
    bitslip_even <= '0';
  elsif rising_edge(adclk_i) then
    bitslip_even <= '0';
    if (frame(13 downto 8) = not(FRAME_PATTERN))then
      delay_even <= delay_even;
    else
      if (delay_even = "111") then
        inc := '0';
      elsif (delay_even = "000") then
        inc := '1';
      end if;
      if (inc = '1')then
        if (t_wait = "111")then
          t_wait := "000";
          delay_even <= delay_even +1;
          bitslip_even <= '1';
        else
          t_wait := t_wait + 1;
        end if;
      elsif (inc = '0')then
        if (t_wait = "111")then
          t_wait := "000";
          delay_even <= delay_even -1;
        else
          t_wait := t_wait + 1;
        end if;
      end if;
    end if;
  end if;
end process;

--lclk_sys <= Lclk;
--adclk_i <= adclk;

bufio_lclk_sys : BUFIO port map (I => Lclk, O => lclk_sys) ;
--bufio_notlclk_sys : BUFIO port map (I => Lclk_B, O => not_lclk_sys) ;
--bufio_notlclk_sys : BUFIO port map (I => Lclk_B, CE => '1', O => not_lclk_sys, CLR => '0') ;
not_lclk_sys <= not(lclk_sys);
-----------
-----------
--bufr_ad_p : BUFR generic map(BUFR_DIVIDE => "1", SIM_DEVICE => "7SERIES") port map (I => adclk, CE => '1',O => adclk_p_i,CLR => '0') ;
bufr_ad_n : BUFR generic map(BUFR_DIVIDE => "1", SIM_DEVICE => "7SERIES") port map (I =>  (adclk), CE => '1',O => adclk_i,CLR => '0') ;
--bufg_adclk_n_i: BUFG port map( O => adclk_n_i, I => not adclk);
--bufg_adclk_p_i: BUFG port map( O => adclk_p_i, I => adclk); 
o_data_clk <= adclk_i;


--o_ch0 <= not(ch0(11 downto 6)) & ch0(5 downto 0); 
--o_ch2 <= ch2(11 downto 6) & not(ch2(5 downto 0)); 
--o_ch4 <= ch4(11 downto 6) & not(ch4(5 downto 0)); 
--o_ch6 <= not(ch6(11 downto 6)) & ch6(5 downto 0); 
o_ch0 <= ch0; 
o_ch1 <= ch1; 
o_ch2 <= ch2; 
o_ch3 <= ch3; 
o_ch4 <= ch4; 
o_ch5 <= ch5; 
o_ch6 <= ch6; 
o_ch7 <= ch7; 

iserdes0_odd : ISERDESE2 generic map(
	DATA_WIDTH     		=> 6, 			
	DATA_RATE      		=> "SDR", 		
	SERDES_MODE    		=> "MASTER", 	
	DYN_CLK_INV_EN => "TRUE",    -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
	--IOBDELAY	    	=> "IFD",
	INTERFACE_TYPE 		=> "NETWORKING") 	
port map (                      
	D       		=> i_ch0_p,
	DDLY     		=> '0',
	CE1     		=> '1',
	CE2     		=> '1',
	CLK	   		=> lclk_sys,
	CLKB    		=> not_lclk_sys,
	RST     		=> i_rst,
	CLKDIV  		=> adclk_i,
	CLKDIVP  		=> '0',
	OCLK    		=> '0',
	OCLKB    		=> '0',
	DYNCLKSEL    		=> '0',
	DYNCLKDIVSEL  		=> '0',
	SHIFTIN1 		=> '0',
	SHIFTIN2 		=> '0',
	BITSLIP 		=> bitslip_odd,
	O	 		=> open,
	Q8  			=> ch0(7),
	Q7  			=> ch0(6),
	Q6  			=> ch0(5),
	Q5  			=> ch0(4),
	Q4  			=> ch0(3),
	Q3  			=> ch0(2),
	Q2  			=> ch0(1),
	Q1  			=> ch0(0),
	OFB 			=> '0',
	SHIFTOUT1		=> open,
	SHIFTOUT2 		=> open);

iserdes0_even : ISERDESE2 generic map(
	DATA_WIDTH     		=> 6, 			
	DATA_RATE      		=> "SDR", 		
	DYN_CLK_INV_EN => "FALSE",    -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
--	SERDES_MODE    		=> "MASTER", 		
	--IOBDELAY	    	=> "IFD",
	INTERFACE_TYPE 		=> "NETWORKING") 	
port map (                      
	D       		=> i_ch0_n,
	DDLY     		=> '0',
	CE1     		=> '1',
	CE2     		=> '1',
	CLK	   		=> lclk_sys,
	CLKB    		=> not_lclk_sys,
	RST     		=> i_rst,
	CLKDIV  		=> adclk_i,
	CLKDIVP  		=> '0',
	OCLK    		=> '0',
	OCLKB    		=> '0',
	DYNCLKSEL    		=> '0',
	DYNCLKDIVSEL  		=> '0',
	SHIFTIN1 		=> '0',
	SHIFTIN2 		=> '0',
	BITSLIP 		=> bitslip_even,
	O	 		=> open,
	Q8  			=> ch0(15),
	Q7  			=> ch0(14),
	Q6  			=> ch0(13),
	Q5  			=> ch0(12),
	Q4  			=> ch0(11),
	Q3  			=> ch0(10),
	Q2  			=> ch0(9),
	Q1  			=> ch0(8),
	OFB 			=> '0',
	SHIFTOUT1		=> open,
	SHIFTOUT2 		=> open);

iserdes1_p : ISERDESE2 generic map(
	DATA_WIDTH     		=> 6, 			
	DATA_RATE      		=> "SDR", 		
	SERDES_MODE    		=> "MASTER", 		
	--IOBDELAY	    	=> "IFD",
	DYN_CLK_INV_EN		=> "TRUE", 		
	INTERFACE_TYPE 		=> "NETWORKING") 	
port map (                      
	D       		=> i_ch1_p,
	DDLY     		=> '0',
	CE1     		=> '1',
	CE2     		=> '1',
	CLK	   		=> lclk_sys,
	CLKB    		=> not_lclk_sys,
	RST     		=> i_rst,
	CLKDIV  		=> adclk_i,
	CLKDIVP  		=> '0',
	OCLK    		=> '0',
	OCLKB    		=> '0',
	DYNCLKSEL    		=> '0',
	DYNCLKDIVSEL  		=> '0',
	SHIFTIN1 		=> '0',
	SHIFTIN2 		=> '0',
	BITSLIP 		=> bitslip_odd,
	O	 		=> open,
	Q8  			=> ch1(7),
	Q7  			=> ch1(6),
	Q6  			=> ch1(5),
	Q5  			=> ch1(4),
	Q4  			=> ch1(3),
	Q3  			=> ch1(2),
	Q2  			=> ch1(1),
	Q1  			=> ch1(0),
	OFB 			=> '0',
	SHIFTOUT1		=> open,
	SHIFTOUT2 		=> open);

iserdes1_n : ISERDESE2 generic map(
	DATA_WIDTH     		=> 6, 			
	DATA_RATE      		=> "SDR", 		
--	SERDES_MODE    		=> "MASTER", 		
	--IOBDELAY	    	=> "IFD",
	DYN_CLK_INV_EN		=> "FALSE", 		
	INTERFACE_TYPE 		=> "NETWORKING") 	
port map (                      
	D       		=> i_ch1_n,
	DDLY     		=> '0',
	CE1     		=> '1',
	CE2     		=> '1',
	CLK	   		=> lclk_sys,
	CLKB    		=> not_lclk_sys,
	RST     		=> i_rst,
	CLKDIV  		=> adclk_i,
	CLKDIVP  		=> '0',
	OCLK    		=> '0',
	OCLKB    		=> '0',
	DYNCLKSEL    		=> '0',
	DYNCLKDIVSEL  		=> '0',
	SHIFTIN1 		=> '0',
	SHIFTIN2 		=> '0',
	BITSLIP 		=> bitslip_even,
	O	 		=> open,
	Q8  			=> ch1(15),
	Q7  			=> ch1(14),
	Q6  			=> ch1(13),
	Q5  			=> ch1(12),
	Q4  			=> ch1(11),
	Q3  			=> ch1(10),
	Q2  			=> ch1(9),
	Q1  			=> ch1(8),
	OFB 			=> '0',
	SHIFTOUT1		=> open,
	SHIFTOUT2 		=> open);


iserdes2_p : ISERDESE2 generic map(
	DATA_WIDTH     		=> 6, 			
	DATA_RATE      		=> "SDR", 		
	SERDES_MODE    		=> "MASTER", 		
	--IOBDELAY	    	=> "IFD",
	DYN_CLK_INV_EN		=> "TRUE", 		
	INTERFACE_TYPE 		=> "NETWORKING") 	
port map (                      
	D       		=> i_ch2_p,
	DDLY     		=> '0',
	CE1     		=> '1',
	CE2     		=> '1',
	CLK	   		=> lclk_sys,
	CLKB    		=> not_lclk_sys,
	RST     		=> i_rst,
	CLKDIV  		=> adclk_i,
	CLKDIVP  		=> '0',
	OCLK    		=> '0',
	OCLKB    		=> '0',
	DYNCLKSEL    		=> '0',
	DYNCLKDIVSEL  		=> '0',
	SHIFTIN1 		=> '0',
	SHIFTIN2 		=> '0',
	BITSLIP 		=> bitslip_odd,
	O	 		=> open,
	Q8  			=> ch2(7),
	Q7  			=> ch2(6),
	Q6  			=> ch2(5),
	Q5  			=> ch2(4),
	Q4  			=> ch2(3),
	Q3  			=> ch2(2),
	Q2  			=> ch2(1),
	Q1  			=> ch2(0),
	OFB 			=> '0',
	SHIFTOUT1		=> open,
	SHIFTOUT2 		=> open);

iserdes2_n : ISERDESE2 generic map(
	DATA_WIDTH     		=> 6, 			
	DATA_RATE      		=> "SDR", 		
--	SERDES_MODE    		=> "MASTER", 		
	--IOBDELAY	    	=> "IFD",
	DYN_CLK_INV_EN		=> "FALSE", 		
	INTERFACE_TYPE 		=> "NETWORKING") 	
port map (                      
	D       		=> i_ch2_n,
	DDLY     		=> '0',
	CE1     		=> '1',
	CE2     		=> '1',
	CLK	   		=> lclk_sys,
	CLKB    		=> not_lclk_sys,
	RST     		=> i_rst,
	CLKDIV  		=> adclk_i,
	CLKDIVP  		=> '0',
	OCLK    		=> '0',
	OCLKB    		=> '0',
	DYNCLKSEL    		=> '0',
	DYNCLKDIVSEL  		=> '0',
	SHIFTIN1 		=> '0',
	SHIFTIN2 		=> '0',
	BITSLIP 		=> bitslip_even,
	O	 		=> open,
	Q8  			=> ch2(15),
	Q7  			=> ch2(14),
	Q6  			=> ch2(13),
	Q5  			=> ch2(12),
	Q4  			=> ch2(11),
	Q3  			=> ch2(10),
	Q2  			=> ch2(9),
	Q1  			=> ch2(8),
	OFB 			=> '0',
	SHIFTOUT1		=> open,
	SHIFTOUT2 		=> open);
iserdes3_p : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "TRUE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch3_p,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_odd,
  O       => open,
  Q8        => ch3(7),
  Q7        => ch3(6),
  Q6        => ch3(5),
  Q5        => ch3(4),
  Q4        => ch3(3),
  Q3        => ch3(2),
  Q2        => ch3(1),
  Q1        => ch3(0),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);

iserdes3_n : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
--  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "FALSE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch3_n,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_even,
  O       => open,
  Q8        => ch3(15),
  Q7        => ch3(14),
  Q6        => ch3(13),
  Q5        => ch3(12),
  Q4        => ch3(11),
  Q3        => ch3(10),
  Q2        => ch3(9),
  Q1        => ch3(8),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);

iserdes4_p : ISERDESE2 generic map(
    DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
    SERDES_MODE        => "MASTER",     
    --IOBDELAY        => "IFD",
    DYN_CLK_INV_EN    => "TRUE",     
    INTERFACE_TYPE     => "NETWORKING")   
  port map (                      
    D           => i_ch4_p,
    DDLY         => '0',
    CE1         => '1',
    CE2         => '1',
    CLK         => lclk_sys,
    CLKB        => not_lclk_sys,
    RST         => i_rst,
    CLKDIV      => adclk_i,
    CLKDIVP      => '0',
    OCLK        => '0',
    OCLKB        => '0',
    DYNCLKSEL        => '0',
    DYNCLKDIVSEL      => '0',
    SHIFTIN1     => '0',
    SHIFTIN2     => '0',
    BITSLIP     => bitslip_odd,
    O       => open,
    Q8        => ch4(7),
    Q7        => ch4(6),
    Q6        => ch4(5),
    Q5        => ch4(4),
    Q4        => ch4(3),
    Q3        => ch4(2),
    Q2        => ch4(1),
    Q1        => ch4(0),
    OFB       => '0',
    SHIFTOUT1    => open,
    SHIFTOUT2     => open);
  
iserdes4_n : ISERDESE2 generic map(
    DATA_WIDTH         => 6,       
    DATA_RATE          => "SDR",     
--    SERDES_MODE        => "MASTER",     
    --IOBDELAY        => "IFD",
    DYN_CLK_INV_EN    => "FALSE",     
    INTERFACE_TYPE     => "NETWORKING")   
  port map (                      
    D           => i_ch4_n,
    DDLY         => '0',
    CE1         => '1',
    CE2         => '1',
    CLK         => lclk_sys,
    CLKB        => not_lclk_sys,
    RST         => i_rst,
    CLKDIV      => adclk_i,
    CLKDIVP      => '0',
    OCLK        => '0',
    OCLKB        => '0',
    DYNCLKSEL        => '0',
    DYNCLKDIVSEL      => '0',
    SHIFTIN1     => '0',
    SHIFTIN2     => '0',
    BITSLIP     => bitslip_even,
    O       => open,
    Q8        => ch4(15),
    Q7        => ch4(14),
    Q6        => ch4(13),
    Q5        => ch4(12),
    Q4        => ch4(11),
    Q3        => ch4(10),
    Q2        => ch4(9),
    Q1        => ch4(8),
    OFB       => '0',
    SHIFTOUT1    => open,
    SHIFTOUT2     => open);
iserdes5_p : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "TRUE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch5_p,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_odd,
  O       => open,
  Q8        => ch5(7),
  Q7        => ch5(6),
  Q6        => ch5(5),
  Q5        => ch5(4),
  Q4        => ch5(3),
  Q3        => ch5(2),
  Q2        => ch5(1),
  Q1        => ch5(0),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);

iserdes5_n : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
--  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "FALSE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch5_n,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_even,
  O       => open,
  Q8        => ch5(15),
  Q7        => ch5(14),
  Q6        => ch5(13),
  Q5        => ch5(12),
  Q4        => ch5(11),
  Q3        => ch5(10),
  Q2        => ch5(9),
  Q1        => ch5(8),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);
    
iserdes6_p : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "TRUE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch6_p,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_odd,
  O       => open,
  Q8        => ch6(7),
  Q7        => ch6(6),
  Q6        => ch6(5),
  Q5        => ch6(4),
  Q4        => ch6(3),
  Q3        => ch6(2),
  Q2        => ch6(1),
  Q1        => ch6(0),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);

iserdes6_n : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
--     SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "FALSE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch6_n,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_even,
  O       => open,
  Q8        => ch6(15),
  Q7        => ch6(14),
  Q6        => ch6(13),
  Q5        => ch6(12),
  Q4        => ch6(11),
  Q3        => ch6(10),
  Q2        => ch6(9),
  Q1        => ch6(8),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);
iserdes7_p : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "TRUE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch7_p,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_odd,
  O       => open,
  Q8        => ch7(7),
  Q7        => ch7(6),
  Q6        => ch7(5),
  Q5        => ch7(4),
  Q4        => ch7(3),
  Q3        => ch7(2),
  Q2        => ch7(1),
  Q1        => ch7(0),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);
      
iserdes7_n : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
--  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "FALSE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ch7_n,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_even,
  O       => open,
  Q8        => ch7(15),
  Q7        => ch7(14),
  Q6        => ch7(13),
  Q5        => ch7(12),
  Q4        => ch7(11),
  Q3        => ch7(10),
  Q2        => ch7(9),
  Q1        => ch7(8),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);

iserdes_frame_p_odd : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "TRUE",     
  DYN_CLKDIV_INV_EN    => "FALSE",   
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ADclk_p,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_odd,
  O       => open,
  Q8        => frame(7),
  Q7        => frame(6),
  Q6        => frame(5),
  Q5        => frame(4),
  Q4        => frame(3),
  Q3        => frame(2),
  Q2        => frame(1),
  Q1        => frame(0),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);

iserdes_frame_n_even : ISERDESE2 generic map(
  DATA_WIDTH         => 6,       
  DATA_RATE          => "SDR",     
--  SERDES_MODE        => "MASTER",     
  --IOBDELAY        => "IFD",
  DYN_CLK_INV_EN    => "FALSE",   
  DYN_CLKDIV_INV_EN    => "FALSE",     
  INTERFACE_TYPE     => "NETWORKING")   
port map (                      
  D           => i_ADclk_n,
  DDLY         => '0',
  CE1         => '1',
  CE2         => '1',
  CLK         => lclk_sys,
  CLKB        => not_lclk_sys,
  RST         => i_rst,
  CLKDIV      => adclk_i,
  CLKDIVP      => '0',
  OCLK        => '0',
  OCLKB        => '0',
  DYNCLKSEL        => '0',
  DYNCLKDIVSEL      => '0',
  SHIFTIN1     => '0',
  SHIFTIN2     => '0',
  BITSLIP     => bitslip_even,
  O       => open,
  Q8        => frame(15),
  Q7        => frame(14),
  Q6        => frame(13),
  Q5        => frame(12),
  Q4        => frame(11),
  Q3        => frame(10),
  Q2        => frame(9),
  Q1        => frame(8),
  OFB       => '0',
  SHIFTOUT1    => open,
  SHIFTOUT2     => open);

end Behavioral;
