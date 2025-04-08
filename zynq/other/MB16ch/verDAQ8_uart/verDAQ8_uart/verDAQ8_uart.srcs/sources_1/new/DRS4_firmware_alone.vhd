----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2019 16:28:06
-- Design Name: 
-- Module Name: DRS4_full_R - Behavioral
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
USE ieee.std_logic_unsigned.all;

library UNISIM;
use UNISIM.VComponents.all;

entity drs4_firmware is
  Port ( clk : in std_logic;
  --clk100M: in std_logic;
  read_shift_reg_init: in std_logic;
  conf_register_init: in std_logic;
  start_ROI: in std_logic;
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
  o_dwrite_for_trigger: out std_logic
   );
end drs4_firmware;

architecture Behavioral of drs4_firmware is

signal counter_ref_clk : integer; 
signal ref_clk_buf : std_logic:= '0';
signal denable_o : std_logic;
signal srclk_o : std_logic;
signal srin_o : std_logic;
signal rsrload_o : std_logic;
signal dwrite_o : std_logic;
signal init_seq_finish_o : std_logic;
signal A3_0_o : std_logic_vector (3 downto 0);
signal counter_init : integer; --Counter general del proceso de inicializacion
signal counter_block_mem_init : integer;
signal count_transition : integer;
signal count_delay : integer;
signal enable_init_b1: std_logic;
signal enable_init_b2: std_logic;
signal enable_init_r : std_logic;
TYPE type_init_states IS (idle, RSR_init,    init,   start_conf, finish_init,
init_adq,   wait_trigger,   RSR_LOAD_state, delay_trigger,  adq_p2, 
adq_sampler_trans,  start_full_readout, FR_srin,    FR_wait_trigger,    FR_trigger_delay,
 FR_adquisition,  FR_transition2 ); 
signal trigger_1: std_logic;
signal trigger_2: std_logic;
signal trigger_pulse:std_logic;
signal trigger_pulse_1 : std_logic;
signal drs4_states : type_init_states;
signal srclk_test_o : std_logic;
signal drs4_states_vector : std_logic_vector(4 downto 0);
subtype mini_count_done IS INTEGER RANGE 0 to 16;
subtype type_sr_count is integer range 0 to 1024;
subtype mini_count16 IS INTEGER RANGE 0 to 16;
subtype states_enum IS integer range 0 to 31;
signal states_test : states_enum;
signal load_srin_1 : std_logic;
signal load_srin_2 : std_logic;
signal RSR_init_start: std_logic;
signal start_conf_1,start_conf_2,CONF_REG_start: std_logic;

signal drs_sr_count: type_sr_count;
signal count_done : mini_count_done;
signal count_refclk : std_logic_vector(6 downto 0);
signal refclk_p_o: std_logic;
signal srclk_final_count: type_sr_count;
signal trigger_max_count : type_sr_count;
signal trigger_count : type_sr_count;
signal trigger_process_count : mini_count_done;
signal trigger_states : std_logic;
signal dwrite_fast : std_logic;
signal SROUT_vector: std_logic_vector(0 to 9);
signal SROUT_count : mini_count16; 

---trigger delay fix

signal trig_delay: std_logic_vector(0 to 2047);
signal drs4_trigs : std_logic;
signal trigger_reset: std_logic;
signal drs4_trigger : std_logic;
signal dwrite_set : std_logic;

attribute dont_touch : string;
attribute dont_touch of trig_delay : signal is "true";

--component LUT1
--generic(INIT:std_logic_vector(1 downto 0 ):= "10");
--port (O : out std_logic;
--      I0 : in std_logic);
--end component;   

begin

