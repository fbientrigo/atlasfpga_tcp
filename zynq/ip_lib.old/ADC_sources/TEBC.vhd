----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2020 09:21:56 AM
-- Design Name: 
-- Module Name: TEBC - Behavioral
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
-- REMEMBER!!!!!!!!!!!!
-- When connecting FIFO....
-- equation explained in PG-057-fifo-generator
-- must be met, with 16MHz write clock, we must use fifo depth more than 32.
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



entity TEBC is
generic(
  Nbits : natural := 12;
  Nchannels : natural := 8;
  Max_samples : integer := 16
);
  Port (
  
  sys_clk : in std_logic;
  
  aresetn : in std_logic;
  
  i_data_clk : in std_logic;
  i_data_ch0 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch1 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch2 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch3 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch4 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch5 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch6 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch7 : in std_logic_vector ( Nbits - 1 downto 0);
  
-- two posible signal to trigger an event , if busy, module will remain blocked if one of these is active
  i_trigger       : in std_logic;
  i_DRS4_DWRITEn  : in std_logic;
  
-- tells when it can not accept another trigger, it can not go out from busy if trigger is present
  o_busy  : out std_logic;
  
-- push data out
  o_wr_en           : out std_logic;
  o_ascii           : out STD_LOGIC_VECTOR ( 7 downto 0);
  i_next_fifo_full  : in std_logic;
  
-- Read from FIFO  part
  i_rd_fifo_data  : in std_logic_vector( (Nbits*Nchannels -1) downto 0); -- FIFO Write Data (required)
  o_rd_fifo_en    : out std_logic; -- FIFO Write Enable (required)
  i_rd_fifo_empty : in std_logic; -- FIFO Full flag (optional)
  o_rd_fifo_clk   : out std_logic; -- FIFO clock

-- Write to FIFO  part
  o_wr_fifo_data  : out std_logic_vector((Nbits*Nchannels -1) downto 0); -- FIFO Read Data (required)
  o_wr_fifo_en    : out std_logic; -- FIFO Read Enable (required)
  i_wr_fifo_full  : in std_logic; -- FIFO Empty flag (optional)
  o_wr_fifo_clk   : out std_logic; -- FIFO clock

-- comm with DRS4.
  i_stop_cell_ready : in std_logic;
  i_stop_cell       : in  std_logic_vector (9 downto 0);

-- debug outputs
--  o_send_proc_st : out std_logic_vector (2 downto 0); 
--  o_read_proc_st : out std_logic_vector (3 downto 0);
--  o_send_data : out std_logic;
--  o_data_sent : out std_logic;
  debug_datatosend : out std_logic_vector (31 downto 0)
   );
end TEBC;

architecture Behavioral of TEBC is

  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO of o_wr_fifo_data: SIGNAL is "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO of o_wr_fifo_en: SIGNAL is "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_EN";
  ATTRIBUTE X_INTERFACE_INFO of i_wr_fifo_full: SIGNAL is "xilinx.com:interface:fifo_write:1.0 o_wr_fifo FULL";
--  ATTRIBUTE X_INTERFACE_INFO of o_wr_fifo_clk: SIGNAL is "xilinx.com:interface:fifo_write:1.0 fifo_clock wr_clk";

--  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO of i_rd_fifo_data: SIGNAL is "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO of o_rd_fifo_en: SIGNAL is "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_EN";
  ATTRIBUTE X_INTERFACE_INFO of i_rd_fifo_empty: SIGNAL is "xilinx.com:interface:fifo_read:1.0 i_rd_fifo EMPTY";
--  ATTRIBUTE X_INTERFACE_INFO of o_rd_fifo_clk: SIGNAL is "xilinx.com:interface:fifo_read:1.0 fifo_clock rd_clk";

  ATTRIBUTE X_INTERFACE_INFO of sys_clk: SIGNAL is "xilinx.com:signal:clock:1.0 sys_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO of aresetn: SIGNAL is "xilinx.com:signal:reset:1.0 resetn RST";
  ATTRIBUTE X_INTERFACE_INFO of o_rd_fifo_clk: SIGNAL is "xilinx.com:signal:clock:1.0 o_rd_fifo_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO of o_wr_fifo_clk: SIGNAL is "xilinx.com:signal:clock:1.0 o_wr_fifo_clk CLK";

  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER of sys_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clock, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000";
  ATTRIBUTE X_INTERFACE_PARAMETER of aresetn: SIGNAL is "POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_PARAMETER of o_rd_fifo_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clock,   FREQ_HZ 100000000";
  ATTRIBUTE X_INTERFACE_PARAMETER of o_wr_fifo_clk: SIGNAL is "ASSOCIATED_BUSIF o_wr_fifo_clk, FREQ_HZ 16000000";
