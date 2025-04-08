library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_ADC_v1_0 is
	generic (
		-- Users to add parameters here
    FRAME_PATTERN : std_logic_vector (5 downto 0) := "111000";


		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI_ctrl
		C_S00_AXI_ctrl_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ctrl_ADDR_WIDTH	: integer	:= 4;
		ADC_N_bits      : natural := 16
	);
	port (
		-- Users to add ports here
    -- Hardware signals  ADC spi
    i_MISO          : in  std_logic;        
    o_MOSI          : out std_logic;
    o_SCLK          : out std_logic;
    o_nCS           : out std_logic;
    o_ADC_nrst     : out std_logic;
    -- debugging ADC spi
    o_debug       : out std_logic_vector (11 downto 0);
           
    --signals ADC readout       
    i_ADclk_p        : in std_logic;
    i_ADclk_n        : in std_logic;
    i_Lclk_p         : in std_logic;
    i_Lclk_n         : in std_logic;

    i_data_in_ch0_p  : in std_logic;
    i_data_in_ch0_n  : in std_logic;
    i_data_in_ch1_p  : in std_logic;
    i_data_in_ch1_n  : in std_logic;
    i_data_in_ch2_p  : in std_logic;
    i_data_in_ch2_n  : in std_logic;
    i_data_in_ch3_p  : in std_logic;
    i_data_in_ch3_n  : in std_logic;
    i_data_in_ch4_p  : in std_logic;
    i_data_in_ch4_n  : in std_logic;
    i_data_in_ch5_p  : in std_logic;
    i_data_in_ch5_n  : in std_logic;
    i_data_in_ch6_p  : in std_logic;
    i_data_in_ch6_n  : in std_logic;
    i_data_in_ch7_p  : in std_logic;
    i_data_in_ch7_n  : in std_logic;
    o_data_out_ch0 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch1 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch2 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch3 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch4 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch5 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch6 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch7 : out std_logic_vector (ADC_N_bits - 1 downto 0);

    --       data_debug     : out std_logic_vector (N_bits - 1 downto 0)  
    o_data_clk     : out std_logic;
       
--    i_clk_50   : in std_logic;
--    i_clk_16   : in std_logic;
--    o_ADC_clk  : out std_logic;
         
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI_ctrl
		s00_axi_ctrl_aclk	: in std_logic;
		s00_axi_ctrl_aresetn	: in std_logic;
		s00_axi_ctrl_awaddr	: in std_logic_vector(C_S00_AXI_ctrl_ADDR_WIDTH-1 downto 0);
		s00_axi_ctrl_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_ctrl_awvalid	: in std_logic;
		s00_axi_ctrl_awready	: out std_logic;
		s00_axi_ctrl_wdata	: in std_logic_vector(C_S00_AXI_ctrl_DATA_WIDTH-1 downto 0);
		s00_axi_ctrl_wstrb	: in std_logic_vector((C_S00_AXI_ctrl_DATA_WIDTH/8)-1 downto 0);
		s00_axi_ctrl_wvalid	: in std_logic;
		s00_axi_ctrl_wready	: out std_logic;
		s00_axi_ctrl_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_ctrl_bvalid	: out std_logic;
		s00_axi_ctrl_bready	: in std_logic;
		s00_axi_ctrl_araddr	: in std_logic_vector(C_S00_AXI_ctrl_ADDR_WIDTH-1 downto 0);
		s00_axi_ctrl_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_ctrl_arvalid	: in std_logic;
		s00_axi_ctrl_arready	: out std_logic;
		s00_axi_ctrl_rdata	: out std_logic_vector(C_S00_AXI_ctrl_DATA_WIDTH-1 downto 0);
		s00_axi_ctrl_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_ctrl_rvalid	: out std_logic;
		s00_axi_ctrl_rready	: in std_logic
	);
end AXI_ADC_v1_0;

