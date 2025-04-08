----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/02/2020 12:34:02 AM
-- Design Name: 
-- Module Name: ROController - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROController is
generic(
  Nbits : natural := 12;
  Nchannels : natural := 8;
  DRS4_samples : integer := 1024
);
  Port (
  sys_clk  : in std_logic;
  i_data_clk  : in std_logic;
  i_data_ch0 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch1 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch2 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch3 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch4 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch5 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch6 : in std_logic_vector ( Nbits - 1 downto 0);
  i_data_ch7 : in std_logic_vector ( Nbits - 1 downto 0);
  i_rst       : in std_logic;
  
  i_veto      : in std_logic;
-- two posible signal to trigger an event , if busy, module will remain blocked if one of these is active
  i_trigger   : in  std_logic;
  i_DRS4_DWRITEn  : in std_logic;
-- tells when it can not accept another trigger, it can not go out from busy if trigger is present
  o_busy  : out std_logic;
  i_post_trig_wind       : in std_logic_vector (11 downto 0);
  i_pre_trig_wind       : in std_logic_vector (11 downto 0);
  o_trig_RO_end : out std_logic;
-- comm with DRS4.
  i_stop_cell_ready : in std_logic;
  i_stop_cell       : in  std_logic_vector (9 downto 0);

 -- Write to FIFO  part
    o_wr_fifo_data  : out std_logic_vector((Nbits*Nchannels ) downto 0); -- FIFO Read Data (required)
    o_wr_fifo_en    : out std_logic; -- FIFO Read Enable (required)
    i_wr_fifo_full  : in std_logic; -- FIFO Empty flag (optional)
    o_wr_fifo_clk   : out std_logic; -- FIFO clock
-- Read from FIFO  part
    i_rd_fifo_data  : in std_logic_vector( (Nbits*Nchannels ) downto 0); -- FIFO Write Data (required)
    o_rd_fifo_en    : out std_logic; -- FIFO Write Enable (required)
    i_rd_fifo_empty : in std_logic; -- FIFO Full flag (optional)
    o_rd_fifo_clk   : out std_logic; -- FIFO clock
    i_rd_data_count : in std_logic_vector (11 downto 0);
-- data out in ascii    
    o_outfifo_wr_en : out std_logic;
    i_next_fifo_full: in std_logic;
    o_ascii         : out std_logic_vector(7 downto 0)
 );
end ROController;

architecture Behavioral of ROController is
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
ATTRIBUTE X_INTERFACE_INFO of i_rst: SIGNAL is "xilinx.com:signal:reset:1.0 reset RST";
ATTRIBUTE X_INTERFACE_INFO of o_rd_fifo_clk: SIGNAL is "xilinx.com:signal:clock:1.0 o_rd_fifo_clk CLK";
ATTRIBUTE X_INTERFACE_INFO of o_wr_fifo_clk: SIGNAL is "xilinx.com:signal:clock:1.0 o_wr_fifo_clk CLK";

ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER of sys_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clock, ASSOCIATED_RESET i_rst, FREQ_HZ 100000000";
ATTRIBUTE X_INTERFACE_PARAMETER of i_rst: SIGNAL is "POLARITY ACTIVE_HIGH";
ATTRIBUTE X_INTERFACE_PARAMETER of o_rd_fifo_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clock,   FREQ_HZ 100000000";
ATTRIBUTE X_INTERFACE_PARAMETER of o_wr_fifo_clk: SIGNAL is "ASSOCIATED_BUSIF o_wr_fifo_clk, FREQ_HZ 16000000";

type ro_proc_st_type is (reset, idle, recording, trig, end_dly);
signal ro_proc_st    : ro_proc_st_type    := idle;
type read_proc_st_type is (reset, idle, new_ev_header, ev_header, ROI, sample_header, data0, data1, data2, data3, data4, data5, data6, data7, next_sample, read_next);
signal read_proc_st    : read_proc_st_type    := idle;
type send_proc_st_type is (reset, idle, byte0, byte1, byte2, byte3, ending);
signal send_proc_st    : send_proc_st_type    := idle;
signal wr_fifo_en : std_logic;
signal busy : std_logic;
signal rd_fifo_en : std_logic;
signal send_data : std_logic;
signal readout_sample_counter : std_logic_vector (11 downto 0);
signal data_to_send : std_logic_vector (31 downto 0);
signal data_sent : std_logic; 
signal evcounter : std_logic_vector (11 downto 0);
signal fifo_data : std_logic_vector((Nbits*Nchannels ) downto 0);
signal sending_data : std_logic;
signal veto : std_logic;
signal outfifo_wr_en : std_logic;
signal prev_trigger_st : std_logic;
signal prev_DRS4_DWRITEn : std_logic;
signal DRS4_trigger_type : std_logic;

-- to std_logic_vector function
-- convert from string to std_logic_vector
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

type hexa is array (0 to 15) of character ;
constant to_hex_table: hexa := ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
-- convert to and hex representation of the given vector, hex is given as ascii
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

begin

o_outfifo_wr_en <= outfifo_wr_en;
send_data_control:
process (sys_clk, i_rst)
begin
    if (i_rst = '1') then
      send_proc_st    <= reset;
    elsif (rising_edge(sys_clk)) then
      data_sent <= '0';
      outfifo_wr_en <= '0';

      case send_proc_st is
      when reset =>
        if (i_rst = '0') then
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


