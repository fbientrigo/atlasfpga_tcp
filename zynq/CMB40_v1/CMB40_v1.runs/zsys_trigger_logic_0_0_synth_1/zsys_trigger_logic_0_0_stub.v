// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Tue Dec  3 15:03:36 2024
// Host        : ifraba-HP-Pavilion-Laptop-15-eg2xxx running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_trigger_logic_0_0_stub.v
// Design      : zsys_trigger_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "trigger_logic,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sys_clk, areset, i_busy, i_in_trigger, 
  i_soft_trigger, i_trigg_select_function, i_trigg_mask, i_en_soft_trigger, o_out_trigger)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,areset,i_busy,i_in_trigger[7:0],i_soft_trigger,i_trigg_select_function[2:0],i_trigg_mask[7:0],i_en_soft_trigger,o_out_trigger" */;
  input sys_clk;
  input areset;
  input i_busy;
  input [7:0]i_in_trigger;
  input i_soft_trigger;
  input [2:0]i_trigg_select_function;
  input [7:0]i_trigg_mask;
  input i_en_soft_trigger;
  output o_out_trigger;
endmodule
