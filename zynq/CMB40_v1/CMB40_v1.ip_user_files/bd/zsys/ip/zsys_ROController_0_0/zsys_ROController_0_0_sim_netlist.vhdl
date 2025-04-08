-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Aug 21 12:20:44 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/victo/Desktop/Vivados/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_ROController_0_0/zsys_ROController_0_0_sim_netlist.vhdl
-- Design      : zsys_ROController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_ROController_0_0_ROController is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_read_proc_st_debug_states[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_rd_fifo_en : out STD_LOGIC;
    o_ascii : out STD_LOGIC_VECTOR ( 6 downto 0 );
    o_busy : out STD_LOGIC;
    o_wr_fifo_data : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_wr_fifo_en : out STD_LOGIC;
    o_ro_proc_st_debug_states : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_outfifo_wr_en : out STD_LOGIC;
    o_trig_RO_end : out STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_wr_fifo_full : in STD_LOGIC;
    i_veto : in STD_LOGIC;
    i_stop_cell_ready : in STD_LOGIC;
    i_stop_cell : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_trigger : in STD_LOGIC;
    i_DRS4_DWRITEn : in STD_LOGIC;
    i_data_clk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    i_post_trig_wind : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rd_fifo_data : in STD_LOGIC_VECTOR ( 96 downto 0 );
    i_rd_fifo_empty : in STD_LOGIC;
    i_next_fifo_full : in STD_LOGIC;
    i_pre_trig_wind : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_rd_data_count : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_ROController_0_0_ROController : entity is "ROController";
end zsys_ROController_0_0_ROController;

architecture STRUCTURE of zsys_ROController_0_0_ROController is
  signal DRS4_trigger_type_i_1_n_0 : STD_LOGIC;
  signal DRS4_trigger_type_reg_n_0 : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ro_proc_st_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_ro_proc_st_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_ro_proc_st_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_ro_proc_st_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_ro_proc_st_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_ro_proc_st_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_sequential_read_proc_st[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_proc_st[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_proc_st[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_proc_st[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_proc_st[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_proc_st[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_send_proc_st[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_send_proc_st[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_send_proc_st[2]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal busy : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal busy_i_2_n_0 : STD_LOGIC;
  signal busy_reg_n_0 : STD_LOGIC;
  signal cnt_limit : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \cnt_limit[11]_i_1_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal data_sent_i_1_n_0 : STD_LOGIC;
  signal data_sent_reg_n_0 : STD_LOGIC;
  signal data_to_send : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal data_to_send0 : STD_LOGIC;
  signal \data_to_send[0]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_16_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_17_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_18_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[10]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[11]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[14]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_16_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[16]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_16_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[17]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[18]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[19]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_17_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_18_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_19_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_20_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_21_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[20]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[22]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[2]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[3]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_16_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[6]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_16_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_17_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_18_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[8]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_11_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_12_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_13_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_14_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_15_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_16_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_17_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_18_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_19_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send[9]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[16]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[16]_i_8_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[22]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[22]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[22]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_to_send_reg[8]_i_9_n_0\ : STD_LOGIC;
  signal \data_to_send_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_to_send_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_to_send_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_to_send_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_to_send_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_to_send_reg_n_0_[6]\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal evcounter0 : STD_LOGIC;
  signal \evcounter[0]_i_2_n_0\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \evcounter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \evcounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \evcounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \evcounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \evcounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \evcounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \evcounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \evcounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \evcounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[10]\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[11]\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[8]\ : STD_LOGIC;
  signal \evcounter_reg_n_0_[9]\ : STD_LOGIC;
  signal fifo_data0 : STD_LOGIC;
  signal \fifo_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[53]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[57]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[58]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[59]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[60]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[61]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[62]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[63]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[64]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[65]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[66]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[67]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[68]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[69]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[70]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[71]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[72]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[73]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[74]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[75]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[76]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[77]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[78]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[79]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[80]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[81]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[82]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[83]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[84]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[85]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[86]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[87]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[88]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[89]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[90]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[91]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[92]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[93]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[94]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[95]\ : STD_LOGIC;
  signal \fifo_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal in2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal in3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal in4 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ltOp : STD_LOGIC;
  signal \ltOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ltOp_carry__0_n_3\ : STD_LOGIC;
  signal ltOp_carry_i_1_n_0 : STD_LOGIC;
  signal ltOp_carry_i_2_n_0 : STD_LOGIC;
  signal ltOp_carry_i_3_n_0 : STD_LOGIC;
  signal ltOp_carry_i_4_n_0 : STD_LOGIC;
  signal ltOp_carry_i_5_n_0 : STD_LOGIC;
  signal ltOp_carry_i_6_n_0 : STD_LOGIC;
  signal ltOp_carry_i_7_n_0 : STD_LOGIC;
  signal ltOp_carry_i_8_n_0 : STD_LOGIC;
  signal ltOp_carry_n_0 : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal o_ascii0 : STD_LOGIC;
  signal \o_ascii[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_ascii[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_ascii[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_ascii[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_ascii[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_ascii[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_ascii[6]_i_2_n_0\ : STD_LOGIC;
  signal \^o_outfifo_wr_en\ : STD_LOGIC;
  signal \^o_rd_fifo_en\ : STD_LOGIC;
  signal \^o_read_proc_st_debug_states[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \^o_read_proc_st_debug_states[3]\ : signal is "yes";
  signal \^o_trig_ro_end\ : STD_LOGIC;
  signal o_trig_RO_end_i_1_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal outfifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal prev_DRS4_DWRITEn : STD_LOGIC;
  signal prev_DRS4_DWRITEn_i_1_n_0 : STD_LOGIC;
  signal prev_post_trigger_sample : STD_LOGIC;
  signal prev_post_trigger_sample_i_1_n_0 : STD_LOGIC;
  signal prev_post_trigger_sample_reg_n_0 : STD_LOGIC;
  signal prev_trigger_st : STD_LOGIC;
  attribute RTL_KEEP of prev_trigger_st : signal is "yes";
  signal prev_trigger_st_i_1_n_0 : STD_LOGIC;
  signal prev_trigger_st_reg_n_0 : STD_LOGIC;
  signal rd_fifo_en : STD_LOGIC;
  signal rd_fifo_en_i_2_n_0 : STD_LOGIC;
  signal readout_sample_counter0 : STD_LOGIC;
  signal \readout_sample_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \readout_sample_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \readout_sample_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \readout_sample_counter_reg[10]_i_3_n_2\ : STD_LOGIC;
  signal \readout_sample_counter_reg[10]_i_3_n_3\ : STD_LOGIC;
  signal \readout_sample_counter_reg[10]_i_3_n_5\ : STD_LOGIC;
  signal \readout_sample_counter_reg[10]_i_3_n_6\ : STD_LOGIC;
  signal \readout_sample_counter_reg[10]_i_3_n_7\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \readout_sample_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \readout_sample_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \readout_sample_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal send_data_i_1_n_0 : STD_LOGIC;
  signal send_data_i_2_n_0 : STD_LOGIC;
  signal send_data_i_3_n_0 : STD_LOGIC;
  signal send_data_i_4_n_0 : STD_LOGIC;
  signal send_data_reg_n_0 : STD_LOGIC;
  signal send_proc_st : STD_LOGIC;
  signal \send_proc_st[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_proc_st[1]_i_1_n_0\ : STD_LOGIC;
  signal \send_proc_st[2]_i_2_n_0\ : STD_LOGIC;
  signal \send_proc_st__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \send_proc_st__0\ : signal is "yes";
  signal sending_data_i_1_n_0 : STD_LOGIC;
  signal sending_data_reg_n_0 : STD_LOGIC;
  signal wr_fifo_en : STD_LOGIC;
  signal wr_fifo_en_reg_n_0 : STD_LOGIC;
  signal \NLW_counter_reg[11]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[11]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_evcounter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ltOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_readout_sample_counter_reg[10]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_readout_sample_counter_reg[10]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_ro_proc_st[3]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_ro_proc_st_reg[0]\ : label is "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_ro_proc_st_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ro_proc_st_reg[1]\ : label is "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000";
  attribute KEEP of \FSM_onehot_ro_proc_st_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ro_proc_st_reg[2]\ : label is "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000";
  attribute KEEP of \FSM_onehot_ro_proc_st_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ro_proc_st_reg[3]\ : label is "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000";
  attribute KEEP of \FSM_onehot_ro_proc_st_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ro_proc_st_reg[4]\ : label is "reset:00001,recording:00100,end_dly:10000,idle:00010,trig:01000";
  attribute KEEP of \FSM_onehot_ro_proc_st_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_read_proc_st_reg[0]\ : label is "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101";
  attribute KEEP of \FSM_sequential_read_proc_st_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_read_proc_st_reg[1]\ : label is "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101";
  attribute KEEP of \FSM_sequential_read_proc_st_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_read_proc_st_reg[2]\ : label is "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101";
  attribute KEEP of \FSM_sequential_read_proc_st_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_read_proc_st_reg[3]\ : label is "ev_header:0011,roi:0100,data7:1101,new_ev_header:0010,data5:1011,data6:1100,data4:1010,idle:0001,reset:0000,data3:1001,data1:0111,data2:1000,data0:0110,read_next:1111,next_sample:1110,sample_header:0101";
  attribute KEEP of \FSM_sequential_read_proc_st_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_send_proc_st_reg[0]\ : label is "reset:000,idle:001,byte0:010,byte1:011,byte2:100,byte3:101,ending:110,";
  attribute KEEP of \FSM_sequential_send_proc_st_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_send_proc_st_reg[1]\ : label is "reset:000,idle:001,byte0:010,byte1:011,byte2:100,byte3:101,ending:110,";
  attribute KEEP of \FSM_sequential_send_proc_st_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_send_proc_st_reg[2]\ : label is "reset:000,idle:001,byte0:010,byte1:011,byte2:100,byte3:101,ending:110,";
  attribute KEEP of \FSM_sequential_send_proc_st_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \data_to_send[0]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_to_send[10]_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_to_send[11]_i_12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_to_send[11]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_to_send[11]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_to_send[11]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_to_send[11]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_to_send[14]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_to_send[14]_i_13\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_to_send[14]_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_to_send[14]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_to_send[16]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_to_send[16]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_to_send[16]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_to_send[18]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_to_send[19]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_to_send[19]_i_12\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_to_send[19]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_to_send[1]_i_17\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_to_send[22]_i_11\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_to_send[2]_i_8\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_to_send[2]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_to_send[3]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_to_send[3]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_to_send[3]_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of o_busy_INST_0 : label is "soft_lutpair0";
  attribute x_interface_info : string;
  attribute x_interface_info of rd_fifo_en_reg : label is "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_EN";
  attribute SOFT_HLUTNM of \readout_sample_counter[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \send_proc_st[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \send_proc_st[2]_i_2\ : label is "soft_lutpair9";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  o_outfifo_wr_en <= \^o_outfifo_wr_en\;
  o_rd_fifo_en <= \^o_rd_fifo_en\;
  \o_read_proc_st_debug_states[3]\(3 downto 0) <= \^o_read_proc_st_debug_states[3]\(3 downto 0);
  o_trig_RO_end <= \^o_trig_ro_end\;
  \out\(0) <= \^out\(0);
DRS4_trigger_type_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000D00"
    )
        port map (
      I0 => i_trigger,
      I1 => prev_trigger_st_reg_n_0,
      I2 => i_DRS4_DWRITEn,
      I3 => prev_DRS4_DWRITEn,
      I4 => i_wr_fifo_full,
      O => DRS4_trigger_type_i_1_n_0
    );
DRS4_trigger_type_reg: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => DRS4_trigger_type_i_1_n_0,
      Q => DRS4_trigger_type_reg_n_0,
      R => '0'
    );
\FSM_onehot_ro_proc_st[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFFEFEE"
    )
        port map (
      I0 => \FSM_onehot_ro_proc_st_reg_n_0_[0]\,
      I1 => \^out\(0),
      I2 => eqOp,
      I3 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I4 => \FSM_onehot_ro_proc_st[1]_i_2_n_0\,
      I5 => \FSM_onehot_ro_proc_st[3]_i_3_n_0\,
      O => \FSM_onehot_ro_proc_st[1]_i_1_n_0\
    );
\FSM_onehot_ro_proc_st[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => prev_trigger_st,
      I1 => \FSM_onehot_ro_proc_st[3]_i_2_n_0\,
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[1]\,
      O => \FSM_onehot_ro_proc_st[1]_i_2_n_0\
    );
\FSM_onehot_ro_proc_st[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \FSM_onehot_ro_proc_st_reg_n_0_[1]\,
      I1 => \FSM_onehot_ro_proc_st[3]_i_2_n_0\,
      I2 => prev_trigger_st,
      I3 => \FSM_onehot_ro_proc_st[3]_i_3_n_0\,
      O => \FSM_onehot_ro_proc_st[2]_i_1_n_0\
    );
\FSM_onehot_ro_proc_st[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F44444"
    )
        port map (
      I0 => \FSM_onehot_ro_proc_st[3]_i_2_n_0\,
      I1 => prev_trigger_st,
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => \FSM_onehot_ro_proc_st[3]_i_3_n_0\,
      O => busy
    );
\FSM_onehot_ro_proc_st[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFB0BB"
    )
        port map (
      I0 => i_DRS4_DWRITEn,
      I1 => prev_DRS4_DWRITEn,
      I2 => prev_trigger_st_reg_n_0,
      I3 => i_trigger,
      I4 => i_wr_fifo_full,
      O => \FSM_onehot_ro_proc_st[3]_i_2_n_0\
    );
\FSM_onehot_ro_proc_st[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5501"
    )
        port map (
      I0 => i_wr_fifo_full,
      I1 => sending_data_reg_n_0,
      I2 => i_veto,
      I3 => busy_reg_n_0,
      O => \FSM_onehot_ro_proc_st[3]_i_3_n_0\
    );
\FSM_onehot_ro_proc_st[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_ro_proc_st[4]_i_3_n_0\,
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[0]\,
      I3 => \FSM_onehot_ro_proc_st_reg_n_0_[1]\,
      I4 => prev_trigger_st,
      I5 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      O => \FSM_onehot_ro_proc_st[4]_i_1_n_0\
    );
\FSM_onehot_ro_proc_st[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => eqOp,
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      O => \FSM_onehot_ro_proc_st[4]_i_2_n_0\
    );
\FSM_onehot_ro_proc_st[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_ro_proc_st[4]_i_4_n_0\,
      I1 => counter(11),
      I2 => counter(5),
      I3 => counter(10),
      I4 => counter(4),
      I5 => \FSM_onehot_ro_proc_st[4]_i_5_n_0\,
      O => \FSM_onehot_ro_proc_st[4]_i_3_n_0\
    );
\FSM_onehot_ro_proc_st[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => counter(1),
      I2 => counter(6),
      I3 => counter(3),
      O => \FSM_onehot_ro_proc_st[4]_i_4_n_0\
    );
\FSM_onehot_ro_proc_st[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => counter(0),
      I1 => counter(8),
      I2 => counter(9),
      I3 => counter(7),
      O => \FSM_onehot_ro_proc_st[4]_i_5_n_0\
    );
\FSM_onehot_ro_proc_st_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \FSM_onehot_ro_proc_st[4]_i_1_n_0\,
      D => '0',
      PRE => i_rst,
      Q => \FSM_onehot_ro_proc_st_reg_n_0_[0]\
    );
\FSM_onehot_ro_proc_st_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_data_clk,
      CE => \FSM_onehot_ro_proc_st[4]_i_1_n_0\,
      CLR => i_rst,
      D => \FSM_onehot_ro_proc_st[1]_i_1_n_0\,
      Q => \FSM_onehot_ro_proc_st_reg_n_0_[1]\
    );
\FSM_onehot_ro_proc_st_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \FSM_onehot_ro_proc_st[4]_i_1_n_0\,
      CLR => i_rst,
      D => \FSM_onehot_ro_proc_st[2]_i_1_n_0\,
      Q => prev_trigger_st
    );
\FSM_onehot_ro_proc_st_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \FSM_onehot_ro_proc_st[4]_i_1_n_0\,
      CLR => i_rst,
      D => busy,
      Q => \FSM_onehot_ro_proc_st_reg_n_0_[3]\
    );
\FSM_onehot_ro_proc_st_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \FSM_onehot_ro_proc_st[4]_i_1_n_0\,
      CLR => i_rst,
      D => \FSM_onehot_ro_proc_st[4]_i_2_n_0\,
      Q => \^out\(0)
    );
\FSM_sequential_read_proc_st[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B5B55555555F5555"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => i_rd_fifo_empty,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => DRS4_trigger_type_reg_n_0,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(2),
      O => \FSM_sequential_read_proc_st[0]_i_1_n_0\
    );
\FSM_sequential_read_proc_st[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF00"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => i_rd_fifo_empty,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      O => \FSM_sequential_read_proc_st[1]_i_1_n_0\
    );
\FSM_sequential_read_proc_st[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF70F0F0"
    )
        port map (
      I0 => i_rd_fifo_empty,
      I1 => \^o_read_proc_st_debug_states[3]\(3),
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      O => \FSM_sequential_read_proc_st[2]_i_1_n_0\
    );
\FSM_sequential_read_proc_st[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888888F08888880"
    )
        port map (
      I0 => send_data_reg_n_0,
      I1 => data_sent_reg_n_0,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \FSM_sequential_read_proc_st[3]_i_3_n_0\,
      O => \FSM_sequential_read_proc_st[3]_i_1_n_0\
    );
\FSM_sequential_read_proc_st[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCC4CCC"
    )
        port map (
      I0 => i_rd_fifo_empty,
      I1 => \^o_read_proc_st_debug_states[3]\(3),
      I2 => \^o_read_proc_st_debug_states[3]\(1),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \FSM_sequential_read_proc_st[3]_i_2_n_0\
    );
\FSM_sequential_read_proc_st[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F4FFF4F"
    )
        port map (
      I0 => i_rd_fifo_empty,
      I1 => busy_reg_n_0,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(3),
      I4 => \^o_rd_fifo_en\,
      O => \FSM_sequential_read_proc_st[3]_i_3_n_0\
    );
\FSM_sequential_read_proc_st_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => \FSM_sequential_read_proc_st[3]_i_1_n_0\,
      CLR => i_rst,
      D => \FSM_sequential_read_proc_st[0]_i_1_n_0\,
      Q => \^o_read_proc_st_debug_states[3]\(0)
    );
\FSM_sequential_read_proc_st_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_sequential_read_proc_st[3]_i_1_n_0\,
      CLR => i_rst,
      D => \FSM_sequential_read_proc_st[1]_i_1_n_0\,
      Q => \^o_read_proc_st_debug_states[3]\(1)
    );
\FSM_sequential_read_proc_st_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_sequential_read_proc_st[3]_i_1_n_0\,
      CLR => i_rst,
      D => \FSM_sequential_read_proc_st[2]_i_1_n_0\,
      Q => \^o_read_proc_st_debug_states[3]\(2)
    );
\FSM_sequential_read_proc_st_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => \FSM_sequential_read_proc_st[3]_i_1_n_0\,
      CLR => i_rst,
      D => \FSM_sequential_read_proc_st[3]_i_2_n_0\,
      Q => \^o_read_proc_st_debug_states[3]\(3)
    );
\FSM_sequential_send_proc_st[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \send_proc_st__0\(0),
      O => \FSM_sequential_send_proc_st[0]_i_1_n_0\
    );
\FSM_sequential_send_proc_st[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \send_proc_st__0\(0),
      I1 => \send_proc_st__0\(1),
      I2 => \send_proc_st__0\(2),
      O => \FSM_sequential_send_proc_st[1]_i_1_n_0\
    );
\FSM_sequential_send_proc_st[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => \send_proc_st__0\(2),
      I1 => \send_proc_st__0\(1),
      I2 => \send_proc_st__0\(0),
      O => \FSM_sequential_send_proc_st[2]_i_1_n_0\
    );
\FSM_sequential_send_proc_st_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => send_proc_st,
      CLR => i_rst,
      D => \FSM_sequential_send_proc_st[0]_i_1_n_0\,
      Q => \send_proc_st__0\(0)
    );
\FSM_sequential_send_proc_st_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => send_proc_st,
      CLR => i_rst,
      D => \FSM_sequential_send_proc_st[1]_i_1_n_0\,
      Q => \send_proc_st__0\(1)
    );
\FSM_sequential_send_proc_st_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => send_proc_st,
      CLR => i_rst,
      D => \FSM_sequential_send_proc_st[2]_i_1_n_0\,
      Q => \send_proc_st__0\(2)
    );
busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAA0000AEAA"
    )
        port map (
      I0 => busy_i_2_n_0,
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I2 => eqOp,
      I3 => \FSM_onehot_ro_proc_st[3]_i_3_n_0\,
      I4 => i_rst,
      I5 => busy_reg_n_0,
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002022220020"
    )
        port map (
      I0 => prev_trigger_st,
      I1 => i_wr_fifo_full,
      I2 => i_trigger,
      I3 => prev_trigger_st_reg_n_0,
      I4 => prev_DRS4_DWRITEn,
      I5 => i_DRS4_DWRITEn,
      O => busy_i_2_n_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy_reg_n_0,
      R => '0'
    );
\cnt_limit[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404000404"
    )
        port map (
      I0 => i_rst,
      I1 => prev_trigger_st,
      I2 => \FSM_onehot_ro_proc_st[3]_i_2_n_0\,
      I3 => prev_trigger_st_reg_n_0,
      I4 => i_trigger,
      I5 => i_wr_fifo_full,
      O => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => i_rst,
      I1 => prev_trigger_st,
      I2 => \FSM_onehot_ro_proc_st[3]_i_2_n_0\,
      O => evcounter0
    );
\cnt_limit_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(0),
      Q => cnt_limit(0),
      S => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(10),
      Q => cnt_limit(10),
      S => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(11),
      Q => cnt_limit(11),
      R => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(1),
      Q => cnt_limit(1),
      S => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(2),
      Q => cnt_limit(2),
      S => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(3),
      Q => cnt_limit(3),
      S => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(4),
      Q => cnt_limit(4),
      R => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(5),
      Q => cnt_limit(5),
      R => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(6),
      Q => cnt_limit(6),
      R => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(7),
      Q => cnt_limit(7),
      R => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(8),
      Q => cnt_limit(8),
      R => \cnt_limit[11]_i_1_n_0\
    );
\cnt_limit_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => evcounter0,
      D => i_post_trig_wind(9),
      Q => cnt_limit(9),
      R => \cnt_limit[11]_i_1_n_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => counter(0),
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I2 => eqOp,
      I3 => \^out\(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(10),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(10),
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA800"
    )
        port map (
      I0 => \counter[11]_i_4_n_0\,
      I1 => \FSM_onehot_ro_proc_st[3]_i_3_n_0\,
      I2 => eqOp,
      I3 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I4 => \^out\(0),
      I5 => i_rst,
      O => \counter[11]_i_1_n_0\
    );
\counter[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54545444"
    )
        port map (
      I0 => i_rst,
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => \FSM_onehot_ro_proc_st[3]_i_3_n_0\,
      O => \counter[11]_i_2_n_0\
    );
\counter[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(11),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(11),
      O => \counter[11]_i_3_n_0\
    );
\counter[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_ro_proc_st_reg_n_0_[0]\,
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[1]\,
      I2 => prev_trigger_st,
      O => \counter[11]_i_4_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(1),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(2),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(3),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(3),
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(4),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(4),
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(5),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(5),
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(6),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(6),
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(7),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(8),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(8),
      O => \counter[8]_i_1_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88888"
    )
        port map (
      I0 => in12(9),
      I1 => \^out\(0),
      I2 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I3 => eqOp,
      I4 => plusOp(9),
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[10]_i_1_n_0\,
      Q => counter(10),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[11]_i_3_n_0\,
      Q => counter(11),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[11]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[11]_i_5_n_2\,
      CO(0) => \counter_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[11]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => counter(11 downto 9)
    );
\counter_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg_n_0_[2]\,
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[3]_i_1_n_0\,
      Q => counter(3),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_2_n_0\,
      CO(2) => \counter_reg[4]_i_2_n_1\,
      CO(1) => \counter_reg[4]_i_2_n_2\,
      CO(0) => \counter_reg[4]_i_2_n_3\,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 2) => counter(4 downto 3),
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => counter(1)
    );
\counter_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[5]_i_1_n_0\,
      Q => counter(5),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[6]_i_1_n_0\,
      Q => counter(6),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[7]_i_1_n_0\,
      Q => counter(7),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[8]_i_1_n_0\,
      Q => counter(8),
      S => \counter[11]_i_1_n_0\
    );
\counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_2_n_0\,
      CO(3) => \counter_reg[8]_i_2_n_0\,
      CO(2) => \counter_reg[8]_i_2_n_1\,
      CO(1) => \counter_reg[8]_i_2_n_2\,
      CO(0) => \counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_data_clk,
      CE => \counter[11]_i_2_n_0\,
      D => \counter[9]_i_1_n_0\,
      Q => counter(9),
      S => \counter[11]_i_1_n_0\
    );
