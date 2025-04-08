----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.03.2022 22:42:59
-- Design Name: 
-- Module Name: drs4_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity drs4_tb is

end drs4_tb;

architecture Behavioral of drs4_tb is
  signal drs_trg_delay           : std_logic_vector(16 downto 0);
  signal drs_trig_ff :std_logic;
  signal drs_ctl_delay_sel : std_logic_vector(7 downto 0);
  constant clk_period : time := 40.000ns;
  signal clk_drs4,shift_reg_init,conf_reg_init,start_ROI,axi_rst,start_full_readout : std_logic;
  signal o_o_A3_0 : std_logic_vector(3 downto 0);
  signal o_o_srclk,o_o_srin,o_o_rsrload,o_o_denable,o_o_dwrite,o_o_refclk_p:std_logic;
  signal refclk_counter_axi:std_logic_vector( 6 downto 0);
  signal cell_counts_axi : std_logic_vector(11 downto 0);
  signal drs4_states_vector_axi : std_logic_vector(4 downto 0);
  signal config_states_axi : std_logic_vector(2 downto 0);
  signal trigger_delay_count_axi : std_logic_vector(7 downto 0);
  signal i_i_SROUT : std_logic;
  signal o_dwrite_for_trigger,i_i_drs4_trigger,start_init_adq: std_logic;
    
    
component drs4_firmware is
Port ( 
  clk : in std_logic;
  read_shift_reg_init: in std_logic;
  conf_register_init: in std_logic;
  start_ROI: in std_logic;
  start_init_adq : in std_logic;
  axi_reset: in std_logic;
  full_readout_start: in std_logic;
  o_A3_0 : out std_logic_vector ( 3 downto 0);
  o_srclk: out std_logic;
  o_srin : out std_logic;
  o_rsrload: out std_logic;
  o_nReset: out std_logic;
  o_denable: out std_logic;
  o_dwrite : out std_logic;
  i_trigger: in std_logic;
  o_refclk_p: out std_logic;
  refclk_counter: in std_logic_vector(6 downto 0);
  cell_counts: in std_logic_vector(11 downto 0);
  o_drs4_states_vector : out std_logic_vector(4 downto 0);
  i_config_states : in std_logic_vector(2 downto 0);
  i_trigger_delay_count : in std_logic_vector (7 downto 0);
  i_SROUT : in std_logic;
  i_PLLLCK: in std_logic;
  o_stop_cell: out std_logic_vector(9 downto 0);
  o_stop_cell_ready: out std_logic;
  o_srclk_test: out std_logic;
  o_dwrite_for_trigger : out std_logic
  );
end component;

 
 
begin
--Simulacion
CLK_process:process
begin
    clk_drs4 <= '1';
    wait for clk_period/2;
    clk_drs4 <= '0';
    wait for clk_period/2;
end process;

init_trig: process
begin
drs_ctl_delay_sel<=X"05";
shift_reg_init <= '0';
i_i_drs4_trigger <= '0';
conf_reg_init <= '0';
start_ROI <= '0';
refclk_counter_axi <= b"0001001";
cell_counts_axi <= X"800";
axi_rst <= '1';
config_states_axi <= B"111";
trigger_delay_count_axi <= X"1A";
wait for 40 ns;
axi_rst <= '0';
wait for 80 ns;
shift_reg_init <= '1'; --Inicio DRS4
wait for 80 ns;
shift_reg_init <= '0'; --Inicio DRS4
wait for 90 us;
conf_reg_init <= '1';
wait for 80 ns;
conf_reg_init <= '0';
wait for 5 us;
start_init_adq <= '1';
wait for 50 ns;
start_init_adq <= '0';
wait for 2 us;
start_ROI <= '1';
wait for 80 ns;
start_ROI <= '1';
--wait for 80 ns;
--i_i_drs4_trigger <= '1';
--wait for 80 ns;
--i_i_drs4_trigger <= '0';

--wait for 300 us;
--i_i_drs4_trigger <= '1';
--wait for 80 ns;
--i_i_drs4_trigger <= '0';
--wait for 100 us;

wait;
end process;

DRS4_firmware_comp: drs4_firmware
port map(
  clk => clk_drs4,
  read_shift_reg_init => shift_reg_init,
  conf_register_init => conf_reg_init,
  start_ROI => start_ROI,
  start_init_adq => start_init_adq,
  axi_reset => axi_rst,
  full_readout_start => start_full_readout,
  o_A3_0 => o_o_A3_0,
  o_srclk => o_o_srclk,
  o_srin =>o_o_srin,
  o_rsrload => o_o_rsrload,
  --o_nReset => ,
  o_denable => o_o_denable,
  o_dwrite => o_o_dwrite,
  i_trigger => i_i_drs4_trigger,
  o_refclk_p => o_o_refclk_p,
  refclk_counter => refclk_counter_axi,
  cell_counts => cell_counts_axi,
  o_drs4_states_vector => drs4_states_vector_axi,
  i_config_states => config_states_axi,
  i_trigger_delay_count => trigger_delay_count_axi,
  i_SROUT => i_i_SROUT,
  i_PLLLCK => '0' ,
  o_stop_cell=> open,
  o_stop_cell_ready => open,
  o_srclk_test =>  open,
  o_dwrite_for_trigger => o_dwrite_for_trigger
);





end Behavioral;