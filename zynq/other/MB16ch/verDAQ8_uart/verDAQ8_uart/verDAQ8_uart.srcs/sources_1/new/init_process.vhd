----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.05.2022 23:18:11
-- Design Name: 
-- Module Name: init_process - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
--read_shift_reg_init: in std_logic;
--  conf_register_init: in std_logic;
--  start_ROI: in std_logic;
--  axi_reset: in std_logic;
--  full_readout_start: in std_logic;
--refclk_counter: in std_logic_vector(6 downto 0);  
--  cell_counts: in std_logic_vector(11 downto 0);
--  i_config_states : in std_logic_vector(2 downto 0);
--  i_trigger_delay_count : in std_logic_vector (7 downto 0);
entity init_process is
  Port (
  i_clk: in std_logic;
  i_clk_drs4: in std_logic;
  i_rst: in std_logic;
  o_rst_fifo : out std_logic;
  o_rst_gral : out std_logic;
  refclk_counter : out std_logic_vector ( 6 downto 0);
  read_shift_reg_init: out std_logic;
  conf_register_init: out std_logic;
  start_ROI: out std_logic;
  drs4_rst: out std_logic;
  cell_counts: out std_logic_vector(11 downto 0);
  config_states : out std_logic_vector(2 downto 0);
  trigger_delay_count : out std_logic_vector (7 downto 0);
  nSHDN : out std_logic;
  dac_ena_read : out std_logic;
  dac_update : out std_logic;
  dac_ca_byte : out std_logic_vector (7 downto 0);
  dac_data_byte : out std_logic_vector (11 downto 0);
  dac_active : in std_logic;
  dac_addr : out std_logic
   );
end init_process;

architecture Behavioral of init_process is


signal counter_rst,count_drs4,count_dac: integer range 0 to 2047;
signal f_rst_gral, f_rst_fifo, f_DRS4_ready,f_dac_routine_done,f_rst_routine_done: std_logic;
type DRS4_init_states is (idle, nReset, SR_init,Conf_reg_init,ROI,Full_read);
type DAC_init_states is (idle, init_dac0,init_dac1, setup_dac0,setup_dac1, dac_done);
signal DRS4_states : DRS4_init_states := idle;
signal DAC_states : DAC_init_states := idle;
signal dac_active_1 : std_logic;
type dac_ch_array is array (0 to 7) of std_logic_vector(11 downto 0);
signal DAC0_chx : dac_ch_array;
signal DAC1_chx : dac_ch_array;
signal DAC_ch_sel : integer range 0 to 7 ; --para contar los canales

--DAC CA

--	command_access_b = 0x80; //8 bits
--	data_byte = 0x001; // 12 bits
--	//DAC 0
--	write_dac(dac_baseaddr,command_access_b,data_byte,0);
--	usleep(1000);
--	while(is_active(dac_baseaddr)==1); // Espero que modulo DAC termine rutina de envío de datos

--	//DAC 1
--	write_dac(dac_baseaddr,command_access_b,data_byte,1);
	
----

--DRS4 flags
--	u32 ctrl_signal;
--u32 mask = 0x00000001;
--ctrl_signal = nReset & mask;
--ctrl_signal = ctrl_signal | ((SR_init  << 1) & (mask << 1));
--ctrl_signal = ctrl_signal | ((Conf_reg_init << 2) & (mask << 2));
--ctrl_signal = ctrl_signal | ((ROI  <<  3) & (mask << 3));
--ctrl_signal = ctrl_signal | ((Full_read  << 4) & (mask << 4));
--ctrl_signal = ctrl_signal | ((axi_rst  << 5) & (mask << 5));
--ctrl_signal = ctrl_signal | ((ROFS  << 6) & (mask << 6));
--

