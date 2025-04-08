----------------------------------------------------------------------------------
-- Company: UTFSM
-- Engineer: Rimsky Rojas
-- 
-- Create Date: 05/29/2019 05:33:00 PM
-- Design Name: 
-- Module Name: ADC_ctrl - Behavioral
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
-- spi_write and read do nothing since this chip requieres to set a register to eneable readback and disables writing instead a bit on address
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_unsigned.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADC_ctrl is
 --   GENERIC( );
Port ( sys_clk      : in STD_LOGIC;
       sys_rst      : in STD_LOGIC;
-- Interface with module       
       write_reg    : in STD_LOGIC;
       adc_config   : in STD_LOGIC;
       read_reg     : in STD_LOGIC;
       wr_value     : in STD_LOGIC_VECTOR (15 downto 0);
       pointer_tbr  : in STD_LOGIC_VECTOR (7 downto 0);
       rd_value     : out STD_LOGIC_VECTOR (15 downto 0);
       ready        : out STD_LOGIC;
              
-- Hardware signals    
       MISO          : in  std_logic;        
       MOSI          : out std_logic;
       SCLK          : out std_logic;
       nCS           : out std_logic;
       ADC_nrst     : out std_logic;
-- debugging
       core_state   : out STD_LOGIC_VECTOR (1 downto 0);
       action_state : OUT    std_logic_vector (1 DOWNTO 0)  --for debug purpose

);
end ADC_ctrl;

architecture Behavioral of ADC_ctrl is

ATTRIBUTE X_INTERFACE_INFO : STRING;
ATTRIBUTE X_INTERFACE_INFO of sys_clk: SIGNAL is "xilinx.com:signal:clock:1.0 sys_clk CLK";
ATTRIBUTE X_INTERFACE_INFO of sys_rst: SIGNAL is "xilinx.com:signal:reset:1.0 sys_rst RST";

ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER of sys_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clk, ASSOCIATED_RESET sys_rst, FREQ_HZ 100000000";
ATTRIBUTE X_INTERFACE_PARAMETER of sys_rst: SIGNAL is "POLARITY ACTIVE_HIGH";

constant conf_rst     : std_logic_vector (23 downto 0)  := "00000000" & "0000000000000001";   --  last bit made software reset
constant conf_rd_en   : std_logic_vector (23 downto 0)  := "00000001" & "0000000000000001";   -- last bit in '1' enables readback

constant conf_interleave  : std_logic_vector (23 downto 0)  := "00000111" & "0000000000000000"; --  disables interleave (default)
constant conf_PDN         : std_logic_vector (23 downto 0)  := "00001111" & "0000010100000000"; --  partial powerdown mode, fast recovery (default leads to normal operation always)
constant conf_LFNS        : std_logic_vector (23 downto 0)  := "00010100" & "0000000011111111"; --  enables low frequency noise suppression mode (default is desabled)
constant conf_FRAME_PAT   : std_logic_vector (23 downto 0)  := "00011100" & "0100111111000000"; --  enables FRAME pattern of last 12 bits, default leads to normal operation

-- register 25. 26, 27 must be configured properly for testing of outputs using PRBS

-- register 29 to enable digital filter and channel averaging
-- register 2A, 2B gain control of channels
-- register 2C, 2D averaging control of channels
-- register 2E control of filter for channel 1
-- register 35 control of filter for channel 8
-- register 38 select data rate depending on selected filter
-- register 40 part of interleave control
-- register 42 lclk phase programmability, default is best.
-- register 45 enable sync pattern

-- register 46 to configure SDR, default is set to DDR
--constant conf_SDR         : std_logic_vector (23 downto 0)  := "01000110" & "1010000100000000";
-- register 50 to 55 mapping of channel to outputs, default is in order
-- register 5A to B9, custom coefficient registers
-- register BE, LVDS edge delay programmability
-- register F0 internal reference as default

-- state machine
type adc_action_ctrl_state_type is (adc_idle, adc_conf, adc_rst, adc_read_en, adc_read, adc_write);
type adc_spi_interface_state_type is (adc_spi_idle, adc_spi_read, adc_spi_write);
signal adc_action_ctrl_state    : adc_action_ctrl_state_type    := adc_idle;
signal adc_prev_state    : adc_action_ctrl_state_type    := adc_idle;
signal adc_spi_interface_state    : adc_spi_interface_state_type    := adc_spi_idle;