data_sent_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF004000000040"
    )
        port map (
      I0 => \send_proc_st__0\(1),
      I1 => \send_proc_st__0\(2),
      I2 => \send_proc_st__0\(0),
      I3 => i_next_fifo_full,
      I4 => i_rst,
      I5 => data_sent_reg_n_0,
      O => data_sent_i_1_n_0
    );
data_sent_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => data_sent_i_1_n_0,
      Q => data_sent_reg_n_0,
      R => '0'
    );
\data_to_send[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send[0]_i_2_n_0\,
      I1 => \data_to_send_reg[0]_i_3_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \data_to_send_reg[0]_i_4_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \data_to_send[0]_i_5_n_0\,
      O => data_to_send(0)
    );
\data_to_send[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[26]\,
      I1 => \fifo_data_reg_n_0_[25]\,
      I2 => \fifo_data_reg_n_0_[27]\,
      I3 => \fifo_data_reg_n_0_[24]\,
      O => \data_to_send[0]_i_11_n_0\
    );
\data_to_send[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[38]\,
      I1 => \fifo_data_reg_n_0_[37]\,
      I2 => \fifo_data_reg_n_0_[39]\,
      I3 => \fifo_data_reg_n_0_[36]\,
      O => \data_to_send[0]_i_12_n_0\
    );
\data_to_send[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[50]\,
      I1 => \fifo_data_reg_n_0_[49]\,
      I2 => \fifo_data_reg_n_0_[51]\,
      I3 => \fifo_data_reg_n_0_[48]\,
      O => \data_to_send[0]_i_13_n_0\
    );
\data_to_send[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[62]\,
      I1 => \fifo_data_reg_n_0_[61]\,
      I2 => \fifo_data_reg_n_0_[63]\,
      I3 => \fifo_data_reg_n_0_[60]\,
      O => \data_to_send[0]_i_14_n_0\
    );
\data_to_send[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => i_stop_cell(2),
      I1 => i_stop_cell(1),
      I2 => i_stop_cell(3),
      I3 => i_stop_cell(0),
      O => \data_to_send[0]_i_15_n_0\
    );
\data_to_send[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[2]\,
      I1 => \readout_sample_counter_reg_n_0_[1]\,
      I2 => \readout_sample_counter_reg_n_0_[3]\,
      I3 => \readout_sample_counter_reg_n_0_[0]\,
      O => \data_to_send[0]_i_16_n_0\
    );
\data_to_send[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[2]\,
      I1 => \fifo_data_reg_n_0_[1]\,
      I2 => \fifo_data_reg_n_0_[3]\,
      I3 => \fifo_data_reg_n_0_[0]\,
      O => \data_to_send[0]_i_17_n_0\
    );
\data_to_send[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[14]\,
      I1 => \fifo_data_reg_n_0_[13]\,
      I2 => \fifo_data_reg_n_0_[15]\,
      I3 => \fifo_data_reg_n_0_[12]\,
      O => \data_to_send[0]_i_18_n_0\
    );
\data_to_send[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0FFFF1FE00000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[85]\,
      I1 => \fifo_data_reg_n_0_[86]\,
      I2 => \fifo_data_reg_n_0_[87]\,
      I3 => \fifo_data_reg_n_0_[84]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[0]_i_6_n_0\,
      O => \data_to_send[0]_i_2_n_0\
    );
\data_to_send[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222A8880"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \evcounter_reg_n_0_[3]\,
      I2 => \evcounter_reg_n_0_[1]\,
      I3 => \evcounter_reg_n_0_[2]\,
      I4 => \evcounter_reg_n_0_[0]\,
      O => \data_to_send[0]_i_5_n_0\
    );
\data_to_send[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[73]\,
      I1 => \fifo_data_reg_n_0_[74]\,
      I2 => \fifo_data_reg_n_0_[75]\,
      I3 => \fifo_data_reg_n_0_[72]\,
      O => \data_to_send[0]_i_6_n_0\
    );
\data_to_send[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF44444444"
    )
        port map (
      I0 => \data_to_send[10]_i_2_n_0\,
      I1 => \data_to_send[10]_i_3_n_0\,
      I2 => \data_to_send[10]_i_4_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \data_to_send[10]_i_5_n_0\,
      I5 => \^o_read_proc_st_debug_states[3]\(3),
      O => data_to_send(10)
    );
\data_to_send[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54550000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \fifo_data_reg_n_0_[77]\,
      I2 => \fifo_data_reg_n_0_[76]\,
      I3 => \fifo_data_reg_n_0_[79]\,
      I4 => \fifo_data_reg_n_0_[78]\,
      O => \data_to_send[10]_i_10_n_0\
    );
\data_to_send[10]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[41]\,
      I1 => \fifo_data_reg_n_0_[43]\,
      I2 => \fifo_data_reg_n_0_[40]\,
      O => \data_to_send[10]_i_11_n_0\
    );
\data_to_send[10]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF04FF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[28]\,
      I1 => \fifo_data_reg_n_0_[31]\,
      I2 => \fifo_data_reg_n_0_[29]\,
      I3 => \fifo_data_reg_n_0_[30]\,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[10]_i_12_n_0\
    );
\data_to_send[10]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040004040"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \fifo_data_reg_n_0_[54]\,
      I3 => \fifo_data_reg_n_0_[53]\,
      I4 => \fifo_data_reg_n_0_[55]\,
      I5 => \fifo_data_reg_n_0_[52]\,
      O => \data_to_send[10]_i_13_n_0\
    );
\data_to_send[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[67]\,
      I1 => \fifo_data_reg_n_0_[64]\,
      I2 => \fifo_data_reg_n_0_[65]\,
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \fifo_data_reg_n_0_[66]\,
      O => \data_to_send[10]_i_14_n_0\
    );
\data_to_send[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004044444444"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => sel0(3),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => sel0(2),
      O => \data_to_send[10]_i_2_n_0\
    );
\data_to_send[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \data_to_send[10]_i_6_n_0\,
      I1 => \data_to_send[10]_i_7_n_0\,
      I2 => \data_to_send[10]_i_8_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \data_to_send[10]_i_9_n_0\,
      O => \data_to_send[10]_i_3_n_0\
    );
\data_to_send[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000777F7777"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \fifo_data_reg_n_0_[90]\,
      I2 => \fifo_data_reg_n_0_[89]\,
      I3 => \fifo_data_reg_n_0_[88]\,
      I4 => \fifo_data_reg_n_0_[91]\,
      I5 => \data_to_send[10]_i_10_n_0\,
      O => \data_to_send[10]_i_4_n_0\
    );
\data_to_send[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007F00"
    )
        port map (
      I0 => \data_to_send[10]_i_11_n_0\,
      I1 => \data_to_send[18]_i_8_n_0\,
      I2 => \fifo_data_reg_n_0_[42]\,
      I3 => \data_to_send[10]_i_12_n_0\,
      I4 => \data_to_send[10]_i_13_n_0\,
      I5 => \data_to_send[10]_i_14_n_0\,
      O => \data_to_send[10]_i_5_n_0\
    );
\data_to_send[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[7]\,
      I1 => \fifo_data_reg_n_0_[4]\,
      I2 => \fifo_data_reg_n_0_[5]\,
      I3 => \fifo_data_reg_n_0_[6]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[10]_i_6_n_0\
    );
\data_to_send[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB00"
    )
        port map (
      I0 => i_stop_cell(4),
      I1 => i_stop_cell(7),
      I2 => i_stop_cell(5),
      I3 => i_stop_cell(6),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[10]_i_7_n_0\
    );
\data_to_send[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EF0000000000"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[4]\,
      I1 => \readout_sample_counter_reg_n_0_[5]\,
      I2 => \readout_sample_counter_reg_n_0_[7]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \readout_sample_counter_reg_n_0_[6]\,
      O => \data_to_send[10]_i_8_n_0\
    );
\data_to_send[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[19]\,
      I1 => \fifo_data_reg_n_0_[16]\,
      I2 => \fifo_data_reg_n_0_[17]\,
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \fifo_data_reg_n_0_[18]\,
      O => \data_to_send[10]_i_9_n_0\
    );
\data_to_send[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F100F100F1FFF100"
    )
        port map (
      I0 => \data_to_send[11]_i_2_n_0\,
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \data_to_send[11]_i_3_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(3),
      I4 => \data_to_send[11]_i_4_n_0\,
      I5 => \data_to_send[11]_i_5_n_0\,
      O => data_to_send(11)
    );
