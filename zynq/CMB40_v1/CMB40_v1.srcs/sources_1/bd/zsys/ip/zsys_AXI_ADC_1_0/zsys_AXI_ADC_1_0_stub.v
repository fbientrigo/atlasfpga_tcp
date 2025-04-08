// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Dec 13 18:27:00 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top zsys_AXI_ADC_1_0 -prefix
//               zsys_AXI_ADC_1_0_ zsys_AXI_ADC_1_0_stub.v
// Design      : zsys_AXI_ADC_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_ADC_v3,Vivado 2018.2" *)
module zsys_AXI_ADC_1_0(i_MISO, o_MOSI, o_SCLK, o_nCS, o_ADC_nrst, o_debug, 
  i_ADclk, i_Lclk, i_data_in_ch0_p, i_data_in_ch0_n, i_data_in_ch1_p, i_data_in_ch1_n, 
  i_data_in_ch2_p, i_data_in_ch2_n, i_data_in_ch3_p, i_data_in_ch3_n, i_data_in_ch4_p, 
  i_data_in_ch4_n, i_data_in_ch5_p, i_data_in_ch5_n, i_data_in_ch6_p, i_data_in_ch6_n, 
  i_data_in_ch7_p, i_data_in_ch7_n, o_data_out_ch0, o_data_out_ch1, o_data_out_ch2, 
  o_data_out_ch3, o_data_out_ch4, o_data_out_ch5, o_data_out_ch6, o_data_out_ch7, o_data_clk, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, 
  s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="i_MISO,o_MOSI,o_SCLK,o_nCS,o_ADC_nrst,o_debug[11:0],i_ADclk,i_Lclk,i_data_in_ch0_p,i_data_in_ch0_n,i_data_in_ch1_p,i_data_in_ch1_n,i_data_in_ch2_p,i_data_in_ch2_n,i_data_in_ch3_p,i_data_in_ch3_n,i_data_in_ch4_p,i_data_in_ch4_n,i_data_in_ch5_p,i_data_in_ch5_n,i_data_in_ch6_p,i_data_in_ch6_n,i_data_in_ch7_p,i_data_in_ch7_n,o_data_out_ch0[15:0],o_data_out_ch1[15:0],o_data_out_ch2[15:0],o_data_out_ch3[15:0],o_data_out_ch4[15:0],o_data_out_ch5[15:0],o_data_out_ch6[15:0],o_data_out_ch7[15:0],o_data_clk,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input i_MISO;
  output o_MOSI;
  output o_SCLK;
  output o_nCS;
  output o_ADC_nrst;
  output [11:0]o_debug;
  input i_ADclk;
  input i_Lclk;
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
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
