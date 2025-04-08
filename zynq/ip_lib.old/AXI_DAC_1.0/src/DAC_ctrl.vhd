----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2019 03:58:07 PM
-- Design Name: 
-- Module Name: DAC_ctrl - Behavioral
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
-- only generic parameters have been proved to work properly
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DAC_ctrl is
    GENERIC( 
--    N_ADC : natural := 1;
--    N_DAC : natural := 1;
    CLK_FREQ : natural ;
    BAUD     : natural; 

    N_bytes: natural := 2
    );
    Port ( sys_clk      : in STD_LOGIC;
           sys_rst      : in STD_LOGIC;
           dac_write    : in STD_LOGIC;                     -- write DAC_value on DAC_n channel
           dac_config   : in STD_LOGIC;                     -- configures using predifined configuration
           dac_read     : in STD_LOGIC;                     --read back DAC_value on selected DAC_n
--           adc_read     : in STD_LOGIC;
           DAC_n        : in STD_LOGIC_VECTOR (2 downto 0);
           DAC_value    : in STD_LOGIC_VECTOR (15 downto 0);
--           ADC_n        : in STD_LOGIC;
           read_pointer : in STD_LOGIC;
           pointer_tbr  : in STD_LOGIC_VECTOR (7 downto 0);
           ---outputs
            sda_i        : IN  std_logic;
           sda_o        : OUT  std_logic;
           sda_t        : OUT  std_logic;
           scl_i        : IN  std_logic;
           scl_o        : OUT  std_logic;
           scl_t        : OUT  std_logic;
           ptr_content  : out STD_LOGIC_VECTOR (15 downto 0);
--           ADC_value    : out STD_LOGIC_VECTOR (15 downto 0);
           ready        : out STD_LOGIC;
           DAC_nrst      :   out std_logic;
           core_state   : out STD_LOGIC_VECTOR (3 downto 0);
           action_state : OUT    std_logic_vector (1 DOWNTO 0);  --for debug purpose
           sda_sniff        : out STD_LOGIC
);

end DAC_ctrl;

architecture Behavioral of DAC_ctrl is

ATTRIBUTE X_INTERFACE_INFO : STRING;
ATTRIBUTE X_INTERFACE_INFO of sys_clk: SIGNAL is "xilinx.com:signal:clock:1.0 sys_clk CLK";
ATTRIBUTE X_INTERFACE_INFO of sys_rst: SIGNAL is "xilinx.com:signal:reset:1.0 sys_rst RST";

ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER of sys_clk: SIGNAL is "ASSOCIATED_BUSIF sys_clk, ASSOCIATED_RESET sys_rst, FREQ_HZ 100000000";
ATTRIBUTE X_INTERFACE_PARAMETER of sys_rst: SIGNAL is "POLARITY ACTIVE_HIGH";

constant AD_5593_slave_addr     : std_logic_vector (6 DOWNTO 0) := "0010001";  --slave address, consider A0 connected to Vcc
constant DAC_pin_cfg_addr       : std_logic_vector (7 DOWNTO 0) := "00000101";  --Selects which pins are DAC outputs
constant DAC_PDref_ctrl_addr    : std_logic_vector (7 DOWNTO 0) := "00001011";  --Selects which pins are DAC outputs
constant DAC_pin_cfg_all        : std_logic_vector (7 DOWNTO 0) := "11111111";  --Selects which pins are DAC outputs
constant AD_5593_soft_rst_addr  : std_logic_vector (7 DOWNTO 0) := "00001111";  --Resets the AD5593R
constant DACx_wr_addr           : std_logic_vector (4 DOWNTO 0) := "00010";     --DAC_n must be concated
constant DACx_rdback_addr       : std_logic_vector (4 DOWNTO 0) := "01010";     --DAC_n must be concated

constant DACx_data_ie           : std_logic_vector (15 downto 0):= "1" & "000" & "100000000000"; --witring example, 2^11 to DAC0

