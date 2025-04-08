library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo8b_2_axis_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
    i_fifo_din  : in std_logic_vector (7 downto 0);
    o_fifo_full : out std_logic;
    i_fifo_we   : in std_logic;
    i_sending   : in std_logic;
    o_fifo_data_count: out std_logic_vector(3 downto 0);
    i_force_send : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic
	);
end fifo8b_2_axis_v1_0;

architecture arch_imp of fifo8b_2_axis_v1_0 is

	-- component declaration
	component fifo8b_2_axis_v1_0_M00_AXIS is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		i_fifo_din  : in std_logic_vector (7 downto 0);
    o_fifo_full : out std_logic;
    i_fifo_we   : in std_logic;
    i_sending   : in std_logic;
    o_fifo_data_count : out std_logic_vector (3 downto 0 );
    i_force_send : in std_logic;
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component fifo8b_2_axis_v1_0_M00_AXIS;

begin

-- Instantiation of Axi Bus Interface M00_AXIS
fifo8b_2_axis_v1_0_M00_AXIS_inst : fifo8b_2_axis_v1_0_M00_AXIS
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_M00_AXIS_TDATA_WIDTH
	)
	port map (
		i_fifo_din  => i_fifo_din,
    o_fifo_full => o_fifo_full,
    i_fifo_we   => i_fifo_we,
    i_sending   => i_sending,
    o_fifo_data_count => o_fifo_data_count,
    i_force_send => i_force_send,
		M_AXIS_ACLK	=> m00_axis_aclk,
		M_AXIS_ARESETN	=> m00_axis_aresetn,
		M_AXIS_TVALID	=> m00_axis_tvalid,
		M_AXIS_TDATA	=> m00_axis_tdata,
		M_AXIS_TSTRB	=> m00_axis_tstrb,
		M_AXIS_TLAST	=> m00_axis_tlast,
		M_AXIS_TREADY	=> m00_axis_tready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
