LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_unsigned.all;

entity i2c_dac is
generic(
	clk_freq : integer := 14000000; --clock of lattice machox3d
	baud_rate: integer := 200000 --ksps in F/S mode.
	);
PORT(

	clk_i : in std_logic; --Input clock of the module, should be same frequency has clk_freq
	rst_i: in std_logic; --general reset of the module
	SDA_t: out std_logic; --Enable read, disable output buffer
	SDA_o: out std_logic;
	SDA_i: in std_logic;
	SCL_o: out std_logic;
	ena_read: in std_logic;
	start_com: in std_logic;
	stop_com : in std_logic;
	update_i : in std_logic;
	data_byte_i : in std_logic_vector(7 downto 0); --Para los 8 canales, el bit adicional "1111" es para broadcasts
	read_byte_o: out std_logic_vector(7 downto 0); -- for read data from dac7868
	SCLK_c_test : out std_logic_vector(3 downto 0); -- test para saber counter de SCLK y coordinar con a simulacion el ACK
	i2c_fail_ACK: out std_logic; -- to test fail in ACK and do something...
	active_o : out std_logic; -- Indica si la comunicacion está activa en el dac, esto implica haber enviado un bit de start y no haber enviado el bit de stop.
	end_command_o : out std_logic; -- Indica el final de una rutina al llegar al estado end_ok
	i2c_busy: out std_logic -- Para saber si esta en proceso de envio o lectura de datos, permite coordinar actualizacion.
);

end i2c_dac;

architecture Behavioral of i2c_dac is
--- signal declarations:
constant FREQ_count : natural := (clk_freq/baud_rate-1)/2;
constant ena_internal_vref : std_logic_vector(15 downto 0) := "0000000000010000"; -- data bytes
constant command_byte2 : std_logic_vector(3 downto 0):= "0011";
constant enable_internal_voltage : std_logic_vector (3 downto 0) := "1000";
constant ACK_F_COUNT : integer := 10; -- Cuenta veces que se intento recibir un ACK desde el dac


type i2c_master_states IS ( ms_idle, ms_start,ms_start_read,ms_rec_data, ms_send_data,ms_fail,ms_end_ok,ms_ack,ms_stop);
signal i2c_states : i2c_master_states;
signal o_sclk: std_logic; --to operate inside process, then assign to output 
signal SDA_W,SDA_R:std_logic;--signals to read or write. SDA_i or SDA_o

signal update_1,update_2, update_pulse: std_logic;
signal init_1, init_2,init_pulse:std_logic;
signal ena_read_1,ena_read_2, ena_read_pulse: std_logic;
subtype integer_0_2000 IS INTEGER RANGE 0 to 2000; -- Para ajustar la frecuencia de envio de datos del DAC
subtype integer_0_20 IS INTEGER RANGE 0 to 20; -- Tipo para cuenta de cantos de subida de SCLK
signal Addr_byte : std_logic_vector(7 downto 0); --7 bits de dirección, ultimo bit es de lectura o escritura
signal ComAcc_byte: std_logic_vector(7 downto 0);--Command Access byte
signal Data_byte: std_logic_vector(7 downto 0);
signal freq_counter: integer_0_2000;
signal SCLK_counter: integer_0_2000;
signal sda_ena_r : std_logic;
signal ca_byte : std_logic_vector(7 downto 0 );
signal access_byte2 : std_logic_vector(3 downto 0);
signal rec_ack_ok : std_logic;
signal ack_counter: integer_0_2000; -- Para contar tiempo en que ACK fue valido.
signal clk_delay1,clk_delay2: std_logic; -- Para detectar cantos de bajada
signal initialize_dac : std_logic;
signal ack_fail_counter:integer_0_20;
signal repeat_comm: std_logic;
signal i_sda: std_logic;
signal o_sda: std_logic;
signal start_ready : std_logic;
BEGIN

--Definición de salida para los DACS. Si ADDR0_sel_i = 0 entonces las instrcciones van para ADDR0_o, en otro caso es para ADDR1_o;
i_sda <= SDA_i;