signal i2c_reset      :  std_logic;
signal i2c_start      :  std_logic;
signal i2c_stop       :  std_logic;
signal i2c_read       :  std_logic;
signal i2c_write      :  std_logic;
signal i2c_send_ack   :  std_logic;
signal i2c_mstr_din   :  std_logic_vector (7 DOWNTO 0);
--OUTPUTS
signal i2c_sda_i        :  std_logic;
signal i2c_sda_o        :  std_logic;
signal i2c_sda_t        :  std_logic;
signal i2c_scl_i        :  std_logic;
signal i2c_scl_o        :  std_logic;
signal i2c_scl_t        :  std_logic;
signal i2c_free       :  std_logic;
signal i2c_rec_ack    :  std_logic;
signal i2c_ready      :  std_logic;
signal start      :  std_logic;
signal i2c_core_state :  std_logic_vector (5 DOWNTO 0);  --for debug purpose
signal i2c_mstr_dout  :  std_logic_vector (7 DOWNTO 0);

type dac_ctrl_state_type is (dac_idle, dac_sending_start, dac_sending_dev_add, dac_sending_pointer, dac_writing_first_half, dac_writing_second_half, dac_stop, dac_wait_free, dac_reading, dac_sending_restart,dac_sending_dev_add_again);
type dac_action_ctrl_state_type is (dac_idle, dac_configuring_outputs, dac_configuring_reference, dac_writing_one_reg, dac_writing_two_reg, dac_reading_two_reg, dac_stop, dac_wait_free);
signal dac_ctrl_state : dac_ctrl_state_type := dac_idle;
signal dac_action_ctrl_state : dac_action_ctrl_state_type := dac_idle;



signal data_to_send     :  std_logic_vector (7 DOWNTO 0);
signal slave_addr       :  std_logic_vector (7 DOWNTO 0);
signal pointer_addr     :  std_logic_vector (7 DOWNTO 0);
signal byte_counter     :   natural range 0 to N_bytes;
signal bytes_to_write   :   natural range 0 to N_bytes;
signal bytes_to_read    :   natural range 0 to N_bytes;
signal data_received    :  std_logic_vector (15 DOWNTO 0);


component i2c_master_v01 
   GENERIC( 
      CLK_FREQ : natural ;
      BAUD     : natural 
   );
   PORT( 
      --INPUTS
      sys_clk    : IN     std_logic;
      sys_rst    : IN     std_logic;
      start      : IN     std_logic;
      stop       : IN     std_logic;
      read       : IN     std_logic;
      write      : IN     std_logic;
      send_ack   : IN     std_logic;
      mstr_din   : IN     std_logic_vector (7 DOWNTO 0);
      --OUTPUTS
      sda_i        : IN  std_logic;
      sda_o        : OUT  std_logic;
      sda_t        : OUT  std_logic;
      scl_i        : IN  std_logic;
      scl_o        : OUT  std_logic;
      scl_t        : OUT  std_logic;
      free       : OUT    std_logic;
      rec_ack    : OUT    std_logic;
      ready      : OUT    std_logic;
      core_state : OUT    std_logic_vector (5 DOWNTO 0);  --for debug purpose
      mstr_dout  : OUT    std_logic_vector (7 DOWNTO 0);
      sda_sniff        : out STD_LOGIC
   );
   end component;
   signal i_in_state : natural range 0 to 10;
   signal i_action_state : natural range 0 to 3;
   signal i_sda_sniff : STD_LOGIC;
begin
      i2c_sda_i <= sda_i;
      sda_o  <= i2c_sda_o;
      sda_t  <= i2c_sda_t;
      i2c_scl_i <= scl_i;
      scl_o  <= i2c_scl_o;
      scl_t  <= i2c_scl_t;
core_state <= conv_std_logic_vector( i_in_state , 4 );
action_state <= conv_std_logic_vector( i_action_state , 2 );

sda_sniff <= i_sda_sniff;

DAC_nrst <= not (sys_rst or i2c_reset);

Inst_i2c: i2c_master_v01
    generic map (
        CLK_FREQ => CLK_FREQ,
        BAUD     => BAUD)
    port map (
        sys_clk    => sys_clk,
        sys_rst    => (sys_rst or i2c_reset),
        start      => i2c_start,
        stop       => i2c_stop,
        read       => i2c_read,
        write      => i2c_write,
        send_ack   => i2c_send_ack,
        mstr_din   => i2c_mstr_din,
        --OUTPUTS
        sda_i        => i2c_sda_i,
        sda_o        => i2c_sda_o,
        sda_t        => i2c_sda_t,
        scl_i        => i2c_scl_i,
        scl_o        => i2c_scl_o,
        scl_t        => i2c_scl_t,
        free       => i2c_free,
        rec_ack    => i2c_rec_ack,
        ready      => i2c_ready, 
        core_state => i2c_core_state,
        mstr_dout  => i2c_mstr_dout,
        sda_sniff => i_sda_sniff
     );