\data_to_send[11]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \fifo_data_reg_n_0_[78]\,
      I3 => \fifo_data_reg_n_0_[77]\,
      I4 => \fifo_data_reg_n_0_[79]\,
      O => \data_to_send[11]_i_10_n_0\
    );
\data_to_send[11]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => i_stop_cell(5),
      I2 => i_stop_cell(6),
      I3 => i_stop_cell(7),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[11]_i_11_n_0\
    );
\data_to_send[11]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[19]\,
      I1 => \fifo_data_reg_n_0_[17]\,
      I2 => \fifo_data_reg_n_0_[18]\,
      O => \data_to_send[11]_i_12_n_0\
    );
\data_to_send[11]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[7]\,
      I1 => \fifo_data_reg_n_0_[5]\,
      I2 => \fifo_data_reg_n_0_[6]\,
      O => \data_to_send[11]_i_13_n_0\
    );
\data_to_send[11]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[5]\,
      I1 => \readout_sample_counter_reg_n_0_[6]\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \readout_sample_counter_reg_n_0_[7]\,
      O => \data_to_send[11]_i_14_n_0\
    );
\data_to_send[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send[11]_i_6_n_0\,
      I1 => \data_to_send[11]_i_7_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(1),
      I3 => \data_to_send[11]_i_8_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[11]_i_9_n_0\,
      O => \data_to_send[11]_i_2_n_0\
    );
\data_to_send[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[91]\,
      I1 => \fifo_data_reg_n_0_[89]\,
      I2 => \fifo_data_reg_n_0_[90]\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[11]_i_10_n_0\,
      O => \data_to_send[11]_i_3_n_0\
    );
\data_to_send[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF10FFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[11]_i_4_n_0\
    );
\data_to_send[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020AA2AAA"
    )
        port map (
      I0 => \data_to_send[11]_i_11_n_0\,
      I1 => \data_to_send[11]_i_12_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \data_to_send[11]_i_13_n_0\,
      I5 => \data_to_send[11]_i_14_n_0\,
      O => \data_to_send[11]_i_5_n_0\
    );
\data_to_send[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[67]\,
      I1 => \fifo_data_reg_n_0_[65]\,
      I2 => \fifo_data_reg_n_0_[66]\,
      O => \data_to_send[11]_i_6_n_0\
    );
\data_to_send[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[55]\,
      I1 => \fifo_data_reg_n_0_[53]\,
      I2 => \fifo_data_reg_n_0_[54]\,
      O => \data_to_send[11]_i_7_n_0\
    );
\data_to_send[11]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[43]\,
      I1 => \fifo_data_reg_n_0_[41]\,
      I2 => \fifo_data_reg_n_0_[42]\,
      O => \data_to_send[11]_i_8_n_0\
    );
\data_to_send[11]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[31]\,
      I1 => \fifo_data_reg_n_0_[29]\,
      I2 => \fifo_data_reg_n_0_[30]\,
      O => \data_to_send[11]_i_9_n_0\
    );
\data_to_send[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0DFDFCFC0D0D0"
    )
        port map (
      I0 => \data_to_send[14]_i_4_n_0\,
      I1 => \data_to_send[14]_i_5_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \data_to_send[14]_i_2_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \data_to_send[12]_i_2_n_0\,
      O => data_to_send(12)
    );
\data_to_send[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(3),
      O => \data_to_send[12]_i_2_n_0\
    );
\data_to_send[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFD8DA8D8F888A"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \data_to_send[14]_i_5_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => \data_to_send[14]_i_4_n_0\,
      I4 => \data_to_send[14]_i_3_n_0\,
      I5 => \data_to_send[14]_i_2_n_0\,
      O => data_to_send(13)
    );
\data_to_send[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFF055335533"
    )
        port map (
      I0 => \data_to_send[14]_i_2_n_0\,
      I1 => \data_to_send[14]_i_3_n_0\,
      I2 => \data_to_send[14]_i_4_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \data_to_send[14]_i_5_n_0\,
      I5 => \^o_read_proc_st_debug_states[3]\(3),
      O => data_to_send(14)
    );
\data_to_send[14]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[53]\,
      I1 => \fifo_data_reg_n_0_[54]\,
      I2 => \fifo_data_reg_n_0_[55]\,
      O => \data_to_send[14]_i_10_n_0\
    );
\data_to_send[14]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFBBB"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \fifo_data_reg_n_0_[43]\,
      I3 => \fifo_data_reg_n_0_[42]\,
      I4 => \fifo_data_reg_n_0_[41]\,
      O => \data_to_send[14]_i_11_n_0\
    );
\data_to_send[14]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000057"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[31]\,
      I1 => \fifo_data_reg_n_0_[30]\,
      I2 => \fifo_data_reg_n_0_[29]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[14]_i_12_n_0\
    );
\data_to_send[14]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[65]\,
      I1 => \fifo_data_reg_n_0_[66]\,
      I2 => \fifo_data_reg_n_0_[67]\,
      O => \data_to_send[14]_i_13_n_0\
    );
\data_to_send[14]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[91]\,
      I1 => \fifo_data_reg_n_0_[89]\,
      I2 => \fifo_data_reg_n_0_[90]\,
      O => \data_to_send[14]_i_14_n_0\
    );
\data_to_send[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => \data_to_send[14]_i_6_n_0\,
      I1 => \data_to_send[14]_i_7_n_0\,
      I2 => \data_to_send[14]_i_8_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \data_to_send[14]_i_9_n_0\,
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[14]_i_2_n_0\
    );
\data_to_send[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(3),
      O => \data_to_send[14]_i_3_n_0\
    );
\data_to_send[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C04040C0C0C0C"
    )
        port map (
      I0 => \data_to_send[14]_i_10_n_0\,
      I1 => \data_to_send[14]_i_11_n_0\,
      I2 => \data_to_send[14]_i_12_n_0\,
      I3 => \data_to_send[14]_i_13_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[14]_i_4_n_0\
    );
\data_to_send[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000057570000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[79]\,
      I1 => \fifo_data_reg_n_0_[77]\,
      I2 => \fifo_data_reg_n_0_[78]\,
      I3 => \data_to_send[14]_i_14_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[14]_i_5_n_0\
    );
\data_to_send[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[7]\,
      I1 => \readout_sample_counter_reg_n_0_[5]\,
      I2 => \readout_sample_counter_reg_n_0_[6]\,
      O => \data_to_send[14]_i_6_n_0\
    );
\data_to_send[14]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => i_stop_cell(5),
      I1 => i_stop_cell(6),
      I2 => i_stop_cell(7),
      O => \data_to_send[14]_i_7_n_0\
    );
\data_to_send[14]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[17]\,
      I1 => \fifo_data_reg_n_0_[18]\,
      I2 => \fifo_data_reg_n_0_[19]\,
      O => \data_to_send[14]_i_8_n_0\
    );
\data_to_send[14]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[5]\,
      I1 => \fifo_data_reg_n_0_[6]\,
      I2 => \fifo_data_reg_n_0_[7]\,
      O => \data_to_send[14]_i_9_n_0\
    );
\data_to_send[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800B8FFB800"
    )
        port map (
      I0 => \data_to_send[16]_i_2_n_0\,
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \data_to_send_reg[16]_i_3_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(3),
      I4 => \data_to_send[16]_i_4_n_0\,
      I5 => \data_to_send[16]_i_5_n_0\,
      O => data_to_send(16)
    );
\data_to_send[16]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[10]\,
      I1 => \fifo_data_reg_n_0_[9]\,
      I2 => \fifo_data_reg_n_0_[11]\,
      I3 => \fifo_data_reg_n_0_[8]\,
      O => \data_to_send[16]_i_10_n_0\
    );
\data_to_send[16]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => i_stop_cell(8),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[16]_i_11_n_0\
    );
\data_to_send[16]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220022002202020"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \readout_sample_counter_reg_n_0_[8]\,
      I3 => \readout_sample_counter_reg_n_0_[11]\,
      I4 => \readout_sample_counter_reg_n_0_[10]\,
      I5 => \readout_sample_counter_reg_n_0_[9]\,
      O => \data_to_send[16]_i_12_n_0\
    );
\data_to_send[16]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[34]\,
      I1 => \fifo_data_reg_n_0_[33]\,
      I2 => \fifo_data_reg_n_0_[35]\,
      I3 => \fifo_data_reg_n_0_[32]\,
      O => \data_to_send[16]_i_13_n_0\
    );
\data_to_send[16]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[46]\,
      I1 => \fifo_data_reg_n_0_[45]\,
      I2 => \fifo_data_reg_n_0_[47]\,
      I3 => \fifo_data_reg_n_0_[44]\,
      O => \data_to_send[16]_i_14_n_0\
    );
\data_to_send[16]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[58]\,
      I1 => \fifo_data_reg_n_0_[57]\,
      I2 => \fifo_data_reg_n_0_[59]\,
      I3 => \fifo_data_reg_n_0_[56]\,
      O => \data_to_send[16]_i_15_n_0\
    );
\data_to_send[16]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[70]\,
      I1 => \fifo_data_reg_n_0_[69]\,
      I2 => \fifo_data_reg_n_0_[71]\,
      I3 => \fifo_data_reg_n_0_[68]\,
      O => \data_to_send[16]_i_16_n_0\
    );
\data_to_send[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0FFFF1FE00000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[93]\,
      I1 => \fifo_data_reg_n_0_[94]\,
      I2 => \fifo_data_reg_n_0_[95]\,
      I3 => \fifo_data_reg_n_0_[92]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[16]_i_6_n_0\,
      O => \data_to_send[16]_i_2_n_0\
    );
\data_to_send[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8A80"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \data_to_send[16]_i_9_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \data_to_send[16]_i_10_n_0\,
      I4 => \data_to_send[16]_i_11_n_0\,
      I5 => \data_to_send[16]_i_12_n_0\,
      O => \data_to_send[16]_i_4_n_0\
    );
\data_to_send[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200202020202"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \evcounter_reg_n_0_[8]\,
      I3 => \evcounter_reg_n_0_[10]\,
      I4 => \evcounter_reg_n_0_[9]\,
      I5 => \evcounter_reg_n_0_[11]\,
      O => \data_to_send[16]_i_5_n_0\
    );
\data_to_send[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[81]\,
      I1 => \fifo_data_reg_n_0_[82]\,
      I2 => \fifo_data_reg_n_0_[83]\,
      I3 => \fifo_data_reg_n_0_[80]\,
      O => \data_to_send[16]_i_6_n_0\
    );
\data_to_send[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[22]\,
      I1 => \fifo_data_reg_n_0_[21]\,
      I2 => \fifo_data_reg_n_0_[23]\,
      I3 => \fifo_data_reg_n_0_[20]\,
      O => \data_to_send[16]_i_9_n_0\
    );
\data_to_send[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0EFEFEFE0"
    )
        port map (
      I0 => \data_to_send[17]_i_2_n_0\,
      I1 => \data_to_send[17]_i_3_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \data_to_send[17]_i_4_n_0\,
      I4 => \data_to_send[17]_i_5_n_0\,
      I5 => \data_to_send[17]_i_6_n_0\,
      O => data_to_send(17)
    );
\data_to_send[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[32]\,
      I1 => \fifo_data_reg_n_0_[33]\,
      I2 => \fifo_data_reg_n_0_[35]\,
      I3 => \fifo_data_reg_n_0_[34]\,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[17]_i_10_n_0\
    );
\data_to_send[17]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6733FFFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[68]\,
      I1 => \fifo_data_reg_n_0_[69]\,
      I2 => \fifo_data_reg_n_0_[70]\,
      I3 => \fifo_data_reg_n_0_[71]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[17]_i_11_n_0\
    );
\data_to_send[17]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000098CC"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[56]\,
      I1 => \fifo_data_reg_n_0_[57]\,
      I2 => \fifo_data_reg_n_0_[58]\,
      I3 => \fifo_data_reg_n_0_[59]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[17]_i_12_n_0\
    );
\data_to_send[17]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000008088000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \fifo_data_reg_n_0_[95]\,
      I3 => \fifo_data_reg_n_0_[94]\,
      I4 => \fifo_data_reg_n_0_[93]\,
      I5 => \fifo_data_reg_n_0_[92]\,
      O => \data_to_send[17]_i_13_n_0\
    );
\data_to_send[17]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444000004044000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \fifo_data_reg_n_0_[83]\,
      I3 => \fifo_data_reg_n_0_[82]\,
      I4 => \fifo_data_reg_n_0_[81]\,
      I5 => \fifo_data_reg_n_0_[80]\,
      O => \data_to_send[17]_i_14_n_0\
    );
\data_to_send[17]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => i_stop_cell(9),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[17]_i_15_n_0\
    );
\data_to_send[17]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B4B000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[8]\,
      I1 => \fifo_data_reg_n_0_[11]\,
      I2 => \fifo_data_reg_n_0_[9]\,
      I3 => \fifo_data_reg_n_0_[10]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[17]_i_16_n_0\
    );
\data_to_send[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \data_to_send[17]_i_7_n_0\,
      I2 => \data_to_send[17]_i_8_n_0\,
      I3 => \data_to_send[17]_i_9_n_0\,
      I4 => \data_to_send[17]_i_10_n_0\,
      O => \data_to_send[17]_i_2_n_0\
    );
\data_to_send[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00D0"
    )
        port map (
      I0 => \data_to_send[17]_i_11_n_0\,
      I1 => \data_to_send[17]_i_12_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(1),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \data_to_send[17]_i_13_n_0\,
      I5 => \data_to_send[17]_i_14_n_0\,
      O => \data_to_send[17]_i_3_n_0\
    );
\data_to_send[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFBAAAAAEFAAAAAA"
    )
        port map (
      I0 => \data_to_send[17]_i_15_n_0\,
      I1 => \readout_sample_counter_reg_n_0_[8]\,
      I2 => \readout_sample_counter_reg_n_0_[11]\,
      I3 => \readout_sample_counter_reg_n_0_[9]\,
      I4 => \data_to_send[18]_i_8_n_0\,
      I5 => \readout_sample_counter_reg_n_0_[10]\,
      O => \data_to_send[17]_i_4_n_0\
    );
\data_to_send[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAAAAAAEFAAAAA"
    )
        port map (
      I0 => \data_to_send[17]_i_16_n_0\,
      I1 => \fifo_data_reg_n_0_[22]\,
      I2 => \fifo_data_reg_n_0_[21]\,
      I3 => \fifo_data_reg_n_0_[23]\,
      I4 => \data_to_send[22]_i_6_n_0\,
      I5 => \fifo_data_reg_n_0_[20]\,
      O => \data_to_send[17]_i_5_n_0\
    );
\data_to_send[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404400404044404"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \evcounter_reg_n_0_[9]\,
      I3 => \evcounter_reg_n_0_[11]\,
      I4 => \evcounter_reg_n_0_[8]\,
      I5 => \evcounter_reg_n_0_[10]\,
      O => \data_to_send[17]_i_6_n_0\
    );
\data_to_send[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[44]\,
      I1 => \fifo_data_reg_n_0_[47]\,
      I2 => \fifo_data_reg_n_0_[45]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \fifo_data_reg_n_0_[46]\,
      O => \data_to_send[17]_i_7_n_0\
    );
\data_to_send[17]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10110000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \fifo_data_reg_n_0_[32]\,
      I3 => \fifo_data_reg_n_0_[35]\,
      I4 => \fifo_data_reg_n_0_[33]\,
      O => \data_to_send[17]_i_8_n_0\
    );
\data_to_send[17]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2FFFFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[47]\,
      I1 => \fifo_data_reg_n_0_[44]\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \fifo_data_reg_n_0_[45]\,
      O => \data_to_send[17]_i_9_n_0\
    );
\data_to_send[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send[18]_i_2_n_0\,
      I1 => \data_to_send[18]_i_3_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \data_to_send[18]_i_4_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \data_to_send[18]_i_5_n_0\,
      O => data_to_send(18)
    );
\data_to_send[18]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EF00"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[32]\,
      I1 => \fifo_data_reg_n_0_[33]\,
      I2 => \fifo_data_reg_n_0_[35]\,
      I3 => \fifo_data_reg_n_0_[34]\,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[18]_i_10_n_0\
    );
\data_to_send[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[71]\,
      I1 => \fifo_data_reg_n_0_[68]\,
      I2 => \fifo_data_reg_n_0_[69]\,
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \fifo_data_reg_n_0_[70]\,
      O => \data_to_send[18]_i_11_n_0\
    );
\data_to_send[18]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[10]\,
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[18]_i_12_n_0\
    );
