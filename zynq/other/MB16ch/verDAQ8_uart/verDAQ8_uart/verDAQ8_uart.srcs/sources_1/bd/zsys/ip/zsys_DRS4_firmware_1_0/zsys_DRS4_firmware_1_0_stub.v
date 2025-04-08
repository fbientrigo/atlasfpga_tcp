// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May 19 23:45:43 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_DRS4_firmware_1_0/zsys_DRS4_firmware_1_0_stub.v
// Design      : zsys_DRS4_firmware_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DRS4_firmware_v3_0,Vivado 2018.2" *)
module zsys_DRS4_firmware_1_0(o_nReset, o_ROFS, clk_drs4, o_A3_0, o_srclk, 
  o_srin, o_rsrload, o_denable, o_dwrite, o_refclk_p, i_drs4_trigger, i_SROUT, i_PLLLCK, 
  o_stop_cell, o_stop_cell_ready, o_srclk_adc, o_dwrite_for_trigger, s00_axi_aclk, 
  s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, 
  s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, 
  s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, 
  s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="o_nReset,o_ROFS,clk_drs4,o_A3_0[3:0],o_srclk,o_srin,o_rsrload,o_denable,o_dwrite,o_refclk_p,i_drs4_trigger,i_SROUT,i_PLLLCK,o_stop_cell[9:0],o_stop_cell_ready,o_srclk_adc,o_dwrite_for_trigger,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  output o_nReset;
  output o_ROFS;
  input clk_drs4;
  output [3:0]o_A3_0;
  output o_srclk;
  output o_srin;
  output o_rsrload;
  output o_denable;
  output o_dwrite;
  output o_refclk_p;
  input i_drs4_trigger;
  input i_SROUT;
  input i_PLLLCK;
  output [9:0]o_stop_cell;
  output o_stop_cell_ready;
  output o_srclk_adc;
  output o_dwrite_for_trigger;
  input s00_axi_aclk;
  input s00_axi_aresetn;
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
endmodule
