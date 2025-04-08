----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Victor Arredondo
-- 
-- Create Date: 25.05.2023 16:56:46
-- Design Name: 
-- Module Name: CPLD_comm_module - Behavioral
-- Project Name: 
-- Target Devices: Te0715-02
-- Tool Versions: 
-- Description: Module for communication using SPI with a CPLD connected as a MUX to the SoM
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

entity CPLD_comm_module is
    generic(
        SPI_baud_rate : integer :=10000000; --SPI frequency
        input_clock_freq : integer := 100000000; -- input clock frequency
        SPI_word_lenght : integer := 10
    );
  Port ( 
        i_clk: in std_logic;
        i_rst: in std_logic;
        i_Mezz_mux  : in std_logic_vector( 2 downto 0); --For mux ADC inputs 
        i_SPI_WR_en : in std_logic; --when asserted, write to SPI bus of CPLD
        i_SPI_data : in std_logic_vector(SPI_word_lenght-1 downto 0);
	i_SPI_MISO: in std_logic;
	i_nCS_CPLD : in std_logic;
        ---OUTPUTS physical
        o_Mux_sel : out std_logic_vector(2 downto 0); -- mux of mezzanines
        o_SPI_MOSI: out std_logic;
        o_SPI_SCLK: out std_logic;
        o_SPI_nCS : out std_logic;
        ---OUTPUTS for control
        o_cpld_data_ans : out std_logic_vector (SPI_word_lenght -1 downto 0);
        o_wr_rdy : out std_logic---ready to receive new data
  
  );
end CPLD_comm_module;

architecture Behavioral of CPLD_comm_module is

constant SPI_max_counter : integer := input_clock_freq/SPI_baud_rate/2; -- SPI max counter
signal SPI_bit_counter : integer range 0 to SPI_word_lenght+1;--Total bit to transmit
signal SPI_counter : integer range 0 to SPI_max_counter+1;
signal wr_en,wr_en_1: std_logic;
signal SPI_busy : std_logic;-- indicates when the bus is sending data.
signal clk: std_logic;
signal SPI_MOSI,SPI_SCLK,SPI_nCS : std_logic;
signal wr_ready : std_logic;
signal start_SPI_com : std_logic;
signal SPI_WRDATA : std_logic_vector ( SPI_word_lenght-1 downto 0);--9 bits of data will be sent
--8 MSB-------------------------------------------------0 LSB-----------
--Mezz2 Mezz1 Mezz0 Mux0 nRST DAC_SEL1 DAC_SEL2 nSHDN DENABLE-------
type states_spi is(idle, start_bit, send_data, end_bit);
type CPLD_states is (wait_start,receaving_data,end_bit);
signal CPLD_states_spi : CPLD_states := wait_start;
signal cpld_count_bit : integer range 0 to SPI_word_lenght+1;
signal cpld_data_rdy : std_logic;
signal cpld_data_rec,data_in : std_logic_vector (SPI_word_lenght-1 downto 0);
signal SPI_states : states_spi := idle;
signal flag_end_data : std_logic := '0';

begin
o_cpld_data_ans <= cpld_data_rec;
o_wr_rdy <= wr_ready;
clk <= i_clk;
--Process of mux sel
process(clk,i_rst)
begin
    if(i_rst = '1') then
        o_Mux_sel <= b"000";
    elsif(rising_edge(clk)) then
        o_Mux_sel <= i_Mezz_mux;
    end if;
end process;

----wr_en assert rising edge sync with the clk
process(clk,i_rst)
variable count_wr : natural range 0 to 5 := 0;
begin
    if(i_rst=  '1') then
        wr_en <= '0';
    elsif(rising_edge(clk))then
        if(SPI_busy = '0') then
            wr_en <= i_SPI_WR_en;
            wr_en_1 <= wr_en;
            if(wr_en = '1' and wr_en_1 = '0') then--rising edge condition
                count_wr := 1;
            end if;
            if(count_wr >= 1 and SPI_SCLK = '1' and (SPI_counter >= (SPI_max_counter/2))) then
                start_SPI_com <= '1';
                count_wr := count_wr + 1;
                if(count_wr = 4) then
                    start_SPI_COM <= '0';
                    count_wr := 0;
                end if;
            end if;
         end if;    
    end if;
end process;

o_SPI_MOSI <= SPI_MOSI;
o_SPI_SCLK <= SPI_SCLK;
o_SPI_nCS <= SPI_nCS;