\data_to_send[18]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00000000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[23]\,
      I1 => \fifo_data_reg_n_0_[20]\,
      I2 => \fifo_data_reg_n_0_[21]\,
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \fifo_data_reg_n_0_[22]\,
      O => \data_to_send[18]_i_13_n_0\
    );
\data_to_send[18]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FFFFFFFFFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[9]\,
      I1 => \fifo_data_reg_n_0_[11]\,
      I2 => \fifo_data_reg_n_0_[8]\,
      I3 => \fifo_data_reg_n_0_[10]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[18]_i_14_n_0\
    );
\data_to_send[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88808888"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \fifo_data_reg_n_0_[94]\,
      I2 => \fifo_data_reg_n_0_[93]\,
      I3 => \fifo_data_reg_n_0_[92]\,
      I4 => \fifo_data_reg_n_0_[95]\,
      I5 => \data_to_send[18]_i_6_n_0\,
      O => \data_to_send[18]_i_2_n_0\
    );
\data_to_send[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF40"
    )
        port map (
      I0 => \data_to_send[18]_i_7_n_0\,
      I1 => \data_to_send[18]_i_8_n_0\,
      I2 => \fifo_data_reg_n_0_[46]\,
      I3 => \data_to_send[18]_i_9_n_0\,
      I4 => \data_to_send[18]_i_10_n_0\,
      I5 => \data_to_send[18]_i_11_n_0\,
      O => \data_to_send[18]_i_3_n_0\
    );
\data_to_send[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00FBFFFFFFFF"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[8]\,
      I1 => \readout_sample_counter_reg_n_0_[11]\,
      I2 => \readout_sample_counter_reg_n_0_[9]\,
      I3 => \data_to_send[18]_i_12_n_0\,
      I4 => \data_to_send[18]_i_13_n_0\,
      I5 => \data_to_send[18]_i_14_n_0\,
      O => \data_to_send[18]_i_4_n_0\
    );
\data_to_send[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888088"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \evcounter_reg_n_0_[10]\,
      I2 => \evcounter_reg_n_0_[8]\,
      I3 => \evcounter_reg_n_0_[11]\,
      I4 => \evcounter_reg_n_0_[9]\,
      O => \data_to_send[18]_i_5_n_0\
    );
\data_to_send[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54550000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \fifo_data_reg_n_0_[81]\,
      I2 => \fifo_data_reg_n_0_[80]\,
      I3 => \fifo_data_reg_n_0_[83]\,
      I4 => \fifo_data_reg_n_0_[82]\,
      O => \data_to_send[18]_i_6_n_0\
    );
\data_to_send[18]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[45]\,
      I1 => \fifo_data_reg_n_0_[47]\,
      I2 => \fifo_data_reg_n_0_[44]\,
      O => \data_to_send[18]_i_7_n_0\
    );
\data_to_send[18]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[18]_i_8_n_0\
    );
\data_to_send[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[59]\,
      I1 => \fifo_data_reg_n_0_[56]\,
      I2 => \fifo_data_reg_n_0_[57]\,
      I3 => \fifo_data_reg_n_0_[58]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[18]_i_9_n_0\
    );
\data_to_send[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0CFCFDFD0DFD0"
    )
        port map (
      I0 => \data_to_send[19]_i_2_n_0\,
      I1 => \data_to_send[19]_i_3_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \data_to_send[19]_i_4_n_0\,
      I4 => \data_to_send[19]_i_5_n_0\,
      I5 => \^o_read_proc_st_debug_states[3]\(2),
      O => data_to_send(19)
    );
\data_to_send[19]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \fifo_data_reg_n_0_[95]\,
      I3 => \fifo_data_reg_n_0_[94]\,
      I4 => \fifo_data_reg_n_0_[93]\,
      O => \data_to_send[19]_i_10_n_0\
    );
\data_to_send[19]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[11]\,
      I1 => \fifo_data_reg_n_0_[9]\,
      I2 => \fifo_data_reg_n_0_[10]\,
      O => \data_to_send[19]_i_11_n_0\
    );
\data_to_send[19]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[23]\,
      I1 => \fifo_data_reg_n_0_[21]\,
      I2 => \fifo_data_reg_n_0_[22]\,
      O => \data_to_send[19]_i_12_n_0\
    );
\data_to_send[19]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[10]\,
      I1 => \readout_sample_counter_reg_n_0_[9]\,
      O => \data_to_send[19]_i_13_n_0\
    );
\data_to_send[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send[19]_i_6_n_0\,
      I1 => \data_to_send[19]_i_7_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(1),
      I3 => \data_to_send[19]_i_8_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[19]_i_9_n_0\,
      O => \data_to_send[19]_i_2_n_0\
    );
\data_to_send[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[81]\,
      I1 => \fifo_data_reg_n_0_[82]\,
      I2 => \fifo_data_reg_n_0_[83]\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[19]_i_10_n_0\,
      O => \data_to_send[19]_i_3_n_0\
    );
\data_to_send[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \evcounter_reg_n_0_[11]\,
      I1 => \evcounter_reg_n_0_[10]\,
      I2 => \evcounter_reg_n_0_[9]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[19]_i_4_n_0\
    );
\data_to_send[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"350F35FF35FF35FF"
    )
        port map (
      I0 => \data_to_send[19]_i_11_n_0\,
      I1 => \data_to_send[19]_i_12_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \data_to_send[19]_i_13_n_0\,
      I5 => \readout_sample_counter_reg_n_0_[11]\,
      O => \data_to_send[19]_i_5_n_0\
    );
\data_to_send[19]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[69]\,
      I1 => \fifo_data_reg_n_0_[70]\,
      I2 => \fifo_data_reg_n_0_[71]\,
      O => \data_to_send[19]_i_6_n_0\
    );
\data_to_send[19]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[57]\,
      I1 => \fifo_data_reg_n_0_[58]\,
      I2 => \fifo_data_reg_n_0_[59]\,
      O => \data_to_send[19]_i_7_n_0\
    );
\data_to_send[19]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[45]\,
      I1 => \fifo_data_reg_n_0_[46]\,
      I2 => \fifo_data_reg_n_0_[47]\,
      O => \data_to_send[19]_i_8_n_0\
    );
\data_to_send[19]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[33]\,
      I1 => \fifo_data_reg_n_0_[34]\,
      I2 => \fifo_data_reg_n_0_[35]\,
      O => \data_to_send[19]_i_9_n_0\
    );
\data_to_send[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEFFFFFFAE"
    )
        port map (
      I0 => \data_to_send[1]_i_2_n_0\,
      I1 => \data_to_send[1]_i_3_n_0\,
      I2 => \data_to_send[1]_i_4_n_0\,
      I3 => \data_to_send[1]_i_5_n_0\,
      I4 => \data_to_send[1]_i_6_n_0\,
      I5 => \data_to_send[1]_i_7_n_0\,
      O => data_to_send(1)
    );
\data_to_send[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6733FFFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[60]\,
      I1 => \fifo_data_reg_n_0_[61]\,
      I2 => \fifo_data_reg_n_0_[62]\,
      I3 => \fifo_data_reg_n_0_[63]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[1]_i_10_n_0\
    );
\data_to_send[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFBBFBFBFFFBF"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \fifo_data_reg_n_0_[73]\,
      I3 => \fifo_data_reg_n_0_[75]\,
      I4 => \fifo_data_reg_n_0_[72]\,
      I5 => \fifo_data_reg_n_0_[74]\,
      O => \data_to_send[1]_i_11_n_0\
    );
\data_to_send[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000000888000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \fifo_data_reg_n_0_[86]\,
      I3 => \fifo_data_reg_n_0_[87]\,
      I4 => \fifo_data_reg_n_0_[85]\,
      I5 => \fifo_data_reg_n_0_[84]\,
      O => \data_to_send[1]_i_12_n_0\
    );
\data_to_send[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[25]\,
      I1 => \fifo_data_reg_n_0_[27]\,
      I2 => \fifo_data_reg_n_0_[24]\,
      I3 => \fifo_data_reg_n_0_[26]\,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[1]_i_13_n_0\
    );
\data_to_send[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10100010"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \fifo_data_reg_n_0_[25]\,
      I3 => \fifo_data_reg_n_0_[27]\,
      I4 => \fifo_data_reg_n_0_[24]\,
      O => \data_to_send[1]_i_14_n_0\
    );
\data_to_send[1]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[36]\,
      I1 => \fifo_data_reg_n_0_[39]\,
      O => \data_to_send[1]_i_15_n_0\
    );
\data_to_send[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80C0400080C00000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[12]\,
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \fifo_data_reg_n_0_[15]\,
      I4 => \fifo_data_reg_n_0_[13]\,
      I5 => \fifo_data_reg_n_0_[14]\,
      O => \data_to_send[1]_i_16_n_0\
    );
\data_to_send[1]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[0]\,
      I1 => \readout_sample_counter_reg_n_0_[3]\,
      O => \data_to_send[1]_i_17_n_0\
    );
\data_to_send[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B4B000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[0]\,
      I1 => \fifo_data_reg_n_0_[3]\,
      I2 => \fifo_data_reg_n_0_[1]\,
      I3 => \fifo_data_reg_n_0_[2]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[1]_i_18_n_0\
    );
\data_to_send[1]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[1]_i_19_n_0\
    );
\data_to_send[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8088AAAA"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \data_to_send[1]_i_8_n_0\,
      I2 => \data_to_send[1]_i_9_n_0\,
      I3 => \data_to_send[1]_i_10_n_0\,
      I4 => \data_to_send[1]_i_11_n_0\,
      I5 => \data_to_send[1]_i_12_n_0\,
      O => \data_to_send[1]_i_2_n_0\
    );
\data_to_send[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[0]\,
      I1 => \readout_sample_counter_reg_n_0_[3]\,
      I2 => \readout_sample_counter_reg_n_0_[1]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \readout_sample_counter_reg_n_0_[2]\,
      O => \data_to_send[1]_i_20_n_0\
    );
\data_to_send[1]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[1]_i_21_n_0\
    );
\data_to_send[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[1]_i_3_n_0\
    );
\data_to_send[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110111101111111"
    )
        port map (
      I0 => \data_to_send[1]_i_13_n_0\,
      I1 => \data_to_send[1]_i_14_n_0\,
      I2 => \data_to_send[1]_i_15_n_0\,
      I3 => \fifo_data_reg_n_0_[37]\,
      I4 => \data_to_send[18]_i_8_n_0\,
      I5 => \fifo_data_reg_n_0_[38]\,
      O => \data_to_send[1]_i_4_n_0\
    );
\data_to_send[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAFFFF"
    )
        port map (
      I0 => \data_to_send[1]_i_16_n_0\,
      I1 => \readout_sample_counter_reg_n_0_[1]\,
      I2 => \data_to_send[18]_i_8_n_0\,
      I3 => \data_to_send[1]_i_17_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \data_to_send[1]_i_18_n_0\,
      O => \data_to_send[1]_i_5_n_0\
    );
\data_to_send[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00009C8C"
    )
        port map (
      I0 => i_stop_cell(0),
      I1 => i_stop_cell(1),
      I2 => i_stop_cell(3),
      I3 => i_stop_cell(2),
      I4 => \data_to_send[1]_i_19_n_0\,
      I5 => \data_to_send[1]_i_20_n_0\,
      O => \data_to_send[1]_i_6_n_0\
    );
\data_to_send[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEFAAAABAFFAAAA"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \evcounter_reg_n_0_[0]\,
      I2 => \evcounter_reg_n_0_[3]\,
      I3 => \evcounter_reg_n_0_[1]\,
      I4 => \data_to_send[1]_i_21_n_0\,
      I5 => \evcounter_reg_n_0_[2]\,
      O => \data_to_send[1]_i_7_n_0\
    );
\data_to_send[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[1]_i_8_n_0\
    );
\data_to_send[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000098CC"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[48]\,
      I1 => \fifo_data_reg_n_0_[49]\,
      I2 => \fifo_data_reg_n_0_[50]\,
      I3 => \fifo_data_reg_n_0_[51]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[1]_i_9_n_0\
    );
\data_to_send[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFF1FFF1FFF1F00"
    )
        port map (
      I0 => \data_to_send_reg[22]_i_4_n_0\,
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \data_to_send[22]_i_5_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(3),
      I4 => \data_to_send[22]_i_2_n_0\,
      I5 => \data_to_send[20]_i_2_n_0\,
      O => data_to_send(20)
    );
\data_to_send[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044444"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \evcounter_reg_n_0_[10]\,
      I3 => \evcounter_reg_n_0_[9]\,
      I4 => \evcounter_reg_n_0_[11]\,
      O => \data_to_send[20]_i_2_n_0\
    );
\data_to_send[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777F777F777F222A"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \data_to_send[22]_i_5_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => \data_to_send_reg[22]_i_4_n_0\,
      I4 => \data_to_send[22]_i_3_n_0\,
      I5 => \data_to_send[22]_i_2_n_0\,
      O => data_to_send(21)
    );
\data_to_send[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0000011111111"
    )
        port map (
      I0 => \data_to_send[22]_i_2_n_0\,
      I1 => \data_to_send[22]_i_3_n_0\,
      I2 => \data_to_send_reg[22]_i_4_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \data_to_send[22]_i_5_n_0\,
      I5 => \^o_read_proc_st_debug_states[3]\(3),
      O => data_to_send(22)
    );
\data_to_send[22]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[81]\,
      I1 => \fifo_data_reg_n_0_[82]\,
      I2 => \fifo_data_reg_n_0_[83]\,
      O => \data_to_send[22]_i_11_n_0\
    );
\data_to_send[22]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[33]\,
      I1 => \fifo_data_reg_n_0_[34]\,
      I2 => \fifo_data_reg_n_0_[35]\,
      O => \data_to_send[22]_i_12_n_0\
    );
\data_to_send[22]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[45]\,
      I1 => \fifo_data_reg_n_0_[46]\,
      I2 => \fifo_data_reg_n_0_[47]\,
      O => \data_to_send[22]_i_13_n_0\
    );
\data_to_send[22]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[57]\,
      I1 => \fifo_data_reg_n_0_[58]\,
      I2 => \fifo_data_reg_n_0_[59]\,
      O => \data_to_send[22]_i_14_n_0\
    );
\data_to_send[22]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[69]\,
      I1 => \fifo_data_reg_n_0_[70]\,
      I2 => \fifo_data_reg_n_0_[71]\,
      O => \data_to_send[22]_i_15_n_0\
    );
\data_to_send[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000057FF"
    )
        port map (
      I0 => \data_to_send[22]_i_6_n_0\,
      I1 => \fifo_data_reg_n_0_[22]\,
      I2 => \fifo_data_reg_n_0_[21]\,
      I3 => \fifo_data_reg_n_0_[23]\,
      I4 => \data_to_send[22]_i_7_n_0\,
      I5 => \data_to_send[22]_i_8_n_0\,
      O => \data_to_send[22]_i_2_n_0\
    );
\data_to_send[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15151555"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \evcounter_reg_n_0_[11]\,
      I3 => \evcounter_reg_n_0_[9]\,
      I4 => \evcounter_reg_n_0_[10]\,
      O => \data_to_send[22]_i_3_n_0\
    );
\data_to_send[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E222FFFFFFFF"
    )
        port map (
      I0 => \data_to_send[22]_i_11_n_0\,
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \fifo_data_reg_n_0_[95]\,
      I3 => \fifo_data_reg_n_0_[94]\,
      I4 => \fifo_data_reg_n_0_[93]\,
      I5 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[22]_i_5_n_0\
    );
\data_to_send[22]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[22]_i_6_n_0\
    );
\data_to_send[22]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22200000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \fifo_data_reg_n_0_[10]\,
      I3 => \fifo_data_reg_n_0_[9]\,
      I4 => \fifo_data_reg_n_0_[11]\,
      O => \data_to_send[22]_i_7_n_0\
    );
\data_to_send[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000E000FFFFFFFF"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[9]\,
      I1 => \readout_sample_counter_reg_n_0_[10]\,
      I2 => \readout_sample_counter_reg_n_0_[11]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[22]_i_8_n_0\
    );
\data_to_send[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0130"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(3),
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      O => data_to_send(24)
    );
\data_to_send[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      O => \data_to_send[25]_i_1_n_0\
    );
\data_to_send[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1003"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(3),
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      O => data_to_send(27)
    );
\data_to_send[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007E7E7E7C"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => i_stop_cell_ready,
      I5 => i_rst,
      O => data_to_send0
    );
\data_to_send[29]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEF6"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      O => data_to_send(29)
    );
\data_to_send[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBFFFFB8BB0000"
    )
        port map (
      I0 => \data_to_send[2]_i_2_n_0\,
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \data_to_send[2]_i_3_n_0\,
      I3 => \data_to_send[2]_i_4_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(3),
      I5 => \data_to_send[2]_i_5_n_0\,
      O => data_to_send(2)
    );