--  ATTRIBUTE X_INTERFACE_PARAMETER of o_rd_fifo_clk: SIGNAL is "ASSOCIATED_BUSIF o_rd_fifo_clk, ASSOCIATED_RESET aresetn, FREQ_HZ 16000000";
--  ATTRIBUTE X_INTERFACE_PARAMETER of o_wr_fifo_clk: SIGNAL is "ASSOCIATED_BUSIF o_wr_fifo_clk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000";
  
signal evcounter : natural;
signal sample_counter : integer;
signal readout_sample_counter : integer;

signal trig : std_logic;

type trig_proc_st_type is (reset, idle, i_trig, DRS_trig);
signal trig_proc_st    : trig_proc_st_type    := idle;
type read_proc_st_type is (reset, idle, new_ev_header, ev_header, ROI, sample_header, data0, data1, data2, data3, data4, data5, data6, data7, next_sample, read_next);
signal read_proc_st    : read_proc_st_type    := idle;
type send_proc_st_type is (reset, idle, byte0, byte1, byte2, byte3, ending);
signal send_proc_st    : send_proc_st_type    := idle;

signal aq_clk : std_logic;
signal wr_fifo_en : std_logic;
signal busy : std_logic;
signal fifo_data : std_logic_vector((Nbits*Nchannels -1) downto 0);
signal data_to_send : std_logic_vector (31 downto 0);

signal prev_trigger_st : std_logic;
signal rd_fifo_en : std_logic;