-- register
--signal start      :   std_logic;
signal payload_i  : std_logic_vector (15 downto 0);
signal reg_addrss : std_logic_vector (7 downto 0);
signal write_i    : std_logic;
signal read_i     : std_logic;
signal prev_start : std_logic_vector (1 downto 0);
signal reset      : std_logic;

-- interface with spi module
signal spi_free   : std_logic;
signal ready_i    : std_logic;
signal spi_start  : std_logic;
--signal spi_write  : std_logic;
--signal spi_read   : std_logic;
signal spi_data_i : std_logic_vector (15 downto 0);
signal spi_data_o : std_logic_vector (15 downto 0);
signal spi_address: std_logic_vector (7 downto 0);
signal spi_core_state : std_logic_vector (1 downto 0);
signal nCS_i      : std_logic_vector (0 downto 0);
signal spi_reset : std_logic;
begin

spi_reset <= (sys_rst or reset);
core_state <= spi_core_state;
ADC_nrst <= not reset;
stm_dac_action_ctrl: 
process(sys_clk, sys_rst) begin
  spi_start <= '0';
  ready_i <= '0';
  prev_start <= (others => '0');
  reset <= '0';
--  spi_read  <= '0';
--  spi_write <= '0';
  if (sys_rst = '1') then
    reset <= '1';
    adc_action_ctrl_state <= adc_idle;
  elsif  rising_edge( sys_clk ) then 
    prev_start <= prev_start(0) & spi_start;
    case adc_action_ctrl_state is
    ----------------
    when adc_idle =>
      action_state <= "00";
      adc_prev_state  <= adc_idle;
      if (spi_free = '1') then 
        if (adc_config = '1') then
          adc_action_ctrl_state <= adc_conf;
        elsif (write_reg = '1') then
          adc_action_ctrl_state <= adc_read;
--          spi_write   <=  '1';
--          spi_read    <=  '0';
          spi_start   <=  '1';
          reg_addrss  <=  pointer_tbr;
          spi_data_i   <=  wr_value;
        elsif (read_reg = '1') then
          adc_action_ctrl_state <= adc_read;
 --         spi_write   <=  '0';
 --         spi_read    <=  '1';
          spi_start   <=  '1';
          reg_addrss  <=  pointer_tbr;
      
        else 
          ready_i <= '1'; 
        end if;
      end if;
      
    when adc_rst =>
      action_state <= "01";
      reset <= '1';   -- we should implement send soft reset
      adc_action_ctrl_state <= adc_idle;
    when adc_conf =>
      action_state <= "10";
      adc_prev_state  <= adc_conf;
      adc_action_ctrl_state <= adc_idle;
    when adc_read =>
      action_state <= "11";
      if ( (prev_start & spi_start) = "00" and spi_free = '1') then
        adc_action_ctrl_state <= adc_prev_state;
        rd_value <= spi_data_o;
      end if;
    when others =>
      adc_action_ctrl_state <= adc_idle;
    end case;
  end if;

end process;

spi_core: entity work.SPI_core_v2(Behavioral) 

    Port Map( 
        sys_clk       => sys_clk,
        reset         => spi_reset,
-- Interface with module
        start         => spi_start,
 --       read          => spi_read,
 --       write         => spi_write,
        device_line   => "1",
        address       => spi_address,
        i_data_to     => spi_data_i,
        o_data_from   => spi_data_o,
        free          => spi_free,
--        ready         => open,
-- Hardware signals    
        MISO          => MISO,        
        MOSI          => MOSI,
        SCLK          => SCLK,
        nCS           => nCS_i,
        
-- debugging
        core_state    => spi_core_state
    );

--spi_start <= (write_reg or read_reg) ;
--rd_value    <= payload_i;
--spi_data_i  <= payload_i;
ready       <= ready_i;
spi_address <= reg_addrss;
nCS <= nCS_i(0);

end Behavioral;