architecture arch_imp of AXI_ADC_v1_0 is

	-- component declaration
	component AXI_ADC_v1_0_S00_AXI_ctrl is
		generic (
		  FRAME_PATTERN : std_logic_vector (5 downto 0) := FRAME_PATTERN;


		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4;
    ADC_N_bits      : natural := 16
		);
		port (
    -- Hardware signals  ADC spi
    i_MISO          : in  std_logic;        
    o_MOSI          : out std_logic;
    o_SCLK          : out std_logic;
    o_nCS           : out std_logic;
    o_ADC_nrst     : out std_logic;
    -- debugging ADC spi
    o_debug       : out std_logic_vector (11 downto 0);
           
    --signals ADC readout       
    i_ADclk_p        : in std_logic;
    i_ADclk_n        : in std_logic;
    i_Lclk_p         : in std_logic;
    i_Lclk_n         : in std_logic;
    i_data_in_ch0_p  : in std_logic;
    i_data_in_ch0_n  : in std_logic;
    i_data_in_ch1_p  : in std_logic;
    i_data_in_ch1_n  : in std_logic;
    i_data_in_ch2_p  : in std_logic;
    i_data_in_ch2_n  : in std_logic;
    i_data_in_ch3_p  : in std_logic;
    i_data_in_ch3_n  : in std_logic;
    i_data_in_ch4_p  : in std_logic;
    i_data_in_ch4_n  : in std_logic;
    i_data_in_ch5_p  : in std_logic;
    i_data_in_ch5_n  : in std_logic;
    i_data_in_ch6_p  : in std_logic;
    i_data_in_ch6_n  : in std_logic;
    i_data_in_ch7_p  : in std_logic;
    i_data_in_ch7_n  : in std_logic;
    o_data_out_ch0 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch1 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch2 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch3 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch4 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch5 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch6 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    o_data_out_ch7 : out std_logic_vector (ADC_N_bits - 1 downto 0);
    --       data_debug     : out std_logic_vector (N_bits - 1 downto 0)  
    o_data_clk     : out std_logic;
        
 --   i_clk_50   : in std_logic;
 --   i_clk_16   : in std_logic;
 --   o_ADC_clk  : out std_logic;
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_ADC_v1_0_S00_AXI_ctrl;

begin

-- Instantiation of Axi Bus Interface S00_AXI_ctrl
AXI_ADC_v1_0_S00_AXI_ctrl_inst : AXI_ADC_v1_0_S00_AXI_ctrl
	generic map (
	  FRAME_PATTERN => FRAME_PATTERN,


		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_ctrl_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ctrl_ADDR_WIDTH,
		ADC_N_bits  => ADC_N_bits
	)
	port map (
    -- Hardware signals  ADC spi
    i_MISO         => i_MISO,
    o_MOSI         => o_MOSI,
    o_SCLK         => o_SCLK,
    o_nCS          => o_nCS,
    o_ADC_nrst     => o_ADC_nrst,
    -- debugging ADC spi
    o_debug       => o_debug,
    --signals ADC readout       
    i_ADclk_p        => i_ADclk_p,
    i_ADclk_n        => i_ADclk_n,
    i_Lclk_p  => i_Lclk_p,
    i_Lclk_n  => i_Lclk_n,
    i_data_in_ch0_p     => i_data_in_ch0_p,
    i_data_in_ch0_n     => i_data_in_ch0_n,
    i_data_in_ch1_p     => i_data_in_ch1_p,
    i_data_in_ch1_n     => i_data_in_ch1_n,
    i_data_in_ch2_p     => i_data_in_ch2_p,
    i_data_in_ch2_n     => i_data_in_ch2_n,
    i_data_in_ch3_p     => i_data_in_ch3_p,
    i_data_in_ch3_n     => i_data_in_ch3_n,
    i_data_in_ch4_p     => i_data_in_ch4_p,
    i_data_in_ch4_n     => i_data_in_ch4_n,
    i_data_in_ch5_p     => i_data_in_ch5_p,
    i_data_in_ch5_n     => i_data_in_ch5_n,
    i_data_in_ch6_p     => i_data_in_ch6_p,
    i_data_in_ch6_n     => i_data_in_ch6_n,
    i_data_in_ch7_p     => i_data_in_ch7_p,
    i_data_in_ch7_n     => i_data_in_ch7_n,
    o_data_out_ch0 => o_data_out_ch0,
    o_data_out_ch1 => o_data_out_ch1,
    o_data_out_ch2 => o_data_out_ch2,
    o_data_out_ch3 => o_data_out_ch3,
    o_data_out_ch4 => o_data_out_ch4,
    o_data_out_ch5 => o_data_out_ch5,
    o_data_out_ch6 => o_data_out_ch6, 
    o_data_out_ch7 => o_data_out_ch7,
    o_data_clk     => o_data_clk,
    --ADC clocks
--    i_clk_50   => i_clk_50,
--    i_clk_16   => i_clk_16,
--    o_ADC_clk  => o_ADC_clk,

		S_AXI_ACLK	=> s00_axi_ctrl_aclk,
		S_AXI_ARESETN	=> s00_axi_ctrl_aresetn,
		S_AXI_AWADDR	=> s00_axi_ctrl_awaddr,
		S_AXI_AWPROT	=> s00_axi_ctrl_awprot,
		S_AXI_AWVALID	=> s00_axi_ctrl_awvalid,
		S_AXI_AWREADY	=> s00_axi_ctrl_awready,
		S_AXI_WDATA	=> s00_axi_ctrl_wdata,
		S_AXI_WSTRB	=> s00_axi_ctrl_wstrb,
		S_AXI_WVALID	=> s00_axi_ctrl_wvalid,
		S_AXI_WREADY	=> s00_axi_ctrl_wready,
		S_AXI_BRESP	=> s00_axi_ctrl_bresp,
		S_AXI_BVALID	=> s00_axi_ctrl_bvalid,
		S_AXI_BREADY	=> s00_axi_ctrl_bready,
		S_AXI_ARADDR	=> s00_axi_ctrl_araddr,
		S_AXI_ARPROT	=> s00_axi_ctrl_arprot,
		S_AXI_ARVALID	=> s00_axi_ctrl_arvalid,
		S_AXI_ARREADY	=> s00_axi_ctrl_arready,
		S_AXI_RDATA	=> s00_axi_ctrl_rdata,
		S_AXI_RRESP	=> s00_axi_ctrl_rresp,
		S_AXI_RVALID	=> s00_axi_ctrl_rvalid,
		S_AXI_RREADY	=> s00_axi_ctrl_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
