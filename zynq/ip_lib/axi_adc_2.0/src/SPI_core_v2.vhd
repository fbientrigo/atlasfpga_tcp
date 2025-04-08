----------------------------------------------------------------------------------
-- Company: UTFSM
-- Engineer: Rimsky Rojas
-- 
-- Create Date: 05/28/2019 09:53:52 PM
-- Design Name: 
-- Module Name: SPI_core - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: Vivado Web pack 2017.1
-- Description: 
-- can read 8 or 16 bits from given address
-- can write 8 or 16 bits to given address (must set first readout_en bit)
-- assumes setup and hold time of half sclk 
-- assumes user will reset device
-- requires device_line to be on during all transaction
-- looks like for my current hardware, 5MHz  is limit, because of delay on sdout arrival, it could be compensated to
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity SPI_core_v2 is
    Generic (
        CLK_frequency : natural := 100000000;
        BAUD          : natural := 5000000;       --- looks like for my current hardware, this is limit, because of sdout arrival, it could be compensated
        N_slaves      : natural := 1;
        NBytes        : natural := 2
    );
    
    Port ( 
        sys_clk       : in  std_logic;
        reset         : in  std_logic;
-- Interface with module
        start         : in  std_logic;
--        stop          : in  std_logic;
--        read          : in  std_logic;
--        write         : in  std_logic;
        device_line   : in  std_logic_vector (N_slaves - 1 downto 0);
        address       : in  std_logic_vector (7 downto 0);
        i_data_to     : in  std_logic_vector ((NBytes * 8) - 1 downto 0);
        o_data_from   : out std_logic_vector ((NBytes * 8) - 1 downto 0);
        free          : out std_logic;
--        ready         : out std_logic;
-- Hardware signals    
        MISO          : in  std_logic;        
        MOSI          : out std_logic;
        SCLK          : out std_logic;
        nCS           : out std_logic_vector (N_slaves - 1 downto 0);
        
-- debugging
        core_state    : out std_logic_vector (1 downto 0)
    );
end SPI_core_v2;

architecture Behavioral of SPI_core_v2 is

  signal sclk_i     : std_logic;

ATTRIBUTE X_INTERFACE_INFO : STRING;
ATTRIBUTE X_INTERFACE_INFO of sys_clk: SIGNAL is "xilinx.com:signal:clock:1.0 sys_clk CLK";
ATTRIBUTE X_INTERFACE_INFO of reset: SIGNAL is "xilinx.com:signal:reset:1.0 reset RST";


ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER of sys_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000";
ATTRIBUTE X_INTERFACE_PARAMETER of reset: SIGNAL is "POLARITY ACTIVE_HIGH";
--ATTRIBUTE X_INTERFACE_PARAMETER of sclk_i: SIGNAL is "ASSOCIATED_BUSIF SCLK, ASSOCIATED_RESET reset, FREQ_HZ 20000000";

  constant  FULL_BIT : natural := CLK_frequency / BAUD;
  constant  HALF_BIT : natural := FULL_BIT / 2;
  
  type master_core_state is (st_idle, st_start, st_write_add, st_write_byte, st_read_byte, st_stop);
  
  signal sm_master : master_core_state;
  
  signal free_i     : std_logic;
  signal nCS_i      : std_logic;
  signal MOSI_i     : std_logic;
  signal sclk_i_prev     : std_logic;
  signal incoming_i : std_logic_vector ((NBytes * 8) - 1 downto 0);
  signal data_i     : std_logic_vector (((NBytes + 1) * 8) - 1 downto 0);

  signal scl_cntr   : natural;
  signal bit_cntr   : natural range 0 to 25;
--  signal byte_cntr  : natural;
  signal operation  : std_logic;
begin

free <= free_i;
SCLK <= sclk_i;

process (nCS_i,device_line) begin
  for i in 0 to (N_slaves - 1) loop
    nCS(i) <= device_line(i) and nCS_i;
  end loop;
end process;

sclk_gen:
process (sys_clk, nCS_i) begin
if (nCS_i = '1') then
  scl_cntr <= 0;
  sclk_i  <= '1';
  sclk_i_prev <= '1';
elsif rising_edge(sys_clk) then
    if (scl_cntr < HALF_BIT) then
      scl_cntr <= scl_cntr + 1;
      sclk_i  <= '0';
    elsif  (scl_cntr < FULL_BIT) then
      scl_cntr <= scl_cntr + 1;
      sclk_i  <= '1';
    else
      scl_cntr <= 0;
    end if;     
    sclk_i_prev <= sclk_i;
end if;
end process;

--  BUFR_inst : BUFR
--   generic map (
--      BUFR_DIVIDE => "BYPASS",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
--      SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
--   )
--   port map (
--      O => sclk_i,     -- 1-bit output: Clock output port
--      CE => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
--      CLR => '0', -- 1-bit input: Active high, asynchronous clear (Divided modes only)
--      I => sclk_reg      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
--   );

mosi_gen_mux_aproach:
process (sys_clk, nCS_i,sclk_i, sclk_i_prev) begin
  if (nCS_i = '1') then
--    bit_cntr <= 0;
  elsif rising_edge(sys_clk) then
--    bit_cntr <= bit_cntr + 1;
    if (sclk_i = '0' and sclk_i_prev = '1') then
        if (bit_cntr < 24) then
          MOSI <= data_i (((NBytes + 1) * 8) - 1 - bit_cntr);
    
        end if;
    end if;
  end if;
end process;

miso_catch_mux_aproach:
process (sys_clk, nCS_i,sclk_i, sclk_i_prev) begin
  if (nCS_i = '1') then
    incoming_i <= (others => '0');
    bit_cntr <= 0;
  elsif rising_edge(sys_clk) then
  if (sclk_i = '1' and sclk_i_prev = '0') then

    bit_cntr <= bit_cntr + 1;
    if (bit_cntr > 7 and bit_cntr < 24) then
      incoming_i (((NBytes + 1) * 8) - 1 - bit_cntr)<= MISO;
    elsif (bit_cntr > 24) then
        bit_cntr <= 0; -- avoid extra logic, overflow condition, error
    end if;
  end if;
  end if;
end process;

sm_master_p: 
process (sys_clk, reset) begin
  if (reset = '1') then
    sm_master <= st_idle;
    free_i    <= '0';
  elsif rising_edge(sys_clk) then
    case sm_master is
    -----------------
    when st_idle =>
      core_state <= "00";
      free_i  <= '1';
      nCS_i   <= '1';
--      operation <= '0';
      if (start = '1' and free_i = '1') then
        sm_master <= st_start;
        free_i      <= '0';
        data_i      <= (address & i_data_to);
      end if;
    when st_start =>
      core_state <= "01";
      nCS_i   <= '0';
--      if (read = '1') then
----        operation <= '0';
--      elsif (write = '1') then
----        operation <= '1';
--      else
        sm_master <= st_write_add;
--      end if;
    when st_write_add =>
      core_state <= "10";
      if (bit_cntr < (24 + 1)) then -- 1 extra clk for safety and ensure slave asserted last bit
          sm_master <= st_write_add;
      else
          sm_master <= st_stop;
      end if; 
    when st_stop =>
      core_state <= "11";
      nCS_i   <= '1';
      sm_master <= st_idle;
      o_data_from <= incoming_i;
    when others =>
      sm_master <= st_idle;
    end case;
  end if;
end process;

end Behavioral;
