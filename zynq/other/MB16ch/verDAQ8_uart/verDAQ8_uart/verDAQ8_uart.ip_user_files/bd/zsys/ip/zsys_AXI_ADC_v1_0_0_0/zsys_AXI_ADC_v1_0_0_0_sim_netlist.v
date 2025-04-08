// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 15 17:07:50 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/daq_mb_te0716_v7/daq_mb_te0716_v7.srcs/sources_1/bd/zsys/ip/zsys_AXI_ADC_v1_0_0_0/zsys_AXI_ADC_v1_0_0_0_sim_netlist.v
// Design      : zsys_AXI_ADC_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_AXI_ADC_v1_0_0_0,AXI_ADC_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "AXI_ADC_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_AXI_ADC_v1_0_0_0
   (i_MISO,
    o_MOSI,
    o_SCLK,
    o_nCS,
    o_ADC_nrst,
    o_debug,
    i_ADclk_p,
    i_ADclk_n,
    i_Lclk_p,
    i_Lclk_n,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_data_clk,
    s00_axi_ctrl_aclk,
    s00_axi_ctrl_aresetn,
    s00_axi_ctrl_awaddr,
    s00_axi_ctrl_awprot,
    s00_axi_ctrl_awvalid,
    s00_axi_ctrl_awready,
    s00_axi_ctrl_wdata,
    s00_axi_ctrl_wstrb,
    s00_axi_ctrl_wvalid,
    s00_axi_ctrl_wready,
    s00_axi_ctrl_bresp,
    s00_axi_ctrl_bvalid,
    s00_axi_ctrl_bready,
    s00_axi_ctrl_araddr,
    s00_axi_ctrl_arprot,
    s00_axi_ctrl_arvalid,
    s00_axi_ctrl_arready,
    s00_axi_ctrl_rdata,
    s00_axi_ctrl_rresp,
    s00_axi_ctrl_rvalid,
    s00_axi_ctrl_rready);
  input i_MISO;
  output o_MOSI;
  output o_SCLK;
  output o_nCS;
  output o_ADC_nrst;
  output [11:0]o_debug;
  input i_ADclk_p;
  input i_ADclk_n;
  input i_Lclk_p;
  input i_Lclk_n;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 o_data_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME o_data_clk, ASSOCIATED_BUSIF o_data_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_v1_0_0_0_o_data_clk" *) output o_data_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_ctrl_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_ctrl_aclk, ASSOCIATED_BUSIF s00_axi_ctrl, ASSOCIATED_RESET s00_axi_ctrl_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_ctrl_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_ctrl_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_ctrl_aresetn, POLARITY ACTIVE_LOW" *) input s00_axi_ctrl_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s00_axi_ctrl_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWPROT" *) input [2:0]s00_axi_ctrl_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWVALID" *) input s00_axi_ctrl_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl AWREADY" *) output s00_axi_ctrl_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WDATA" *) input [31:0]s00_axi_ctrl_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WSTRB" *) input [3:0]s00_axi_ctrl_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WVALID" *) input s00_axi_ctrl_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl WREADY" *) output s00_axi_ctrl_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl BRESP" *) output [1:0]s00_axi_ctrl_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl BVALID" *) output s00_axi_ctrl_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl BREADY" *) input s00_axi_ctrl_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARADDR" *) input [3:0]s00_axi_ctrl_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARPROT" *) input [2:0]s00_axi_ctrl_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARVALID" *) input s00_axi_ctrl_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl ARREADY" *) output s00_axi_ctrl_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RDATA" *) output [31:0]s00_axi_ctrl_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RRESP" *) output [1:0]s00_axi_ctrl_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RVALID" *) output s00_axi_ctrl_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi_ctrl RREADY" *) input s00_axi_ctrl_rready;

  wire i_ADclk_n;
  wire i_ADclk_p;
  wire i_Lclk_n;
  wire i_Lclk_p;
  wire i_MISO;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire o_ADC_nrst;
  wire o_MOSI;
  wire o_SCLK;
  wire o_data_clk;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [11:0]o_debug;
  wire o_nCS;
  wire s00_axi_ctrl_aclk;
  wire [3:0]s00_axi_ctrl_araddr;
  wire s00_axi_ctrl_aresetn;
  wire [2:0]s00_axi_ctrl_arprot;
  wire s00_axi_ctrl_arready;
  wire s00_axi_ctrl_arvalid;
  wire [3:0]s00_axi_ctrl_awaddr;
  wire [2:0]s00_axi_ctrl_awprot;
  wire s00_axi_ctrl_awready;
  wire s00_axi_ctrl_awvalid;
  wire s00_axi_ctrl_bready;
  wire [1:0]s00_axi_ctrl_bresp;
  wire s00_axi_ctrl_bvalid;
  wire [31:0]s00_axi_ctrl_rdata;
  wire s00_axi_ctrl_rready;
  wire [1:0]s00_axi_ctrl_rresp;
  wire s00_axi_ctrl_rvalid;
  wire [31:0]s00_axi_ctrl_wdata;
  wire s00_axi_ctrl_wready;
  wire [3:0]s00_axi_ctrl_wstrb;
  wire s00_axi_ctrl_wvalid;

  (* ADC_N_bits = "16" *) 
  (* C_S00_AXI_ctrl_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_ctrl_DATA_WIDTH = "32" *) 
  (* FRAME_PATTERN = "6'b111000" *) 
  zsys_AXI_ADC_v1_0_0_0_AXI_ADC_v1_0 U0
       (.i_ADclk_n(i_ADclk_n),
        .i_ADclk_p(i_ADclk_p),
        .i_Lclk_n(i_Lclk_n),
        .i_Lclk_p(i_Lclk_p),
        .i_MISO(i_MISO),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .o_ADC_nrst(o_ADC_nrst),
        .o_MOSI(o_MOSI),
        .o_SCLK(o_SCLK),
        .o_data_clk(o_data_clk),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .o_debug(o_debug),
        .o_nCS(o_nCS),
        .s00_axi_ctrl_aclk(s00_axi_ctrl_aclk),
        .s00_axi_ctrl_araddr(s00_axi_ctrl_araddr),
        .s00_axi_ctrl_aresetn(s00_axi_ctrl_aresetn),
        .s00_axi_ctrl_arprot(s00_axi_ctrl_arprot),
        .s00_axi_ctrl_arready(s00_axi_ctrl_arready),
        .s00_axi_ctrl_arvalid(s00_axi_ctrl_arvalid),
        .s00_axi_ctrl_awaddr(s00_axi_ctrl_awaddr),
        .s00_axi_ctrl_awprot(s00_axi_ctrl_awprot),
        .s00_axi_ctrl_awready(s00_axi_ctrl_awready),
        .s00_axi_ctrl_awvalid(s00_axi_ctrl_awvalid),
        .s00_axi_ctrl_bready(s00_axi_ctrl_bready),
        .s00_axi_ctrl_bresp(s00_axi_ctrl_bresp),
        .s00_axi_ctrl_bvalid(s00_axi_ctrl_bvalid),
        .s00_axi_ctrl_rdata(s00_axi_ctrl_rdata),
        .s00_axi_ctrl_rready(s00_axi_ctrl_rready),
        .s00_axi_ctrl_rresp(s00_axi_ctrl_rresp),
        .s00_axi_ctrl_rvalid(s00_axi_ctrl_rvalid),
        .s00_axi_ctrl_wdata(s00_axi_ctrl_wdata),
        .s00_axi_ctrl_wready(s00_axi_ctrl_wready),
        .s00_axi_ctrl_wstrb(s00_axi_ctrl_wstrb),
        .s00_axi_ctrl_wvalid(s00_axi_ctrl_wvalid));
endmodule

