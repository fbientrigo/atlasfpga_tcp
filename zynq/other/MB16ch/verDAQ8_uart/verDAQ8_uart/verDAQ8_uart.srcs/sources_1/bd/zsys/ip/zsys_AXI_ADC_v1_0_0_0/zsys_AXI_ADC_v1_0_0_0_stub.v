// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May 19 23:45:28 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_AXI_ADC_v1_0_0_0/zsys_AXI_ADC_v1_0_0_0_stub.v
// Design      : zsys_AXI_ADC_v1_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_ADC_v1_0,Vivado 2018.2" *)
module zsys_AXI_ADC_v1_0_0_0(i_MISO, o_MOSI, o_SCLK, o_nCS, o_ADC_nrst, o_debug, 
  i_ADclk_p, i_ADclk_n, i_Lclk_p, i_Lclk_n, i_data_in_ch0_p, i_data_in_ch0_n, i_data_in_ch1_p, 
  i_data_in_ch1_n, i_data_in_ch2_p, i_data_in_ch2_n, i_data_in_ch3_p, i_data_in_ch3_n, 
  i_data_in_ch4_p, i_data_in_ch4_n, i_data_in_ch5_p, i_data_in_ch5_n, i_data_in_ch6_p, 
  i_data_in_ch6_n, i_data_in_ch7_p, i_data_in_ch7_n, o_data_out_ch0, o_data_out_ch1, 
  o_data_out_ch2, o_data_out_ch3, o_data_out_ch4, o_data_out_ch5, o_data_out_ch6, 
  o_data_out_ch7, o_data_clk, s00_axi_ctrl_aclk, s00_axi_ctrl_aresetn, s00_axi_ctrl_awaddr, 
  s00_axi_ctrl_awprot, s00_axi_ctrl_awvalid, s00_axi_ctrl_awready, s00_axi_ctrl_wdata, 
  s00_axi_ctrl_wstrb, s00_axi_ctrl_wvalid, s00_axi_ctrl_wready, s00_axi_ctrl_bresp, 
  s00_axi_ctrl_bvalid, s00_axi_ctrl_bready, s00_axi_ctrl_araddr, s00_axi_ctrl_arprot, 
  s00_axi_ctrl_arvalid, s00_axi_ctrl_arready, s00_axi_ctrl_rdata, s00_axi_ctrl_rresp, 
  s00_axi_ctrl_rvalid, s00_axi_ctrl_rready)
/* synthesis syn_black_box black_box_pad_pin="i_MISO,o_MOSI,o_SCLK,o_nCS,o_ADC_nrst,o_debug[11:0],i_ADclk_p,i_ADclk_n,i_Lclk_p,i_Lclk_n,i_data_in_ch0_p,i_data_in_ch0_n,i_data_in_ch1_p,i_data_in_ch1_n,i_data_in_ch2_p,i_data_in_ch2_n,i_data_in_ch3_p,i_data_in_ch3_n,i_data_in_ch4_p,i_data_in_ch4_n,i_data_in_ch5_p,i_data_in_ch5_n,i_data_in_ch6_p,i_data_in_ch6_n,i_data_in_ch7_p,i_data_in_ch7_n,o_data_out_ch0[15:0],o_data_out_ch1[15:0],o_data_out_ch2[15:0],o_data_out_ch3[15:0],o_data_out_ch4[15:0],o_data_out_ch5[15:0],o_data_out_ch6[15:0],o_data_out_ch7[15:0],o_data_clk,s00_axi_ctrl_aclk,s00_axi_ctrl_aresetn,s00_axi_ctrl_awaddr[3:0],s00_axi_ctrl_awprot[2:0],s00_axi_ctrl_awvalid,s00_axi_ctrl_awready,s00_axi_ctrl_wdata[31:0],s00_axi_ctrl_wstrb[3:0],s00_axi_ctrl_wvalid,s00_axi_ctrl_wready,s00_axi_ctrl_bresp[1:0],s00_axi_ctrl_bvalid,s00_axi_ctrl_bready,s00_axi_ctrl_araddr[3:0],s00_axi_ctrl_arprot[2:0],s00_axi_ctrl_arvalid,s00_axi_ctrl_arready,s00_axi_ctrl_rdata[31:0],s00_axi_ctrl_rresp[1:0],s00_axi_ctrl_rvalid,s00_axi_ctrl_rready" */;
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
  output o_data_clk;
  input s00_axi_ctrl_aclk;
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
endmodule