--type dac_ctrl_state_type is (dac_idle, dac_sending_start, dac_sending_dev_add, dac_sending_pointer, dac_writing_first_half, dac_writing_second_half, dac_stop, dac_wait_free);
--type dac_action_ctrl_state_type is (dac_idle, dac_configuring_outputs, dac_writing_one_reg, dac_writing_two_reg, dac_reading_two_reg, dac_stop, dac_wait_free);

stm_dac_action_ctrl: process(sys_clk, sys_rst)
begin
    start <= '0';
    if (sys_rst = '1') then
         data_to_send <= "00000000";
         slave_addr <= "00000000";
         pointer_addr <= "00000000";
         bytes_to_write <= 1;
         dac_action_ctrl_state <= dac_idle;
    elsif  rising_edge( sys_clk ) then 
        case dac_action_ctrl_state is
        
        when dac_idle =>
        i_action_state <= 0;
            if (dac_config = '1' and i2c_free = '1') then
                dac_action_ctrl_state <= dac_configuring_outputs;
                slave_addr <= AD_5593_slave_addr & '0';  -- last '0' is to write operation
                pointer_addr <= DAC_pin_cfg_addr;
                data_to_send <= "00000000";
                bytes_to_write <= 2;
                start <= '1';
            elsif (dac_write = '1' and i2c_free = '1') then
                 dac_action_ctrl_state <= dac_writing_two_reg;
                 slave_addr <= AD_5593_slave_addr & '0';  -- last '0' is to write operation, 
                 pointer_addr <= DACx_wr_addr & DAC_n;
                 data_to_send <= '1' & DAC_n & DAC_value(11 downto 8);
                 bytes_to_write <= 2;
                 start <= '1';
            elsif (dac_read = '1' and i2c_free = '1') then
                dac_action_ctrl_state <= dac_reading_two_reg;
                slave_addr <= AD_5593_slave_addr & '0';  -- last '0' is to write operation needed to change pointe
                pointer_addr <= DACx_rdback_addr & DAC_n;
                bytes_to_read <= 2;
                start <= '1';
            elsif (read_pointer = '1' and i2c_free = '1') then
                dac_action_ctrl_state <= dac_reading_two_reg;
                slave_addr <= AD_5593_slave_addr & '0';  -- last '0' is to write operation needed to change pointe
                pointer_addr <= pointer_tbr;
                bytes_to_read <= 2;
                start <= '1';
            end if;

             
        when dac_configuring_outputs =>
        i_action_state <= 1;
            if (start = '0' and i2c_free = '1' and i2c_start = '0') then
                slave_addr <= AD_5593_slave_addr & '0';  -- last '0' is to write operation
                pointer_addr <= DAC_PDref_ctrl_addr;
                data_to_send <= "00000010"; -- turn on all channels and turn on internal reference 
                bytes_to_write <= 2;
                start <= '1';
                dac_action_ctrl_state <= dac_configuring_reference;
            end if;
            if (start = '0' and byte_counter =1) then
                data_to_send <= DAC_pin_cfg_all;
            end if;
        when dac_configuring_reference =>
            i_action_state <= 1;
                if (start = '0' and i2c_free = '1' and i2c_start = '0') then
                    dac_action_ctrl_state <= dac_idle;
                end if;
                if (start = '0' and byte_counter =1) then
                    data_to_send <= "00000000"; -- all channels enabled
                end if;

        when dac_writing_two_reg =>
        i_action_state <= 2;
            if (start = '0' and i2c_free = '1' and i2c_start = '0') then
                dac_action_ctrl_state <= dac_idle;
            end if;
            if (start = '0' and byte_counter =1) then
                data_to_send <= DAC_value(7 downto 0);
            end if;
        when dac_reading_two_reg =>
        i_action_state <= 3;
            if (start = '0' and i2c_free = '1' and i2c_start = '0') then
                dac_action_ctrl_state <= dac_idle;
            end if;

        when  others =>
            dac_action_ctrl_state <= dac_idle;


        end case;
    end if;      
        
end process;