(* ORIG_REF_NAME = "ADC_ctrl" *) 
module zsys_AXI_ADC_v1_0_0_0_ADC_ctrl
   (o_debug_0_sp_1,
    o_SCLK,
    AR,
    o_debug,
    read_reg_reg,
    write_reg_reg,
    adc_config_reg,
    \slv_reg2_reg[16] ,
    \slv_reg2_reg[17] ,
    \slv_reg2_reg[18] ,
    \slv_reg2_reg[19] ,
    \slv_reg2_reg[20] ,
    \slv_reg2_reg[21] ,
    \slv_reg2_reg[22] ,
    \slv_reg2_reg[23] ,
    \slv_reg2_reg[24] ,
    \slv_reg2_reg[25] ,
    \slv_reg2_reg[26] ,
    \slv_reg2_reg[27] ,
    \slv_reg2_reg[28] ,
    \slv_reg2_reg[29] ,
    \slv_reg2_reg[30] ,
    \slv_reg2_reg[31] ,
    SR,
    s00_axi_ctrl_aclk,
    i_rst,
    s00_axi_ctrl_aresetn,
    read_reg_reg_0,
    Q,
    slv_reg_wren__2,
    write_reg_reg_0,
    adc_config_reg_0,
    s00_axi_ctrl_wdata,
    s00_axi_ctrl_wvalid,
    axi_awready_reg,
    axi_wready_reg,
    s00_axi_ctrl_awvalid,
    \slv_reg1_reg[23] ,
    i_MISO);
  output o_debug_0_sp_1;
  output o_SCLK;
  output [0:0]AR;
  output [4:0]o_debug;
  output read_reg_reg;
  output write_reg_reg;
  output adc_config_reg;
  output \slv_reg2_reg[16] ;
  output \slv_reg2_reg[17] ;
  output \slv_reg2_reg[18] ;
  output \slv_reg2_reg[19] ;
  output \slv_reg2_reg[20] ;
  output \slv_reg2_reg[21] ;
  output \slv_reg2_reg[22] ;
  output \slv_reg2_reg[23] ;
  output \slv_reg2_reg[24] ;
  output \slv_reg2_reg[25] ;
  output \slv_reg2_reg[26] ;
  output \slv_reg2_reg[27] ;
  output \slv_reg2_reg[28] ;
  output \slv_reg2_reg[29] ;
  output \slv_reg2_reg[30] ;
  output \slv_reg2_reg[31] ;
  output [0:0]SR;
  input s00_axi_ctrl_aclk;
  input i_rst;
  input s00_axi_ctrl_aresetn;
  input read_reg_reg_0;
  input [2:0]Q;
  input slv_reg_wren__2;
  input write_reg_reg_0;
  input adc_config_reg_0;
  input [15:0]s00_axi_ctrl_wdata;
  input s00_axi_ctrl_wvalid;
  input axi_awready_reg;
  input axi_wready_reg;
  input s00_axi_ctrl_awvalid;
  input [23:0]\slv_reg1_reg[23] ;
  input i_MISO;

  wire [0:0]AR;
  wire [0:2]L;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \action_state[0]_i_1_n_0 ;
  wire \action_state[1]_i_1_n_0 ;
  wire adc_action_ctrl_state0__2;
  wire \adc_action_ctrl_state[0]_i_1_n_0 ;
  wire \adc_action_ctrl_state[2]_i_1_n_0 ;
  wire \adc_action_ctrl_state[2]_i_2_n_0 ;
  wire \adc_action_ctrl_state_reg_n_0_[0] ;
  wire \adc_action_ctrl_state_reg_n_0_[2] ;
  wire adc_config_reg;
  wire adc_config_reg_0;
  wire [0:0]adc_prev_state;
  wire \adc_prev_state[0]_i_1_n_0 ;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire i_MISO;
  wire i_rst;
  wire o_SCLK;
  wire [15:0]o_data_from;
  wire [4:0]o_debug;
  wire o_debug_0_sn_1;
  wire [15:0]rd_value;
  wire rd_value0;
  wire read_reg_reg;
  wire read_reg_reg_0;
  wire [7:0]reg_addrss;
  wire reg_addrss0;
  wire \reg_addrss[7]_i_2_n_0 ;
  wire reset;
  wire s00_axi_ctrl_aclk;
  wire s00_axi_ctrl_aresetn;
  wire s00_axi_ctrl_awvalid;
  wire [15:0]s00_axi_ctrl_wdata;
  wire s00_axi_ctrl_wvalid;
  wire [23:0]\slv_reg1_reg[23] ;
  wire \slv_reg2_reg[16] ;
  wire \slv_reg2_reg[17] ;
  wire \slv_reg2_reg[18] ;
  wire \slv_reg2_reg[19] ;
  wire \slv_reg2_reg[20] ;
  wire \slv_reg2_reg[21] ;
  wire \slv_reg2_reg[22] ;
  wire \slv_reg2_reg[23] ;
  wire \slv_reg2_reg[24] ;
  wire \slv_reg2_reg[25] ;
  wire \slv_reg2_reg[26] ;
  wire \slv_reg2_reg[27] ;
  wire \slv_reg2_reg[28] ;
  wire \slv_reg2_reg[29] ;
  wire \slv_reg2_reg[30] ;
  wire \slv_reg2_reg[31] ;
  wire slv_reg_wren__2;
  wire spi_core_n_5;
  wire spi_core_n_6;
  wire spi_core_n_7;
  wire [15:0]spi_data_i;
  wire spi_data_i0;
  wire spi_free;
  wire write_reg_reg;
  wire write_reg_reg_0;

  assign o_debug_0_sp_1 = o_debug_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF520)) 
    \action_state[0]_i_1 
       (.I0(s00_axi_ctrl_aresetn),
        .I1(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I2(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I3(o_debug[2]),
        .O(\action_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFD28)) 
    \action_state[1]_i_1 
       (.I0(s00_axi_ctrl_aresetn),
        .I1(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I2(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I3(o_debug[3]),
        .O(\action_state[1]_i_1_n_0 ));
  FDRE \action_state_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\action_state[0]_i_1_n_0 ),
        .Q(o_debug[2]),
        .R(1'b0));
  FDRE \action_state_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\action_state[1]_i_1_n_0 ),
        .Q(o_debug[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C0C0A0000000A00)) 
    \adc_action_ctrl_state[0]_i_1 
       (.I0(adc_config_reg_0),
        .I1(adc_prev_state),
        .I2(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I3(spi_core_n_7),
        .I4(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I5(adc_action_ctrl_state0__2),
        .O(\adc_action_ctrl_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010055550100)) 
    \adc_action_ctrl_state[2]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I1(adc_config_reg_0),
        .I2(\adc_action_ctrl_state[2]_i_2_n_0 ),
        .I3(spi_free),
        .I4(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I5(adc_action_ctrl_state0__2),
        .O(\adc_action_ctrl_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \adc_action_ctrl_state[2]_i_2 
       (.I0(write_reg_reg_0),
        .I1(read_reg_reg_0),
        .O(\adc_action_ctrl_state[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \adc_action_ctrl_state_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\adc_action_ctrl_state[0]_i_1_n_0 ),
        .Q(\adc_action_ctrl_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \adc_action_ctrl_state_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\adc_action_ctrl_state[2]_i_1_n_0 ),
        .Q(\adc_action_ctrl_state_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hACA0AAAA)) 
    adc_config_i_1
       (.I0(adc_config_reg_0),
        .I1(Q[0]),
        .I2(slv_reg_wren__2),
        .I3(o_debug_0_sn_1),
        .I4(s00_axi_ctrl_aresetn),
        .O(adc_config_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \adc_prev_state[0]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I1(s00_axi_ctrl_aresetn),
        .I2(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I3(adc_prev_state),
        .O(\adc_prev_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_prev_state_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\adc_prev_state[0]_i_1_n_0 ),
        .Q(adc_prev_state),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \o_debug[11]_INST_0 
       (.I0(reset),
        .O(o_debug[4]));
  FDCE \prev_start_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(L[2]),
        .Q(L[1]));
  FDCE \prev_start_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(L[1]),
        .Q(L[0]));
  FDRE \rd_value_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[0]),
        .Q(rd_value[0]),
        .R(1'b0));
  FDRE \rd_value_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[10]),
        .Q(rd_value[10]),
        .R(1'b0));
  FDRE \rd_value_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[11]),
        .Q(rd_value[11]),
        .R(1'b0));
  FDRE \rd_value_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[12]),
        .Q(rd_value[12]),
        .R(1'b0));
  FDRE \rd_value_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[13]),
        .Q(rd_value[13]),
        .R(1'b0));
  FDRE \rd_value_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[14]),
        .Q(rd_value[14]),
        .R(1'b0));
  FDRE \rd_value_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[15]),
        .Q(rd_value[15]),
        .R(1'b0));
  FDRE \rd_value_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[1]),
        .Q(rd_value[1]),
        .R(1'b0));
  FDRE \rd_value_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[2]),
        .Q(rd_value[2]),
        .R(1'b0));
  FDRE \rd_value_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[3]),
        .Q(rd_value[3]),
        .R(1'b0));
  FDRE \rd_value_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[4]),
        .Q(rd_value[4]),
        .R(1'b0));
  FDRE \rd_value_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[5]),
        .Q(rd_value[5]),
        .R(1'b0));
  FDRE \rd_value_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[6]),
        .Q(rd_value[6]),
        .R(1'b0));
  FDRE \rd_value_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[7]),
        .Q(rd_value[7]),
        .R(1'b0));
  FDRE \rd_value_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[8]),
        .Q(rd_value[8]),
        .R(1'b0));
  FDRE \rd_value_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(rd_value0),
        .D(o_data_from[9]),
        .Q(rd_value[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hACA0AAAA)) 
    read_reg_i_1
       (.I0(read_reg_reg_0),
        .I1(Q[2]),
        .I2(slv_reg_wren__2),
        .I3(o_debug_0_sn_1),
        .I4(s00_axi_ctrl_aresetn),
        .O(read_reg_reg));
  FDCE ready_i_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(spi_core_n_5),
        .Q(o_debug_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_addrss[7]_i_2 
       (.I0(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I1(\adc_action_ctrl_state_reg_n_0_[0] ),
        .O(\reg_addrss[7]_i_2_n_0 ));
  FDRE \reg_addrss_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [16]),
        .Q(reg_addrss[0]),
        .R(1'b0));
  FDRE \reg_addrss_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [17]),
        .Q(reg_addrss[1]),
        .R(1'b0));
  FDRE \reg_addrss_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [18]),
        .Q(reg_addrss[2]),
        .R(1'b0));
  FDRE \reg_addrss_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [19]),
        .Q(reg_addrss[3]),
        .R(1'b0));
  FDRE \reg_addrss_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [20]),
        .Q(reg_addrss[4]),
        .R(1'b0));
  FDRE \reg_addrss_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [21]),
        .Q(reg_addrss[5]),
        .R(1'b0));
  FDRE \reg_addrss_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [22]),
        .Q(reg_addrss[6]),
        .R(1'b0));
  FDRE \reg_addrss_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(reg_addrss0),
        .D(\slv_reg1_reg[23] [23]),
        .Q(reg_addrss[7]),
        .R(1'b0));
  FDPE reset_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(i_rst),
        .Q(reset));
  LUT6 #(
    .INIT(64'h00007FFFFFFFFFFF)) 
    \slv_reg0[3]_i_1 
       (.I0(s00_axi_ctrl_wvalid),
        .I1(axi_awready_reg),
        .I2(axi_wready_reg),
        .I3(s00_axi_ctrl_awvalid),
        .I4(o_debug_0_sn_1),
        .I5(s00_axi_ctrl_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[16]_i_1 
       (.I0(s00_axi_ctrl_wdata[0]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[0]),
        .O(\slv_reg2_reg[16] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[17]_i_1 
       (.I0(s00_axi_ctrl_wdata[1]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[1]),
        .O(\slv_reg2_reg[17] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[18]_i_1 
       (.I0(s00_axi_ctrl_wdata[2]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[2]),
        .O(\slv_reg2_reg[18] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[19]_i_1 
       (.I0(s00_axi_ctrl_wdata[3]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[3]),
        .O(\slv_reg2_reg[19] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[20]_i_1 
       (.I0(s00_axi_ctrl_wdata[4]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[4]),
        .O(\slv_reg2_reg[20] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[21]_i_1 
       (.I0(s00_axi_ctrl_wdata[5]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[5]),
        .O(\slv_reg2_reg[21] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[22]_i_1 
       (.I0(s00_axi_ctrl_wdata[6]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[6]),
        .O(\slv_reg2_reg[22] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[23]_i_2 
       (.I0(s00_axi_ctrl_wdata[7]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[7]),
        .O(\slv_reg2_reg[23] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[24]_i_1 
       (.I0(s00_axi_ctrl_wdata[8]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[8]),
        .O(\slv_reg2_reg[24] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[25]_i_1 
       (.I0(s00_axi_ctrl_wdata[9]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[9]),
        .O(\slv_reg2_reg[25] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[26]_i_1 
       (.I0(s00_axi_ctrl_wdata[10]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[10]),
        .O(\slv_reg2_reg[26] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[27]_i_1 
       (.I0(s00_axi_ctrl_wdata[11]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[11]),
        .O(\slv_reg2_reg[27] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[28]_i_1 
       (.I0(s00_axi_ctrl_wdata[12]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[12]),
        .O(\slv_reg2_reg[28] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[29]_i_1 
       (.I0(s00_axi_ctrl_wdata[13]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[13]),
        .O(\slv_reg2_reg[29] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[30]_i_1 
       (.I0(s00_axi_ctrl_wdata[14]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[14]),
        .O(\slv_reg2_reg[30] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_ctrl_wdata[15]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[15]),
        .O(\slv_reg2_reg[31] ));
  zsys_AXI_ADC_v1_0_0_0_SPI_core_v2 spi_core
       (.D({reg_addrss,spi_data_i}),
        .E(rd_value0),
        .L(L),
        .Q(o_data_from),
        .adc_action_ctrl_state0__2(adc_action_ctrl_state0__2),
        .\adc_action_ctrl_state_reg[0] (spi_core_n_7),
        .\adc_action_ctrl_state_reg[0]_0 (\adc_action_ctrl_state_reg_n_0_[0] ),
        .\adc_action_ctrl_state_reg[2] (\adc_action_ctrl_state_reg_n_0_[2] ),
        .\adc_action_ctrl_state_reg[2]_0 (\reg_addrss[7]_i_2_n_0 ),
        .adc_config_reg(adc_config_reg_0),
        .i_MISO(i_MISO),
        .o_SCLK(o_SCLK),
        .o_debug(o_debug[1:0]),
        .\o_debug[7] (AR),
        .read_reg_reg(read_reg_reg_0),
        .ready_i_reg(spi_core_n_5),
        .\reg_addrss_reg[0] (reg_addrss0),
        .reset(reset),
        .s00_axi_ctrl_aclk(s00_axi_ctrl_aclk),
        .s00_axi_ctrl_aresetn(s00_axi_ctrl_aresetn),
        .\spi_data_i_reg[0] (spi_data_i0),
        .spi_free(spi_free),
        .spi_start_reg(spi_core_n_6),
        .write_reg_reg(write_reg_reg_0));
  FDRE \spi_data_i_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [0]),
        .Q(spi_data_i[0]),
        .R(1'b0));
  FDRE \spi_data_i_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [10]),
        .Q(spi_data_i[10]),
        .R(1'b0));
  FDRE \spi_data_i_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [11]),
        .Q(spi_data_i[11]),
        .R(1'b0));
  FDRE \spi_data_i_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [12]),
        .Q(spi_data_i[12]),
        .R(1'b0));
  FDRE \spi_data_i_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [13]),
        .Q(spi_data_i[13]),
        .R(1'b0));
  FDRE \spi_data_i_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [14]),
        .Q(spi_data_i[14]),
        .R(1'b0));
  FDRE \spi_data_i_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [15]),
        .Q(spi_data_i[15]),
        .R(1'b0));
  FDRE \spi_data_i_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [1]),
        .Q(spi_data_i[1]),
        .R(1'b0));
  FDRE \spi_data_i_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [2]),
        .Q(spi_data_i[2]),
        .R(1'b0));
  FDRE \spi_data_i_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [3]),
        .Q(spi_data_i[3]),
        .R(1'b0));
  FDRE \spi_data_i_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [4]),
        .Q(spi_data_i[4]),
        .R(1'b0));
  FDRE \spi_data_i_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [5]),
        .Q(spi_data_i[5]),
        .R(1'b0));
  FDRE \spi_data_i_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [6]),
        .Q(spi_data_i[6]),
        .R(1'b0));
  FDRE \spi_data_i_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [7]),
        .Q(spi_data_i[7]),
        .R(1'b0));
  FDRE \spi_data_i_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [8]),
        .Q(spi_data_i[8]),
        .R(1'b0));
  FDRE \spi_data_i_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(spi_data_i0),
        .D(\slv_reg1_reg[23] [9]),
        .Q(spi_data_i[9]),
        .R(1'b0));
  FDCE spi_start_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(spi_core_n_6),
        .Q(L[2]));
  LUT5 #(
    .INIT(32'hACA0AAAA)) 
    write_reg_i_1
       (.I0(write_reg_reg_0),
        .I1(Q[1]),
        .I2(slv_reg_wren__2),
        .I3(o_debug_0_sn_1),
        .I4(s00_axi_ctrl_aresetn),
        .O(write_reg_reg));
endmodule

(* ORIG_REF_NAME = "ADC_readout_2" *) 
module zsys_AXI_ADC_v1_0_0_0_ADC_readout_2
   (bitslip_even_reg_0,
    o_data_clk,
    o_data_out_ch0,
    i_rst,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    i_Lclk_p,
    CLKB,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    i_ADclk_p,
    i_ADclk_n,
    s00_axi_ctrl_aresetn);
  output bitslip_even_reg_0;
  output o_data_clk;
  output [15:0]o_data_out_ch0;
  output i_rst;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  input i_Lclk_p;
  input CLKB;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input i_ADclk_p;
  input i_ADclk_n;
  input s00_axi_ctrl_aresetn;

  wire BITSLIP;
  wire CLKB;
  wire I;
  wire Q1;
  wire Q2;
  wire Q3;
  wire Q4;
  wire Q5;
  wire Q6;
  wire bitslip_even;
  wire bitslip_even_reg_0;
  wire bitslip_even_reg_n_0;
  wire bitslip_odd;
  wire \delay_even[0]_i_1_n_0 ;
  wire \delay_even[1]_i_1_n_0 ;
  wire \delay_even[2]_i_1_n_0 ;
  wire \delay_even_reg_n_0_[0] ;
  wire \delay_even_reg_n_0_[1] ;
  wire \delay_even_reg_n_0_[2] ;
  wire \delay_odd[0]_i_1_n_0 ;
  wire \delay_odd[1]_i_1_n_0 ;
  wire \delay_odd[2]_i_1_n_0 ;
  wire \delay_odd[2]_i_2_n_0 ;
  wire \delay_odd_reg_n_0_[0] ;
  wire \delay_odd_reg_n_0_[1] ;
  wire \delay_odd_reg_n_0_[2] ;
  wire eqOp6_in;
  wire i_ADclk_n;
  wire i_ADclk_p;
  wire i_Lclk_p;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire i_rst;
  wire inc11_out;
  wire inc12_in;
  wire inc3_out;
  wire inc4_in;
  wire inc_reg__0_n_0;
  wire inc_reg_n_0;
  wire iserdes_frame_p_odd_n_1;
  wire iserdes_frame_p_odd_n_2;
  wire iserdes_frame_p_odd_n_3;
  wire iserdes_frame_p_odd_n_4;
  wire iserdes_frame_p_odd_n_5;
  wire iserdes_frame_p_odd_n_6;
  wire o_data_clk;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire s00_axi_ctrl_aresetn;
  wire t_wait0;
  wire \t_wait[0]__0_i_1_n_0 ;
  wire \t_wait[0]_i_1_n_0 ;
  wire \t_wait[1]__0_i_1_n_0 ;
  wire \t_wait[1]_i_1_n_0 ;
  wire \t_wait[2]__0_i_1_n_0 ;
  wire \t_wait[2]__0_i_2_n_0 ;
  wire \t_wait[2]_i_2_n_0 ;
  wire \t_wait_reg[0]__0_n_0 ;
  wire \t_wait_reg[1]__0_n_0 ;
  wire \t_wait_reg[2]__0_n_0 ;
  wire \t_wait_reg_n_0_[0] ;
  wire \t_wait_reg_n_0_[1] ;
  wire \t_wait_reg_n_0_[2] ;
  wire NLW_iserdes0_even_O_UNCONNECTED;
  wire NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes0_odd_O_UNCONNECTED;
  wire NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes1_n_O_UNCONNECTED;
  wire NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes1_p_O_UNCONNECTED;
  wire NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes2_n_O_UNCONNECTED;
  wire NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes2_p_O_UNCONNECTED;
  wire NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes3_n_O_UNCONNECTED;
  wire NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes3_p_O_UNCONNECTED;
  wire NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes4_n_O_UNCONNECTED;
  wire NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes4_p_O_UNCONNECTED;
  wire NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes5_n_O_UNCONNECTED;
  wire NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes5_p_O_UNCONNECTED;
  wire NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes6_n_O_UNCONNECTED;
  wire NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes6_p_O_UNCONNECTED;
  wire NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes7_n_O_UNCONNECTED;
  wire NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes7_p_O_UNCONNECTED;
  wire NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_O_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_Q7_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_Q8_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes_frame_n_even_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_O_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_Q7_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_Q8_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes_frame_p_odd_SHIFTOUT2_UNCONNECTED;

  FDRE adclk_reg
       (.C(i_Lclk_p),
        .CE(1'b1),
        .D(i_ADclk_p),
        .Q(I),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    bitslip_even_i_1
       (.I0(inc12_in),
        .I1(\t_wait_reg[1]__0_n_0 ),
        .I2(\t_wait_reg[2]__0_n_0 ),
        .I3(\t_wait_reg[0]__0_n_0 ),
        .I4(inc11_out),
        .O(bitslip_even));
  FDCE bitslip_even_reg
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(bitslip_even),
        .Q(bitslip_even_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    bitslip_odd_i_1
       (.I0(inc4_in),
        .I1(\t_wait_reg_n_0_[1] ),
        .I2(\t_wait_reg_n_0_[2] ),
        .I3(\t_wait_reg_n_0_[0] ),
        .I4(inc3_out),
        .O(bitslip_odd));
  FDCE bitslip_odd_reg
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(bitslip_odd),
        .Q(BITSLIP));
  (* box_type = "PRIMITIVE" *) 
  BUFIO bufio_lclk_sys
       (.I(i_Lclk_p),
        .O(bitslip_even_reg_0));
  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("1"),
    .SIM_DEVICE("7SERIES")) 
    bufr_ad_n
       (.CE(1'b1),
        .CLR(1'b0),
        .I(I),
        .O(o_data_clk));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \delay_even[0]_i_1 
       (.I0(\t_wait_reg[1]__0_n_0 ),
        .I1(\t_wait_reg[2]__0_n_0 ),
        .I2(\t_wait_reg[0]__0_n_0 ),
        .I3(inc12_in),
        .I4(\delay_even_reg_n_0_[0] ),
        .O(\delay_even[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDAFFFFFFA4000000)) 
    \delay_even[1]_i_1 
       (.I0(inc_reg__0_n_0),
        .I1(\delay_even_reg_n_0_[2] ),
        .I2(\delay_even_reg_n_0_[0] ),
        .I3(inc12_in),
        .I4(eqOp6_in),
        .I5(\delay_even_reg_n_0_[1] ),
        .O(\delay_even[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF80000000)) 
    \delay_even[2]_i_1 
       (.I0(inc_reg__0_n_0),
        .I1(\delay_even_reg_n_0_[0] ),
        .I2(\delay_even_reg_n_0_[1] ),
        .I3(inc12_in),
        .I4(eqOp6_in),
        .I5(\delay_even_reg_n_0_[2] ),
        .O(\delay_even[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \delay_even[2]_i_2 
       (.I0(\t_wait_reg[1]__0_n_0 ),
        .I1(\t_wait_reg[2]__0_n_0 ),
        .I2(\t_wait_reg[0]__0_n_0 ),
        .O(eqOp6_in));
  FDCE \delay_even_reg[0] 
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\delay_even[0]_i_1_n_0 ),
        .Q(\delay_even_reg_n_0_[0] ));
  FDCE \delay_even_reg[1] 
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\delay_even[1]_i_1_n_0 ),
        .Q(\delay_even_reg_n_0_[1] ));
  FDCE \delay_even_reg[2] 
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\delay_even[2]_i_1_n_0 ),
        .Q(\delay_even_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \delay_odd[0]_i_1 
       (.I0(\t_wait_reg_n_0_[1] ),
        .I1(\t_wait_reg_n_0_[2] ),
        .I2(\t_wait_reg_n_0_[0] ),
        .I3(inc4_in),
        .I4(\delay_odd_reg_n_0_[0] ),
        .O(\delay_odd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDAFFFFFFA4000000)) 
    \delay_odd[1]_i_1 
       (.I0(inc_reg_n_0),
        .I1(\delay_odd_reg_n_0_[2] ),
        .I2(\delay_odd_reg_n_0_[0] ),
        .I3(inc4_in),
        .I4(\delay_odd[2]_i_2_n_0 ),
        .I5(\delay_odd_reg_n_0_[1] ),
        .O(\delay_odd[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF80000000)) 
    \delay_odd[2]_i_1 
       (.I0(inc_reg_n_0),
        .I1(\delay_odd_reg_n_0_[0] ),
        .I2(\delay_odd_reg_n_0_[1] ),
        .I3(inc4_in),
        .I4(\delay_odd[2]_i_2_n_0 ),
        .I5(\delay_odd_reg_n_0_[2] ),
        .O(\delay_odd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \delay_odd[2]_i_2 
       (.I0(\t_wait_reg_n_0_[1] ),
        .I1(\t_wait_reg_n_0_[2] ),
        .I2(\t_wait_reg_n_0_[0] ),
        .O(\delay_odd[2]_i_2_n_0 ));
  FDCE \delay_odd_reg[0] 
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\delay_odd[0]_i_1_n_0 ),
        .Q(\delay_odd_reg_n_0_[0] ));
  FDCE \delay_odd_reg[1] 
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\delay_odd[1]_i_1_n_0 ),
        .Q(\delay_odd_reg_n_0_[1] ));
  FDCE \delay_odd_reg[2] 
       (.C(o_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\delay_odd[2]_i_1_n_0 ),
        .Q(\delay_odd_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h2AAB)) 
    inc__0_i_1
       (.I0(inc_reg__0_n_0),
        .I1(\delay_even_reg_n_0_[2] ),
        .I2(\delay_even_reg_n_0_[0] ),
        .I3(\delay_even_reg_n_0_[1] ),
        .O(inc11_out));
  LUT4 #(
    .INIT(16'h2AAB)) 
    inc_i_1
       (.I0(inc_reg_n_0),
        .I1(\delay_odd_reg_n_0_[2] ),
        .I2(\delay_odd_reg_n_0_[0] ),
        .I3(\delay_odd_reg_n_0_[1] ),
        .O(inc3_out));
  FDRE #(
    .INIT(1'b1)) 
    inc_reg
       (.C(o_data_clk),
        .CE(t_wait0),
        .D(inc3_out),
        .Q(inc_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    inc_reg__0
       (.C(o_data_clk),
        .CE(\t_wait[2]__0_i_1_n_0 ),
        .D(inc11_out),
        .Q(inc_reg__0_n_0),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes0_even
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch0_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes0_even_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch0[8]),
        .Q2(o_data_out_ch0[9]),
        .Q3(o_data_out_ch0[10]),
        .Q4(o_data_out_ch0[11]),
        .Q5(o_data_out_ch0[12]),
        .Q6(o_data_out_ch0[13]),
        .Q7(o_data_out_ch0[14]),
        .Q8(o_data_out_ch0[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes0_odd
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch0_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes0_odd_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch0[0]),
        .Q2(o_data_out_ch0[1]),
        .Q3(o_data_out_ch0[2]),
        .Q4(o_data_out_ch0[3]),
        .Q5(o_data_out_ch0[4]),
        .Q6(o_data_out_ch0[5]),
        .Q7(o_data_out_ch0[6]),
        .Q8(o_data_out_ch0[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes1_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch1_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes1_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch1[8]),
        .Q2(o_data_out_ch1[9]),
        .Q3(o_data_out_ch1[10]),
        .Q4(o_data_out_ch1[11]),
        .Q5(o_data_out_ch1[12]),
        .Q6(o_data_out_ch1[13]),
        .Q7(o_data_out_ch1[14]),
        .Q8(o_data_out_ch1[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes1_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch1_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes1_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch1[0]),
        .Q2(o_data_out_ch1[1]),
        .Q3(o_data_out_ch1[2]),
        .Q4(o_data_out_ch1[3]),
        .Q5(o_data_out_ch1[4]),
        .Q6(o_data_out_ch1[5]),
        .Q7(o_data_out_ch1[6]),
        .Q8(o_data_out_ch1[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes2_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch2_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes2_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch2[8]),
        .Q2(o_data_out_ch2[9]),
        .Q3(o_data_out_ch2[10]),
        .Q4(o_data_out_ch2[11]),
        .Q5(o_data_out_ch2[12]),
        .Q6(o_data_out_ch2[13]),
        .Q7(o_data_out_ch2[14]),
        .Q8(o_data_out_ch2[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes2_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch2_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes2_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch2[0]),
        .Q2(o_data_out_ch2[1]),
        .Q3(o_data_out_ch2[2]),
        .Q4(o_data_out_ch2[3]),
        .Q5(o_data_out_ch2[4]),
        .Q6(o_data_out_ch2[5]),
        .Q7(o_data_out_ch2[6]),
        .Q8(o_data_out_ch2[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes3_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch3_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes3_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch3[8]),
        .Q2(o_data_out_ch3[9]),
        .Q3(o_data_out_ch3[10]),
        .Q4(o_data_out_ch3[11]),
        .Q5(o_data_out_ch3[12]),
        .Q6(o_data_out_ch3[13]),
        .Q7(o_data_out_ch3[14]),
        .Q8(o_data_out_ch3[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes3_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch3_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes3_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch3[0]),
        .Q2(o_data_out_ch3[1]),
        .Q3(o_data_out_ch3[2]),
        .Q4(o_data_out_ch3[3]),
        .Q5(o_data_out_ch3[4]),
        .Q6(o_data_out_ch3[5]),
        .Q7(o_data_out_ch3[6]),
        .Q8(o_data_out_ch3[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes4_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch4_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes4_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch4[8]),
        .Q2(o_data_out_ch4[9]),
        .Q3(o_data_out_ch4[10]),
        .Q4(o_data_out_ch4[11]),
        .Q5(o_data_out_ch4[12]),
        .Q6(o_data_out_ch4[13]),
        .Q7(o_data_out_ch4[14]),
        .Q8(o_data_out_ch4[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes4_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch4_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes4_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch4[0]),
        .Q2(o_data_out_ch4[1]),
        .Q3(o_data_out_ch4[2]),
        .Q4(o_data_out_ch4[3]),
        .Q5(o_data_out_ch4[4]),
        .Q6(o_data_out_ch4[5]),
        .Q7(o_data_out_ch4[6]),
        .Q8(o_data_out_ch4[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes5_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch5_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes5_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch5[8]),
        .Q2(o_data_out_ch5[9]),
        .Q3(o_data_out_ch5[10]),
        .Q4(o_data_out_ch5[11]),
        .Q5(o_data_out_ch5[12]),
        .Q6(o_data_out_ch5[13]),
        .Q7(o_data_out_ch5[14]),
        .Q8(o_data_out_ch5[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes5_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch5_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes5_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch5[0]),
        .Q2(o_data_out_ch5[1]),
        .Q3(o_data_out_ch5[2]),
        .Q4(o_data_out_ch5[3]),
        .Q5(o_data_out_ch5[4]),
        .Q6(o_data_out_ch5[5]),
        .Q7(o_data_out_ch5[6]),
        .Q8(o_data_out_ch5[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes6_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch6_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes6_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch6[8]),
        .Q2(o_data_out_ch6[9]),
        .Q3(o_data_out_ch6[10]),
        .Q4(o_data_out_ch6[11]),
        .Q5(o_data_out_ch6[12]),
        .Q6(o_data_out_ch6[13]),
        .Q7(o_data_out_ch6[14]),
        .Q8(o_data_out_ch6[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes6_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch6_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes6_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch6[0]),
        .Q2(o_data_out_ch6[1]),
        .Q3(o_data_out_ch6[2]),
        .Q4(o_data_out_ch6[3]),
        .Q5(o_data_out_ch6[4]),
        .Q6(o_data_out_ch6[5]),
        .Q7(o_data_out_ch6[6]),
        .Q8(o_data_out_ch6[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes7_n
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch7_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes7_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch7[8]),
        .Q2(o_data_out_ch7[9]),
        .Q3(o_data_out_ch7[10]),
        .Q4(o_data_out_ch7[11]),
        .Q5(o_data_out_ch7[12]),
        .Q6(o_data_out_ch7[13]),
        .Q7(o_data_out_ch7[14]),
        .Q8(o_data_out_ch7[15]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes7_p
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch7_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes7_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch7[0]),
        .Q2(o_data_out_ch7[1]),
        .Q3(o_data_out_ch7[2]),
        .Q4(o_data_out_ch7[3]),
        .Q5(o_data_out_ch7[4]),
        .Q6(o_data_out_ch7[5]),
        .Q7(o_data_out_ch7[6]),
        .Q8(o_data_out_ch7[7]),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes_frame_n_even
       (.BITSLIP(bitslip_even_reg_n_0),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_ADclk_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes_frame_n_even_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3),
        .Q4(Q4),
        .Q5(Q5),
        .Q6(Q6),
        .Q7(NLW_iserdes_frame_n_even_Q7_UNCONNECTED),
        .Q8(NLW_iserdes_frame_n_even_Q8_UNCONNECTED),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes_frame_n_even_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes_frame_n_even_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes_frame_p_odd
       (.BITSLIP(BITSLIP),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(bitslip_even_reg_0),
        .CLKB(CLKB),
        .CLKDIV(o_data_clk),
        .CLKDIVP(1'b0),
        .D(i_ADclk_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes_frame_p_odd_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(iserdes_frame_p_odd_n_1),
        .Q2(iserdes_frame_p_odd_n_2),
        .Q3(iserdes_frame_p_odd_n_3),
        .Q4(iserdes_frame_p_odd_n_4),
        .Q5(iserdes_frame_p_odd_n_5),
        .Q6(iserdes_frame_p_odd_n_6),
        .Q7(NLW_iserdes_frame_p_odd_Q7_UNCONNECTED),
        .Q8(NLW_iserdes_frame_p_odd_Q8_UNCONNECTED),
        .RST(i_rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes_frame_p_odd_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes_frame_p_odd_SHIFTOUT2_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    ready_i_i_2
       (.I0(s00_axi_ctrl_aresetn),
        .O(i_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \t_wait[0]__0_i_1 
       (.I0(\t_wait_reg[0]__0_n_0 ),
        .O(\t_wait[0]__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t_wait[0]_i_1 
       (.I0(\t_wait_reg_n_0_[0] ),
        .O(\t_wait[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_wait[1]__0_i_1 
       (.I0(\t_wait_reg[0]__0_n_0 ),
        .I1(\t_wait_reg[1]__0_n_0 ),
        .O(\t_wait[1]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_wait[1]_i_1 
       (.I0(\t_wait_reg_n_0_[0] ),
        .I1(\t_wait_reg_n_0_[1] ),
        .O(\t_wait[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \t_wait[2]__0_i_1 
       (.I0(s00_axi_ctrl_aresetn),
        .I1(inc12_in),
        .O(\t_wait[2]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \t_wait[2]__0_i_2 
       (.I0(\t_wait_reg[0]__0_n_0 ),
        .I1(\t_wait_reg[2]__0_n_0 ),
        .I2(\t_wait_reg[1]__0_n_0 ),
        .O(\t_wait[2]__0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \t_wait[2]__0_i_3 
       (.I0(Q1),
        .I1(Q3),
        .I2(Q4),
        .I3(Q6),
        .I4(Q5),
        .I5(Q2),
        .O(inc12_in));
  LUT2 #(
    .INIT(4'h8)) 
    \t_wait[2]_i_1 
       (.I0(s00_axi_ctrl_aresetn),
        .I1(inc4_in),
        .O(t_wait0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \t_wait[2]_i_2 
       (.I0(\t_wait_reg_n_0_[0] ),
        .I1(\t_wait_reg_n_0_[2] ),
        .I2(\t_wait_reg_n_0_[1] ),
        .O(\t_wait[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \t_wait[2]_i_3 
       (.I0(iserdes_frame_p_odd_n_6),
        .I1(iserdes_frame_p_odd_n_5),
        .I2(iserdes_frame_p_odd_n_2),
        .I3(iserdes_frame_p_odd_n_1),
        .I4(iserdes_frame_p_odd_n_3),
        .I5(iserdes_frame_p_odd_n_4),
        .O(inc4_in));
  FDRE #(
    .INIT(1'b0)) 
    \t_wait_reg[0] 
       (.C(o_data_clk),
        .CE(t_wait0),
        .D(\t_wait[0]_i_1_n_0 ),
        .Q(\t_wait_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_wait_reg[0]__0 
       (.C(o_data_clk),
        .CE(\t_wait[2]__0_i_1_n_0 ),
        .D(\t_wait[0]__0_i_1_n_0 ),
        .Q(\t_wait_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_wait_reg[1] 
       (.C(o_data_clk),
        .CE(t_wait0),
        .D(\t_wait[1]_i_1_n_0 ),
        .Q(\t_wait_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_wait_reg[1]__0 
       (.C(o_data_clk),
        .CE(\t_wait[2]__0_i_1_n_0 ),
        .D(\t_wait[1]__0_i_1_n_0 ),
        .Q(\t_wait_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_wait_reg[2] 
       (.C(o_data_clk),
        .CE(t_wait0),
        .D(\t_wait[2]_i_2_n_0 ),
        .Q(\t_wait_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_wait_reg[2]__0 
       (.C(o_data_clk),
        .CE(\t_wait[2]__0_i_1_n_0 ),
        .D(\t_wait[2]__0_i_2_n_0 ),
        .Q(\t_wait_reg[2]__0_n_0 ),
        .R(1'b0));
endmodule

(* ADC_N_bits = "16" *) (* C_S00_AXI_ctrl_ADDR_WIDTH = "4" *) (* C_S00_AXI_ctrl_DATA_WIDTH = "32" *) 
(* FRAME_PATTERN = "6'b111000" *) (* ORIG_REF_NAME = "AXI_ADC_v1_0" *) 
module zsys_AXI_ADC_v1_0_0_0_AXI_ADC_v1_0
   (i_MISO,
    o_MOSI,
    o_SCLK,
    o_nCS,
    o_ADC_nrst,
    o_debug,
    i_ADclk_p,
    i_ADclk_n,
    i_Lclk_p,
    i_Lclk_n,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_data_clk,
    s00_axi_ctrl_aclk,
    s00_axi_ctrl_aresetn,
    s00_axi_ctrl_awaddr,
    s00_axi_ctrl_awprot,
    s00_axi_ctrl_awvalid,
    s00_axi_ctrl_awready,
    s00_axi_ctrl_wdata,
    s00_axi_ctrl_wstrb,
    s00_axi_ctrl_wvalid,
    s00_axi_ctrl_wready,
    s00_axi_ctrl_bresp,
    s00_axi_ctrl_bvalid,
    s00_axi_ctrl_bready,
    s00_axi_ctrl_araddr,
    s00_axi_ctrl_arprot,
    s00_axi_ctrl_arvalid,
    s00_axi_ctrl_arready,
    s00_axi_ctrl_rdata,
    s00_axi_ctrl_rresp,
    s00_axi_ctrl_rvalid,
    s00_axi_ctrl_rready);
  input i_MISO;
  output o_MOSI;
  output o_SCLK;
  output o_nCS;
  output o_ADC_nrst;
  output [11:0]o_debug;
  input i_ADclk_p;
  input i_ADclk_n;
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 i_Lclk_p CLK_P" *) (* x_interface_parameter = "ASSOCIATED_BUSIF i_Lclk_p, ASSOCIATED_RESET i_rst, FREQ_HZ 400000000" *) input i_Lclk_p;
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 i_Lclk_n CLK_N" *) input i_Lclk_n;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  output o_data_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* x_interface_parameter = "ASSOCIATED_BUSIF sys_clk, ASSOCIATED_RESET sys_rst, FREQ_HZ 100000000" *) input s00_axi_ctrl_aclk;
  input s00_axi_ctrl_aresetn;
  input [3:0]s00_axi_ctrl_awaddr;
  input [2:0]s00_axi_ctrl_awprot;
  input s00_axi_ctrl_awvalid;
  output s00_axi_ctrl_awready;
  input [31:0]s00_axi_ctrl_wdata;
  input [3:0]s00_axi_ctrl_wstrb;
  input s00_axi_ctrl_wvalid;
  output s00_axi_ctrl_wready;
  output [1:0]s00_axi_ctrl_bresp;
  output s00_axi_ctrl_bvalid;
  input s00_axi_ctrl_bready;
  input [3:0]s00_axi_ctrl_araddr;
  input [2:0]s00_axi_ctrl_arprot;
  input s00_axi_ctrl_arvalid;
  output s00_axi_ctrl_arready;
  output [31:0]s00_axi_ctrl_rdata;
  output [1:0]s00_axi_ctrl_rresp;
  output s00_axi_ctrl_rvalid;
  input s00_axi_ctrl_rready;

  wire \<const0> ;
  wire \Inst_ADC_readout_12bit/lclk_sys ;
  wire i_ADclk_n;
  wire i_ADclk_p;
  wire i_Lclk_p;
  wire i_MISO;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire n_0_177;
  wire o_SCLK;
  wire o_data_clk;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [11:0]\^o_debug ;
  wire s00_axi_ctrl_aclk;
  wire [3:0]s00_axi_ctrl_araddr;
  wire s00_axi_ctrl_aresetn;
  wire s00_axi_ctrl_arready;
  wire s00_axi_ctrl_arvalid;
  wire [3:0]s00_axi_ctrl_awaddr;
  wire s00_axi_ctrl_awready;
  wire s00_axi_ctrl_awvalid;
  wire s00_axi_ctrl_bready;
  wire s00_axi_ctrl_bvalid;
  wire [31:0]s00_axi_ctrl_rdata;
  wire s00_axi_ctrl_rready;
  wire s00_axi_ctrl_rvalid;
  wire [31:0]s00_axi_ctrl_wdata;
  wire s00_axi_ctrl_wready;
  wire [3:0]s00_axi_ctrl_wstrb;
  wire s00_axi_ctrl_wvalid;

  assign o_ADC_nrst = \^o_debug [11];
  assign o_MOSI = \^o_debug [5];
  assign o_debug[11:7] = \^o_debug [11:7];
  assign o_debug[6] = o_SCLK;
  assign o_debug[5] = \^o_debug [5];
  assign o_debug[4] = i_MISO;
  assign o_debug[3:0] = \^o_debug [3:0];
  assign o_nCS = \^o_debug [7];
  assign s00_axi_ctrl_bresp[1] = \<const0> ;
  assign s00_axi_ctrl_bresp[0] = \<const0> ;
  assign s00_axi_ctrl_rresp[1] = \<const0> ;
  assign s00_axi_ctrl_rresp[0] = \<const0> ;
  zsys_AXI_ADC_v1_0_0_0_AXI_ADC_v1_0_S00_AXI_ctrl AXI_ADC_v1_0_S00_AXI_ctrl_inst
       (.CLK(o_data_clk),
        .CLKB(\Inst_ADC_readout_12bit/lclk_sys ),
        .i_ADclk_n(i_ADclk_n),
        .i_ADclk_p(i_ADclk_p),
        .i_Lclk_p(i_Lclk_p),
        .i_MISO(i_MISO),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .lclk_sys(\Inst_ADC_readout_12bit/lclk_sys ),
        .o_SCLK(o_SCLK),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .o_debug({\^o_debug [11:8],\^o_debug [5]}),
        .\o_debug[7] (\^o_debug [7]),
        .o_debug_0_sp_1(\^o_debug [0]),
        .o_debug_1_sp_1(\^o_debug [1]),
        .o_debug_2_sp_1(\^o_debug [2]),
        .o_debug_3_sp_1(\^o_debug [3]),
        .s00_axi_ctrl_aclk(s00_axi_ctrl_aclk),
        .s00_axi_ctrl_araddr(s00_axi_ctrl_araddr[3:2]),
        .s00_axi_ctrl_aresetn(s00_axi_ctrl_aresetn),
        .s00_axi_ctrl_arready(s00_axi_ctrl_arready),
        .s00_axi_ctrl_arvalid(s00_axi_ctrl_arvalid),
        .s00_axi_ctrl_awaddr(s00_axi_ctrl_awaddr[3:2]),
        .s00_axi_ctrl_awready(s00_axi_ctrl_awready),
        .s00_axi_ctrl_awvalid(s00_axi_ctrl_awvalid),
        .s00_axi_ctrl_bready(s00_axi_ctrl_bready),
        .s00_axi_ctrl_bvalid(s00_axi_ctrl_bvalid),
        .s00_axi_ctrl_rdata(s00_axi_ctrl_rdata),
        .s00_axi_ctrl_rready(s00_axi_ctrl_rready),
        .s00_axi_ctrl_rvalid(s00_axi_ctrl_rvalid),
        .s00_axi_ctrl_wdata(s00_axi_ctrl_wdata),
        .s00_axi_ctrl_wready(s00_axi_ctrl_wready),
        .s00_axi_ctrl_wstrb(s00_axi_ctrl_wstrb),
        .s00_axi_ctrl_wvalid(s00_axi_ctrl_wvalid));
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    i_177
       (.I0(s00_axi_ctrl_aresetn),
        .O(n_0_177));
endmodule

(* ORIG_REF_NAME = "AXI_ADC_v1_0_S00_AXI_ctrl" *) 
module zsys_AXI_ADC_v1_0_0_0_AXI_ADC_v1_0_S00_AXI_ctrl
   (lclk_sys,
    CLK,
    o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_debug_0_sp_1,
    o_SCLK,
    \o_debug[7] ,
    s00_axi_ctrl_awready,
    s00_axi_ctrl_wready,
    s00_axi_ctrl_arready,
    o_debug_1_sp_1,
    o_debug_2_sp_1,
    o_debug_3_sp_1,
    o_debug,
    s00_axi_ctrl_bvalid,
    s00_axi_ctrl_rvalid,
    s00_axi_ctrl_rdata,
    i_Lclk_p,
    CLKB,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    i_ADclk_p,
    i_ADclk_n,
    s00_axi_ctrl_aclk,
    s00_axi_ctrl_aresetn,
    s00_axi_ctrl_wvalid,
    s00_axi_ctrl_awvalid,
    s00_axi_ctrl_bready,
    s00_axi_ctrl_arvalid,
    s00_axi_ctrl_rready,
    s00_axi_ctrl_awaddr,
    s00_axi_ctrl_wdata,
    s00_axi_ctrl_wstrb,
    s00_axi_ctrl_araddr,
    i_MISO);
  output lclk_sys;
  output CLK;
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  output o_debug_0_sp_1;
  output o_SCLK;
  output \o_debug[7] ;
  output s00_axi_ctrl_awready;
  output s00_axi_ctrl_wready;
  output s00_axi_ctrl_arready;
  output o_debug_1_sp_1;
  output o_debug_2_sp_1;
  output o_debug_3_sp_1;
  output [4:0]o_debug;
  output s00_axi_ctrl_bvalid;
  output s00_axi_ctrl_rvalid;
  output [31:0]s00_axi_ctrl_rdata;
  input i_Lclk_p;
  input CLKB;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input i_ADclk_p;
  input i_ADclk_n;
  input s00_axi_ctrl_aclk;
  input s00_axi_ctrl_aresetn;
  input s00_axi_ctrl_wvalid;
  input s00_axi_ctrl_awvalid;
  input s00_axi_ctrl_bready;
  input s00_axi_ctrl_arvalid;
  input s00_axi_ctrl_rready;
  input [1:0]s00_axi_ctrl_awaddr;
  input [31:0]s00_axi_ctrl_wdata;
  input [3:0]s00_axi_ctrl_wstrb;
  input [1:0]s00_axi_ctrl_araddr;
  input i_MISO;

  wire CLK;
  wire CLKB;
  wire Inst_ADC_n_10;
  wire Inst_ADC_n_11;
  wire Inst_ADC_n_12;
  wire Inst_ADC_n_13;
  wire Inst_ADC_n_14;
  wire Inst_ADC_n_15;
  wire Inst_ADC_n_16;
  wire Inst_ADC_n_17;
  wire Inst_ADC_n_18;
  wire Inst_ADC_n_19;
  wire Inst_ADC_n_20;
  wire Inst_ADC_n_21;
  wire Inst_ADC_n_22;
  wire Inst_ADC_n_23;
  wire Inst_ADC_n_24;
  wire Inst_ADC_n_25;
  wire Inst_ADC_n_26;
  wire Inst_ADC_n_27;
  wire Inst_ADC_n_8;
  wire Inst_ADC_n_9;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire i_ADclk_n;
  wire i_ADclk_p;
  wire i_Lclk_p;
  wire i_MISO;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire i_rst;
  wire lclk_sys;
  wire o_SCLK;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [4:0]o_debug;
  wire \o_debug[7] ;
  wire o_debug_0_sn_1;
  wire o_debug_1_sn_1;
  wire o_debug_2_sn_1;
  wire o_debug_3_sn_1;
  wire [31:2]p_1_in;
  wire [7:0]pointer_tbr;
  wire [31:0]reg_data_out;
  wire s00_axi_ctrl_aclk;
  wire [1:0]s00_axi_ctrl_araddr;
  wire s00_axi_ctrl_aresetn;
  wire s00_axi_ctrl_arready;
  wire s00_axi_ctrl_arvalid;
  wire [1:0]s00_axi_ctrl_awaddr;
  wire s00_axi_ctrl_awready;
  wire s00_axi_ctrl_awvalid;
  wire s00_axi_ctrl_bready;
  wire s00_axi_ctrl_bvalid;
  wire [31:0]s00_axi_ctrl_rdata;
  wire s00_axi_ctrl_rready;
  wire s00_axi_ctrl_rvalid;
  wire [31:0]s00_axi_ctrl_wdata;
  wire s00_axi_ctrl_wready;
  wire [3:0]s00_axi_ctrl_wstrb;
  wire s00_axi_ctrl_wvalid;
  wire \slv_reg0[4]_i_1_n_0 ;
  wire \slv_reg0[4]_i_2_n_0 ;
  wire \slv_reg0[5]_i_1_n_0 ;
  wire \slv_reg0[6]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  assign o_debug_0_sp_1 = o_debug_0_sn_1;
  assign o_debug_1_sp_1 = o_debug_1_sn_1;
  assign o_debug_2_sp_1 = o_debug_2_sn_1;
  assign o_debug_3_sp_1 = o_debug_3_sn_1;
  zsys_AXI_ADC_v1_0_0_0_ADC_ctrl Inst_ADC
       (.AR(\o_debug[7] ),
        .Q({\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .SR(Inst_ADC_n_27),
        .adc_config_reg(Inst_ADC_n_10),
        .adc_config_reg_0(o_debug_1_sn_1),
        .axi_awready_reg(s00_axi_ctrl_awready),
        .axi_wready_reg(s00_axi_ctrl_wready),
        .i_MISO(i_MISO),
        .i_rst(i_rst),
        .o_SCLK(o_SCLK),
        .o_debug(o_debug),
        .o_debug_0_sp_1(o_debug_0_sn_1),
        .read_reg_reg(Inst_ADC_n_8),
        .read_reg_reg_0(o_debug_3_sn_1),
        .s00_axi_ctrl_aclk(s00_axi_ctrl_aclk),
        .s00_axi_ctrl_aresetn(s00_axi_ctrl_aresetn),
        .s00_axi_ctrl_awvalid(s00_axi_ctrl_awvalid),
        .s00_axi_ctrl_wdata(s00_axi_ctrl_wdata[31:16]),
        .s00_axi_ctrl_wvalid(s00_axi_ctrl_wvalid),
        .\slv_reg1_reg[23] ({pointer_tbr,\slv_reg1_reg_n_0_[15] ,\slv_reg1_reg_n_0_[14] ,\slv_reg1_reg_n_0_[13] ,\slv_reg1_reg_n_0_[12] ,\slv_reg1_reg_n_0_[11] ,\slv_reg1_reg_n_0_[10] ,\slv_reg1_reg_n_0_[9] ,\slv_reg1_reg_n_0_[8] ,\slv_reg1_reg_n_0_[7] ,\slv_reg1_reg_n_0_[6] ,\slv_reg1_reg_n_0_[5] ,\slv_reg1_reg_n_0_[4] ,\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }),
        .\slv_reg2_reg[16] (Inst_ADC_n_11),
        .\slv_reg2_reg[17] (Inst_ADC_n_12),
        .\slv_reg2_reg[18] (Inst_ADC_n_13),
        .\slv_reg2_reg[19] (Inst_ADC_n_14),
        .\slv_reg2_reg[20] (Inst_ADC_n_15),
        .\slv_reg2_reg[21] (Inst_ADC_n_16),
        .\slv_reg2_reg[22] (Inst_ADC_n_17),
        .\slv_reg2_reg[23] (Inst_ADC_n_18),
        .\slv_reg2_reg[24] (Inst_ADC_n_19),
        .\slv_reg2_reg[25] (Inst_ADC_n_20),
        .\slv_reg2_reg[26] (Inst_ADC_n_21),
        .\slv_reg2_reg[27] (Inst_ADC_n_22),
        .\slv_reg2_reg[28] (Inst_ADC_n_23),
        .\slv_reg2_reg[29] (Inst_ADC_n_24),
        .\slv_reg2_reg[30] (Inst_ADC_n_25),
        .\slv_reg2_reg[31] (Inst_ADC_n_26),
        .slv_reg_wren__2(slv_reg_wren__2),
        .write_reg_reg(Inst_ADC_n_9),
        .write_reg_reg_0(o_debug_2_sn_1));
  zsys_AXI_ADC_v1_0_0_0_ADC_readout_2 Inst_ADC_readout_12bit
       (.CLKB(CLKB),
        .bitslip_even_reg_0(lclk_sys),
        .i_ADclk_n(i_ADclk_n),
        .i_ADclk_p(i_ADclk_p),
        .i_Lclk_p(i_Lclk_p),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .i_rst(i_rst),
        .o_data_clk(CLK),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .s00_axi_ctrl_aresetn(s00_axi_ctrl_aresetn));
  FDRE adc_config_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(Inst_ADC_n_10),
        .Q(o_debug_1_sn_1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_ctrl_araddr[0]),
        .I1(s00_axi_ctrl_arvalid),
        .I2(s00_axi_ctrl_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_ctrl_araddr[1]),
        .I1(s00_axi_ctrl_arvalid),
        .I2(s00_axi_ctrl_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(i_rst));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_ctrl_arvalid),
        .I1(s00_axi_ctrl_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_ctrl_arready),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_ctrl_awaddr[0]),
        .I1(s00_axi_ctrl_awvalid),
        .I2(s00_axi_ctrl_wvalid),
        .I3(s00_axi_ctrl_awready),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_ctrl_awaddr[1]),
        .I1(s00_axi_ctrl_awvalid),
        .I2(s00_axi_ctrl_wvalid),
        .I3(s00_axi_ctrl_awready),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(i_rst));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_ctrl_awvalid),
        .I1(s00_axi_ctrl_wvalid),
        .I2(s00_axi_ctrl_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_ctrl_awready),
        .R(i_rst));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_ctrl_wvalid),
        .I1(s00_axi_ctrl_awready),
        .I2(s00_axi_ctrl_wready),
        .I3(s00_axi_ctrl_awvalid),
        .I4(s00_axi_ctrl_bready),
        .I5(s00_axi_ctrl_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_ctrl_bvalid),
        .R(i_rst));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(\slv_reg0_reg_n_0_[0] ),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(pointer_tbr[0]),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(pointer_tbr[1]),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(pointer_tbr[2]),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(pointer_tbr[3]),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg1_reg_n_0_[1] ),
        .I1(\slv_reg0_reg_n_0_[1] ),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(pointer_tbr[4]),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(pointer_tbr[5]),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(pointer_tbr[6]),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(pointer_tbr[7]),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg1_reg_n_0_[2] ),
        .I1(\slv_reg0_reg_n_0_[2] ),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_ctrl_arready),
        .I1(s00_axi_ctrl_arvalid),
        .I2(s00_axi_ctrl_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(\slv_reg0_reg_n_0_[31] ),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg1_reg_n_0_[3] ),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg1_reg_n_0_[4] ),
        .I1(\slv_reg0_reg_n_0_[4] ),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg1_reg_n_0_[7] ),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_ctrl_rdata[0]),
        .R(i_rst));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_ctrl_rdata[10]),
        .R(i_rst));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_ctrl_rdata[11]),
        .R(i_rst));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_ctrl_rdata[12]),
        .R(i_rst));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_ctrl_rdata[13]),
        .R(i_rst));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_ctrl_rdata[14]),
        .R(i_rst));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_ctrl_rdata[15]),
        .R(i_rst));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_ctrl_rdata[16]),
        .R(i_rst));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_ctrl_rdata[17]),
        .R(i_rst));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_ctrl_rdata[18]),
        .R(i_rst));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_ctrl_rdata[19]),
        .R(i_rst));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_ctrl_rdata[1]),
        .R(i_rst));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_ctrl_rdata[20]),
        .R(i_rst));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_ctrl_rdata[21]),
        .R(i_rst));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_ctrl_rdata[22]),
        .R(i_rst));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_ctrl_rdata[23]),
        .R(i_rst));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_ctrl_rdata[24]),
        .R(i_rst));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_ctrl_rdata[25]),
        .R(i_rst));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_ctrl_rdata[26]),
        .R(i_rst));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_ctrl_rdata[27]),
        .R(i_rst));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_ctrl_rdata[28]),
        .R(i_rst));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_ctrl_rdata[29]),
        .R(i_rst));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_ctrl_rdata[2]),
        .R(i_rst));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_ctrl_rdata[30]),
        .R(i_rst));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_ctrl_rdata[31]),
        .R(i_rst));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_ctrl_rdata[3]),
        .R(i_rst));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_ctrl_rdata[4]),
        .R(i_rst));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_ctrl_rdata[5]),
        .R(i_rst));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_ctrl_rdata[6]),
        .R(i_rst));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_ctrl_rdata[7]),
        .R(i_rst));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_ctrl_rdata[8]),
        .R(i_rst));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_ctrl_rdata[9]),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_ctrl_arvalid),
        .I1(s00_axi_ctrl_arready),
        .I2(s00_axi_ctrl_rvalid),
        .I3(s00_axi_ctrl_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_ctrl_rvalid),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_ctrl_awvalid),
        .I1(s00_axi_ctrl_wvalid),
        .I2(s00_axi_ctrl_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_ctrl_wready),
        .R(i_rst));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    read_reg_i_2
       (.I0(s00_axi_ctrl_wvalid),
        .I1(s00_axi_ctrl_awready),
        .I2(s00_axi_ctrl_wready),
        .I3(s00_axi_ctrl_awvalid),
        .O(slv_reg_wren__2));
  FDRE read_reg_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(Inst_ADC_n_8),
        .Q(o_debug_3_sn_1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_ctrl_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_ctrl_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_ctrl_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[3]_i_2 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_ctrl_wstrb[0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFFFCCCCA000CCCC)) 
    \slv_reg0[4]_i_1 
       (.I0(s00_axi_ctrl_wdata[4]),
        .I1(o_debug_0_sn_1),
        .I2(\slv_reg0[4]_i_2_n_0 ),
        .I3(s00_axi_ctrl_wstrb[0]),
        .I4(slv_reg_wren__2),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\slv_reg0[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \slv_reg0[4]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .O(\slv_reg0[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[5]_i_1 
       (.I0(s00_axi_ctrl_wdata[5]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_ctrl_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\slv_reg0[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[6]_i_1 
       (.I0(s00_axi_ctrl_wdata[6]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_ctrl_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\slv_reg0[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_ctrl_wdata[7]),
        .I1(slv_reg_wren__2),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_ctrl_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_ctrl_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_ctrl_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_ctrl_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_ctrl_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_ctrl_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_ctrl_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\slv_reg0[4]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\slv_reg0[5]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\slv_reg0[6]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\slv_reg0[7]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(i_rst));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_ctrl_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_ctrl_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_ctrl_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_ctrl_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_ctrl_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[16]),
        .Q(pointer_tbr[0]),
        .R(i_rst));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[17]),
        .Q(pointer_tbr[1]),
        .R(i_rst));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[18]),
        .Q(pointer_tbr[2]),
        .R(i_rst));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[19]),
        .Q(pointer_tbr[3]),
        .R(i_rst));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[20]),
        .Q(pointer_tbr[4]),
        .R(i_rst));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[21]),
        .Q(pointer_tbr[5]),
        .R(i_rst));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[22]),
        .Q(pointer_tbr[6]),
        .R(i_rst));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[23]),
        .Q(pointer_tbr[7]),
        .R(i_rst));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(i_rst));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_ctrl_wstrb[1]),
        .I2(axi_awaddr[3]),
        .I3(slv_reg_wren__2),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7555)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_ctrl_wstrb[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7555)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[2]),
        .I2(s00_axi_ctrl_wstrb[3]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_ctrl_wstrb[0]),
        .I2(axi_awaddr[3]),
        .I3(slv_reg_wren__2),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[0]),
        .Q(slv_reg2[0]),
        .R(i_rst));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[10]),
        .Q(slv_reg2[10]),
        .R(i_rst));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[11]),
        .Q(slv_reg2[11]),
        .R(i_rst));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[12]),
        .Q(slv_reg2[12]),
        .R(i_rst));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[13]),
        .Q(slv_reg2[13]),
        .R(i_rst));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[14]),
        .Q(slv_reg2[14]),
        .R(i_rst));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[15]),
        .Q(slv_reg2[15]),
        .R(i_rst));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_11),
        .Q(slv_reg2[16]),
        .R(i_rst));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_12),
        .Q(slv_reg2[17]),
        .R(i_rst));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_13),
        .Q(slv_reg2[18]),
        .R(i_rst));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_14),
        .Q(slv_reg2[19]),
        .R(i_rst));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[1]),
        .Q(slv_reg2[1]),
        .R(i_rst));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_15),
        .Q(slv_reg2[20]),
        .R(i_rst));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_16),
        .Q(slv_reg2[21]),
        .R(i_rst));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_17),
        .Q(slv_reg2[22]),
        .R(i_rst));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_18),
        .Q(slv_reg2[23]),
        .R(i_rst));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_19),
        .Q(slv_reg2[24]),
        .R(i_rst));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_20),
        .Q(slv_reg2[25]),
        .R(i_rst));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_21),
        .Q(slv_reg2[26]),
        .R(i_rst));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_22),
        .Q(slv_reg2[27]),
        .R(i_rst));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_23),
        .Q(slv_reg2[28]),
        .R(i_rst));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_24),
        .Q(slv_reg2[29]),
        .R(i_rst));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[2]),
        .Q(slv_reg2[2]),
        .R(i_rst));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_25),
        .Q(slv_reg2[30]),
        .R(i_rst));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_26),
        .Q(slv_reg2[31]),
        .R(i_rst));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[3]),
        .Q(slv_reg2[3]),
        .R(i_rst));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[4]),
        .Q(slv_reg2[4]),
        .R(i_rst));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[5]),
        .Q(slv_reg2[5]),
        .R(i_rst));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[6]),
        .Q(slv_reg2[6]),
        .R(i_rst));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[7]),
        .Q(slv_reg2[7]),
        .R(i_rst));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[8]),
        .Q(slv_reg2[8]),
        .R(i_rst));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[9]),
        .Q(slv_reg2[9]),
        .R(i_rst));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_ctrl_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_ctrl_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_ctrl_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_ctrl_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[0]),
        .Q(slv_reg3[0]),
        .R(i_rst));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[10]),
        .Q(slv_reg3[10]),
        .R(i_rst));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[11]),
        .Q(slv_reg3[11]),
        .R(i_rst));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[12]),
        .Q(slv_reg3[12]),
        .R(i_rst));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[13]),
        .Q(slv_reg3[13]),
        .R(i_rst));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[14]),
        .Q(slv_reg3[14]),
        .R(i_rst));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[15]),
        .Q(slv_reg3[15]),
        .R(i_rst));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[16]),
        .Q(slv_reg3[16]),
        .R(i_rst));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[17]),
        .Q(slv_reg3[17]),
        .R(i_rst));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[18]),
        .Q(slv_reg3[18]),
        .R(i_rst));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[19]),
        .Q(slv_reg3[19]),
        .R(i_rst));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[1]),
        .Q(slv_reg3[1]),
        .R(i_rst));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[20]),
        .Q(slv_reg3[20]),
        .R(i_rst));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[21]),
        .Q(slv_reg3[21]),
        .R(i_rst));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[22]),
        .Q(slv_reg3[22]),
        .R(i_rst));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[23]),
        .Q(slv_reg3[23]),
        .R(i_rst));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[24]),
        .Q(slv_reg3[24]),
        .R(i_rst));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[25]),
        .Q(slv_reg3[25]),
        .R(i_rst));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[26]),
        .Q(slv_reg3[26]),
        .R(i_rst));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[27]),
        .Q(slv_reg3[27]),
        .R(i_rst));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[28]),
        .Q(slv_reg3[28]),
        .R(i_rst));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[29]),
        .Q(slv_reg3[29]),
        .R(i_rst));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[2]),
        .Q(slv_reg3[2]),
        .R(i_rst));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[30]),
        .Q(slv_reg3[30]),
        .R(i_rst));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[31]),
        .Q(slv_reg3[31]),
        .R(i_rst));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[3]),
        .Q(slv_reg3[3]),
        .R(i_rst));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[4]),
        .Q(slv_reg3[4]),
        .R(i_rst));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[5]),
        .Q(slv_reg3[5]),
        .R(i_rst));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[6]),
        .Q(slv_reg3[6]),
        .R(i_rst));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[7]),
        .Q(slv_reg3[7]),
        .R(i_rst));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[8]),
        .Q(slv_reg3[8]),
        .R(i_rst));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_ctrl_wdata[9]),
        .Q(slv_reg3[9]),
        .R(i_rst));
  FDRE write_reg_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(Inst_ADC_n_9),
        .Q(o_debug_2_sn_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SPI_core_v2" *) 
module zsys_AXI_ADC_v1_0_0_0_SPI_core_v2
   (o_SCLK,
    \o_debug[7] ,
    spi_free,
    o_debug,
    ready_i_reg,
    spi_start_reg,
    \adc_action_ctrl_state_reg[0] ,
    E,
    adc_action_ctrl_state0__2,
    \reg_addrss_reg[0] ,
    \spi_data_i_reg[0] ,
    Q,
    s00_axi_ctrl_aclk,
    L,
    s00_axi_ctrl_aresetn,
    reset,
    write_reg_reg,
    read_reg_reg,
    adc_config_reg,
    \adc_action_ctrl_state_reg[0]_0 ,
    \adc_action_ctrl_state_reg[2] ,
    \adc_action_ctrl_state_reg[2]_0 ,
    D,
    i_MISO);
  output o_SCLK;
  output \o_debug[7] ;
  output spi_free;
  output [1:0]o_debug;
  output ready_i_reg;
  output spi_start_reg;
  output \adc_action_ctrl_state_reg[0] ;
  output [0:0]E;
  output adc_action_ctrl_state0__2;
  output [0:0]\reg_addrss_reg[0] ;
  output [0:0]\spi_data_i_reg[0] ;
  output [15:0]Q;
  input s00_axi_ctrl_aclk;
  input [0:2]L;
  input s00_axi_ctrl_aresetn;
  input reset;
  input write_reg_reg;
  input read_reg_reg;
  input adc_config_reg;
  input \adc_action_ctrl_state_reg[0]_0 ;
  input \adc_action_ctrl_state_reg[2] ;
  input \adc_action_ctrl_state_reg[2]_0 ;
  input [23:0]D;
  input i_MISO;

  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_sequential_sm_master[0]_i_1_n_0 ;
  wire \FSM_sequential_sm_master[0]_i_2_n_0 ;
  wire \FSM_sequential_sm_master[1]_i_1_n_0 ;
  wire \FSM_sequential_sm_master[1]_i_2_n_0 ;
  wire [0:2]L;
  wire MOSI01_out;
  wire MOSI_i_10_n_0;
  wire MOSI_i_11_n_0;
  wire MOSI_i_12_n_0;
  wire MOSI_i_1_n_0;
  wire MOSI_i_7_n_0;
  wire MOSI_i_8_n_0;
  wire MOSI_i_9_n_0;
  wire MOSI_reg_i_2_n_0;
  wire MOSI_reg_i_3_n_0;
  wire MOSI_reg_i_5_n_0;
  wire MOSI_reg_i_6_n_0;
  wire [15:0]Q;
  wire adc_action_ctrl_state0__2;
  wire \adc_action_ctrl_state_reg[0] ;
  wire \adc_action_ctrl_state_reg[0]_0 ;
  wire \adc_action_ctrl_state_reg[2] ;
  wire \adc_action_ctrl_state_reg[2]_0 ;
  wire adc_config_reg;
  wire bit_cntr0;
  wire bit_cntr16_out;
  wire [4:0]bit_cntr_reg__0;
  wire \core_state[0]_i_1_n_0 ;
  wire \data_i[23]_i_1_n_0 ;
  wire \data_i_reg_n_0_[0] ;
  wire \data_i_reg_n_0_[10] ;
  wire \data_i_reg_n_0_[11] ;
  wire \data_i_reg_n_0_[12] ;
  wire \data_i_reg_n_0_[13] ;
  wire \data_i_reg_n_0_[14] ;
  wire \data_i_reg_n_0_[15] ;
  wire \data_i_reg_n_0_[16] ;
  wire \data_i_reg_n_0_[17] ;
  wire \data_i_reg_n_0_[18] ;
  wire \data_i_reg_n_0_[19] ;
  wire \data_i_reg_n_0_[1] ;
  wire \data_i_reg_n_0_[20] ;
  wire \data_i_reg_n_0_[21] ;
  wire \data_i_reg_n_0_[22] ;
  wire \data_i_reg_n_0_[23] ;
  wire \data_i_reg_n_0_[2] ;
  wire \data_i_reg_n_0_[3] ;
  wire \data_i_reg_n_0_[4] ;
  wire \data_i_reg_n_0_[5] ;
  wire \data_i_reg_n_0_[6] ;
  wire \data_i_reg_n_0_[7] ;
  wire \data_i_reg_n_0_[8] ;
  wire \data_i_reg_n_0_[9] ;
  wire free_i_i_1_n_0;
  wire i_MISO;
  wire [15:0]incoming_i;
  wire \incoming_i[0]_i_1_n_0 ;
  wire \incoming_i[10]_i_1_n_0 ;
  wire \incoming_i[11]_i_1_n_0 ;
  wire \incoming_i[11]_i_2_n_0 ;
  wire \incoming_i[12]_i_1_n_0 ;
  wire \incoming_i[12]_i_2_n_0 ;
  wire \incoming_i[13]_i_1_n_0 ;
  wire \incoming_i[13]_i_2_n_0 ;
  wire \incoming_i[14]_i_1_n_0 ;
  wire \incoming_i[14]_i_2_n_0 ;
  wire \incoming_i[15]_i_1_n_0 ;
  wire \incoming_i[15]_i_2_n_0 ;
  wire \incoming_i[15]_i_3_n_0 ;
  wire \incoming_i[1]_i_1_n_0 ;
  wire \incoming_i[2]_i_1_n_0 ;
  wire \incoming_i[3]_i_1_n_0 ;
  wire \incoming_i[3]_i_2_n_0 ;
  wire \incoming_i[4]_i_1_n_0 ;
  wire \incoming_i[5]_i_1_n_0 ;
  wire \incoming_i[6]_i_1_n_0 ;
  wire \incoming_i[7]_i_1_n_0 ;
  wire \incoming_i[7]_i_2_n_0 ;
  wire \incoming_i[8]_i_1_n_0 ;
  wire \incoming_i[9]_i_1_n_0 ;
  wire nCS_i_i_1_n_0;
  wire o_SCLK;
  wire \o_data_from[15]_i_1_n_0 ;
  wire [1:0]o_debug;
  wire \o_debug[7] ;
  wire [4:0]p_0_in;
  wire read_reg_reg;
  wire ready_i_reg;
  wire [0:0]\reg_addrss_reg[0] ;
  wire reset;
  wire s00_axi_ctrl_aclk;
  wire s00_axi_ctrl_aresetn;
  wire \scl_cntr[0]_i_1_n_0 ;
  wire \scl_cntr[1]_i_1_n_0 ;
  wire \scl_cntr[2]_i_1_n_0 ;
  wire \scl_cntr[3]_i_1_n_0 ;
  wire \scl_cntr[4]_i_1_n_0 ;
  wire \scl_cntr_reg_n_0_[0] ;
  wire \scl_cntr_reg_n_0_[1] ;
  wire \scl_cntr_reg_n_0_[2] ;
  wire \scl_cntr_reg_n_0_[3] ;
  wire \scl_cntr_reg_n_0_[4] ;
  wire sclk_i_i_1_n_0;
  wire sclk_i_prev;
  (* RTL_KEEP = "yes" *) wire [1:0]sm_master;
  wire [0:0]\spi_data_i_reg[0] ;
  wire spi_free;
  wire spi_start_reg;
  wire write_reg_reg;

  LUT6 #(
    .INIT(64'h0B0B0B0B0B080808)) 
    \FSM_sequential_sm_master[0]_i_1 
       (.I0(\FSM_sequential_sm_master[0]_i_2_n_0 ),
        .I1(sm_master[1]),
        .I2(sm_master[0]),
        .I3(L[2]),
        .I4(spi_free),
        .I5(sm_master[0]),
        .O(\FSM_sequential_sm_master[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \FSM_sequential_sm_master[0]_i_2 
       (.I0(bit_cntr_reg__0[0]),
        .I1(bit_cntr_reg__0[2]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[3]),
        .I4(bit_cntr_reg__0[4]),
        .O(\FSM_sequential_sm_master[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h67776666)) 
    \FSM_sequential_sm_master[1]_i_1 
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(L[2]),
        .I3(spi_free),
        .I4(sm_master[1]),
        .O(\FSM_sequential_sm_master[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_sm_master[1]_i_2 
       (.I0(reset),
        .I1(s00_axi_ctrl_aresetn),
        .O(\FSM_sequential_sm_master[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "st_idle:00,st_start:01,st_stop:11,st_write_add:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_sm_master_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_sm_master[1]_i_2_n_0 ),
        .D(\FSM_sequential_sm_master[0]_i_1_n_0 ),
        .Q(sm_master[0]));
  (* FSM_ENCODED_STATES = "st_idle:00,st_start:01,st_stop:11,st_write_add:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_sm_master_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_sm_master[1]_i_2_n_0 ),
        .D(\FSM_sequential_sm_master[1]_i_1_n_0 ),
        .Q(sm_master[1]));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    MOSI_i_1
       (.I0(MOSI_reg_i_2_n_0),
        .I1(bit_cntr_reg__0[3]),
        .I2(bit_cntr_reg__0[4]),
        .I3(MOSI_reg_i_3_n_0),
        .I4(MOSI01_out),
        .I5(o_debug[0]),
        .O(MOSI_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_10
       (.I0(\data_i_reg_n_0_[0] ),
        .I1(\data_i_reg_n_0_[1] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[2] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[3] ),
        .O(MOSI_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_11
       (.I0(\data_i_reg_n_0_[12] ),
        .I1(\data_i_reg_n_0_[13] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[14] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[15] ),
        .O(MOSI_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_12
       (.I0(\data_i_reg_n_0_[8] ),
        .I1(\data_i_reg_n_0_[9] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[10] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[11] ),
        .O(MOSI_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00101010)) 
    MOSI_i_4
       (.I0(o_SCLK),
        .I1(\o_debug[7] ),
        .I2(sclk_i_prev),
        .I3(bit_cntr_reg__0[4]),
        .I4(bit_cntr_reg__0[3]),
        .O(MOSI01_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_7
       (.I0(\data_i_reg_n_0_[20] ),
        .I1(\data_i_reg_n_0_[21] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[22] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[23] ),
        .O(MOSI_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_8
       (.I0(\data_i_reg_n_0_[16] ),
        .I1(\data_i_reg_n_0_[17] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[18] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[19] ),
        .O(MOSI_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_9
       (.I0(\data_i_reg_n_0_[4] ),
        .I1(\data_i_reg_n_0_[5] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[6] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[7] ),
        .O(MOSI_i_9_n_0));
  FDRE MOSI_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(MOSI_i_1_n_0),
        .Q(o_debug[0]),
        .R(1'b0));
  MUXF8 MOSI_reg_i_2
       (.I0(MOSI_reg_i_5_n_0),
        .I1(MOSI_reg_i_6_n_0),
        .O(MOSI_reg_i_2_n_0),
        .S(bit_cntr_reg__0[3]));
  MUXF7 MOSI_reg_i_3
       (.I0(MOSI_i_7_n_0),
        .I1(MOSI_i_8_n_0),
        .O(MOSI_reg_i_3_n_0),
        .S(bit_cntr_reg__0[2]));
  MUXF7 MOSI_reg_i_5
       (.I0(MOSI_i_9_n_0),
        .I1(MOSI_i_10_n_0),
        .O(MOSI_reg_i_5_n_0),
        .S(bit_cntr_reg__0[2]));
  MUXF7 MOSI_reg_i_6
       (.I0(MOSI_i_11_n_0),
        .I1(MOSI_i_12_n_0),
        .O(MOSI_reg_i_6_n_0),
        .S(bit_cntr_reg__0[2]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \adc_action_ctrl_state[0]_i_2 
       (.I0(spi_free),
        .I1(write_reg_reg),
        .I2(read_reg_reg),
        .I3(adc_config_reg),
        .O(\adc_action_ctrl_state_reg[0] ));
  LUT4 #(
    .INIT(16'h0002)) 
    \adc_action_ctrl_state[2]_i_3 
       (.I0(spi_free),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .O(adc_action_ctrl_state0__2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000777F)) 
    \bit_cntr[0]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \bit_cntr[1]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07707700)) 
    \bit_cntr[2]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5222222A)) 
    \bit_cntr[3]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cntr[4]_i_1 
       (.I0(o_SCLK),
        .I1(sclk_i_prev),
        .O(bit_cntr0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6444444C)) 
    \bit_cntr[4]_i_2 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[4]));
  FDCE \bit_cntr_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(bit_cntr0),
        .CLR(\o_debug[7] ),
        .D(p_0_in[0]),
        .Q(bit_cntr_reg__0[0]));
  FDCE \bit_cntr_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(bit_cntr0),
        .CLR(\o_debug[7] ),
        .D(p_0_in[1]),
        .Q(bit_cntr_reg__0[1]));
  FDCE \bit_cntr_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(bit_cntr0),
        .CLR(\o_debug[7] ),
        .D(p_0_in[2]),
        .Q(bit_cntr_reg__0[2]));
  FDCE \bit_cntr_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(bit_cntr0),
        .CLR(\o_debug[7] ),
        .D(p_0_in[3]),
        .Q(bit_cntr_reg__0[3]));
  FDCE \bit_cntr_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(bit_cntr0),
        .CLR(\o_debug[7] ),
        .D(p_0_in[4]),
        .Q(bit_cntr_reg__0[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \core_state[0]_i_1 
       (.I0(o_debug[1]),
        .I1(reset),
        .I2(s00_axi_ctrl_aresetn),
        .I3(sm_master[0]),
        .O(\core_state[0]_i_1_n_0 ));
  FDRE \core_state_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\core_state[0]_i_1_n_0 ),
        .Q(o_debug[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \data_i[23]_i_1 
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(L[2]),
        .I3(spi_free),
        .I4(s00_axi_ctrl_aresetn),
        .I5(reset),
        .O(\data_i[23]_i_1_n_0 ));
  FDRE \data_i_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(\data_i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_i_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(\data_i_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_i_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(\data_i_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_i_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(\data_i_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_i_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(\data_i_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_i_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(\data_i_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_i_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(\data_i_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_i_reg[16] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[16]),
        .Q(\data_i_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_i_reg[17] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[17]),
        .Q(\data_i_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_i_reg[18] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[18]),
        .Q(\data_i_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_i_reg[19] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[19]),
        .Q(\data_i_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_i_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(\data_i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_i_reg[20] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[20]),
        .Q(\data_i_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_i_reg[21] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[21]),
        .Q(\data_i_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_i_reg[22] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[22]),
        .Q(\data_i_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_i_reg[23] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[23]),
        .Q(\data_i_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_i_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(\data_i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_i_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(\data_i_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_i_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(\data_i_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_i_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(\data_i_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_i_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(\data_i_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_i_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(\data_i_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_i_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(\data_i_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_i_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(\data_i_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD03)) 
    free_i_i_1
       (.I0(L[2]),
        .I1(sm_master[0]),
        .I2(sm_master[1]),
        .I3(spi_free),
        .O(free_i_i_1_n_0));
  FDCE free_i_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_sm_master[1]_i_2_n_0 ),
        .D(free_i_i_1_n_0),
        .Q(spi_free));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[0]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[3]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[0]),
        .O(\incoming_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[10]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[11]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[10]),
        .O(\incoming_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[11]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[11]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[11]),
        .O(\incoming_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \incoming_i[11]_i_2 
       (.I0(bit_cntr_reg__0[4]),
        .I1(bit_cntr_reg__0[3]),
        .I2(bit_cntr_reg__0[2]),
        .O(\incoming_i[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[12]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[12]),
        .O(\incoming_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \incoming_i[12]_i_2 
       (.I0(bit_cntr_reg__0[1]),
        .I1(bit_cntr_reg__0[0]),
        .O(\incoming_i[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[13]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[15]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[13]),
        .O(\incoming_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \incoming_i[13]_i_2 
       (.I0(bit_cntr_reg__0[0]),
        .I1(bit_cntr_reg__0[1]),
        .O(\incoming_i[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[14]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[15]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[14]),
        .O(\incoming_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \incoming_i[14]_i_2 
       (.I0(bit_cntr_reg__0[1]),
        .I1(bit_cntr_reg__0[0]),
        .O(\incoming_i[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[15]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[15]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[15]),
        .O(\incoming_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \incoming_i[15]_i_2 
       (.I0(bit_cntr_reg__0[2]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[3]),
        .O(\incoming_i[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \incoming_i[15]_i_3 
       (.I0(bit_cntr_reg__0[1]),
        .I1(bit_cntr_reg__0[0]),
        .O(\incoming_i[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \incoming_i[15]_i_4 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .O(bit_cntr16_out));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[1]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[3]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[1]),
        .O(\incoming_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[2]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[3]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[2]),
        .O(\incoming_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[3]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[3]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[3]),
        .O(\incoming_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \incoming_i[3]_i_2 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[2]),
        .O(\incoming_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[4]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[7]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[4]),
        .O(\incoming_i[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[5]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[7]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[5]),
        .O(\incoming_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[6]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[7]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[6]),
        .O(\incoming_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[7]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[7]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[7]),
        .O(\incoming_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \incoming_i[7]_i_2 
       (.I0(bit_cntr_reg__0[2]),
        .I1(bit_cntr_reg__0[3]),
        .I2(bit_cntr_reg__0[4]),
        .O(\incoming_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[8]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[11]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[8]),
        .O(\incoming_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[9]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[11]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[9]),
        .O(\incoming_i[9]_i_1_n_0 ));
  FDCE \incoming_i_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[0]_i_1_n_0 ),
        .Q(incoming_i[0]));
  FDCE \incoming_i_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[10]_i_1_n_0 ),
        .Q(incoming_i[10]));
  FDCE \incoming_i_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[11]_i_1_n_0 ),
        .Q(incoming_i[11]));
  FDCE \incoming_i_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[12]_i_1_n_0 ),
        .Q(incoming_i[12]));
  FDCE \incoming_i_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[13]_i_1_n_0 ),
        .Q(incoming_i[13]));
  FDCE \incoming_i_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[14]_i_1_n_0 ),
        .Q(incoming_i[14]));
  FDCE \incoming_i_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[15]_i_1_n_0 ),
        .Q(incoming_i[15]));
  FDCE \incoming_i_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[1]_i_1_n_0 ),
        .Q(incoming_i[1]));
  FDCE \incoming_i_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[2]_i_1_n_0 ),
        .Q(incoming_i[2]));
  FDCE \incoming_i_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[3]_i_1_n_0 ),
        .Q(incoming_i[3]));
  FDCE \incoming_i_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[4]_i_1_n_0 ),
        .Q(incoming_i[4]));
  FDCE \incoming_i_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[5]_i_1_n_0 ),
        .Q(incoming_i[5]));
  FDCE \incoming_i_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[6]_i_1_n_0 ),
        .Q(incoming_i[6]));
  FDCE \incoming_i_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[7]_i_1_n_0 ),
        .Q(incoming_i[7]));
  FDCE \incoming_i_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[8]_i_1_n_0 ),
        .Q(incoming_i[8]));
  FDCE \incoming_i_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\incoming_i[9]_i_1_n_0 ),
        .Q(incoming_i[9]));
  LUT5 #(
    .INIT(32'hFFBF0090)) 
    nCS_i_i_1
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(s00_axi_ctrl_aresetn),
        .I3(reset),
        .I4(\o_debug[7] ),
        .O(nCS_i_i_1_n_0));
  FDRE nCS_i_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(nCS_i_i_1_n_0),
        .Q(\o_debug[7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \o_data_from[15]_i_1 
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(s00_axi_ctrl_aresetn),
        .I3(reset),
        .O(\o_data_from[15]_i_1_n_0 ));
  FDRE \o_data_from_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_data_from_reg[10] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_data_from_reg[11] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_data_from_reg[12] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_data_from_reg[13] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_data_from_reg[14] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_data_from_reg[15] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_data_from_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_data_from_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_data_from_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_data_from_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_data_from_reg[5] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_data_from_reg[6] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_data_from_reg[7] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_data_from_reg[8] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_data_from_reg[9] 
       (.C(s00_axi_ctrl_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \rd_value[15]_i_1 
       (.I0(s00_axi_ctrl_aresetn),
        .I1(\adc_action_ctrl_state_reg[2] ),
        .I2(adc_action_ctrl_state0__2),
        .I3(\adc_action_ctrl_state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    ready_i_i_1
       (.I0(write_reg_reg),
        .I1(read_reg_reg),
        .I2(spi_free),
        .I3(adc_config_reg),
        .I4(\adc_action_ctrl_state_reg[0]_0 ),
        .I5(\adc_action_ctrl_state_reg[2] ),
        .O(ready_i_reg));
  LUT6 #(
    .INIT(64'h0000000020202000)) 
    \reg_addrss[7]_i_1 
       (.I0(s00_axi_ctrl_aresetn),
        .I1(\adc_action_ctrl_state_reg[2]_0 ),
        .I2(spi_free),
        .I3(write_reg_reg),
        .I4(read_reg_reg),
        .I5(adc_config_reg),
        .O(\reg_addrss_reg[0] ));
  LUT4 #(
    .INIT(16'h001F)) 
    \scl_cntr[0]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[2] ),
        .I2(\scl_cntr_reg_n_0_[4] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h001F1F00)) 
    \scl_cntr[1]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[2] ),
        .I2(\scl_cntr_reg_n_0_[4] ),
        .I3(\scl_cntr_reg_n_0_[1] ),
        .I4(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h07303030)) 
    \scl_cntr[2]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[4] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[1] ),
        .I4(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \scl_cntr[3]_i_1 
       (.I0(\scl_cntr_reg_n_0_[4] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .I4(\scl_cntr_reg_n_0_[1] ),
        .O(\scl_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40002222)) 
    \scl_cntr[4]_i_1 
       (.I0(\scl_cntr_reg_n_0_[4] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[1] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .I4(\scl_cntr_reg_n_0_[2] ),
        .O(\scl_cntr[4]_i_1_n_0 ));
  FDCE \scl_cntr_reg[0] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\scl_cntr[0]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[0] ));
  FDCE \scl_cntr_reg[1] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\scl_cntr[1]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[1] ));
  FDCE \scl_cntr_reg[2] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\scl_cntr[2]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[2] ));
  FDCE \scl_cntr_reg[3] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\scl_cntr[3]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[3] ));
  FDCE \scl_cntr_reg[4] 
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .CLR(\o_debug[7] ),
        .D(\scl_cntr[4]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'hFFC803C8)) 
    sclk_i_i_1
       (.I0(\scl_cntr_reg_n_0_[1] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[4] ),
        .I4(o_SCLK),
        .O(sclk_i_i_1_n_0));
  FDPE sclk_i_prev_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(o_SCLK),
        .PRE(\o_debug[7] ),
        .Q(sclk_i_prev));
  FDPE sclk_i_reg
       (.C(s00_axi_ctrl_aclk),
        .CE(1'b1),
        .D(sclk_i_i_1_n_0),
        .PRE(\o_debug[7] ),
        .Q(o_SCLK));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \spi_data_i[15]_i_1 
       (.I0(s00_axi_ctrl_aresetn),
        .I1(\adc_action_ctrl_state_reg[2] ),
        .I2(\adc_action_ctrl_state_reg[0]_0 ),
        .I3(spi_free),
        .I4(adc_config_reg),
        .I5(write_reg_reg),
        .O(\spi_data_i_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    spi_start_i_1
       (.I0(write_reg_reg),
        .I1(read_reg_reg),
        .I2(spi_free),
        .I3(adc_config_reg),
        .I4(\adc_action_ctrl_state_reg[0]_0 ),
        .I5(\adc_action_ctrl_state_reg[2] ),
        .O(spi_start_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