begin
--u32 dac_values[8] = \
--{ 1351,	\
-- 0,	\
-- 1064,	\
-- 0,	\
-- 1064,		\
-- 1024,	\
-- 0, \
-- 573};
---
DAC0_chx (0) <= X"547";
DAC0_chx (1) <= X"0";
DAC0_chx (2) <= X"428";
DAC0_chx (3) <= X"0";
DAC0_chx (4) <= X"428";
DAC0_chx (5) <= X"400";
DAC0_chx (6) <= X"0";
DAC0_chx (7) <= X"23d";

DAC1_chx (0) <= X"3e8";
DAC1_chx (1) <= X"3e8";
DAC1_chx (2) <= X"3e8";
DAC1_chx (3) <= X"3e8";
DAC1_chx (4) <= X"3e8";
DAC1_chx (5) <= X"3e8";
DAC1_chx (6) <= X"3e8";
DAC1_chx (7) <= X"3e8";

rst_proc:process(i_clk,i_rst)
begin
if(i_rst= '1') then
    o_rst_fifo <= '1';
    o_rst_gral <= '1';
    counter_rst <= 0;
    f_rst_routine_done <= '0';
    f_rst_gral <= '0';
    f_rst_fifo <= '0';
    nSHDN <= '0';
elsif(rising_edge(i_clk))then
    o_rst_fifo <= '0';
    o_rst_gral <= '0'; 
    if(f_rst_gral = '1' and f_rst_fifo = '1') then
        f_rst_routine_done <= '1';
        nSHDN <= '1';
    else
        counter_rst <= counter_rst + 1;
    end if;
        if(counter_rst >= 200 and counter_rst <= 220) then
            o_rst_gral <= '1';
        elsif(counter_rst >= 221) then
            f_rst_gral <= '1';
            o_rst_gral <= '0';
        end if;

        if(counter_rst >= 300 and counter_rst <= 320) then
            o_rst_fifo <= '1';
        elsif(counter_rst >= 321) then
            
            o_rst_fifo <= '0';
        elsif(counter_rst >= 400) then    
            f_rst_fifo <= '1';
        end if;

end if;
end process;
--Entradas de inicializacion para el DRS4

--read_shift_reg_init: in std_logic;
--  conf_register_init: in std_logic;
--  start_ROI: in std_logic;
--  axi_reset: in std_logic;
--  full_readout_start: in std_logic;
--refclk_counter: in std_logic_vector(6 downto 0);  
--  cell_counts: in std_logic_vector(11 downto 0);
--  i_config_states : in std_logic_vector(2 downto 0);
--  i_trigger_delay_count : in std_logic_vector (7 downto 0);

refclk_counter <= "0011000"; -- 24
cell_counts <=  "001111111111";   --1023
config_states <= "111"; --7
trigger_delay_count <= "1111110";--126
 --(idle, nReset, SR_init,Conf_reg_init,ROI,Full_read);
DRS4_proc: process(i_clk_drs4,i_rst)
begin
if(i_rst = '1') then
    DRS4_states <= idle;
    f_DRS4_ready <= '0';
elsif(rising_edge(i_clk_drs4))then
    drs4_rst <= '0';
    read_shift_reg_init <= '0';
    count_drs4 <= 0;
    
    if(f_rst_routine_done = '1' and f_dac_routine_done = '1') then
        count_drs4 <= count_drs4 + 1;
      
        case DRS4_states is
        when idle =>
            f_DRS4_ready <= '0';
            if(count_drs4 = 10) then
                DRS4_states <= nReset;
            end if;
        when nReset =>
            drs4_rst <= '1';
            if(count_drs4= 15) then
                
                DRS4_states <= SR_init;
                count_drs4 <= 0;
                read_shift_reg_init <= '1';
            end if;
        when SR_init =>
        -- este estado tarda 1024 ciclos del reloj del DRS4 el cual está a 50 MHz.       
            if(count_drs4= 2045) then
                DRS4_states <= Conf_reg_init;
                conf_register_init <= '1';
            end if;
        when Conf_reg_init =>
            if(count_drs4 = 66) then --33 should be ready
                DRS4_states <= ROI;
                start_ROI <= '1';
             end if;
        when ROI =>
            start_ROI <= '1';
            f_DRS4_ready <= '1';
        when others =>
            DRS4_states <= idle;
        end case;
    end if;

