// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug 21 12:20:43 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_ROController_0_0_stub.v
// Design      : zsys_ROController_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ROController,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sys_clk, i_data_clk, i_data_ch0, i_data_ch1, 
  i_data_ch2, i_data_ch3, i_data_ch4, i_data_ch5, i_data_ch6, i_data_ch7, i_rst, i_veto, i_trigger, 
  i_DRS4_DWRITEn, o_busy, i_post_trig_wind, i_pre_trig_wind, o_trig_RO_end, 
  i_stop_cell_ready, i_stop_cell, o_wr_fifo_data, o_wr_fifo_en, i_wr_fifo_full, 
  o_wr_fifo_clk, i_rd_fifo_data, o_rd_fifo_en, i_rd_fifo_empty, o_rd_fifo_clk, 
  i_rd_data_count, o_outfifo_wr_en, i_next_fifo_full, o_ascii, 
  o_send_data_control_debug_states, o_read_proc_st_debug_states, 
  o_ro_proc_st_debug_states)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,i_data_clk,i_data_ch0[11:0],i_data_ch1[11:0],i_data_ch2[11:0],i_data_ch3[11:0],i_data_ch4[11:0],i_data_ch5[11:0],i_data_ch6[11:0],i_data_ch7[11:0],i_rst,i_veto,i_trigger,i_DRS4_DWRITEn,o_busy,i_post_trig_wind[11:0],i_pre_trig_wind[11:0],o_trig_RO_end,i_stop_cell_ready,i_stop_cell[9:0],o_wr_fifo_data[96:0],o_wr_fifo_en,i_wr_fifo_full,o_wr_fifo_clk,i_rd_fifo_data[96:0],o_rd_fifo_en,i_rd_fifo_empty,o_rd_fifo_clk,i_rd_data_count[11:0],o_outfifo_wr_en,i_next_fifo_full,o_ascii[7:0],o_send_data_control_debug_states[4:0],o_read_proc_st_debug_states[3:0],o_ro_proc_st_debug_states[2:0]" */;
  input sys_clk;
  input i_data_clk;
  input [11:0]i_data_ch0;
  input [11:0]i_data_ch1;
  input [11:0]i_data_ch2;
  input [11:0]i_data_ch3;
  input [11:0]i_data_ch4;
  input [11:0]i_data_ch5;
  input [11:0]i_data_ch6;
  input [11:0]i_data_ch7;
  input i_rst;
  input i_veto;
  input i_trigger;
  input i_DRS4_DWRITEn;
  output o_busy;
  input [11:0]i_post_trig_wind;
  input [11:0]i_pre_trig_wind;
  output o_trig_RO_end;
  input i_stop_cell_ready;
  input [9:0]i_stop_cell;
  output [96:0]o_wr_fifo_data;
  output o_wr_fifo_en;
  input i_wr_fifo_full;
  output o_wr_fifo_clk;
  input [96:0]i_rd_fifo_data;
  output o_rd_fifo_en;
  input i_rd_fifo_empty;
  output o_rd_fifo_clk;
  input [11:0]i_rd_data_count;
  output o_outfifo_wr_en;
  input i_next_fifo_full;
  output [7:0]o_ascii;
  output [4:0]o_send_data_control_debug_states;
  output [3:0]o_read_proc_st_debug_states;
  output [2:0]o_ro_proc_st_debug_states;
endmodule