\data_to_send[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[3]\,
      I1 => \fifo_data_reg_n_0_[0]\,
      I2 => \fifo_data_reg_n_0_[1]\,
      I3 => \fifo_data_reg_n_0_[2]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[2]_i_10_n_0\
    );
\data_to_send[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EF00"
    )
        port map (
      I0 => i_stop_cell(0),
      I1 => i_stop_cell(1),
      I2 => i_stop_cell(3),
      I3 => i_stop_cell(2),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[2]_i_11_n_0\
    );
\data_to_send[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB0000000000"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[0]\,
      I1 => \readout_sample_counter_reg_n_0_[3]\,
      I2 => \readout_sample_counter_reg_n_0_[1]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \readout_sample_counter_reg_n_0_[2]\,
      O => \data_to_send[2]_i_12_n_0\
    );
\data_to_send[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[13]\,
      I1 => \fifo_data_reg_n_0_[15]\,
      I2 => \fifo_data_reg_n_0_[12]\,
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \fifo_data_reg_n_0_[14]\,
      O => \data_to_send[2]_i_13_n_0\
    );
\data_to_send[2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \evcounter_reg_n_0_[1]\,
      I2 => \evcounter_reg_n_0_[3]\,
      I3 => \evcounter_reg_n_0_[0]\,
      I4 => \evcounter_reg_n_0_[2]\,
      O => \data_to_send[2]_i_14_n_0\
    );
\data_to_send[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888808"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \fifo_data_reg_n_0_[86]\,
      I2 => \fifo_data_reg_n_0_[87]\,
      I3 => \fifo_data_reg_n_0_[85]\,
      I4 => \fifo_data_reg_n_0_[84]\,
      I5 => \data_to_send[2]_i_6_n_0\,
      O => \data_to_send[2]_i_2_n_0\
    );
\data_to_send[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88808888"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[62]\,
      I1 => \data_to_send[22]_i_6_n_0\,
      I2 => \fifo_data_reg_n_0_[61]\,
      I3 => \fifo_data_reg_n_0_[60]\,
      I4 => \fifo_data_reg_n_0_[63]\,
      I5 => \data_to_send[2]_i_7_n_0\,
      O => \data_to_send[2]_i_3_n_0\
    );
\data_to_send[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDDFF0FFFDD"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[26]\,
      I1 => \data_to_send[2]_i_8_n_0\,
      I2 => \fifo_data_reg_n_0_[38]\,
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[2]_i_9_n_0\,
      O => \data_to_send[2]_i_4_n_0\
    );
\data_to_send[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFEFF0000"
    )
        port map (
      I0 => \data_to_send[2]_i_10_n_0\,
      I1 => \data_to_send[2]_i_11_n_0\,
      I2 => \data_to_send[2]_i_12_n_0\,
      I3 => \data_to_send[2]_i_13_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \data_to_send[2]_i_14_n_0\,
      O => \data_to_send[2]_i_5_n_0\
    );
\data_to_send[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54550000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \fifo_data_reg_n_0_[73]\,
      I2 => \fifo_data_reg_n_0_[72]\,
      I3 => \fifo_data_reg_n_0_[75]\,
      I4 => \fifo_data_reg_n_0_[74]\,
      O => \data_to_send[2]_i_6_n_0\
    );
\data_to_send[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[51]\,
      I1 => \fifo_data_reg_n_0_[48]\,
      I2 => \fifo_data_reg_n_0_[49]\,
      I3 => \fifo_data_reg_n_0_[50]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[2]_i_7_n_0\
    );
\data_to_send[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[24]\,
      I1 => \fifo_data_reg_n_0_[27]\,
      I2 => \fifo_data_reg_n_0_[25]\,
      O => \data_to_send[2]_i_8_n_0\
    );
\data_to_send[2]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[37]\,
      I1 => \fifo_data_reg_n_0_[39]\,
      I2 => \fifo_data_reg_n_0_[36]\,
      O => \data_to_send[2]_i_9_n_0\
    );
\data_to_send[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500350035FF3500"
    )
        port map (
      I0 => \data_to_send[3]_i_2_n_0\,
      I1 => \data_to_send[3]_i_3_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => \^o_read_proc_st_debug_states[3]\(3),
      I4 => \data_to_send[3]_i_4_n_0\,
      I5 => \data_to_send[3]_i_5_n_0\,
      O => data_to_send(3)
    );
\data_to_send[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[74]\,
      I1 => \fifo_data_reg_n_0_[73]\,
      O => \data_to_send[3]_i_10_n_0\
    );
\data_to_send[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => i_stop_cell(1),
      I2 => i_stop_cell(2),
      I3 => i_stop_cell(3),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[3]_i_11_n_0\
    );
\data_to_send[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[15]\,
      I1 => \fifo_data_reg_n_0_[13]\,
      I2 => \fifo_data_reg_n_0_[14]\,
      O => \data_to_send[3]_i_12_n_0\
    );
\data_to_send[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[3]\,
      I1 => \fifo_data_reg_n_0_[1]\,
      I2 => \fifo_data_reg_n_0_[2]\,
      O => \data_to_send[3]_i_13_n_0\
    );
\data_to_send[3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[1]\,
      I1 => \readout_sample_counter_reg_n_0_[2]\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \readout_sample_counter_reg_n_0_[3]\,
      O => \data_to_send[3]_i_14_n_0\
    );
\data_to_send[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send[3]_i_6_n_0\,
      I1 => \data_to_send[3]_i_7_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(1),
      I3 => \data_to_send[3]_i_8_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \data_to_send[3]_i_9_n_0\,
      O => \data_to_send[3]_i_2_n_0\
    );
\data_to_send[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FDFFFDFFFDFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[87]\,
      I1 => \fifo_data_reg_n_0_[85]\,
      I2 => \fifo_data_reg_n_0_[86]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \fifo_data_reg_n_0_[75]\,
      I5 => \data_to_send[3]_i_10_n_0\,
      O => \data_to_send[3]_i_3_n_0\
    );
\data_to_send[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF10FFFF"
    )
        port map (
      I0 => \evcounter_reg_n_0_[2]\,
      I1 => \evcounter_reg_n_0_[1]\,
      I2 => \evcounter_reg_n_0_[3]\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[3]_i_4_n_0\
    );
\data_to_send[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020AA2AAA"
    )
        port map (
      I0 => \data_to_send[3]_i_11_n_0\,
      I1 => \data_to_send[3]_i_12_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \data_to_send[3]_i_13_n_0\,
      I5 => \data_to_send[3]_i_14_n_0\,
      O => \data_to_send[3]_i_5_n_0\
    );
\data_to_send[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[61]\,
      I1 => \fifo_data_reg_n_0_[62]\,
      I2 => \fifo_data_reg_n_0_[63]\,
      O => \data_to_send[3]_i_6_n_0\
    );
\data_to_send[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[49]\,
      I1 => \fifo_data_reg_n_0_[50]\,
      I2 => \fifo_data_reg_n_0_[51]\,
      O => \data_to_send[3]_i_7_n_0\
    );
\data_to_send[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[39]\,
      I1 => \fifo_data_reg_n_0_[37]\,
      I2 => \fifo_data_reg_n_0_[38]\,
      O => \data_to_send[3]_i_8_n_0\
    );
\data_to_send[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[27]\,
      I1 => \fifo_data_reg_n_0_[25]\,
      I2 => \fifo_data_reg_n_0_[26]\,
      O => \data_to_send[3]_i_9_n_0\
    );
\data_to_send[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0DFDFCFC0D0D0"
    )
        port map (
      I0 => \data_to_send_reg[6]_i_2_n_0\,
      I1 => \data_to_send[6]_i_3_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \data_to_send[6]_i_5_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \data_to_send[5]_i_2_n_0\,
      O => data_to_send(5)
    );
\data_to_send[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \evcounter_reg_n_0_[2]\,
      I2 => \evcounter_reg_n_0_[1]\,
      I3 => \evcounter_reg_n_0_[3]\,
      O => \data_to_send[5]_i_2_n_0\
    );
\data_to_send[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F302F203F3F2F20"
    )
        port map (
      I0 => \data_to_send_reg[6]_i_2_n_0\,
      I1 => \data_to_send[6]_i_3_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      I3 => \data_to_send[6]_i_4_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \data_to_send[6]_i_5_n_0\,
      O => data_to_send(6)
    );
\data_to_send[6]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[2]\,
      I1 => \readout_sample_counter_reg_n_0_[1]\,
      O => \data_to_send[6]_i_10_n_0\
    );
\data_to_send[6]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010111"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => i_stop_cell(3),
      I3 => i_stop_cell(2),
      I4 => i_stop_cell(1),
      O => \data_to_send[6]_i_11_n_0\
    );
\data_to_send[6]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080888"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \fifo_data_reg_n_0_[15]\,
      I3 => \fifo_data_reg_n_0_[14]\,
      I4 => \fifo_data_reg_n_0_[13]\,
      O => \data_to_send[6]_i_12_n_0\
    );
\data_to_send[6]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[27]\,
      I1 => \fifo_data_reg_n_0_[25]\,
      I2 => \fifo_data_reg_n_0_[26]\,
      O => \data_to_send[6]_i_13_n_0\
    );
\data_to_send[6]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[39]\,
      I1 => \fifo_data_reg_n_0_[37]\,
      I2 => \fifo_data_reg_n_0_[38]\,
      O => \data_to_send[6]_i_14_n_0\
    );
\data_to_send[6]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[49]\,
      I1 => \fifo_data_reg_n_0_[50]\,
      I2 => \fifo_data_reg_n_0_[51]\,
      O => \data_to_send[6]_i_15_n_0\
    );
\data_to_send[6]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[61]\,
      I1 => \fifo_data_reg_n_0_[62]\,
      I2 => \fifo_data_reg_n_0_[63]\,
      O => \data_to_send[6]_i_16_n_0\
    );
\data_to_send[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000057570000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[75]\,
      I1 => \fifo_data_reg_n_0_[73]\,
      I2 => \fifo_data_reg_n_0_[74]\,
      I3 => \data_to_send[6]_i_8_n_0\,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[6]_i_3_n_0\
    );
\data_to_send[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => \evcounter_reg_n_0_[2]\,
      I1 => \evcounter_reg_n_0_[1]\,
      I2 => \evcounter_reg_n_0_[3]\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[6]_i_4_n_0\
    );
\data_to_send[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAEE"
    )
        port map (
      I0 => \data_to_send[6]_i_9_n_0\,
      I1 => \data_to_send[18]_i_8_n_0\,
      I2 => \data_to_send[6]_i_10_n_0\,
      I3 => \readout_sample_counter_reg_n_0_[3]\,
      I4 => \data_to_send[6]_i_11_n_0\,
      I5 => \data_to_send[6]_i_12_n_0\,
      O => \data_to_send[6]_i_5_n_0\
    );
\data_to_send[6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[87]\,
      I1 => \fifo_data_reg_n_0_[85]\,
      I2 => \fifo_data_reg_n_0_[86]\,
      O => \data_to_send[6]_i_8_n_0\
    );
\data_to_send[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020222"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \fifo_data_reg_n_0_[3]\,
      I3 => \fifo_data_reg_n_0_[2]\,
      I4 => \fifo_data_reg_n_0_[1]\,
      O => \data_to_send[6]_i_9_n_0\
    );
\data_to_send[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[6]\,
      I1 => \fifo_data_reg_n_0_[5]\,
      I2 => \fifo_data_reg_n_0_[7]\,
      I3 => \fifo_data_reg_n_0_[4]\,
      O => \data_to_send[8]_i_11_n_0\
    );
\data_to_send[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[18]\,
      I1 => \fifo_data_reg_n_0_[17]\,
      I2 => \fifo_data_reg_n_0_[19]\,
      I3 => \fifo_data_reg_n_0_[16]\,
      O => \data_to_send[8]_i_12_n_0\
    );
\data_to_send[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => i_stop_cell(6),
      I1 => i_stop_cell(5),
      I2 => i_stop_cell(7),
      I3 => i_stop_cell(4),
      O => \data_to_send[8]_i_13_n_0\
    );
\data_to_send[8]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[6]\,
      I1 => \readout_sample_counter_reg_n_0_[5]\,
      I2 => \readout_sample_counter_reg_n_0_[7]\,
      I3 => \readout_sample_counter_reg_n_0_[4]\,
      O => \data_to_send[8]_i_14_n_0\
    );
\data_to_send[8]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[78]\,
      I1 => \fifo_data_reg_n_0_[77]\,
      I2 => \fifo_data_reg_n_0_[79]\,
      I3 => \fifo_data_reg_n_0_[76]\,
      O => \data_to_send[8]_i_15_n_0\
    );
\data_to_send[8]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[90]\,
      I1 => \fifo_data_reg_n_0_[89]\,
      I2 => \fifo_data_reg_n_0_[91]\,
      I3 => \fifo_data_reg_n_0_[88]\,
      O => \data_to_send[8]_i_16_n_0\
    );
\data_to_send[8]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[30]\,
      I1 => \fifo_data_reg_n_0_[29]\,
      I2 => \fifo_data_reg_n_0_[31]\,
      I3 => \fifo_data_reg_n_0_[28]\,
      O => \data_to_send[8]_i_17_n_0\
    );
\data_to_send[8]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[42]\,
      I1 => \fifo_data_reg_n_0_[41]\,
      I2 => \fifo_data_reg_n_0_[43]\,
      I3 => \fifo_data_reg_n_0_[40]\,
      O => \data_to_send[8]_i_18_n_0\
    );
\data_to_send[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \data_to_send_reg[8]_i_4_n_0\,
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \data_to_send_reg[8]_i_5_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \data_to_send[8]_i_6_n_0\,
      O => \data_to_send[8]_i_2_n_0\
    );
\data_to_send[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0DDF0DDF0FFF000"
    )
        port map (
      I0 => \data_to_send[8]_i_7_n_0\,
      I1 => \data_to_send[8]_i_8_n_0\,
      I2 => \data_to_send_reg[8]_i_9_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \data_to_send_reg[8]_i_10_n_0\,
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[8]_i_3_n_0\
    );
\data_to_send[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7D7D7DDD"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(1),
      I4 => sel0(2),
      O => \data_to_send[8]_i_6_n_0\
    );
\data_to_send[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF9995"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[52]\,
      I1 => \fifo_data_reg_n_0_[55]\,
      I2 => \fifo_data_reg_n_0_[54]\,
      I3 => \fifo_data_reg_n_0_[53]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[8]_i_7_n_0\
    );
\data_to_send[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02AAA800"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \fifo_data_reg_n_0_[65]\,
      I2 => \fifo_data_reg_n_0_[66]\,
      I3 => \fifo_data_reg_n_0_[67]\,
      I4 => \fifo_data_reg_n_0_[64]\,
      O => \data_to_send[8]_i_8_n_0\
    );
\data_to_send[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFE00"
    )
        port map (
      I0 => \data_to_send[9]_i_2_n_0\,
      I1 => \data_to_send[9]_i_3_n_0\,
      I2 => \data_to_send[9]_i_4_n_0\,
      I3 => \^o_read_proc_st_debug_states[3]\(3),
      I4 => \data_to_send[9]_i_5_n_0\,
      I5 => \data_to_send[9]_i_6_n_0\,
      O => data_to_send(9)
    );
\data_to_send[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[31]\,
      I1 => \fifo_data_reg_n_0_[28]\,
      I2 => \fifo_data_reg_n_0_[29]\,
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[9]_i_10_n_0\
    );
\data_to_send[9]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[40]\,
      I1 => \fifo_data_reg_n_0_[43]\,
      I2 => \fifo_data_reg_n_0_[41]\,
      I3 => \^o_read_proc_st_debug_states[3]\(0),
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \fifo_data_reg_n_0_[42]\,
      O => \data_to_send[9]_i_11_n_0\
    );
\data_to_send[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[28]\,
      I1 => \fifo_data_reg_n_0_[31]\,
      I2 => \fifo_data_reg_n_0_[29]\,
      I3 => \fifo_data_reg_n_0_[30]\,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[9]_i_12_n_0\
    );
\data_to_send[9]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[9]_i_13_n_0\
    );
\data_to_send[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888000000888000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \fifo_data_reg_n_0_[90]\,
      I3 => \fifo_data_reg_n_0_[91]\,
      I4 => \fifo_data_reg_n_0_[89]\,
      I5 => \fifo_data_reg_n_0_[88]\,
      O => \data_to_send[9]_i_14_n_0\
    );
\data_to_send[9]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B4B0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[4]\,
      I1 => \fifo_data_reg_n_0_[7]\,
      I2 => \fifo_data_reg_n_0_[5]\,
      I3 => \fifo_data_reg_n_0_[6]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      O => \data_to_send[9]_i_15_n_0\
    );