end if;
end process;

--        ena_read <= slv_reg0(0);
--        update_dac <= slv_reg0(1);
--        ADDR0_se <= slv_reg0(2);
--            ---slv_reg1
--        slv_reg1(0) <= Fail_ack_axi;
--        slv_reg1(1) <= active_o ;
--            ---slv_reg2
--        command_access_byte_i <= slv_reg2(7 downto 0);
--        data_byte_i <= slv_reg2(19 downto 8);
--      --slv_reg1(12 downto 1) <= read_byte_o,-- out std_logic_vector(7 downto 0); -- for read data from dac7868
    

--      Fail_ack_axi <= Fail_ack;

dac_ena_read <= '1';

DAC_proc : process(i_clk,i_rst)
begin
if(i_rst = '1') then
    f_dac_routine_done <= '0';
    DAC_states <= idle;
    DAC_ch_sel <= 0;
    count_dac <= 0;
elsif(rising_edge(i_clk)) then
    dac_update <= '0';
    dac_active_1 <= dac_active;
    case DAC_states is
        when idle =>
            count_dac <= 0;
            DAC_ch_sel <= 0;
            --command_access_b = 0x80; //8 bits
            --data_byte = 0x001; // 12 bits
            f_dac_routine_done <= '0';
            if(f_rst_routine_done = '1') then
                DAC_states <= init_dac0;
                dac_update <= '1';
            end if;
        when init_dac0 =>
            dac_ca_byte <= X"80";
            dac_data_byte <= X"001"; 
            dac_addr <= '0';    
            if(dac_active = '0' and dac_active_1 = '1') then --falling edge
                DAC_states <= init_dac1;      
                dac_update <= '1';
            end if;            
        when init_dac1 =>
            dac_ca_byte <= X"80";
            dac_data_byte <= X"001";
            dac_addr <= '1';   
            if(dac_active = '0' and dac_active_1 = '1') then --falling edge
               DAC_states <= setup_dac0;
               dac_ca_byte <= X"3" & std_logic_vector(to_unsigned(DAC_ch_sel, 4)); 
               dac_update <= '1';
               dac_data_byte <= DAC0_chx(DAC_ch_sel);
               DAC_ch_sel <= DAC_ch_sel+1;
            end if;    
         when setup_dac0 =>
            if(DAC_ch_sel < 8 ) then
                dac_addr <= '0';
                if(dac_active = '0' and dac_active_1 = '1') then
                    dac_ca_byte <= X"3" & std_logic_vector(to_unsigned(DAC_ch_sel, 4)); 
                    dac_update <= '1';
                    dac_data_byte <= DAC0_chx(DAC_ch_sel);
                    DAC_ch_sel <= DAC_ch_sel+1;
                else
                    dac_update <= '0';
                end if;
            else
                dac_ca_byte <= X"3" & std_logic_vector(to_unsigned(0, 4)); 
                dac_update <= '1';
                dac_addr <= '1';  
                dac_data_byte <= DAC1_chx(0);
                DAC_ch_sel <= 1;--siguiente ciclo sera desde el canal 1
                dac_states <= setup_dac1;
            end if;    
        when setup_dac1 =>
            if(DAC_ch_sel < 8 ) then
                dac_addr <= '1';
                if(dac_active = '0' and dac_active_1 = '1') then
                    dac_ca_byte <= X"3" & std_logic_vector(to_unsigned(DAC_ch_sel, 4)); 
                    dac_update <= '1';
                    dac_data_byte <= DAC1_chx(DAC_ch_sel);
                    DAC_ch_sel <= DAC_ch_sel+1;
                else
                    dac_update <= '0';
                end if;
            else 
                dac_states <= dac_done;
            end if;
        when dac_done =>
            if(count_dac = 1023) then
                f_dac_routine_done <= '1';
            else
                count_dac <= count_dac + 1;
            end if;
            
             
        when others =>
    end case;
end if;
end process;





end Behavioral;
