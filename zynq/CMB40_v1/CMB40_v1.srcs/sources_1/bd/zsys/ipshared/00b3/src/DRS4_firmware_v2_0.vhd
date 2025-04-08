library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DRS4_firmware_v3_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line
        o_nReset: out std_logic;
        o_ROFS: out std_logic;
        clk_drs4 : in std_logic;
        o_A3_0 : out std_logic_vector(3 downto 0);
        o_srclk: out std_logic;
        o_srin : out std_logic;
        o_rsrload: out std_logic;
        o_denable: out std_logic;
        o_dwrite:out std_logic;
        o_refclk_p: out std_logic;
        i_drs4_trigger: in std_logic;
        i_SROUT : in std_logic;
        i_PLLLCK : in std_logic;
        o_stop_cell: out std_logic_vector(9 downto 0);
        o_stop_cell_ready: out std_logic;
        o_srclk_adc: out std_logic;
     
        o_dwrite_for_trigger : out std_logic; 
		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end DRS4_firmware_v3_0;

architecture arch_imp of DRS4_firmware_v3_0 is

	-- component declaration
	component DRS4_firmware_v3_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		clk_drs4 : in std_logic;
        o_o_A3_0 : out std_logic_vector(3 downto 0);
        o_o_srclk: out std_logic;
        o_o_srin : out std_logic;
        o_o_rsrload: out std_logic;
        o_o_nReset: out std_logic;
        o_o_denable: out std_logic;
        o_o_dwrite:out std_logic;
        o_o_refclk_p: out std_logic;
        i_i_drs4_trigger: in std_logic;
        i_i_SROUT : in std_logic;
        i_i_PLLLCK : in std_logic;
        o_o_ROFS : out std_logic;
		o_stop_cell: out std_logic_vector(9 downto 0);
        o_stop_cell_ready: out std_logic;
        o_dwrite_for_trigger : out std_logic; 
        o_srclk_adc: out std_logic;
        
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
	end component DRS4_firmware_v3_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
DRS4_firmware_v2_0_S00_AXI_inst : DRS4_firmware_v3_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	   clk_drs4 => clk_drs4,
        o_o_A3_0 => o_A3_0,
        o_o_srclk => o_srclk,
        o_o_srin => o_srin,
        o_o_rsrload => o_rsrload,
        o_o_nReset => o_nReset,
        o_o_denable => o_denable,
        o_o_dwrite => o_dwrite,
        o_o_refclk_p => o_refclk_p,
        i_i_drs4_trigger => i_drs4_trigger,
        i_i_SROUT => i_SROUT,
        i_i_PLLLCK => i_PLLLCK,
        o_o_ROFS => o_ROFS,
	    o_stop_cell => o_stop_cell,
	    o_stop_cell_ready => o_stop_cell_ready,
      --o_srclk_test =>  o_srclk_test,
      o_dwrite_for_trigger => o_dwrite_for_trigger,
         o_srclk_adc => o_srclk_adc,

		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