\data_to_send[9]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"73BF73FF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[16]\,
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \fifo_data_reg_n_0_[19]\,
      I3 => \fifo_data_reg_n_0_[17]\,
      I4 => \fifo_data_reg_n_0_[18]\,
      O => \data_to_send[9]_i_16_n_0\
    );
\data_to_send[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC2C0000"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[6]\,
      I1 => \readout_sample_counter_reg_n_0_[5]\,
      I2 => \readout_sample_counter_reg_n_0_[7]\,
      I3 => \readout_sample_counter_reg_n_0_[4]\,
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => \^o_read_proc_st_debug_states[3]\(1),
      O => \data_to_send[9]_i_17_n_0\
    );
\data_to_send[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEFFFFEFEEFF"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => i_stop_cell(6),
      I3 => i_stop_cell(5),
      I4 => i_stop_cell(7),
      I5 => i_stop_cell(4),
      O => \data_to_send[9]_i_18_n_0\
    );
\data_to_send[9]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA000A80"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => sel0(2),
      I2 => sel0(3),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \data_to_send[9]_i_19_n_0\
    );
\data_to_send[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \data_to_send[9]_i_7_n_0\,
      I3 => \data_to_send[9]_i_8_n_0\,
      O => \data_to_send[9]_i_2_n_0\
    );
\data_to_send[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555455"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(2),
      I1 => \data_to_send[9]_i_9_n_0\,
      I2 => \data_to_send[9]_i_10_n_0\,
      I3 => \data_to_send[9]_i_11_n_0\,
      I4 => \data_to_send[9]_i_12_n_0\,
      O => \data_to_send[9]_i_3_n_0\
    );
\data_to_send[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF9C8C0000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[76]\,
      I1 => \fifo_data_reg_n_0_[77]\,
      I2 => \fifo_data_reg_n_0_[79]\,
      I3 => \fifo_data_reg_n_0_[78]\,
      I4 => \data_to_send[9]_i_13_n_0\,
      I5 => \data_to_send[9]_i_14_n_0\,
      O => \data_to_send[9]_i_4_n_0\
    );
\data_to_send[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(1),
      I1 => \^o_read_proc_st_debug_states[3]\(2),
      I2 => \data_to_send[9]_i_15_n_0\,
      I3 => \data_to_send[9]_i_16_n_0\,
      O => \data_to_send[9]_i_5_n_0\
    );
\data_to_send[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => \data_to_send[9]_i_17_n_0\,
      I1 => \data_to_send[9]_i_18_n_0\,
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => \data_to_send[9]_i_19_n_0\,
      O => \data_to_send[9]_i_6_n_0\
    );
\data_to_send[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C008C0C0"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[66]\,
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \fifo_data_reg_n_0_[65]\,
      I3 => \fifo_data_reg_n_0_[64]\,
      I4 => \fifo_data_reg_n_0_[67]\,
      O => \data_to_send[9]_i_7_n_0\
    );
\data_to_send[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCEFDCFF"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[52]\,
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \fifo_data_reg_n_0_[55]\,
      I3 => \fifo_data_reg_n_0_[53]\,
      I4 => \fifo_data_reg_n_0_[54]\,
      O => \data_to_send[9]_i_8_n_0\
    );
\data_to_send[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D00000"
    )
        port map (
      I0 => \fifo_data_reg_n_0_[43]\,
      I1 => \fifo_data_reg_n_0_[40]\,
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \fifo_data_reg_n_0_[41]\,
      O => \data_to_send[9]_i_9_n_0\
    );
\data_to_send_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(0),
      Q => \data_to_send_reg_n_0_[0]\,
      R => '0'
    );
\data_to_send_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[0]_i_17_n_0\,
      I1 => \data_to_send[0]_i_18_n_0\,
      O => \data_to_send_reg[0]_i_10_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_to_send_reg[0]_i_7_n_0\,
      I1 => \data_to_send_reg[0]_i_8_n_0\,
      O => \data_to_send_reg[0]_i_3_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(1)
    );
\data_to_send_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_to_send_reg[0]_i_9_n_0\,
      I1 => \data_to_send_reg[0]_i_10_n_0\,
      O => \data_to_send_reg[0]_i_4_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(1)
    );
\data_to_send_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[0]_i_11_n_0\,
      I1 => \data_to_send[0]_i_12_n_0\,
      O => \data_to_send_reg[0]_i_7_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[0]_i_13_n_0\,
      I1 => \data_to_send[0]_i_14_n_0\,
      O => \data_to_send_reg[0]_i_8_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[0]_i_15_n_0\,
      I1 => \data_to_send[0]_i_16_n_0\,
      O => \data_to_send_reg[0]_i_9_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(10),
      Q => in4(2),
      R => '0'
    );
\data_to_send_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(11),
      Q => in4(3),
      R => '0'
    );
\data_to_send_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(12),
      Q => in4(4),
      R => '0'
    );
\data_to_send_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(13),
      Q => in4(5),
      R => '0'
    );
\data_to_send_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(14),
      Q => in4(6),
      R => '0'
    );
\data_to_send_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(16),
      Q => in3(0),
      R => '0'
    );
\data_to_send_reg[16]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_to_send_reg[16]_i_7_n_0\,
      I1 => \data_to_send_reg[16]_i_8_n_0\,
      O => \data_to_send_reg[16]_i_3_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(1)
    );
\data_to_send_reg[16]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[16]_i_13_n_0\,
      I1 => \data_to_send[16]_i_14_n_0\,
      O => \data_to_send_reg[16]_i_7_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[16]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[16]_i_15_n_0\,
      I1 => \data_to_send[16]_i_16_n_0\,
      O => \data_to_send_reg[16]_i_8_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(17),
      Q => in3(1),
      R => '0'
    );
\data_to_send_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(18),
      Q => in3(2),
      R => '0'
    );
\data_to_send_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(19),
      Q => in3(3),
      R => '0'
    );
\data_to_send_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(1),
      Q => \data_to_send_reg_n_0_[1]\,
      R => '0'
    );
\data_to_send_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(20),
      Q => in3(4),
      R => '0'
    );
\data_to_send_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(21),
      Q => in3(5),
      R => '0'
    );
\data_to_send_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(22),
      Q => in3(6),
      R => '0'
    );
\data_to_send_reg[22]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[22]_i_14_n_0\,
      I1 => \data_to_send[22]_i_15_n_0\,
      O => \data_to_send_reg[22]_i_10_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[22]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_to_send_reg[22]_i_9_n_0\,
      I1 => \data_to_send_reg[22]_i_10_n_0\,
      O => \data_to_send_reg[22]_i_4_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(1)
    );
\data_to_send_reg[22]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[22]_i_12_n_0\,
      I1 => \data_to_send[22]_i_13_n_0\,
      O => \data_to_send_reg[22]_i_9_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(24),
      Q => in2(0),
      R => '0'
    );
\data_to_send_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => \data_to_send[25]_i_1_n_0\,
      Q => in2(1),
      R => '0'
    );
\data_to_send_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(27),
      Q => in2(3),
      R => '0'
    );
\data_to_send_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(29),
      Q => in2(5),
      R => '0'
    );
\data_to_send_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(2),
      Q => \data_to_send_reg_n_0_[2]\,
      R => '0'
    );
\data_to_send_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(3),
      Q => \data_to_send_reg_n_0_[3]\,
      R => '0'
    );
\data_to_send_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(5),
      Q => \data_to_send_reg_n_0_[5]\,
      R => '0'
    );
\data_to_send_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(6),
      Q => \data_to_send_reg_n_0_[6]\,
      R => '0'
    );
\data_to_send_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_to_send_reg[6]_i_6_n_0\,
      I1 => \data_to_send_reg[6]_i_7_n_0\,
      O => \data_to_send_reg[6]_i_2_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(1)
    );
\data_to_send_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[6]_i_13_n_0\,
      I1 => \data_to_send[6]_i_14_n_0\,
      O => \data_to_send_reg[6]_i_6_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[6]_i_15_n_0\,
      I1 => \data_to_send[6]_i_16_n_0\,
      O => \data_to_send_reg[6]_i_7_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(8),
      Q => in4(0),
      R => '0'
    );
\data_to_send_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[8]_i_2_n_0\,
      I1 => \data_to_send[8]_i_3_n_0\,
      O => data_to_send(8),
      S => \^o_read_proc_st_debug_states[3]\(3)
    );
\data_to_send_reg[8]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[8]_i_17_n_0\,
      I1 => \data_to_send[8]_i_18_n_0\,
      O => \data_to_send_reg[8]_i_10_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[8]_i_11_n_0\,
      I1 => \data_to_send[8]_i_12_n_0\,
      O => \data_to_send_reg[8]_i_4_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[8]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[8]_i_13_n_0\,
      I1 => \data_to_send[8]_i_14_n_0\,
      O => \data_to_send_reg[8]_i_5_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[8]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_to_send[8]_i_15_n_0\,
      I1 => \data_to_send[8]_i_16_n_0\,
      O => \data_to_send_reg[8]_i_9_n_0\,
      S => \^o_read_proc_st_debug_states[3]\(0)
    );
\data_to_send_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => data_to_send0,
      D => data_to_send(9),
      Q => in4(1),
      R => '0'
    );
\eqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp,
      CO(2) => \eqOp_inferred__0/i__carry_n_1\,
      CO(1) => \eqOp_inferred__0/i__carry_n_2\,
      CO(0) => \eqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\evcounter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \evcounter_reg_n_0_[0]\,
      O => \evcounter[0]_i_2_n_0\
    );
\evcounter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[0]_i_1_n_7\,
      Q => \evcounter_reg_n_0_[0]\,
      R => '0'
    );
\evcounter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \evcounter_reg[0]_i_1_n_0\,
      CO(2) => \evcounter_reg[0]_i_1_n_1\,
      CO(1) => \evcounter_reg[0]_i_1_n_2\,
      CO(0) => \evcounter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \evcounter_reg[0]_i_1_n_4\,
      O(2) => \evcounter_reg[0]_i_1_n_5\,
      O(1) => \evcounter_reg[0]_i_1_n_6\,
      O(0) => \evcounter_reg[0]_i_1_n_7\,
      S(3) => \evcounter_reg_n_0_[3]\,
      S(2) => \evcounter_reg_n_0_[2]\,
      S(1) => \evcounter_reg_n_0_[1]\,
      S(0) => \evcounter[0]_i_2_n_0\
    );
\evcounter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[8]_i_1_n_5\,
      Q => \evcounter_reg_n_0_[10]\,
      R => '0'
    );
\evcounter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[8]_i_1_n_4\,
      Q => \evcounter_reg_n_0_[11]\,
      R => '0'
    );
\evcounter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[0]_i_1_n_6\,
      Q => \evcounter_reg_n_0_[1]\,
      R => '0'
    );
\evcounter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[0]_i_1_n_5\,
      Q => \evcounter_reg_n_0_[2]\,
      R => '0'
    );
\evcounter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[0]_i_1_n_4\,
      Q => \evcounter_reg_n_0_[3]\,
      R => '0'
    );
\evcounter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[4]_i_1_n_7\,
      Q => sel0(0),
      R => '0'
    );
\evcounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \evcounter_reg[0]_i_1_n_0\,
      CO(3) => \evcounter_reg[4]_i_1_n_0\,
      CO(2) => \evcounter_reg[4]_i_1_n_1\,
      CO(1) => \evcounter_reg[4]_i_1_n_2\,
      CO(0) => \evcounter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \evcounter_reg[4]_i_1_n_4\,
      O(2) => \evcounter_reg[4]_i_1_n_5\,
      O(1) => \evcounter_reg[4]_i_1_n_6\,
      O(0) => \evcounter_reg[4]_i_1_n_7\,
      S(3 downto 0) => sel0(3 downto 0)
    );
\evcounter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[4]_i_1_n_6\,
      Q => sel0(1),
      R => '0'
    );
\evcounter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[4]_i_1_n_5\,
      Q => sel0(2),
      R => '0'
    );
\evcounter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[4]_i_1_n_4\,
      Q => sel0(3),
      R => '0'
    );
\evcounter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[8]_i_1_n_7\,
      Q => \evcounter_reg_n_0_[8]\,
      R => '0'
    );
\evcounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \evcounter_reg[4]_i_1_n_0\,
      CO(3) => \NLW_evcounter_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \evcounter_reg[8]_i_1_n_1\,
      CO(1) => \evcounter_reg[8]_i_1_n_2\,
      CO(0) => \evcounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \evcounter_reg[8]_i_1_n_4\,
      O(2) => \evcounter_reg[8]_i_1_n_5\,
      O(1) => \evcounter_reg[8]_i_1_n_6\,
      O(0) => \evcounter_reg[8]_i_1_n_7\,
      S(3) => \evcounter_reg_n_0_[11]\,
      S(2) => \evcounter_reg_n_0_[10]\,
      S(1) => \evcounter_reg_n_0_[9]\,
      S(0) => \evcounter_reg_n_0_[8]\
    );
\evcounter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => evcounter0,
      D => \evcounter_reg[8]_i_1_n_6\,
      Q => \evcounter_reg_n_0_[9]\,
      R => '0'
    );
\fifo_data[96]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400000000000C0"
    )
        port map (
      I0 => \^o_rd_fifo_en\,
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => i_rst,
      I4 => \^o_read_proc_st_debug_states[3]\(2),
      I5 => \^o_read_proc_st_debug_states[3]\(3),
      O => fifo_data0
    );
\fifo_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(0),
      Q => \fifo_data_reg_n_0_[0]\,
      R => '0'
    );
\fifo_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(10),
      Q => \fifo_data_reg_n_0_[10]\,
      R => '0'
    );
\fifo_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(11),
      Q => \fifo_data_reg_n_0_[11]\,
      R => '0'
    );
\fifo_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(12),
      Q => \fifo_data_reg_n_0_[12]\,
      R => '0'
    );
\fifo_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(13),
      Q => \fifo_data_reg_n_0_[13]\,
      R => '0'
    );
\fifo_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(14),
      Q => \fifo_data_reg_n_0_[14]\,
      R => '0'
    );
\fifo_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(15),
      Q => \fifo_data_reg_n_0_[15]\,
      R => '0'
    );
\fifo_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(16),
      Q => \fifo_data_reg_n_0_[16]\,
      R => '0'
    );
\fifo_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(17),
      Q => \fifo_data_reg_n_0_[17]\,
      R => '0'
    );
\fifo_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(18),
      Q => \fifo_data_reg_n_0_[18]\,
      R => '0'
    );
\fifo_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(19),
      Q => \fifo_data_reg_n_0_[19]\,
      R => '0'
    );
\fifo_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(1),
      Q => \fifo_data_reg_n_0_[1]\,
      R => '0'
    );
\fifo_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(20),
      Q => \fifo_data_reg_n_0_[20]\,
      R => '0'
    );
\fifo_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(21),
      Q => \fifo_data_reg_n_0_[21]\,
      R => '0'
    );
\fifo_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(22),
      Q => \fifo_data_reg_n_0_[22]\,
      R => '0'
    );
\fifo_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(23),
      Q => \fifo_data_reg_n_0_[23]\,
      R => '0'
    );
\fifo_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(24),
      Q => \fifo_data_reg_n_0_[24]\,
      R => '0'
    );
\fifo_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(25),
      Q => \fifo_data_reg_n_0_[25]\,
      R => '0'
    );
\fifo_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(26),
      Q => \fifo_data_reg_n_0_[26]\,
      R => '0'
    );
\fifo_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(27),
      Q => \fifo_data_reg_n_0_[27]\,
      R => '0'
    );
\fifo_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(28),
      Q => \fifo_data_reg_n_0_[28]\,
      R => '0'
    );
\fifo_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(29),
      Q => \fifo_data_reg_n_0_[29]\,
      R => '0'
    );
\fifo_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(2),
      Q => \fifo_data_reg_n_0_[2]\,
      R => '0'
    );
\fifo_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(30),
      Q => \fifo_data_reg_n_0_[30]\,
      R => '0'
    );
\fifo_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(31),
      Q => \fifo_data_reg_n_0_[31]\,
      R => '0'
    );
\fifo_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(32),
      Q => \fifo_data_reg_n_0_[32]\,
      R => '0'
    );
\fifo_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(33),
      Q => \fifo_data_reg_n_0_[33]\,
      R => '0'
    );
\fifo_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(34),
      Q => \fifo_data_reg_n_0_[34]\,
      R => '0'
    );
\fifo_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(35),
      Q => \fifo_data_reg_n_0_[35]\,
      R => '0'
    );
\fifo_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(36),
      Q => \fifo_data_reg_n_0_[36]\,
      R => '0'
    );
\fifo_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(37),
      Q => \fifo_data_reg_n_0_[37]\,
      R => '0'
    );
\fifo_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(38),
      Q => \fifo_data_reg_n_0_[38]\,
      R => '0'
    );