SDA_o <= o_sda;
--En el caso que quiera escribir por SDA dado que es inout

--SDA_t <= SDA_W when (sda_ena_r = '0') else ('Z');
SCL_o <= o_sclk;

pulse_detec: -- debouncing inputs to generate a single pulse only
process(clk_i,rst_i)
begin
	if (rst_i = '1') then
		update_1 <= '0';
		update_2 <= '0';
		update_pulse <= '0';

	elsif rising_edge (clk_i) then
		update_1 <= update_i;
		update_2 <= update_1;
		--update_pulse <= update_1 and (not update_2);
		update_pulse <= update_i;
	else
		
	end if;

end process;


SCLK_c_test <= std_logic_vector(to_unsigned(SCLK_counter, SCLK_c_test'length));

i2c_comm:
process(clk_i,rst_i)
--variable SCLK_counter : integer_0_12;	
	begin
		if(rst_i = '1') then
			i2c_states <= ms_idle;
			start_ready <= '0'; 
			end_command_o<= '0';
			i2c_fail_ACK <= '0';
			SDA_t <= '0';
			o_sda <= '0';
	    elsif rising_edge (clk_i) then
			--Addr_byte <= "10010"& ADDR0_sel_i & "0" & enable_read_i; -- enable_read_i = 0 habilita lectura del DAC, enable_read_i = 1 habilita escritura que es lo que más se usará.
			clk_delay1 <= o_sclk;
			clk_delay2 <= clk_delay1;

			CASE i2c_states IS
				WHEN ms_idle =>
					o_sda <= '0';
					
					ack_fail_counter <= 0;
					o_sclk <= '0';
					SCLK_counter <= 0;
					clk_delay2 <= '0';
					clk_delay1 <= '0';
					i2c_fail_ACK <= '0';
					i2c_busy <= '0';
					SDA_t <= '0';
					rec_ack_ok <= '0';
					if (update_i ='1') then --Se solicita envío de nuevos datos hacia el DAC. Un canal a la vez	
						i2c_states <= ms_send_data;
						Data_byte <= data_byte_i;
						end_command_o <= '0';
						i2c_busy<='1';
					elsif ( start_com = '1') then --send start byte sequence
						o_sda <= '1';
						end_command_o <= '0';
						i2c_states <= ms_start;
						i2c_busy<='1';
					elsif ( stop_com = '1') then
						i2c_states <= ms_stop;
						i2c_busy<='1';
						end_command_o <= '0';						
					else
						i2c_states <= ms_idle;
					end if;
							
				WHEN ms_start =>
					--Inicialización de señales con entradas
					active_o <= '1';
					sda_ena_r <= '0'; --desHabilito lectura de SDA_t
					SCLK_counter <= 0;
					i2c_busy<='1';
					
					if(freq_counter >= (FREQ_count)) then
						o_sda <= '0'; -- condicion de inicio de comunicacion
					else	
						o_sda <= '1';
					end if;
					
					if(freq_counter >= FREQ_count*2) then --Siguiente estado, envío de datos de addr
						i2c_states <= ms_end_ok;
						freq_counter <= 0;
					else	
						freq_counter <= freq_counter + 1;					
						o_sclk <= '1';
						i2c_states <= ms_start;
					end if;
					

				WHEN ms_send_data =>
					--Dos opciones en este estado, elegir DAC 1 o DAC 0 
					i2c_busy<='1';
					if (freq_counter < FREQ_count) then
						freq_counter <= freq_counter + 1; 
					else 
						o_sclk <= not o_sclk;
						freq_counter <= 0; 
					end if;
					--Condicion para setear SDA en ciclo bajo de sclk 
					if (o_sclk <= '0' and freq_counter = (FREQ_count/2) and (SCLK_counter <= 7)) then
						o_sda <= Data_byte(7-SCLK_counter);

					elsif ((clk_delay1 = '0' and o_sclk = '1') and (SCLK_counter <=8)) then--Canto de subida de SCL
						SCLK_counter <= SCLK_counter + 1; -- Incremento la cantidad de SCLK ciclos asignación al final del clock
					else
						o_sda <= o_sda;
					end if;
					
					if( SCLK_counter = 8 and freq_counter = (FREQ_count/2) and o_sclk = '0') then	-- canto de subida
							sda_ena_r <= '1'; --Habilito lectura de SDA_t esto es para habilitar el canal antes de pasar al estado siguiente
					end if;
					if( SCLK_counter = 8 and (clk_delay1 = '0' and o_sclk = '1')) then	-- canto de subida
						i2c_states <= ms_ack;-- Estado de espera del ACK del ADDR
						freq_counter <= 0;
						ack_counter <= 0;
						SDA_W <= '0';
						SDA_t <= '1';

					end if;
				WHEN ms_ack =>
					i2c_busy<='1';
					SDA_t <= '1'; --Habilito lectura de SDA_t

					if(rec_ack_ok = '0') then --Esperando el ACK correcto
						if (freq_counter < FREQ_count) then
							freq_counter <= freq_counter + 1; 
						else 
							freq_counter <= 0; 
							o_sclk <= not o_sclk;
						end if;
					else -- Si ocurre el ACK agrego un canto estado de low adiciona en SCL de acuerdo al manual.
						if (freq_counter < FREQ_count*3) then
							freq_counter <= freq_counter + 1; 
							o_sclk <= '0';
						else 
							rec_ack_ok <= '0';
							SCLK_counter <= 0;
							freq_counter <= 0; 
							if( ack_counter >= (FREQ_count/2)) then
								ack_counter <= 0;
								i2c_states <= ms_end_ok; --OK ACK cuando ocurre un ciclo	
								sda_ena_r <= '0';	
								SDA_t <= '0';
								i2c_fail_ACK <= '0';								
							else					
								i2c_states <= ms_fail; --repetir secuencia?
								sda_ena_r <= '0';
								repeat_comm <= '1';
								SDA_t <= '0';
								ack_fail_counter <= ack_fail_counter + 1;
							end if;
							
						end if;
					end if;				
					if( o_sclk = '1' and rec_ack_ok = '0' ) then
						
						if(i_sda = '0') then --ACK OK
								ack_counter <= ack_counter +1;
						else	
								ack_counter <= ack_counter;
						end if;
					end if;
					if((clk_delay1 = '1' and o_sclk = '0')) then	--Esto ocurre al final del estado. canto de bajada SCL
						rec_ack_ok <= '1';
					end if;
				WHEN ms_fail =>
				    SDA_t <= '0'; 
					freq_counter <= 0;
					i2c_states <= ms_stop; -- finalizo comunicacion.
					i2c_fail_ACK <= '1'; --bit de señal de mal ack.
				WHEN ms_stop => --ACK no se leyo correctamente
					i2c_busy<='1';
					SDA_t <= '0';
					if(freq_counter >= (FREQ_count/2)) then
						o_sda <= '1'; -- condicion de FIN de comunicacion
					else	
						o_sda <= '0';
					end if;
					
					if(freq_counter >= FREQ_count) then --Siguiente estado, envío de datos de addr					
						o_sclk <= '0'; --Fin del bit de inicio de comunicación
						freq_counter <= 0;
						i2c_states <= ms_idle;		
						active_o <= '0';						
					else	
						freq_counter <= freq_counter + 1;					
						o_sclk <= '1';
						i2c_states <= ms_stop;
					end if;
				WHEN ms_end_ok =>
					SDA_t <= '0';
					
					if(freq_counter > FREQ_count) then 			
						o_sclk <= '0'; --Fin del bit de inicio de comunicación
						freq_counter <= 0;
						i2c_states <= ms_idle;	
						end_command_o <= '1';						
						i2c_busy <= '0';						
					else	
						freq_counter <= freq_counter + 1;					
						o_sclk <= '0';
						i2c_busy <= '1';
						i2c_states <= ms_end_ok;
					end if;
				WHEN OTHERS => 
					i2c_states <= ms_idle;
			end case;
		else
			i2c_states <= i2c_states;
		end if;
		
end process;

END Behavioral;