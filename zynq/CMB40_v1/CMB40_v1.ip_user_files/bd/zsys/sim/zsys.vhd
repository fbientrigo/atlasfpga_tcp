--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
--Date        : Fri Dec 13 18:51:52 2024
--Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
--Command     : generate_target zsys.bd
--Design      : zsys
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_imp_KCKAR9 is
  port (
    ADC_MISO : in STD_LOGIC;
    ADC_MOSI : out STD_LOGIC;
    ADC_SCLK : out STD_LOGIC;
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI1_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_ADclk : in STD_LOGIC;
    i_DRS4_DWRITEn : in STD_LOGIC;
    i_Lclk : in STD_LOGIC;
    i_next_fifo_full : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_stop_cell : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_stop_cell_ready : in STD_LOGIC;
    i_veto : in STD_LOGIC;
    o_Lclk : out STD_LOGIC;
    o_ascii : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_busy : out STD_LOGIC;
    o_data_clk : out STD_LOGIC;
    o_outfifo_wr_en : out STD_LOGIC;
    o_wr_fifo_en : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end ADC_imp_KCKAR9;

architecture STRUCTURE of ADC_imp_KCKAR9 is
  component zsys_mapper_0_0 is
  port (
    i_in_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_in_7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_out_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_4 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_5 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_6 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_out_7 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_mapper_0_0;
  component zsys_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 96 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 96 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_fifo_generator_0_0;
  component zsys_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_xlconstant_1_0;
  component zsys_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_xlconstant_1_1;
  component zsys_xlconstant_2_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlconstant_2_1;
  component zsys_ADC_readout_buff_0_0 is
  port (
    i_ADclk : in STD_LOGIC;
    i_Lclk : in STD_LOGIC;
    i_ADC_ch_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_ADC_ch_n : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_ADclk : out STD_LOGIC;
    o_Lclk : out STD_LOGIC;
    o_ADC_ch0_p : out STD_LOGIC;
    o_ADC_ch0_n : out STD_LOGIC;
    o_ADC_ch1_p : out STD_LOGIC;
    o_ADC_ch1_n : out STD_LOGIC;
    o_ADC_ch2_p : out STD_LOGIC;
    o_ADC_ch2_n : out STD_LOGIC;
    o_ADC_ch3_p : out STD_LOGIC;
    o_ADC_ch3_n : out STD_LOGIC;
    o_ADC_ch4_p : out STD_LOGIC;
    o_ADC_ch4_n : out STD_LOGIC;
    o_ADC_ch5_p : out STD_LOGIC;
    o_ADC_ch5_n : out STD_LOGIC;
    o_ADC_ch6_p : out STD_LOGIC;
    o_ADC_ch6_n : out STD_LOGIC;
    o_ADC_ch7_p : out STD_LOGIC;
    o_ADC_ch7_n : out STD_LOGIC
  );
  end component zsys_ADC_readout_buff_0_0;
  component zsys_ROController_0_0 is
  port (
    sys_clk : in STD_LOGIC;
    i_data_clk : in STD_LOGIC;
    i_data_ch0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch3 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_data_ch7 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rst : in STD_LOGIC;
    i_veto : in STD_LOGIC;
    i_trigger : in STD_LOGIC;
    i_DRS4_DWRITEn : in STD_LOGIC;
    o_busy : out STD_LOGIC;
    i_post_trig_wind : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_pre_trig_wind : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_trig_RO_end : out STD_LOGIC;
    i_stop_cell_ready : in STD_LOGIC;
    i_stop_cell : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_wr_fifo_data : out STD_LOGIC_VECTOR ( 96 downto 0 );
    o_wr_fifo_en : out STD_LOGIC;
    i_wr_fifo_full : in STD_LOGIC;
    o_wr_fifo_clk : out STD_LOGIC;
    i_rd_fifo_data : in STD_LOGIC_VECTOR ( 96 downto 0 );
    o_rd_fifo_en : out STD_LOGIC;
    i_rd_fifo_empty : in STD_LOGIC;
    o_rd_fifo_clk : out STD_LOGIC;
    i_rd_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_outfifo_wr_en : out STD_LOGIC;
    i_next_fifo_full : in STD_LOGIC;
    o_ascii : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_send_data_control_debug_states : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_read_proc_st_debug_states : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ro_proc_st_debug_states : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component zsys_ROController_0_0;
  component zsys_util_vector_logic_0_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_util_vector_logic_0_2;
  component zsys_AXI_ADC_1_0 is
  port (
    i_MISO : in STD_LOGIC;
    o_MOSI : out STD_LOGIC;
    o_SCLK : out STD_LOGIC;
    o_nCS : out STD_LOGIC;
    o_ADC_nrst : out STD_LOGIC;
    o_debug : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_ADclk : in STD_LOGIC;
    i_Lclk : in STD_LOGIC;
    i_data_in_ch0_p : in STD_LOGIC;
    i_data_in_ch0_n : in STD_LOGIC;
    i_data_in_ch1_p : in STD_LOGIC;
    i_data_in_ch1_n : in STD_LOGIC;
    i_data_in_ch2_p : in STD_LOGIC;
    i_data_in_ch2_n : in STD_LOGIC;
    i_data_in_ch3_p : in STD_LOGIC;
    i_data_in_ch3_n : in STD_LOGIC;
    i_data_in_ch4_p : in STD_LOGIC;
    i_data_in_ch4_n : in STD_LOGIC;
    i_data_in_ch5_p : in STD_LOGIC;
    i_data_in_ch5_n : in STD_LOGIC;
    i_data_in_ch6_p : in STD_LOGIC;
    i_data_in_ch6_n : in STD_LOGIC;
    i_data_in_ch7_p : in STD_LOGIC;
    i_data_in_ch7_n : in STD_LOGIC;
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_clk : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component zsys_AXI_ADC_1_0;
  signal ADC_MISO_1 : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch0_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch0_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch1_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch1_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch2_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch2_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch3_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch3_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch4_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch4_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch5_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch5_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch6_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch6_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch7_n : STD_LOGIC;
  signal ADC_readout_buff_0_o_ADC_ch7_p : STD_LOGIC;
  signal ADC_readout_buff_0_o_Lclk : STD_LOGIC;
  signal AXI_ADC_0_o_data_clk : STD_LOGIC;
  signal AXI_ADC_1_o_MOSI : STD_LOGIC;
  signal AXI_ADC_1_o_SCLK : STD_LOGIC;
  signal AXI_ADC_1_o_data_out_ch0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_data_out_ch1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_data_out_ch2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_data_out_ch3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_data_out_ch4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_data_out_ch5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_data_out_ch6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_data_out_ch7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal AXI_ADC_1_o_debug : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal MUXOUT_N_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MUXOUT_P_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ROController_0_i_rd_fifo_RD_DATA : STD_LOGIC_VECTOR ( 96 downto 0 );
  signal ROController_0_o_ascii : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ROController_0_o_busy : STD_LOGIC;
  signal ROController_0_o_outfifo_wr_en : STD_LOGIC;
  signal ROController_0_o_rd_fifo_en : STD_LOGIC;
  signal ROController_0_o_wr_fifo_WR_DATA : STD_LOGIC_VECTOR ( 96 downto 0 );
  signal ROController_0_o_wr_fifo_clk : STD_LOGIC;
  signal ROController_0_o_wr_fifo_en : STD_LOGIC;
  signal S00_AXI1_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI1_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI1_1_ARREADY : STD_LOGIC;
  signal S00_AXI1_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI1_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI1_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI1_1_AWREADY : STD_LOGIC;
  signal S00_AXI1_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI1_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI1_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI1_1_BVALID : STD_LOGIC;
  signal S00_AXI1_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI1_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI1_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI1_1_RVALID : STD_LOGIC;
  signal S00_AXI1_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI1_1_WREADY : STD_LOGIC;
  signal S00_AXI1_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI1_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal fifo_generator_0_rd_data_count : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal i_ADclk_1 : STD_LOGIC;
  signal i_DRS4_DWRITEn_1 : STD_LOGIC;
  signal i_Lclk_1 : STD_LOGIC;
  signal i_next_fifo_full_1 : STD_LOGIC;
  signal i_rst_1 : STD_LOGIC;
  signal i_stop_cell_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_stop_cell_ready_1 : STD_LOGIC;
  signal i_veto_1 : STD_LOGIC;
  signal mapper_0_o_out_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_o_out_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_o_out_2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_o_out_3 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_o_out_4 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_o_out_5 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_o_out_6 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal mapper_0_o_out_7 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal o_read_proc_st_debug_states : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_ro_proc_st_debug_states : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal o_send_data_control_debug_states : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s00_axi_aresetn_1 : STD_LOGIC;
  signal s00_axi_ctrl_aclk_1 : STD_LOGIC;
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_AXI_ADC_1_o_ADC_nrst_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_ADC_1_o_data_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_ADC_1_o_nCS_UNCONNECTED : STD_LOGIC;
  signal NLW_ROController_0_o_rd_fifo_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_ROController_0_o_trig_RO_end_UNCONNECTED : STD_LOGIC;
  signal NLW_util_vector_logic_0_Res_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  ADC_MISO_1 <= ADC_MISO;
  ADC_MOSI <= AXI_ADC_1_o_MOSI;
  ADC_SCLK <= AXI_ADC_1_o_SCLK;
  MUXOUT_N_1(7 downto 0) <= MUXOUT_N(7 downto 0);
  MUXOUT_P_1(7 downto 0) <= MUXOUT_P(7 downto 0);
  S00_AXI1_1_ARADDR(31 downto 0) <= S00_AXI1_araddr(31 downto 0);
  S00_AXI1_1_ARPROT(2 downto 0) <= S00_AXI1_arprot(2 downto 0);
  S00_AXI1_1_ARVALID(0) <= S00_AXI1_arvalid(0);
  S00_AXI1_1_AWADDR(31 downto 0) <= S00_AXI1_awaddr(31 downto 0);
  S00_AXI1_1_AWPROT(2 downto 0) <= S00_AXI1_awprot(2 downto 0);
  S00_AXI1_1_AWVALID(0) <= S00_AXI1_awvalid(0);
  S00_AXI1_1_BREADY(0) <= S00_AXI1_bready(0);
  S00_AXI1_1_RREADY(0) <= S00_AXI1_rready(0);
  S00_AXI1_1_WDATA(31 downto 0) <= S00_AXI1_wdata(31 downto 0);
  S00_AXI1_1_WSTRB(3 downto 0) <= S00_AXI1_wstrb(3 downto 0);
  S00_AXI1_1_WVALID(0) <= S00_AXI1_wvalid(0);
  S00_AXI1_arready(0) <= S00_AXI1_1_ARREADY;
  S00_AXI1_awready(0) <= S00_AXI1_1_AWREADY;
  S00_AXI1_bresp(1 downto 0) <= S00_AXI1_1_BRESP(1 downto 0);
  S00_AXI1_bvalid(0) <= S00_AXI1_1_BVALID;
  S00_AXI1_rdata(31 downto 0) <= S00_AXI1_1_RDATA(31 downto 0);
  S00_AXI1_rresp(1 downto 0) <= S00_AXI1_1_RRESP(1 downto 0);
  S00_AXI1_rvalid(0) <= S00_AXI1_1_RVALID;
  S00_AXI1_wready(0) <= S00_AXI1_1_WREADY;
  i_ADclk_1 <= i_ADclk;
  i_DRS4_DWRITEn_1 <= i_DRS4_DWRITEn;
  i_Lclk_1 <= i_Lclk;
  i_next_fifo_full_1 <= i_next_fifo_full;
  i_rst_1 <= i_rst;
  i_stop_cell_1(9 downto 0) <= i_stop_cell(9 downto 0);
  i_stop_cell_ready_1 <= i_stop_cell_ready;
  i_veto_1 <= i_veto;
  o_Lclk <= ADC_readout_buff_0_o_Lclk;
  o_ascii(7 downto 0) <= ROController_0_o_ascii(7 downto 0);
  o_busy <= ROController_0_o_busy;
  o_data_clk <= AXI_ADC_0_o_data_clk;
  o_outfifo_wr_en <= ROController_0_o_outfifo_wr_en;
  o_wr_fifo_en <= ROController_0_o_wr_fifo_en;
  rd_data_count(11 downto 0) <= fifo_generator_0_rd_data_count(11 downto 0);
  s00_axi_aresetn_1 <= s00_axi_aresetn;
  s00_axi_ctrl_aclk_1 <= rd_clk;
ADC_readout_buff_0: component zsys_ADC_readout_buff_0_0
     port map (
      i_ADC_ch_n(7 downto 0) => MUXOUT_N_1(7 downto 0),
      i_ADC_ch_p(7 downto 0) => MUXOUT_P_1(7 downto 0),
      i_ADclk => i_ADclk_1,
      i_Lclk => i_Lclk_1,
      o_ADC_ch0_n => ADC_readout_buff_0_o_ADC_ch0_n,
      o_ADC_ch0_p => ADC_readout_buff_0_o_ADC_ch0_p,
      o_ADC_ch1_n => ADC_readout_buff_0_o_ADC_ch1_n,
      o_ADC_ch1_p => ADC_readout_buff_0_o_ADC_ch1_p,
      o_ADC_ch2_n => ADC_readout_buff_0_o_ADC_ch2_n,
      o_ADC_ch2_p => ADC_readout_buff_0_o_ADC_ch2_p,
      o_ADC_ch3_n => ADC_readout_buff_0_o_ADC_ch3_n,
      o_ADC_ch3_p => ADC_readout_buff_0_o_ADC_ch3_p,
      o_ADC_ch4_n => ADC_readout_buff_0_o_ADC_ch4_n,
      o_ADC_ch4_p => ADC_readout_buff_0_o_ADC_ch4_p,
      o_ADC_ch5_n => ADC_readout_buff_0_o_ADC_ch5_n,
      o_ADC_ch5_p => ADC_readout_buff_0_o_ADC_ch5_p,
      o_ADC_ch6_n => ADC_readout_buff_0_o_ADC_ch6_n,
      o_ADC_ch6_p => ADC_readout_buff_0_o_ADC_ch6_p,
      o_ADC_ch7_n => ADC_readout_buff_0_o_ADC_ch7_n,
      o_ADC_ch7_p => ADC_readout_buff_0_o_ADC_ch7_p,
      o_ADclk => AXI_ADC_0_o_data_clk,
      o_Lclk => ADC_readout_buff_0_o_Lclk
    );
AXI_ADC_1: component zsys_AXI_ADC_1_0
     port map (
      i_ADclk => AXI_ADC_0_o_data_clk,
      i_Lclk => ADC_readout_buff_0_o_Lclk,
      i_MISO => ADC_MISO_1,
      i_data_in_ch0_n => ADC_readout_buff_0_o_ADC_ch0_n,
      i_data_in_ch0_p => ADC_readout_buff_0_o_ADC_ch0_p,
      i_data_in_ch1_n => ADC_readout_buff_0_o_ADC_ch1_n,
      i_data_in_ch1_p => ADC_readout_buff_0_o_ADC_ch1_p,
      i_data_in_ch2_n => ADC_readout_buff_0_o_ADC_ch2_n,
      i_data_in_ch2_p => ADC_readout_buff_0_o_ADC_ch2_p,
      i_data_in_ch3_n => ADC_readout_buff_0_o_ADC_ch3_n,
      i_data_in_ch3_p => ADC_readout_buff_0_o_ADC_ch3_p,
      i_data_in_ch4_n => ADC_readout_buff_0_o_ADC_ch4_n,
      i_data_in_ch4_p => ADC_readout_buff_0_o_ADC_ch4_p,
      i_data_in_ch5_n => ADC_readout_buff_0_o_ADC_ch5_n,
      i_data_in_ch5_p => ADC_readout_buff_0_o_ADC_ch5_p,
      i_data_in_ch6_n => ADC_readout_buff_0_o_ADC_ch6_n,
      i_data_in_ch6_p => ADC_readout_buff_0_o_ADC_ch6_p,
      i_data_in_ch7_n => ADC_readout_buff_0_o_ADC_ch7_n,
      i_data_in_ch7_p => ADC_readout_buff_0_o_ADC_ch7_p,
      o_ADC_nrst => NLW_AXI_ADC_1_o_ADC_nrst_UNCONNECTED,
      o_MOSI => AXI_ADC_1_o_MOSI,
      o_SCLK => AXI_ADC_1_o_SCLK,
      o_data_clk => NLW_AXI_ADC_1_o_data_clk_UNCONNECTED,
      o_data_out_ch0(15 downto 0) => AXI_ADC_1_o_data_out_ch0(15 downto 0),
      o_data_out_ch1(15 downto 0) => AXI_ADC_1_o_data_out_ch1(15 downto 0),
      o_data_out_ch2(15 downto 0) => AXI_ADC_1_o_data_out_ch2(15 downto 0),
      o_data_out_ch3(15 downto 0) => AXI_ADC_1_o_data_out_ch3(15 downto 0),
      o_data_out_ch4(15 downto 0) => AXI_ADC_1_o_data_out_ch4(15 downto 0),
      o_data_out_ch5(15 downto 0) => AXI_ADC_1_o_data_out_ch5(15 downto 0),
      o_data_out_ch6(15 downto 0) => AXI_ADC_1_o_data_out_ch6(15 downto 0),
      o_data_out_ch7(15 downto 0) => AXI_ADC_1_o_data_out_ch7(15 downto 0),
      o_debug(11 downto 0) => AXI_ADC_1_o_debug(11 downto 0),
      o_nCS => NLW_AXI_ADC_1_o_nCS_UNCONNECTED,
      s00_axi_aclk => s00_axi_ctrl_aclk_1,
      s00_axi_araddr(3 downto 0) => S00_AXI1_1_ARADDR(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn_1,
      s00_axi_arprot(2 downto 0) => S00_AXI1_1_ARPROT(2 downto 0),
      s00_axi_arready => S00_AXI1_1_ARREADY,
      s00_axi_arvalid => S00_AXI1_1_ARVALID(0),
      s00_axi_awaddr(3 downto 0) => S00_AXI1_1_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => S00_AXI1_1_AWPROT(2 downto 0),
      s00_axi_awready => S00_AXI1_1_AWREADY,
      s00_axi_awvalid => S00_AXI1_1_AWVALID(0),
      s00_axi_bready => S00_AXI1_1_BREADY(0),
      s00_axi_bresp(1 downto 0) => S00_AXI1_1_BRESP(1 downto 0),
      s00_axi_bvalid => S00_AXI1_1_BVALID,
      s00_axi_rdata(31 downto 0) => S00_AXI1_1_RDATA(31 downto 0),
      s00_axi_rready => S00_AXI1_1_RREADY(0),
      s00_axi_rresp(1 downto 0) => S00_AXI1_1_RRESP(1 downto 0),
      s00_axi_rvalid => S00_AXI1_1_RVALID,
      s00_axi_wdata(31 downto 0) => S00_AXI1_1_WDATA(31 downto 0),
      s00_axi_wready => S00_AXI1_1_WREADY,
      s00_axi_wstrb(3 downto 0) => S00_AXI1_1_WSTRB(3 downto 0),
      s00_axi_wvalid => S00_AXI1_1_WVALID(0)
    );
ROController_0: component zsys_ROController_0_0
     port map (
      i_DRS4_DWRITEn => i_DRS4_DWRITEn_1,
      i_data_ch0(11 downto 0) => mapper_0_o_out_0(11 downto 0),
      i_data_ch1(11 downto 0) => mapper_0_o_out_1(11 downto 0),
      i_data_ch2(11 downto 0) => mapper_0_o_out_2(11 downto 0),
      i_data_ch3(11 downto 0) => mapper_0_o_out_3(11 downto 0),
      i_data_ch4(11 downto 0) => mapper_0_o_out_4(11 downto 0),
      i_data_ch5(11 downto 0) => mapper_0_o_out_5(11 downto 0),
      i_data_ch6(11 downto 0) => mapper_0_o_out_6(11 downto 0),
      i_data_ch7(11 downto 0) => mapper_0_o_out_7(11 downto 0),
      i_data_clk => AXI_ADC_0_o_data_clk,
      i_next_fifo_full => i_next_fifo_full_1,
      i_post_trig_wind(11 downto 0) => xlconstant_2_dout(11 downto 0),
      i_pre_trig_wind(11 downto 0) => xlconstant_1_dout(11 downto 0),
      i_rd_data_count(11 downto 0) => fifo_generator_0_rd_data_count(11 downto 0),
      i_rd_fifo_data(96 downto 0) => ROController_0_i_rd_fifo_RD_DATA(96 downto 0),
      i_rd_fifo_empty => fifo_generator_0_empty,
      i_rst => i_rst_1,
      i_stop_cell(9 downto 0) => i_stop_cell_1(9 downto 0),
      i_stop_cell_ready => i_stop_cell_ready_1,
      i_trigger => xlconstant_3_dout(0),
      i_veto => i_veto_1,
      i_wr_fifo_full => fifo_generator_0_full,
      o_ascii(7 downto 0) => ROController_0_o_ascii(7 downto 0),
      o_busy => ROController_0_o_busy,
      o_outfifo_wr_en => ROController_0_o_outfifo_wr_en,
      o_rd_fifo_clk => NLW_ROController_0_o_rd_fifo_clk_UNCONNECTED,
      o_rd_fifo_en => ROController_0_o_rd_fifo_en,
      o_read_proc_st_debug_states(3 downto 0) => o_read_proc_st_debug_states(3 downto 0),
      o_ro_proc_st_debug_states(2 downto 0) => o_ro_proc_st_debug_states(2 downto 0),
      o_send_data_control_debug_states(4 downto 0) => o_send_data_control_debug_states(4 downto 0),
      o_trig_RO_end => NLW_ROController_0_o_trig_RO_end_UNCONNECTED,
      o_wr_fifo_clk => ROController_0_o_wr_fifo_clk,
      o_wr_fifo_data(96 downto 0) => ROController_0_o_wr_fifo_WR_DATA(96 downto 0),
      o_wr_fifo_en => ROController_0_o_wr_fifo_en,
      sys_clk => s00_axi_ctrl_aclk_1
    );
fifo_generator_0: component zsys_fifo_generator_0_0
     port map (
      din(96 downto 0) => ROController_0_o_wr_fifo_WR_DATA(96 downto 0),
      dout(96 downto 0) => ROController_0_i_rd_fifo_RD_DATA(96 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_clk => s00_axi_ctrl_aclk_1,
      rd_data_count(11 downto 0) => fifo_generator_0_rd_data_count(11 downto 0),
      rd_en => ROController_0_o_rd_fifo_en,
      rst => i_rst_1,
      wr_clk => ROController_0_o_wr_fifo_clk,
      wr_en => ROController_0_o_wr_fifo_en
    );
mapper_0: component zsys_mapper_0_0
     port map (
      i_in_0(15 downto 0) => AXI_ADC_1_o_data_out_ch0(15 downto 0),
      i_in_1(15 downto 0) => AXI_ADC_1_o_data_out_ch1(15 downto 0),
      i_in_2(15 downto 0) => AXI_ADC_1_o_data_out_ch2(15 downto 0),
      i_in_3(15 downto 0) => AXI_ADC_1_o_data_out_ch3(15 downto 0),
      i_in_4(15 downto 0) => AXI_ADC_1_o_data_out_ch4(15 downto 0),
      i_in_5(15 downto 0) => AXI_ADC_1_o_data_out_ch5(15 downto 0),
      i_in_6(15 downto 0) => AXI_ADC_1_o_data_out_ch6(15 downto 0),
      i_in_7(15 downto 0) => AXI_ADC_1_o_data_out_ch7(15 downto 0),
      o_out_0(11 downto 0) => mapper_0_o_out_0(11 downto 0),
      o_out_1(11 downto 0) => mapper_0_o_out_1(11 downto 0),
      o_out_2(11 downto 0) => mapper_0_o_out_2(11 downto 0),
      o_out_3(11 downto 0) => mapper_0_o_out_3(11 downto 0),
      o_out_4(11 downto 0) => mapper_0_o_out_4(11 downto 0),
      o_out_5(11 downto 0) => mapper_0_o_out_5(11 downto 0),
      o_out_6(11 downto 0) => mapper_0_o_out_6(11 downto 0),
      o_out_7(11 downto 0) => mapper_0_o_out_7(11 downto 0)
    );
util_vector_logic_0: component zsys_util_vector_logic_0_2
     port map (
      Op1(11 downto 0) => mapper_0_o_out_0(11 downto 0),
      Op2(11 downto 0) => AXI_ADC_1_o_debug(11 downto 0),
      Res(11 downto 0) => NLW_util_vector_logic_0_Res_UNCONNECTED(11 downto 0)
    );
xlconstant_1: component zsys_xlconstant_1_0
     port map (
      dout(11 downto 0) => xlconstant_1_dout(11 downto 0)
    );
xlconstant_2: component zsys_xlconstant_1_1
     port map (
      dout(11 downto 0) => xlconstant_2_dout(11 downto 0)
    );
xlconstant_3: component zsys_xlconstant_2_1
     port map (
      dout(0) => xlconstant_3_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADC_refclk_OBUFDS_imp_3ZGGXD is
  port (
    ADC_refclk_1_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_1_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_2_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_2_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ADC_refclk_OBUFDS_imp_3ZGGXD;

architecture STRUCTURE of ADC_refclk_OBUFDS_imp_3ZGGXD is
  component zsys_util_ds_buf_1_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_1_1;
  component zsys_util_ds_buf_2_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_2_1;
  component zsys_util_ds_buf_4_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_4_0;
  component zsys_util_ds_buf_4_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_4_1;
  component zsys_util_ds_buf_4_2 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_4_2;
  signal DRS4_firmware_0_o_srclk_R2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_4_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_4_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_5_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_5_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_6_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_6_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_7_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_7_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ADC_refclk_1_N(0) <= util_ds_buf_2_OBUF_DS_N(0);
  ADC_refclk_1_P(0) <= util_ds_buf_2_OBUF_DS_P(0);
  ADC_refclk_2_N(0) <= util_ds_buf_4_OBUF_DS_N(0);
  ADC_refclk_2_P(0) <= util_ds_buf_4_OBUF_DS_P(0);
  ADC_refclk_3_N(0) <= util_ds_buf_6_OBUF_DS_N(0);
  ADC_refclk_3_P(0) <= util_ds_buf_6_OBUF_DS_P(0);
  ADC_refclk_4_N(0) <= util_ds_buf_7_OBUF_DS_N(0);
  ADC_refclk_4_P(0) <= util_ds_buf_7_OBUF_DS_P(0);
  ADC_refclk_5_N(0) <= util_ds_buf_5_OBUF_DS_N(0);
  ADC_refclk_5_P(0) <= util_ds_buf_5_OBUF_DS_P(0);
  DRS4_firmware_0_o_srclk_R2(0) <= OBUF_IN(0);
util_ds_buf_2: component zsys_util_ds_buf_1_1
     port map (
      OBUF_DS_N(0) => util_ds_buf_2_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_2_OBUF_DS_P(0),
      OBUF_IN(0) => DRS4_firmware_0_o_srclk_R2(0)
    );
util_ds_buf_4: component zsys_util_ds_buf_2_1
     port map (
      OBUF_DS_N(0) => util_ds_buf_4_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_4_OBUF_DS_P(0),
      OBUF_IN(0) => DRS4_firmware_0_o_srclk_R2(0)
    );
util_ds_buf_5: component zsys_util_ds_buf_4_0
     port map (
      OBUF_DS_N(0) => util_ds_buf_5_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_5_OBUF_DS_P(0),
      OBUF_IN(0) => DRS4_firmware_0_o_srclk_R2(0)
    );
util_ds_buf_6: component zsys_util_ds_buf_4_1
     port map (
      OBUF_DS_N(0) => util_ds_buf_6_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_6_OBUF_DS_P(0),
      OBUF_IN(0) => DRS4_firmware_0_o_srclk_R2(0)
    );
util_ds_buf_7: component zsys_util_ds_buf_4_2
     port map (
      OBUF_DS_N(0) => util_ds_buf_7_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_7_OBUF_DS_P(0),
      OBUF_IN(0) => DRS4_firmware_0_o_srclk_R2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1E2MNJD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1E2MNJD;

architecture STRUCTURE of m00_couplers_imp_1E2MNJD is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_BI8OGV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_BI8OGV;

architecture STRUCTURE of m01_couplers_imp_BI8OGV is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_NM1K3O is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_NM1K3O;

architecture STRUCTURE of m02_couplers_imp_NM1K3O is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1JIM4QA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1JIM4QA;

architecture STRUCTURE of m03_couplers_imp_1JIM4QA is
  component zsys_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zsys_auto_cc_0;
  signal M_ACLK_1 : STD_LOGIC;
  signal M_ARESETN_1 : STD_LOGIC;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_cc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_cc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_cc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_cc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_cc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_cc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_cc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_cc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_cc_WVALID : STD_LOGIC;
begin
  M_ACLK_1 <= M_ACLK;
  M_ARESETN_1 <= M_ARESETN;
  M_AXI_araddr(3 downto 0) <= auto_cc_to_m03_couplers_ARADDR(3 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_cc_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_cc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(3 downto 0) <= auto_cc_to_m03_couplers_AWADDR(3 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_cc_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_cc_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_cc_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_cc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_cc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_cc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_cc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_cc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_cc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_cc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_cc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_cc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_cc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_cc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_cc_WREADY;
  auto_cc_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_cc_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_cc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_cc_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_cc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_cc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_cc_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_cc_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_cc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_cc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_cc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_cc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_cc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_cc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_cc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_cc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_cc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_cc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_cc_WVALID <= S_AXI_wvalid;
auto_cc: component zsys_auto_cc_0
     port map (
      m_axi_aclk => M_ACLK_1,
      m_axi_araddr(3 downto 0) => auto_cc_to_m03_couplers_ARADDR(3 downto 0),
      m_axi_aresetn => M_ARESETN_1,
      m_axi_arprot(2 downto 0) => auto_cc_to_m03_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m03_couplers_ARREADY,
      m_axi_arvalid => auto_cc_to_m03_couplers_ARVALID,
      m_axi_awaddr(3 downto 0) => auto_cc_to_m03_couplers_AWADDR(3 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m03_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m03_couplers_AWREADY,
      m_axi_awvalid => auto_cc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_cc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m03_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(3 downto 0) => m03_couplers_to_auto_cc_ARADDR(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arready => m03_couplers_to_auto_cc_ARREADY,
      s_axi_arvalid => m03_couplers_to_auto_cc_ARVALID,
      s_axi_awaddr(3 downto 0) => m03_couplers_to_auto_cc_AWADDR(3 downto 0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awready => m03_couplers_to_auto_cc_AWREADY,
      s_axi_awvalid => m03_couplers_to_auto_cc_AWVALID,
      s_axi_bready => m03_couplers_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_cc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_cc_RDATA(31 downto 0),
      s_axi_rready => m03_couplers_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_cc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_cc_WDATA(31 downto 0),
      s_axi_wready => m03_couplers_to_auto_cc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_cc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_cc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1C8MMYA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_1C8MMYA;

architecture STRUCTURE of m04_couplers_imp_1C8MMYA is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m04_couplers_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m04_couplers_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_DJQBPG is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_DJQBPG;

architecture STRUCTURE of m05_couplers_imp_DJQBPG is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_LA7KF3 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_LA7KF3;

architecture STRUCTURE of m06_couplers_imp_LA7KF3 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m06_couplers_to_m06_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m06_couplers_to_m06_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_1M6XGMH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_1M6XGMH;

architecture STRUCTURE of m07_couplers_imp_1M6XGMH is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARPROT : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWPROT : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC;
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m07_couplers_to_m07_couplers_ARADDR;
  M_AXI_arprot <= m07_couplers_to_m07_couplers_ARPROT;
  M_AXI_arvalid <= m07_couplers_to_m07_couplers_ARVALID;
  M_AXI_awaddr <= m07_couplers_to_m07_couplers_AWADDR;
  M_AXI_awprot <= m07_couplers_to_m07_couplers_AWPROT;
  M_AXI_awvalid <= m07_couplers_to_m07_couplers_AWVALID;
  M_AXI_bready <= m07_couplers_to_m07_couplers_BREADY;
  M_AXI_rready <= m07_couplers_to_m07_couplers_RREADY;
  M_AXI_wdata <= m07_couplers_to_m07_couplers_WDATA;
  M_AXI_wstrb <= m07_couplers_to_m07_couplers_WSTRB;
  M_AXI_wvalid <= m07_couplers_to_m07_couplers_WVALID;
  S_AXI_arready <= m07_couplers_to_m07_couplers_ARREADY;
  S_AXI_awready <= m07_couplers_to_m07_couplers_AWREADY;
  S_AXI_bresp <= m07_couplers_to_m07_couplers_BRESP;
  S_AXI_bvalid <= m07_couplers_to_m07_couplers_BVALID;
  S_AXI_rdata <= m07_couplers_to_m07_couplers_RDATA;
  S_AXI_rresp <= m07_couplers_to_m07_couplers_RRESP;
  S_AXI_rvalid <= m07_couplers_to_m07_couplers_RVALID;
  S_AXI_wready <= m07_couplers_to_m07_couplers_WREADY;
  m07_couplers_to_m07_couplers_ARADDR <= S_AXI_araddr;
  m07_couplers_to_m07_couplers_ARPROT <= S_AXI_arprot;
  m07_couplers_to_m07_couplers_ARREADY <= M_AXI_arready;
  m07_couplers_to_m07_couplers_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_m07_couplers_AWADDR <= S_AXI_awaddr;
  m07_couplers_to_m07_couplers_AWPROT <= S_AXI_awprot;
  m07_couplers_to_m07_couplers_AWREADY <= M_AXI_awready;
  m07_couplers_to_m07_couplers_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_m07_couplers_BREADY <= S_AXI_bready;
  m07_couplers_to_m07_couplers_BRESP <= M_AXI_bresp;
  m07_couplers_to_m07_couplers_BVALID <= M_AXI_bvalid;
  m07_couplers_to_m07_couplers_RDATA <= M_AXI_rdata;
  m07_couplers_to_m07_couplers_RREADY <= S_AXI_rready;
  m07_couplers_to_m07_couplers_RRESP <= M_AXI_rresp;
  m07_couplers_to_m07_couplers_RVALID <= M_AXI_rvalid;
  m07_couplers_to_m07_couplers_WDATA <= S_AXI_wdata;
  m07_couplers_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_m07_couplers_WSTRB <= S_AXI_wstrb;
  m07_couplers_to_m07_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_11IAFTR is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m08_couplers_imp_11IAFTR;

architecture STRUCTURE of m08_couplers_imp_11IAFTR is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m08_couplers_to_m08_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m08_couplers_to_m08_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m08_couplers_to_m08_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m08_couplers_to_m08_couplers_AWVALID(0);
  M_AXI_bready(0) <= m08_couplers_to_m08_couplers_BREADY(0);
  M_AXI_rready(0) <= m08_couplers_to_m08_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m08_couplers_to_m08_couplers_WVALID(0);
  S_AXI_arready(0) <= m08_couplers_to_m08_couplers_ARREADY(0);
  S_AXI_awready(0) <= m08_couplers_to_m08_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m08_couplers_to_m08_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m08_couplers_to_m08_couplers_RVALID(0);
  S_AXI_wready(0) <= m08_couplers_to_m08_couplers_WREADY(0);
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m08_couplers_to_m08_couplers_ARREADY(0) <= M_AXI_arready(0);
  m08_couplers_to_m08_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m08_couplers_to_m08_couplers_AWREADY(0) <= M_AXI_awready(0);
  m08_couplers_to_m08_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m08_couplers_to_m08_couplers_BREADY(0) <= S_AXI_bready(0);
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RREADY(0) <= S_AXI_rready(0);
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WREADY(0) <= M_AXI_wready(0);
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_VUXL0C is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_VUXL0C;

architecture STRUCTURE of s00_couplers_imp_VUXL0C is
  component zsys_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component zsys_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component zsys_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC;
    M07_AXI_arprot : out STD_LOGIC;
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC;
    M07_AXI_awprot : out STD_LOGIC;
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC;
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC;
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC;
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC;
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC;
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end zsys_ps7_0_axi_periph_0;

architecture STRUCTURE of zsys_ps7_0_axi_periph_0 is
  component zsys_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component zsys_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal M07_ACLK_1 : STD_LOGIC;
  signal M07_ARESETN_1 : STD_LOGIC;
  signal M08_ACLK_1 : STD_LOGIC;
  signal M08_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m07_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m08_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 3 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 20 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps7_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps7_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps7_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_ps7_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_ps7_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_ps7_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARADDR(3 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_ARVALID;
  M03_AXI_awaddr(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWADDR(3 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_ps7_0_axi_periph_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_ps7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_ps7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_ps7_0_axi_periph_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_ps7_0_axi_periph_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_ps7_0_axi_periph_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_ps7_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_ps7_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_ps7_0_axi_periph_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_ps7_0_axi_periph_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M06_AXI_arprot(2 downto 0) <= m06_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_ps7_0_axi_periph_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M06_AXI_awprot(2 downto 0) <= m06_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_ps7_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_ps7_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_ps7_0_axi_periph_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_ps7_0_axi_periph_WVALID;
  M07_ACLK_1 <= M07_ACLK;
  M07_ARESETN_1 <= M07_ARESETN;
  M07_AXI_araddr <= m07_couplers_to_ps7_0_axi_periph_ARADDR;
  M07_AXI_arprot <= m07_couplers_to_ps7_0_axi_periph_ARPROT;
  M07_AXI_arvalid <= m07_couplers_to_ps7_0_axi_periph_ARVALID;
  M07_AXI_awaddr <= m07_couplers_to_ps7_0_axi_periph_AWADDR;
  M07_AXI_awprot <= m07_couplers_to_ps7_0_axi_periph_AWPROT;
  M07_AXI_awvalid <= m07_couplers_to_ps7_0_axi_periph_AWVALID;
  M07_AXI_bready <= m07_couplers_to_ps7_0_axi_periph_BREADY;
  M07_AXI_rready <= m07_couplers_to_ps7_0_axi_periph_RREADY;
  M07_AXI_wdata <= m07_couplers_to_ps7_0_axi_periph_WDATA;
  M07_AXI_wstrb <= m07_couplers_to_ps7_0_axi_periph_WSTRB;
  M07_AXI_wvalid <= m07_couplers_to_ps7_0_axi_periph_WVALID;
  M08_ACLK_1 <= M08_ACLK;
  M08_ARESETN_1 <= M08_ARESETN;
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M08_AXI_arprot(2 downto 0) <= m08_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M08_AXI_arvalid(0) <= m08_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M08_AXI_awprot(2 downto 0) <= m08_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M08_AXI_awvalid(0) <= m08_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M08_AXI_bready(0) <= m08_couplers_to_ps7_0_axi_periph_BREADY(0);
  M08_AXI_rready(0) <= m08_couplers_to_ps7_0_axi_periph_RREADY(0);
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M08_AXI_wvalid(0) <= m08_couplers_to_ps7_0_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps7_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps7_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_ps7_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_ps7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_ps7_0_axi_periph_WREADY <= M04_AXI_wready;
  m05_couplers_to_ps7_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_ps7_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_ps7_0_axi_periph_WREADY <= M05_AXI_wready;
  m06_couplers_to_ps7_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_ps7_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_ps7_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_ps7_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_ps7_0_axi_periph_WREADY <= M06_AXI_wready;
  m07_couplers_to_ps7_0_axi_periph_ARREADY <= M07_AXI_arready;
  m07_couplers_to_ps7_0_axi_periph_AWREADY <= M07_AXI_awready;
  m07_couplers_to_ps7_0_axi_periph_BRESP <= M07_AXI_bresp;
  m07_couplers_to_ps7_0_axi_periph_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_ps7_0_axi_periph_RDATA <= M07_AXI_rdata;
  m07_couplers_to_ps7_0_axi_periph_RRESP <= M07_AXI_rresp;
  m07_couplers_to_ps7_0_axi_periph_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_ps7_0_axi_periph_WREADY <= M07_AXI_wready;
  m08_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M08_AXI_arready(0);
  m08_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M08_AXI_awready(0);
  m08_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_ps7_0_axi_periph_BVALID(0) <= M08_AXI_bvalid(0);
  m08_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_ps7_0_axi_periph_RVALID(0) <= M08_AXI_rvalid(0);
  m08_couplers_to_ps7_0_axi_periph_WREADY(0) <= M08_AXI_wready(0);
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1E2MNJD
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_BI8OGV
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_NM1K3O
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1JIM4QA
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARADDR(3 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWADDR(3 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1C8MMYA
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m04_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m04_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m04_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m04_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m04_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_DJQBPG
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m05_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m05_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m05_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m05_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m05_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wvalid => m05_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_LA7KF3
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m06_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m06_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m06_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m06_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m06_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m06_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_1M6XGMH
     port map (
      M_ACLK => M07_ACLK_1,
      M_ARESETN => M07_ARESETN_1,
      M_AXI_araddr => m07_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arprot => m07_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arready => m07_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m07_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m07_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awprot => m07_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awready => m07_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m07_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m07_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m07_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m07_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m07_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rready => m07_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m07_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m07_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m07_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wready => m07_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m07_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m07_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m07_couplers_ARADDR(224),
      S_AXI_arprot => xbar_to_m07_couplers_ARPROT(21),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr => xbar_to_m07_couplers_AWADDR(224),
      S_AXI_awprot => xbar_to_m07_couplers_AWPROT(21),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp => xbar_to_m07_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata => xbar_to_m07_couplers_RDATA,
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp => xbar_to_m07_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata => xbar_to_m07_couplers_WDATA(224),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m07_couplers_WSTRB(28),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_11IAFTR
     port map (
      M_ACLK => M08_ACLK_1,
      M_ARESETN => M08_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m08_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m08_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m08_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m08_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m08_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m08_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m08_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m08_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m08_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m08_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m08_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m08_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m08_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m08_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m08_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m08_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arprot(2 downto 0) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      S_AXI_arready(0) => xbar_to_m08_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awprot(2 downto 0) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      S_AXI_awready(0) => xbar_to_m08_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bready(0) => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m08_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m08_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m08_couplers_WDATA(287 downto 256),
      S_AXI_wready(0) => xbar_to_m08_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      S_AXI_wvalid(0) => xbar_to_m08_couplers_WVALID(8)
    );
s00_couplers: entity work.s00_couplers_imp_VUXL0C
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component zsys_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => NLW_xbar_m_axi_arprot_UNCONNECTED(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY(0),
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => NLW_xbar_m_axi_awprot_UNCONNECTED(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY(0),
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15) => xbar_to_m07_couplers_BRESP,
      m_axi_bresp(14) => xbar_to_m07_couplers_BRESP,
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID(0),
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(287 downto 256) => xbar_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rdata(255) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(254) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(253) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(252) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(251) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(250) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(249) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(248) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(247) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(246) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(245) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(244) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(243) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(242) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(241) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(240) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(239) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(238) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(237) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(236) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(235) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(234) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(233) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(232) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(231) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(230) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(229) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(228) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(227) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(226) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(225) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(224) => xbar_to_m07_couplers_RDATA,
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15) => xbar_to_m07_couplers_RRESP,
      m_axi_rresp(14) => xbar_to_m07_couplers_RRESP,
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID(0),
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(287 downto 256) => xbar_to_m08_couplers_WDATA(287 downto 256),
      m_axi_wdata(255 downto 224) => xbar_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY(0),
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(35 downto 32) => xbar_to_m08_couplers_WSTRB(35 downto 32),
      m_axi_wstrb(31 downto 28) => xbar_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => NLW_xbar_m_axi_wstrb_UNCONNECTED(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- DRS_nRESET, o_denable
  -- Signals are controlled by CPLD
  entity zsys is
  port (
    ADCLK_MUX_N : in STD_LOGIC;
    ADCLK_MUX_P : in STD_LOGIC;
    ADC_MISO : in STD_LOGIC;
    ADC_MOSI : out STD_LOGIC;
    ADC_SCLK : out STD_LOGIC;
    ADC_refclk_1_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_1_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_2_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_2_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_3_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_4_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_refclk_5_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    B0_TRG : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CPLD_MISO : in STD_LOGIC;
    CPLD_nCS : in STD_LOGIC;
    CSR_MOSI : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_SCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_SCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    CSR_nCS : out STD_LOGIC_VECTOR ( 0 to 0 );
    DAC_nCLR : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DRS_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DRS_DTAP0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DTAP4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_DWRITE : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRS_REFCLK_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_REFCLK_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    DRS_RSLOAD : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRS_SRCLK : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DRS_SRIN : out STD_LOGIC;
    DRS_SROUT : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Elink_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_clk_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    Elink_clk_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    I2C_0_scl_i : in STD_LOGIC;
    I2C_0_scl_o : out STD_LOGIC;
    I2C_0_scl_t : out STD_LOGIC;
    I2C_0_sda_i : in STD_LOGIC;
    I2C_0_sda_o : out STD_LOGIC;
    I2C_0_sda_t : out STD_LOGIC;
    LCLK_MUX_N : in STD_LOGIC;
    LCLK_MUX_P : in STD_LOGIC;
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUX_SEL : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute core_generation_info : string;
  attribute core_generation_info of zsys : entity is "zsys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zsys,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=85,numReposBlks=72,numNonXlnxBlks=0,numHierBlks=13,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=16,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=34,da_board_cnt=3,da_clkrst_cnt=16,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of zsys : entity is "zsys.hwdef";
end zsys;

architecture STRUCTURE of zsys is
  component zsys_reset_init_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : out STD_LOGIC;
    input_start : in STD_LOGIC
  );
  end component zsys_reset_init_0_0;
  component zsys_M1to5_0_0 is
  port (
    in1 : in STD_LOGIC;
    out5 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component zsys_M1to5_0_0;
  component zsys_M1to5_0_1 is
  port (
    in1 : in STD_LOGIC;
    out5 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component zsys_M1to5_0_1;
  component zsys_M1to5_0_2 is
  port (
    in1 : in STD_LOGIC;
    out5 : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component zsys_M1to5_0_2;
  component zsys_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component zsys_axi_gpio_0_0;
  component zsys_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_c_counter_binary_0_0;
  component zsys_fit_timer_0_0 is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Interrupt : out STD_LOGIC
  );
  end component zsys_fit_timer_0_0;
  component zsys_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_proc_sys_reset_0_0;
  component zsys_processing_system7_0_0 is
  port (
    WDT_RST_OUT : out STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component zsys_processing_system7_0_0;
  component zsys_rst_ps7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_rst_ps7_0_100M_0;
  component zsys_rst_ps7_0_100M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_rst_ps7_0_100M_1;
  component zsys_util_ds_buf_2_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_2_0;
  component zsys_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_vector_logic_0_0;
  component zsys_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_vector_logic_0_1;
  component zsys_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component zsys_xlconcat_0_0;
  component zsys_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component zsys_xlconcat_1_0;
  component zsys_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlconstant_0_0;
  component zsys_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_0_1;
  component zsys_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_0_2;
  component zsys_xlslice_10_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_10_0;
  component zsys_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_1_0;
  component zsys_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component zsys_xlslice_2_0;
  component zsys_xlslice_2_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component zsys_xlslice_2_1;
  component zsys_util_ds_buf_3_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_3_1;
  component zsys_Signal_sel_1_0 is
  port (
    Mux_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    O : out STD_LOGIC
  );
  end component zsys_Signal_sel_1_0;
  component zsys_util_ds_buf_0_1 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_0_1;
  component zsys_enable_signal_0_0 is
  port (
    signal_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_enable_signal_0_0;
  component zsys_xlslice_12to14_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_12to14_0;
  component zsys_xlslice_3to3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_3to3_0;
  component zsys_fifo8b_2_axis_0_0 is
  port (
    i_fifo_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_fifo_full : out STD_LOGIC;
    i_fifo_we : in STD_LOGIC;
    i_sending : in STD_LOGIC;
    o_fifo_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_force_send : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  end component zsys_fifo8b_2_axis_0_0;
  component zsys_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component zsys_xlconcat_1_1;
  component zsys_util_ds_buf_ADCLK_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_ADCLK_0;
  component zsys_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component zsys_c_counter_binary_0_1;
  component zsys_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component zsys_axi_gpio_1_0;
  component zsys_xlslice_2_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component zsys_xlslice_2_2;
  component zsys_delay_module_0_0 is
  port (
    delay_sel : in STD_LOGIC_VECTOR ( 9 downto 0 );
    signal_in : in STD_LOGIC;
    signal_out : out STD_LOGIC
  );
  end component zsys_delay_module_0_0;
  component zsys_delay_module_0_1 is
  port (
    delay_sel : in STD_LOGIC_VECTOR ( 9 downto 0 );
    signal_in : in STD_LOGIC;
    signal_out : out STD_LOGIC
  );
  end component zsys_delay_module_0_1;
  component zsys_Vibufds_diff_out_0_0 is
  port (
    MUXOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUXOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_MUXOUT_P : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_MUXOUT_N : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component zsys_Vibufds_diff_out_0_0;
  component zsys_xlconstant_1_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlconstant_1_2;
  component zsys_xlconcat_3_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component zsys_xlconcat_3_0;
  component zsys_xlslice_3to3_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_3to3_1;
  component zsys_DRS_A_test_0_0 is
  port (
    A_vec : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_RSRLOAD : in STD_LOGIC;
    i_SRIN : in STD_LOGIC;
    i_dwrite : in STD_LOGIC;
    i_SRCLK : in STD_LOGIC;
    i_en_test : in STD_LOGIC;
    i_nrst : in STD_LOGIC;
    o_A_vec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_RSRLOAD : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_SRCLK : out STD_LOGIC;
    o_SRIN : out STD_LOGIC;
    i_clk : in STD_LOGIC
  );
  end component zsys_DRS_A_test_0_0;
  component zsys_DRS4_firmware_1_0 is
  port (
    o_nReset : out STD_LOGIC;
    o_ROFS : out STD_LOGIC;
    clk_drs4 : in STD_LOGIC;
    o_A3_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_srclk : out STD_LOGIC;
    o_srin : out STD_LOGIC;
    o_rsrload : out STD_LOGIC;
    o_denable : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_refclk_p : out STD_LOGIC;
    i_drs4_trigger : in STD_LOGIC;
    i_SROUT : in STD_LOGIC;
    i_PLLLCK : in STD_LOGIC;
    o_stop_cell : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_stop_cell_ready : out STD_LOGIC;
    o_srclk_adc : out STD_LOGIC;
    o_dwrite_for_trigger : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  end component zsys_DRS4_firmware_1_0;
  component zsys_CPLD_ctrl_0_0 is
  port (
    CPLD_Mux_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CPLD_SPI_MOSI : out STD_LOGIC;
    CPLD_SPI_SCLK : out STD_LOGIC;
    CPLD_SPI_nCS : out STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    nCS_CPLD : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component zsys_CPLD_ctrl_0_0;
  component zsys_clk_mon_0_0 is
  port (
    i_DTAP : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component zsys_clk_mon_0_0;
  component zsys_dac_i2c_0_0 is
  port (
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    Fail_ACL_i2c : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component zsys_dac_i2c_0_0;
  component zsys_Elink_output_0_0 is
  port (
    clk : in STD_LOGIC;
    lvds : out STD_LOGIC
  );
  end component zsys_Elink_output_0_0;
  component zsys_util_ds_buf_0_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_0_0;
  component zsys_util_ds_buf_0_2 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_util_ds_buf_0_2;
  component zsys_xlslice_3to3_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zsys_xlslice_3to3_2;
  component zsys_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_sg_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component zsys_axi_dma_0_0;
  component zsys_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component zsys_axi_smc_0;
  component zsys_trigger_logic_0_0 is
  port (
    sys_clk : in STD_LOGIC;
    areset : in STD_LOGIC;
    i_busy : in STD_LOGIC;
    i_in_trigger : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_soft_trigger : in STD_LOGIC;
    i_trigg_select_function : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_trigg_mask : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_en_soft_trigger : in STD_LOGIC;
    o_out_trigger : out STD_LOGIC
  );
  end component zsys_trigger_logic_0_0;
  component zsys_util_vector_logic_2_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_util_vector_logic_2_0;
  component zsys_Lvds_Rx_top_0_0 is
  port (
    SysRst : in STD_LOGIC;
    Lclk : in STD_LOGIC;
    AdClk : in STD_LOGIC;
    DataInChP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DataInChN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AnalyseOut : out STD_LOGIC;
    ChOut_0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ChOut_1 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component zsys_Lvds_Rx_top_0_0;
  signal ADCLK_MUX_N_1 : STD_LOGIC;
  signal ADCLK_MUX_P_1 : STD_LOGIC;
  signal ADC_ADC_MOSI : STD_LOGIC;
  signal ADC_ADC_SCLK : STD_LOGIC;
  signal ADC_MISO_1 : STD_LOGIC;
  signal ADC_o_ascii : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ADC_o_busy : STD_LOGIC;
  signal ADC_o_data_clk : STD_LOGIC;
  signal ADC_o_outfifo_wr_en : STD_LOGIC;
  signal ADC_refclk_OBUFDS_OBUF_DS_N_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ADC_refclk_OBUFDS_OBUF_DS_N_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ADC_refclk_OBUFDS_OBUF_DS_N_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ADC_refclk_OBUFDS_OBUF_DS_P_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ADC_refclk_OBUFDS_OBUF_DS_P_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ADC_refclk_OBUFDS_OBUF_DS_P_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CPLD_MISO_1 : STD_LOGIC;
  signal CPLD_ctrl_0_CPLD_Mux_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal CPLD_ctrl_0_CPLD_SPI_MOSI : STD_LOGIC;
  signal CPLD_ctrl_0_CPLD_SPI_SCLK : STD_LOGIC;
  signal CPLD_ctrl_0_CPLD_SPI_nCS : STD_LOGIC;
  signal CPLD_nCS_1 : STD_LOGIC;
  signal DRS4_firmware_0_o_srclk_R2 : STD_LOGIC;
  signal DRS4_firmware_1_o_A3_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DRS4_firmware_1_o_dwrite : STD_LOGIC;
  signal DRS4_firmware_1_o_dwrite_for_trigger : STD_LOGIC;
  signal DRS4_firmware_1_o_refclk_p : STD_LOGIC;
  signal DRS4_firmware_1_o_rsrload : STD_LOGIC;
  signal DRS4_firmware_1_o_srclk : STD_LOGIC;
  signal DRS4_firmware_1_o_srin : STD_LOGIC;
  signal DRS4_firmware_1_o_stop_cell : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal DRS4_firmware_1_o_stop_cell_ready : STD_LOGIC;
  signal DRS_A_test_0_o_A_vec : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DRS_A_test_0_o_RSRLOAD : STD_LOGIC;
  signal DRS_A_test_0_o_SRCLK : STD_LOGIC;
  signal DRS_A_test_0_o_SRIN : STD_LOGIC;
  signal DRS_A_test_0_o_dwrite : STD_LOGIC;
  signal DRS_DTAP0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DRS_DTAP1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DRS_DTAP2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DRS_DTAP3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DRS_DTAP4_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DRS_SROUT_1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal LCLK_MUX_N_1 : STD_LOGIC;
  signal LCLK_MUX_P_1 : STD_LOGIC;
  signal Lvds_Rx_top_0_ChOut_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Lvds_Rx_top_0_ChOut_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal M1to5_0_out5 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal M1to5_1_out5 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal M1to5_2_out5 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal MUXOUT_N_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MUXOUT_P_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Net : STD_LOGIC;
  signal ROController_0_o_wr_fifo_en : STD_LOGIC;
  signal Signal_sel_0_O : STD_LOGIC;
  signal Vibufds_diff_out_0_o_MUXOUT_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Vibufds_diff_out_0_o_MUXOUT_P : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_SG_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_SG_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_SG_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_SG_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_SG_WVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_gpio_0_gpio2_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_gpio_1_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal c_counter_binary_1_Q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dac_i2c_0_DAC_I2C_SCL_I : STD_LOGIC;
  signal dac_i2c_0_DAC_I2C_SCL_O : STD_LOGIC;
  signal dac_i2c_0_DAC_I2C_SCL_T : STD_LOGIC;
  signal dac_i2c_0_DAC_I2C_SDA_I : STD_LOGIC;
  signal dac_i2c_0_DAC_I2C_SDA_O : STD_LOGIC;
  signal dac_i2c_0_DAC_I2C_SDA_T : STD_LOGIC;
  signal delay_module_0_signal_out : STD_LOGIC;
  signal delay_module_1_signal_out : STD_LOGIC;
  signal enable_signal_0_signal_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo8b_2_axis_0_M00_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo8b_2_axis_0_M00_AXIS_TLAST : STD_LOGIC;
  signal fifo8b_2_axis_0_M00_AXIS_TREADY : STD_LOGIC;
  signal fifo8b_2_axis_0_M00_AXIS_TVALID : STD_LOGIC;
  signal fifo_generator_0_rd_data_count : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fit_timer_0_Interrupt : STD_LOGIC;
  signal i_in_trigger_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_next_fifo_full_1 : STD_LOGIC;
  signal o_fifo_data_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK2 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK3 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M06_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M08_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_50M_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_FIFO_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_FIFO_100M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal trigger_logic_0_o_out_trigger : STD_LOGIC;
  signal util_ds_buf_0_BUFH_O : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal util_ds_buf_0_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_0_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_1_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_1_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_3_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_3_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_4_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_4_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_5_OBUF_DS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_5_OBUF_DS_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_ADCLK1_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_ADCLK_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_11_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_15_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlslice_2_Dout2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlslice_2to2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_3to3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3to4_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_DRS4_firmware_1_o_ROFS_UNCONNECTED : STD_LOGIC;
  signal NLW_DRS4_firmware_1_o_denable_UNCONNECTED : STD_LOGIC;
  signal NLW_DRS4_firmware_1_o_nReset_UNCONNECTED : STD_LOGIC;
  signal NLW_Elink_output_0_lvds_UNCONNECTED : STD_LOGIC;
  signal NLW_Lvds_Rx_top_0_AnalyseOut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dac_i2c_0_Fail_ACL_i2c_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo8b_2_axis_0_m00_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_WDT_RST_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ps7_0_axi_periph_M07_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M07_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_50M_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_50M_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_50M_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_50M_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_init_0_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_FIFO_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_FIFO_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_FIFO_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_util_vector_logic_2_Res_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute x_interface_info of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute x_interface_info of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute x_interface_info of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute x_interface_info of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute x_interface_info of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute x_interface_info of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute x_interface_info of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute x_interface_info of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute x_interface_info of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute x_interface_info of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute x_interface_info of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute x_interface_info of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute x_interface_info of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute x_interface_info of I2C_0_scl_i : signal is "xilinx.com:interface:iic:1.0 I2C_0 SCL_I";
  attribute x_interface_info of I2C_0_scl_o : signal is "xilinx.com:interface:iic:1.0 I2C_0 SCL_O";
  attribute x_interface_info of I2C_0_scl_t : signal is "xilinx.com:interface:iic:1.0 I2C_0 SCL_T";
  attribute x_interface_info of I2C_0_sda_i : signal is "xilinx.com:interface:iic:1.0 I2C_0 SDA_I";
  attribute x_interface_info of I2C_0_sda_o : signal is "xilinx.com:interface:iic:1.0 I2C_0 SDA_O";
  attribute x_interface_info of I2C_0_sda_t : signal is "xilinx.com:interface:iic:1.0 I2C_0 SDA_T";
  attribute x_interface_info of ADC_refclk_1_N : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_1_N CLK";
  attribute x_interface_parameter of ADC_refclk_1_N : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_1_N, CLK_DOMAIN zsys_util_ds_buf_1_1_OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_1_P : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_1_P CLK";
  attribute x_interface_parameter of ADC_refclk_1_P : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_1_P, CLK_DOMAIN zsys_util_ds_buf_1_1_OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_2_N : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_2_N CLK";
  attribute x_interface_parameter of ADC_refclk_2_N : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_2_N, CLK_DOMAIN zsys_util_ds_buf_2_1_OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_2_P : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_2_P CLK";
  attribute x_interface_parameter of ADC_refclk_2_P : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_2_P, CLK_DOMAIN zsys_util_ds_buf_2_1_OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_3_N : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_3_N CLK";
  attribute x_interface_parameter of ADC_refclk_3_N : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_3_N, CLK_DOMAIN zsys_util_ds_buf_4_1_OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_3_P : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_3_P CLK";
  attribute x_interface_parameter of ADC_refclk_3_P : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_3_P, CLK_DOMAIN zsys_util_ds_buf_4_1_OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_4_N : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_4_N CLK";
  attribute x_interface_parameter of ADC_refclk_4_N : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_4_N, CLK_DOMAIN zsys_util_ds_buf_4_2_OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_4_P : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_4_P CLK";
  attribute x_interface_parameter of ADC_refclk_4_P : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_4_P, CLK_DOMAIN zsys_util_ds_buf_4_2_OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_5_N : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_5_N CLK";
  attribute x_interface_parameter of ADC_refclk_5_N : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_5_N, CLK_DOMAIN zsys_util_ds_buf_4_0_OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ADC_refclk_5_P : signal is "xilinx.com:signal:clock:1.0 CLK.ADC_REFCLK_5_P CLK";
  attribute x_interface_parameter of ADC_refclk_5_P : signal is "XIL_INTERFACENAME CLK.ADC_REFCLK_5_P, CLK_DOMAIN zsys_util_ds_buf_4_0_OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of CSR_MOSI : signal is "xilinx.com:signal:clock:1.0 CLK.CSR_MOSI CLK";
  attribute x_interface_parameter of CSR_MOSI : signal is "XIL_INTERFACENAME CLK.CSR_MOSI, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of CSR_SCLK_N : signal is "xilinx.com:signal:clock:1.0 CLK.CSR_SCLK_N CLK";
  attribute x_interface_parameter of CSR_SCLK_N : signal is "XIL_INTERFACENAME CLK.CSR_SCLK_N, CLK_DOMAIN zsys_util_ds_buf_3_1_OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of CSR_SCLK_P : signal is "xilinx.com:signal:clock:1.0 CLK.CSR_SCLK_P CLK";
  attribute x_interface_parameter of CSR_SCLK_P : signal is "XIL_INTERFACENAME CLK.CSR_SCLK_P, CLK_DOMAIN zsys_util_ds_buf_3_1_OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of CSR_nCS : signal is "xilinx.com:signal:clock:1.0 CLK.CSR_NCS CLK";
  attribute x_interface_parameter of CSR_nCS : signal is "XIL_INTERFACENAME CLK.CSR_NCS, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute x_interface_parameter of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute x_interface_info of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute x_interface_info of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute x_interface_info of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute x_interface_info of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute x_interface_info of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute x_interface_info of DRS_REFCLK_N : signal is "xilinx.com:signal:clock:1.0 CLK.DRS_REFCLK_N CLK";
  attribute x_interface_parameter of DRS_REFCLK_N : signal is "XIL_INTERFACENAME CLK.DRS_REFCLK_N, CLK_DOMAIN zsys_util_ds_buf_2_0_OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of DRS_REFCLK_P : signal is "xilinx.com:signal:clock:1.0 CLK.DRS_REFCLK_P CLK";
  attribute x_interface_parameter of DRS_REFCLK_P : signal is "XIL_INTERFACENAME CLK.DRS_REFCLK_P, CLK_DOMAIN zsys_util_ds_buf_2_0_OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute x_interface_info of MUXOUT_N : signal is "xilinx.com:signal:data:1.0 DATA.MUXOUT_N DATA";
  attribute x_interface_parameter of MUXOUT_N : signal is "XIL_INTERFACENAME DATA.MUXOUT_N, LAYERED_METADATA undef";
  attribute x_interface_info of MUXOUT_P : signal is "xilinx.com:signal:data:1.0 DATA.MUXOUT_P DATA";
  attribute x_interface_parameter of MUXOUT_P : signal is "XIL_INTERFACENAME DATA.MUXOUT_P, LAYERED_METADATA undef";
begin
  ADCLK_MUX_N_1 <= ADCLK_MUX_N;
  ADCLK_MUX_P_1 <= ADCLK_MUX_P;
  ADC_MISO_1 <= ADC_MISO;
  ADC_MOSI <= ADC_ADC_MOSI;
  ADC_SCLK <= ADC_ADC_SCLK;
  ADC_refclk_1_N(0) <= util_ds_buf_2_OBUF_DS_N(0);
  ADC_refclk_1_P(0) <= util_ds_buf_2_OBUF_DS_P(0);
  ADC_refclk_2_N(0) <= util_ds_buf_4_OBUF_DS_N(0);
  ADC_refclk_2_P(0) <= util_ds_buf_4_OBUF_DS_P(0);
  ADC_refclk_3_N(0) <= ADC_refclk_OBUFDS_OBUF_DS_N_0(0);
  ADC_refclk_3_P(0) <= ADC_refclk_OBUFDS_OBUF_DS_P_0(0);
  ADC_refclk_4_N(0) <= ADC_refclk_OBUFDS_OBUF_DS_N_1(0);
  ADC_refclk_4_P(0) <= ADC_refclk_OBUFDS_OBUF_DS_P_1(0);
  ADC_refclk_5_N(0) <= ADC_refclk_OBUFDS_OBUF_DS_N_2(0);
  ADC_refclk_5_P(0) <= ADC_refclk_OBUFDS_OBUF_DS_P_2(0);
  CPLD_MISO_1 <= CPLD_MISO;
  CPLD_nCS_1 <= CPLD_nCS;
  CSR_MOSI(0) <= CPLD_ctrl_0_CPLD_SPI_MOSI;
  CSR_SCLK_N(0) <= util_ds_buf_5_OBUF_DS_N(0);
  CSR_SCLK_P(0) <= util_ds_buf_5_OBUF_DS_P(0);
  CSR_nCS(0) <= CPLD_ctrl_0_CPLD_SPI_nCS;
  DAC_nCLR(0) <= xlslice_5_Dout(0);
  DRS_A(3 downto 0) <= DRS_A_test_0_o_A_vec(3 downto 0);
  DRS_DTAP0_1(0) <= DRS_DTAP0(0);
  DRS_DTAP1_1(0) <= DRS_DTAP1(0);
  DRS_DTAP2_1(0) <= DRS_DTAP2(0);
  DRS_DTAP3_1(0) <= DRS_DTAP3(0);
  DRS_DTAP4_1(0) <= DRS_DTAP4(0);
  DRS_DWRITE(4 downto 0) <= M1to5_1_out5(4 downto 0);
  DRS_REFCLK_N(0) <= util_ds_buf_3_OBUF_DS_N(0);
  DRS_REFCLK_P(0) <= util_ds_buf_3_OBUF_DS_P(0);
  DRS_RSLOAD(4 downto 0) <= M1to5_2_out5(4 downto 0);
  DRS_SRCLK(4 downto 0) <= M1to5_0_out5(4 downto 0);
  DRS_SRIN <= DRS_A_test_0_o_SRIN;
  DRS_SROUT_1(4 downto 0) <= DRS_SROUT(4 downto 0);
  Elink_N(0) <= util_ds_buf_0_OBUF_DS_N(0);
  Elink_P(0) <= util_ds_buf_0_OBUF_DS_P(0);
  Elink_clk_N(0) <= util_ds_buf_1_OBUF_DS_N(0);
  Elink_clk_P(0) <= util_ds_buf_1_OBUF_DS_P(0);
  I2C_0_scl_o <= dac_i2c_0_DAC_I2C_SCL_O;
  I2C_0_scl_t <= dac_i2c_0_DAC_I2C_SCL_T;
  I2C_0_sda_o <= dac_i2c_0_DAC_I2C_SDA_O;
  I2C_0_sda_t <= dac_i2c_0_DAC_I2C_SDA_T;
  LCLK_MUX_N_1 <= LCLK_MUX_N;
  LCLK_MUX_P_1 <= LCLK_MUX_P;
  MUXOUT_N_1(7 downto 0) <= MUXOUT_N(7 downto 0);
  MUXOUT_P_1(7 downto 0) <= MUXOUT_P(7 downto 0);
  MUX_SEL(2 downto 0) <= CPLD_ctrl_0_CPLD_Mux_sel(2 downto 0);
  dac_i2c_0_DAC_I2C_SCL_I <= I2C_0_scl_i;
  dac_i2c_0_DAC_I2C_SDA_I <= I2C_0_sda_i;
  i_in_trigger_1(7 downto 0) <= B0_TRG(7 downto 0);
ADC: entity work.ADC_imp_KCKAR9
     port map (
      ADC_MISO => ADC_MISO_1,
      ADC_MOSI => ADC_ADC_MOSI,
      ADC_SCLK => ADC_ADC_SCLK,
      MUXOUT_N(7 downto 0) => Vibufds_diff_out_0_o_MUXOUT_N(7 downto 0),
      MUXOUT_P(7 downto 0) => Vibufds_diff_out_0_o_MUXOUT_P(7 downto 0),
      S00_AXI1_araddr(31 downto 0) => ps7_0_axi_periph_M08_AXI_ARADDR(31 downto 0),
      S00_AXI1_arprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_ARPROT(2 downto 0),
      S00_AXI1_arready(0) => ps7_0_axi_periph_M08_AXI_ARREADY(0),
      S00_AXI1_arvalid(0) => ps7_0_axi_periph_M08_AXI_ARVALID(0),
      S00_AXI1_awaddr(31 downto 0) => ps7_0_axi_periph_M08_AXI_AWADDR(31 downto 0),
      S00_AXI1_awprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_AWPROT(2 downto 0),
      S00_AXI1_awready(0) => ps7_0_axi_periph_M08_AXI_AWREADY(0),
      S00_AXI1_awvalid(0) => ps7_0_axi_periph_M08_AXI_AWVALID(0),
      S00_AXI1_bready(0) => ps7_0_axi_periph_M08_AXI_BREADY(0),
      S00_AXI1_bresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      S00_AXI1_bvalid(0) => ps7_0_axi_periph_M08_AXI_BVALID(0),
      S00_AXI1_rdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      S00_AXI1_rready(0) => ps7_0_axi_periph_M08_AXI_RREADY(0),
      S00_AXI1_rresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      S00_AXI1_rvalid(0) => ps7_0_axi_periph_M08_AXI_RVALID(0),
      S00_AXI1_wdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      S00_AXI1_wready(0) => ps7_0_axi_periph_M08_AXI_WREADY(0),
      S00_AXI1_wstrb(3 downto 0) => ps7_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      S00_AXI1_wvalid(0) => ps7_0_axi_periph_M08_AXI_WVALID(0),
      i_ADclk => util_ds_buf_ADCLK_IBUF_OUT(0),
      i_DRS4_DWRITEn => DRS4_firmware_1_o_dwrite_for_trigger,
      i_Lclk => util_ds_buf_ADCLK1_IBUF_OUT(0),
      i_next_fifo_full => i_next_fifo_full_1,
      i_rst => rst_FIFO_100M_peripheral_reset(0),
      i_stop_cell(9 downto 0) => DRS4_firmware_1_o_stop_cell(9 downto 0),
      i_stop_cell_ready => DRS4_firmware_1_o_stop_cell_ready,
      i_veto => xlslice_15_Dout(0),
      o_Lclk => Net,
      o_ascii(7 downto 0) => ADC_o_ascii(7 downto 0),
      o_busy => ADC_o_busy,
      o_data_clk => ADC_o_data_clk,
      o_outfifo_wr_en => ADC_o_outfifo_wr_en,
      o_wr_fifo_en => ROController_0_o_wr_fifo_en,
      rd_clk => processing_system7_0_FCLK_CLK1,
      rd_data_count(11 downto 0) => fifo_generator_0_rd_data_count(11 downto 0),
      s00_axi_aresetn => rst_FIFO_100M_peripheral_aresetn(0)
    );
ADC_refclk_OBUFDS: entity work.ADC_refclk_OBUFDS_imp_3ZGGXD
     port map (
      ADC_refclk_1_N(0) => util_ds_buf_2_OBUF_DS_N(0),
      ADC_refclk_1_P(0) => util_ds_buf_2_OBUF_DS_P(0),
      ADC_refclk_2_N(0) => util_ds_buf_4_OBUF_DS_N(0),
      ADC_refclk_2_P(0) => util_ds_buf_4_OBUF_DS_P(0),
      ADC_refclk_3_N(0) => ADC_refclk_OBUFDS_OBUF_DS_N_0(0),
      ADC_refclk_3_P(0) => ADC_refclk_OBUFDS_OBUF_DS_P_0(0),
      ADC_refclk_4_N(0) => ADC_refclk_OBUFDS_OBUF_DS_N_1(0),
      ADC_refclk_4_P(0) => ADC_refclk_OBUFDS_OBUF_DS_P_1(0),
      ADC_refclk_5_N(0) => ADC_refclk_OBUFDS_OBUF_DS_N_2(0),
      ADC_refclk_5_P(0) => ADC_refclk_OBUFDS_OBUF_DS_P_2(0),
      OBUF_IN(0) => enable_signal_0_signal_out(0)
    );
CPLD_ctrl_0: component zsys_CPLD_ctrl_0_0
     port map (
      CPLD_Mux_sel(2 downto 0) => CPLD_ctrl_0_CPLD_Mux_sel(2 downto 0),
      CPLD_SPI_MOSI => CPLD_ctrl_0_CPLD_SPI_MOSI,
      CPLD_SPI_SCLK => CPLD_ctrl_0_CPLD_SPI_SCLK,
      CPLD_SPI_nCS => CPLD_ctrl_0_CPLD_SPI_nCS,
      SPI_MISO => CPLD_MISO_1,
      nCS_CPLD => CPLD_nCS_1,
      s00_axi_aclk => processing_system7_0_FCLK_CLK1,
      s00_axi_araddr(3 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M04_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M04_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M04_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M04_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M04_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M04_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M04_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M04_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M04_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M04_AXI_WVALID
    );
DRS4_firmware_1: component zsys_DRS4_firmware_1_0
     port map (
      clk_drs4 => processing_system7_0_FCLK_CLK2,
      i_PLLLCK => xlconstant_0_dout(0),
      i_SROUT => Signal_sel_0_O,
      i_drs4_trigger => trigger_logic_0_o_out_trigger,
      o_A3_0(3 downto 0) => DRS4_firmware_1_o_A3_0(3 downto 0),
      o_ROFS => NLW_DRS4_firmware_1_o_ROFS_UNCONNECTED,
      o_denable => NLW_DRS4_firmware_1_o_denable_UNCONNECTED,
      o_dwrite => DRS4_firmware_1_o_dwrite,
      o_dwrite_for_trigger => DRS4_firmware_1_o_dwrite_for_trigger,
      o_nReset => NLW_DRS4_firmware_1_o_nReset_UNCONNECTED,
      o_refclk_p => DRS4_firmware_1_o_refclk_p,
      o_rsrload => DRS4_firmware_1_o_rsrload,
      o_srclk => DRS4_firmware_1_o_srclk,
      o_srclk_adc => DRS4_firmware_0_o_srclk_R2,
      o_srin => DRS4_firmware_1_o_srin,
      o_stop_cell(9 downto 0) => DRS4_firmware_1_o_stop_cell(9 downto 0),
      o_stop_cell_ready => DRS4_firmware_1_o_stop_cell_ready,
      s00_axi_aclk => processing_system7_0_FCLK_CLK2,
      s00_axi_araddr(3 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => reset_50M_0_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M03_AXI_WVALID
    );
DRS_A_test_0: component zsys_DRS_A_test_0_0
     port map (
      A_vec(3 downto 0) => DRS4_firmware_1_o_A3_0(3 downto 0),
      i_RSRLOAD => DRS4_firmware_1_o_rsrload,
      i_SRCLK => DRS4_firmware_1_o_srclk,
      i_SRIN => DRS4_firmware_1_o_srin,
      i_clk => processing_system7_0_FCLK_CLK2,
      i_dwrite => DRS4_firmware_1_o_dwrite,
      i_en_test => xlslice_3to4_Dout(0),
      i_nrst => reset_50M_0_peripheral_aresetn(0),
      o_A_vec(3 downto 0) => DRS_A_test_0_o_A_vec(3 downto 0),
      o_RSRLOAD => DRS_A_test_0_o_RSRLOAD,
      o_SRCLK => DRS_A_test_0_o_SRCLK,
      o_SRIN => DRS_A_test_0_o_SRIN,
      o_dwrite => DRS_A_test_0_o_dwrite
    );
Elink_output_0: component zsys_Elink_output_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK1,
      lvds => NLW_Elink_output_0_lvds_UNCONNECTED
    );
Lvds_Rx_top_0: component zsys_Lvds_Rx_top_0_0
     port map (
      AdClk => util_ds_buf_ADCLK_IBUF_OUT(0),
      AnalyseOut => NLW_Lvds_Rx_top_0_AnalyseOut_UNCONNECTED,
      ChOut_0(11 downto 0) => Lvds_Rx_top_0_ChOut_0(11 downto 0),
      ChOut_1(11 downto 0) => Lvds_Rx_top_0_ChOut_1(11 downto 0),
      DataInChN(7 downto 0) => B"00000000",
      DataInChP(7 downto 0) => B"00000000",
      Lclk => util_ds_buf_ADCLK1_IBUF_OUT(0),
      SysRst => rst_FIFO_100M_peripheral_reset(0)
    );
M1to5_0: component zsys_M1to5_0_0
     port map (
      in1 => delay_module_0_signal_out,
      out5(4 downto 0) => M1to5_0_out5(4 downto 0)
    );
M1to5_1: component zsys_M1to5_0_1
     port map (
      in1 => DRS_A_test_0_o_dwrite,
      out5(4 downto 0) => M1to5_1_out5(4 downto 0)
    );
M1to5_2: component zsys_M1to5_0_2
     port map (
      in1 => delay_module_1_signal_out,
      out5(4 downto 0) => M1to5_2_out5(4 downto 0)
    );
Signal_sel_0: component zsys_Signal_sel_1_0
     port map (
      D(4 downto 0) => DRS_SROUT_1(4 downto 0),
      Mux_sel(2 downto 0) => CPLD_ctrl_0_CPLD_Mux_sel(2 downto 0),
      O => Signal_sel_0_O
    );
Vibufds_diff_out_0: component zsys_Vibufds_diff_out_0_0
     port map (
      MUXOUT_N(7 downto 0) => MUXOUT_N_1(7 downto 0),
      MUXOUT_P(7 downto 0) => MUXOUT_P_1(7 downto 0),
      o_MUXOUT_N(7 downto 0) => Vibufds_diff_out_0_o_MUXOUT_N(7 downto 0),
      o_MUXOUT_P(7 downto 0) => Vibufds_diff_out_0_o_MUXOUT_P(7 downto 0)
    );
axi_dma_0: component zsys_axi_dma_0_0
     port map (
      axi_resetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      m_axi_sg_aclk => processing_system7_0_FCLK_CLK1,
      m_axi_sg_araddr(31 downto 0) => axi_dma_0_M_AXI_SG_ARADDR(31 downto 0),
      m_axi_sg_arburst(1 downto 0) => axi_dma_0_M_AXI_SG_ARBURST(1 downto 0),
      m_axi_sg_arcache(3 downto 0) => axi_dma_0_M_AXI_SG_ARCACHE(3 downto 0),
      m_axi_sg_arlen(7 downto 0) => axi_dma_0_M_AXI_SG_ARLEN(7 downto 0),
      m_axi_sg_arprot(2 downto 0) => axi_dma_0_M_AXI_SG_ARPROT(2 downto 0),
      m_axi_sg_arready => axi_dma_0_M_AXI_SG_ARREADY,
      m_axi_sg_arsize(2 downto 0) => axi_dma_0_M_AXI_SG_ARSIZE(2 downto 0),
      m_axi_sg_arvalid => axi_dma_0_M_AXI_SG_ARVALID,
      m_axi_sg_awaddr(31 downto 0) => axi_dma_0_M_AXI_SG_AWADDR(31 downto 0),
      m_axi_sg_awburst(1 downto 0) => axi_dma_0_M_AXI_SG_AWBURST(1 downto 0),
      m_axi_sg_awcache(3 downto 0) => axi_dma_0_M_AXI_SG_AWCACHE(3 downto 0),
      m_axi_sg_awlen(7 downto 0) => axi_dma_0_M_AXI_SG_AWLEN(7 downto 0),
      m_axi_sg_awprot(2 downto 0) => axi_dma_0_M_AXI_SG_AWPROT(2 downto 0),
      m_axi_sg_awready => axi_dma_0_M_AXI_SG_AWREADY,
      m_axi_sg_awsize(2 downto 0) => axi_dma_0_M_AXI_SG_AWSIZE(2 downto 0),
      m_axi_sg_awvalid => axi_dma_0_M_AXI_SG_AWVALID,
      m_axi_sg_bready => axi_dma_0_M_AXI_SG_BREADY,
      m_axi_sg_bresp(1 downto 0) => axi_dma_0_M_AXI_SG_BRESP(1 downto 0),
      m_axi_sg_bvalid => axi_dma_0_M_AXI_SG_BVALID,
      m_axi_sg_rdata(31 downto 0) => axi_dma_0_M_AXI_SG_RDATA(31 downto 0),
      m_axi_sg_rlast => axi_dma_0_M_AXI_SG_RLAST,
      m_axi_sg_rready => axi_dma_0_M_AXI_SG_RREADY,
      m_axi_sg_rresp(1 downto 0) => axi_dma_0_M_AXI_SG_RRESP(1 downto 0),
      m_axi_sg_rvalid => axi_dma_0_M_AXI_SG_RVALID,
      m_axi_sg_wdata(31 downto 0) => axi_dma_0_M_AXI_SG_WDATA(31 downto 0),
      m_axi_sg_wlast => axi_dma_0_M_AXI_SG_WLAST,
      m_axi_sg_wready => axi_dma_0_M_AXI_SG_WREADY,
      m_axi_sg_wstrb(3 downto 0) => axi_dma_0_M_AXI_SG_WSTRB(3 downto 0),
      m_axi_sg_wvalid => axi_dma_0_M_AXI_SG_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => NLW_axi_dma_0_m_axis_mm2s_tdata_UNCONNECTED(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => NLW_axi_dma_0_m_axis_mm2s_tlast_UNCONNECTED,
      m_axis_mm2s_tready => '1',
      m_axis_mm2s_tvalid => NLW_axi_dma_0_m_axis_mm2s_tvalid_UNCONNECTED,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK1,
      s_axi_lite_araddr(9 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph_M05_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_M05_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_M05_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_M05_AXI_AWVALID,
      s_axi_lite_bready => ps7_0_axi_periph_M05_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_M05_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_M05_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_M05_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_M05_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_M05_AXI_WVALID,
      s_axis_s2mm_tdata(31 downto 0) => fifo8b_2_axis_0_M00_AXIS_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => fifo8b_2_axis_0_M00_AXIS_TLAST,
      s_axis_s2mm_tready => fifo8b_2_axis_0_M00_AXIS_TREADY,
      s_axis_s2mm_tvalid => fifo8b_2_axis_0_M00_AXIS_TVALID
    );
axi_gpio_0: component zsys_axi_gpio_0_0
     port map (
      gpio2_io_o(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      gpio_io_i(31 downto 0) => xlconcat_2_dout(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK1,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID(0)
    );
axi_gpio_1: component zsys_axi_gpio_1_0
     port map (
      gpio_io_o(31 downto 0) => axi_gpio_1_gpio_io_o(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK1,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_FIFO_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M02_AXI_WVALID
    );
axi_smc: component zsys_axi_smc_0
     port map (
      M00_AXI_araddr(31 downto 0) => axi_smc_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_smc_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_smc_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_smc_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_SG_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_SG_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_SG_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_SG_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_SG_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => axi_dma_0_M_AXI_SG_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_SG_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_dma_0_M_AXI_SG_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_SG_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_SG_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_SG_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_SG_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_SG_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => axi_dma_0_M_AXI_SG_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_SG_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_dma_0_M_AXI_SG_AWVALID,
      S00_AXI_bready => axi_dma_0_M_AXI_SG_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_SG_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_dma_0_M_AXI_SG_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_SG_RDATA(31 downto 0),
      S00_AXI_rlast => axi_dma_0_M_AXI_SG_RLAST,
      S00_AXI_rready => axi_dma_0_M_AXI_SG_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_SG_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_dma_0_M_AXI_SG_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_SG_WDATA(31 downto 0),
      S00_AXI_wlast => axi_dma_0_M_AXI_SG_WLAST,
      S00_AXI_wready => axi_dma_0_M_AXI_SG_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_SG_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_dma_0_M_AXI_SG_WVALID,
      S01_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => '0',
      S01_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => B"0000",
      S01_AXI_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      S01_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S01_AXI_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      S01_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S01_AXI_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      S01_AXI_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S01_AXI_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      S02_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => '0',
      S02_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => B"0000",
      S02_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S02_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S02_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S02_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S02_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S02_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S02_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S02_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S02_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      aclk => processing_system7_0_FCLK_CLK1,
      aresetn => rst_ps7_0_100M_peripheral_aresetn(0)
    );
c_counter_binary_0: component zsys_c_counter_binary_0_0
     port map (
      CLK => ROController_0_o_wr_fifo_en,
      Q(11 downto 0) => c_counter_binary_0_Q(11 downto 0)
    );
c_counter_binary_1: component zsys_c_counter_binary_0_1
     port map (
      CLK => ADC_o_data_clk,
      Q(7 downto 0) => c_counter_binary_1_Q(7 downto 0)
    );
clk_mon_0: component zsys_clk_mon_0_0
     port map (
      i_DTAP(4 downto 0) => util_ds_buf_0_BUFH_O(4 downto 0),
      s00_axi_aclk => processing_system7_0_FCLK_CLK1,
      s00_axi_araddr(3 downto 0) => ps7_0_axi_periph_M06_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_FIFO_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M06_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M06_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => ps7_0_axi_periph_M06_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M06_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M06_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M06_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M06_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M06_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M06_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M06_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M06_AXI_WVALID
    );
dac_i2c_0: component zsys_dac_i2c_0_0
     port map (
      Fail_ACL_i2c => NLW_dac_i2c_0_Fail_ACL_i2c_UNCONNECTED,
      s00_axi_aclk => processing_system7_0_FCLK_CLK1,
      s00_axi_araddr(3 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s00_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s00_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      s00_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      scl_i => dac_i2c_0_DAC_I2C_SCL_I,
      scl_o => dac_i2c_0_DAC_I2C_SCL_O,
      scl_t => dac_i2c_0_DAC_I2C_SCL_T,
      sda_i => dac_i2c_0_DAC_I2C_SDA_I,
      sda_o => dac_i2c_0_DAC_I2C_SDA_O,
      sda_t => dac_i2c_0_DAC_I2C_SDA_T
    );
delay_module_0: component zsys_delay_module_0_0
     port map (
      delay_sel(9 downto 0) => xlslice_2_Dout(9 downto 0),
      signal_in => DRS_A_test_0_o_SRCLK,
      signal_out => delay_module_0_signal_out
    );
delay_module_1: component zsys_delay_module_0_1
     port map (
      delay_sel(9 downto 0) => xlslice_2_Dout(9 downto 0),
      signal_in => DRS_A_test_0_o_RSRLOAD,
      signal_out => delay_module_1_signal_out
    );
enable_signal_0: component zsys_enable_signal_0_0
     port map (
      enable(0) => xlslice_3to3_Dout(0),
      signal_in(0) => DRS4_firmware_0_o_srclk_R2,
      signal_out(0) => enable_signal_0_signal_out(0)
    );
fifo8b_2_axis_0: component zsys_fifo8b_2_axis_0_0
     port map (
      i_fifo_din(7 downto 0) => ADC_o_ascii(7 downto 0),
      i_fifo_we => ADC_o_outfifo_wr_en,
      i_force_send => xlconstant_1_dout(0),
      i_sending => ADC_o_busy,
      m00_axis_aclk => processing_system7_0_FCLK_CLK1,
      m00_axis_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m00_axis_tdata(31 downto 0) => fifo8b_2_axis_0_M00_AXIS_TDATA(31 downto 0),
      m00_axis_tlast => fifo8b_2_axis_0_M00_AXIS_TLAST,
      m00_axis_tready => fifo8b_2_axis_0_M00_AXIS_TREADY,
      m00_axis_tstrb(3 downto 0) => NLW_fifo8b_2_axis_0_m00_axis_tstrb_UNCONNECTED(3 downto 0),
      m00_axis_tvalid => fifo8b_2_axis_0_M00_AXIS_TVALID,
      o_fifo_data_count(3 downto 0) => o_fifo_data_count(3 downto 0),
      o_fifo_full => i_next_fifo_full_1
    );
fit_timer_0: component zsys_fit_timer_0_0
     port map (
      Clk => processing_system7_0_FCLK_CLK1,
      Interrupt => fit_timer_0_Interrupt,
      Rst => xlslice_0_Dout(0)
    );
processing_system7_0: component zsys_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK1,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK2,
      FCLK_CLK2 => processing_system7_0_FCLK_CLK3,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      IRQ_F2P(1 downto 0) => xlconcat_0_dout(1 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK1,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK1,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_smc_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => axi_smc_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_smc_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_smc_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_smc_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_smc_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_smc_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => axi_smc_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_smc_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_smc_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => axi_smc_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_smc_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_smc_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => axi_smc_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_smc_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_smc_M00_AXI_WVALID,
      WDT_RST_OUT => NLW_processing_system7_0_WDT_RST_OUT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.zsys_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK1,
      ARESETN => rst_ps7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK1,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK1,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => ps7_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => ps7_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => ps7_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => processing_system7_0_FCLK_CLK1,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK2,
      M03_ARESETN => reset_50M_0_peripheral_aresetn(0),
      M03_AXI_araddr(3 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(3 downto 0),
      M03_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(3 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(3 downto 0),
      M03_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK1,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready => ps7_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid => ps7_0_axi_periph_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready => ps7_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid => ps7_0_axi_periph_M04_AXI_AWVALID,
      M04_AXI_bready => ps7_0_axi_periph_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => ps7_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => ps7_0_axi_periph_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => ps7_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => ps7_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => ps7_0_axi_periph_M04_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK1,
      M05_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready => ps7_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid => ps7_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready => ps7_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid => ps7_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bready => ps7_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => ps7_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => ps7_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => ps7_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => ps7_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wvalid => ps7_0_axi_periph_M05_AXI_WVALID,
      M06_ACLK => processing_system7_0_FCLK_CLK1,
      M06_ARESETN => rst_FIFO_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => ps7_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid => ps7_0_axi_periph_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => ps7_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid => ps7_0_axi_periph_M06_AXI_AWVALID,
      M06_AXI_bready => ps7_0_axi_periph_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => ps7_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => ps7_0_axi_periph_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => ps7_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => ps7_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => ps7_0_axi_periph_M06_AXI_WVALID,
      M07_ACLK => processing_system7_0_FCLK_CLK1,
      M07_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr => NLW_ps7_0_axi_periph_M07_AXI_araddr_UNCONNECTED,
      M07_AXI_arprot => NLW_ps7_0_axi_periph_M07_AXI_arprot_UNCONNECTED,
      M07_AXI_arready => '0',
      M07_AXI_arvalid => NLW_ps7_0_axi_periph_M07_AXI_arvalid_UNCONNECTED,
      M07_AXI_awaddr => NLW_ps7_0_axi_periph_M07_AXI_awaddr_UNCONNECTED,
      M07_AXI_awprot => NLW_ps7_0_axi_periph_M07_AXI_awprot_UNCONNECTED,
      M07_AXI_awready => '0',
      M07_AXI_awvalid => NLW_ps7_0_axi_periph_M07_AXI_awvalid_UNCONNECTED,
      M07_AXI_bready => NLW_ps7_0_axi_periph_M07_AXI_bready_UNCONNECTED,
      M07_AXI_bresp => '0',
      M07_AXI_bvalid => '0',
      M07_AXI_rdata => '0',
      M07_AXI_rready => NLW_ps7_0_axi_periph_M07_AXI_rready_UNCONNECTED,
      M07_AXI_rresp => '0',
      M07_AXI_rvalid => '0',
      M07_AXI_wdata => NLW_ps7_0_axi_periph_M07_AXI_wdata_UNCONNECTED,
      M07_AXI_wready => '0',
      M07_AXI_wstrb => NLW_ps7_0_axi_periph_M07_AXI_wstrb_UNCONNECTED,
      M07_AXI_wvalid => NLW_ps7_0_axi_periph_M07_AXI_wvalid_UNCONNECTED,
      M08_ACLK => processing_system7_0_FCLK_CLK1,
      M08_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_ARPROT(2 downto 0),
      M08_AXI_arready(0) => ps7_0_axi_periph_M08_AXI_ARREADY(0),
      M08_AXI_arvalid(0) => ps7_0_axi_periph_M08_AXI_ARVALID(0),
      M08_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M08_AXI_AWPROT(2 downto 0),
      M08_AXI_awready(0) => ps7_0_axi_periph_M08_AXI_AWREADY(0),
      M08_AXI_awvalid(0) => ps7_0_axi_periph_M08_AXI_AWVALID(0),
      M08_AXI_bready(0) => ps7_0_axi_periph_M08_AXI_BREADY(0),
      M08_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid(0) => ps7_0_axi_periph_M08_AXI_BVALID(0),
      M08_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready(0) => ps7_0_axi_periph_M08_AXI_RREADY(0),
      M08_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid(0) => ps7_0_axi_periph_M08_AXI_RVALID(0),
      M08_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready(0) => ps7_0_axi_periph_M08_AXI_WREADY(0),
      M08_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid(0) => ps7_0_axi_periph_M08_AXI_WVALID(0),
      S00_ACLK => processing_system7_0_FCLK_CLK1,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
reset_50M_0: component zsys_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_reset_50M_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_reset_50M_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_reset_50M_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => reset_50M_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_reset_50M_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK2
    );
reset_init_0: component zsys_reset_init_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK1,
      input_start => xlslice_11_Dout(0),
      rst => NLW_reset_init_0_rst_UNCONNECTED
    );
rst_FIFO_100M: component zsys_rst_ps7_0_100M_1
     port map (
      aux_reset_in => xlslice_1_Dout(0),
      bus_struct_reset(0) => NLW_rst_FIFO_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_FIFO_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_FIFO_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_FIFO_100M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_FIFO_100M_peripheral_reset(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1
    );
rst_ps7_0_100M: component zsys_rst_ps7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1
    );
trigger_logic_0: component zsys_trigger_logic_0_0
     port map (
      areset => rst_FIFO_100M_peripheral_reset(0),
      i_busy => util_vector_logic_1_Res(0),
      i_en_soft_trigger => util_vector_logic_0_Res(0),
      i_in_trigger(7 downto 0) => i_in_trigger_1(7 downto 0),
      i_soft_trigger => fit_timer_0_Interrupt,
      i_trigg_mask(7 downto 0) => xlslice_3_Dout1(7 downto 0),
      i_trigg_select_function(2 downto 0) => xlslice_2_Dout2(2 downto 0),
      o_out_trigger => trigger_logic_0_o_out_trigger,
      sys_clk => processing_system7_0_FCLK_CLK1
    );
util_ds_buf_0: component zsys_util_ds_buf_0_0
     port map (
      OBUF_DS_N(0) => util_ds_buf_0_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_0_OBUF_DS_P(0),
      OBUF_IN(0) => processing_system7_0_FCLK_CLK3
    );
util_ds_buf_1: component zsys_util_ds_buf_0_2
     port map (
      OBUF_DS_N(0) => util_ds_buf_1_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_1_OBUF_DS_P(0),
      OBUF_IN(0) => processing_system7_0_FCLK_CLK3
    );
util_ds_buf_3: component zsys_util_ds_buf_2_0
     port map (
      OBUF_DS_N(0) => util_ds_buf_3_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_3_OBUF_DS_P(0),
      OBUF_IN(0) => DRS4_firmware_1_o_refclk_p
    );
util_ds_buf_5: component zsys_util_ds_buf_3_1
     port map (
      OBUF_DS_N(0) => util_ds_buf_5_OBUF_DS_N(0),
      OBUF_DS_P(0) => util_ds_buf_5_OBUF_DS_P(0),
      OBUF_IN(0) => CPLD_ctrl_0_CPLD_SPI_SCLK
    );
util_ds_buf_ADCLK: component zsys_util_ds_buf_0_1
     port map (
      IBUF_DS_N(0) => ADCLK_MUX_N_1,
      IBUF_DS_P(0) => ADCLK_MUX_P_1,
      IBUF_OUT(0) => util_ds_buf_ADCLK_IBUF_OUT(0)
    );
util_ds_buf_LCLK: component zsys_util_ds_buf_ADCLK_0
     port map (
      IBUF_DS_N(0) => LCLK_MUX_N_1,
      IBUF_DS_P(0) => LCLK_MUX_P_1,
      IBUF_OUT(0) => util_ds_buf_ADCLK1_IBUF_OUT(0)
    );
util_vector_logic_0: component zsys_util_vector_logic_0_0
     port map (
      Op1(0) => xlslice_0_Dout(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component zsys_util_vector_logic_0_1
     port map (
      Op1(0) => ADC_o_busy,
      Op2(0) => xlslice_2to2_Dout(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component zsys_util_vector_logic_2_0
     port map (
      Op1(11 downto 0) => Lvds_Rx_top_0_ChOut_0(11 downto 0),
      Op2(11 downto 0) => Lvds_Rx_top_0_ChOut_1(11 downto 0),
      Res(11 downto 0) => NLW_util_vector_logic_2_Res_UNCONNECTED(11 downto 0)
    );
xlconcat_0: component zsys_xlconcat_0_0
     port map (
      In0(0) => axi_dma_0_mm2s_introut,
      In1(0) => axi_dma_0_s2mm_introut,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlconcat_1: component zsys_xlconcat_1_0
     port map (
      In0(11 downto 0) => fifo_generator_0_rd_data_count(11 downto 0),
      In1(11 downto 0) => c_counter_binary_0_Q(11 downto 0),
      dout(23 downto 0) => xlconcat_1_dout(23 downto 0)
    );
xlconcat_2: component zsys_xlconcat_1_1
     port map (
      In0(23 downto 0) => xlconcat_1_dout(23 downto 0),
      In1(7 downto 0) => c_counter_binary_1_Q(7 downto 0),
      dout(31 downto 0) => xlconcat_2_dout(31 downto 0)
    );
xlconcat_3: component zsys_xlconcat_3_0
     port map (
      In0(0) => DRS_DTAP0_1(0),
      In1(0) => DRS_DTAP1_1(0),
      In2(0) => DRS_DTAP2_1(0),
      In3(0) => DRS_DTAP3_1(0),
      In4(0) => DRS_DTAP4_1(0),
      dout(4 downto 0) => util_ds_buf_0_BUFH_O(4 downto 0)
    );
xlconstant_0: component zsys_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component zsys_xlconstant_1_2
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlslice_0: component zsys_xlslice_0_1
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component zsys_xlslice_1_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_15: component zsys_xlslice_3to3_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_15_Dout(0)
    );
xlslice_16: component zsys_xlslice_10_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_11_Dout(0)
    );
xlslice_17: component zsys_xlslice_3to3_1
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_3to4_Dout(0)
    );
xlslice_18: component zsys_xlslice_3to3_2
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_5_Dout(0)
    );
xlslice_2: component zsys_xlslice_2_2
     port map (
      Din(31 downto 0) => axi_gpio_1_gpio_io_o(31 downto 0),
      Dout(9 downto 0) => xlslice_2_Dout(9 downto 0)
    );
xlslice_2to2: component zsys_xlslice_0_2
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_2to2_Dout(0)
    );
xlslice_3to3: component zsys_xlslice_12to14_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(0) => xlslice_3to3_Dout(0)
    );
xlslice_4to6: component zsys_xlslice_2_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(2 downto 0) => xlslice_2_Dout2(2 downto 0)
    );
xlslice_7to14: component zsys_xlslice_2_1
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio2_io_o(31 downto 0),
      Dout(7 downto 0) => xlslice_3_Dout1(7 downto 0)
    );
end STRUCTURE;
