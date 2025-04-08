library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo8b_2_axis_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32

	);
	port (
		-- Users to add ports here
    i_fifo_din  : in std_logic_vector (7 downto 0);
    o_fifo_full : out std_logic;
    i_fifo_we   : in std_logic;
    i_sending   : in std_logic;
    o_fifo_data_count : out std_logic_vector(3 downto 0);
    i_force_send : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end fifo8b_2_axis_v1_0_M00_AXIS;

architecture implementation of fifo8b_2_axis_v1_0_M00_AXIS is
	-- Total number of output data                                              
	-- Define the states of state machine                                             
	-- The control state machine oversees the writing of input streaming data to the FIFO,
	-- and outputs the streaming data from the FIFO                                   
	type state is ( IDLE,        -- This is the initial/idle state                    
	                INIT_COUNTER,  -- This state initializes the counter, once        
	                                -- the counter reaches C_M_START_COUNT count,     
	                                -- the state machine changes state to SEND_STREAM  
	                SEND_STREAM);  -- In this state the                               
	                             -- stream data is output through M_AXIS_TDATA        
	-- State variable                                                                 
	signal  mst_exec_state : state;                                                   
	signal axis_tvalid	: std_logic;

	signal axis_tlast	: std_logic;

	signal stream_data_out	: std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);

COMPONENT fifo_generator_1
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

  signal fifo_data  : std_logic_vector(7 downto 0);
  signal fifo_re    : std_logic;
  signal fifo_empty : std_logic;
  signal fifo_data_count : std_logic_vector(3 downto 0);
  signal fifo_re_delayed    : std_logic;
  signal fifo_re_delayed_2    : std_logic;
  signal fifo_data_delayed  : std_logic_vector(7 downto 0);
  signal M_axis_areset : std_logic;
begin
	-- I/O Connections assignments

	M_AXIS_TVALID	<= axis_tvalid;
	M_AXIS_TDATA	<= stream_data_out;
	M_AXIS_TLAST	<= axis_tlast;
	M_AXIS_TSTRB	<= (others => '1');

M_axis_areset <= not M_AXIS_ARESETN;
                                                          
o_fifo_data_count <= fifo_data_count;
	-- Add user logic here
read_Fifo : fifo_generator_1
    PORT MAP (
      clk => M_AXIS_ACLK,
      srst => M_axis_areset,
      din => i_fifo_din,
      wr_en => i_fifo_we,
      rd_en => fifo_re,
      dout => fifo_data,
      full => o_fifo_full,
      empty => fifo_empty,
      data_count => fifo_data_count
    );
    
  fifo_re <= (not fifo_empty) and M_AXIS_TREADY;
  
  process(M_AXIS_ACLK) begin
    if (rising_edge (M_AXIS_ACLK)) then
      fifo_re_delayed <= fifo_re;
      fifo_re_delayed_2 <= fifo_re_delayed;
      fifo_data_delayed <= fifo_data;
    end if;
  end process;
  
  process(M_AXIS_ACLK)   
  variable count : integer    :=0;                                                                                              
  begin                                                                         
    if (rising_edge (M_AXIS_ACLK)) then                                         
      if(M_AXIS_ARESETN = '0') then                                             
      stream_data_out <= (others => '0');  
      axis_tlast <= '0';
      axis_tvalid <= '0';
      count := 0;
      else
        case (mst_exec_state) is
        when IDLE =>
          axis_tvalid <= '0';
          if (fifo_re = '1') then
            mst_exec_state <= SEND_STREAM;
            axis_tlast <= '0';
          end if;
        when SEND_STREAM =>
          if (fifo_re_delayed_2 = '1') then -- && M_AXIS_TSTRB(byte_index)                   
            stream_data_out <= fifo_data_delayed & stream_data_out (31 downto 8);
            count := count + 1;
          end if;     
          if (count = 4) then 
            axis_tvalid <= '1';
            count := 0;
            if (fifo_data_count <= "0001" and i_sending = '0') then
              axis_tlast <= '1';
              mst_exec_state <= IDLE;
            end if;
          else
            axis_tvalid <= '0';
          end if;
        when others =>
          mst_exec_state <= SEND_STREAM;
        end case;      
      end if;    
    end if;                                                 
  end process;         
	-- User logic ends

end implementation;