SPI_clk_process: process(clk,i_rst)
begin
    if(i_rst = '1') then
        SPI_SCLK <= '0';
        SPI_counter <= 0;
    elsif(rising_edge(clk)) then
        if(SPI_counter = SPI_max_counter ) then        
            SPI_counter <= 0;				
            SPI_SCLK <= not SPI_SCLK;
        else
            SPI_counter <= SPI_counter +1;
        end if;
    end if;
end process;


SPI_process:process(clk,i_rst)
begin
    if(i_rst = '1') then
        SPI_MOSI <= '0';
        flag_end_data <= '0';
        SPI_nCS <= '1';
    elsif(rising_edge(clk))then
        ---type states_spi is(idle, start_bit, send_data, end_bit);
            case SPI_states is
                when idle =>
			        SPI_busy <= '0';
                    SPI_MOSI <= '0';
			        wr_ready <= '1';
                    flag_end_data <= '0';	
			        SPI_nCS <= '1';
			        SPI_bit_counter <= 0;
                    if(start_SPI_COM = '1') then
                        SPI_states <= start_bit;
                        SPI_nCS <= '0';
                    else
                        SPI_states <= idle;
                    end if;
                when start_bit =>
					--Send Start bit of '1' at SPI_MOSI
                    wr_ready <= '0';
					SPI_busy <= '1';
                    SPI_WRDATA <= i_SPI_data; -- 10 bit data to sent to CPLD
					
                    if(SPI_SCLK = '0' and (SPI_counter = (SPI_max_counter/2))) then
						SPI_MOSI <= '1'; --START BIT SET
					end if;
					
					if(SPI_SCLK = '1' and (SPI_counter = (SPI_max_counter/2))) then
						SPI_states <= send_data;
						SPI_MOSI <= '0'; --START BIT UNSET
					end if;
					
					--SCLK generation
					
                    
                when send_data =>
                    if(SPI_counter = SPI_max_counter) then
                        if(flag_end_data = '1') then
                            SPI_states <= end_bit;
                        end if;
		            end if;
                    
                    if(SPI_SCLK = '0' and (SPI_counter = (SPI_max_counter/2)) and SPI_bit_counter <SPI_word_lenght ) then --charge the word in the middle of SPI SCLK 0 
                        SPI_MOSI <= SPI_WRDATA(SPI_WRDATA'HIGH);
                        SPI_WRDATA <= SPI_WRDATA(SPI_WRDATA'HIGH-1 downto 0) & SPI_WRDATA(SPI_WRDATA'HIGH);
                        SPI_bit_counter <= SPI_bit_counter + 1;
                    end if;
                    --Reach the total bits of SPI write data
                    if(SPI_bit_counter = SPI_WRDATA'Length and SPI_SCLK = '1') then
                        flag_end_data <= '1';
                    end if;
                when end_bit =>
					SPI_MOSI <= '0';
					if(SPI_counter = SPI_max_counter) then
						if(SPI_SCLK = '1') then
							wr_ready <= '1';
							SPI_nCS <= '1';
							SPI_states <= idle;
						end if;
					end if;
                when others => 
                    SPI_states <= idle;               
            end case;
    end if;
end process;


CPLD_comm_proc: process(SPI_SCLK)
begin
    if(i_nCS_CPLD = '1') then
        CPLD_states_spi <= wait_start;
        cpld_count_bit <= 0;
        cpld_data_rdy <= '0';
    elsif(rising_edge(SPI_SCLK)) then
        if(i_nCS_CPLD = '0') then
            --data will be captured
            case CPLD_states_spi is
                when wait_start =>
                    --Start bit '1' to get next state
                    cpld_data_rdy <= '0';
                    data_in <= (others =>'0');
                    cpld_count_bit <= 0;
                    if(i_SPI_MISO = '1') then
                        CPLD_states_spi <= receaving_data;
                    end if;
                when receaving_data =>
                    cpld_count_bit <= cpld_count_bit + 1;
                    data_in <=  data_in(data_in'High-1 downto 0) & i_SPI_MISO;
                    if(cpld_count_bit = SPI_word_lenght-1) then 
                        CPLD_states_spi <= end_bit;
        
                        cpld_count_bit <= 0;
                    else
                        cpld_data_rdy <= '0';
                    end if;
                when end_bit =>
                    if(i_SPI_MISO ='0') then --end bit confirmation
                        cpld_data_rec <= data_in;
                        cpld_data_rdy <= '1';
                        CPLD_states_spi <= wait_start;
                    end if;
                when others =>
                CPLD_states_spi <= wait_start;
            end case;
        else
            CPLD_states_spi <= wait_start;	
        end if;
    end if;

end process;
    



end Behavioral;