stm_dac_ctrl: process (sys_clk, sys_rst)
begin
    i2c_start   <= '0';
    i2c_stop    <= '0';
    i2c_read    <= '0';
    i2c_write   <= '0';
    i2c_send_ack<= '1';
    ready       <= '0';
    i2c_reset   <= '0';
    i_in_state  <= 0;
    if (sys_rst = '1') then
        dac_ctrl_state <= dac_idle ; 
        i2c_mstr_din    <= "00000000";
--        data_to_send    <= (others=>'0');
    elsif  rising_edge( sys_clk ) then 
        case dac_ctrl_state is
        when dac_idle =>
            i_in_state  <= 1;
            ready       <= '1';
            ptr_content   <= data_received;
            if (start = '1' and i2c_free = '1') then
                i2c_start <= '1';
                dac_ctrl_state <= dac_sending_start;
--                data_to_send <= '1' & DAC_n & DAC_value(11 downto 0);
                ready       <= '0';
            end if;
        when dac_sending_start =>
            i_in_state  <= 2;
            if (i2c_ready = '1' and i2c_start = '0') then
                i2c_write <= '1';
                dac_ctrl_state  <= dac_sending_dev_add;
                i2c_mstr_din    <= slave_addr;
            end if;
        when dac_sending_dev_add => 
            i_in_state  <= 3;
                if (i2c_ready = '1' and i2c_write = '0') then
                    i2c_write <= '1';
                    dac_ctrl_state <= dac_sending_pointer;
                    i2c_mstr_din <= pointer_addr;
                end if;
        when dac_sending_pointer =>
            i_in_state  <= 4;
            case dac_action_ctrl_state is               
            when dac_reading_two_reg =>
                if (i2c_ready = '1' and i2c_write = '0') then
                    i2c_start <= '1';
                    dac_ctrl_state <= dac_sending_restart;
                    byte_counter <= bytes_to_read - 1;
                end if;
            when others =>
                if (i2c_ready = '1' and i2c_write = '0') then
                    i2c_write <= '1';
                    dac_ctrl_state <= dac_writing_first_half;
                    i2c_mstr_din <= data_to_send(7 downto 0);
                    byte_counter <= bytes_to_write - 1;
                end if;
            end case;
        when dac_writing_first_half =>
            i_in_state  <= 5;
            if (i2c_ready = '1' and i2c_write = '0') then

                if (byte_counter > 0) then
                    i2c_write <= '1';
                    dac_ctrl_state <= dac_writing_first_half;
                    i2c_mstr_din <= data_to_send(7 downto 0);
                    byte_counter <= byte_counter - 1;
                else
                    dac_ctrl_state <= dac_stop;
                    i2c_stop <= '1';
                    i2c_mstr_din <= (others => '0');
                end if;
                
            end if;
--        when dac_writing_second_half =>
--            if (i2c_ready = '1' and i2c_write = '0') then
--                i2c_stop <= '1';
--                dac_ctrl_state <= dac_stop;
--                i2c_mstr_din <= (others => '0');
--            end if;
        when dac_stop =>
            i_in_state  <= 6;
                if (i2c_free = '1') then
                    dac_ctrl_state <= dac_idle;
                end if;
        when dac_sending_restart =>
            i_in_state  <= 7;
            if (i2c_ready = '1' and i2c_start = '0') then
                i2c_write <= '1';
                dac_ctrl_state  <= dac_sending_dev_add_again;
                i2c_mstr_din    <= slave_addr or "00000001";
            end if;
        when dac_sending_dev_add_again =>   
            i_in_state  <= 8;
            if (i2c_ready = '1' and i2c_write = '0') then
                i2c_read <= '1';
                dac_ctrl_state  <= dac_reading;
            end if;
        when dac_reading =>
            i_in_state  <= 9;
            if (i2c_ready = '1' and i2c_read = '0') then
               if (byte_counter > 0) then
                    i2c_read <= '1';
                    dac_ctrl_state <= dac_reading;
                    data_received (15 downto 8) <= i2c_mstr_dout;
                    byte_counter <= byte_counter - 1;
                else
                    dac_ctrl_state <= dac_stop;
                    i2c_stop <= '1';
                    data_received (7 downto 0) <= i2c_mstr_dout;
                end if;
            end if;
        when others =>
            i_in_state  <= 10;
            dac_ctrl_state <= dac_stop;
            i2c_reset <= '1';
        end case;
    end if;
end process;
    


end Behavioral;
