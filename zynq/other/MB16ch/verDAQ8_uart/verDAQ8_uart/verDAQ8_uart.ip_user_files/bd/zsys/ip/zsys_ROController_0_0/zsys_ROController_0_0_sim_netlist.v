// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Mar  3 13:45:35 2022
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/victo/Desktop/Vivados/daq_mb_te0716_v7/daq_mb_te0716_v7.srcs/sources_1/bd/zsys/ip/zsys_ROController_0_0/zsys_ROController_0_0_sim_netlist.v
// Design      : zsys_ROController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_ROController_0_0,ROController,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ROController,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module zsys_ROController_0_0
   (sys_clk,
    i_data_clk,
    i_data_ch0,
    i_data_ch1,
    i_data_ch2,
    i_data_ch3,
    i_data_ch4,
    i_data_ch5,
    i_data_ch6,
    i_data_ch7,
    i_rst,
    i_veto,
    i_trigger,
    i_DRS4_DWRITEn,
    o_busy,
    i_post_trig_wind,
    i_pre_trig_wind,
    o_trig_RO_end,
    i_stop_cell_ready,
    i_stop_cell,
    o_wr_fifo_data,
    o_wr_fifo_en,
    i_wr_fifo_full,
    o_wr_fifo_clk,
    i_rd_fifo_data,
    o_rd_fifo_en,
    i_rd_fifo_empty,
    o_rd_fifo_clk,
    i_rd_data_count,
    o_outfifo_wr_en,
    i_next_fifo_full,
    o_ascii);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 sys_clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME sys_clock, ASSOCIATED_BUSIF sys_clock, ASSOCIATED_RESET i_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input sys_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_data_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_data_clk, FREQ_HZ 80000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_v1_0_0_0_o_data_clk" *) input i_data_clk;
  input [11:0]i_data_ch0;
  input [11:0]i_data_ch1;
  input [11:0]i_data_ch2;
  input [11:0]i_data_ch3;
  input [11:0]i_data_ch4;
  input [11:0]i_data_ch5;
  input [11:0]i_data_ch6;
  input [11:0]i_data_ch7;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH" *) input i_rst;
  input i_veto;
  input i_trigger;
  (* async_reg = "true" *) input i_DRS4_DWRITEn;
  output o_busy;
  input [11:0]i_post_trig_wind;
  input [11:0]i_pre_trig_wind;
  output o_trig_RO_end;
  input i_stop_cell_ready;
  input [9:0]i_stop_cell;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_DATA" *) output [96:0]o_wr_fifo_data;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_EN" *) output o_wr_fifo_en;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 o_wr_fifo FULL" *) input i_wr_fifo_full;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 o_wr_fifo_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME o_wr_fifo_clk, ASSOCIATED_BUSIF o_wr_fifo_clk, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN zsys_ROController_0_0_o_wr_fifo_clk" *) output o_wr_fifo_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_DATA" *) input [96:0]i_rd_fifo_data;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_EN" *) output o_rd_fifo_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 i_rd_fifo EMPTY" *) input i_rd_fifo_empty;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 o_rd_fifo_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME o_rd_fifo_clk, ASSOCIATED_BUSIF sys_clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_ROController_0_0_o_rd_fifo_clk" *) output o_rd_fifo_clk;
  input [11:0]i_rd_data_count;
  output o_outfifo_wr_en;
  input i_next_fifo_full;
  output [7:0]o_ascii;

  wire \<const0> ;
  wire i_DRS4_DWRITEn;
  wire [11:0]i_data_ch0;
  wire [11:0]i_data_ch1;
  wire [11:0]i_data_ch2;
  wire [11:0]i_data_ch3;
  wire [11:0]i_data_ch4;
  wire [11:0]i_data_ch5;
  wire [11:0]i_data_ch6;
  wire [11:0]i_data_ch7;
  wire i_data_clk;
  wire i_next_fifo_full;
  wire [11:0]i_post_trig_wind;
  wire [11:0]i_pre_trig_wind;
  wire [11:0]i_rd_data_count;
  wire [96:0]i_rd_fifo_data;
  wire i_rd_fifo_empty;
  wire i_rst;
  wire [9:0]i_stop_cell;
  wire i_stop_cell_ready;
  wire i_trigger;
  wire i_veto;
  wire i_wr_fifo_full;
  wire [6:0]\^o_ascii ;
  wire o_busy;
  wire o_outfifo_wr_en;
  wire o_rd_fifo_en;
  wire o_trig_RO_end;
  wire [96:96]\^o_wr_fifo_data ;
  wire o_wr_fifo_en;
  wire sys_clk;

  assign o_ascii[7] = \<const0> ;
  assign o_ascii[6:0] = \^o_ascii [6:0];
  assign o_wr_fifo_clk = i_data_clk;
  assign o_wr_fifo_data[96] = \^o_wr_fifo_data [96];
  assign o_wr_fifo_data[95:84] = i_data_ch3;
  assign o_wr_fifo_data[83:72] = i_data_ch2;
  assign o_wr_fifo_data[71:60] = i_data_ch1;
  assign o_wr_fifo_data[59:48] = i_data_ch0;
  assign o_wr_fifo_data[47:36] = i_data_ch7;
  assign o_wr_fifo_data[35:24] = i_data_ch6;
  assign o_wr_fifo_data[23:12] = i_data_ch5;
  assign o_wr_fifo_data[11:0] = i_data_ch4;
  GND GND
       (.G(\<const0> ));
  zsys_ROController_0_0_ROController U0
       (.i_DRS4_DWRITEn(i_DRS4_DWRITEn),
        .i_data_clk(i_data_clk),
        .i_next_fifo_full(i_next_fifo_full),
        .i_post_trig_wind(i_post_trig_wind),
        .i_pre_trig_wind(i_pre_trig_wind),
        .i_rd_data_count(i_rd_data_count),
        .i_rd_fifo_data(i_rd_fifo_data),
        .i_rd_fifo_empty(i_rd_fifo_empty),
        .i_rst(i_rst),
        .i_stop_cell(i_stop_cell),
        .i_stop_cell_ready(i_stop_cell_ready),
        .i_trigger(i_trigger),
        .i_veto(i_veto),
        .i_wr_fifo_full(i_wr_fifo_full),
        .o_ascii(\^o_ascii ),
        .o_busy(o_busy),
        .o_outfifo_wr_en(o_outfifo_wr_en),
        .o_rd_fifo_en(o_rd_fifo_en),
        .o_trig_RO_end(o_trig_RO_end),
        .o_wr_fifo_data(\^o_wr_fifo_data ),
        .o_wr_fifo_en(o_wr_fifo_en),
        .sys_clk(sys_clk));
endmodule

