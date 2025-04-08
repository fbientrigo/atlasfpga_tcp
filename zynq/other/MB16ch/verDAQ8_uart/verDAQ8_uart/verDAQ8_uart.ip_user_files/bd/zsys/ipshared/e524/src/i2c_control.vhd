LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

--Este modulo implementa el control del dac 7678 como modulo maestro.


entity i2c_control is
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
		ADDR0_sel_i : in std_logic; --Selecciona a que dac enviar datos 0 o 1.
		ena_read: in std_logic; 
		update_i : in std_logic; -- To dac 
		command_access_byte_i : in std_logic_vector ( 7 downto 0); --Selecciona el canal del dac para escribir y actualizar
		data_byte_i : in std_logic_vector(11 downto 0); --Para los 8 canales, el bit adicional "1111" es para broadcasts
		read_byte_o: out std_logic_vector(11 downto 0); -- for read data from dac7868
		active_o : out std_logic;
		Fail_ACK: out std_logic
	);
end i2c_control;

architecture behavioral of i2c_control is

component i2c_dac is
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
	end_command_o : out std_logic; -- Indica el final de una rutina al llegar al estado end_ok
	active_o : out std_logic; -- Indica si la comunicacion está activa en el dac, esto implica haber enviado un bit de start y no haber enviado el bit de stop.
	i2c_busy: out std_logic -- Para saber si esta en proceso de envio o lectura de datos.
);

end component i2c_dac;


signal rst: std_logic;
signal DAC_byte : std_logic_vector (11 downto 0);
type i2c_control_states IS (i2c_idle, i2c_start, i2c_init, i2c_sending, i2c_stop);
signal i2c_states: i2c_control_states;
signal counter_2bytes: integer range 0 to 6; -- Para contar los par de bytes enviados por i2c al dac
signal init_dac: std_logic;
signal update_dac : std_logic;
signal SCLK_c_test: integer ;
signal scl_counter : std_logic_vector (3 downto 0);
signal init_dac_i : std_logic;
signal i2c_fail,i2c_busy : std_logic;
signal data,data_msb,data_lsb : std_logic_vector ( 7 downto 0);
signal ca_byte : std_logic_vector ( 7 downto 0);

signal latch_init_dac,start_com,stop_com,end_command_o: std_logic;
signal flag_addr,flag_ca,flag_data1, flag_data2,flag_finish : boolean;
--for pulse
signal ena_involt_1,ena_involt_2,ena_involt_p : std_logic;
signal active_o_o : std_logic;
begin
rst <= rst_i;
dac_inst :component  i2c_dac
	generic map(
		clk_freq => clk_freq,
		baud_rate => baud_rate
		)
    port map (
		clk_i => clk_i, --: in std_logic; --Input clock of the module, should be same frequency has clk_freq
		rst_i => rst,	--: in std_logic; --general reset of the module
		SDA_t => SDA_t,--: out std_logic; --Enable read, disable output buffer
		SDA_o =>sda_o ,-- : out std_logic;
		SDA_i=> sda_i,-- in std_logic;
		SCL_o=>scl_o,-- out std_logic;
		ena_read=>ena_read,-- in std_logic;
		update_i => update_dac,-- in std_logic;
		start_com => start_com,--: in std_logic;
		stop_com => stop_com,--: in std_logic;
		data_byte_i => data,-- in std_logic_vector(7 downto 0); --Para los 8 canales, el bit adicional "1111" es para broadcasts
		read_byte_o=> open,-- out std_logic_vector(7 downto 0); -- for read data from dac7868
		SCLK_c_test => scl_counter,-- out std_logic_vector(3 downto 0); -- test para saber counter de SCLK y coordinar con a simulacion el ACK
		i2c_fail_ACK=>i2c_fail,-- out std_logic; -- to test fail in ACK and do something...
		end_command_o => end_command_o,
		active_o => active_o_o,
		i2c_busy=>i2c_busy-- out std_logic -- Para saber si esta en proceso de envio o lectura de datos.
    );
--type i2c_control_states IS (i2c_idle, i2c_init, i2c_sending, i2c_stop);

-- process para control del dac



dac_control:process(clk_i,rst)
begin
if(rst = '1') then
	i2c_states <= i2c_idle;
	init_dac <= '0';
	latch_init_dac <= '0';
	Fail_ACK <= '0';elsif (rising_edge (clk_i)) then
	if(i2c_states = i2c_idle) then
		active_o <= '0';
	else
		active_o <= '1';
	end if;
	CASE i2c_states IS
		WHEN i2c_idle =>
			start_com <= '0';
			stop_com <= '0';
			flag_addr <= false;
			flag_finish <= false;
			flag_ca <= false;
			flag_data1 <= false;
			flag_data2 <= false;
			active_o <= '0';
			
			if(update_i = '1' ) then
				i2c_states <= i2c_start;
			end if;
			
		WHEN i2c_start =>
			
			
			ca_byte <= command_access_byte_i;
			data_msb <= data_byte_i(11 downto 4);
			data_lsb <= data_byte_i (3 downto 0) & "0000";
			--Secuencia para habilitar voltage interno
			--ca_byte <= "10000000";
			--data_msb <= "00000000";
			--data_lsb <= "00010000";
				

			if(i2c_busy = '1') then
				start_com <= '0'; --Espera hasta que inicie la secuencia de inicio
			else
				start_com <= '1';
			end if;
			if(i2c_busy = '1' and start_com = '0') then --Esto es cuando termina la secuencia...
				i2c_states <= i2c_sending;
			end if;
		WHEN i2c_sending => --Estado para enviar los bytes de datos
			if(i2c_busy = '0' and update_dac = '0') then
				if(i2c_fail = '0') then
					if(flag_addr = false) then
						update_dac <= '1';
						data <= "10010"& ADDR0_sel_i & "0" & "0"; 
						flag_addr <= true;
					elsif(flag_ca = false) then
						update_dac <= '1';
						flag_ca <= true;
						data <= ca_byte;
					elsif(flag_data1 = false) then
						update_dac <= '1';
						flag_data1 <= true;
						data <= data_msb;
					elsif(flag_data2 = false) then
						update_dac <= '1';
						flag_data2 <= true;
						data <= data_lsb;
					elsif(flag_addr and flag_ca and flag_data1 and flag_data2) then
						flag_finish <= true;
					end if;
				else -- Si no se lee bien el ACK
					i2c_states <= i2c_stop;
					Fail_ACK <= '1';
				end if;	
			else
				update_dac <= '0';
				data <= data; --latch

			end if;
			if(flag_finish or i2c_fail = '1') then -- Fin de envío de datos, enviar detención
					i2c_states <= i2c_stop;
					Fail_ACK <= '1';

			else --Ocupado enviando o recibiendo datos
				i2c_states <= i2c_sending;	
			end if;	
	
		WHEN i2c_stop =>
			if(i2c_busy = '0') then
				stop_com <= '1';
			else
				stop_com <= '0';
			end if;
			if(active_o_o = '0') then --Fin exitoso de datos
				i2c_states <= i2c_idle;
			end if;
		WHEN others =>
			i2c_states <= i2c_idle;
	end case;
end if;
end process;
END behavioral;
	