-- first bit is one from the moment a trigger is received and till the end of the event
o_wr_fifo_data  <= (busy or i_trigger) & i_data_ch3 & i_data_ch2 & i_data_ch1 & i_data_ch0 & i_data_ch7 & i_data_ch6 & i_data_ch5 & i_data_ch4;
o_wr_fifo_en    <= wr_fifo_en and (not i_wr_fifo_full);
o_wr_fifo_clk   <= i_data_clk;
o_rd_fifo_en <= rd_fifo_en;
o_busy <= busy or sending_data;

readout_procesor:
process (sys_clk, i_rst)
variable prev_post_trigger_sample : std_logic := '0';
begin
    if (i_rst = '1') then
      rd_fifo_en <= '0';
      send_data <= '0';
      read_proc_st    <= reset;
      prev_post_trigger_sample := '0';
    elsif (rising_edge(sys_clk)) then
      rd_fifo_en <= '0';
      send_data <= '0';
      sending_data <= '1';
      case read_proc_st is
        
      when reset =>
--        send_data <= '0';
        sending_data <= '0';
        if (i_rst = '0') then
          read_proc_st    <= idle;
        end if;
      when idle =>
        sending_data <= '0';
        readout_sample_counter <= x"800";
        prev_post_trigger_sample := '0';
--        send_data <= '0';
        if (busy = '1' and i_rst = '0' and i_rd_fifo_empty = '0') then
          read_proc_st <= new_ev_header;
          rd_fifo_en <= '1';
        end if;
-- keep the sampling FIFO at the pre trigger size
        if (busy = '0' and i_rst = '0' and i_rd_fifo_empty = '0') then
          if (i_pre_trig_wind < i_rd_data_count ) then
            rd_fifo_en <= '1';
          end if;
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
--          data_to_send <= to_slv("#") & to_hex(std_logic_vector(to_unsigned(evcounter,12)));  -- # + event counter
        data_to_send <= to_slv("#") & to_hex(evcounter);
        if (send_data = '1' and data_sent = '1') then
          if (DRS4_trigger_type = '1') then
            read_proc_st <= ROI;
          else
            read_proc_st <= sample_header;
          end if;
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
--        data_to_send <= x"0A" & to_hex(std_logic_vector(to_unsigned(readout_sample_counter,12))); -- new line + sample
        data_to_send <= x"0A" & to_hex(readout_sample_counter);
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
--          read_proc_st <= next_sample;
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
-- increment sample counter only if it is post trigger sample
          if (fifo_data(Nbits*Nchannels) = '1' and prev_post_trigger_sample = '0')then
            readout_sample_counter <= x"000";
          else
            readout_sample_counter <= readout_sample_counter + 1;
          end if;
          read_proc_st <= sample_header;
          prev_post_trigger_sample := fifo_data(Nbits*Nchannels);
        end if;
      when others =>
       read_proc_st <= reset;
      end case;
    end if;
end process;


veto <= (i_veto or sending_data) and not busy;

trigger_procesor:
process (i_data_clk, i_rst)
variable counter : std_logic_vector (11 downto 0) := x"000";
variable cnt_limit : std_logic_vector (11 downto 0) := x"000";
begin
    if (i_rst = '1') then
      ro_proc_st    <= reset;
      wr_fifo_en <= '0' ;
    elsif (rising_edge(i_data_clk)) then
      wr_fifo_en <= '0' ;
      o_trig_RO_end <= '0';
      busy <= '0';
      case ro_proc_st is
      when reset =>
        if (i_rst = '0') then
          ro_proc_st    <= idle;
        end if;
      when idle =>
        if (veto = '0' and i_wr_fifo_full = '0') then
          ro_proc_st <= recording;
        else 
          ro_proc_st <= idle;
        end if;
      when recording =>
        prev_trigger_st <= i_trigger;
        prev_DRS4_DWRITEn <= i_DRS4_DWRITEn;

        if (prev_trigger_st = '0' and i_trigger = '1' and i_wr_fifo_full = '0') then 
          busy <= '1';
          wr_fifo_en <= '1';
          ro_proc_st <= trig;
          evcounter <= evcounter + 1;
          cnt_limit := i_post_trig_wind;
          DRS4_trigger_type <= '0';
        elsif (prev_DRS4_DWRITEn = '1' and i_DRS4_DWRITEn = '0' and i_wr_fifo_full = '0') then
          busy <= '1';
          wr_fifo_en <= '1';
          ro_proc_st <= trig;
          evcounter <= evcounter + 1;
          cnt_limit := x"00F"  + DRS4_samples; -- 1024 from DRS4 cells + 12 from ADC latency + 4 of margin
          DRS4_trigger_type <= '1';
        elsif ( veto = '0' and i_wr_fifo_full = '0') then 
          wr_fifo_en <= '1';
          ro_proc_st <= recording;
        else
          ro_proc_st <= idle;
        end if;
      when trig =>
       if (cnt_limit = counter) then
         wr_fifo_en <= '0';
         ro_proc_st <= end_dly;
         counter := x"000";
         o_trig_RO_end <= '1';
       elsif ( veto = '0' and i_wr_fifo_full = '0') then 
         busy <= '1';
         wr_fifo_en <= '1';
         ro_proc_st <= trig;
         counter := counter + 1;
       else
         ro_proc_st <= idle;
       end if;
     when end_dly =>
      o_trig_RO_end <= '1';
        if (x"004" = counter) then
          ro_proc_st <= idle;
          counter := x"000";
       end if;
       counter := counter + 1;
      when others =>
        ro_proc_st <= reset;
      end case;
    end if;

end process;


end Behavioral;