(* ORIG_REF_NAME = "ROController" *) 
module zsys_ROController_0_0_ROController
   (o_rd_fifo_en,
    o_ascii,
    o_busy,
    o_wr_fifo_data,
    o_wr_fifo_en,
    o_outfifo_wr_en,
    o_trig_RO_end,
    i_trigger,
    i_wr_fifo_full,
    i_rst,
    i_stop_cell_ready,
    i_veto,
    i_stop_cell,
    i_DRS4_DWRITEn,
    i_data_clk,
    i_next_fifo_full,
    sys_clk,
    i_post_trig_wind,
    i_rd_fifo_data,
    i_rd_fifo_empty,
    i_rd_data_count,
    i_pre_trig_wind);
  output o_rd_fifo_en;
  output [6:0]o_ascii;
  output o_busy;
  output [0:0]o_wr_fifo_data;
  output o_wr_fifo_en;
  output o_outfifo_wr_en;
  output o_trig_RO_end;
  input i_trigger;
  input i_wr_fifo_full;
  input i_rst;
  input i_stop_cell_ready;
  input i_veto;
  input [9:0]i_stop_cell;
  input i_DRS4_DWRITEn;
  input i_data_clk;
  input i_next_fifo_full;
  input sys_clk;
  input [11:0]i_post_trig_wind;
  input [96:0]i_rd_fifo_data;
  input i_rd_fifo_empty;
  input [11:0]i_rd_data_count;
  input [11:0]i_pre_trig_wind;

  wire DRS4_trigger_type_i_1_n_0;
  wire DRS4_trigger_type_reg_n_0;
  wire \FSM_onehot_ro_proc_st[1]_i_1_n_0 ;
  wire \FSM_onehot_ro_proc_st[1]_i_2_n_0 ;
  wire \FSM_onehot_ro_proc_st[2]_i_1_n_0 ;
  wire \FSM_onehot_ro_proc_st[3]_i_4_n_0 ;
  wire \FSM_onehot_ro_proc_st[4]_i_1_n_0 ;
  wire \FSM_onehot_ro_proc_st[4]_i_2_n_0 ;
  wire \FSM_onehot_ro_proc_st[4]_i_3_n_0 ;
  wire \FSM_onehot_ro_proc_st[4]_i_4_n_0 ;
  wire \FSM_onehot_ro_proc_st[4]_i_5_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_ro_proc_st_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_ro_proc_st_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_ro_proc_st_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_ro_proc_st_reg_n_0_[4] ;
  wire \FSM_sequential_read_proc_st[0]_i_1_n_0 ;
  wire \FSM_sequential_read_proc_st[1]_i_1_n_0 ;
  wire \FSM_sequential_read_proc_st[2]_i_1_n_0 ;
  wire \FSM_sequential_read_proc_st[3]_i_1_n_0 ;
  wire \FSM_sequential_read_proc_st[3]_i_2_n_0 ;
  wire \FSM_sequential_read_proc_st[3]_i_4_n_0 ;
  wire \FSM_sequential_send_proc_st[0]_i_1_n_0 ;
  wire \FSM_sequential_send_proc_st[1]_i_1_n_0 ;
  wire \FSM_sequential_send_proc_st[2]_i_1_n_0 ;
  wire busy;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire busy_reg_n_0;
  wire [11:0]cnt_limit;
  wire \cnt_limit[11]_i_1_n_0 ;
  wire \cnt_limit[11]_i_2_n_0 ;
  wire [11:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[11]_i_3_n_0 ;
  wire \counter[11]_i_4_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg[11]_i_5_n_2 ;
  wire \counter_reg[11]_i_5_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire data_sent_i_1_n_0;
  wire data_sent_reg_n_0;
  wire [22:0]data_to_send;
  wire \data_to_send[0]_i_11_n_0 ;
  wire \data_to_send[0]_i_12_n_0 ;
  wire \data_to_send[0]_i_2_n_0 ;
  wire \data_to_send[0]_i_5_n_0 ;
  wire \data_to_send[10]_i_11_n_0 ;
  wire \data_to_send[10]_i_12_n_0 ;
  wire \data_to_send[10]_i_2_n_0 ;
  wire \data_to_send[10]_i_5_n_0 ;
  wire \data_to_send[11]_i_10_n_0 ;
  wire \data_to_send[11]_i_11_n_0 ;
  wire \data_to_send[11]_i_2_n_0 ;
  wire \data_to_send[11]_i_5_n_0 ;
  wire \data_to_send[12]_i_2_n_0 ;
  wire \data_to_send[13]_i_10_n_0 ;
  wire \data_to_send[13]_i_11_n_0 ;
  wire \data_to_send[13]_i_12_n_0 ;
  wire \data_to_send[13]_i_13_n_0 ;
  wire \data_to_send[13]_i_14_n_0 ;
  wire \data_to_send[13]_i_15_n_0 ;
  wire \data_to_send[13]_i_16_n_0 ;
  wire \data_to_send[13]_i_17_n_0 ;
  wire \data_to_send[13]_i_2_n_0 ;
  wire \data_to_send[13]_i_5_n_0 ;
  wire \data_to_send[14]_i_11_n_0 ;
  wire \data_to_send[14]_i_12_n_0 ;
  wire \data_to_send[14]_i_2_n_0 ;
  wire \data_to_send[14]_i_5_n_0 ;
  wire \data_to_send[14]_i_6_n_0 ;
  wire \data_to_send[16]_i_11_n_0 ;
  wire \data_to_send[16]_i_12_n_0 ;
  wire \data_to_send[16]_i_13_n_0 ;
  wire \data_to_send[16]_i_2_n_0 ;
  wire \data_to_send[16]_i_4_n_0 ;
  wire \data_to_send[16]_i_5_n_0 ;
  wire \data_to_send[17]_i_11_n_0 ;
  wire \data_to_send[17]_i_12_n_0 ;
  wire \data_to_send[17]_i_13_n_0 ;
  wire \data_to_send[17]_i_2_n_0 ;
  wire \data_to_send[17]_i_4_n_0 ;
  wire \data_to_send[17]_i_5_n_0 ;
  wire \data_to_send[18]_i_11_n_0 ;
  wire \data_to_send[18]_i_12_n_0 ;
  wire \data_to_send[18]_i_13_n_0 ;
  wire \data_to_send[18]_i_2_n_0 ;
  wire \data_to_send[18]_i_4_n_0 ;
  wire \data_to_send[18]_i_5_n_0 ;
  wire \data_to_send[19]_i_10_n_0 ;
  wire \data_to_send[19]_i_11_n_0 ;
  wire \data_to_send[19]_i_2_n_0 ;
  wire \data_to_send[19]_i_4_n_0 ;
  wire \data_to_send[19]_i_5_n_0 ;
  wire \data_to_send[19]_i_9_n_0 ;
  wire \data_to_send[1]_i_11_n_0 ;
  wire \data_to_send[1]_i_12_n_0 ;
  wire \data_to_send[1]_i_2_n_0 ;
  wire \data_to_send[1]_i_5_n_0 ;
  wire \data_to_send[20]_i_2_n_0 ;
  wire \data_to_send[21]_i_10_n_0 ;
  wire \data_to_send[21]_i_11_n_0 ;
  wire \data_to_send[21]_i_12_n_0 ;
  wire \data_to_send[21]_i_13_n_0 ;
  wire \data_to_send[21]_i_2_n_0 ;
  wire \data_to_send[21]_i_4_n_0 ;
  wire \data_to_send[21]_i_5_n_0 ;
  wire \data_to_send[21]_i_8_n_0 ;
  wire \data_to_send[21]_i_9_n_0 ;
  wire \data_to_send[22]_i_11_n_0 ;
  wire \data_to_send[22]_i_12_n_0 ;
  wire \data_to_send[22]_i_13_n_0 ;
  wire \data_to_send[22]_i_2_n_0 ;
  wire \data_to_send[22]_i_4_n_0 ;
  wire \data_to_send[22]_i_5_n_0 ;
  wire \data_to_send[22]_i_6_n_0 ;
  wire \data_to_send[22]_i_9_n_0 ;
  wire \data_to_send[24]_i_1_n_0 ;
  wire \data_to_send[25]_i_1_n_0 ;
  wire \data_to_send[27]_i_1_n_0 ;
  wire \data_to_send[27]_i_2_n_0 ;
  wire \data_to_send[29]_i_1_n_0 ;
  wire \data_to_send[2]_i_11_n_0 ;
  wire \data_to_send[2]_i_12_n_0 ;
  wire \data_to_send[2]_i_2_n_0 ;
  wire \data_to_send[2]_i_5_n_0 ;
  wire \data_to_send[3]_i_10_n_0 ;
  wire \data_to_send[3]_i_11_n_0 ;
  wire \data_to_send[3]_i_2_n_0 ;
  wire \data_to_send[3]_i_5_n_0 ;
  wire \data_to_send[5]_i_10_n_0 ;
  wire \data_to_send[5]_i_11_n_0 ;
  wire \data_to_send[5]_i_12_n_0 ;
  wire \data_to_send[5]_i_13_n_0 ;
  wire \data_to_send[5]_i_14_n_0 ;
  wire \data_to_send[5]_i_15_n_0 ;
  wire \data_to_send[5]_i_16_n_0 ;
  wire \data_to_send[5]_i_17_n_0 ;
  wire \data_to_send[5]_i_2_n_0 ;
  wire \data_to_send[5]_i_5_n_0 ;
  wire \data_to_send[6]_i_11_n_0 ;
  wire \data_to_send[6]_i_12_n_0 ;
  wire \data_to_send[6]_i_2_n_0 ;
  wire \data_to_send[6]_i_5_n_0 ;
  wire \data_to_send[6]_i_6_n_0 ;
  wire \data_to_send[8]_i_11_n_0 ;
  wire \data_to_send[8]_i_12_n_0 ;
  wire \data_to_send[8]_i_2_n_0 ;
  wire \data_to_send[8]_i_5_n_0 ;
  wire \data_to_send[9]_i_11_n_0 ;
  wire \data_to_send[9]_i_12_n_0 ;
  wire \data_to_send[9]_i_2_n_0 ;
  wire \data_to_send[9]_i_5_n_0 ;
  wire \data_to_send_reg[0]_i_10_n_0 ;
  wire \data_to_send_reg[0]_i_3_n_0 ;
  wire \data_to_send_reg[0]_i_4_n_0 ;
  wire \data_to_send_reg[0]_i_7_n_0 ;
  wire \data_to_send_reg[0]_i_8_n_0 ;
  wire \data_to_send_reg[0]_i_9_n_0 ;
  wire \data_to_send_reg[10]_i_10_n_0 ;
  wire \data_to_send_reg[10]_i_3_n_0 ;
  wire \data_to_send_reg[10]_i_4_n_0 ;
  wire \data_to_send_reg[10]_i_7_n_0 ;
  wire \data_to_send_reg[10]_i_8_n_0 ;
  wire \data_to_send_reg[10]_i_9_n_0 ;
  wire \data_to_send_reg[11]_i_3_n_0 ;
  wire \data_to_send_reg[11]_i_4_n_0 ;
  wire \data_to_send_reg[11]_i_6_n_0 ;
  wire \data_to_send_reg[11]_i_7_n_0 ;
  wire \data_to_send_reg[11]_i_8_n_0 ;
  wire \data_to_send_reg[11]_i_9_n_0 ;
  wire \data_to_send_reg[13]_i_3_n_0 ;
  wire \data_to_send_reg[13]_i_4_n_0 ;
  wire \data_to_send_reg[13]_i_6_n_0 ;
  wire \data_to_send_reg[13]_i_7_n_0 ;
  wire \data_to_send_reg[13]_i_8_n_0 ;
  wire \data_to_send_reg[13]_i_9_n_0 ;
  wire \data_to_send_reg[14]_i_10_n_0 ;
  wire \data_to_send_reg[14]_i_3_n_0 ;
  wire \data_to_send_reg[14]_i_4_n_0 ;
  wire \data_to_send_reg[14]_i_7_n_0 ;
  wire \data_to_send_reg[14]_i_8_n_0 ;
  wire \data_to_send_reg[14]_i_9_n_0 ;
  wire \data_to_send_reg[16]_i_3_n_0 ;
  wire \data_to_send_reg[16]_i_7_n_0 ;
  wire \data_to_send_reg[16]_i_8_n_0 ;
  wire \data_to_send_reg[17]_i_3_n_0 ;
  wire \data_to_send_reg[17]_i_7_n_0 ;
  wire \data_to_send_reg[17]_i_8_n_0 ;
  wire \data_to_send_reg[18]_i_3_n_0 ;
  wire \data_to_send_reg[18]_i_7_n_0 ;
  wire \data_to_send_reg[18]_i_8_n_0 ;
  wire \data_to_send_reg[19]_i_3_n_0 ;
  wire \data_to_send_reg[19]_i_6_n_0 ;
  wire \data_to_send_reg[19]_i_7_n_0 ;
  wire \data_to_send_reg[1]_i_10_n_0 ;
  wire \data_to_send_reg[1]_i_3_n_0 ;
  wire \data_to_send_reg[1]_i_4_n_0 ;
  wire \data_to_send_reg[1]_i_7_n_0 ;
  wire \data_to_send_reg[1]_i_8_n_0 ;
  wire \data_to_send_reg[1]_i_9_n_0 ;
  wire \data_to_send_reg[21]_i_3_n_0 ;
  wire \data_to_send_reg[21]_i_6_n_0 ;
  wire \data_to_send_reg[21]_i_7_n_0 ;
  wire \data_to_send_reg[22]_i_3_n_0 ;
  wire \data_to_send_reg[22]_i_7_n_0 ;
  wire \data_to_send_reg[22]_i_8_n_0 ;
  wire \data_to_send_reg[2]_i_10_n_0 ;
  wire \data_to_send_reg[2]_i_3_n_0 ;
  wire \data_to_send_reg[2]_i_4_n_0 ;
  wire \data_to_send_reg[2]_i_7_n_0 ;
  wire \data_to_send_reg[2]_i_8_n_0 ;
  wire \data_to_send_reg[2]_i_9_n_0 ;
  wire \data_to_send_reg[3]_i_3_n_0 ;
  wire \data_to_send_reg[3]_i_4_n_0 ;
  wire \data_to_send_reg[3]_i_6_n_0 ;
  wire \data_to_send_reg[3]_i_7_n_0 ;
  wire \data_to_send_reg[3]_i_8_n_0 ;
  wire \data_to_send_reg[3]_i_9_n_0 ;
  wire \data_to_send_reg[5]_i_3_n_0 ;
  wire \data_to_send_reg[5]_i_4_n_0 ;
  wire \data_to_send_reg[5]_i_6_n_0 ;
  wire \data_to_send_reg[5]_i_7_n_0 ;
  wire \data_to_send_reg[5]_i_8_n_0 ;
  wire \data_to_send_reg[5]_i_9_n_0 ;
  wire \data_to_send_reg[6]_i_10_n_0 ;
  wire \data_to_send_reg[6]_i_3_n_0 ;
  wire \data_to_send_reg[6]_i_4_n_0 ;
  wire \data_to_send_reg[6]_i_7_n_0 ;
  wire \data_to_send_reg[6]_i_8_n_0 ;
  wire \data_to_send_reg[6]_i_9_n_0 ;
  wire \data_to_send_reg[8]_i_10_n_0 ;
  wire \data_to_send_reg[8]_i_3_n_0 ;
  wire \data_to_send_reg[8]_i_4_n_0 ;
  wire \data_to_send_reg[8]_i_7_n_0 ;
  wire \data_to_send_reg[8]_i_8_n_0 ;
  wire \data_to_send_reg[8]_i_9_n_0 ;
  wire \data_to_send_reg[9]_i_10_n_0 ;
  wire \data_to_send_reg[9]_i_3_n_0 ;
  wire \data_to_send_reg[9]_i_4_n_0 ;
  wire \data_to_send_reg[9]_i_7_n_0 ;
  wire \data_to_send_reg[9]_i_8_n_0 ;
  wire \data_to_send_reg[9]_i_9_n_0 ;
  wire \data_to_send_reg_n_0_[0] ;
  wire \data_to_send_reg_n_0_[1] ;
  wire \data_to_send_reg_n_0_[2] ;
  wire \data_to_send_reg_n_0_[3] ;
  wire \data_to_send_reg_n_0_[5] ;
  wire \data_to_send_reg_n_0_[6] ;
  wire eqOp;
  wire \eqOp_inferred__0/i__carry_n_1 ;
  wire \eqOp_inferred__0/i__carry_n_2 ;
  wire \eqOp_inferred__0/i__carry_n_3 ;
  wire \evcounter[0]_i_2_n_0 ;
  wire \evcounter_reg[0]_i_1_n_0 ;
  wire \evcounter_reg[0]_i_1_n_1 ;
  wire \evcounter_reg[0]_i_1_n_2 ;
  wire \evcounter_reg[0]_i_1_n_3 ;
  wire \evcounter_reg[0]_i_1_n_4 ;
  wire \evcounter_reg[0]_i_1_n_5 ;
  wire \evcounter_reg[0]_i_1_n_6 ;
  wire \evcounter_reg[0]_i_1_n_7 ;
  wire \evcounter_reg[4]_i_1_n_0 ;
  wire \evcounter_reg[4]_i_1_n_1 ;
  wire \evcounter_reg[4]_i_1_n_2 ;
  wire \evcounter_reg[4]_i_1_n_3 ;
  wire \evcounter_reg[4]_i_1_n_4 ;
  wire \evcounter_reg[4]_i_1_n_5 ;
  wire \evcounter_reg[4]_i_1_n_6 ;
  wire \evcounter_reg[4]_i_1_n_7 ;
  wire \evcounter_reg[8]_i_1_n_1 ;
  wire \evcounter_reg[8]_i_1_n_2 ;
  wire \evcounter_reg[8]_i_1_n_3 ;
  wire \evcounter_reg[8]_i_1_n_4 ;
  wire \evcounter_reg[8]_i_1_n_5 ;
  wire \evcounter_reg[8]_i_1_n_6 ;
  wire \evcounter_reg[8]_i_1_n_7 ;
  wire \evcounter_reg_n_0_[0] ;
  wire \evcounter_reg_n_0_[10] ;
  wire \evcounter_reg_n_0_[11] ;
  wire \evcounter_reg_n_0_[1] ;
  wire \evcounter_reg_n_0_[2] ;
  wire \evcounter_reg_n_0_[3] ;
  wire \evcounter_reg_n_0_[8] ;
  wire \evcounter_reg_n_0_[9] ;
  wire \fifo_data[96]_i_1_n_0 ;
  wire \fifo_data_reg_n_0_[0] ;
  wire \fifo_data_reg_n_0_[10] ;
  wire \fifo_data_reg_n_0_[11] ;
  wire \fifo_data_reg_n_0_[12] ;
  wire \fifo_data_reg_n_0_[13] ;
  wire \fifo_data_reg_n_0_[14] ;
  wire \fifo_data_reg_n_0_[15] ;
  wire \fifo_data_reg_n_0_[16] ;
  wire \fifo_data_reg_n_0_[17] ;
  wire \fifo_data_reg_n_0_[18] ;
  wire \fifo_data_reg_n_0_[19] ;
  wire \fifo_data_reg_n_0_[1] ;
  wire \fifo_data_reg_n_0_[20] ;
  wire \fifo_data_reg_n_0_[21] ;
  wire \fifo_data_reg_n_0_[22] ;
  wire \fifo_data_reg_n_0_[23] ;
  wire \fifo_data_reg_n_0_[24] ;
  wire \fifo_data_reg_n_0_[25] ;
  wire \fifo_data_reg_n_0_[26] ;
  wire \fifo_data_reg_n_0_[27] ;
  wire \fifo_data_reg_n_0_[28] ;
  wire \fifo_data_reg_n_0_[29] ;
  wire \fifo_data_reg_n_0_[2] ;
  wire \fifo_data_reg_n_0_[30] ;
  wire \fifo_data_reg_n_0_[31] ;
  wire \fifo_data_reg_n_0_[32] ;
  wire \fifo_data_reg_n_0_[33] ;
  wire \fifo_data_reg_n_0_[34] ;
  wire \fifo_data_reg_n_0_[35] ;
  wire \fifo_data_reg_n_0_[36] ;
  wire \fifo_data_reg_n_0_[37] ;
  wire \fifo_data_reg_n_0_[38] ;
  wire \fifo_data_reg_n_0_[39] ;
  wire \fifo_data_reg_n_0_[3] ;
  wire \fifo_data_reg_n_0_[40] ;
  wire \fifo_data_reg_n_0_[41] ;
  wire \fifo_data_reg_n_0_[42] ;
  wire \fifo_data_reg_n_0_[43] ;
  wire \fifo_data_reg_n_0_[44] ;
  wire \fifo_data_reg_n_0_[45] ;
  wire \fifo_data_reg_n_0_[46] ;
  wire \fifo_data_reg_n_0_[47] ;
  wire \fifo_data_reg_n_0_[48] ;
  wire \fifo_data_reg_n_0_[49] ;
  wire \fifo_data_reg_n_0_[4] ;
  wire \fifo_data_reg_n_0_[50] ;
  wire \fifo_data_reg_n_0_[51] ;
  wire \fifo_data_reg_n_0_[52] ;
  wire \fifo_data_reg_n_0_[53] ;
  wire \fifo_data_reg_n_0_[54] ;
  wire \fifo_data_reg_n_0_[55] ;
  wire \fifo_data_reg_n_0_[56] ;
  wire \fifo_data_reg_n_0_[57] ;
  wire \fifo_data_reg_n_0_[58] ;
  wire \fifo_data_reg_n_0_[59] ;
  wire \fifo_data_reg_n_0_[5] ;
  wire \fifo_data_reg_n_0_[60] ;
  wire \fifo_data_reg_n_0_[61] ;
  wire \fifo_data_reg_n_0_[62] ;
  wire \fifo_data_reg_n_0_[63] ;
  wire \fifo_data_reg_n_0_[64] ;
  wire \fifo_data_reg_n_0_[65] ;
  wire \fifo_data_reg_n_0_[66] ;
  wire \fifo_data_reg_n_0_[67] ;
  wire \fifo_data_reg_n_0_[68] ;
  wire \fifo_data_reg_n_0_[69] ;
  wire \fifo_data_reg_n_0_[6] ;
  wire \fifo_data_reg_n_0_[70] ;
  wire \fifo_data_reg_n_0_[71] ;
  wire \fifo_data_reg_n_0_[72] ;
  wire \fifo_data_reg_n_0_[73] ;
  wire \fifo_data_reg_n_0_[74] ;
  wire \fifo_data_reg_n_0_[75] ;
  wire \fifo_data_reg_n_0_[76] ;
  wire \fifo_data_reg_n_0_[77] ;
  wire \fifo_data_reg_n_0_[78] ;
  wire \fifo_data_reg_n_0_[79] ;
  wire \fifo_data_reg_n_0_[7] ;
  wire \fifo_data_reg_n_0_[80] ;
  wire \fifo_data_reg_n_0_[81] ;
  wire \fifo_data_reg_n_0_[82] ;
  wire \fifo_data_reg_n_0_[83] ;
  wire \fifo_data_reg_n_0_[84] ;
  wire \fifo_data_reg_n_0_[85] ;
  wire \fifo_data_reg_n_0_[86] ;
  wire \fifo_data_reg_n_0_[87] ;
  wire \fifo_data_reg_n_0_[88] ;
  wire \fifo_data_reg_n_0_[89] ;
  wire \fifo_data_reg_n_0_[8] ;
  wire \fifo_data_reg_n_0_[90] ;
  wire \fifo_data_reg_n_0_[91] ;
  wire \fifo_data_reg_n_0_[92] ;
  wire \fifo_data_reg_n_0_[93] ;
  wire \fifo_data_reg_n_0_[94] ;
  wire \fifo_data_reg_n_0_[95] ;
  wire \fifo_data_reg_n_0_[9] ;
  (* async_reg = "true" *) wire i_DRS4_DWRITEn;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i_data_clk;
  wire i_next_fifo_full;
  wire [11:0]i_post_trig_wind;
  wire [11:0]i_pre_trig_wind;
  wire [11:0]i_rd_data_count;
  wire [96:0]i_rd_fifo_data;
  wire i_rd_fifo_empty;
  wire i_rst;
  wire [9:0]i_stop_cell;
  wire i_stop_cell_ready;
  wire i_trigger;
  wire i_veto;
  wire i_wr_fifo_full;
  wire [18:0]in10;
  wire [11:1]in12;
  wire [22:0]in13;
  wire [22:0]in14;
  wire [18:0]in15;
  wire [5:0]in2;
  wire [6:0]in3;
  wire [6:0]in4;
  wire [14:0]in7;
  wire [14:0]in8;
  wire [22:0]in9;
  wire ltOp;
  wire ltOp_carry__0_i_1_n_0;
  wire ltOp_carry__0_i_2_n_0;
  wire ltOp_carry__0_i_3_n_0;
  wire ltOp_carry__0_i_4_n_0;
  wire ltOp_carry__0_n_3;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8_n_0;
  wire ltOp_carry_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire [6:0]o_ascii;
  wire \o_ascii[0]_i_1_n_0 ;
  wire \o_ascii[1]_i_1_n_0 ;
  wire \o_ascii[2]_i_1_n_0 ;
  wire \o_ascii[3]_i_1_n_0 ;
  wire \o_ascii[4]_i_1_n_0 ;
  wire \o_ascii[5]_i_1_n_0 ;
  wire \o_ascii[6]_i_1_n_0 ;
  wire \o_ascii[6]_i_2_n_0 ;
  wire o_busy;
  wire o_outfifo_wr_en;
  wire o_rd_fifo_en;
  wire o_trig_RO_end;
  wire o_trig_RO_end_i_1_n_0;
  wire [0:0]o_wr_fifo_data;
  wire o_wr_fifo_en;
  wire outfifo_wr_en_i_1_n_0;
  wire p_0_in11_in;
  wire [11:1]plusOp;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire prev_DRS4_DWRITEn;
  wire prev_DRS4_DWRITEn_i_1_n_0;
  wire prev_post_trigger_sample;
  wire prev_post_trigger_sample_i_1_n_0;
  wire prev_post_trigger_sample_reg_n_0;
  (* RTL_KEEP = "yes" *) wire prev_trigger_st;
  wire prev_trigger_st_i_1_n_0;
  wire prev_trigger_st_reg_n_0;
  wire rd_fifo_en;
  wire rd_fifo_en_i_2_n_0;
  (* RTL_KEEP = "yes" *) wire [3:0]read_proc_st;
  wire \readout_sample_counter[0]_i_1_n_0 ;
  wire \readout_sample_counter[10]_i_1_n_0 ;
  wire \readout_sample_counter[10]_i_2_n_0 ;
  wire \readout_sample_counter[10]_i_3_n_0 ;
  wire \readout_sample_counter[11]_i_1_n_0 ;
  wire \readout_sample_counter[1]_i_1_n_0 ;
  wire \readout_sample_counter[2]_i_1_n_0 ;
  wire \readout_sample_counter[3]_i_1_n_0 ;
  wire \readout_sample_counter[4]_i_1_n_0 ;
  wire \readout_sample_counter[5]_i_1_n_0 ;
  wire \readout_sample_counter[6]_i_1_n_0 ;
  wire \readout_sample_counter[7]_i_1_n_0 ;
  wire \readout_sample_counter[8]_i_1_n_0 ;
  wire \readout_sample_counter[9]_i_1_n_0 ;
  wire \readout_sample_counter_reg[10]_i_4_n_2 ;
  wire \readout_sample_counter_reg[10]_i_4_n_3 ;
  wire \readout_sample_counter_reg[10]_i_4_n_5 ;
  wire \readout_sample_counter_reg[10]_i_4_n_6 ;
  wire \readout_sample_counter_reg[10]_i_4_n_7 ;
  wire \readout_sample_counter_reg[4]_i_2_n_0 ;
  wire \readout_sample_counter_reg[4]_i_2_n_1 ;
  wire \readout_sample_counter_reg[4]_i_2_n_2 ;
  wire \readout_sample_counter_reg[4]_i_2_n_3 ;
  wire \readout_sample_counter_reg[4]_i_2_n_4 ;
  wire \readout_sample_counter_reg[4]_i_2_n_5 ;
  wire \readout_sample_counter_reg[4]_i_2_n_6 ;
  wire \readout_sample_counter_reg[4]_i_2_n_7 ;
  wire \readout_sample_counter_reg[8]_i_2_n_0 ;
  wire \readout_sample_counter_reg[8]_i_2_n_1 ;
  wire \readout_sample_counter_reg[8]_i_2_n_2 ;
  wire \readout_sample_counter_reg[8]_i_2_n_3 ;
  wire \readout_sample_counter_reg[8]_i_2_n_4 ;
  wire \readout_sample_counter_reg[8]_i_2_n_5 ;
  wire \readout_sample_counter_reg[8]_i_2_n_6 ;
  wire \readout_sample_counter_reg[8]_i_2_n_7 ;
  wire \readout_sample_counter_reg_n_0_[0] ;
  wire \readout_sample_counter_reg_n_0_[10] ;
  wire \readout_sample_counter_reg_n_0_[11] ;
  wire \readout_sample_counter_reg_n_0_[1] ;
  wire \readout_sample_counter_reg_n_0_[2] ;
  wire \readout_sample_counter_reg_n_0_[3] ;
  wire \readout_sample_counter_reg_n_0_[4] ;
  wire \readout_sample_counter_reg_n_0_[5] ;
  wire \readout_sample_counter_reg_n_0_[6] ;
  wire \readout_sample_counter_reg_n_0_[7] ;
  wire \readout_sample_counter_reg_n_0_[8] ;
  wire \readout_sample_counter_reg_n_0_[9] ;
  wire [3:0]sel0;
  wire send_data1__0;
  wire send_data_i_1_n_0;
  wire send_data_i_2_n_0;
  wire send_data_i_3_n_0;
  wire send_data_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]send_proc_st;
  wire sending_data_i_1_n_0;
  wire sending_data_reg_n_0;
  wire sys_clk;
  wire wr_fifo_en;
  wire wr_fifo_en110_out;
  wire wr_fifo_en18_out;
  wire wr_fifo_en_reg_n_0;
  wire [3:2]\NLW_counter_reg[11]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[11]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_evcounter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_ltOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:2]\NLW_readout_sample_counter_reg[10]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_readout_sample_counter_reg[10]_i_4_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00004044)) 
    DRS4_trigger_type_i_1
       (.I0(i_DRS4_DWRITEn),
        .I1(prev_DRS4_DWRITEn),
        .I2(prev_trigger_st_reg_n_0),
        .I3(i_trigger),
        .I4(i_wr_fifo_full),
        .O(DRS4_trigger_type_i_1_n_0));
  FDRE DRS4_trigger_type_reg
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(DRS4_trigger_type_i_1_n_0),
        .Q(DRS4_trigger_type_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFEFE)) 
    \FSM_onehot_ro_proc_st[1]_i_1 
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I1(\FSM_onehot_ro_proc_st[1]_i_2_n_0 ),
        .I2(\FSM_onehot_ro_proc_st_reg_n_0_[0] ),
        .I3(eqOp),
        .I4(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I5(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .O(\FSM_onehot_ro_proc_st[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0010)) 
    \FSM_onehot_ro_proc_st[1]_i_2 
       (.I0(wr_fifo_en18_out),
        .I1(wr_fifo_en110_out),
        .I2(prev_trigger_st),
        .I3(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I4(\FSM_onehot_ro_proc_st_reg_n_0_[1] ),
        .O(\FSM_onehot_ro_proc_st[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0B0A0A0)) 
    \FSM_onehot_ro_proc_st[2]_i_1 
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[1] ),
        .I1(wr_fifo_en18_out),
        .I2(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I3(wr_fifo_en110_out),
        .I4(prev_trigger_st),
        .O(\FSM_onehot_ro_proc_st[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0FFE0E0E0E0E0)) 
    \FSM_onehot_ro_proc_st[3]_i_1 
       (.I0(wr_fifo_en110_out),
        .I1(wr_fifo_en18_out),
        .I2(prev_trigger_st),
        .I3(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I4(eqOp),
        .I5(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .O(busy));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_ro_proc_st[3]_i_2 
       (.I0(i_wr_fifo_full),
        .I1(i_trigger),
        .I2(prev_trigger_st_reg_n_0),
        .O(wr_fifo_en110_out));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_ro_proc_st[3]_i_3 
       (.I0(prev_DRS4_DWRITEn),
        .I1(i_DRS4_DWRITEn),
        .I2(i_wr_fifo_full),
        .O(wr_fifo_en18_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    \FSM_onehot_ro_proc_st[3]_i_4 
       (.I0(busy_reg_n_0),
        .I1(i_veto),
        .I2(sending_data_reg_n_0),
        .I3(i_wr_fifo_full),
        .O(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \FSM_onehot_ro_proc_st[4]_i_1 
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[0] ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[1] ),
        .I2(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I4(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I5(prev_trigger_st),
        .O(\FSM_onehot_ro_proc_st[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_ro_proc_st[4]_i_2 
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I1(eqOp),
        .O(\FSM_onehot_ro_proc_st[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_ro_proc_st[4]_i_3 
       (.I0(\FSM_onehot_ro_proc_st[4]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_5_n_0 ),
        .O(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_ro_proc_st[4]_i_4 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[7] ),
        .I5(\counter_reg_n_0_[8] ),
        .O(\FSM_onehot_ro_proc_st[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \FSM_onehot_ro_proc_st[4]_i_5 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[4] ),
        .O(\FSM_onehot_ro_proc_st[4]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_onehot_ro_proc_st_reg[0] 
       (.C(i_data_clk),
        .CE(\FSM_onehot_ro_proc_st[4]_i_1_n_0 ),
        .D(1'b0),
        .PRE(i_rst),
        .Q(\FSM_onehot_ro_proc_st_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_ro_proc_st_reg[1] 
       (.C(i_data_clk),
        .CE(\FSM_onehot_ro_proc_st[4]_i_1_n_0 ),
        .CLR(i_rst),
        .D(\FSM_onehot_ro_proc_st[1]_i_1_n_0 ),
        .Q(\FSM_onehot_ro_proc_st_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ro_proc_st_reg[2] 
       (.C(i_data_clk),
        .CE(\FSM_onehot_ro_proc_st[4]_i_1_n_0 ),
        .CLR(i_rst),
        .D(\FSM_onehot_ro_proc_st[2]_i_1_n_0 ),
        .Q(prev_trigger_st));
  (* FSM_ENCODED_STATES = "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ro_proc_st_reg[3] 
       (.C(i_data_clk),
        .CE(\FSM_onehot_ro_proc_st[4]_i_1_n_0 ),
        .CLR(i_rst),
        .D(busy),
        .Q(\FSM_onehot_ro_proc_st_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ro_proc_st_reg[4] 
       (.C(i_data_clk),
        .CE(\FSM_onehot_ro_proc_st[4]_i_1_n_0 ),
        .CLR(i_rst),
        .D(\FSM_onehot_ro_proc_st[4]_i_2_n_0 ),
        .Q(\FSM_onehot_ro_proc_st_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'hC0C300007F7FFFFF)) 
    \FSM_sequential_read_proc_st[0]_i_1 
       (.I0(i_rd_fifo_empty),
        .I1(read_proc_st[3]),
        .I2(read_proc_st[2]),
        .I3(DRS4_trigger_type_reg_n_0),
        .I4(read_proc_st[1]),
        .I5(read_proc_st[0]),
        .O(\FSM_sequential_read_proc_st[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF7F00)) 
    \FSM_sequential_read_proc_st[1]_i_1 
       (.I0(i_rd_fifo_empty),
        .I1(read_proc_st[2]),
        .I2(read_proc_st[3]),
        .I3(read_proc_st[1]),
        .I4(read_proc_st[0]),
        .O(\FSM_sequential_read_proc_st[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFF070F0)) 
    \FSM_sequential_read_proc_st[2]_i_1 
       (.I0(i_rd_fifo_empty),
        .I1(read_proc_st[3]),
        .I2(read_proc_st[2]),
        .I3(read_proc_st[1]),
        .I4(read_proc_st[0]),
        .O(\FSM_sequential_read_proc_st[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0CCCCD0EECCCCDD)) 
    \FSM_sequential_read_proc_st[3]_i_1 
       (.I0(read_proc_st[1]),
        .I1(send_data1__0),
        .I2(\FSM_sequential_read_proc_st[3]_i_4_n_0 ),
        .I3(read_proc_st[3]),
        .I4(read_proc_st[2]),
        .I5(read_proc_st[0]),
        .O(\FSM_sequential_read_proc_st[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3C4CCCCC)) 
    \FSM_sequential_read_proc_st[3]_i_2 
       (.I0(i_rd_fifo_empty),
        .I1(read_proc_st[3]),
        .I2(read_proc_st[2]),
        .I3(read_proc_st[0]),
        .I4(read_proc_st[1]),
        .O(\FSM_sequential_read_proc_st[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_read_proc_st[3]_i_3 
       (.I0(send_data_reg_n_0),
        .I1(data_sent_reg_n_0),
        .O(send_data1__0));
  LUT6 #(
    .INIT(64'h66666F66FFFF6F66)) 
    \FSM_sequential_read_proc_st[3]_i_4 
       (.I0(read_proc_st[2]),
        .I1(read_proc_st[1]),
        .I2(i_rd_fifo_empty),
        .I3(busy_reg_n_0),
        .I4(read_proc_st[3]),
        .I5(o_rd_fifo_en),
        .O(\FSM_sequential_read_proc_st[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b1)) 
    \FSM_sequential_read_proc_st_reg[0] 
       (.C(sys_clk),
        .CE(\FSM_sequential_read_proc_st[3]_i_1_n_0 ),
        .CLR(i_rst),
        .D(\FSM_sequential_read_proc_st[0]_i_1_n_0 ),
        .Q(read_proc_st[0]));
  (* FSM_ENCODED_STATES = "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_read_proc_st_reg[1] 
       (.C(sys_clk),
        .CE(\FSM_sequential_read_proc_st[3]_i_1_n_0 ),
        .CLR(i_rst),
        .D(\FSM_sequential_read_proc_st[1]_i_1_n_0 ),
        .Q(read_proc_st[1]));
  (* FSM_ENCODED_STATES = "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_read_proc_st_reg[2] 
       (.C(sys_clk),
        .CE(\FSM_sequential_read_proc_st[3]_i_1_n_0 ),
        .CLR(i_rst),
        .D(\FSM_sequential_read_proc_st[2]_i_1_n_0 ),
        .Q(read_proc_st[2]));
  (* FSM_ENCODED_STATES = "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_read_proc_st_reg[3] 
       (.C(sys_clk),
        .CE(\FSM_sequential_read_proc_st[3]_i_1_n_0 ),
        .CLR(i_rst),
        .D(\FSM_sequential_read_proc_st[3]_i_2_n_0 ),
        .Q(read_proc_st[3]));
  LUT6 #(
    .INIT(64'hFCCDFFFF0000F33F)) 
    \FSM_sequential_send_proc_st[0]_i_1 
       (.I0(send_data_reg_n_0),
        .I1(i_next_fifo_full),
        .I2(send_proc_st[2]),
        .I3(send_proc_st[1]),
        .I4(send_proc_st[0]),
        .I5(send_proc_st[0]),
        .O(\FSM_sequential_send_proc_st[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF0FC000320300)) 
    \FSM_sequential_send_proc_st[1]_i_1 
       (.I0(send_data_reg_n_0),
        .I1(i_next_fifo_full),
        .I2(send_proc_st[2]),
        .I3(send_proc_st[1]),
        .I4(send_proc_st[0]),
        .I5(send_proc_st[1]),
        .O(\FSM_sequential_send_proc_st[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0CF003300030)) 
    \FSM_sequential_send_proc_st[2]_i_1 
       (.I0(send_data_reg_n_0),
        .I1(i_next_fifo_full),
        .I2(send_proc_st[2]),
        .I3(send_proc_st[1]),
        .I4(send_proc_st[0]),
        .I5(send_proc_st[2]),
        .O(\FSM_sequential_send_proc_st[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "reset:000,idle:001,byte0:010,byte1:011,byte2:100,byte3:101,ending:110," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b1)) 
    \FSM_sequential_send_proc_st_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\FSM_sequential_send_proc_st[0]_i_1_n_0 ),
        .Q(send_proc_st[0]));
  (* FSM_ENCODED_STATES = "reset:000,idle:001,byte0:010,byte1:011,byte2:100,byte3:101,ending:110," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_send_proc_st_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\FSM_sequential_send_proc_st[1]_i_1_n_0 ),
        .Q(send_proc_st[1]));
  (* FSM_ENCODED_STATES = "reset:000,idle:001,byte0:010,byte1:011,byte2:100,byte3:101,ending:110," *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_send_proc_st_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\FSM_sequential_send_proc_st[2]_i_1_n_0 ),
        .Q(send_proc_st[2]));
  LUT6 #(
    .INIT(64'hFFFFAEAA0000AEAA)) 
    busy_i_1
       (.I0(busy_i_2_n_0),
        .I1(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I2(eqOp),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(i_rst),
        .I5(busy_reg_n_0),
        .O(busy_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000800AA0008)) 
    busy_i_2
       (.I0(prev_trigger_st),
        .I1(prev_DRS4_DWRITEn),
        .I2(i_DRS4_DWRITEn),
        .I3(i_wr_fifo_full),
        .I4(i_trigger),
        .I5(prev_trigger_st_reg_n_0),
        .O(busy_i_2_n_0));
  FDRE busy_reg
       (.C(i_data_clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \cnt_limit[11]_i_1 
       (.I0(\cnt_limit[11]_i_2_n_0 ),
        .I1(prev_trigger_st_reg_n_0),
        .I2(i_trigger),
        .I3(i_wr_fifo_full),
        .O(\cnt_limit[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABAA0000)) 
    \cnt_limit[11]_i_2 
       (.I0(wr_fifo_en110_out),
        .I1(i_wr_fifo_full),
        .I2(i_DRS4_DWRITEn),
        .I3(prev_DRS4_DWRITEn),
        .I4(prev_trigger_st),
        .I5(i_rst),
        .O(\cnt_limit[11]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[0] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[0]),
        .Q(cnt_limit[0]),
        .S(\cnt_limit[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[10] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[10]),
        .Q(cnt_limit[10]),
        .S(\cnt_limit[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[11] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[11]),
        .Q(cnt_limit[11]),
        .R(\cnt_limit[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[1] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[1]),
        .Q(cnt_limit[1]),
        .S(\cnt_limit[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[2] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[2]),
        .Q(cnt_limit[2]),
        .S(\cnt_limit[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[3] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[3]),
        .Q(cnt_limit[3]),
        .S(\cnt_limit[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[4] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[4]),
        .Q(cnt_limit[4]),
        .R(\cnt_limit[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[5] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[5]),
        .Q(cnt_limit[5]),
        .R(\cnt_limit[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[6] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[6]),
        .Q(cnt_limit[6]),
        .R(\cnt_limit[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[7] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[7]),
        .Q(cnt_limit[7]),
        .R(\cnt_limit[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[8] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[8]),
        .Q(cnt_limit[8]),
        .R(\cnt_limit[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_limit_reg[9] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(i_post_trig_wind[9]),
        .Q(cnt_limit[9]),
        .R(\cnt_limit[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEAEEEAFFEAEE)) 
    \counter[0]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I5(eqOp),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[10]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[10]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[10]),
        .O(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222222020202020)) 
    \counter[11]_i_1 
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[0] ),
        .I1(i_rst),
        .I2(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I3(eqOp),
        .I4(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I5(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .O(\counter[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFA8)) 
    \counter[11]_i_2 
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I1(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I2(eqOp),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I4(i_rst),
        .O(\counter[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[11]_i_3 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[11]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[11]),
        .O(\counter[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[11]_i_4 
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[1] ),
        .I1(prev_trigger_st),
        .O(\counter[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[1]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[1]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[1]),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[2]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[2]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[3]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[3]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[3]),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[4]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[4]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[5]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[5]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[5]),
        .O(\counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[6]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[6]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[6]),
        .O(\counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[7]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[7]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[8]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[8]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[8]),
        .O(\counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAEAEAEAEA)) 
    \counter[9]_i_1 
       (.I0(\counter[11]_i_4_n_0 ),
        .I1(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I2(in12[9]),
        .I3(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I4(eqOp),
        .I5(plusOp[9]),
        .O(\counter[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[10]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[10] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[11]_i_3_n_0 ),
        .Q(\counter_reg_n_0_[11] ),
        .S(\counter[11]_i_1_n_0 ));
  CARRY4 \counter_reg[11]_i_5 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\NLW_counter_reg[11]_i_5_CO_UNCONNECTED [3:2],\counter_reg[11]_i_5_n_2 ,\counter_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[11]_i_5_O_UNCONNECTED [3],plusOp[11:9]}),
        .S({1'b0,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[3]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ),
        .S(\counter[11]_i_1_n_0 ));
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[7]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[7] ),
        .S(\counter[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[8] ),
        .S(\counter[11]_i_1_n_0 ));
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(i_data_clk),
        .CE(\counter[11]_i_2_n_0 ),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ),
        .S(\counter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF002000000020)) 
    data_sent_i_1
       (.I0(send_proc_st[2]),
        .I1(send_proc_st[1]),
        .I2(send_proc_st[0]),
        .I3(i_next_fifo_full),
        .I4(i_rst),
        .I5(data_sent_reg_n_0),
        .O(data_sent_i_1_n_0));
  FDRE data_sent_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(data_sent_i_1_n_0),
        .Q(data_sent_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[0]_i_1 
       (.I0(\data_to_send[0]_i_2_n_0 ),
        .I1(\data_to_send_reg[0]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[0]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[0]_i_5_n_0 ),
        .O(data_to_send[0]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_11 
       (.I0(\fifo_data_reg_n_0_[26] ),
        .I1(\fifo_data_reg_n_0_[25] ),
        .I2(\fifo_data_reg_n_0_[27] ),
        .I3(\fifo_data_reg_n_0_[24] ),
        .O(\data_to_send[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_12 
       (.I0(\fifo_data_reg_n_0_[38] ),
        .I1(\fifo_data_reg_n_0_[37] ),
        .I2(\fifo_data_reg_n_0_[39] ),
        .I3(\fifo_data_reg_n_0_[36] ),
        .O(\data_to_send[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_13 
       (.I0(\fifo_data_reg_n_0_[50] ),
        .I1(\fifo_data_reg_n_0_[49] ),
        .I2(\fifo_data_reg_n_0_[51] ),
        .I3(\fifo_data_reg_n_0_[48] ),
        .O(in13[0]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_14 
       (.I0(\fifo_data_reg_n_0_[62] ),
        .I1(\fifo_data_reg_n_0_[61] ),
        .I2(\fifo_data_reg_n_0_[63] ),
        .I3(\fifo_data_reg_n_0_[60] ),
        .O(in14[0]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_15 
       (.I0(i_stop_cell[2]),
        .I1(i_stop_cell[1]),
        .I2(i_stop_cell[3]),
        .I3(i_stop_cell[0]),
        .O(in7[0]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[2] ),
        .I1(\readout_sample_counter_reg_n_0_[1] ),
        .I2(\readout_sample_counter_reg_n_0_[3] ),
        .I3(\readout_sample_counter_reg_n_0_[0] ),
        .O(in8[0]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_17 
       (.I0(\fifo_data_reg_n_0_[2] ),
        .I1(\fifo_data_reg_n_0_[1] ),
        .I2(\fifo_data_reg_n_0_[3] ),
        .I3(\fifo_data_reg_n_0_[0] ),
        .O(in9[0]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_18 
       (.I0(\fifo_data_reg_n_0_[14] ),
        .I1(\fifo_data_reg_n_0_[13] ),
        .I2(\fifo_data_reg_n_0_[15] ),
        .I3(\fifo_data_reg_n_0_[12] ),
        .O(in10[0]));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \data_to_send[0]_i_2 
       (.I0(\fifo_data_reg_n_0_[86] ),
        .I1(\fifo_data_reg_n_0_[85] ),
        .I2(\fifo_data_reg_n_0_[87] ),
        .I3(\fifo_data_reg_n_0_[84] ),
        .I4(read_proc_st[0]),
        .I5(in15[0]),
        .O(\data_to_send[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h28282888)) 
    \data_to_send[0]_i_5 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[0] ),
        .I2(\evcounter_reg_n_0_[3] ),
        .I3(\evcounter_reg_n_0_[1] ),
        .I4(\evcounter_reg_n_0_[2] ),
        .O(\data_to_send[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[0]_i_6 
       (.I0(\fifo_data_reg_n_0_[74] ),
        .I1(\fifo_data_reg_n_0_[73] ),
        .I2(\fifo_data_reg_n_0_[75] ),
        .I3(\fifo_data_reg_n_0_[72] ),
        .O(in15[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[10]_i_1 
       (.I0(\data_to_send[10]_i_2_n_0 ),
        .I1(\data_to_send_reg[10]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[10]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[10]_i_5_n_0 ),
        .O(data_to_send[10]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_11 
       (.I0(\fifo_data_reg_n_0_[28] ),
        .I1(\fifo_data_reg_n_0_[29] ),
        .I2(\fifo_data_reg_n_0_[31] ),
        .I3(\fifo_data_reg_n_0_[30] ),
        .O(\data_to_send[10]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_12 
       (.I0(\fifo_data_reg_n_0_[40] ),
        .I1(\fifo_data_reg_n_0_[41] ),
        .I2(\fifo_data_reg_n_0_[43] ),
        .I3(\fifo_data_reg_n_0_[42] ),
        .O(\data_to_send[10]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_13 
       (.I0(\fifo_data_reg_n_0_[52] ),
        .I1(\fifo_data_reg_n_0_[53] ),
        .I2(\fifo_data_reg_n_0_[55] ),
        .I3(\fifo_data_reg_n_0_[54] ),
        .O(in13[10]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_14 
       (.I0(\fifo_data_reg_n_0_[64] ),
        .I1(\fifo_data_reg_n_0_[65] ),
        .I2(\fifo_data_reg_n_0_[67] ),
        .I3(\fifo_data_reg_n_0_[66] ),
        .O(in14[10]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_15 
       (.I0(i_stop_cell[4]),
        .I1(i_stop_cell[5]),
        .I2(i_stop_cell[7]),
        .I3(i_stop_cell[6]),
        .O(in7[10]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[4] ),
        .I1(\readout_sample_counter_reg_n_0_[5] ),
        .I2(\readout_sample_counter_reg_n_0_[7] ),
        .I3(\readout_sample_counter_reg_n_0_[6] ),
        .O(in8[10]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_17 
       (.I0(\fifo_data_reg_n_0_[4] ),
        .I1(\fifo_data_reg_n_0_[5] ),
        .I2(\fifo_data_reg_n_0_[7] ),
        .I3(\fifo_data_reg_n_0_[6] ),
        .O(in9[10]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_18 
       (.I0(\fifo_data_reg_n_0_[16] ),
        .I1(\fifo_data_reg_n_0_[17] ),
        .I2(\fifo_data_reg_n_0_[19] ),
        .I3(\fifo_data_reg_n_0_[18] ),
        .O(in10[10]));
  LUT6 #(
    .INIT(64'hEF00FFFFEF000000)) 
    \data_to_send[10]_i_2 
       (.I0(\fifo_data_reg_n_0_[88] ),
        .I1(\fifo_data_reg_n_0_[89] ),
        .I2(\fifo_data_reg_n_0_[91] ),
        .I3(\fifo_data_reg_n_0_[90] ),
        .I4(read_proc_st[0]),
        .I5(in15[10]),
        .O(\data_to_send[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA2FFFF)) 
    \data_to_send[10]_i_5 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(read_proc_st[0]),
        .O(\data_to_send[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[10]_i_6 
       (.I0(\fifo_data_reg_n_0_[76] ),
        .I1(\fifo_data_reg_n_0_[77] ),
        .I2(\fifo_data_reg_n_0_[79] ),
        .I3(\fifo_data_reg_n_0_[78] ),
        .O(in15[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[11]_i_1 
       (.I0(\data_to_send[11]_i_2_n_0 ),
        .I1(\data_to_send_reg[11]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[11]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[11]_i_5_n_0 ),
        .O(data_to_send[11]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_10 
       (.I0(\fifo_data_reg_n_0_[31] ),
        .I1(\fifo_data_reg_n_0_[30] ),
        .I2(\fifo_data_reg_n_0_[29] ),
        .O(\data_to_send[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_11 
       (.I0(\fifo_data_reg_n_0_[43] ),
        .I1(\fifo_data_reg_n_0_[42] ),
        .I2(\fifo_data_reg_n_0_[41] ),
        .O(\data_to_send[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_12 
       (.I0(\fifo_data_reg_n_0_[55] ),
        .I1(\fifo_data_reg_n_0_[54] ),
        .I2(\fifo_data_reg_n_0_[53] ),
        .O(in13[11]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_13 
       (.I0(\fifo_data_reg_n_0_[67] ),
        .I1(\fifo_data_reg_n_0_[66] ),
        .I2(\fifo_data_reg_n_0_[65] ),
        .O(in14[11]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_14 
       (.I0(i_stop_cell[7]),
        .I1(i_stop_cell[6]),
        .I2(i_stop_cell[5]),
        .O(in7[11]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_15 
       (.I0(\readout_sample_counter_reg_n_0_[7] ),
        .I1(\readout_sample_counter_reg_n_0_[6] ),
        .I2(\readout_sample_counter_reg_n_0_[5] ),
        .O(in8[11]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_16 
       (.I0(\fifo_data_reg_n_0_[7] ),
        .I1(\fifo_data_reg_n_0_[6] ),
        .I2(\fifo_data_reg_n_0_[5] ),
        .O(in9[11]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[11]_i_17 
       (.I0(\fifo_data_reg_n_0_[19] ),
        .I1(\fifo_data_reg_n_0_[18] ),
        .I2(\fifo_data_reg_n_0_[17] ),
        .O(in10[11]));
  LUT6 #(
    .INIT(64'h0200020002FF0200)) 
    \data_to_send[11]_i_2 
       (.I0(\fifo_data_reg_n_0_[91] ),
        .I1(\fifo_data_reg_n_0_[90] ),
        .I2(\fifo_data_reg_n_0_[89] ),
        .I3(read_proc_st[0]),
        .I4(\fifo_data_reg_n_0_[79] ),
        .I5(\data_to_send[14]_i_6_n_0 ),
        .O(\data_to_send[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \data_to_send[11]_i_5 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(read_proc_st[0]),
        .O(\data_to_send[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[12]_i_1 
       (.I0(\data_to_send[13]_i_2_n_0 ),
        .I1(\data_to_send_reg[13]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[13]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[12]_i_2_n_0 ),
        .O(data_to_send[12]));
  LUT4 #(
    .INIT(16'h222A)) 
    \data_to_send[12]_i_2 
       (.I0(read_proc_st[0]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\data_to_send[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[13]_i_1 
       (.I0(\data_to_send[13]_i_2_n_0 ),
        .I1(\data_to_send_reg[13]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[13]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[13]_i_5_n_0 ),
        .O(data_to_send[13]));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_10 
       (.I0(\fifo_data_reg_n_0_[30] ),
        .I1(\fifo_data_reg_n_0_[29] ),
        .I2(\fifo_data_reg_n_0_[31] ),
        .O(\data_to_send[13]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_11 
       (.I0(\fifo_data_reg_n_0_[42] ),
        .I1(\fifo_data_reg_n_0_[41] ),
        .I2(\fifo_data_reg_n_0_[43] ),
        .O(\data_to_send[13]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_12 
       (.I0(\fifo_data_reg_n_0_[54] ),
        .I1(\fifo_data_reg_n_0_[53] ),
        .I2(\fifo_data_reg_n_0_[55] ),
        .O(\data_to_send[13]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_13 
       (.I0(\fifo_data_reg_n_0_[66] ),
        .I1(\fifo_data_reg_n_0_[65] ),
        .I2(\fifo_data_reg_n_0_[67] ),
        .O(\data_to_send[13]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_14 
       (.I0(i_stop_cell[6]),
        .I1(i_stop_cell[5]),
        .I2(i_stop_cell[7]),
        .O(\data_to_send[13]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_15 
       (.I0(\readout_sample_counter_reg_n_0_[6] ),
        .I1(\readout_sample_counter_reg_n_0_[5] ),
        .I2(\readout_sample_counter_reg_n_0_[7] ),
        .O(\data_to_send[13]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_16 
       (.I0(\fifo_data_reg_n_0_[6] ),
        .I1(\fifo_data_reg_n_0_[5] ),
        .I2(\fifo_data_reg_n_0_[7] ),
        .O(\data_to_send[13]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[13]_i_17 
       (.I0(\fifo_data_reg_n_0_[18] ),
        .I1(\fifo_data_reg_n_0_[17] ),
        .I2(\fifo_data_reg_n_0_[19] ),
        .O(\data_to_send[13]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1F001FFF1FFF1FFF)) 
    \data_to_send[13]_i_2 
       (.I0(\fifo_data_reg_n_0_[90] ),
        .I1(\fifo_data_reg_n_0_[89] ),
        .I2(\fifo_data_reg_n_0_[91] ),
        .I3(read_proc_st[0]),
        .I4(\data_to_send[14]_i_6_n_0 ),
        .I5(\fifo_data_reg_n_0_[79] ),
        .O(\data_to_send[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \data_to_send[13]_i_5 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(read_proc_st[0]),
        .O(\data_to_send[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[14]_i_1 
       (.I0(\data_to_send[14]_i_2_n_0 ),
        .I1(\data_to_send_reg[14]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[14]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[14]_i_5_n_0 ),
        .O(data_to_send[14]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_11 
       (.I0(\fifo_data_reg_n_0_[31] ),
        .I1(\fifo_data_reg_n_0_[29] ),
        .I2(\fifo_data_reg_n_0_[30] ),
        .O(\data_to_send[14]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_12 
       (.I0(\fifo_data_reg_n_0_[43] ),
        .I1(\fifo_data_reg_n_0_[41] ),
        .I2(\fifo_data_reg_n_0_[42] ),
        .O(\data_to_send[14]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_13 
       (.I0(\fifo_data_reg_n_0_[55] ),
        .I1(\fifo_data_reg_n_0_[53] ),
        .I2(\fifo_data_reg_n_0_[54] ),
        .O(in13[14]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_14 
       (.I0(\fifo_data_reg_n_0_[67] ),
        .I1(\fifo_data_reg_n_0_[65] ),
        .I2(\fifo_data_reg_n_0_[66] ),
        .O(in14[14]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_15 
       (.I0(i_stop_cell[7]),
        .I1(i_stop_cell[5]),
        .I2(i_stop_cell[6]),
        .O(in7[14]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[7] ),
        .I1(\readout_sample_counter_reg_n_0_[5] ),
        .I2(\readout_sample_counter_reg_n_0_[6] ),
        .O(in8[14]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_17 
       (.I0(\fifo_data_reg_n_0_[7] ),
        .I1(\fifo_data_reg_n_0_[5] ),
        .I2(\fifo_data_reg_n_0_[6] ),
        .O(in9[14]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[14]_i_18 
       (.I0(\fifo_data_reg_n_0_[19] ),
        .I1(\fifo_data_reg_n_0_[17] ),
        .I2(\fifo_data_reg_n_0_[18] ),
        .O(in10[14]));
  LUT6 #(
    .INIT(64'hA8FFA800A800A800)) 
    \data_to_send[14]_i_2 
       (.I0(\fifo_data_reg_n_0_[91] ),
        .I1(\fifo_data_reg_n_0_[89] ),
        .I2(\fifo_data_reg_n_0_[90] ),
        .I3(read_proc_st[0]),
        .I4(\fifo_data_reg_n_0_[79] ),
        .I5(\data_to_send[14]_i_6_n_0 ),
        .O(\data_to_send[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA800)) 
    \data_to_send[14]_i_5 
       (.I0(read_proc_st[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\data_to_send[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_to_send[14]_i_6 
       (.I0(\fifo_data_reg_n_0_[78] ),
        .I1(\fifo_data_reg_n_0_[77] ),
        .O(\data_to_send[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[16]_i_1 
       (.I0(\data_to_send[16]_i_2_n_0 ),
        .I1(\data_to_send_reg[16]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send[16]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[16]_i_5_n_0 ),
        .O(data_to_send[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[16]_i_10 
       (.I0(\fifo_data_reg_n_0_[10] ),
        .I1(\fifo_data_reg_n_0_[9] ),
        .I2(\fifo_data_reg_n_0_[11] ),
        .I3(\fifo_data_reg_n_0_[8] ),
        .O(in9[16]));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \data_to_send[16]_i_11 
       (.I0(\readout_sample_counter_reg_n_0_[10] ),
        .I1(\readout_sample_counter_reg_n_0_[9] ),
        .I2(\readout_sample_counter_reg_n_0_[11] ),
        .I3(\readout_sample_counter_reg_n_0_[8] ),
        .I4(read_proc_st[0]),
        .I5(i_stop_cell[8]),
        .O(\data_to_send[16]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[16]_i_12 
       (.I0(\fifo_data_reg_n_0_[34] ),
        .I1(\fifo_data_reg_n_0_[33] ),
        .I2(\fifo_data_reg_n_0_[35] ),
        .I3(\fifo_data_reg_n_0_[32] ),
        .O(\data_to_send[16]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[16]_i_13 
       (.I0(\fifo_data_reg_n_0_[46] ),
        .I1(\fifo_data_reg_n_0_[45] ),
        .I2(\fifo_data_reg_n_0_[47] ),
        .I3(\fifo_data_reg_n_0_[44] ),
        .O(\data_to_send[16]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[16]_i_14 
       (.I0(\fifo_data_reg_n_0_[58] ),
        .I1(\fifo_data_reg_n_0_[57] ),
        .I2(\fifo_data_reg_n_0_[59] ),
        .I3(\fifo_data_reg_n_0_[56] ),
        .O(in13[16]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[16]_i_15 
       (.I0(\fifo_data_reg_n_0_[70] ),
        .I1(\fifo_data_reg_n_0_[69] ),
        .I2(\fifo_data_reg_n_0_[71] ),
        .I3(\fifo_data_reg_n_0_[68] ),
        .O(in14[16]));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \data_to_send[16]_i_2 
       (.I0(\fifo_data_reg_n_0_[94] ),
        .I1(\fifo_data_reg_n_0_[93] ),
        .I2(\fifo_data_reg_n_0_[95] ),
        .I3(\fifo_data_reg_n_0_[92] ),
        .I4(read_proc_st[0]),
        .I5(in15[16]),
        .O(\data_to_send[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_to_send[16]_i_4 
       (.I0(in10[16]),
        .I1(read_proc_st[0]),
        .I2(in9[16]),
        .I3(read_proc_st[1]),
        .I4(\data_to_send[16]_i_11_n_0 ),
        .O(\data_to_send[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h666AFFFF)) 
    \data_to_send[16]_i_5 
       (.I0(\evcounter_reg_n_0_[8] ),
        .I1(\evcounter_reg_n_0_[11] ),
        .I2(\evcounter_reg_n_0_[9] ),
        .I3(\evcounter_reg_n_0_[10] ),
        .I4(read_proc_st[0]),
        .O(\data_to_send[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[16]_i_6 
       (.I0(\fifo_data_reg_n_0_[82] ),
        .I1(\fifo_data_reg_n_0_[81] ),
        .I2(\fifo_data_reg_n_0_[83] ),
        .I3(\fifo_data_reg_n_0_[80] ),
        .O(in15[16]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[16]_i_9 
       (.I0(\fifo_data_reg_n_0_[22] ),
        .I1(\fifo_data_reg_n_0_[21] ),
        .I2(\fifo_data_reg_n_0_[23] ),
        .I3(\fifo_data_reg_n_0_[20] ),
        .O(in10[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[17]_i_1 
       (.I0(\data_to_send[17]_i_2_n_0 ),
        .I1(\data_to_send_reg[17]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send[17]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[17]_i_5_n_0 ),
        .O(data_to_send[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[17]_i_10 
       (.I0(\fifo_data_reg_n_0_[10] ),
        .I1(\fifo_data_reg_n_0_[8] ),
        .I2(\fifo_data_reg_n_0_[11] ),
        .I3(\fifo_data_reg_n_0_[9] ),
        .O(in9[17]));
  LUT6 #(
    .INIT(64'hCF20FFFFCF200000)) 
    \data_to_send[17]_i_11 
       (.I0(\readout_sample_counter_reg_n_0_[10] ),
        .I1(\readout_sample_counter_reg_n_0_[8] ),
        .I2(\readout_sample_counter_reg_n_0_[11] ),
        .I3(\readout_sample_counter_reg_n_0_[9] ),
        .I4(read_proc_st[0]),
        .I5(i_stop_cell[9]),
        .O(\data_to_send[17]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[17]_i_12 
       (.I0(\fifo_data_reg_n_0_[34] ),
        .I1(\fifo_data_reg_n_0_[32] ),
        .I2(\fifo_data_reg_n_0_[35] ),
        .I3(\fifo_data_reg_n_0_[33] ),
        .O(\data_to_send[17]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[17]_i_13 
       (.I0(\fifo_data_reg_n_0_[46] ),
        .I1(\fifo_data_reg_n_0_[44] ),
        .I2(\fifo_data_reg_n_0_[47] ),
        .I3(\fifo_data_reg_n_0_[45] ),
        .O(\data_to_send[17]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[17]_i_14 
       (.I0(\fifo_data_reg_n_0_[58] ),
        .I1(\fifo_data_reg_n_0_[56] ),
        .I2(\fifo_data_reg_n_0_[59] ),
        .I3(\fifo_data_reg_n_0_[57] ),
        .O(in13[17]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[17]_i_15 
       (.I0(\fifo_data_reg_n_0_[70] ),
        .I1(\fifo_data_reg_n_0_[68] ),
        .I2(\fifo_data_reg_n_0_[71] ),
        .I3(\fifo_data_reg_n_0_[69] ),
        .O(in14[17]));
  LUT6 #(
    .INIT(64'hCF20FFFFCF200000)) 
    \data_to_send[17]_i_2 
       (.I0(\fifo_data_reg_n_0_[94] ),
        .I1(\fifo_data_reg_n_0_[92] ),
        .I2(\fifo_data_reg_n_0_[95] ),
        .I3(\fifo_data_reg_n_0_[93] ),
        .I4(read_proc_st[0]),
        .I5(in15[17]),
        .O(\data_to_send[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_to_send[17]_i_4 
       (.I0(in10[17]),
        .I1(read_proc_st[0]),
        .I2(in9[17]),
        .I3(read_proc_st[1]),
        .I4(\data_to_send[17]_i_11_n_0 ),
        .O(\data_to_send[17]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA6A2FFFF)) 
    \data_to_send[17]_i_5 
       (.I0(\evcounter_reg_n_0_[9] ),
        .I1(\evcounter_reg_n_0_[11] ),
        .I2(\evcounter_reg_n_0_[8] ),
        .I3(\evcounter_reg_n_0_[10] ),
        .I4(read_proc_st[0]),
        .O(\data_to_send[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[17]_i_6 
       (.I0(\fifo_data_reg_n_0_[82] ),
        .I1(\fifo_data_reg_n_0_[80] ),
        .I2(\fifo_data_reg_n_0_[83] ),
        .I3(\fifo_data_reg_n_0_[81] ),
        .O(in15[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[17]_i_9 
       (.I0(\fifo_data_reg_n_0_[22] ),
        .I1(\fifo_data_reg_n_0_[20] ),
        .I2(\fifo_data_reg_n_0_[23] ),
        .I3(\fifo_data_reg_n_0_[21] ),
        .O(in10[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[18]_i_1 
       (.I0(\data_to_send[18]_i_2_n_0 ),
        .I1(\data_to_send_reg[18]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send[18]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[18]_i_5_n_0 ),
        .O(data_to_send[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[18]_i_10 
       (.I0(\fifo_data_reg_n_0_[8] ),
        .I1(\fifo_data_reg_n_0_[9] ),
        .I2(\fifo_data_reg_n_0_[11] ),
        .I3(\fifo_data_reg_n_0_[10] ),
        .O(in9[18]));
  LUT5 #(
    .INIT(32'h88888808)) 
    \data_to_send[18]_i_11 
       (.I0(read_proc_st[0]),
        .I1(\readout_sample_counter_reg_n_0_[10] ),
        .I2(\readout_sample_counter_reg_n_0_[11] ),
        .I3(\readout_sample_counter_reg_n_0_[9] ),
        .I4(\readout_sample_counter_reg_n_0_[8] ),
        .O(\data_to_send[18]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[18]_i_12 
       (.I0(\fifo_data_reg_n_0_[32] ),
        .I1(\fifo_data_reg_n_0_[33] ),
        .I2(\fifo_data_reg_n_0_[35] ),
        .I3(\fifo_data_reg_n_0_[34] ),
        .O(\data_to_send[18]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[18]_i_13 
       (.I0(\fifo_data_reg_n_0_[44] ),
        .I1(\fifo_data_reg_n_0_[45] ),
        .I2(\fifo_data_reg_n_0_[47] ),
        .I3(\fifo_data_reg_n_0_[46] ),
        .O(\data_to_send[18]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[18]_i_14 
       (.I0(\fifo_data_reg_n_0_[56] ),
        .I1(\fifo_data_reg_n_0_[57] ),
        .I2(\fifo_data_reg_n_0_[59] ),
        .I3(\fifo_data_reg_n_0_[58] ),
        .O(in13[18]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[18]_i_15 
       (.I0(\fifo_data_reg_n_0_[68] ),
        .I1(\fifo_data_reg_n_0_[69] ),
        .I2(\fifo_data_reg_n_0_[71] ),
        .I3(\fifo_data_reg_n_0_[70] ),
        .O(in14[18]));
  LUT6 #(
    .INIT(64'hEF00FFFFEF000000)) 
    \data_to_send[18]_i_2 
       (.I0(\fifo_data_reg_n_0_[92] ),
        .I1(\fifo_data_reg_n_0_[93] ),
        .I2(\fifo_data_reg_n_0_[95] ),
        .I3(\fifo_data_reg_n_0_[94] ),
        .I4(read_proc_st[0]),
        .I5(in15[18]),
        .O(\data_to_send[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_to_send[18]_i_4 
       (.I0(in10[18]),
        .I1(read_proc_st[0]),
        .I2(in9[18]),
        .I3(read_proc_st[1]),
        .I4(\data_to_send[18]_i_11_n_0 ),
        .O(\data_to_send[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88888808)) 
    \data_to_send[18]_i_5 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[10] ),
        .I2(\evcounter_reg_n_0_[11] ),
        .I3(\evcounter_reg_n_0_[9] ),
        .I4(\evcounter_reg_n_0_[8] ),
        .O(\data_to_send[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[18]_i_6 
       (.I0(\fifo_data_reg_n_0_[80] ),
        .I1(\fifo_data_reg_n_0_[81] ),
        .I2(\fifo_data_reg_n_0_[83] ),
        .I3(\fifo_data_reg_n_0_[82] ),
        .O(in15[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[18]_i_9 
       (.I0(\fifo_data_reg_n_0_[20] ),
        .I1(\fifo_data_reg_n_0_[21] ),
        .I2(\fifo_data_reg_n_0_[23] ),
        .I3(\fifo_data_reg_n_0_[22] ),
        .O(in10[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[19]_i_1 
       (.I0(\data_to_send[19]_i_2_n_0 ),
        .I1(\data_to_send_reg[19]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send[19]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[19]_i_5_n_0 ),
        .O(data_to_send[19]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[19]_i_10 
       (.I0(\fifo_data_reg_n_0_[35] ),
        .I1(\fifo_data_reg_n_0_[34] ),
        .I2(\fifo_data_reg_n_0_[33] ),
        .O(\data_to_send[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[19]_i_11 
       (.I0(\fifo_data_reg_n_0_[47] ),
        .I1(\fifo_data_reg_n_0_[46] ),
        .I2(\fifo_data_reg_n_0_[45] ),
        .O(\data_to_send[19]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[19]_i_12 
       (.I0(\fifo_data_reg_n_0_[59] ),
        .I1(\fifo_data_reg_n_0_[58] ),
        .I2(\fifo_data_reg_n_0_[57] ),
        .O(in13[19]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[19]_i_13 
       (.I0(\fifo_data_reg_n_0_[71] ),
        .I1(\fifo_data_reg_n_0_[70] ),
        .I2(\fifo_data_reg_n_0_[69] ),
        .O(in14[19]));
  LUT6 #(
    .INIT(64'h0200020002FF0200)) 
    \data_to_send[19]_i_2 
       (.I0(\fifo_data_reg_n_0_[95] ),
        .I1(\fifo_data_reg_n_0_[94] ),
        .I2(\fifo_data_reg_n_0_[93] ),
        .I3(read_proc_st[0]),
        .I4(\fifo_data_reg_n_0_[83] ),
        .I5(\data_to_send[22]_i_6_n_0 ),
        .O(\data_to_send[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \data_to_send[19]_i_4 
       (.I0(\fifo_data_reg_n_0_[23] ),
        .I1(\data_to_send[22]_i_9_n_0 ),
        .I2(read_proc_st[0]),
        .I3(in9[19]),
        .I4(read_proc_st[1]),
        .I5(\data_to_send[19]_i_9_n_0 ),
        .O(\data_to_send[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \data_to_send[19]_i_5 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[9] ),
        .I2(\evcounter_reg_n_0_[10] ),
        .I3(\evcounter_reg_n_0_[11] ),
        .O(\data_to_send[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[19]_i_8 
       (.I0(\fifo_data_reg_n_0_[11] ),
        .I1(\fifo_data_reg_n_0_[10] ),
        .I2(\fifo_data_reg_n_0_[9] ),
        .O(in9[19]));
  LUT4 #(
    .INIT(16'h0200)) 
    \data_to_send[19]_i_9 
       (.I0(read_proc_st[0]),
        .I1(\readout_sample_counter_reg_n_0_[9] ),
        .I2(\readout_sample_counter_reg_n_0_[10] ),
        .I3(\readout_sample_counter_reg_n_0_[11] ),
        .O(\data_to_send[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[1]_i_1 
       (.I0(\data_to_send[1]_i_2_n_0 ),
        .I1(\data_to_send_reg[1]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[1]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[1]_i_5_n_0 ),
        .O(data_to_send[1]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_11 
       (.I0(\fifo_data_reg_n_0_[26] ),
        .I1(\fifo_data_reg_n_0_[24] ),
        .I2(\fifo_data_reg_n_0_[27] ),
        .I3(\fifo_data_reg_n_0_[25] ),
        .O(\data_to_send[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_12 
       (.I0(\fifo_data_reg_n_0_[38] ),
        .I1(\fifo_data_reg_n_0_[36] ),
        .I2(\fifo_data_reg_n_0_[39] ),
        .I3(\fifo_data_reg_n_0_[37] ),
        .O(\data_to_send[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_13 
       (.I0(\fifo_data_reg_n_0_[50] ),
        .I1(\fifo_data_reg_n_0_[48] ),
        .I2(\fifo_data_reg_n_0_[51] ),
        .I3(\fifo_data_reg_n_0_[49] ),
        .O(in13[1]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_14 
       (.I0(\fifo_data_reg_n_0_[62] ),
        .I1(\fifo_data_reg_n_0_[60] ),
        .I2(\fifo_data_reg_n_0_[63] ),
        .I3(\fifo_data_reg_n_0_[61] ),
        .O(in14[1]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_15 
       (.I0(i_stop_cell[2]),
        .I1(i_stop_cell[0]),
        .I2(i_stop_cell[3]),
        .I3(i_stop_cell[1]),
        .O(in7[1]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[2] ),
        .I1(\readout_sample_counter_reg_n_0_[0] ),
        .I2(\readout_sample_counter_reg_n_0_[3] ),
        .I3(\readout_sample_counter_reg_n_0_[1] ),
        .O(in8[1]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_17 
       (.I0(\fifo_data_reg_n_0_[2] ),
        .I1(\fifo_data_reg_n_0_[0] ),
        .I2(\fifo_data_reg_n_0_[3] ),
        .I3(\fifo_data_reg_n_0_[1] ),
        .O(in9[1]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_18 
       (.I0(\fifo_data_reg_n_0_[14] ),
        .I1(\fifo_data_reg_n_0_[12] ),
        .I2(\fifo_data_reg_n_0_[15] ),
        .I3(\fifo_data_reg_n_0_[13] ),
        .O(in10[1]));
  LUT6 #(
    .INIT(64'hCF20FFFFCF200000)) 
    \data_to_send[1]_i_2 
       (.I0(\fifo_data_reg_n_0_[86] ),
        .I1(\fifo_data_reg_n_0_[84] ),
        .I2(\fifo_data_reg_n_0_[87] ),
        .I3(\fifo_data_reg_n_0_[85] ),
        .I4(read_proc_st[0]),
        .I5(in15[1]),
        .O(\data_to_send[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA6A2FFFF)) 
    \data_to_send[1]_i_5 
       (.I0(\evcounter_reg_n_0_[1] ),
        .I1(\evcounter_reg_n_0_[3] ),
        .I2(\evcounter_reg_n_0_[0] ),
        .I3(\evcounter_reg_n_0_[2] ),
        .I4(read_proc_st[0]),
        .O(\data_to_send[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[1]_i_6 
       (.I0(\fifo_data_reg_n_0_[74] ),
        .I1(\fifo_data_reg_n_0_[72] ),
        .I2(\fifo_data_reg_n_0_[75] ),
        .I3(\fifo_data_reg_n_0_[73] ),
        .O(in15[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[20]_i_1 
       (.I0(\data_to_send[21]_i_2_n_0 ),
        .I1(\data_to_send_reg[21]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send[21]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[20]_i_2_n_0 ),
        .O(data_to_send[20]));
  LUT4 #(
    .INIT(16'h222A)) 
    \data_to_send[20]_i_2 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[11] ),
        .I2(\evcounter_reg_n_0_[9] ),
        .I3(\evcounter_reg_n_0_[10] ),
        .O(\data_to_send[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[21]_i_1 
       (.I0(\data_to_send[21]_i_2_n_0 ),
        .I1(\data_to_send_reg[21]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send[21]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[21]_i_5_n_0 ),
        .O(data_to_send[21]));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[21]_i_10 
       (.I0(\fifo_data_reg_n_0_[34] ),
        .I1(\fifo_data_reg_n_0_[33] ),
        .I2(\fifo_data_reg_n_0_[35] ),
        .O(\data_to_send[21]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[21]_i_11 
       (.I0(\fifo_data_reg_n_0_[46] ),
        .I1(\fifo_data_reg_n_0_[45] ),
        .I2(\fifo_data_reg_n_0_[47] ),
        .O(\data_to_send[21]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[21]_i_12 
       (.I0(\fifo_data_reg_n_0_[58] ),
        .I1(\fifo_data_reg_n_0_[57] ),
        .I2(\fifo_data_reg_n_0_[59] ),
        .O(\data_to_send[21]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[21]_i_13 
       (.I0(\fifo_data_reg_n_0_[70] ),
        .I1(\fifo_data_reg_n_0_[69] ),
        .I2(\fifo_data_reg_n_0_[71] ),
        .O(\data_to_send[21]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1F001FFF1FFF1FFF)) 
    \data_to_send[21]_i_2 
       (.I0(\fifo_data_reg_n_0_[94] ),
        .I1(\fifo_data_reg_n_0_[93] ),
        .I2(\fifo_data_reg_n_0_[95] ),
        .I3(read_proc_st[0]),
        .I4(\data_to_send[22]_i_6_n_0 ),
        .I5(\fifo_data_reg_n_0_[83] ),
        .O(\data_to_send[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F70FFFF7F700000)) 
    \data_to_send[21]_i_4 
       (.I0(\data_to_send[22]_i_9_n_0 ),
        .I1(\fifo_data_reg_n_0_[23] ),
        .I2(read_proc_st[0]),
        .I3(\data_to_send[21]_i_8_n_0 ),
        .I4(read_proc_st[1]),
        .I5(\data_to_send[21]_i_9_n_0 ),
        .O(\data_to_send[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \data_to_send[21]_i_5 
       (.I0(\evcounter_reg_n_0_[11] ),
        .I1(\evcounter_reg_n_0_[9] ),
        .I2(\evcounter_reg_n_0_[10] ),
        .I3(read_proc_st[0]),
        .O(\data_to_send[21]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[21]_i_8 
       (.I0(\fifo_data_reg_n_0_[10] ),
        .I1(\fifo_data_reg_n_0_[9] ),
        .I2(\fifo_data_reg_n_0_[11] ),
        .O(\data_to_send[21]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h57FF)) 
    \data_to_send[21]_i_9 
       (.I0(\readout_sample_counter_reg_n_0_[11] ),
        .I1(\readout_sample_counter_reg_n_0_[9] ),
        .I2(\readout_sample_counter_reg_n_0_[10] ),
        .I3(read_proc_st[0]),
        .O(\data_to_send[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[22]_i_1 
       (.I0(\data_to_send[22]_i_2_n_0 ),
        .I1(\data_to_send_reg[22]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send[22]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[22]_i_5_n_0 ),
        .O(data_to_send[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[22]_i_10 
       (.I0(\fifo_data_reg_n_0_[11] ),
        .I1(\fifo_data_reg_n_0_[9] ),
        .I2(\fifo_data_reg_n_0_[10] ),
        .O(in9[22]));
  LUT4 #(
    .INIT(16'hA800)) 
    \data_to_send[22]_i_11 
       (.I0(read_proc_st[0]),
        .I1(\readout_sample_counter_reg_n_0_[10] ),
        .I2(\readout_sample_counter_reg_n_0_[9] ),
        .I3(\readout_sample_counter_reg_n_0_[11] ),
        .O(\data_to_send[22]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[22]_i_12 
       (.I0(\fifo_data_reg_n_0_[35] ),
        .I1(\fifo_data_reg_n_0_[33] ),
        .I2(\fifo_data_reg_n_0_[34] ),
        .O(\data_to_send[22]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[22]_i_13 
       (.I0(\fifo_data_reg_n_0_[47] ),
        .I1(\fifo_data_reg_n_0_[45] ),
        .I2(\fifo_data_reg_n_0_[46] ),
        .O(\data_to_send[22]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[22]_i_14 
       (.I0(\fifo_data_reg_n_0_[59] ),
        .I1(\fifo_data_reg_n_0_[57] ),
        .I2(\fifo_data_reg_n_0_[58] ),
        .O(in13[22]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[22]_i_15 
       (.I0(\fifo_data_reg_n_0_[71] ),
        .I1(\fifo_data_reg_n_0_[69] ),
        .I2(\fifo_data_reg_n_0_[70] ),
        .O(in14[22]));
  LUT6 #(
    .INIT(64'hA8FFA800A800A800)) 
    \data_to_send[22]_i_2 
       (.I0(\fifo_data_reg_n_0_[95] ),
        .I1(\fifo_data_reg_n_0_[93] ),
        .I2(\fifo_data_reg_n_0_[94] ),
        .I3(read_proc_st[0]),
        .I4(\fifo_data_reg_n_0_[83] ),
        .I5(\data_to_send[22]_i_6_n_0 ),
        .O(\data_to_send[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \data_to_send[22]_i_4 
       (.I0(\fifo_data_reg_n_0_[23] ),
        .I1(\data_to_send[22]_i_9_n_0 ),
        .I2(read_proc_st[0]),
        .I3(in9[22]),
        .I4(read_proc_st[1]),
        .I5(\data_to_send[22]_i_11_n_0 ),
        .O(\data_to_send[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA800)) 
    \data_to_send[22]_i_5 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[10] ),
        .I2(\evcounter_reg_n_0_[9] ),
        .I3(\evcounter_reg_n_0_[11] ),
        .O(\data_to_send[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_to_send[22]_i_6 
       (.I0(\fifo_data_reg_n_0_[82] ),
        .I1(\fifo_data_reg_n_0_[81] ),
        .O(\data_to_send[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_to_send[22]_i_9 
       (.I0(\fifo_data_reg_n_0_[22] ),
        .I1(\fifo_data_reg_n_0_[21] ),
        .O(\data_to_send[22]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0026)) 
    \data_to_send[24]_i_1 
       (.I0(read_proc_st[0]),
        .I1(read_proc_st[2]),
        .I2(read_proc_st[1]),
        .I3(read_proc_st[3]),
        .O(\data_to_send[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \data_to_send[25]_i_1 
       (.I0(read_proc_st[1]),
        .I1(read_proc_st[2]),
        .I2(read_proc_st[3]),
        .O(\data_to_send[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007E7E7E6E)) 
    \data_to_send[27]_i_1 
       (.I0(read_proc_st[1]),
        .I1(read_proc_st[3]),
        .I2(read_proc_st[2]),
        .I3(i_stop_cell_ready),
        .I4(read_proc_st[0]),
        .I5(i_rst),
        .O(\data_to_send[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0019)) 
    \data_to_send[27]_i_2 
       (.I0(read_proc_st[0]),
        .I1(read_proc_st[2]),
        .I2(read_proc_st[1]),
        .I3(read_proc_st[3]),
        .O(\data_to_send[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFC3CAAAA)) 
    \data_to_send[29]_i_1 
       (.I0(in2[5]),
        .I1(read_proc_st[0]),
        .I2(read_proc_st[2]),
        .I3(read_proc_st[1]),
        .I4(\data_to_send[27]_i_1_n_0 ),
        .I5(read_proc_st[3]),
        .O(\data_to_send[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[2]_i_1 
       (.I0(\data_to_send[2]_i_2_n_0 ),
        .I1(\data_to_send_reg[2]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[2]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[2]_i_5_n_0 ),
        .O(data_to_send[2]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_11 
       (.I0(\fifo_data_reg_n_0_[24] ),
        .I1(\fifo_data_reg_n_0_[25] ),
        .I2(\fifo_data_reg_n_0_[27] ),
        .I3(\fifo_data_reg_n_0_[26] ),
        .O(\data_to_send[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_12 
       (.I0(\fifo_data_reg_n_0_[36] ),
        .I1(\fifo_data_reg_n_0_[37] ),
        .I2(\fifo_data_reg_n_0_[39] ),
        .I3(\fifo_data_reg_n_0_[38] ),
        .O(\data_to_send[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_13 
       (.I0(\fifo_data_reg_n_0_[48] ),
        .I1(\fifo_data_reg_n_0_[49] ),
        .I2(\fifo_data_reg_n_0_[51] ),
        .I3(\fifo_data_reg_n_0_[50] ),
        .O(in13[2]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_14 
       (.I0(\fifo_data_reg_n_0_[60] ),
        .I1(\fifo_data_reg_n_0_[61] ),
        .I2(\fifo_data_reg_n_0_[63] ),
        .I3(\fifo_data_reg_n_0_[62] ),
        .O(in14[2]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_15 
       (.I0(i_stop_cell[0]),
        .I1(i_stop_cell[1]),
        .I2(i_stop_cell[3]),
        .I3(i_stop_cell[2]),
        .O(in7[2]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[0] ),
        .I1(\readout_sample_counter_reg_n_0_[1] ),
        .I2(\readout_sample_counter_reg_n_0_[3] ),
        .I3(\readout_sample_counter_reg_n_0_[2] ),
        .O(in8[2]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_17 
       (.I0(\fifo_data_reg_n_0_[0] ),
        .I1(\fifo_data_reg_n_0_[1] ),
        .I2(\fifo_data_reg_n_0_[3] ),
        .I3(\fifo_data_reg_n_0_[2] ),
        .O(in9[2]));
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_18 
       (.I0(\fifo_data_reg_n_0_[12] ),
        .I1(\fifo_data_reg_n_0_[13] ),
        .I2(\fifo_data_reg_n_0_[15] ),
        .I3(\fifo_data_reg_n_0_[14] ),
        .O(in10[2]));
  LUT6 #(
    .INIT(64'hEF00FFFFEF000000)) 
    \data_to_send[2]_i_2 
       (.I0(\fifo_data_reg_n_0_[84] ),
        .I1(\fifo_data_reg_n_0_[85] ),
        .I2(\fifo_data_reg_n_0_[87] ),
        .I3(\fifo_data_reg_n_0_[86] ),
        .I4(read_proc_st[0]),
        .I5(in15[2]),
        .O(\data_to_send[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888808)) 
    \data_to_send[2]_i_5 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[2] ),
        .I2(\evcounter_reg_n_0_[3] ),
        .I3(\evcounter_reg_n_0_[1] ),
        .I4(\evcounter_reg_n_0_[0] ),
        .O(\data_to_send[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEF00)) 
    \data_to_send[2]_i_6 
       (.I0(\fifo_data_reg_n_0_[72] ),
        .I1(\fifo_data_reg_n_0_[73] ),
        .I2(\fifo_data_reg_n_0_[75] ),
        .I3(\fifo_data_reg_n_0_[74] ),
        .O(in15[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[3]_i_1 
       (.I0(\data_to_send[3]_i_2_n_0 ),
        .I1(\data_to_send_reg[3]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[3]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[3]_i_5_n_0 ),
        .O(data_to_send[3]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_10 
       (.I0(\fifo_data_reg_n_0_[27] ),
        .I1(\fifo_data_reg_n_0_[26] ),
        .I2(\fifo_data_reg_n_0_[25] ),
        .O(\data_to_send[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_11 
       (.I0(\fifo_data_reg_n_0_[39] ),
        .I1(\fifo_data_reg_n_0_[38] ),
        .I2(\fifo_data_reg_n_0_[37] ),
        .O(\data_to_send[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_12 
       (.I0(\fifo_data_reg_n_0_[51] ),
        .I1(\fifo_data_reg_n_0_[50] ),
        .I2(\fifo_data_reg_n_0_[49] ),
        .O(in13[3]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_13 
       (.I0(\fifo_data_reg_n_0_[63] ),
        .I1(\fifo_data_reg_n_0_[62] ),
        .I2(\fifo_data_reg_n_0_[61] ),
        .O(in14[3]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_14 
       (.I0(i_stop_cell[3]),
        .I1(i_stop_cell[2]),
        .I2(i_stop_cell[1]),
        .O(in7[3]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_15 
       (.I0(\readout_sample_counter_reg_n_0_[3] ),
        .I1(\readout_sample_counter_reg_n_0_[2] ),
        .I2(\readout_sample_counter_reg_n_0_[1] ),
        .O(in8[3]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_16 
       (.I0(\fifo_data_reg_n_0_[3] ),
        .I1(\fifo_data_reg_n_0_[2] ),
        .I2(\fifo_data_reg_n_0_[1] ),
        .O(in9[3]));
  LUT3 #(
    .INIT(8'h02)) 
    \data_to_send[3]_i_17 
       (.I0(\fifo_data_reg_n_0_[15] ),
        .I1(\fifo_data_reg_n_0_[14] ),
        .I2(\fifo_data_reg_n_0_[13] ),
        .O(in10[3]));
  LUT6 #(
    .INIT(64'h0200020002FF0200)) 
    \data_to_send[3]_i_2 
       (.I0(\fifo_data_reg_n_0_[87] ),
        .I1(\fifo_data_reg_n_0_[86] ),
        .I2(\fifo_data_reg_n_0_[85] ),
        .I3(read_proc_st[0]),
        .I4(\fifo_data_reg_n_0_[75] ),
        .I5(\data_to_send[6]_i_6_n_0 ),
        .O(\data_to_send[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \data_to_send[3]_i_5 
       (.I0(\evcounter_reg_n_0_[1] ),
        .I1(\evcounter_reg_n_0_[2] ),
        .I2(\evcounter_reg_n_0_[3] ),
        .I3(read_proc_st[0]),
        .O(\data_to_send[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[5]_i_1 
       (.I0(\data_to_send[5]_i_2_n_0 ),
        .I1(\data_to_send_reg[5]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[5]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[5]_i_5_n_0 ),
        .O(data_to_send[5]));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_10 
       (.I0(\fifo_data_reg_n_0_[26] ),
        .I1(\fifo_data_reg_n_0_[25] ),
        .I2(\fifo_data_reg_n_0_[27] ),
        .O(\data_to_send[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_11 
       (.I0(\fifo_data_reg_n_0_[38] ),
        .I1(\fifo_data_reg_n_0_[37] ),
        .I2(\fifo_data_reg_n_0_[39] ),
        .O(\data_to_send[5]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_12 
       (.I0(\fifo_data_reg_n_0_[50] ),
        .I1(\fifo_data_reg_n_0_[49] ),
        .I2(\fifo_data_reg_n_0_[51] ),
        .O(\data_to_send[5]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_13 
       (.I0(\fifo_data_reg_n_0_[62] ),
        .I1(\fifo_data_reg_n_0_[61] ),
        .I2(\fifo_data_reg_n_0_[63] ),
        .O(\data_to_send[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_14 
       (.I0(i_stop_cell[2]),
        .I1(i_stop_cell[1]),
        .I2(i_stop_cell[3]),
        .O(\data_to_send[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_15 
       (.I0(\readout_sample_counter_reg_n_0_[2] ),
        .I1(\readout_sample_counter_reg_n_0_[1] ),
        .I2(\readout_sample_counter_reg_n_0_[3] ),
        .O(\data_to_send[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_16 
       (.I0(\fifo_data_reg_n_0_[2] ),
        .I1(\fifo_data_reg_n_0_[1] ),
        .I2(\fifo_data_reg_n_0_[3] ),
        .O(\data_to_send[5]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \data_to_send[5]_i_17 
       (.I0(\fifo_data_reg_n_0_[14] ),
        .I1(\fifo_data_reg_n_0_[13] ),
        .I2(\fifo_data_reg_n_0_[15] ),
        .O(\data_to_send[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1F001FFF1FFF1FFF)) 
    \data_to_send[5]_i_2 
       (.I0(\fifo_data_reg_n_0_[86] ),
        .I1(\fifo_data_reg_n_0_[85] ),
        .I2(\fifo_data_reg_n_0_[87] ),
        .I3(read_proc_st[0]),
        .I4(\data_to_send[6]_i_6_n_0 ),
        .I5(\fifo_data_reg_n_0_[75] ),
        .O(\data_to_send[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h222A)) 
    \data_to_send[5]_i_5 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[3] ),
        .I2(\evcounter_reg_n_0_[1] ),
        .I3(\evcounter_reg_n_0_[2] ),
        .O(\data_to_send[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[6]_i_1 
       (.I0(\data_to_send[6]_i_2_n_0 ),
        .I1(\data_to_send_reg[6]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[6]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[6]_i_5_n_0 ),
        .O(data_to_send[6]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_11 
       (.I0(\fifo_data_reg_n_0_[27] ),
        .I1(\fifo_data_reg_n_0_[25] ),
        .I2(\fifo_data_reg_n_0_[26] ),
        .O(\data_to_send[6]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_12 
       (.I0(\fifo_data_reg_n_0_[39] ),
        .I1(\fifo_data_reg_n_0_[37] ),
        .I2(\fifo_data_reg_n_0_[38] ),
        .O(\data_to_send[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_13 
       (.I0(\fifo_data_reg_n_0_[51] ),
        .I1(\fifo_data_reg_n_0_[49] ),
        .I2(\fifo_data_reg_n_0_[50] ),
        .O(in13[6]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_14 
       (.I0(\fifo_data_reg_n_0_[63] ),
        .I1(\fifo_data_reg_n_0_[61] ),
        .I2(\fifo_data_reg_n_0_[62] ),
        .O(in14[6]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_15 
       (.I0(i_stop_cell[3]),
        .I1(i_stop_cell[1]),
        .I2(i_stop_cell[2]),
        .O(in7[6]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[3] ),
        .I1(\readout_sample_counter_reg_n_0_[1] ),
        .I2(\readout_sample_counter_reg_n_0_[2] ),
        .O(in8[6]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_17 
       (.I0(\fifo_data_reg_n_0_[3] ),
        .I1(\fifo_data_reg_n_0_[1] ),
        .I2(\fifo_data_reg_n_0_[2] ),
        .O(in9[6]));
  LUT3 #(
    .INIT(8'hA8)) 
    \data_to_send[6]_i_18 
       (.I0(\fifo_data_reg_n_0_[15] ),
        .I1(\fifo_data_reg_n_0_[13] ),
        .I2(\fifo_data_reg_n_0_[14] ),
        .O(in10[6]));
  LUT6 #(
    .INIT(64'hA8FFA800A800A800)) 
    \data_to_send[6]_i_2 
       (.I0(\fifo_data_reg_n_0_[87] ),
        .I1(\fifo_data_reg_n_0_[85] ),
        .I2(\fifo_data_reg_n_0_[86] ),
        .I3(read_proc_st[0]),
        .I4(\fifo_data_reg_n_0_[75] ),
        .I5(\data_to_send[6]_i_6_n_0 ),
        .O(\data_to_send[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA800)) 
    \data_to_send[6]_i_5 
       (.I0(read_proc_st[0]),
        .I1(\evcounter_reg_n_0_[2] ),
        .I2(\evcounter_reg_n_0_[1] ),
        .I3(\evcounter_reg_n_0_[3] ),
        .O(\data_to_send[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_to_send[6]_i_6 
       (.I0(\fifo_data_reg_n_0_[74] ),
        .I1(\fifo_data_reg_n_0_[73] ),
        .O(\data_to_send[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[8]_i_1 
       (.I0(\data_to_send[8]_i_2_n_0 ),
        .I1(\data_to_send_reg[8]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[8]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[8]_i_5_n_0 ),
        .O(data_to_send[8]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_11 
       (.I0(\fifo_data_reg_n_0_[30] ),
        .I1(\fifo_data_reg_n_0_[29] ),
        .I2(\fifo_data_reg_n_0_[31] ),
        .I3(\fifo_data_reg_n_0_[28] ),
        .O(\data_to_send[8]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_12 
       (.I0(\fifo_data_reg_n_0_[42] ),
        .I1(\fifo_data_reg_n_0_[41] ),
        .I2(\fifo_data_reg_n_0_[43] ),
        .I3(\fifo_data_reg_n_0_[40] ),
        .O(\data_to_send[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_13 
       (.I0(\fifo_data_reg_n_0_[54] ),
        .I1(\fifo_data_reg_n_0_[53] ),
        .I2(\fifo_data_reg_n_0_[55] ),
        .I3(\fifo_data_reg_n_0_[52] ),
        .O(in13[8]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_14 
       (.I0(\fifo_data_reg_n_0_[66] ),
        .I1(\fifo_data_reg_n_0_[65] ),
        .I2(\fifo_data_reg_n_0_[67] ),
        .I3(\fifo_data_reg_n_0_[64] ),
        .O(in14[8]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_15 
       (.I0(i_stop_cell[6]),
        .I1(i_stop_cell[5]),
        .I2(i_stop_cell[7]),
        .I3(i_stop_cell[4]),
        .O(in7[8]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[6] ),
        .I1(\readout_sample_counter_reg_n_0_[5] ),
        .I2(\readout_sample_counter_reg_n_0_[7] ),
        .I3(\readout_sample_counter_reg_n_0_[4] ),
        .O(in8[8]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_17 
       (.I0(\fifo_data_reg_n_0_[6] ),
        .I1(\fifo_data_reg_n_0_[5] ),
        .I2(\fifo_data_reg_n_0_[7] ),
        .I3(\fifo_data_reg_n_0_[4] ),
        .O(in9[8]));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_18 
       (.I0(\fifo_data_reg_n_0_[18] ),
        .I1(\fifo_data_reg_n_0_[17] ),
        .I2(\fifo_data_reg_n_0_[19] ),
        .I3(\fifo_data_reg_n_0_[16] ),
        .O(in10[8]));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    \data_to_send[8]_i_2 
       (.I0(\fifo_data_reg_n_0_[90] ),
        .I1(\fifo_data_reg_n_0_[89] ),
        .I2(\fifo_data_reg_n_0_[91] ),
        .I3(\fifo_data_reg_n_0_[88] ),
        .I4(read_proc_st[0]),
        .I5(in15[8]),
        .O(\data_to_send[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h666AFFFF)) 
    \data_to_send[8]_i_5 
       (.I0(sel0[0]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(read_proc_st[0]),
        .O(\data_to_send[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \data_to_send[8]_i_6 
       (.I0(\fifo_data_reg_n_0_[78] ),
        .I1(\fifo_data_reg_n_0_[77] ),
        .I2(\fifo_data_reg_n_0_[79] ),
        .I3(\fifo_data_reg_n_0_[76] ),
        .O(in15[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_to_send[9]_i_1 
       (.I0(\data_to_send[9]_i_2_n_0 ),
        .I1(\data_to_send_reg[9]_i_3_n_0 ),
        .I2(read_proc_st[3]),
        .I3(\data_to_send_reg[9]_i_4_n_0 ),
        .I4(read_proc_st[2]),
        .I5(\data_to_send[9]_i_5_n_0 ),
        .O(data_to_send[9]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_11 
       (.I0(\fifo_data_reg_n_0_[30] ),
        .I1(\fifo_data_reg_n_0_[28] ),
        .I2(\fifo_data_reg_n_0_[31] ),
        .I3(\fifo_data_reg_n_0_[29] ),
        .O(\data_to_send[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_12 
       (.I0(\fifo_data_reg_n_0_[42] ),
        .I1(\fifo_data_reg_n_0_[40] ),
        .I2(\fifo_data_reg_n_0_[43] ),
        .I3(\fifo_data_reg_n_0_[41] ),
        .O(\data_to_send[9]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_13 
       (.I0(\fifo_data_reg_n_0_[54] ),
        .I1(\fifo_data_reg_n_0_[52] ),
        .I2(\fifo_data_reg_n_0_[55] ),
        .I3(\fifo_data_reg_n_0_[53] ),
        .O(in13[9]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_14 
       (.I0(\fifo_data_reg_n_0_[66] ),
        .I1(\fifo_data_reg_n_0_[64] ),
        .I2(\fifo_data_reg_n_0_[67] ),
        .I3(\fifo_data_reg_n_0_[65] ),
        .O(in14[9]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_15 
       (.I0(i_stop_cell[6]),
        .I1(i_stop_cell[4]),
        .I2(i_stop_cell[7]),
        .I3(i_stop_cell[5]),
        .O(in7[9]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_16 
       (.I0(\readout_sample_counter_reg_n_0_[6] ),
        .I1(\readout_sample_counter_reg_n_0_[4] ),
        .I2(\readout_sample_counter_reg_n_0_[7] ),
        .I3(\readout_sample_counter_reg_n_0_[5] ),
        .O(in8[9]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_17 
       (.I0(\fifo_data_reg_n_0_[6] ),
        .I1(\fifo_data_reg_n_0_[4] ),
        .I2(\fifo_data_reg_n_0_[7] ),
        .I3(\fifo_data_reg_n_0_[5] ),
        .O(in9[9]));
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_18 
       (.I0(\fifo_data_reg_n_0_[18] ),
        .I1(\fifo_data_reg_n_0_[16] ),
        .I2(\fifo_data_reg_n_0_[19] ),
        .I3(\fifo_data_reg_n_0_[17] ),
        .O(in10[9]));
  LUT6 #(
    .INIT(64'hCF20FFFFCF200000)) 
    \data_to_send[9]_i_2 
       (.I0(\fifo_data_reg_n_0_[90] ),
        .I1(\fifo_data_reg_n_0_[88] ),
        .I2(\fifo_data_reg_n_0_[91] ),
        .I3(\fifo_data_reg_n_0_[89] ),
        .I4(read_proc_st[0]),
        .I5(in15[9]),
        .O(\data_to_send[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88288808)) 
    \data_to_send[9]_i_5 
       (.I0(read_proc_st[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(\data_to_send[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \data_to_send[9]_i_6 
       (.I0(\fifo_data_reg_n_0_[78] ),
        .I1(\fifo_data_reg_n_0_[76] ),
        .I2(\fifo_data_reg_n_0_[79] ),
        .I3(\fifo_data_reg_n_0_[77] ),
        .O(in15[9]));
  FDRE \data_to_send_reg[0] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[0]),
        .Q(\data_to_send_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \data_to_send_reg[0]_i_10 
       (.I0(in9[0]),
        .I1(in10[0]),
        .O(\data_to_send_reg[0]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[0]_i_3 
       (.I0(\data_to_send_reg[0]_i_7_n_0 ),
        .I1(\data_to_send_reg[0]_i_8_n_0 ),
        .O(\data_to_send_reg[0]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[0]_i_4 
       (.I0(\data_to_send_reg[0]_i_9_n_0 ),
        .I1(\data_to_send_reg[0]_i_10_n_0 ),
        .O(\data_to_send_reg[0]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[0]_i_7 
       (.I0(\data_to_send[0]_i_11_n_0 ),
        .I1(\data_to_send[0]_i_12_n_0 ),
        .O(\data_to_send_reg[0]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[0]_i_8 
       (.I0(in13[0]),
        .I1(in14[0]),
        .O(\data_to_send_reg[0]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[0]_i_9 
       (.I0(in7[0]),
        .I1(in8[0]),
        .O(\data_to_send_reg[0]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[10] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[10]),
        .Q(in4[2]),
        .R(1'b0));
  MUXF7 \data_to_send_reg[10]_i_10 
       (.I0(in9[10]),
        .I1(in10[10]),
        .O(\data_to_send_reg[10]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[10]_i_3 
       (.I0(\data_to_send_reg[10]_i_7_n_0 ),
        .I1(\data_to_send_reg[10]_i_8_n_0 ),
        .O(\data_to_send_reg[10]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[10]_i_4 
       (.I0(\data_to_send_reg[10]_i_9_n_0 ),
        .I1(\data_to_send_reg[10]_i_10_n_0 ),
        .O(\data_to_send_reg[10]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[10]_i_7 
       (.I0(\data_to_send[10]_i_11_n_0 ),
        .I1(\data_to_send[10]_i_12_n_0 ),
        .O(\data_to_send_reg[10]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[10]_i_8 
       (.I0(in13[10]),
        .I1(in14[10]),
        .O(\data_to_send_reg[10]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[10]_i_9 
       (.I0(in7[10]),
        .I1(in8[10]),
        .O(\data_to_send_reg[10]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[11] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[11]),
        .Q(in4[3]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[11]_i_3 
       (.I0(\data_to_send_reg[11]_i_6_n_0 ),
        .I1(\data_to_send_reg[11]_i_7_n_0 ),
        .O(\data_to_send_reg[11]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[11]_i_4 
       (.I0(\data_to_send_reg[11]_i_8_n_0 ),
        .I1(\data_to_send_reg[11]_i_9_n_0 ),
        .O(\data_to_send_reg[11]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[11]_i_6 
       (.I0(\data_to_send[11]_i_10_n_0 ),
        .I1(\data_to_send[11]_i_11_n_0 ),
        .O(\data_to_send_reg[11]_i_6_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[11]_i_7 
       (.I0(in13[11]),
        .I1(in14[11]),
        .O(\data_to_send_reg[11]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[11]_i_8 
       (.I0(in7[11]),
        .I1(in8[11]),
        .O(\data_to_send_reg[11]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[11]_i_9 
       (.I0(in9[11]),
        .I1(in10[11]),
        .O(\data_to_send_reg[11]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[12] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[12]),
        .Q(in4[4]),
        .R(1'b0));
  FDRE \data_to_send_reg[13] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[13]),
        .Q(in4[5]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[13]_i_3 
       (.I0(\data_to_send_reg[13]_i_6_n_0 ),
        .I1(\data_to_send_reg[13]_i_7_n_0 ),
        .O(\data_to_send_reg[13]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[13]_i_4 
       (.I0(\data_to_send_reg[13]_i_8_n_0 ),
        .I1(\data_to_send_reg[13]_i_9_n_0 ),
        .O(\data_to_send_reg[13]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[13]_i_6 
       (.I0(\data_to_send[13]_i_10_n_0 ),
        .I1(\data_to_send[13]_i_11_n_0 ),
        .O(\data_to_send_reg[13]_i_6_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[13]_i_7 
       (.I0(\data_to_send[13]_i_12_n_0 ),
        .I1(\data_to_send[13]_i_13_n_0 ),
        .O(\data_to_send_reg[13]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[13]_i_8 
       (.I0(\data_to_send[13]_i_14_n_0 ),
        .I1(\data_to_send[13]_i_15_n_0 ),
        .O(\data_to_send_reg[13]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[13]_i_9 
       (.I0(\data_to_send[13]_i_16_n_0 ),
        .I1(\data_to_send[13]_i_17_n_0 ),
        .O(\data_to_send_reg[13]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[14] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[14]),
        .Q(in4[6]),
        .R(1'b0));
  MUXF7 \data_to_send_reg[14]_i_10 
       (.I0(in9[14]),
        .I1(in10[14]),
        .O(\data_to_send_reg[14]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[14]_i_3 
       (.I0(\data_to_send_reg[14]_i_7_n_0 ),
        .I1(\data_to_send_reg[14]_i_8_n_0 ),
        .O(\data_to_send_reg[14]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[14]_i_4 
       (.I0(\data_to_send_reg[14]_i_9_n_0 ),
        .I1(\data_to_send_reg[14]_i_10_n_0 ),
        .O(\data_to_send_reg[14]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[14]_i_7 
       (.I0(\data_to_send[14]_i_11_n_0 ),
        .I1(\data_to_send[14]_i_12_n_0 ),
        .O(\data_to_send_reg[14]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[14]_i_8 
       (.I0(in13[14]),
        .I1(in14[14]),
        .O(\data_to_send_reg[14]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[14]_i_9 
       (.I0(in7[14]),
        .I1(in8[14]),
        .O(\data_to_send_reg[14]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[16] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[16]),
        .Q(in3[0]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[16]_i_3 
       (.I0(\data_to_send_reg[16]_i_7_n_0 ),
        .I1(\data_to_send_reg[16]_i_8_n_0 ),
        .O(\data_to_send_reg[16]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[16]_i_7 
       (.I0(\data_to_send[16]_i_12_n_0 ),
        .I1(\data_to_send[16]_i_13_n_0 ),
        .O(\data_to_send_reg[16]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[16]_i_8 
       (.I0(in13[16]),
        .I1(in14[16]),
        .O(\data_to_send_reg[16]_i_8_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[17] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[17]),
        .Q(in3[1]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[17]_i_3 
       (.I0(\data_to_send_reg[17]_i_7_n_0 ),
        .I1(\data_to_send_reg[17]_i_8_n_0 ),
        .O(\data_to_send_reg[17]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[17]_i_7 
       (.I0(\data_to_send[17]_i_12_n_0 ),
        .I1(\data_to_send[17]_i_13_n_0 ),
        .O(\data_to_send_reg[17]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[17]_i_8 
       (.I0(in13[17]),
        .I1(in14[17]),
        .O(\data_to_send_reg[17]_i_8_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[18] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[18]),
        .Q(in3[2]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[18]_i_3 
       (.I0(\data_to_send_reg[18]_i_7_n_0 ),
        .I1(\data_to_send_reg[18]_i_8_n_0 ),
        .O(\data_to_send_reg[18]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[18]_i_7 
       (.I0(\data_to_send[18]_i_12_n_0 ),
        .I1(\data_to_send[18]_i_13_n_0 ),
        .O(\data_to_send_reg[18]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[18]_i_8 
       (.I0(in13[18]),
        .I1(in14[18]),
        .O(\data_to_send_reg[18]_i_8_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[19] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[19]),
        .Q(in3[3]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[19]_i_3 
       (.I0(\data_to_send_reg[19]_i_6_n_0 ),
        .I1(\data_to_send_reg[19]_i_7_n_0 ),
        .O(\data_to_send_reg[19]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[19]_i_6 
       (.I0(\data_to_send[19]_i_10_n_0 ),
        .I1(\data_to_send[19]_i_11_n_0 ),
        .O(\data_to_send_reg[19]_i_6_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[19]_i_7 
       (.I0(in13[19]),
        .I1(in14[19]),
        .O(\data_to_send_reg[19]_i_7_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[1] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[1]),
        .Q(\data_to_send_reg_n_0_[1] ),
        .R(1'b0));
  MUXF7 \data_to_send_reg[1]_i_10 
       (.I0(in9[1]),
        .I1(in10[1]),
        .O(\data_to_send_reg[1]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[1]_i_3 
       (.I0(\data_to_send_reg[1]_i_7_n_0 ),
        .I1(\data_to_send_reg[1]_i_8_n_0 ),
        .O(\data_to_send_reg[1]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[1]_i_4 
       (.I0(\data_to_send_reg[1]_i_9_n_0 ),
        .I1(\data_to_send_reg[1]_i_10_n_0 ),
        .O(\data_to_send_reg[1]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[1]_i_7 
       (.I0(\data_to_send[1]_i_11_n_0 ),
        .I1(\data_to_send[1]_i_12_n_0 ),
        .O(\data_to_send_reg[1]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[1]_i_8 
       (.I0(in13[1]),
        .I1(in14[1]),
        .O(\data_to_send_reg[1]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[1]_i_9 
       (.I0(in7[1]),
        .I1(in8[1]),
        .O(\data_to_send_reg[1]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[20] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[20]),
        .Q(in3[4]),
        .R(1'b0));
  FDRE \data_to_send_reg[21] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[21]),
        .Q(in3[5]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[21]_i_3 
       (.I0(\data_to_send_reg[21]_i_6_n_0 ),
        .I1(\data_to_send_reg[21]_i_7_n_0 ),
        .O(\data_to_send_reg[21]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[21]_i_6 
       (.I0(\data_to_send[21]_i_10_n_0 ),
        .I1(\data_to_send[21]_i_11_n_0 ),
        .O(\data_to_send_reg[21]_i_6_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[21]_i_7 
       (.I0(\data_to_send[21]_i_12_n_0 ),
        .I1(\data_to_send[21]_i_13_n_0 ),
        .O(\data_to_send_reg[21]_i_7_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[22] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[22]),
        .Q(in3[6]),
        .R(1'b0));
  MUXF8 \data_to_send_reg[22]_i_3 
       (.I0(\data_to_send_reg[22]_i_7_n_0 ),
        .I1(\data_to_send_reg[22]_i_8_n_0 ),
        .O(\data_to_send_reg[22]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[22]_i_7 
       (.I0(\data_to_send[22]_i_12_n_0 ),
        .I1(\data_to_send[22]_i_13_n_0 ),
        .O(\data_to_send_reg[22]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[22]_i_8 
       (.I0(in13[22]),
        .I1(in14[22]),
        .O(\data_to_send_reg[22]_i_8_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[24] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(\data_to_send[24]_i_1_n_0 ),
        .Q(in2[0]),
        .R(1'b0));
  FDRE \data_to_send_reg[25] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(\data_to_send[25]_i_1_n_0 ),
        .Q(in2[1]),
        .R(1'b0));
  FDRE \data_to_send_reg[27] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(\data_to_send[27]_i_2_n_0 ),
        .Q(in2[3]),
        .R(1'b0));
  FDRE \data_to_send_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\data_to_send[29]_i_1_n_0 ),
        .Q(in2[5]),
        .R(1'b0));
  FDRE \data_to_send_reg[2] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[2]),
        .Q(\data_to_send_reg_n_0_[2] ),
        .R(1'b0));
  MUXF7 \data_to_send_reg[2]_i_10 
       (.I0(in9[2]),
        .I1(in10[2]),
        .O(\data_to_send_reg[2]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[2]_i_3 
       (.I0(\data_to_send_reg[2]_i_7_n_0 ),
        .I1(\data_to_send_reg[2]_i_8_n_0 ),
        .O(\data_to_send_reg[2]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[2]_i_4 
       (.I0(\data_to_send_reg[2]_i_9_n_0 ),
        .I1(\data_to_send_reg[2]_i_10_n_0 ),
        .O(\data_to_send_reg[2]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[2]_i_7 
       (.I0(\data_to_send[2]_i_11_n_0 ),
        .I1(\data_to_send[2]_i_12_n_0 ),
        .O(\data_to_send_reg[2]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[2]_i_8 
       (.I0(in13[2]),
        .I1(in14[2]),
        .O(\data_to_send_reg[2]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[2]_i_9 
       (.I0(in7[2]),
        .I1(in8[2]),
        .O(\data_to_send_reg[2]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[3] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[3]),
        .Q(\data_to_send_reg_n_0_[3] ),
        .R(1'b0));
  MUXF8 \data_to_send_reg[3]_i_3 
       (.I0(\data_to_send_reg[3]_i_6_n_0 ),
        .I1(\data_to_send_reg[3]_i_7_n_0 ),
        .O(\data_to_send_reg[3]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[3]_i_4 
       (.I0(\data_to_send_reg[3]_i_8_n_0 ),
        .I1(\data_to_send_reg[3]_i_9_n_0 ),
        .O(\data_to_send_reg[3]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[3]_i_6 
       (.I0(\data_to_send[3]_i_10_n_0 ),
        .I1(\data_to_send[3]_i_11_n_0 ),
        .O(\data_to_send_reg[3]_i_6_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[3]_i_7 
       (.I0(in13[3]),
        .I1(in14[3]),
        .O(\data_to_send_reg[3]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[3]_i_8 
       (.I0(in7[3]),
        .I1(in8[3]),
        .O(\data_to_send_reg[3]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[3]_i_9 
       (.I0(in9[3]),
        .I1(in10[3]),
        .O(\data_to_send_reg[3]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[5] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[5]),
        .Q(\data_to_send_reg_n_0_[5] ),
        .R(1'b0));
  MUXF8 \data_to_send_reg[5]_i_3 
       (.I0(\data_to_send_reg[5]_i_6_n_0 ),
        .I1(\data_to_send_reg[5]_i_7_n_0 ),
        .O(\data_to_send_reg[5]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[5]_i_4 
       (.I0(\data_to_send_reg[5]_i_8_n_0 ),
        .I1(\data_to_send_reg[5]_i_9_n_0 ),
        .O(\data_to_send_reg[5]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[5]_i_6 
       (.I0(\data_to_send[5]_i_10_n_0 ),
        .I1(\data_to_send[5]_i_11_n_0 ),
        .O(\data_to_send_reg[5]_i_6_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[5]_i_7 
       (.I0(\data_to_send[5]_i_12_n_0 ),
        .I1(\data_to_send[5]_i_13_n_0 ),
        .O(\data_to_send_reg[5]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[5]_i_8 
       (.I0(\data_to_send[5]_i_14_n_0 ),
        .I1(\data_to_send[5]_i_15_n_0 ),
        .O(\data_to_send_reg[5]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[5]_i_9 
       (.I0(\data_to_send[5]_i_16_n_0 ),
        .I1(\data_to_send[5]_i_17_n_0 ),
        .O(\data_to_send_reg[5]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[6] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[6]),
        .Q(\data_to_send_reg_n_0_[6] ),
        .R(1'b0));
  MUXF7 \data_to_send_reg[6]_i_10 
       (.I0(in9[6]),
        .I1(in10[6]),
        .O(\data_to_send_reg[6]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[6]_i_3 
       (.I0(\data_to_send_reg[6]_i_7_n_0 ),
        .I1(\data_to_send_reg[6]_i_8_n_0 ),
        .O(\data_to_send_reg[6]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[6]_i_4 
       (.I0(\data_to_send_reg[6]_i_9_n_0 ),
        .I1(\data_to_send_reg[6]_i_10_n_0 ),
        .O(\data_to_send_reg[6]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[6]_i_7 
       (.I0(\data_to_send[6]_i_11_n_0 ),
        .I1(\data_to_send[6]_i_12_n_0 ),
        .O(\data_to_send_reg[6]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[6]_i_8 
       (.I0(in13[6]),
        .I1(in14[6]),
        .O(\data_to_send_reg[6]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[6]_i_9 
       (.I0(in7[6]),
        .I1(in8[6]),
        .O(\data_to_send_reg[6]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[8] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[8]),
        .Q(in4[0]),
        .R(1'b0));
  MUXF7 \data_to_send_reg[8]_i_10 
       (.I0(in9[8]),
        .I1(in10[8]),
        .O(\data_to_send_reg[8]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[8]_i_3 
       (.I0(\data_to_send_reg[8]_i_7_n_0 ),
        .I1(\data_to_send_reg[8]_i_8_n_0 ),
        .O(\data_to_send_reg[8]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[8]_i_4 
       (.I0(\data_to_send_reg[8]_i_9_n_0 ),
        .I1(\data_to_send_reg[8]_i_10_n_0 ),
        .O(\data_to_send_reg[8]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[8]_i_7 
       (.I0(\data_to_send[8]_i_11_n_0 ),
        .I1(\data_to_send[8]_i_12_n_0 ),
        .O(\data_to_send_reg[8]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[8]_i_8 
       (.I0(in13[8]),
        .I1(in14[8]),
        .O(\data_to_send_reg[8]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[8]_i_9 
       (.I0(in7[8]),
        .I1(in8[8]),
        .O(\data_to_send_reg[8]_i_9_n_0 ),
        .S(read_proc_st[0]));
  FDRE \data_to_send_reg[9] 
       (.C(sys_clk),
        .CE(\data_to_send[27]_i_1_n_0 ),
        .D(data_to_send[9]),
        .Q(in4[1]),
        .R(1'b0));
  MUXF7 \data_to_send_reg[9]_i_10 
       (.I0(in9[9]),
        .I1(in10[9]),
        .O(\data_to_send_reg[9]_i_10_n_0 ),
        .S(read_proc_st[0]));
  MUXF8 \data_to_send_reg[9]_i_3 
       (.I0(\data_to_send_reg[9]_i_7_n_0 ),
        .I1(\data_to_send_reg[9]_i_8_n_0 ),
        .O(\data_to_send_reg[9]_i_3_n_0 ),
        .S(read_proc_st[1]));
  MUXF8 \data_to_send_reg[9]_i_4 
       (.I0(\data_to_send_reg[9]_i_9_n_0 ),
        .I1(\data_to_send_reg[9]_i_10_n_0 ),
        .O(\data_to_send_reg[9]_i_4_n_0 ),
        .S(read_proc_st[1]));
  MUXF7 \data_to_send_reg[9]_i_7 
       (.I0(\data_to_send[9]_i_11_n_0 ),
        .I1(\data_to_send[9]_i_12_n_0 ),
        .O(\data_to_send_reg[9]_i_7_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[9]_i_8 
       (.I0(in13[9]),
        .I1(in14[9]),
        .O(\data_to_send_reg[9]_i_8_n_0 ),
        .S(read_proc_st[0]));
  MUXF7 \data_to_send_reg[9]_i_9 
       (.I0(in7[9]),
        .I1(in8[9]),
        .O(\data_to_send_reg[9]_i_9_n_0 ),
        .S(read_proc_st[0]));
  CARRY4 \eqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({eqOp,\eqOp_inferred__0/i__carry_n_1 ,\eqOp_inferred__0/i__carry_n_2 ,\eqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \evcounter[0]_i_2 
       (.I0(\evcounter_reg_n_0_[0] ),
        .O(\evcounter[0]_i_2_n_0 ));
  FDRE \evcounter_reg[0] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[0]_i_1_n_7 ),
        .Q(\evcounter_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \evcounter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\evcounter_reg[0]_i_1_n_0 ,\evcounter_reg[0]_i_1_n_1 ,\evcounter_reg[0]_i_1_n_2 ,\evcounter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\evcounter_reg[0]_i_1_n_4 ,\evcounter_reg[0]_i_1_n_5 ,\evcounter_reg[0]_i_1_n_6 ,\evcounter_reg[0]_i_1_n_7 }),
        .S({\evcounter_reg_n_0_[3] ,\evcounter_reg_n_0_[2] ,\evcounter_reg_n_0_[1] ,\evcounter[0]_i_2_n_0 }));
  FDRE \evcounter_reg[10] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[8]_i_1_n_5 ),
        .Q(\evcounter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \evcounter_reg[11] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[8]_i_1_n_4 ),
        .Q(\evcounter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \evcounter_reg[1] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[0]_i_1_n_6 ),
        .Q(\evcounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \evcounter_reg[2] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[0]_i_1_n_5 ),
        .Q(\evcounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \evcounter_reg[3] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[0]_i_1_n_4 ),
        .Q(\evcounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \evcounter_reg[4] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[4]_i_1_n_7 ),
        .Q(sel0[0]),
        .R(1'b0));
  CARRY4 \evcounter_reg[4]_i_1 
       (.CI(\evcounter_reg[0]_i_1_n_0 ),
        .CO({\evcounter_reg[4]_i_1_n_0 ,\evcounter_reg[4]_i_1_n_1 ,\evcounter_reg[4]_i_1_n_2 ,\evcounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\evcounter_reg[4]_i_1_n_4 ,\evcounter_reg[4]_i_1_n_5 ,\evcounter_reg[4]_i_1_n_6 ,\evcounter_reg[4]_i_1_n_7 }),
        .S(sel0));
  FDRE \evcounter_reg[5] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[4]_i_1_n_6 ),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \evcounter_reg[6] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[4]_i_1_n_5 ),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \evcounter_reg[7] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[4]_i_1_n_4 ),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \evcounter_reg[8] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[8]_i_1_n_7 ),
        .Q(\evcounter_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \evcounter_reg[8]_i_1 
       (.CI(\evcounter_reg[4]_i_1_n_0 ),
        .CO({\NLW_evcounter_reg[8]_i_1_CO_UNCONNECTED [3],\evcounter_reg[8]_i_1_n_1 ,\evcounter_reg[8]_i_1_n_2 ,\evcounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\evcounter_reg[8]_i_1_n_4 ,\evcounter_reg[8]_i_1_n_5 ,\evcounter_reg[8]_i_1_n_6 ,\evcounter_reg[8]_i_1_n_7 }),
        .S({\evcounter_reg_n_0_[11] ,\evcounter_reg_n_0_[10] ,\evcounter_reg_n_0_[9] ,\evcounter_reg_n_0_[8] }));
  FDRE \evcounter_reg[9] 
       (.C(i_data_clk),
        .CE(\cnt_limit[11]_i_2_n_0 ),
        .D(\evcounter_reg[8]_i_1_n_6 ),
        .Q(\evcounter_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000043000000)) 
    \fifo_data[96]_i_1 
       (.I0(o_rd_fifo_en),
        .I1(read_proc_st[2]),
        .I2(read_proc_st[3]),
        .I3(read_proc_st[1]),
        .I4(read_proc_st[0]),
        .I5(i_rst),
        .O(\fifo_data[96]_i_1_n_0 ));
  FDRE \fifo_data_reg[0] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[0]),
        .Q(\fifo_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \fifo_data_reg[10] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[10]),
        .Q(\fifo_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \fifo_data_reg[11] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[11]),
        .Q(\fifo_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \fifo_data_reg[12] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[12]),
        .Q(\fifo_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \fifo_data_reg[13] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[13]),
        .Q(\fifo_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \fifo_data_reg[14] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[14]),
        .Q(\fifo_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \fifo_data_reg[15] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[15]),
        .Q(\fifo_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \fifo_data_reg[16] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[16]),
        .Q(\fifo_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \fifo_data_reg[17] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[17]),
        .Q(\fifo_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \fifo_data_reg[18] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[18]),
        .Q(\fifo_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \fifo_data_reg[19] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[19]),
        .Q(\fifo_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \fifo_data_reg[1] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[1]),
        .Q(\fifo_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \fifo_data_reg[20] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[20]),
        .Q(\fifo_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \fifo_data_reg[21] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[21]),
        .Q(\fifo_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \fifo_data_reg[22] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[22]),
        .Q(\fifo_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \fifo_data_reg[23] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[23]),
        .Q(\fifo_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \fifo_data_reg[24] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[24]),
        .Q(\fifo_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \fifo_data_reg[25] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[25]),
        .Q(\fifo_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \fifo_data_reg[26] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[26]),
        .Q(\fifo_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \fifo_data_reg[27] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[27]),
        .Q(\fifo_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \fifo_data_reg[28] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[28]),
        .Q(\fifo_data_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \fifo_data_reg[29] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[29]),
        .Q(\fifo_data_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \fifo_data_reg[2] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[2]),
        .Q(\fifo_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \fifo_data_reg[30] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[30]),
        .Q(\fifo_data_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \fifo_data_reg[31] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[31]),
        .Q(\fifo_data_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \fifo_data_reg[32] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[32]),
        .Q(\fifo_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \fifo_data_reg[33] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[33]),
        .Q(\fifo_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \fifo_data_reg[34] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[34]),
        .Q(\fifo_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \fifo_data_reg[35] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[35]),
        .Q(\fifo_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \fifo_data_reg[36] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[36]),
        .Q(\fifo_data_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \fifo_data_reg[37] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[37]),
        .Q(\fifo_data_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \fifo_data_reg[38] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[38]),
        .Q(\fifo_data_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \fifo_data_reg[39] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[39]),
        .Q(\fifo_data_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \fifo_data_reg[3] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[3]),
        .Q(\fifo_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \fifo_data_reg[40] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[40]),
        .Q(\fifo_data_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \fifo_data_reg[41] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[41]),
        .Q(\fifo_data_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \fifo_data_reg[42] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[42]),
        .Q(\fifo_data_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \fifo_data_reg[43] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[43]),
        .Q(\fifo_data_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \fifo_data_reg[44] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[44]),
        .Q(\fifo_data_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \fifo_data_reg[45] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[45]),
        .Q(\fifo_data_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \fifo_data_reg[46] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[46]),
        .Q(\fifo_data_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \fifo_data_reg[47] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[47]),
        .Q(\fifo_data_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \fifo_data_reg[48] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[48]),
        .Q(\fifo_data_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \fifo_data_reg[49] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[49]),
        .Q(\fifo_data_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \fifo_data_reg[4] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[4]),
        .Q(\fifo_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \fifo_data_reg[50] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[50]),
        .Q(\fifo_data_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \fifo_data_reg[51] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[51]),
        .Q(\fifo_data_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \fifo_data_reg[52] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[52]),
        .Q(\fifo_data_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \fifo_data_reg[53] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[53]),
        .Q(\fifo_data_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \fifo_data_reg[54] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[54]),
        .Q(\fifo_data_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \fifo_data_reg[55] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[55]),
        .Q(\fifo_data_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \fifo_data_reg[56] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[56]),
        .Q(\fifo_data_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \fifo_data_reg[57] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[57]),
        .Q(\fifo_data_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \fifo_data_reg[58] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[58]),
        .Q(\fifo_data_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \fifo_data_reg[59] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[59]),
        .Q(\fifo_data_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \fifo_data_reg[5] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[5]),
        .Q(\fifo_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \fifo_data_reg[60] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[60]),
        .Q(\fifo_data_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \fifo_data_reg[61] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[61]),
        .Q(\fifo_data_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \fifo_data_reg[62] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[62]),
        .Q(\fifo_data_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \fifo_data_reg[63] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[63]),
        .Q(\fifo_data_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \fifo_data_reg[64] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[64]),
        .Q(\fifo_data_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \fifo_data_reg[65] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[65]),
        .Q(\fifo_data_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \fifo_data_reg[66] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[66]),
        .Q(\fifo_data_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \fifo_data_reg[67] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[67]),
        .Q(\fifo_data_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \fifo_data_reg[68] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[68]),
        .Q(\fifo_data_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \fifo_data_reg[69] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[69]),
        .Q(\fifo_data_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \fifo_data_reg[6] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[6]),
        .Q(\fifo_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \fifo_data_reg[70] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[70]),
        .Q(\fifo_data_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \fifo_data_reg[71] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[71]),
        .Q(\fifo_data_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \fifo_data_reg[72] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[72]),
        .Q(\fifo_data_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \fifo_data_reg[73] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[73]),
        .Q(\fifo_data_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \fifo_data_reg[74] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[74]),
        .Q(\fifo_data_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \fifo_data_reg[75] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[75]),
        .Q(\fifo_data_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \fifo_data_reg[76] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[76]),
        .Q(\fifo_data_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \fifo_data_reg[77] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[77]),
        .Q(\fifo_data_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \fifo_data_reg[78] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[78]),
        .Q(\fifo_data_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \fifo_data_reg[79] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[79]),
        .Q(\fifo_data_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \fifo_data_reg[7] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[7]),
        .Q(\fifo_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \fifo_data_reg[80] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[80]),
        .Q(\fifo_data_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \fifo_data_reg[81] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[81]),
        .Q(\fifo_data_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \fifo_data_reg[82] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[82]),
        .Q(\fifo_data_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \fifo_data_reg[83] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[83]),
        .Q(\fifo_data_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \fifo_data_reg[84] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[84]),
        .Q(\fifo_data_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \fifo_data_reg[85] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[85]),
        .Q(\fifo_data_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \fifo_data_reg[86] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[86]),
        .Q(\fifo_data_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \fifo_data_reg[87] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[87]),
        .Q(\fifo_data_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \fifo_data_reg[88] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[88]),
        .Q(\fifo_data_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \fifo_data_reg[89] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[89]),
        .Q(\fifo_data_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \fifo_data_reg[8] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[8]),
        .Q(\fifo_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \fifo_data_reg[90] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[90]),
        .Q(\fifo_data_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \fifo_data_reg[91] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[91]),
        .Q(\fifo_data_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \fifo_data_reg[92] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[92]),
        .Q(\fifo_data_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \fifo_data_reg[93] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[93]),
        .Q(\fifo_data_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \fifo_data_reg[94] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[94]),
        .Q(\fifo_data_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \fifo_data_reg[95] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[95]),
        .Q(\fifo_data_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \fifo_data_reg[96] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[96]),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE \fifo_data_reg[9] 
       (.C(sys_clk),
        .CE(\fifo_data[96]_i_1_n_0 ),
        .D(i_rd_fifo_data[9]),
        .Q(\fifo_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[8]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[7]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[6]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[5]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[11]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_2
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[10]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_3
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[9]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(cnt_limit[9]),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(cnt_limit[11]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(cnt_limit[10]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__0
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(cnt_limit[6]),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(cnt_limit[8]),
        .I4(\counter_reg_n_0_[7] ),
        .I5(cnt_limit[7]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2__0
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(cnt_limit[3]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(cnt_limit[5]),
        .I4(\counter_reg_n_0_[4] ),
        .I5(cnt_limit[4]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_3__0
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(cnt_limit[0]),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(cnt_limit[2]),
        .I4(\counter_reg_n_0_[1] ),
        .I5(cnt_limit[1]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__0
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[2]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\FSM_onehot_ro_proc_st[4]_i_3_n_0 ),
        .O(counter[1]));
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp_carry_n_0,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0,ltOp_carry_i_8_n_0}));
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({NLW_ltOp_carry__0_CO_UNCONNECTED[3:2],ltOp,ltOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ltOp_carry__0_i_1_n_0,ltOp_carry__0_i_2_n_0}),
        .O(NLW_ltOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ltOp_carry__0_i_3_n_0,ltOp_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry__0_i_1
       (.I0(i_rd_data_count[10]),
        .I1(i_pre_trig_wind[10]),
        .I2(i_pre_trig_wind[11]),
        .I3(i_rd_data_count[11]),
        .O(ltOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry__0_i_2
       (.I0(i_rd_data_count[8]),
        .I1(i_pre_trig_wind[8]),
        .I2(i_pre_trig_wind[9]),
        .I3(i_rd_data_count[9]),
        .O(ltOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_3
       (.I0(i_rd_data_count[10]),
        .I1(i_pre_trig_wind[10]),
        .I2(i_rd_data_count[11]),
        .I3(i_pre_trig_wind[11]),
        .O(ltOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry__0_i_4
       (.I0(i_rd_data_count[8]),
        .I1(i_pre_trig_wind[8]),
        .I2(i_rd_data_count[9]),
        .I3(i_pre_trig_wind[9]),
        .O(ltOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_1
       (.I0(i_rd_data_count[6]),
        .I1(i_pre_trig_wind[6]),
        .I2(i_pre_trig_wind[7]),
        .I3(i_rd_data_count[7]),
        .O(ltOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_2
       (.I0(i_rd_data_count[4]),
        .I1(i_pre_trig_wind[4]),
        .I2(i_pre_trig_wind[5]),
        .I3(i_rd_data_count[5]),
        .O(ltOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_3
       (.I0(i_rd_data_count[2]),
        .I1(i_pre_trig_wind[2]),
        .I2(i_pre_trig_wind[3]),
        .I3(i_rd_data_count[3]),
        .O(ltOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_4
       (.I0(i_rd_data_count[0]),
        .I1(i_pre_trig_wind[0]),
        .I2(i_pre_trig_wind[1]),
        .I3(i_rd_data_count[1]),
        .O(ltOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_5
       (.I0(i_rd_data_count[6]),
        .I1(i_pre_trig_wind[6]),
        .I2(i_rd_data_count[7]),
        .I3(i_pre_trig_wind[7]),
        .O(ltOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_6
       (.I0(i_rd_data_count[4]),
        .I1(i_pre_trig_wind[4]),
        .I2(i_rd_data_count[5]),
        .I3(i_pre_trig_wind[5]),
        .O(ltOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7
       (.I0(i_rd_data_count[2]),
        .I1(i_pre_trig_wind[2]),
        .I2(i_rd_data_count[3]),
        .I3(i_pre_trig_wind[3]),
        .O(ltOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8
       (.I0(i_rd_data_count[0]),
        .I1(i_pre_trig_wind[0]),
        .I2(i_rd_data_count[1]),
        .I3(i_pre_trig_wind[1]),
        .O(ltOp_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_ascii[0]_i_1 
       (.I0(\data_to_send_reg_n_0_[0] ),
        .I1(in4[0]),
        .I2(send_proc_st[2]),
        .I3(in3[0]),
        .I4(send_proc_st[0]),
        .I5(in2[0]),
        .O(\o_ascii[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_ascii[1]_i_1 
       (.I0(\data_to_send_reg_n_0_[1] ),
        .I1(in4[1]),
        .I2(send_proc_st[2]),
        .I3(in3[1]),
        .I4(send_proc_st[0]),
        .I5(in2[1]),
        .O(\o_ascii[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \o_ascii[2]_i_1 
       (.I0(\data_to_send_reg_n_0_[2] ),
        .I1(in4[2]),
        .I2(send_proc_st[2]),
        .I3(send_proc_st[0]),
        .I4(in3[2]),
        .O(\o_ascii[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_ascii[3]_i_1 
       (.I0(\data_to_send_reg_n_0_[3] ),
        .I1(in4[3]),
        .I2(send_proc_st[2]),
        .I3(in3[3]),
        .I4(send_proc_st[0]),
        .I5(in2[3]),
        .O(\o_ascii[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \o_ascii[4]_i_1 
       (.I0(\data_to_send_reg_n_0_[5] ),
        .I1(in4[4]),
        .I2(send_proc_st[2]),
        .I3(send_proc_st[0]),
        .I4(in3[4]),
        .O(\o_ascii[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_ascii[5]_i_1 
       (.I0(\data_to_send_reg_n_0_[5] ),
        .I1(in4[5]),
        .I2(send_proc_st[2]),
        .I3(in3[5]),
        .I4(send_proc_st[0]),
        .I5(in2[5]),
        .O(\o_ascii[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \o_ascii[6]_i_1 
       (.I0(send_proc_st[2]),
        .I1(send_proc_st[1]),
        .I2(i_rst),
        .O(\o_ascii[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \o_ascii[6]_i_2 
       (.I0(\data_to_send_reg_n_0_[6] ),
        .I1(in4[6]),
        .I2(send_proc_st[2]),
        .I3(send_proc_st[0]),
        .I4(in3[6]),
        .O(\o_ascii[6]_i_2_n_0 ));
  FDRE \o_ascii_reg[0] 
       (.C(sys_clk),
        .CE(\o_ascii[6]_i_1_n_0 ),
        .D(\o_ascii[0]_i_1_n_0 ),
        .Q(o_ascii[0]),
        .R(1'b0));
  FDRE \o_ascii_reg[1] 
       (.C(sys_clk),
        .CE(\o_ascii[6]_i_1_n_0 ),
        .D(\o_ascii[1]_i_1_n_0 ),
        .Q(o_ascii[1]),
        .R(1'b0));
  FDRE \o_ascii_reg[2] 
       (.C(sys_clk),
        .CE(\o_ascii[6]_i_1_n_0 ),
        .D(\o_ascii[2]_i_1_n_0 ),
        .Q(o_ascii[2]),
        .R(1'b0));
  FDRE \o_ascii_reg[3] 
       (.C(sys_clk),
        .CE(\o_ascii[6]_i_1_n_0 ),
        .D(\o_ascii[3]_i_1_n_0 ),
        .Q(o_ascii[3]),
        .R(1'b0));
  FDRE \o_ascii_reg[4] 
       (.C(sys_clk),
        .CE(\o_ascii[6]_i_1_n_0 ),
        .D(\o_ascii[4]_i_1_n_0 ),
        .Q(o_ascii[4]),
        .R(1'b0));
  FDRE \o_ascii_reg[5] 
       (.C(sys_clk),
        .CE(\o_ascii[6]_i_1_n_0 ),
        .D(\o_ascii[5]_i_1_n_0 ),
        .Q(o_ascii[5]),
        .R(1'b0));
  FDRE \o_ascii_reg[6] 
       (.C(sys_clk),
        .CE(\o_ascii[6]_i_1_n_0 ),
        .D(\o_ascii[6]_i_2_n_0 ),
        .Q(o_ascii[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_busy_INST_0
       (.I0(busy_reg_n_0),
        .I1(sending_data_reg_n_0),
        .O(o_busy));
  LUT5 #(
    .INIT(32'hFFEA00EA)) 
    o_trig_RO_end_i_1
       (.I0(\FSM_onehot_ro_proc_st_reg_n_0_[4] ),
        .I1(eqOp),
        .I2(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .I3(i_rst),
        .I4(o_trig_RO_end),
        .O(o_trig_RO_end_i_1_n_0));
  FDRE o_trig_RO_end_reg
       (.C(i_data_clk),
        .CE(1'b1),
        .D(o_trig_RO_end_i_1_n_0),
        .Q(o_trig_RO_end),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \o_wr_fifo_data[96]_INST_0 
       (.I0(busy_reg_n_0),
        .I1(i_trigger),
        .O(o_wr_fifo_data));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_wr_fifo_en_INST_0
       (.I0(wr_fifo_en_reg_n_0),
        .I1(i_wr_fifo_full),
        .O(o_wr_fifo_en));
  LUT5 #(
    .INIT(32'hFF060006)) 
    outfifo_wr_en_i_1
       (.I0(send_proc_st[2]),
        .I1(send_proc_st[1]),
        .I2(i_next_fifo_full),
        .I3(i_rst),
        .I4(o_outfifo_wr_en),
        .O(outfifo_wr_en_i_1_n_0));
  FDRE outfifo_wr_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(outfifo_wr_en_i_1_n_0),
        .Q(o_outfifo_wr_en),
        .R(1'b0));
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[4:1]),
        .S(counter[4:1]));
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[8:5]),
        .S(counter[8:5]));
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED [3],in12[11:9]}),
        .S({1'b0,counter[11:9]}));
  LUT4 #(
    .INIT(16'hFB08)) 
    prev_DRS4_DWRITEn_i_1
       (.I0(i_DRS4_DWRITEn),
        .I1(prev_trigger_st),
        .I2(i_rst),
        .I3(prev_DRS4_DWRITEn),
        .O(prev_DRS4_DWRITEn_i_1_n_0));
  FDRE prev_DRS4_DWRITEn_reg
       (.C(i_data_clk),
        .CE(1'b1),
        .D(prev_DRS4_DWRITEn_i_1_n_0),
        .Q(prev_DRS4_DWRITEn),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F80)) 
    prev_post_trigger_sample_i_1
       (.I0(read_proc_st[3]),
        .I1(p_0_in11_in),
        .I2(prev_post_trigger_sample),
        .I3(prev_post_trigger_sample_reg_n_0),
        .O(prev_post_trigger_sample_i_1_n_0));
  LUT5 #(
    .INIT(32'h00028002)) 
    prev_post_trigger_sample_i_2
       (.I0(read_proc_st[0]),
        .I1(read_proc_st[3]),
        .I2(read_proc_st[2]),
        .I3(read_proc_st[1]),
        .I4(o_rd_fifo_en),
        .O(prev_post_trigger_sample));
  FDCE #(
    .INIT(1'b0)) 
    prev_post_trigger_sample_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(prev_post_trigger_sample_i_1_n_0),
        .Q(prev_post_trigger_sample_reg_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    prev_trigger_st_i_1
       (.I0(i_trigger),
        .I1(prev_trigger_st),
        .I2(i_rst),
        .I3(prev_trigger_st_reg_n_0),
        .O(prev_trigger_st_i_1_n_0));
  FDRE prev_trigger_st_reg
       (.C(i_data_clk),
        .CE(1'b1),
        .D(prev_trigger_st_i_1_n_0),
        .Q(prev_trigger_st_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000888800002220)) 
    rd_fifo_en_i_1
       (.I0(rd_fifo_en_i_2_n_0),
        .I1(read_proc_st[3]),
        .I2(ltOp),
        .I3(busy_reg_n_0),
        .I4(i_rd_fifo_empty),
        .I5(read_proc_st[2]),
        .O(rd_fifo_en));
  LUT3 #(
    .INIT(8'h42)) 
    rd_fifo_en_i_2
       (.I0(read_proc_st[0]),
        .I1(read_proc_st[1]),
        .I2(read_proc_st[2]),
        .O(rd_fifo_en_i_2_n_0));
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_EN" *) 
  FDCE rd_fifo_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(rd_fifo_en),
        .Q(o_rd_fifo_en));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \readout_sample_counter[0]_i_1 
       (.I0(\readout_sample_counter_reg_n_0_[0] ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \readout_sample_counter[10]_i_1 
       (.I0(i_rst),
        .I1(read_proc_st[0]),
        .I2(read_proc_st[2]),
        .I3(read_proc_st[1]),
        .I4(read_proc_st[3]),
        .O(\readout_sample_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040030000)) 
    \readout_sample_counter[10]_i_2 
       (.I0(o_rd_fifo_en),
        .I1(read_proc_st[1]),
        .I2(read_proc_st[2]),
        .I3(read_proc_st[3]),
        .I4(read_proc_st[0]),
        .I5(i_rst),
        .O(\readout_sample_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[10]_i_3 
       (.I0(\readout_sample_counter_reg[10]_i_4_n_6 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF300FFFFAAAAAAAA)) 
    \readout_sample_counter[11]_i_1 
       (.I0(\readout_sample_counter_reg_n_0_[11] ),
        .I1(p_0_in11_in),
        .I2(prev_post_trigger_sample_reg_n_0),
        .I3(\readout_sample_counter_reg[10]_i_4_n_5 ),
        .I4(read_proc_st[1]),
        .I5(\readout_sample_counter[10]_i_2_n_0 ),
        .O(\readout_sample_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[1]_i_1 
       (.I0(\readout_sample_counter_reg[4]_i_2_n_7 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[2]_i_1 
       (.I0(\readout_sample_counter_reg[4]_i_2_n_6 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[3]_i_1 
       (.I0(\readout_sample_counter_reg[4]_i_2_n_5 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[4]_i_1 
       (.I0(\readout_sample_counter_reg[4]_i_2_n_4 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[5]_i_1 
       (.I0(\readout_sample_counter_reg[8]_i_2_n_7 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[6]_i_1 
       (.I0(\readout_sample_counter_reg[8]_i_2_n_6 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[7]_i_1 
       (.I0(\readout_sample_counter_reg[8]_i_2_n_5 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[8]_i_1 
       (.I0(\readout_sample_counter_reg[8]_i_2_n_4 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \readout_sample_counter[9]_i_1 
       (.I0(\readout_sample_counter_reg[10]_i_4_n_7 ),
        .I1(prev_post_trigger_sample_reg_n_0),
        .I2(p_0_in11_in),
        .O(\readout_sample_counter[9]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[0] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[0]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[0] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[10] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[10]_i_3_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[10] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  CARRY4 \readout_sample_counter_reg[10]_i_4 
       (.CI(\readout_sample_counter_reg[8]_i_2_n_0 ),
        .CO({\NLW_readout_sample_counter_reg[10]_i_4_CO_UNCONNECTED [3:2],\readout_sample_counter_reg[10]_i_4_n_2 ,\readout_sample_counter_reg[10]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_readout_sample_counter_reg[10]_i_4_O_UNCONNECTED [3],\readout_sample_counter_reg[10]_i_4_n_5 ,\readout_sample_counter_reg[10]_i_4_n_6 ,\readout_sample_counter_reg[10]_i_4_n_7 }),
        .S({1'b0,\readout_sample_counter_reg_n_0_[11] ,\readout_sample_counter_reg_n_0_[10] ,\readout_sample_counter_reg_n_0_[9] }));
  FDRE \readout_sample_counter_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\readout_sample_counter[11]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \readout_sample_counter_reg[1] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[1]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[1] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[2] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[2]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[2] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[3] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[3]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[3] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[4] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[4]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[4] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  CARRY4 \readout_sample_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\readout_sample_counter_reg[4]_i_2_n_0 ,\readout_sample_counter_reg[4]_i_2_n_1 ,\readout_sample_counter_reg[4]_i_2_n_2 ,\readout_sample_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\readout_sample_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readout_sample_counter_reg[4]_i_2_n_4 ,\readout_sample_counter_reg[4]_i_2_n_5 ,\readout_sample_counter_reg[4]_i_2_n_6 ,\readout_sample_counter_reg[4]_i_2_n_7 }),
        .S({\readout_sample_counter_reg_n_0_[4] ,\readout_sample_counter_reg_n_0_[3] ,\readout_sample_counter_reg_n_0_[2] ,\readout_sample_counter_reg_n_0_[1] }));
  FDRE \readout_sample_counter_reg[5] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[5]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[5] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[6] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[6]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[6] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[7] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[7]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[7] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  FDRE \readout_sample_counter_reg[8] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[8]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[8] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  CARRY4 \readout_sample_counter_reg[8]_i_2 
       (.CI(\readout_sample_counter_reg[4]_i_2_n_0 ),
        .CO({\readout_sample_counter_reg[8]_i_2_n_0 ,\readout_sample_counter_reg[8]_i_2_n_1 ,\readout_sample_counter_reg[8]_i_2_n_2 ,\readout_sample_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\readout_sample_counter_reg[8]_i_2_n_4 ,\readout_sample_counter_reg[8]_i_2_n_5 ,\readout_sample_counter_reg[8]_i_2_n_6 ,\readout_sample_counter_reg[8]_i_2_n_7 }),
        .S({\readout_sample_counter_reg_n_0_[8] ,\readout_sample_counter_reg_n_0_[7] ,\readout_sample_counter_reg_n_0_[6] ,\readout_sample_counter_reg_n_0_[5] }));
  FDRE \readout_sample_counter_reg[9] 
       (.C(sys_clk),
        .CE(\readout_sample_counter[10]_i_2_n_0 ),
        .D(\readout_sample_counter[9]_i_1_n_0 ),
        .Q(\readout_sample_counter_reg_n_0_[9] ),
        .R(\readout_sample_counter[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    send_data_i_1
       (.I0(send_data_i_2_n_0),
        .I1(send_data_i_3_n_0),
        .I2(read_proc_st[2]),
        .I3(send_data_reg_n_0),
        .O(send_data_i_1_n_0));
  LUT6 #(
    .INIT(64'h11331133332A3320)) 
    send_data_i_2
       (.I0(read_proc_st[2]),
        .I1(send_data1__0),
        .I2(read_proc_st[0]),
        .I3(read_proc_st[3]),
        .I4(i_stop_cell_ready),
        .I5(read_proc_st[1]),
        .O(send_data_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    send_data_i_3
       (.I0(i_stop_cell_ready),
        .I1(read_proc_st[3]),
        .I2(read_proc_st[0]),
        .I3(read_proc_st[1]),
        .O(send_data_i_3_n_0));
  FDCE send_data_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(send_data_i_1_n_0),
        .Q(send_data_reg_n_0));
  LUT5 #(
    .INIT(32'hAAFFAAFC)) 
    sending_data_i_1
       (.I0(sending_data_reg_n_0),
        .I1(read_proc_st[1]),
        .I2(read_proc_st[3]),
        .I3(i_rst),
        .I4(read_proc_st[2]),
        .O(sending_data_i_1_n_0));
  FDRE sending_data_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(sending_data_i_1_n_0),
        .Q(sending_data_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0E0FFE0F0E0F0E0)) 
    wr_fifo_en_i_1
       (.I0(wr_fifo_en110_out),
        .I1(wr_fifo_en18_out),
        .I2(prev_trigger_st),
        .I3(\FSM_onehot_ro_proc_st[3]_i_4_n_0 ),
        .I4(eqOp),
        .I5(\FSM_onehot_ro_proc_st_reg_n_0_[3] ),
        .O(wr_fifo_en));
  FDCE wr_fifo_en_reg
       (.C(i_data_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(wr_fifo_en),
        .Q(wr_fifo_en_reg_n_0));
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