\fifo_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(39),
      Q => \fifo_data_reg_n_0_[39]\,
      R => '0'
    );
\fifo_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(3),
      Q => \fifo_data_reg_n_0_[3]\,
      R => '0'
    );
\fifo_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(40),
      Q => \fifo_data_reg_n_0_[40]\,
      R => '0'
    );
\fifo_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(41),
      Q => \fifo_data_reg_n_0_[41]\,
      R => '0'
    );
\fifo_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(42),
      Q => \fifo_data_reg_n_0_[42]\,
      R => '0'
    );
\fifo_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(43),
      Q => \fifo_data_reg_n_0_[43]\,
      R => '0'
    );
\fifo_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(44),
      Q => \fifo_data_reg_n_0_[44]\,
      R => '0'
    );
\fifo_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(45),
      Q => \fifo_data_reg_n_0_[45]\,
      R => '0'
    );
\fifo_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(46),
      Q => \fifo_data_reg_n_0_[46]\,
      R => '0'
    );
\fifo_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(47),
      Q => \fifo_data_reg_n_0_[47]\,
      R => '0'
    );
\fifo_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(48),
      Q => \fifo_data_reg_n_0_[48]\,
      R => '0'
    );
\fifo_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(49),
      Q => \fifo_data_reg_n_0_[49]\,
      R => '0'
    );
\fifo_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(4),
      Q => \fifo_data_reg_n_0_[4]\,
      R => '0'
    );
\fifo_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(50),
      Q => \fifo_data_reg_n_0_[50]\,
      R => '0'
    );
\fifo_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(51),
      Q => \fifo_data_reg_n_0_[51]\,
      R => '0'
    );
\fifo_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(52),
      Q => \fifo_data_reg_n_0_[52]\,
      R => '0'
    );
\fifo_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(53),
      Q => \fifo_data_reg_n_0_[53]\,
      R => '0'
    );
\fifo_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(54),
      Q => \fifo_data_reg_n_0_[54]\,
      R => '0'
    );
\fifo_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(55),
      Q => \fifo_data_reg_n_0_[55]\,
      R => '0'
    );
\fifo_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(56),
      Q => \fifo_data_reg_n_0_[56]\,
      R => '0'
    );
\fifo_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(57),
      Q => \fifo_data_reg_n_0_[57]\,
      R => '0'
    );
\fifo_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(58),
      Q => \fifo_data_reg_n_0_[58]\,
      R => '0'
    );
\fifo_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(59),
      Q => \fifo_data_reg_n_0_[59]\,
      R => '0'
    );
\fifo_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(5),
      Q => \fifo_data_reg_n_0_[5]\,
      R => '0'
    );
\fifo_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(60),
      Q => \fifo_data_reg_n_0_[60]\,
      R => '0'
    );
\fifo_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(61),
      Q => \fifo_data_reg_n_0_[61]\,
      R => '0'
    );
\fifo_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(62),
      Q => \fifo_data_reg_n_0_[62]\,
      R => '0'
    );
\fifo_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(63),
      Q => \fifo_data_reg_n_0_[63]\,
      R => '0'
    );
\fifo_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(64),
      Q => \fifo_data_reg_n_0_[64]\,
      R => '0'
    );
\fifo_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(65),
      Q => \fifo_data_reg_n_0_[65]\,
      R => '0'
    );
\fifo_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(66),
      Q => \fifo_data_reg_n_0_[66]\,
      R => '0'
    );
\fifo_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(67),
      Q => \fifo_data_reg_n_0_[67]\,
      R => '0'
    );
\fifo_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(68),
      Q => \fifo_data_reg_n_0_[68]\,
      R => '0'
    );
\fifo_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(69),
      Q => \fifo_data_reg_n_0_[69]\,
      R => '0'
    );
\fifo_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(6),
      Q => \fifo_data_reg_n_0_[6]\,
      R => '0'
    );
\fifo_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(70),
      Q => \fifo_data_reg_n_0_[70]\,
      R => '0'
    );
\fifo_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(71),
      Q => \fifo_data_reg_n_0_[71]\,
      R => '0'
    );
\fifo_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(72),
      Q => \fifo_data_reg_n_0_[72]\,
      R => '0'
    );
\fifo_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(73),
      Q => \fifo_data_reg_n_0_[73]\,
      R => '0'
    );
\fifo_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(74),
      Q => \fifo_data_reg_n_0_[74]\,
      R => '0'
    );
\fifo_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(75),
      Q => \fifo_data_reg_n_0_[75]\,
      R => '0'
    );
\fifo_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(76),
      Q => \fifo_data_reg_n_0_[76]\,
      R => '0'
    );
\fifo_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(77),
      Q => \fifo_data_reg_n_0_[77]\,
      R => '0'
    );
\fifo_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(78),
      Q => \fifo_data_reg_n_0_[78]\,
      R => '0'
    );
\fifo_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(79),
      Q => \fifo_data_reg_n_0_[79]\,
      R => '0'
    );
\fifo_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(7),
      Q => \fifo_data_reg_n_0_[7]\,
      R => '0'
    );
\fifo_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(80),
      Q => \fifo_data_reg_n_0_[80]\,
      R => '0'
    );
\fifo_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(81),
      Q => \fifo_data_reg_n_0_[81]\,
      R => '0'
    );
\fifo_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(82),
      Q => \fifo_data_reg_n_0_[82]\,
      R => '0'
    );
\fifo_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(83),
      Q => \fifo_data_reg_n_0_[83]\,
      R => '0'
    );
\fifo_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(84),
      Q => \fifo_data_reg_n_0_[84]\,
      R => '0'
    );
\fifo_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(85),
      Q => \fifo_data_reg_n_0_[85]\,
      R => '0'
    );
\fifo_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(86),
      Q => \fifo_data_reg_n_0_[86]\,
      R => '0'
    );
\fifo_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(87),
      Q => \fifo_data_reg_n_0_[87]\,
      R => '0'
    );
\fifo_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(88),
      Q => \fifo_data_reg_n_0_[88]\,
      R => '0'
    );
\fifo_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(89),
      Q => \fifo_data_reg_n_0_[89]\,
      R => '0'
    );
\fifo_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(8),
      Q => \fifo_data_reg_n_0_[8]\,
      R => '0'
    );
\fifo_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(90),
      Q => \fifo_data_reg_n_0_[90]\,
      R => '0'
    );
\fifo_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(91),
      Q => \fifo_data_reg_n_0_[91]\,
      R => '0'
    );
\fifo_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(92),
      Q => \fifo_data_reg_n_0_[92]\,
      R => '0'
    );
\fifo_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(93),
      Q => \fifo_data_reg_n_0_[93]\,
      R => '0'
    );
\fifo_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(94),
      Q => \fifo_data_reg_n_0_[94]\,
      R => '0'
    );
\fifo_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(95),
      Q => \fifo_data_reg_n_0_[95]\,
      R => '0'
    );
\fifo_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(96),
      Q => p_0_in11_in,
      R => '0'
    );
\fifo_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => fifo_data0,
      D => i_rd_fifo_data(9),
      Q => \fifo_data_reg_n_0_[9]\,
      R => '0'
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \FSM_onehot_ro_proc_st[4]_i_3_n_0\,
      O => counter(2)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_limit(9),
      I1 => counter(9),
      I2 => cnt_limit(10),
      I3 => counter(10),
      I4 => counter(11),
      I5 => cnt_limit(11),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_limit(8),
      I1 => counter(8),
      I2 => cnt_limit(6),
      I3 => counter(6),
      I4 => counter(7),
      I5 => cnt_limit(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_limit(3),
      I1 => counter(3),
      I2 => cnt_limit(4),
      I3 => counter(4),
      I4 => counter(5),
      I5 => cnt_limit(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter(0),
      I1 => cnt_limit(0),
      I2 => cnt_limit(2),
      I3 => \counter_reg_n_0_[2]\,
      I4 => cnt_limit(1),
      I5 => counter(1),
      O => \i__carry_i_4_n_0\
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp_carry_n_0,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => ltOp_carry_i_1_n_0,
      DI(2) => ltOp_carry_i_2_n_0,
      DI(1) => ltOp_carry_i_3_n_0,
      DI(0) => ltOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ltOp_carry_i_5_n_0,
      S(2) => ltOp_carry_i_6_n_0,
      S(1) => ltOp_carry_i_7_n_0,
      S(0) => ltOp_carry_i_8_n_0
    );
\ltOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ltOp_carry_n_0,
      CO(3 downto 2) => \NLW_ltOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ltOp,
      CO(0) => \ltOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ltOp_carry__0_i_1_n_0\,
      DI(0) => \ltOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_ltOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \ltOp_carry__0_i_3_n_0\,
      S(0) => \ltOp_carry__0_i_4_n_0\
    );
\ltOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_rd_data_count(11),
      I1 => i_pre_trig_wind(11),
      I2 => i_rd_data_count(10),
      I3 => i_pre_trig_wind(10),
      O => \ltOp_carry__0_i_1_n_0\
    );
\ltOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_rd_data_count(9),
      I1 => i_pre_trig_wind(9),
      I2 => i_rd_data_count(8),
      I3 => i_pre_trig_wind(8),
      O => \ltOp_carry__0_i_2_n_0\
    );
\ltOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_pre_trig_wind(11),
      I1 => i_rd_data_count(11),
      I2 => i_pre_trig_wind(10),
      I3 => i_rd_data_count(10),
      O => \ltOp_carry__0_i_3_n_0\
    );
\ltOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_pre_trig_wind(9),
      I1 => i_rd_data_count(9),
      I2 => i_pre_trig_wind(8),
      I3 => i_rd_data_count(8),
      O => \ltOp_carry__0_i_4_n_0\
    );
ltOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_rd_data_count(7),
      I1 => i_pre_trig_wind(7),
      I2 => i_rd_data_count(6),
      I3 => i_pre_trig_wind(6),
      O => ltOp_carry_i_1_n_0
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_rd_data_count(5),
      I1 => i_pre_trig_wind(5),
      I2 => i_rd_data_count(4),
      I3 => i_pre_trig_wind(4),
      O => ltOp_carry_i_2_n_0
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_rd_data_count(3),
      I1 => i_pre_trig_wind(3),
      I2 => i_rd_data_count(2),
      I3 => i_pre_trig_wind(2),
      O => ltOp_carry_i_3_n_0
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_rd_data_count(1),
      I1 => i_pre_trig_wind(1),
      I2 => i_rd_data_count(0),
      I3 => i_pre_trig_wind(0),
      O => ltOp_carry_i_4_n_0
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_pre_trig_wind(7),
      I1 => i_rd_data_count(7),
      I2 => i_pre_trig_wind(6),
      I3 => i_rd_data_count(6),
      O => ltOp_carry_i_5_n_0
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_pre_trig_wind(5),
      I1 => i_rd_data_count(5),
      I2 => i_pre_trig_wind(4),
      I3 => i_rd_data_count(4),
      O => ltOp_carry_i_6_n_0
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_pre_trig_wind(3),
      I1 => i_rd_data_count(3),
      I2 => i_pre_trig_wind(2),
      I3 => i_rd_data_count(2),
      O => ltOp_carry_i_7_n_0
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_pre_trig_wind(1),
      I1 => i_rd_data_count(1),
      I2 => i_pre_trig_wind(0),
      I3 => i_rd_data_count(0),
      O => ltOp_carry_i_8_n_0
    );
\o_ascii[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send_reg_n_0_[0]\,
      I1 => in4(0),
      I2 => \send_proc_st__0\(2),
      I3 => in3(0),
      I4 => \send_proc_st__0\(0),
      I5 => in2(0),
      O => \o_ascii[0]_i_1_n_0\
    );
\o_ascii[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send_reg_n_0_[1]\,
      I1 => in4(1),
      I2 => \send_proc_st__0\(2),
      I3 => in3(1),
      I4 => \send_proc_st__0\(0),
      I5 => in2(1),
      O => \o_ascii[1]_i_1_n_0\
    );
\o_ascii[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \data_to_send_reg_n_0_[2]\,
      I1 => in4(2),
      I2 => \send_proc_st__0\(2),
      I3 => \send_proc_st__0\(0),
      I4 => in3(2),
      O => \o_ascii[2]_i_1_n_0\
    );
\o_ascii[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send_reg_n_0_[3]\,
      I1 => in4(3),
      I2 => \send_proc_st__0\(2),
      I3 => in3(3),
      I4 => \send_proc_st__0\(0),
      I5 => in2(3),
      O => \o_ascii[3]_i_1_n_0\
    );
\o_ascii[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \data_to_send_reg_n_0_[5]\,
      I1 => in4(4),
      I2 => \send_proc_st__0\(2),
      I3 => \send_proc_st__0\(0),
      I4 => in3(4),
      O => \o_ascii[4]_i_1_n_0\
    );
\o_ascii[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_to_send_reg_n_0_[5]\,
      I1 => in4(5),
      I2 => \send_proc_st__0\(2),
      I3 => in3(5),
      I4 => \send_proc_st__0\(0),
      I5 => in2(5),
      O => \o_ascii[5]_i_1_n_0\
    );
\o_ascii[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \send_proc_st__0\(1),
      I1 => \send_proc_st__0\(2),
      I2 => i_rst,
      O => o_ascii0
    );
\o_ascii[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \data_to_send_reg_n_0_[6]\,
      I1 => in4(6),
      I2 => \send_proc_st__0\(2),
      I3 => \send_proc_st__0\(0),
      I4 => in3(6),
      O => \o_ascii[6]_i_2_n_0\
    );
\o_ascii_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => o_ascii0,
      D => \o_ascii[0]_i_1_n_0\,
      Q => o_ascii(0),
      R => '0'
    );
\o_ascii_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => o_ascii0,
      D => \o_ascii[1]_i_1_n_0\,
      Q => o_ascii(1),
      R => '0'
    );
\o_ascii_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => o_ascii0,
      D => \o_ascii[2]_i_1_n_0\,
      Q => o_ascii(2),
      R => '0'
    );
\o_ascii_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => o_ascii0,
      D => \o_ascii[3]_i_1_n_0\,
      Q => o_ascii(3),
      R => '0'
    );
\o_ascii_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => o_ascii0,
      D => \o_ascii[4]_i_1_n_0\,
      Q => o_ascii(4),
      R => '0'
    );
\o_ascii_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => o_ascii0,
      D => \o_ascii[5]_i_1_n_0\,
      Q => o_ascii(5),
      R => '0'
    );
\o_ascii_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => o_ascii0,
      D => \o_ascii[6]_i_2_n_0\,
      Q => o_ascii(6),
      R => '0'
    );
o_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => busy_reg_n_0,
      I1 => sending_data_reg_n_0,
      O => o_busy
    );
\o_ro_proc_st_debug_states[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[1]\,
      O => o_ro_proc_st_debug_states(0)
    );
\o_ro_proc_st_debug_states[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prev_trigger_st,
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      O => o_ro_proc_st_debug_states(1)
    );
o_trig_RO_end_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEA00EA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I2 => eqOp,
      I3 => i_rst,
      I4 => \^o_trig_ro_end\,
      O => o_trig_RO_end_i_1_n_0
    );
o_trig_RO_end_reg: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => '1',
      D => o_trig_RO_end_i_1_n_0,
      Q => \^o_trig_ro_end\,
      R => '0'
    );
\o_wr_fifo_data[96]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => busy_reg_n_0,
      I1 => i_trigger,
      O => o_wr_fifo_data(0)
    );
o_wr_fifo_en_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_fifo_en_reg_n_0,
      I1 => i_wr_fifo_full,
      O => o_wr_fifo_en
    );
outfifo_wr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF060006"
    )
        port map (
      I0 => \send_proc_st__0\(1),
      I1 => \send_proc_st__0\(2),
      I2 => i_next_fifo_full,
      I3 => i_rst,
      I4 => \^o_outfifo_wr_en\,
      O => outfifo_wr_en_i_1_n_0
    );
outfifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => outfifo_wr_en_i_1_n_0,
      Q => \^o_outfifo_wr_en\,
      R => '0'
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__0/i__carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => in12(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => counter(11 downto 9)
    );
prev_DRS4_DWRITEn_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => i_DRS4_DWRITEn,
      I1 => prev_trigger_st,
      I2 => i_rst,
      I3 => prev_DRS4_DWRITEn,
      O => prev_DRS4_DWRITEn_i_1_n_0
    );
prev_DRS4_DWRITEn_reg: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => '1',
      D => prev_DRS4_DWRITEn_i_1_n_0,
      Q => prev_DRS4_DWRITEn,
      R => '0'
    );
