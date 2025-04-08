library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_ADC_v3_0_S00_AXI is
	generic (
		-- Users to add parameters here
        FRAME_PATTERN : std_logic_vector (5 downto 0) := "111000";
        ADC_N_bits    : natural := 16;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
  -- Hardware signals  ADC spi
      i_MISO          : in  std_logic;        
      o_MOSI          : out std_logic;
      o_SCLK          : out std_logic;
      o_nCS           : out std_logic;
      o_ADC_nrst     : out std_logic;
      -- debugging ADC spi
      o_debug       : out std_logic_vector (11 downto 0);
             
      --signals ADC readout       
      i_ADclk        : in std_logic;
      --i_ADclk_n        : in std_logic;
      i_Lclk         : in std_logic;
      --i_Lclk_n         : in std_logic;
      i_data_in_ch0_p  : in std_logic;
      i_data_in_ch0_n  : in std_logic;
      i_data_in_ch1_p  : in std_logic;
      i_data_in_ch1_n  : in std_logic;
      i_data_in_ch2_p  : in std_logic;
      i_data_in_ch2_n  : in std_logic;
      i_data_in_ch3_p  : in std_logic;
      i_data_in_ch3_n  : in std_logic;
      i_data_in_ch4_p  : in std_logic;
      i_data_in_ch4_n  : in std_logic;
      i_data_in_ch5_p  : in std_logic;
      i_data_in_ch5_n  : in std_logic;
      i_data_in_ch6_p  : in std_logic;
      i_data_in_ch6_n  : in std_logic;
      i_data_in_ch7_p  : in std_logic;
      i_data_in_ch7_n  : in std_logic;
      o_data_out_ch0 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      o_data_out_ch1 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      o_data_out_ch2 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      o_data_out_ch3 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      o_data_out_ch4 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      o_data_out_ch5 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      o_data_out_ch6 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      o_data_out_ch7 : out std_logic_vector (ADC_N_bits - 1 downto 0);
      --       data_debug     : out std_logic_vector (N_bits - 1 downto 0)  
      o_data_clk     : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end AXI_ADC_v3_0_S00_AXI;

architecture arch_imp of AXI_ADC_v3_0_S00_AXI is

component ADC_ctrl is
   --   GENERIC( );
  Port ( sys_clk      : in STD_LOGIC;
         sys_rst      : in STD_LOGIC;
  -- Interface with module       
         write_reg    : in STD_LOGIC;
         adc_config   : in STD_LOGIC;
         read_reg     : in STD_LOGIC;
         wr_value     : in STD_LOGIC_VECTOR (15 downto 0);
         pointer_tbr  : in STD_LOGIC_VECTOR (7 downto 0);
         rd_value     : out STD_LOGIC_VECTOR (15 downto 0);
         ready        : out STD_LOGIC;
                
  -- Hardware signals    
         MISO          : in  std_logic;        
         MOSI          : out std_logic;
         SCLK          : out std_logic;
         nCS           : out std_logic;
         ADC_nrst     : out std_logic;
  -- debugging
         core_state   : out STD_LOGIC_VECTOR (1 downto 0);
         action_state : OUT    std_logic_vector (1 DOWNTO 0)  --for debug purpose
  
  );
  end component ADC_ctrl;

component ADC_readout_3 is
Generic(
  FRAME_PATTERN : std_logic_vector (5 downto 0) := FRAME_PATTERN
);
  Port (
    sys_clk      : in STD_LOGIC;
    i_ADclk        : in std_logic;
    --i_ADclk_n        : in std_logic;
    i_Lclk        : in std_logic;
    --i_Lclk_n         : in std_logic;
    i_ch0_p  : in std_logic;
    i_ch0_n  : in std_logic;
    i_ch1_p  : in std_logic;
    i_ch1_n  : in std_logic;
    i_ch2_p  : in std_logic;
    i_ch2_n  : in std_logic;
    i_ch3_p  : in std_logic;
    i_ch3_n  : in std_logic;
    i_ch4_p  : in std_logic;
    i_ch4_n  : in std_logic;
    i_ch5_p  : in std_logic;
    i_ch5_n  : in std_logic;
    i_ch6_p  : in std_logic;
    i_ch6_n  : in std_logic;
    i_ch7_p  : in std_logic;
    i_ch7_n  : in std_logic;
    o_ch0 : out std_logic_vector (15 downto 0);
    o_ch1 : out std_logic_vector (15 downto 0);
    o_ch2 : out std_logic_vector (15 downto 0);
    o_ch3 : out std_logic_vector (15 downto 0);
    o_ch4 : out std_logic_vector (15 downto 0);
    o_ch5 : out std_logic_vector (15 downto 0);
    o_ch6 : out std_logic_vector (15 downto 0);
    o_ch7 : out std_logic_vector (15 downto 0);
  
    i_rst       : in std_logic;
    o_data_clk  : out std_logic
 );
end component ADC_readout_3;

component clk_monitor is
  Generic(
  freq_clk_fix : integer := 100000000;
  size_counter : integer :=15;
  max_count : integer := 8191 --x1fff 13 bits
  );
  Port ( 
    i_nrst : in std_logic;
  clk_in : in std_logic; --clk to fix freq
  clk_monitor_in : in std_logic; --clk to be monitorized
  cnt_out : out std_logic_vector(size_counter downto 0) --count output
  );
end component clk_monitor;

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 1;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 4
	signal slv_reg0	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg1	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg2	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	: std_logic;



-------------User signals----------

-- Interface with module       
  signal       write_reg    : STD_LOGIC;
  signal       adc_config   : STD_LOGIC;
  signal       read_reg     : STD_LOGIC;
  signal       wr_value     : STD_LOGIC_VECTOR (15 downto 0);
  signal       pointer_tbr  : STD_LOGIC_VECTOR (7 downto 0);
  signal       rd_value     : STD_LOGIC_VECTOR (15 downto 0);
  signal       ready        : STD_LOGIC;
  
  -- Hardware signals    
  signal         MISO_i          : std_logic;        
  signal         MOSI_i          : std_logic;
  signal         SCLK_i          : std_logic;
  signal         nCS_i           : std_logic;
  signal         ADC_nrst_i      : std_logic;
  signal core_state_i   : STD_LOGIC_VECTOR (1 downto 0);
  signal action_state_i : std_logic_vector (1 DOWNTO 0);  --for debug purpose
  signal i_S_AXI_ARESETN : std_logic;

  signal ADCLK_cnt : std_logic_vector (15 downto 0);
  signal LCLK_cnt : std_logic_vector (15 downto 0);


begin
	-- I/O Connections assignments
    i_S_AXI_ARESETN <= not S_AXI_ARESETN;

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	      aw_en <= '1';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	        axi_awready <= '1';
	        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
	            aw_en <= '1';
	        	axi_awready <= '0';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      slv_reg0 <= (others => '0');
	      slv_reg1 <= (others => '0');
	      slv_reg2 <= (others => '0');
	      slv_reg3 <= (others => '0');
	    else
	      loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	      if (slv_reg_wren = '1') then
	        case loc_addr is
	          when b"00" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 0
	                slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"01" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 1
	                slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"10" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 2
	                slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when b"11" =>
	            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
	              if ( S_AXI_WSTRB(byte_index) = '1' ) then
	                -- Respective byte enables are asserted as per write strobes                   
	                -- slave registor 3
	                slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
	              end if;
	            end loop;
	          when others =>
	            slv_reg0 <= slv_reg0;
	            slv_reg1 <= slv_reg1;
	            slv_reg2 <= slv_reg2;
	            slv_reg3 <= slv_reg3;
	        end case;
	      else
	             wr_value    <= slv_reg1 (15 downto 0);  -- value
                 pointer_tbr  <= slv_reg1 (23 downto 16);  -- pointer to register
                 write_reg <= slv_reg0(1);
	             --slv_reg3 <= LCLK_cnt & ADCLK_cnt;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"00" =>
	        reg_data_out <= slv_reg0;
	      when b"01" =>
	        reg_data_out <= slv_reg1;
	      when b"10" =>
	        reg_data_out <= slv_reg2;
	      when b"11" =>
	        reg_data_out <= slv_reg3;
	      when others =>
	        reg_data_out  <= (others => '0');
	    end case;
	end process; 

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	        -- When there is a valid read address (S_AXI_ARVALID) with 
	        -- acceptance of read address by the slave (axi_arready), 
	        -- output the read dada 
	        -- Read address mux
	          axi_rdata <= reg_data_out;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;


	-- Add user logic here
	
	
	MISO_i <= i_MISO;
      o_MOSI <= MOSI_i;
      o_SCLK <= SCLK_i;
      o_nCS <= nCS_i;
      o_ADC_nrst <= ADC_nrst_i;  
    
      o_debug (0) <= ready;
      o_debug (1) <= adc_config;
      o_debug (2) <= write_reg;
      o_debug (3) <= read_reg;
      o_debug (4) <= MISO_i;
      o_debug (5) <= MOSI_i;
      o_debug (6) <= SCLK_i;
      o_debug (7) <= nCS_i;
      o_debug (8) <= core_state_i(0);
      o_debug (10 downto 9) <= action_state_i;
      o_debug (11) <= ADC_nrst_i;
    
     
      
Inst_ADC_readout_12bit: ADC_readout_3
      Generic map(
      FRAME_PATTERN => FRAME_PATTERN
      )
      Port map (
      sys_clk       => S_AXI_ACLK,
      i_ADclk        => i_ADclk,
      --i_ADclk_n        => i_ADclk_n,
      i_Lclk  => i_Lclk,
      --i_Lclk_n  => i_Lclk_n,
      i_ch0_p     => i_data_in_ch0_p,
      i_ch0_n     => i_data_in_ch0_n,
      i_ch1_p     => i_data_in_ch1_p,
      i_ch1_n     => i_data_in_ch1_n,
      i_ch2_p     => i_data_in_ch2_p,
      i_ch2_n     => i_data_in_ch2_n,
      i_ch3_p     => i_data_in_ch3_p,
      i_ch3_n     => i_data_in_ch3_n,
      i_ch4_p     => i_data_in_ch4_p,
      i_ch4_n     => i_data_in_ch4_n,
      i_ch5_p     => i_data_in_ch5_p,
      i_ch5_n     => i_data_in_ch5_n,
      i_ch6_p     => i_data_in_ch6_p,
      i_ch6_n     => i_data_in_ch6_n,
      i_ch7_p     => i_data_in_ch7_p,
      i_ch7_n     => i_data_in_ch7_n,
      o_ch0     => o_data_out_ch0,
      o_ch1     => o_data_out_ch1,
      o_ch2     => o_data_out_ch2,
      o_ch3     => o_data_out_ch3,
      o_ch4     => o_data_out_ch4,
      o_ch5     => o_data_out_ch5,
      o_ch6     => o_data_out_ch6,
      o_ch7     => o_data_out_ch7,
    
      i_rst       => i_S_AXI_ARESETN,
      o_data_clk  => o_data_clk
     );
    
      Inst_ADC: ADC_ctrl
      Port map ( 
            sys_clk      => S_AXI_ACLK,
            sys_rst      => i_S_AXI_ARESETN,
    
        -- Interface with module       
               write_reg    => write_reg,
               adc_config   => adc_config,
               read_reg     => read_reg,
               wr_value     => wr_value,
               pointer_tbr  => pointer_tbr,
               rd_value     => rd_value,
               ready        => ready,
                      
        -- Hardware signals    
               MISO         => MISO_i,
               MOSI         => MOSI_i,
               SCLK         => SCLK_i,
               nCS          => nCS_i,
               ADC_nrst     => ADC_nrst_i,
        -- debugging
               core_state   => core_state_i,
               action_state => action_state_i
        
        );
        
        
--        monitor_ADCLK: clk_monitor
--        port map
--        (
--            i_nrst => '1',
--            clk_in => S_AXI_ACLK,
--            clk_monitor_in => i_ADclk,
--            cnt_out => ADCLK_cnt
--        );
--        monitor_LCLK: clk_monitor
--                port map
--                (   
--                    i_nrst => '1',
--                    clk_in => S_AXI_ACLK,
--                    clk_monitor_in => i_Lclk,
--                    cnt_out => LCLK_cnt
--                );
        
	-- User logic ends

end arch_imp;