o_srin <= srin_o;
o_rsrload <= rsrload_o;
o_denable <= denable_o;
o_dwrite <= dwrite_o ;
--o_dwrite_for_trigger <= dwrite_o;
o_srclk <= srclk_o;
o_srclk_test <= srclk_test_o;
--o_init_seq_finish <= init_seq_finish_o;
o_A3_0 <= A3_0_o;
o_refclk_p <= refclk_p_o;
o_drs4_states_vector <= drs4_states_vector;
states_test <= type_init_states'pos(drs4_states);
drs4_states_vector <= std_logic_vector(to_unsigned(states_test,drs4_states_vector'length));

----Trigger delay y dwrite process ----
---Hacer delay con buffers, la idea es instanciar 2048 buffers en donde el primero llegara un impulso que se trasladará
--delay de un buffer de una LUT1 ?? dependerá del net y del logic delay...veamos que ocurre.

drs4_trigg_proc:process(i_trigger,trigger_reset)
begin
if(trigger_reset = '1') then
    drs4_trigs <= '0';
elsif(rising_edge(i_trigger)) then
     if ((drs4_states = wait_trigger) or (drs4_states = FR_wait_trigger)) then
        drs4_trigs <= '1';
     end if;
end if;
end process;

--drs4_trigs debe ponerse en 1 cuando estoy en los estados de wait_trigger y llega una señal de trigger solamente.
trig_delay(0) <= drs4_trigs;

LUT1_gen : for i in 1 to 2047 generate
LUT1_inst : LUT1
--attribute DONT_TOUCH : string;
--attribute DONT_TOUCH of LUT1_inst: label is "TRUE";
  generic map (
     INIT => B"10")--Modo buffer
  port map (
     O => trig_delay(i),   -- LUT general output
     I0 => trig_delay(i-1)  -- LUT input
  );
end generate;

---En este punto drs4_trigger se pone en uno cuando llega un evento de trigger en los estados de espera de trigger
--Pasa por delay de LUT1 y se conecta de acuerdo al usuario.
drs4_trigger <= trig_delay(CONV_INTEGER(i_trigger_delay_count)*8);

-----Process para accionar dwrite de forma independiente de otro reloj.

dwrite_process: process(drs4_trigger,drs4_states,dwrite_set)
begin
    if (drs4_states = start_conf or drs4_states = idle) then
        dwrite_o <= '0';
    elsif(dwrite_set = '1') then
        dwrite_o <= '1';
    elsif(rising_edge(drs4_trigger)) then
        dwrite_o <= '0';
    end if;
end process;






--------------------------------------




--dwrite_trigger_process:process(clk100M,axi_reset)
--begin
--    if(axi_reset ='1') then
--        dwrite_fast <= '0';
--        trigger_1 <= '0';
--        trigger_2 <= '0';
--        trigger_pulse <= '0';
--    elsif(rising_edge(clk100M)) then
--        trigger_max_count <= to_integer(unsigned(i_trigger_delay_count));
--        trigger_1 <= i_trigger;
--        trigger_2 <= trigger_1;
--        trigger_pulse <= trigger_1 and (not trigger_2);

--        trigger_pulse_1 <= trigger_pulse;
--        case trigger_states IS
--            when '0' =>
--                dwrite_fast <= '1';
--                if(trigger_pulse = '1' and (drs4_states = wait_trigger or drs4_states = FR_wait_trigger)) then
--                    trigger_states <= '1';
--                    trigger_count <= trigger_count + 1;
--                else
--                    trigger_states <= '0';
--                    trigger_count <= 0;
--                end if;
--            when '1' =>
--                if(trigger_count >= trigger_max_count) then
--                    trigger_count <= trigger_count;
--                    dwrite_fast <= '0';
--                else
--                    trigger_count <= trigger_count + 1;
--                    dwrite_fast <= dwrite_fast;
--                end if;
--                if((drs4_states = init_adq))then
--                    trigger_states <= '0';
--                else
--                    trigger_states <= '1';
--                end if;
--            when others =>
--                trigger_states <= '0';      
--        end case;       

--    else
--        trigger_count <= trigger_count;
--    end if;
--end process;



refclk_freq_process:process(clk,axi_reset)
begin
    if(axi_reset = '1') then
        count_refclk <= (others=>'0');
        refclk_p_o <= '0';
    elsif(rising_edge(clk))then
    if(drs4_states /= idle and drs4_states /= init and drs4_states /= RSR_init) then 
        if(count_refclk = refclk_counter) then
        --if(count_refclk = 6) then
            count_refclk <= (others=>'0');
            refclk_p_o <= not refclk_p_o;
        else
            count_refclk <= count_refclk +1;
        end if;
    end if;
    else
        count_refclk <= count_refclk;
        refclk_p_o <= refclk_p_o;
    end if;
end process;


DRS4_process:process(clk,axi_reset)
begin
    if(axi_reset = '1') then
--        count_refclk<= 0;
        dwrite_set <= '0';
        drs4_states <= idle;     
        o_nReset <= '0';  
        srclk_o <= '0';
        trigger_reset <= '1';
--        o_init_seq_finish <= '0';
        srin_o <= '1';
        rsrload_o <= '0';
        denable_o <= '0';
        o_dwrite_for_trigger <= '1';
        count_done <= 0;
        o_stop_cell <= (others=> '0');
        SROUT_count <= 0;
        SROUT_vector <= (others=> '0');
        A3_0_o <= "1111";--disable all outputs
        srclk_test_o <= '0';
    elsif rising_edge(clk) then
        srclk_final_count <= to_integer(unsigned(cell_counts));
        
        load_srin_1 <= read_shift_reg_init;
        load_srin_2 <= load_srin_1;
        RSR_init_start <= load_srin_1 and (not load_srin_2);
        
        start_conf_1 <= conf_register_init;
        start_conf_2 <= start_conf_1;
        CONF_REG_start <= start_conf_1 and (not start_conf_2);  
        
        srclk_test_o <= not srclk_test_o;
        o_stop_cell_ready <= '0';
            CASE drs4_states IS
                WHEN idle => 
                    A3_0_o <= "1111";--disable all outputs
                    rsrload_o <= '0';
                    srclk_o <= '0';
                    srin_o <= '1';
                    denable_o <= '0';
                    --dwrite_o <= '0';
                    dwrite_set <= '0';
                    o_nReset <= '1';
                    trigger_reset <= '1';
                    o_dwrite_for_trigger <= '1';
                IF (RSR_init_start = '1') THEN
                    drs4_states <= RSR_init;
                    A3_0_o <= "1011"; --Addres write shift register ( load srin in 1023 srclk)
                    drs_sr_count <= 0;
                    srin_o <= '0';
                    srclk_o <= '0';
                    rsrload_o <= '0';
                else
                    drs4_states <= idle;        
                END IF;    
                WHEN RSR_init =>
                    rsrload_o <= '0';
                    denable_o <= '0';
                    if(srclk_o = '1') then
                        drs_sr_count <= drs_sr_count + 1 ;
                    end if;
                    srclk_o <= not srclk_o;
                    if( drs_sr_count = 1023 and srclk_o = '0') then
                        srin_o <= '1';
                    end if;
                    
                    if(drs_sr_count = 1024 and srclk_o = '0') then
                        srin_o <= '1';
                        drs4_states <= init;
                        srclk_o <= '0';
                        drs_sr_count <= 0;
                    end if;           
                WHEN init => --estado antes de que comience la configuracion
                    counter_init <= 0;
--                    o_init_seq_finish <= '0';
                    --count_done <= 0;
                    A3_0_o <= "1111";--standby mode
                    count_delay <= 0;
                    count_transition <= 0;
                    o_nReset <= '1';
                    srclk_o <= '0';
                    counter_block_mem_init <= 0;
                    srin_o <= '0';
                    rsrload_o <= '0';
                    denable_o <= '0';
                    --dwrite_o <= '0';
                    
                    IF (CONF_REG_start = '1') THEN
                        drs4_states <= start_conf;
                        A3_0_o <= "1100";
                        srin_o <= '1';
                        srclk_o <= '0';
                        counter_init <= 0;
                    end IF;
                WHEN start_conf => 
                    --srin_o <= '1';
                    rsrload_o <= '0';
                    denable_o <= '0';
                    --dwrite_o <= '0';
                    counter_init <= counter_init + 1;
                    if(counter_init = 16 or counter_init >= 32) then
                        srclk_o <= '0';
                    else
                        srclk_o <= not srclk_o;
                    end if;                
                    --genera la transicion con srin y A3:0
                    if( counter_init = 33 ) then
                        drs4_states <= finish_init;
                    else
                        drs4_states <= start_conf;
                    end if;                      
                                         
                    if( counter_init < 16 )then
                         A3_0_o <= "1100";
                         --
                         if(counter_init = 9 or counter_init = 10) then
                            --WSRLOOP
                            srin_o <= i_config_states(2);
                         elsif (counter_init = 11 or counter_init = 12) then
                            --PLLEN
                            srin_o <= i_config_states(1);
                         elsif (counter_init = 13 or counter_init = 14) then
                            --DMODE
                            srin_o <= i_config_states(0); 
                         else
                            srin_o <= '1';
                         end if;
                         --
                    elsif (counter_init >= 16) then
                         A3_0_o <= "1101";
                         --
                         if(counter_init = 33)then
                            srin_o <= '0';
                         else
                            srin_o <= '1';
                         end if;
                         --
                    else
                         A3_0_o <= A3_0_o;
                    end if;               
                WHEN finish_init =>
                    --dwrite_o <= '1';
                    denable_o <= '1';
                    counter_init <= 0;
                    A3_0_o <= "1010";
--                    o_init_seq_finish <= '1';
                    drs4_states <= init_adq;
                    
---------------------------------init_adq,transition_adq, adq_p1, adq_p2, done_samp_adq-------------------------
                WHEN init_adq => 
                    --dwrite_o <= '1';
                    dwrite_set <= '1';
                    trigger_reset <= '0';
                    o_dwrite_for_trigger <= '1';
                    denable_o <= '1';
                    A3_0_o <= "1010";
                    srclk_o <= '0';
                    --Re do CONF_REG_start
                    SROUT_count <= 0;
                    SROUT_vector <= (others=> '0');
                    drs_sr_count <= 0;
                    if(start_ROI = '1') then
                        drs4_states <= wait_trigger;
                        counter_init <= 0;
                        
                    elsif(CONF_REG_start = '1') THEN
                        drs4_states <= start_conf;
                        A3_0_o <= "1100";
                        srin_o <= '1';
                        srclk_o <= '0';
                        counter_init <= 0;
                    elsif(full_readout_start = '1') then
                        drs4_states <= start_full_readout;
                        
                    else
                        drs4_states <= init_adq;
                    end if;
    ----------------------------ROI mode ---------------------------------
               WHEN wait_trigger =>
                    dwrite_set <= '0';
                    denable_o <= '1';
                    A3_0_o <= "1010";
                    if(dwrite_o = '0' ) then --evento de trigger correcto
                        drs4_states <= delay_trigger;
                    else
                        drs4_states <= wait_trigger;
                    end if;
               WHEN delay_trigger =>  
--                    if(trigger_count = trigger_max_count) then
--                        drs4_states <= RSR_LOAD_state;
--                        counter_init <= 0;
--                    else
--                        drs4_states <= delay_trigger;
--                    end if;
                    drs4_states <= RSR_LOAD_state;
                    counter_init <= 0;
               WHEN RSR_LOAD_state =>
                    trigger_reset <= '1';
                    counter_init <= counter_init + 1;
                    --dwrite_o <= '0';
                    o_dwrite_for_trigger <= '1';
                    A3_0_o <= "1001";
                    if(counter_init = 3) then
                        rsrload_o <= '1';
                    end if;
                    if(counter_init = 4)then
                        rsrload_o <= '0';
                    end if;
                    SROUT_count <= 0;
                    SROUT_vector(0) <= i_SROUT; 
--                    if(counter_init = 6 )then
                    if(counter_init > 5 and srclk_test_o = '1') then -- this sync the srclk to srclk_test
                        drs4_states <= adq_p2;
                        A3_0_o <= "1001";
                        counter_init <= 0;
                        drs_sr_count <= 0;
                    end if;
               WHEN adq_p2 => 
                    trigger_reset <= '0';
                    if(drs_sr_count = srclk_final_count ) then
                        drs4_states <= adq_sampler_trans;
                        drs_sr_count <= 0;
                    else 
                        drs4_states <= drs4_states;
                    end if;    
                    srclk_o <= not srclk_o;
                    o_dwrite_for_trigger <= '0';
                    if(srclk_o = '1') then
                        drs_sr_count <= drs_sr_count + 1 ;
--                    else          ---- must be readout on falling edges
                        if(SROUT_count < 10) then
                            SROUT_vector(SROUT_count) <= i_SROUT;
                            SROUT_count <= SROUT_count + 1;
                        else
                            SROUT_count <= SROUT_count;
                            SROUT_vector <= SROUT_vector;
                            o_stop_cell <= SROUT_vector;
                            o_stop_cell_ready <= '1';
                        end if;
                    end if;
               WHEN adq_sampler_trans =>   
                    srclk_o <= '0';
                    o_stop_cell <= SROUT_vector; 
                    o_dwrite_for_trigger <= '1';
                    drs4_states <= init_adq;
                    counter_init <= 0;
                    dwrite_set <= '1';
                    rsrload_o <= '0';   
                    A3_0_o <= A3_0_o;
                    
 --------------------------------FULL readout-----------------------------------------
               WHEN start_full_readout =>                    
                    drs_sr_count <= 0;

                    A3_0_o <= "1011"; --Addres write shift register ( load srin in 1023 srclk)
                    srin_o <= '0';
                    srclk_o <= '0';
                    if (srclk_test_o = '1') then  -- this sync the srclk to srclk_test
                      drs4_states <= FR_srin;
                    end if;
                    
               WHEN FR_srin =>
                    rsrload_o <= '0';
                    --dwrite_o <= '0';
                    
                    if(srclk_o = '1') then
                        drs_sr_count <= drs_sr_count + 1 ;
                    end if;
                    srclk_o <= not srclk_o;
                    if( drs_sr_count = 1023 and srclk_o = '0') then
                        srin_o <= '1';
                    end if;
                    
                    if(drs_sr_count = 1024 and srclk_o = '0') then
                        srin_o <= '1';
                        drs4_states <= FR_wait_trigger;
                        srclk_o <= '0';
                        counter_init <= 0;
                    else
                            drs4_states <= drs4_states;    
                    end if;     
               WHEN FR_wait_trigger => --estado en que esta almacenando datos
                    --dwrite_o <= '1';
                    dwrite_set <= '0';
                    A3_0_o <= "1010";--transparent mode
                    srin_o <= '0';             
                    --Waiting for acquiring the signal two clock cycles, total of 66 ns app                 
                        if(dwrite_o='1') then
                            drs4_states <= FR_trigger_delay;
                            drs_sr_count <= 0;
                            rsrload_o <= '0';
                            counter_init <= 0;  
                        else
                            drs4_states <= drs4_states;
                        end if;        
               WHEN FR_trigger_delay =>
               -----!!!!!CAMBIAR ESTO
                     if(srclk_test_o = '1') then --5 para 2 GSPS, 3 para 6 GSPS
                        drs4_states <= FR_adquisition;
                     else
                            drs4_states <= FR_trigger_delay;
                     end if;
               WHEN FR_adquisition => --estado de lectura de las celdas
                    --dwrite_o <= '0';
                    trigger_reset <= '1';
                    o_dwrite_for_trigger <= '0';
                    A3_0_o <= "1001";--Enable all outputs;
                    o_stop_cell_ready <= '1';         -- because there is no ROI here
                    counter_init <= counter_init + 1;
                    if(counter_init >= 2) then
                        if(srclk_o = '1') then
                            drs_sr_count <= drs_sr_count + 1;
                        end if;
                        srclk_o <= not srclk_o; 
                        if(drs_sr_count = 1023) then
                            drs4_states <= FR_transition2;
                            drs_sr_count <= 0;
                            counter_init <= 0;
                        else
                            drs4_states <= FR_adquisition;
                        end if;
                    end if;        
               WHEN FR_transition2 =>
                    counter_init <= counter_init + 1 ;
                    --dwrite_o <= '0';
                    o_dwrite_for_trigger <= '1';
                    srclk_o <= '0';
                    if(counter_init = 5) then
                        drs4_states <= init_adq;--init_adq change later
                        counter_init <= 0;
                    else
                        drs4_states <= drs4_states;
                    end if;
               WHEN others =>
                    drs4_states <= idle;
            END CASE;
    else
        drs4_states <= drs4_states;
        A3_0_o <= A3_0_o;
    end if;
    
end process;


end Behavioral;