prev_post_trigger_sample_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => p_0_in11_in,
      I1 => \^o_read_proc_st_debug_states[3]\(3),
      I2 => prev_post_trigger_sample,
      I3 => prev_post_trigger_sample_reg_n_0,
      O => prev_post_trigger_sample_i_1_n_0
    );
prev_post_trigger_sample_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800202"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(0),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => \^o_rd_fifo_en\,
      I4 => \^o_read_proc_st_debug_states[3]\(3),
      O => prev_post_trigger_sample
    );
prev_post_trigger_sample_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => '1',
      CLR => i_rst,
      D => prev_post_trigger_sample_i_1_n_0,
      Q => prev_post_trigger_sample_reg_n_0
    );
prev_trigger_st_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => i_trigger,
      I1 => prev_trigger_st,
      I2 => i_rst,
      I3 => prev_trigger_st_reg_n_0,
      O => prev_trigger_st_i_1_n_0
    );
prev_trigger_st_reg: unisim.vcomponents.FDRE
     port map (
      C => i_data_clk,
      CE => '1',
      D => prev_trigger_st_i_1_n_0,
      Q => prev_trigger_st_reg_n_0,
      R => '0'
    );
rd_fifo_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A222A222A220800"
    )
        port map (
      I0 => rd_fifo_en_i_2_n_0,
      I1 => \^o_read_proc_st_debug_states[3]\(3),
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => busy_reg_n_0,
      I5 => ltOp,
      O => rd_fifo_en
    );
rd_fifo_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54040004"
    )
        port map (
      I0 => i_rd_fifo_empty,
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \^o_read_proc_st_debug_states[3]\(1),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => \^o_read_proc_st_debug_states[3]\(3),
      O => rd_fifo_en_i_2_n_0
    );
rd_fifo_en_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => i_rst,
      D => rd_fifo_en,
      Q => \^o_rd_fifo_en\
    );
\readout_sample_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[0]\,
      O => \readout_sample_counter[0]_i_1_n_0\
    );
\readout_sample_counter[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D00"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => p_0_in11_in,
      I2 => prev_post_trigger_sample_reg_n_0,
      I3 => readout_sample_counter0,
      O => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020050000"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \^o_rd_fifo_en\,
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => \^o_read_proc_st_debug_states[3]\(1),
      I4 => \^o_read_proc_st_debug_states[3]\(0),
      I5 => i_rst,
      O => readout_sample_counter0
    );
\readout_sample_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F300FFFFAAAAAAAA"
    )
        port map (
      I0 => \readout_sample_counter_reg_n_0_[11]\,
      I1 => p_0_in11_in,
      I2 => prev_post_trigger_sample_reg_n_0,
      I3 => \readout_sample_counter_reg[10]_i_3_n_5\,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => readout_sample_counter0,
      O => \readout_sample_counter[11]_i_1_n_0\
    );
\readout_sample_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter[0]_i_1_n_0\,
      Q => \readout_sample_counter_reg_n_0_[0]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[10]_i_3_n_6\,
      Q => \readout_sample_counter_reg_n_0_[10]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[10]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \readout_sample_counter_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_readout_sample_counter_reg[10]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \readout_sample_counter_reg[10]_i_3_n_2\,
      CO(0) => \readout_sample_counter_reg[10]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_readout_sample_counter_reg[10]_i_3_O_UNCONNECTED\(3),
      O(2) => \readout_sample_counter_reg[10]_i_3_n_5\,
      O(1) => \readout_sample_counter_reg[10]_i_3_n_6\,
      O(0) => \readout_sample_counter_reg[10]_i_3_n_7\,
      S(3) => '0',
      S(2) => \readout_sample_counter_reg_n_0_[11]\,
      S(1) => \readout_sample_counter_reg_n_0_[10]\,
      S(0) => \readout_sample_counter_reg_n_0_[9]\
    );
\readout_sample_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \readout_sample_counter[11]_i_1_n_0\,
      Q => \readout_sample_counter_reg_n_0_[11]\,
      R => '0'
    );
\readout_sample_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[4]_i_1_n_7\,
      Q => \readout_sample_counter_reg_n_0_[1]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[4]_i_1_n_6\,
      Q => \readout_sample_counter_reg_n_0_[2]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[4]_i_1_n_5\,
      Q => \readout_sample_counter_reg_n_0_[3]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[4]_i_1_n_4\,
      Q => \readout_sample_counter_reg_n_0_[4]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \readout_sample_counter_reg[4]_i_1_n_0\,
      CO(2) => \readout_sample_counter_reg[4]_i_1_n_1\,
      CO(1) => \readout_sample_counter_reg[4]_i_1_n_2\,
      CO(0) => \readout_sample_counter_reg[4]_i_1_n_3\,
      CYINIT => \readout_sample_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \readout_sample_counter_reg[4]_i_1_n_4\,
      O(2) => \readout_sample_counter_reg[4]_i_1_n_5\,
      O(1) => \readout_sample_counter_reg[4]_i_1_n_6\,
      O(0) => \readout_sample_counter_reg[4]_i_1_n_7\,
      S(3) => \readout_sample_counter_reg_n_0_[4]\,
      S(2) => \readout_sample_counter_reg_n_0_[3]\,
      S(1) => \readout_sample_counter_reg_n_0_[2]\,
      S(0) => \readout_sample_counter_reg_n_0_[1]\
    );
\readout_sample_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[8]_i_1_n_7\,
      Q => \readout_sample_counter_reg_n_0_[5]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[8]_i_1_n_6\,
      Q => \readout_sample_counter_reg_n_0_[6]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[8]_i_1_n_5\,
      Q => \readout_sample_counter_reg_n_0_[7]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[8]_i_1_n_4\,
      Q => \readout_sample_counter_reg_n_0_[8]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
\readout_sample_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readout_sample_counter_reg[4]_i_1_n_0\,
      CO(3) => \readout_sample_counter_reg[8]_i_1_n_0\,
      CO(2) => \readout_sample_counter_reg[8]_i_1_n_1\,
      CO(1) => \readout_sample_counter_reg[8]_i_1_n_2\,
      CO(0) => \readout_sample_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readout_sample_counter_reg[8]_i_1_n_4\,
      O(2) => \readout_sample_counter_reg[8]_i_1_n_5\,
      O(1) => \readout_sample_counter_reg[8]_i_1_n_6\,
      O(0) => \readout_sample_counter_reg[8]_i_1_n_7\,
      S(3) => \readout_sample_counter_reg_n_0_[8]\,
      S(2) => \readout_sample_counter_reg_n_0_[7]\,
      S(1) => \readout_sample_counter_reg_n_0_[6]\,
      S(0) => \readout_sample_counter_reg_n_0_[5]\
    );
\readout_sample_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => readout_sample_counter0,
      D => \readout_sample_counter_reg[10]_i_3_n_7\,
      Q => \readout_sample_counter_reg_n_0_[9]\,
      R => \readout_sample_counter[10]_i_1_n_0\
    );
send_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => send_data_i_2_n_0,
      I1 => send_data_i_3_n_0,
      I2 => \^o_read_proc_st_debug_states[3]\(1),
      I3 => \^o_read_proc_st_debug_states[3]\(2),
      I4 => send_data_reg_n_0,
      O => send_data_i_1_n_0
    );
send_data_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003302FE00FF00CC"
    )
        port map (
      I0 => i_stop_cell_ready,
      I1 => \^o_read_proc_st_debug_states[3]\(3),
      I2 => \^o_read_proc_st_debug_states[3]\(0),
      I3 => send_data_i_4_n_0,
      I4 => \^o_read_proc_st_debug_states[3]\(1),
      I5 => \^o_read_proc_st_debug_states[3]\(2),
      O => send_data_i_2_n_0
    );
send_data_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => i_stop_cell_ready,
      I1 => \^o_read_proc_st_debug_states[3]\(0),
      I2 => \^o_read_proc_st_debug_states[3]\(3),
      O => send_data_i_3_n_0
    );
send_data_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => send_data_reg_n_0,
      I1 => data_sent_reg_n_0,
      O => send_data_i_4_n_0
    );
send_data_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => i_rst,
      D => send_data_i_1_n_0,
      Q => send_data_reg_n_0
    );
\send_proc_st[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \send_proc_st[0]_i_1_n_0\
    );
\send_proc_st[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \send_proc_st[1]_i_1_n_0\
    );
\send_proc_st[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07069F9F"
    )
        port map (
      I0 => \send_proc_st__0\(2),
      I1 => \send_proc_st__0\(1),
      I2 => i_next_fifo_full,
      I3 => send_data_reg_n_0,
      I4 => \send_proc_st__0\(0),
      O => send_proc_st
    );
\send_proc_st[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \send_proc_st[2]_i_2_n_0\
    );
\send_proc_st_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_clk,
      CE => send_proc_st,
      CLR => i_rst,
      D => \send_proc_st[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\send_proc_st_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => send_proc_st,
      CLR => i_rst,
      D => \send_proc_st[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\send_proc_st_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_clk,
      CE => send_proc_st,
      CLR => i_rst,
      D => \send_proc_st[2]_i_2_n_0\,
      Q => \^q\(2)
    );
sending_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE00FE"
    )
        port map (
      I0 => \^o_read_proc_st_debug_states[3]\(3),
      I1 => \^o_read_proc_st_debug_states[3]\(1),
      I2 => \^o_read_proc_st_debug_states[3]\(2),
      I3 => i_rst,
      I4 => sending_data_reg_n_0,
      O => sending_data_i_1_n_0
    );
sending_data_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sending_data_i_1_n_0,
      Q => sending_data_reg_n_0,
      R => '0'
    );
wr_fifo_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F4400"
    )
        port map (
      I0 => eqOp,
      I1 => \FSM_onehot_ro_proc_st_reg_n_0_[3]\,
      I2 => \FSM_onehot_ro_proc_st[3]_i_2_n_0\,
      I3 => \FSM_onehot_ro_proc_st[3]_i_3_n_0\,
      I4 => prev_trigger_st,
      O => wr_fifo_en
    );
wr_fifo_en_reg: unisim.vcomponents.FDCE
     port map (
      C => i_data_clk,
      CE => '1',
      CLR => i_rst,
      D => wr_fifo_en,
      Q => wr_fifo_en_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_ROController_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_ROController_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_ROController_0_0 : entity is "zsys_ROController_0_0,ROController,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_ROController_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_ROController_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of zsys_ROController_0_0 : entity is "ROController,Vivado 2018.2";
end zsys_ROController_0_0;

architecture STRUCTURE of zsys_ROController_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^i_data_ch0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_ch1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_ch2\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_ch3\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_ch4\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_ch5\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_ch6\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_ch7\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_data_clk\ : STD_LOGIC;
  signal \^o_ascii\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^o_send_data_control_debug_states\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^o_wr_fifo_data\ : STD_LOGIC_VECTOR ( 96 to 96 );
  attribute async_reg : string;
  attribute async_reg of i_DRS4_DWRITEn : signal is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of i_data_clk : signal is "xilinx.com:signal:clock:1.0 i_data_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_data_clk : signal is "XIL_INTERFACENAME i_data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_0_0_o_data_clk";
  attribute x_interface_info of i_rd_fifo_empty : signal is "xilinx.com:interface:fifo_read:1.0 i_rd_fifo EMPTY";
  attribute x_interface_info of i_rst : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of i_rst : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of i_wr_fifo_full : signal is "xilinx.com:interface:fifo_write:1.0 o_wr_fifo FULL";
  attribute x_interface_info of o_rd_fifo_clk : signal is "xilinx.com:signal:clock:1.0 o_rd_fifo_clk CLK";
  attribute x_interface_parameter of o_rd_fifo_clk : signal is "XIL_INTERFACENAME o_rd_fifo_clk, ASSOCIATED_BUSIF sys_clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_ROController_0_0_o_rd_fifo_clk";
  attribute x_interface_info of o_rd_fifo_en : signal is "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_EN";
  attribute x_interface_info of o_wr_fifo_clk : signal is "xilinx.com:signal:clock:1.0 o_wr_fifo_clk CLK";
  attribute x_interface_parameter of o_wr_fifo_clk : signal is "XIL_INTERFACENAME o_wr_fifo_clk, ASSOCIATED_BUSIF o_wr_fifo_clk, FREQ_HZ 16000000, PHASE 0.000, CLK_DOMAIN zsys_ROController_0_0_o_wr_fifo_clk";
  attribute x_interface_info of o_wr_fifo_en : signal is "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_EN";
  attribute x_interface_info of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clock CLK";
  attribute x_interface_parameter of sys_clk : signal is "XIL_INTERFACENAME sys_clock, ASSOCIATED_BUSIF sys_clock, ASSOCIATED_RESET i_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of i_rd_fifo_data : signal is "xilinx.com:interface:fifo_read:1.0 i_rd_fifo RD_DATA";
  attribute x_interface_info of o_wr_fifo_data : signal is "xilinx.com:interface:fifo_write:1.0 o_wr_fifo WR_DATA";
begin
  \^i_data_ch0\(11 downto 0) <= i_data_ch0(11 downto 0);
  \^i_data_ch1\(11 downto 0) <= i_data_ch1(11 downto 0);
  \^i_data_ch2\(11 downto 0) <= i_data_ch2(11 downto 0);
  \^i_data_ch3\(11 downto 0) <= i_data_ch3(11 downto 0);
  \^i_data_ch4\(11 downto 0) <= i_data_ch4(11 downto 0);
  \^i_data_ch5\(11 downto 0) <= i_data_ch5(11 downto 0);
  \^i_data_ch6\(11 downto 0) <= i_data_ch6(11 downto 0);
  \^i_data_ch7\(11 downto 0) <= i_data_ch7(11 downto 0);
  \^i_data_clk\ <= i_data_clk;
  o_ascii(7) <= \<const0>\;
  o_ascii(6 downto 0) <= \^o_ascii\(6 downto 0);
  o_send_data_control_debug_states(4) <= \<const0>\;
  o_send_data_control_debug_states(3) <= \<const0>\;
  o_send_data_control_debug_states(2 downto 0) <= \^o_send_data_control_debug_states\(2 downto 0);
  o_wr_fifo_clk <= \^i_data_clk\;
  o_wr_fifo_data(96) <= \^o_wr_fifo_data\(96);
  o_wr_fifo_data(95 downto 84) <= \^i_data_ch3\(11 downto 0);
  o_wr_fifo_data(83 downto 72) <= \^i_data_ch2\(11 downto 0);
  o_wr_fifo_data(71 downto 60) <= \^i_data_ch1\(11 downto 0);
  o_wr_fifo_data(59 downto 48) <= \^i_data_ch0\(11 downto 0);
  o_wr_fifo_data(47 downto 36) <= \^i_data_ch7\(11 downto 0);
  o_wr_fifo_data(35 downto 24) <= \^i_data_ch6\(11 downto 0);
  o_wr_fifo_data(23 downto 12) <= \^i_data_ch5\(11 downto 0);
  o_wr_fifo_data(11 downto 0) <= \^i_data_ch4\(11 downto 0);
  o_rd_fifo_clk <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zsys_ROController_0_0_ROController
     port map (
      Q(2 downto 0) => \^o_send_data_control_debug_states\(2 downto 0),
      i_DRS4_DWRITEn => i_DRS4_DWRITEn,
      i_data_clk => \^i_data_clk\,
      i_next_fifo_full => i_next_fifo_full,
      i_post_trig_wind(11 downto 0) => i_post_trig_wind(11 downto 0),
      i_pre_trig_wind(11 downto 0) => i_pre_trig_wind(11 downto 0),
      i_rd_data_count(11 downto 0) => i_rd_data_count(11 downto 0),
      i_rd_fifo_data(96 downto 0) => i_rd_fifo_data(96 downto 0),
      i_rd_fifo_empty => i_rd_fifo_empty,
      i_rst => i_rst,
      i_stop_cell(9 downto 0) => i_stop_cell(9 downto 0),
      i_stop_cell_ready => i_stop_cell_ready,
      i_trigger => i_trigger,
      i_veto => i_veto,
      i_wr_fifo_full => i_wr_fifo_full,
      o_ascii(6 downto 0) => \^o_ascii\(6 downto 0),
      o_busy => o_busy,
      o_outfifo_wr_en => o_outfifo_wr_en,
      o_rd_fifo_en => o_rd_fifo_en,
      \o_read_proc_st_debug_states[3]\(3 downto 0) => o_read_proc_st_debug_states(3 downto 0),
      o_ro_proc_st_debug_states(1 downto 0) => o_ro_proc_st_debug_states(1 downto 0),
      o_trig_RO_end => o_trig_RO_end,
      o_wr_fifo_data(0) => \^o_wr_fifo_data\(96),
      o_wr_fifo_en => o_wr_fifo_en,
      \out\(0) => o_ro_proc_st_debug_states(2),
      sys_clk => sys_clk
    );
end STRUCTURE;