--type hexa is ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F') ;
type hexa is array (0 to 15) of character ;
constant to_hex_table: hexa := ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');

    function to_slv(s: string) return std_logic_vector is 
        constant ss: string(1 to s'length) := s; 
        variable answer: std_logic_vector(1 to 8 * s'length); 
        variable p: integer; 
        variable c: integer; 
    begin 
        for i in ss'range loop
            p := 8 * i;
            c := character'pos(ss(i));
            answer(p - 7 to p) := std_logic_vector(to_unsigned(c,8)); 
        end loop; 
        return answer; 
    end function; 
    
    function to_hex(hex: std_logic_vector (11 downto 0)) return std_logic_vector is
      variable answer: std_logic_vector(23 downto 0); 
      variable a : std_logic_vector(7 downto 0);
      variable b : std_logic_vector(7 downto 0);
      variable c : std_logic_vector(7 downto 0);
 
    begin
      a := std_logic_vector(to_unsigned(character'pos(to_hex_table(to_integer(unsigned(hex(3 downto 0))))),8));
      b := std_logic_vector(to_unsigned(character'pos(to_hex_table(to_integer(unsigned(hex(7 downto 4))))),8));
      c := std_logic_vector(to_unsigned(character'pos(to_hex_table(to_integer(unsigned(hex(11 downto 8))))),8));
      answer := c & b & a;
      return answer;
    end function;
    
    
    signal send_data : std_logic;
    signal data_sent : std_logic; 
    
    signal outfifo_wr_en : std_logic;
    signal out_byte : std_logic_vector (7 downto 0);
    
    signal prev_DRS4_DWRITEn : std_logic;
   
begin

o_wr_fifo_clk <= i_data_clk;
o_rd_fifo_clk <= sys_clk;

--  BUFR_inst : BUFR
--   generic map (
--      BUFR_DIVIDE => "BYPASS",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
--      SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
--   )
--   port map (
--      O => aq_clk,     -- 1-bit output: Clock output port
--      CE => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
--      CLR => '0', -- 1-bit input: Active high, asynchronous clear (Divided modes only)
--      I => i_new_data      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
--   );


o_wr_en <= outfifo_wr_en;

--debug output
--o_send_proc_st <= std_logic_vector(to_unsigned(send_proc_st_type'pos (send_proc_st),3));
send_data_control:
process (sys_clk, aresetn)
begin
    if (aresetn = '0') then
      send_proc_st    <= reset;
    elsif (rising_edge(sys_clk)) then
      data_sent <= '0';
      outfifo_wr_en <= '0';

      case send_proc_st is
      when reset =>
        if (aresetn = '1') then
          send_proc_st    <= idle;
        end if;
      when idle =>
        if (send_data = '1' and i_next_fifo_full = '0') then
          send_proc_st <= byte0;
        end if;
      when byte0 =>
        o_ascii <= data_to_send (31 downto 24);
        if (i_next_fifo_full = '0') then
          outfifo_wr_en <= '1';
          send_proc_st <= byte1;
        end if;
      when byte1 =>
        o_ascii <= data_to_send (23 downto 16);
        if (i_next_fifo_full = '0') then
          outfifo_wr_en <= '1';
          send_proc_st <= byte2;
        end if;
      when byte2 =>
        o_ascii <= data_to_send (15 downto 8);
        if (i_next_fifo_full = '0') then
          outfifo_wr_en <= '1';
          send_proc_st <= byte3;
        end if;
      when byte3 =>
        o_ascii <= data_to_send (7 downto 0);
        if (i_next_fifo_full = '0') then
          outfifo_wr_en <= '1';
          send_proc_st <= ending;
          data_sent <= '1';
        end if;
      when ending =>
        send_proc_st <= idle;
      when others =>
        send_proc_st <= reset;
      end case;
  end if;
end process;

--debug output
--o_read_proc_st <= std_logic_vector(to_unsigned(read_proc_st_type'pos (read_proc_st),4));
--o_send_data <= send_data;
--o_data_sent <= data_sent;
debug_datatosend <= data_to_send;

o_rd_fifo_en <= rd_fifo_en;

readout_procesor:
process (sys_clk, aresetn)
begin
    if (aresetn = '0') then
      rd_fifo_en <= '0';
      send_data <= '0';
      read_proc_st    <= reset;
    elsif (rising_edge(sys_clk)) then
      rd_fifo_en <= '0';
      send_data <= '0';
      case read_proc_st is
        
      when reset =>
--        send_data <= '0';
        if (aresetn = '1') then
          read_proc_st    <= idle;
        end if;
      when idle =>
        readout_sample_counter <= 0;
--        send_data <= '0';
        if (busy = '1' and aresetn = '1' and i_rd_fifo_empty = '0') then
          read_proc_st <= new_ev_header;
          rd_fifo_en <= '1';
        end if;
      when new_ev_header =>
 --         fifo_data <= i_rd_fifo_data;
  --          data_to_send <= to_slv("#") & std_logic_vector(to_unsigned(evcounter,24));  -- # + event counter
            data_to_send <= x"0A" & to_slv("#-") & x"0A";  -- # + event counter
            if (send_data = '1' and data_sent = '1') then
              read_proc_st <= ev_header;
            else
              send_data <= '1';
            end if;
      when ev_header =>
        fifo_data <= i_rd_fifo_data;
--          data_to_send <= to_slv("#") & std_logic_vector(to_unsigned(evcounter,24));  -- # + event counter
          data_to_send <= to_slv("#") & to_hex(std_logic_vector(to_unsigned(evcounter,12)));  -- # + event counter
          if (send_data = '1' and data_sent = '1') then
            read_proc_st <= ROI;
          else
            send_data <= '1';
          end if;
       when ROI =>
--         fifo_data <= i_rd_fifo_data;
--          data_to_send <= to_slv("#") & std_logic_vector(to_unsigned(evcounter,24));  -- # + event counter
-- on normal operation ROI signal must be slower than this process, so arrives after we are here.
-- anyway..      i_stop_cell_ready remains high for all the aqsuitition time (few us) so this should never be a problem
-- data should be sent before i_stop_cell_ready goes down.
          
          if (i_stop_cell_ready = '1') then
            data_to_send <= to_slv("#") & to_hex("00" & i_stop_cell);
            send_data <= '1';
          else
            send_data <= send_data;
--            data_to_send <= to_slv("#") & to_hex(std_logic_vector(to_unsigned(2048,12)));
          end if;
          if (send_data = '1' and data_sent = '1') then
            read_proc_st <= sample_header; 
          end if;


      when sample_header =>
--        data_to_send <= x"0A" & std_logic_vector(to_unsigned(readout_sample_counter,24)); -- new line + sample
        data_to_send <= x"0A" & to_hex(std_logic_vector(to_unsigned(readout_sample_counter,12))); -- new line + sample
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data0;
        else
          send_data <= '1';
        end if;
      when data0 =>
        data_to_send <= x"20" & to_hex(fifo_data(11 downto 0)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data1;
        else
          send_data <= '1';
        end if;
      when data1 =>
        data_to_send <= x"20" & to_hex(fifo_data(23 downto 12)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data2;
        else
          send_data <= '1';
        end if;
      when data2 =>
        data_to_send <= x"20" & to_hex(fifo_data(35 downto 24)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data3;
        else
          send_data <= '1';
        end if;
      when data3 =>
        data_to_send <= x"20" & to_hex(fifo_data(47 downto 36)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data4;
        else
          send_data <= '1';
        end if;
      when data4 =>
        data_to_send <= x"20" & to_hex(fifo_data(59 downto 48)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data5;
        else
          send_data <= '1';
        end if;
      when data5 =>
        data_to_send <= x"20" & to_hex(fifo_data(71 downto 60)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data6;
        else
          send_data <= '1';
        end if;
      when data6 =>
        data_to_send <= x"20" & to_hex(fifo_data(83 downto 72)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= data7;
        else
          send_data <= '1';
        end if;
      when data7 =>
        data_to_send <= x"20" & to_hex(fifo_data(95 downto 84)) ;
        if (send_data = '1' and data_sent = '1') then
          read_proc_st <= next_sample;
        else
          send_data <= '1';
        end if;
      when next_sample =>
        if (i_rd_fifo_empty = '1' ) then-- FIFO is empty, only option is fail or last sample was read
          read_proc_st <= reset;
        else
          rd_fifo_en <= '1';
          read_proc_st <= read_next;
        end if;
      when read_next =>
        if (rd_fifo_en = '0') then
          fifo_data <= i_rd_fifo_data;
          readout_sample_counter <= readout_sample_counter + 1;
          read_proc_st <= sample_header;
        end if;
      when others =>
       read_proc_st <= reset;
      end case;
    end if;
end process;






o_wr_fifo_data <= i_data_ch7 & i_data_ch6 & i_data_ch5 & i_data_ch4 & i_data_ch3 & i_data_ch2 & i_data_ch1 & i_data_ch0;
o_wr_fifo_en <= wr_fifo_en and (not i_wr_fifo_full);
o_busy <= busy or (not i_rd_fifo_empty);

-- this module will control when to store into FIFO
-- if FIFO is getting full to easily we might want to improve this process, otherwise we will start having very short events
-- NEW!!! process is blocked until fifo is empty again
trigger_procesor:
process (i_data_clk, aresetn)
begin
    if (aresetn = '0') then
      evcounter       <= 0;
      sample_counter  <= 0;
      trig_proc_st    <= reset;
      wr_fifo_en <= '0' ;
      busy <= '1';
    elsif (rising_edge(i_data_clk)) then
      evcounter <= evcounter;
      wr_fifo_en <= '0' ;
      busy <= '1';
      case trig_proc_st is
      when reset =>
        if (aresetn = '1') then
          trig_proc_st    <= idle;
          busy <= '0';
        end if;
      when idle =>
        sample_counter <= sample_counter;
        busy <= '0';
        prev_trigger_st <= i_trigger;
        prev_DRS4_DWRITEn <= i_DRS4_DWRITEn;
        if (i_DRS4_DWRITEn = '0' and i_rd_fifo_empty = '1' and prev_DRS4_DWRITEn = '1') then
          evcounter       <= evcounter + 1;
          sample_counter  <= 0;
          trig_proc_st <= DRS_trig;
        elsif (i_trigger ='1' and i_rd_fifo_empty = '1' and prev_trigger_st = '0') then
          evcounter <= evcounter + 1;
          sample_counter  <= 0;
          trig_proc_st <= i_trig;
        end if;
      when DRS_trig =>
        if ( i_DRS4_DWRITEn = '0' and sample_counter < Max_samples and i_wr_fifo_full = '0') then 
          sample_counter <= sample_counter + 1;
          wr_fifo_en <= '1';
        else
          trig_proc_st <= idle;
        end if;
      when i_trig =>
        if (sample_counter < Max_samples and i_wr_fifo_full = '0') then 
          sample_counter <= sample_counter + 1;
          wr_fifo_en <= '1';
        else
          trig_proc_st <= idle;
        end if;
      when others =>
        trig_proc_st <= idle;
      end case;
    end if;

end process;


end Behavioral;
