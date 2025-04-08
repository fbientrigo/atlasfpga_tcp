----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 14:31:30
-- Design Name: 
-- Module Name: fifo2Uart - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo2Uart is
generic(
baud_rate : integer := 115200;
freq_clk : integer := 100000000
);
  Port ( 
  clk : in std_logic;
  rst : in std_logic;
  i_f_wr_en : in std_logic;
  o_fifo_full: out std_logic;
  i_ascii: in std_logic_vector (7 downto 0);
  o_UART_Tx : out std_logic;
  i_UART_Rx : in std_logic;
  end_one_byte : out std_logic;
  o_serial_out : out std_logic_vector (7 downto 0);
  o_fifo_wr_en : out std_logic;
  o_fifo_rd_en : out std_logic;
  o_rst_fifo : out std_logic;
  o_fifo_din : out std_logic_vector ( 7 downto 0);
  i_fifo_dout : in std_logic_vector ( 7 downto 0);
  i_fifo_empty : in std_logic;
  i_fifo_full : in std_logic
  
  );
end fifo2Uart;

architecture Behavioral of fifo2Uart is

  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO of i_fifo_dout: SIGNAL is "xilinx.com:interface:fifo_read:1.0 F_read RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO of o_fifo_rd_en: SIGNAL is "xilinx.com:interface:fifo_read:1.0 F_read RD_EN";
  ATTRIBUTE X_INTERFACE_INFO of i_fifo_empty: SIGNAL is "xilinx.com:interface:fifo_read:1.0 F_read EMPTY";
  
  ATTRIBUTE X_INTERFACE_INFO of o_fifo_din: SIGNAL is "xilinx.com:interface:fifo_write:1.0 F_write WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO of o_fifo_wr_en: SIGNAL is "xilinx.com:interface:fifo_write:1.0 F_write WR_EN";
  ATTRIBUTE X_INTERFACE_INFO of i_fifo_full: SIGNAL is "xilinx.com:interface:fifo_write:1.0 F_write FULL";

component UART_RX is
  generic (
    Baud_rate : integer := 115200;
  clk_freq : integer := 100000000    );
  port (
    i_Clk       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_RX_DV     : out std_logic;
    o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end component UART_RX;


component UART_TX is
  generic (
    --g_CLKS_PER_BIT : integer := 115     -- Needs to be set correctly
    Baud_rate : integer := 115200;
    clk_freq : integer := 100000000
    );
  port (
    i_Clk       : in  std_logic;
    i_TX_DV     : in  std_logic;
    i_TX_Byte   : in  std_logic_vector(7 downto 0);
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic
    );
end component UART_TX;

signal fifo_out : std_logic_vector (7 downto 0);
signal f_wr_en,f_rd_en,f_empty,f_full: std_logic;
signal U_tx_dv,U_rx_dv,U_tx_active,U_tx_done : std_logic;

type Tx_sm is (idle, read_one,active_tx, sending,delay_next_state, done_byte, done_event);
signal States_tx : Tx_sm := idle;

signal counter_delay_tx : integer range 0 to 63 := 0;
constant delay_limit : integer := 50;
begin

 o_fifo_wr_en <= (not i_fifo_full) and i_f_wr_en;
 o_fifo_full <= i_fifo_full;
 uart_tx_inst : UART_TX
 generic map
 (
    Baud_rate => baud_rate,
    clk_freq => freq_clk
 )
 Port map(
 i_Clk => clk,
 i_TX_Byte(7 downto 0) => i_fifo_dout(7 downto 0),
 i_TX_DV => U_tx_dv,
 o_TX_Active => U_tx_active,
 o_TX_Done => U_tx_done,
 o_TX_Serial => o_UART_Tx
 
 );
 
 
UART_RX_inst: UART_RX
    generic map
    (
     Baud_rate => baud_rate,
     clk_freq => freq_clk
    )
      port map (
       i_Clk => clk,
       i_RX_Serial => i_UART_Rx,
       o_RX_Byte(7 downto 0) => o_serial_out(7 downto 0),
       o_RX_DV => U_rx_dv
     );
    
  --read_one, sending, done_byte, done_event);
  
  
--    ATTRIBUTE X_INTERFACE_INFO of i_fifo_dout: SIGNAL is "xilinx.com:interface:fifo_read:1.0 F_read RD_DATA";
--  ATTRIBUTE X_INTERFACE_INFO of o_fifo_rd_en: SIGNAL is "xilinx.com:interface:fifo_read:1.0 F_read RD_EN";
--  ATTRIBUTE X_INTERFACE_INFO of i_fifo_empty: SIGNAL is "xilinx.com:interface:fifo_read:1.0 F_read EMPTY";
  
--  ATTRIBUTE X_INTERFACE_INFO of o_fifo_din: SIGNAL is "xilinx.com:interface:fifo_write:1.0 F_write WR_DATA";
--  ATTRIBUTE X_INTERFACE_INFO of o_fifo_wr_en: SIGNAL is "xilinx.com:interface:fifo_write:1.0 F_write WR_EN";
--  ATTRIBUTE X_INTERFACE_INFO of i_fifo_full: SIGNAL is "xilinx.com:interface:fifo_write:1.0 F_write FULL";

o_fifo_din <= i_ascii;

DV_tx_process: process(clk,rst)
begin
if(rst = '1') then
    States_tx <= idle;
    o_rst_fifo <= '1';
elsif(rising_edge(clk)) then
    case States_tx is
        when idle =>
            o_rst_fifo <= '0';
            end_one_byte <= '0';
            if(i_fifo_empty = '0' and U_tx_active = '0' ) then
                States_tx <= read_one;
                o_fifo_rd_en <= '1';
            else
                States_tx <= idle;
            end if;
        when read_one =>
            end_one_byte <= '0';
            counter_delay_tx <= 0;
            o_fifo_rd_en <= '0';
            U_tx_dv <= '1';
            States_tx <= active_tx;
        when active_tx =>
            U_tx_dv <= '1';
            if(U_tx_active = '1') then
                States_tx <= sending;
            end if;
        when sending =>
            o_fifo_rd_en <= '0';
            U_tx_dv <= '0';
            if(U_tx_active <= '0') then
               States_tx <= delay_next_state;
            end if;

        when delay_next_state =>

            if(counter_delay_tx = delay_limit) then               
                States_tx <= done_byte;
                counter_delay_tx <= 0;
            else
                counter_delay_tx <= counter_delay_tx + 1;
            end if;
        when done_byte =>
            end_one_byte <= '1';
             States_tx <= idle;
        when done_event =>
        when others =>
            States_tx <= idle;
    end case;
        
end if;

end process;
  
  
end Behavioral;
