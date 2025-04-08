-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu May 19 23:45:43 2022
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.srcs/sources_1/bd/zsys/ip/zsys_DRS4_firmware_1_0/zsys_DRS4_firmware_1_0_sim_netlist.vhdl
-- Design      : zsys_DRS4_firmware_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_DRS4_firmware_1_0_drs4_firmware is
  port (
    dwrite_o_reg_P_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    start_conf_1 : out STD_LOGIC;
    start_conf_2 : out STD_LOGIC;
    drs4_trigs_reg_0 : out STD_LOGIC;
    o_srclk_adc : out STD_LOGIC;
    load_srin_1 : out STD_LOGIC;
    load_srin_2 : out STD_LOGIC;
    o_stop_cell_ready : out STD_LOGIC;
    o_srclk : out STD_LOGIC;
    o_srin : out STD_LOGIC;
    o_rsrload : out STD_LOGIC;
    o_denable : out STD_LOGIC;
    o_refclk_p : out STD_LOGIC;
    o_dwrite_for_trigger : out STD_LOGIC;
    \drs_sr_count_reg[10]_0\ : out STD_LOGIC;
    rsrload_o_reg_0 : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    rsrload_o_reg_1 : out STD_LOGIC;
    \FSM_onehot_drs4_states_reg[5]_0\ : out STD_LOGIC;
    srclk_o : out STD_LOGIC;
    srin_o_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 14 downto 0 );
    trigger_reset : out STD_LOGIC;
    rsrload_o_reg_2 : out STD_LOGIC;
    srin_o_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_refclk_reg[6]_0\ : out STD_LOGIC;
    \slv_reg2_reg[2]\ : out STD_LOGIC;
    o_stop_cell : out STD_LOGIC_VECTOR ( 9 downto 0 );
    srin_o_reg_2 : out STD_LOGIC;
    srin_o_reg_3 : out STD_LOGIC;
    srin_o_reg_4 : out STD_LOGIC;
    srclk_o_reg_0 : out STD_LOGIC;
    o_A3_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    conf_reg_init : in STD_LOGIC;
    clk_drs4 : in STD_LOGIC;
    CONF_REG_start0 : in STD_LOGIC;
    i_drs4_trigger : in STD_LOGIC;
    axi_rst : in STD_LOGIC;
    shift_reg_init : in STD_LOGIC;
    RSR_init_start0 : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[3]_0\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[14]_0\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[15]_0\ : in STD_LOGIC;
    srin_o_reg_5 : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[13]_0\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[9]_0\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[10]_0\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[6]_0\ : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 14 downto 0 );
    axi_wready_reg : in STD_LOGIC;
    start_ROI : in STD_LOGIC;
    start_full_readout : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    axi_awready_reg : in STD_LOGIC;
    \config_states_axi_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_SROUT : in STD_LOGIC;
    \trigger_delay_count_axi_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \cell_counts_axi_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_DRS4_firmware_1_0_drs4_firmware : entity is "drs4_firmware";
end zsys_DRS4_firmware_1_0_drs4_firmware;

architecture STRUCTURE of zsys_DRS4_firmware_1_0_drs4_firmware is
  signal A3_0_o : STD_LOGIC;
  signal \A3_0_o[0]_i_10_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_11_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_12_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_14_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_15_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_16_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_17_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_18_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_19_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_20_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_21_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_22_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_4_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_6_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_7_n_0\ : STD_LOGIC;
  signal \A3_0_o[0]_i_9_n_0\ : STD_LOGIC;
  signal \A3_0_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \A3_0_o[1]_i_2_n_0\ : STD_LOGIC;
  signal \A3_0_o[1]_i_3_n_0\ : STD_LOGIC;
  signal \A3_0_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \A3_0_o[2]_i_2_n_0\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_13_n_1\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_13_n_2\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_13_n_3\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_5_n_1\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_8_n_1\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_8_n_2\ : STD_LOGIC;
  signal \A3_0_o_reg[0]_i_8_n_3\ : STD_LOGIC;
  signal CONF_REG_start : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_drs4_states[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[16]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states[9]_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_drs4_states_reg[5]_0\ : STD_LOGIC;
  signal \FSM_onehot_drs4_states_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_drs4_states_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_drs4_states_reg_n_0_[11]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_drs4_states_reg_n_0_[11]\ : signal is "yes";
  signal \FSM_onehot_drs4_states_reg_n_0_[16]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_drs4_states_reg_n_0_[16]\ : signal is "yes";
  signal RSR_init_start : STD_LOGIC;
  signal SROUT_count : STD_LOGIC;
  signal \SROUT_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_count[3]_i_3_n_0\ : STD_LOGIC;
  signal \SROUT_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \SROUT_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \SROUT_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \SROUT_count_reg_n_0_[3]\ : STD_LOGIC;
  signal SROUT_vector : STD_LOGIC_VECTOR ( 0 to 9 );
  signal \SROUT_vector[0]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[0]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[1]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[1]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[2]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[2]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[3]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[3]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[3]_i_3_n_0\ : STD_LOGIC;
  signal \SROUT_vector[3]_i_4_n_0\ : STD_LOGIC;
  signal \SROUT_vector[4]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[4]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[5]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[5]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[6]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[7]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[7]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[8]_i_1_n_0\ : STD_LOGIC;
  signal \SROUT_vector[8]_i_2_n_0\ : STD_LOGIC;
  signal \SROUT_vector[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_refclk[6]_i_3_n_0\ : STD_LOGIC;
  signal \^count_refclk_reg[6]_0\ : STD_LOGIC;
  signal \count_refclk_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \counter_init[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[17]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[18]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[19]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[21]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[22]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[25]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[26]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[27]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[29]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[30]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_10_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter_init[31]_i_9_n_0\ : STD_LOGIC;
  signal \counter_init[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \counter_init_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \counter_init_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \counter_init_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \counter_init_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \counter_init_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \counter_init_reg[31]_i_8_n_2\ : STD_LOGIC;
  signal \counter_init_reg[31]_i_8_n_3\ : STD_LOGIC;
  signal \counter_init_reg[31]_i_8_n_5\ : STD_LOGIC;
  signal \counter_init_reg[31]_i_8_n_6\ : STD_LOGIC;
  signal \counter_init_reg[31]_i_8_n_7\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \counter_init_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \counter_init_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[24]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[25]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[26]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[27]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[28]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[29]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[30]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[31]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_init_reg_n_0_[9]\ : STD_LOGIC;
  signal \drs4_states0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \drs4_states0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \drs4_states0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \drs4_states0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal drs4_states1 : STD_LOGIC;
  signal drs4_trigs0 : STD_LOGIC;
  signal \^drs4_trigs_reg_0\ : STD_LOGIC;
  signal \drs_sr_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_11_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_12_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_13_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_14_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_15_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_16_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_17_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_18_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_20_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_21_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_22_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_23_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_24_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_25_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_26_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_27_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_29_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_30_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_31_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_32_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_33_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_34_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_35_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_36_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_37_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_38_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_39_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_3_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_40_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_41_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_42_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_6_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_7_n_0\ : STD_LOGIC;
  signal \drs_sr_count[10]_i_8_n_0\ : STD_LOGIC;
  signal \drs_sr_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \drs_sr_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \drs_sr_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \drs_sr_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \^drs_sr_count_reg[10]_0\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_10_n_0\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_10_n_1\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_10_n_2\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_10_n_3\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_19_n_0\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_19_n_1\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_19_n_2\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_19_n_3\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_28_n_0\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_28_n_1\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_28_n_2\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_28_n_3\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_9_n_1\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_9_n_2\ : STD_LOGIC;
  signal \drs_sr_count_reg[10]_i_9_n_3\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \drs_sr_count_reg_n_0_[9]\ : STD_LOGIC;
  signal dwrite_o0 : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_100_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_101_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_102_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_103_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_104_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_105_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_106_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_107_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_108_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_109_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_110_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_111_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_112_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_113_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_114_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_115_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_116_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_117_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_118_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_119_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_4_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_56_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_57_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_58_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_59_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_5_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_60_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_61_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_62_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_63_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_64_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_65_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_66_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_67_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_68_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_69_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_6_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_70_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_71_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_72_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_73_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_74_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_75_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_76_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_77_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_78_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_79_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_7_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_80_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_81_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_82_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_83_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_84_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_85_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_86_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_87_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_88_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_89_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_90_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_91_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_92_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_93_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_94_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_95_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_96_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_97_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_98_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_P_i_99_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_10_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_11_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_12_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_13_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_14_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_15_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_16_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_17_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_18_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_19_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_1_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_20_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_21_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_22_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_23_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_24_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_25_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_26_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_27_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_28_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_29_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_2_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_30_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_31_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_32_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_33_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_34_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_35_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_36_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_37_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_38_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_39_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_3_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_40_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_41_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_42_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_43_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_44_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_45_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_46_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_47_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_48_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_49_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_50_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_51_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_52_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_53_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_54_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_55_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_8_n_0\ : STD_LOGIC;
  signal \dwrite_o0_inferred__0/dwrite_o_reg_P_i_9_n_0\ : STD_LOGIC;
  signal dwrite_o_reg_LDC_n_0 : STD_LOGIC;
  signal \^dwrite_o_reg_p_0\ : STD_LOGIC;
  signal dwrite_o_reg_P_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \^load_srin_1\ : STD_LOGIC;
  signal \^o_a3_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^o_srclk\ : STD_LOGIC;
  signal \^o_srclk_adc\ : STD_LOGIC;
  signal \^o_stop_cell\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \o_stop_cell[9]_i_1_n_0\ : STD_LOGIC;
  signal o_stop_cell_ready_i_1_n_0 : STD_LOGIC;
  signal o_stop_cell_ready_i_2_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal refclk_p_o_i_3_n_0 : STD_LOGIC;
  signal refclk_p_o_i_4_n_0 : STD_LOGIC;
  signal rsrload_o_i_10_n_0 : STD_LOGIC;
  signal rsrload_o_i_11_n_0 : STD_LOGIC;
  signal rsrload_o_i_12_n_0 : STD_LOGIC;
  signal rsrload_o_i_13_n_0 : STD_LOGIC;
  signal rsrload_o_i_14_n_0 : STD_LOGIC;
  signal rsrload_o_i_15_n_0 : STD_LOGIC;
  signal rsrload_o_i_16_n_0 : STD_LOGIC;
  signal rsrload_o_i_17_n_0 : STD_LOGIC;
  signal rsrload_o_i_6_n_0 : STD_LOGIC;
  signal rsrload_o_i_7_n_0 : STD_LOGIC;
  signal rsrload_o_i_8_n_0 : STD_LOGIC;
  signal rsrload_o_i_9_n_0 : STD_LOGIC;
  signal \slv_reg2[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg2[3]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[3]_i_3_n_0\ : STD_LOGIC;
  signal \^slv_reg2_reg[2]\ : STD_LOGIC;
  signal srclk_final_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \srclk_o0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__0_n_1\ : STD_LOGIC;
  signal \srclk_o0_carry__0_n_2\ : STD_LOGIC;
  signal \srclk_o0_carry__0_n_3\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__1_n_1\ : STD_LOGIC;
  signal \srclk_o0_carry__1_n_2\ : STD_LOGIC;
  signal \srclk_o0_carry__1_n_3\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_n_0\ : STD_LOGIC;
  signal \srclk_o0_carry__2_n_1\ : STD_LOGIC;
  signal \srclk_o0_carry__2_n_2\ : STD_LOGIC;
  signal \srclk_o0_carry__2_n_3\ : STD_LOGIC;
  signal srclk_o0_carry_i_1_n_0 : STD_LOGIC;
  signal srclk_o0_carry_i_2_n_0 : STD_LOGIC;
  signal srclk_o0_carry_i_3_n_0 : STD_LOGIC;
  signal srclk_o0_carry_i_4_n_0 : STD_LOGIC;
  signal srclk_o0_carry_i_5_n_0 : STD_LOGIC;
  signal srclk_o0_carry_i_6_n_0 : STD_LOGIC;
  signal srclk_o0_carry_i_7_n_0 : STD_LOGIC;
  signal srclk_o0_carry_i_8_n_0 : STD_LOGIC;
  signal srclk_o0_carry_n_0 : STD_LOGIC;
  signal srclk_o0_carry_n_1 : STD_LOGIC;
  signal srclk_o0_carry_n_2 : STD_LOGIC;
  signal srclk_o0_carry_n_3 : STD_LOGIC;
  signal srclk_o2 : STD_LOGIC;
  signal srclk_o27_in : STD_LOGIC;
  signal \srclk_o2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__0_n_1\ : STD_LOGIC;
  signal \srclk_o2_carry__0_n_2\ : STD_LOGIC;
  signal \srclk_o2_carry__0_n_3\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__1_n_1\ : STD_LOGIC;
  signal \srclk_o2_carry__1_n_2\ : STD_LOGIC;
  signal \srclk_o2_carry__1_n_3\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \srclk_o2_carry__2_n_1\ : STD_LOGIC;
  signal \srclk_o2_carry__2_n_2\ : STD_LOGIC;
  signal \srclk_o2_carry__2_n_3\ : STD_LOGIC;
  signal srclk_o2_carry_i_1_n_0 : STD_LOGIC;
  signal srclk_o2_carry_i_2_n_0 : STD_LOGIC;
  signal srclk_o2_carry_i_3_n_0 : STD_LOGIC;
  signal srclk_o2_carry_i_4_n_0 : STD_LOGIC;
  signal srclk_o2_carry_i_5_n_0 : STD_LOGIC;
  signal srclk_o2_carry_i_6_n_0 : STD_LOGIC;
  signal srclk_o2_carry_i_7_n_0 : STD_LOGIC;
  signal srclk_o2_carry_i_8_n_0 : STD_LOGIC;
  signal srclk_o2_carry_n_0 : STD_LOGIC;
  signal srclk_o2_carry_n_1 : STD_LOGIC;
  signal srclk_o2_carry_n_2 : STD_LOGIC;
  signal srclk_o2_carry_n_3 : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \srclk_o2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal srclk_o_i_5_n_0 : STD_LOGIC;
  signal srclk_o_i_6_n_0 : STD_LOGIC;
  signal srclk_o_i_7_n_0 : STD_LOGIC;
  signal srclk_test_o_i_1_n_0 : STD_LOGIC;
  signal srin_o2 : STD_LOGIC;
  signal srin_o20_in : STD_LOGIC;
  signal srin_o21_in : STD_LOGIC;
  signal srin_o22_in : STD_LOGIC;
  signal srin_o24_in : STD_LOGIC;
  signal srin_o25_in : STD_LOGIC;
  signal \srin_o2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__0_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__0_n_1\ : STD_LOGIC;
  signal \srin_o2_carry__0_n_2\ : STD_LOGIC;
  signal \srin_o2_carry__0_n_3\ : STD_LOGIC;
  signal \srin_o2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \srin_o2_carry__1_n_2\ : STD_LOGIC;
  signal \srin_o2_carry__1_n_3\ : STD_LOGIC;
  signal srin_o2_carry_i_1_n_0 : STD_LOGIC;
  signal srin_o2_carry_i_2_n_0 : STD_LOGIC;
  signal srin_o2_carry_i_3_n_0 : STD_LOGIC;
  signal srin_o2_carry_i_4_n_0 : STD_LOGIC;
  signal srin_o2_carry_n_0 : STD_LOGIC;
  signal srin_o2_carry_n_1 : STD_LOGIC;
  signal srin_o2_carry_n_2 : STD_LOGIC;
  signal srin_o2_carry_n_3 : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry__0_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry__0_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry__0_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry__1_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry__1_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry__0_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry__0_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry__0_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry__0_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry__1_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry__1_n_3\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry_n_0\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry_n_1\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry_n_2\ : STD_LOGIC;
  signal \srin_o2_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal srin_o_i_10_n_0 : STD_LOGIC;
  signal srin_o_i_11_n_0 : STD_LOGIC;
  signal srin_o_i_7_n_0 : STD_LOGIC;
  signal srin_o_i_8_n_0 : STD_LOGIC;
  signal srin_o_i_9_n_0 : STD_LOGIC;
  signal \^start_conf_1\ : STD_LOGIC;
  signal trig_delay : STD_LOGIC_VECTOR ( 0 to 2047 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of trig_delay : signal is std.standard.true;
  signal \NLW_A3_0_o_reg[0]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_A3_0_o_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_A3_0_o_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_A3_0_o_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_A3_0_o_reg[0]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_init_reg[31]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_init_reg[31]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_drs4_states0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_drs_sr_count_reg[10]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_drs_sr_count_reg[10]_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_drs_sr_count_reg[10]_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_drs_sr_count_reg[10]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_srclk_o0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_srclk_o2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srclk_o2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_srclk_o2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_srin_o2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_srin_o2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_srin_o2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_srin_o2_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__2/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_srin_o2_inferred__2/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__3/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_srin_o2_inferred__3/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__4/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_srin_o2_inferred__4/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_srin_o2_inferred__4/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_drs4_states[1]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_drs4_states[1]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_drs4_states[8]_i_2\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[0]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_drs4_states_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[10]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[10]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[11]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[11]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[12]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[12]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[13]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[13]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[14]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[14]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[15]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[15]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[16]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[16]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[1]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[2]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[3]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[4]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[5]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[6]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[6]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[7]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[7]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[8]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[8]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drs4_states_reg[9]\ : label is "fr_trigger_delay:00000000000000001,fr_wait_trigger:00000000000000100,fr_srin:00000000000001000,start_conf:00000000000010000,init:00000000010000000,fr_transition2:00000000100000000,rsr_init:00000010000000000,start_full_readout:00000100000000000,idle:00000000001000000,adq_sampler_trans:00001000000000000,rsr_load_state:00010000000000000,wait_trigger:01000000000000000,adq_p2:00100000000000000,delay_trigger:10000000000000000,init_adq:00000001000000000,finish_init:00000000000100000,fr_adquisition:00000000000000010";
  attribute KEEP of \FSM_onehot_drs4_states_reg[9]\ : label is "yes";
  attribute box_type : string;
  attribute box_type of \LUT1_gen[1000].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1001].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1002].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1003].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1004].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1005].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1006].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1007].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1008].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1009].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[100].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1010].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1011].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1012].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1013].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1014].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1015].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1016].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1017].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1018].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1019].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[101].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1020].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1021].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1022].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1023].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1024].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1025].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1026].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1027].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1028].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1029].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[102].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1030].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1031].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1032].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1033].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1034].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1035].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1036].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1037].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1038].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1039].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[103].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1040].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1041].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1042].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1043].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1044].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1045].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1046].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1047].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1048].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1049].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[104].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1050].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1051].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1052].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1053].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1054].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1055].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1056].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1057].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1058].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1059].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[105].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1060].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1061].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1062].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1063].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1064].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1065].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1066].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1067].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1068].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1069].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[106].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1070].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1071].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1072].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1073].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1074].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1075].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1076].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1077].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1078].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1079].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[107].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1080].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1081].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1082].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1083].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1084].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1085].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1086].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1087].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1088].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1089].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[108].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1090].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1091].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1092].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1093].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1094].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1095].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1096].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1097].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1098].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1099].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[109].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[10].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1100].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1101].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1102].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1103].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1104].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1105].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1106].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1107].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1108].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1109].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[110].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1110].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1111].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1112].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1113].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1114].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1115].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1116].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1117].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1118].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1119].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[111].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1120].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1121].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1122].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1123].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1124].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1125].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1126].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1127].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1128].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1129].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[112].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1130].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1131].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1132].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1133].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1134].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1135].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1136].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1137].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1138].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1139].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[113].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1140].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1141].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1142].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1143].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1144].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1145].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1146].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1147].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1148].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1149].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[114].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1150].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1151].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1152].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1153].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1154].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1155].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1156].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1157].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1158].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1159].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[115].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1160].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1161].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1162].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1163].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1164].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1165].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1166].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1167].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1168].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1169].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[116].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1170].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1171].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1172].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1173].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1174].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1175].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1176].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1177].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1178].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1179].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[117].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1180].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1181].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1182].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1183].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1184].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1185].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1186].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1187].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1188].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1189].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[118].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1190].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1191].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1192].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1193].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1194].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1195].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1196].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1197].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1198].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1199].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[119].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[11].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1200].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1201].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1202].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1203].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1204].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1205].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1206].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1207].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1208].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1209].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[120].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1210].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1211].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1212].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1213].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1214].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1215].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1216].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1217].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1218].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1219].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[121].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1220].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1221].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1222].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1223].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1224].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1225].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1226].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1227].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1228].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1229].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[122].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1230].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1231].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1232].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1233].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1234].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1235].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1236].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1237].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1238].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1239].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[123].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1240].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1241].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1242].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1243].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1244].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1245].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1246].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1247].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1248].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1249].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[124].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1250].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1251].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1252].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1253].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1254].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1255].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1256].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1257].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1258].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1259].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[125].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1260].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1261].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1262].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1263].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1264].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1265].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1266].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1267].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1268].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1269].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[126].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1270].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1271].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1272].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1273].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1274].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1275].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1276].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1277].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1278].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1279].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[127].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1280].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1281].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1282].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1283].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1284].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1285].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1286].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1287].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1288].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1289].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[128].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1290].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1291].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1292].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1293].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1294].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1295].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1296].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1297].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1298].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1299].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[129].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[12].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1300].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1301].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1302].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1303].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1304].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1305].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1306].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1307].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1308].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1309].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[130].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1310].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1311].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1312].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1313].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1314].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1315].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1316].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1317].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1318].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1319].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[131].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1320].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1321].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1322].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1323].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1324].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1325].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1326].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1327].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1328].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1329].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[132].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1330].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1331].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1332].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1333].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1334].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1335].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1336].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1337].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1338].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1339].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[133].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1340].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1341].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1342].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1343].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1344].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1345].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1346].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1347].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1348].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1349].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[134].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1350].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1351].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1352].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1353].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1354].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1355].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1356].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1357].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1358].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1359].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[135].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1360].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1361].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1362].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1363].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1364].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1365].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1366].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1367].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1368].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1369].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[136].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1370].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1371].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1372].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1373].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1374].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1375].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1376].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1377].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1378].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1379].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[137].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1380].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1381].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1382].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1383].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1384].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1385].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1386].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1387].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1388].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1389].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[138].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1390].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1391].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1392].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1393].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1394].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1395].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1396].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1397].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1398].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1399].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[139].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[13].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1400].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1401].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1402].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1403].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1404].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1405].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1406].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1407].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1408].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1409].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[140].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1410].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1411].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1412].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1413].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1414].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1415].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1416].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1417].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1418].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1419].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[141].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1420].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1421].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1422].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1423].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1424].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1425].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1426].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1427].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1428].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1429].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[142].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1430].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1431].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1432].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1433].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1434].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1435].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1436].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1437].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1438].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1439].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[143].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1440].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1441].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1442].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1443].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1444].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1445].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1446].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1447].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1448].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1449].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[144].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1450].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1451].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1452].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1453].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1454].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1455].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1456].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1457].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1458].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1459].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[145].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1460].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1461].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1462].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1463].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1464].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1465].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1466].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1467].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1468].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1469].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[146].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1470].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1471].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1472].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1473].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1474].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1475].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1476].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1477].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1478].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1479].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[147].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1480].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1481].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1482].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1483].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1484].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1485].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1486].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1487].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1488].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1489].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[148].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1490].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1491].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1492].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1493].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1494].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1495].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1496].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1497].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1498].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1499].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[149].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[14].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1500].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1501].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1502].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1503].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1504].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1505].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1506].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1507].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1508].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1509].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[150].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1510].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1511].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1512].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1513].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1514].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1515].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1516].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1517].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1518].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1519].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[151].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1520].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1521].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1522].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1523].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1524].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1525].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1526].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1527].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1528].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1529].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[152].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1530].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1531].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1532].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1533].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1534].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1535].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1536].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1537].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1538].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1539].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[153].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1540].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1541].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1542].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1543].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1544].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1545].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1546].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1547].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1548].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1549].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[154].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1550].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1551].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1552].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1553].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1554].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1555].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1556].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1557].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1558].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1559].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[155].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1560].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1561].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1562].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1563].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1564].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1565].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1566].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1567].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1568].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1569].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[156].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1570].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1571].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1572].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1573].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1574].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1575].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1576].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1577].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1578].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1579].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[157].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1580].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1581].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1582].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1583].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1584].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1585].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1586].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1587].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1588].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1589].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[158].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1590].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1591].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1592].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1593].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1594].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1595].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1596].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1597].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1598].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1599].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[159].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[15].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1600].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1601].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1602].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1603].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1604].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1605].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1606].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1607].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1608].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1609].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[160].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1610].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1611].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1612].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1613].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1614].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1615].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1616].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1617].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1618].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1619].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[161].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1620].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1621].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1622].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1623].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1624].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1625].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1626].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1627].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1628].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1629].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[162].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1630].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1631].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1632].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1633].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1634].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1635].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1636].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1637].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1638].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1639].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[163].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1640].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1641].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1642].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1643].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1644].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1645].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1646].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1647].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1648].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1649].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[164].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1650].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1651].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1652].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1653].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1654].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1655].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1656].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1657].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1658].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1659].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[165].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1660].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1661].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1662].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1663].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1664].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1665].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1666].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1667].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1668].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1669].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[166].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1670].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1671].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1672].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1673].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1674].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1675].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1676].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1677].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1678].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1679].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[167].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1680].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1681].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1682].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1683].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1684].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1685].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1686].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1687].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1688].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1689].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[168].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1690].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1691].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1692].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1693].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1694].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1695].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1696].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1697].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1698].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1699].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[169].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[16].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1700].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1701].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1702].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1703].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1704].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1705].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1706].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1707].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1708].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1709].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[170].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1710].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1711].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1712].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1713].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1714].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1715].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1716].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1717].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1718].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1719].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[171].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1720].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1721].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1722].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1723].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1724].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1725].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1726].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1727].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1728].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1729].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[172].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1730].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1731].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1732].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1733].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1734].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1735].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1736].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1737].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1738].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1739].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[173].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1740].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1741].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1742].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1743].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1744].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1745].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1746].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1747].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1748].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1749].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[174].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1750].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1751].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1752].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1753].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1754].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1755].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1756].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1757].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1758].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1759].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[175].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1760].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1761].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1762].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1763].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1764].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1765].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1766].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1767].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1768].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1769].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[176].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1770].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1771].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1772].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1773].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1774].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1775].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1776].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1777].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1778].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1779].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[177].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1780].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1781].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1782].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1783].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1784].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1785].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1786].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1787].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1788].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1789].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[178].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1790].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1791].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1792].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1793].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1794].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1795].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1796].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1797].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1798].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1799].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[179].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[17].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1800].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1801].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1802].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1803].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1804].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1805].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1806].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1807].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1808].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1809].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[180].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1810].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1811].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1812].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1813].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1814].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1815].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1816].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1817].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1818].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1819].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[181].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1820].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1821].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1822].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1823].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1824].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1825].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1826].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1827].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1828].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1829].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[182].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1830].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1831].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1832].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1833].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1834].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1835].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1836].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1837].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1838].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1839].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[183].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1840].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1841].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1842].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1843].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1844].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1845].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1846].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1847].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1848].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1849].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[184].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1850].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1851].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1852].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1853].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1854].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1855].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1856].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1857].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1858].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1859].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[185].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1860].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1861].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1862].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1863].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1864].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1865].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1866].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1867].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1868].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1869].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[186].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1870].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1871].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1872].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1873].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1874].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1875].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1876].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1877].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1878].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1879].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[187].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1880].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1881].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1882].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1883].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1884].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1885].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1886].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1887].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1888].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1889].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[188].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1890].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1891].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1892].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1893].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1894].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1895].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1896].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1897].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1898].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1899].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[189].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[18].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1900].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1901].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1902].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1903].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1904].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1905].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1906].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1907].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1908].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1909].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[190].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1910].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1911].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1912].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1913].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1914].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1915].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1916].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1917].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1918].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1919].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[191].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1920].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1921].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1922].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1923].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1924].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1925].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1926].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1927].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1928].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1929].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[192].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1930].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1931].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1932].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1933].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1934].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1935].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1936].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1937].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1938].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1939].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[193].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1940].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1941].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1942].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1943].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1944].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1945].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1946].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1947].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1948].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1949].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[194].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1950].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1951].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1952].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1953].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1954].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1955].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1956].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1957].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1958].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1959].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[195].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1960].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1961].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1962].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1963].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1964].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1965].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1966].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1967].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1968].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1969].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[196].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1970].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1971].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1972].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1973].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1974].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1975].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1976].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1977].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1978].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1979].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[197].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1980].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1981].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1982].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1983].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1984].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1985].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1986].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1987].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1988].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1989].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[198].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1990].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1991].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1992].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1993].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1994].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1995].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1996].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1997].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1998].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1999].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[199].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[19].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[1].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2000].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2001].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2002].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2003].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2004].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2005].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2006].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2007].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2008].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2009].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[200].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2010].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2011].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2012].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2013].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2014].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2015].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2016].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2017].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2018].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2019].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[201].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2020].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2021].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2022].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2023].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2024].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2025].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2026].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2027].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2028].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2029].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[202].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2030].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2031].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2032].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2033].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2034].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2035].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2036].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2037].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2038].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2039].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[203].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2040].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2041].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2042].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2043].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2044].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2045].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2046].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2047].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[204].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[205].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[206].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[207].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[208].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[209].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[20].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[210].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[211].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[212].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[213].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[214].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[215].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[216].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[217].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[218].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[219].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[21].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[220].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[221].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[222].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[223].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[224].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[225].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[226].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[227].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[228].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[229].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[22].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[230].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[231].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[232].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[233].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[234].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[235].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[236].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[237].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[238].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[239].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[23].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[240].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[241].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[242].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[243].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[244].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[245].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[246].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[247].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[248].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[249].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[24].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[250].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[251].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[252].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[253].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[254].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[255].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[256].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[257].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[258].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[259].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[25].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[260].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[261].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[262].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[263].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[264].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[265].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[266].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[267].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[268].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[269].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[26].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[270].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[271].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[272].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[273].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[274].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[275].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[276].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[277].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[278].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[279].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[27].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[280].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[281].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[282].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[283].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[284].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[285].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[286].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[287].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[288].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[289].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[28].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[290].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[291].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[292].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[293].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[294].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[295].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[296].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[297].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[298].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[299].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[29].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[2].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[300].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[301].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[302].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[303].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[304].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[305].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[306].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[307].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[308].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[309].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[30].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[310].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[311].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[312].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[313].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[314].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[315].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[316].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[317].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[318].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[319].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[31].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[320].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[321].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[322].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[323].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[324].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[325].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[326].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[327].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[328].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[329].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[32].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[330].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[331].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[332].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[333].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[334].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[335].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[336].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[337].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[338].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[339].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[33].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[340].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[341].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[342].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[343].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[344].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[345].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[346].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[347].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[348].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[349].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[34].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[350].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[351].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[352].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[353].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[354].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[355].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[356].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[357].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[358].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[359].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[35].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[360].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[361].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[362].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[363].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[364].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[365].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[366].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[367].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[368].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[369].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[36].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[370].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[371].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[372].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[373].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[374].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[375].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[376].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[377].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[378].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[379].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[37].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[380].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[381].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[382].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[383].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[384].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[385].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[386].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[387].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[388].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[389].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[38].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[390].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[391].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[392].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[393].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[394].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[395].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[396].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[397].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[398].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[399].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[39].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[3].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[400].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[401].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[402].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[403].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[404].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[405].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[406].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[407].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[408].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[409].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[40].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[410].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[411].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[412].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[413].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[414].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[415].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[416].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[417].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[418].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[419].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[41].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[420].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[421].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[422].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[423].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[424].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[425].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[426].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[427].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[428].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[429].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[42].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[430].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[431].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[432].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[433].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[434].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[435].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[436].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[437].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[438].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[439].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[43].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[440].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[441].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[442].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[443].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[444].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[445].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[446].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[447].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[448].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[449].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[44].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[450].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[451].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[452].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[453].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[454].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[455].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[456].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[457].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[458].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[459].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[45].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[460].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[461].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[462].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[463].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[464].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[465].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[466].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[467].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[468].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[469].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[46].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[470].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[471].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[472].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[473].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[474].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[475].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[476].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[477].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[478].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[479].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[47].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[480].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[481].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[482].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[483].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[484].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[485].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[486].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[487].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[488].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[489].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[48].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[490].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[491].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[492].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[493].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[494].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[495].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[496].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[497].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[498].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[499].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[49].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[4].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[500].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[501].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[502].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[503].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[504].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[505].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[506].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[507].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[508].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[509].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[50].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[510].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[511].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[512].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[513].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[514].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[515].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[516].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[517].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[518].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[519].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[51].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[520].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[521].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[522].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[523].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[524].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[525].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[526].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[527].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[528].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[529].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[52].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[530].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[531].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[532].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[533].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[534].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[535].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[536].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[537].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[538].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[539].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[53].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[540].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[541].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[542].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[543].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[544].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[545].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[546].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[547].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[548].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[549].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[54].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[550].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[551].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[552].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[553].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[554].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[555].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[556].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[557].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[558].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[559].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[55].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[560].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[561].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[562].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[563].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[564].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[565].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[566].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[567].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[568].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[569].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[56].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[570].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[571].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[572].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[573].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[574].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[575].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[576].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[577].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[578].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[579].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[57].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[580].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[581].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[582].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[583].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[584].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[585].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[586].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[587].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[588].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[589].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[58].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[590].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[591].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[592].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[593].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[594].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[595].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[596].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[597].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[598].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[599].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[59].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[5].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[600].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[601].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[602].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[603].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[604].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[605].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[606].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[607].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[608].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[609].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[60].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[610].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[611].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[612].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[613].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[614].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[615].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[616].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[617].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[618].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[619].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[61].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[620].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[621].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[622].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[623].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[624].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[625].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[626].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[627].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[628].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[629].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[62].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[630].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[631].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[632].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[633].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[634].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[635].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[636].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[637].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[638].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[639].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[63].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[640].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[641].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[642].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[643].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[644].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[645].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[646].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[647].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[648].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[649].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[64].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[650].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[651].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[652].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[653].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[654].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[655].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[656].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[657].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[658].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[659].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[65].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[660].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[661].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[662].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[663].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[664].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[665].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[666].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[667].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[668].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[669].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[66].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[670].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[671].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[672].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[673].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[674].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[675].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[676].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[677].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[678].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[679].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[67].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[680].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[681].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[682].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[683].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[684].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[685].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[686].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[687].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[688].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[689].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[68].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[690].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[691].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[692].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[693].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[694].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[695].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[696].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[697].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[698].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[699].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[69].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[6].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[700].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[701].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[702].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[703].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[704].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[705].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[706].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[707].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[708].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[709].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[70].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[710].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[711].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[712].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[713].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[714].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[715].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[716].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[717].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[718].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[719].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[71].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[720].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[721].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[722].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[723].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[724].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[725].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[726].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[727].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[728].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[729].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[72].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[730].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[731].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[732].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[733].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[734].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[735].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[736].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[737].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[738].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[739].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[73].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[740].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[741].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[742].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[743].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[744].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[745].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[746].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[747].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[748].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[749].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[74].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[750].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[751].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[752].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[753].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[754].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[755].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[756].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[757].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[758].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[759].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[75].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[760].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[761].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[762].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[763].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[764].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[765].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[766].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[767].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[768].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[769].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[76].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[770].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[771].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[772].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[773].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[774].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[775].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[776].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[777].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[778].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[779].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[77].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[780].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[781].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[782].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[783].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[784].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[785].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[786].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[787].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[788].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[789].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[78].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[790].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[791].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[792].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[793].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[794].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[795].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[796].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[797].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[798].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[799].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[79].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[7].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[800].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[801].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[802].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[803].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[804].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[805].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[806].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[807].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[808].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[809].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[80].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[810].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[811].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[812].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[813].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[814].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[815].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[816].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[817].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[818].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[819].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[81].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[820].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[821].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[822].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[823].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[824].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[825].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[826].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[827].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[828].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[829].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[82].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[830].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[831].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[832].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[833].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[834].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[835].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[836].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[837].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[838].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[839].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[83].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[840].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[841].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[842].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[843].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[844].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[845].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[846].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[847].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[848].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[849].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[84].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[850].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[851].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[852].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[853].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[854].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[855].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[856].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[857].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[858].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[859].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[85].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[860].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[861].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[862].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[863].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[864].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[865].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[866].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[867].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[868].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[869].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[86].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[870].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[871].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[872].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[873].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[874].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[875].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[876].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[877].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[878].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[879].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[87].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[880].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[881].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[882].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[883].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[884].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[885].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[886].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[887].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[888].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[889].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[88].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[890].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[891].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[892].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[893].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[894].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[895].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[896].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[897].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[898].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[899].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[89].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[8].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[900].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[901].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[902].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[903].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[904].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[905].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[906].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[907].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[908].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[909].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[90].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[910].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[911].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[912].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[913].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[914].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[915].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[916].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[917].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[918].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[919].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[91].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[920].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[921].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[922].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[923].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[924].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[925].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[926].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[927].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[928].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[929].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[92].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[930].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[931].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[932].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[933].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[934].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[935].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[936].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[937].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[938].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[939].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[93].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[940].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[941].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[942].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[943].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[944].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[945].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[946].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[947].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[948].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[949].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[94].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[950].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[951].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[952].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[953].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[954].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[955].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[956].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[957].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[958].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[959].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[95].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[960].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[961].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[962].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[963].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[964].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[965].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[966].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[967].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[968].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[969].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[96].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[970].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[971].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[972].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[973].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[974].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[975].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[976].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[977].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[978].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[979].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[97].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[980].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[981].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[982].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[983].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[984].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[985].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[986].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[987].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[988].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[989].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[98].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[990].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[991].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[992].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[993].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[994].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[995].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[996].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[997].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[998].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[999].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[99].LUT1_inst\ : label is "PRIMITIVE";
  attribute box_type of \LUT1_gen[9].LUT1_inst\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \SROUT_vector[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SROUT_vector[8]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_refclk[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_refclk[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_refclk[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_refclk[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count_refclk[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_refclk[6]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_init[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter_init[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter_init[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter_init[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter_init[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter_init[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter_init[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter_init[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter_init[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_init[18]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter_init[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter_init[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter_init[20]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter_init[21]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter_init[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter_init[23]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter_init[24]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter_init[25]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter_init[26]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter_init[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter_init[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter_init[29]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter_init[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter_init[30]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter_init[31]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter_init[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter_init[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter_init[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter_init[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter_init[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter_init[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter_init[9]_i_1\ : label is "soft_lutpair18";
  attribute DONT_TOUCH of drs4_trigs_reg : label is std.standard.true;
  attribute SOFT_HLUTNM of \drs_sr_count[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \drs_sr_count[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \drs_sr_count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \drs_sr_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \drs_sr_count[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \drs_sr_count[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \drs_sr_count[8]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \drs_sr_count[9]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of dwrite_o_reg_LDC : label is "LDC";
  attribute SOFT_HLUTNM of rsrload_o_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of srclk_o_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of srclk_o_i_6 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of srin_o_i_11 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of srin_o_i_7 : label is "soft_lutpair1";
begin
  E(0) <= \^e\(0);
  \FSM_onehot_drs4_states_reg[5]_0\ <= \^fsm_onehot_drs4_states_reg[5]_0\;
  \count_refclk_reg[6]_0\ <= \^count_refclk_reg[6]_0\;
  drs4_trigs_reg_0 <= \^drs4_trigs_reg_0\;
  \drs_sr_count_reg[10]_0\ <= \^drs_sr_count_reg[10]_0\;
  dwrite_o_reg_P_0 <= \^dwrite_o_reg_p_0\;
  load_srin_1 <= \^load_srin_1\;
  o_A3_0(2 downto 0) <= \^o_a3_0\(2 downto 0);
  o_srclk <= \^o_srclk\;
  o_srclk_adc <= \^o_srclk_adc\;
  o_stop_cell(9 downto 0) <= \^o_stop_cell\(9 downto 0);
  \out\(13 downto 0) <= \^out\(13 downto 0);
  \slv_reg2_reg[2]\ <= \^slv_reg2_reg[2]\;
  start_conf_1 <= \^start_conf_1\;
\A3_0_o[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFFFFFAE0000"
    )
        port map (
      I0 => \A3_0_o[0]_i_2_n_0\,
      I1 => \^out\(3),
      I2 => \A3_0_o_reg[0]_i_3_n_2\,
      I3 => \A3_0_o[0]_i_4_n_0\,
      I4 => A3_0_o,
      I5 => \^o_a3_0\(0),
      O => \A3_0_o[0]_i_1_n_0\
    );
\A3_0_o[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[24]\,
      I1 => \counter_init_reg_n_0_[25]\,
      O => \A3_0_o[0]_i_10_n_0\
    );
\A3_0_o[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[22]\,
      I1 => \counter_init_reg_n_0_[23]\,
      O => \A3_0_o[0]_i_11_n_0\
    );
\A3_0_o[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[21]\,
      O => \A3_0_o[0]_i_12_n_0\
    );
\A3_0_o[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[18]\,
      I1 => \counter_init_reg_n_0_[19]\,
      O => \A3_0_o[0]_i_14_n_0\
    );
\A3_0_o[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[16]\,
      I1 => \counter_init_reg_n_0_[17]\,
      O => \A3_0_o[0]_i_15_n_0\
    );
\A3_0_o[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[14]\,
      I1 => \counter_init_reg_n_0_[15]\,
      O => \A3_0_o[0]_i_16_n_0\
    );
\A3_0_o[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[12]\,
      I1 => \counter_init_reg_n_0_[13]\,
      O => \A3_0_o[0]_i_17_n_0\
    );
\A3_0_o[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[4]\,
      I1 => \counter_init_reg_n_0_[5]\,
      O => \A3_0_o[0]_i_18_n_0\
    );
\A3_0_o[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[10]\,
      I1 => \counter_init_reg_n_0_[11]\,
      O => \A3_0_o[0]_i_19_n_0\
    );
\A3_0_o[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I1 => CONF_REG_start,
      I2 => \^out\(6),
      O => \A3_0_o[0]_i_2_n_0\
    );
\A3_0_o[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[8]\,
      I1 => \counter_init_reg_n_0_[9]\,
      O => \A3_0_o[0]_i_20_n_0\
    );
\A3_0_o[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[6]\,
      I1 => \counter_init_reg_n_0_[7]\,
      O => \A3_0_o[0]_i_21_n_0\
    );
\A3_0_o[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[4]\,
      I1 => \counter_init_reg_n_0_[5]\,
      O => \A3_0_o[0]_i_22_n_0\
    );
\A3_0_o[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(0),
      I2 => \^out\(11),
      O => \A3_0_o[0]_i_4_n_0\
    );
\A3_0_o[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \A3_0_o[0]_i_6_n_0\
    );
\A3_0_o[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[28]\,
      I1 => \counter_init_reg_n_0_[29]\,
      O => \A3_0_o[0]_i_7_n_0\
    );
\A3_0_o[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[27]\,
      I1 => \counter_init_reg_n_0_[26]\,
      O => \A3_0_o[0]_i_9_n_0\
    );
\A3_0_o[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFFFFF20000"
    )
        port map (
      I0 => \^out\(6),
      I1 => CONF_REG_start,
      I2 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I3 => \A3_0_o[1]_i_2_n_0\,
      I4 => A3_0_o,
      I5 => \^o_a3_0\(1),
      O => \A3_0_o[1]_i_1_n_0\
    );
\A3_0_o[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFEFEFEFE"
    )
        port map (
      I0 => \^out\(13),
      I1 => \^out\(4),
      I2 => \A3_0_o[1]_i_3_n_0\,
      I3 => CONF_REG_start,
      I4 => start_ROI,
      I5 => \^out\(8),
      O => \A3_0_o[1]_i_2_n_0\
    );
\A3_0_o[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(1),
      O => \A3_0_o[1]_i_3_n_0\
    );
\A3_0_o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => RSR_init_start,
      I1 => \^out\(5),
      I2 => \A3_0_o[2]_i_2_n_0\,
      I3 => A3_0_o,
      I4 => \^o_a3_0\(2),
      O => \A3_0_o[2]_i_1_n_0\
    );
\A3_0_o[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF20"
    )
        port map (
      I0 => CONF_REG_start,
      I1 => start_ROI,
      I2 => \^out\(8),
      I3 => \^out\(6),
      I4 => \^out\(3),
      O => \A3_0_o[2]_i_2_n_0\
    );
\A3_0_o[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => drs4_trigs0,
      I1 => \^out\(5),
      I2 => \^out\(6),
      I3 => \counter_init[31]_i_6_n_0\,
      I4 => \^out\(8),
      I5 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      O => A3_0_o
    );
\A3_0_o_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_drs4,
      CE => '1',
      D => \A3_0_o[0]_i_1_n_0\,
      PRE => axi_rst,
      Q => \^o_a3_0\(0)
    );
\A3_0_o_reg[0]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \A3_0_o_reg[0]_i_13_n_0\,
      CO(2) => \A3_0_o_reg[0]_i_13_n_1\,
      CO(1) => \A3_0_o_reg[0]_i_13_n_2\,
      CO(0) => \A3_0_o_reg[0]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \A3_0_o[0]_i_18_n_0\,
      O(3 downto 0) => \NLW_A3_0_o_reg[0]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \A3_0_o[0]_i_19_n_0\,
      S(2) => \A3_0_o[0]_i_20_n_0\,
      S(1) => \A3_0_o[0]_i_21_n_0\,
      S(0) => \A3_0_o[0]_i_22_n_0\
    );
\A3_0_o_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \A3_0_o_reg[0]_i_5_n_0\,
      CO(3 downto 2) => \NLW_A3_0_o_reg[0]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \A3_0_o_reg[0]_i_3_n_2\,
      CO(0) => \A3_0_o_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \counter_init_reg_n_0_[31]\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_A3_0_o_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \A3_0_o[0]_i_6_n_0\,
      S(0) => \A3_0_o[0]_i_7_n_0\
    );
\A3_0_o_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \A3_0_o_reg[0]_i_8_n_0\,
      CO(3) => \A3_0_o_reg[0]_i_5_n_0\,
      CO(2) => \A3_0_o_reg[0]_i_5_n_1\,
      CO(1) => \A3_0_o_reg[0]_i_5_n_2\,
      CO(0) => \A3_0_o_reg[0]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_A3_0_o_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \A3_0_o[0]_i_9_n_0\,
      S(2) => \A3_0_o[0]_i_10_n_0\,
      S(1) => \A3_0_o[0]_i_11_n_0\,
      S(0) => \A3_0_o[0]_i_12_n_0\
    );
\A3_0_o_reg[0]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \A3_0_o_reg[0]_i_13_n_0\,
      CO(3) => \A3_0_o_reg[0]_i_8_n_0\,
      CO(2) => \A3_0_o_reg[0]_i_8_n_1\,
      CO(1) => \A3_0_o_reg[0]_i_8_n_2\,
      CO(0) => \A3_0_o_reg[0]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_A3_0_o_reg[0]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \A3_0_o[0]_i_14_n_0\,
      S(2) => \A3_0_o[0]_i_15_n_0\,
      S(1) => \A3_0_o[0]_i_16_n_0\,
      S(0) => \A3_0_o[0]_i_17_n_0\
    );
\A3_0_o_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_drs4,
      CE => '1',
      D => \A3_0_o[1]_i_1_n_0\,
      PRE => axi_rst,
      Q => \^o_a3_0\(1)
    );
\A3_0_o_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk_drs4,
      CE => '1',
      D => \A3_0_o[2]_i_1_n_0\,
      PRE => axi_rst,
      Q => \^o_a3_0\(2)
    );
CONF_REG_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => CONF_REG_start0,
      Q => CONF_REG_start,
      R => '0'
    );
\FSM_onehot_drs4_states[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^o_srclk_adc\,
      I2 => \FSM_onehot_drs4_states_reg_n_0_[0]\,
      O => \FSM_onehot_drs4_states[0]_i_1_n_0\
    );
\FSM_onehot_drs4_states[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(5),
      I1 => RSR_init_start,
      O => \FSM_onehot_drs4_states[10]_i_1_n_0\
    );
\FSM_onehot_drs4_states[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => start_full_readout,
      I1 => CONF_REG_start,
      I2 => start_ROI,
      I3 => \^out\(8),
      O => \FSM_onehot_drs4_states[11]_i_1_n_0\
    );
\FSM_onehot_drs4_states[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => dwrite_o_reg_LDC_n_0,
      I1 => dwrite_o_reg_P_n_0,
      I2 => \^out\(13),
      I3 => \^out\(8),
      I4 => start_ROI,
      O => \FSM_onehot_drs4_states[15]_i_1_n_0\
    );
\FSM_onehot_drs4_states[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[16]_i_3_n_0\,
      I1 => \^fsm_onehot_drs4_states_reg[5]_0\,
      I2 => \FSM_onehot_drs4_states[16]_i_4_n_0\,
      I3 => \FSM_onehot_drs4_states[16]_i_5_n_0\,
      I4 => \FSM_onehot_drs4_states[16]_i_6_n_0\,
      O => \FSM_onehot_drs4_states[16]_i_1_n_0\
    );
\FSM_onehot_drs4_states[16]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CONF_REG_start,
      I1 => \^out\(6),
      O => \FSM_onehot_drs4_states[16]_i_10_n_0\
    );
\FSM_onehot_drs4_states[16]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(4),
      O => \FSM_onehot_drs4_states[16]_i_11_n_0\
    );
\FSM_onehot_drs4_states[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^out\(13),
      I1 => dwrite_o_reg_P_n_0,
      I2 => dwrite_o_reg_LDC_n_0,
      O => \FSM_onehot_drs4_states[16]_i_2_n_0\
    );
\FSM_onehot_drs4_states[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[16]_i_7_n_0\,
      I1 => \^out\(7),
      I2 => \counter_init_reg_n_0_[1]\,
      I3 => \counter_init_reg_n_0_[0]\,
      O => \FSM_onehot_drs4_states[16]_i_3_n_0\
    );
\FSM_onehot_drs4_states[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(10),
      I2 => rsrload_o_i_12_n_0,
      I3 => \srclk_o0_carry__2_n_0\,
      I4 => \^out\(0),
      O => \FSM_onehot_drs4_states[16]_i_4_n_0\
    );
\FSM_onehot_drs4_states[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[16]_i_8_n_0\,
      I1 => \FSM_onehot_drs4_states_reg_n_0_[0]\,
      I2 => \^out\(13),
      I3 => \FSM_onehot_drs4_states_reg_n_0_[16]\,
      I4 => \^out\(5),
      I5 => \FSM_onehot_drs4_states[16]_i_9_n_0\,
      O => \FSM_onehot_drs4_states[16]_i_5_n_0\
    );
\FSM_onehot_drs4_states[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^drs_sr_count_reg[10]_0\,
      I2 => \^out\(2),
      O => \FSM_onehot_drs4_states[16]_i_6_n_0\
    );
\FSM_onehot_drs4_states[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \counter_init_reg_n_0_[4]\,
      I1 => \counter_init_reg_n_0_[5]\,
      I2 => \counter_init_reg_n_0_[3]\,
      I3 => \counter_init_reg_n_0_[2]\,
      I4 => \counter_init_reg_n_0_[7]\,
      I5 => \counter_init_reg_n_0_[6]\,
      O => \FSM_onehot_drs4_states[16]_i_7_n_0\
    );
\FSM_onehot_drs4_states[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[16]_i_10_n_0\,
      I1 => \^o_srclk_adc\,
      I2 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I3 => \FSM_onehot_drs4_states[16]_i_11_n_0\,
      I4 => \drs4_states0_inferred__0/i__carry_n_0\,
      I5 => \^out\(12),
      O => \FSM_onehot_drs4_states[16]_i_8_n_0\
    );
\FSM_onehot_drs4_states[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^out\(11),
      I1 => drs4_states1,
      I2 => \^o_srclk_adc\,
      O => \FSM_onehot_drs4_states[16]_i_9_n_0\
    );
\FSM_onehot_drs4_states[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[1]_i_2_n_0\,
      I1 => \FSM_onehot_drs4_states_reg_n_0_[0]\,
      I2 => \^o_srclk_adc\,
      O => \FSM_onehot_drs4_states[1]_i_1_n_0\
    );
\FSM_onehot_drs4_states[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8AAAAAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \drs_sr_count_reg_n_0_[10]\,
      I2 => \drs_sr_count_reg_n_0_[9]\,
      I3 => \drs_sr_count_reg_n_0_[0]\,
      I4 => \FSM_onehot_drs4_states[1]_i_3_n_0\,
      I5 => \FSM_onehot_drs4_states[1]_i_4_n_0\,
      O => \FSM_onehot_drs4_states[1]_i_2_n_0\
    );
\FSM_onehot_drs4_states[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[2]\,
      I1 => \drs_sr_count_reg_n_0_[1]\,
      I2 => \drs_sr_count_reg_n_0_[4]\,
      I3 => \drs_sr_count_reg_n_0_[3]\,
      O => \FSM_onehot_drs4_states[1]_i_3_n_0\
    );
\FSM_onehot_drs4_states[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[6]\,
      I1 => \drs_sr_count_reg_n_0_[5]\,
      I2 => \drs_sr_count_reg_n_0_[8]\,
      I3 => \drs_sr_count_reg_n_0_[7]\,
      O => \FSM_onehot_drs4_states[1]_i_4_n_0\
    );
\FSM_onehot_drs4_states[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFD00"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[4]_i_2_n_0\,
      I1 => \FSM_onehot_drs4_states[4]_i_3_n_0\,
      I2 => \FSM_onehot_drs4_states[5]_i_2_n_0\,
      I3 => \^out\(3),
      I4 => \FSM_onehot_drs4_states[4]_i_4_n_0\,
      I5 => \^out\(6),
      O => \FSM_onehot_drs4_states[4]_i_1_n_0\
    );
\FSM_onehot_drs4_states[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \counter_init_reg_n_0_[27]\,
      I1 => \counter_init_reg_n_0_[26]\,
      I2 => \counter_init_reg_n_0_[25]\,
      I3 => \counter_init_reg_n_0_[24]\,
      I4 => \FSM_onehot_drs4_states[4]_i_5_n_0\,
      I5 => rsrload_o_i_10_n_0,
      O => \FSM_onehot_drs4_states[4]_i_2_n_0\
    );
\FSM_onehot_drs4_states[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      I2 => \counter_init_reg_n_0_[1]\,
      I3 => \counter_init_reg_n_0_[0]\,
      I4 => \counter_init_reg_n_0_[29]\,
      I5 => \counter_init_reg_n_0_[28]\,
      O => \FSM_onehot_drs4_states[4]_i_3_n_0\
    );
\FSM_onehot_drs4_states[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^out\(8),
      I1 => start_ROI,
      I2 => CONF_REG_start,
      O => \FSM_onehot_drs4_states[4]_i_4_n_0\
    );
\FSM_onehot_drs4_states[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_init_reg_n_0_[9]\,
      I1 => \counter_init_reg_n_0_[8]\,
      I2 => rsrload_o_i_13_n_0,
      I3 => \counter_init_reg_n_0_[15]\,
      I4 => \counter_init_reg_n_0_[14]\,
      I5 => \FSM_onehot_drs4_states[4]_i_6_n_0\,
      O => \FSM_onehot_drs4_states[4]_i_5_n_0\
    );
\FSM_onehot_drs4_states[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      O => \FSM_onehot_drs4_states[4]_i_6_n_0\
    );
\FSM_onehot_drs4_states[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^fsm_onehot_drs4_states_reg[5]_0\,
      I1 => \counter_init_reg_n_0_[0]\,
      I2 => \counter_init_reg_n_0_[1]\,
      I3 => \^out\(3),
      I4 => \FSM_onehot_drs4_states[5]_i_2_n_0\,
      O => \FSM_onehot_drs4_states[5]_i_1_n_0\
    );
\FSM_onehot_drs4_states[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \counter_init_reg_n_0_[5]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[2]\,
      I3 => \counter_init_reg_n_0_[3]\,
      I4 => \counter_init_reg_n_0_[7]\,
      I5 => \counter_init_reg_n_0_[6]\,
      O => \FSM_onehot_drs4_states[5]_i_2_n_0\
    );
\FSM_onehot_drs4_states[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(5),
      I1 => RSR_init_start,
      O => \FSM_onehot_drs4_states[6]_i_1_n_0\
    );
\FSM_onehot_drs4_states[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[10]\,
      I1 => \drs_sr_count_reg_n_0_[9]\,
      I2 => \FSM_onehot_drs4_states[8]_i_2_n_0\,
      I3 => \^out\(0),
      O => \FSM_onehot_drs4_states[8]_i_1_n_0\
    );
\FSM_onehot_drs4_states[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[8]\,
      I1 => \drs_sr_count_reg_n_0_[6]\,
      I2 => \drs_sr_count_reg_n_0_[5]\,
      I3 => \drs_sr_count_reg_n_0_[7]\,
      I4 => \drs_sr_count[9]_i_2_n_0\,
      O => \FSM_onehot_drs4_states[8]_i_2_n_0\
    );
\FSM_onehot_drs4_states[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0002"
    )
        port map (
      I0 => \^out\(8),
      I1 => start_ROI,
      I2 => CONF_REG_start,
      I3 => start_full_readout,
      I4 => \FSM_onehot_drs4_states[9]_i_2_n_0\,
      I5 => \^out\(4),
      O => \FSM_onehot_drs4_states[9]_i_1_n_0\
    );
\FSM_onehot_drs4_states[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(10),
      I1 => \^out\(7),
      O => \FSM_onehot_drs4_states[9]_i_2_n_0\
    );
\FSM_onehot_drs4_states_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[0]_i_1_n_0\,
      Q => \FSM_onehot_drs4_states_reg_n_0_[0]\
    );
\FSM_onehot_drs4_states_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[10]_i_1_n_0\,
      Q => \^out\(9)
    );
\FSM_onehot_drs4_states_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[11]_i_1_n_0\,
      Q => \FSM_onehot_drs4_states_reg_n_0_[11]\
    );
\FSM_onehot_drs4_states_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \^out\(12),
      Q => \^out\(10)
    );
\FSM_onehot_drs4_states_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states_reg_n_0_[16]\,
      Q => \^out\(11)
    );
\FSM_onehot_drs4_states_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \^out\(11),
      Q => \^out\(12)
    );
\FSM_onehot_drs4_states_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[15]_i_1_n_0\,
      Q => \^out\(13)
    );
\FSM_onehot_drs4_states_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[16]_i_2_n_0\,
      Q => \FSM_onehot_drs4_states_reg_n_0_[16]\
    );
\FSM_onehot_drs4_states_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[1]_i_1_n_0\,
      Q => \^out\(0)
    );
\FSM_onehot_drs4_states_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \^out\(2),
      Q => \^out\(1)
    );
\FSM_onehot_drs4_states_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      Q => \^out\(2)
    );
\FSM_onehot_drs4_states_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[4]_i_1_n_0\,
      Q => \^out\(3)
    );
\FSM_onehot_drs4_states_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[5]_i_1_n_0\,
      Q => \^out\(4)
    );
\FSM_onehot_drs4_states_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      D => \FSM_onehot_drs4_states[6]_i_1_n_0\,
      PRE => axi_rst,
      Q => \^out\(5)
    );
\FSM_onehot_drs4_states_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \^out\(9),
      Q => \^out\(6)
    );
\FSM_onehot_drs4_states_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[8]_i_1_n_0\,
      Q => \^out\(7)
    );
\FSM_onehot_drs4_states_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_drs4,
      CE => \FSM_onehot_drs4_states[16]_i_1_n_0\,
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states[9]_i_1_n_0\,
      Q => \^out\(8)
    );
\LUT1_gen[1000].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(999),
      O => trig_delay(1000)
    );
\LUT1_gen[1001].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1000),
      O => trig_delay(1001)
    );
\LUT1_gen[1002].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1001),
      O => trig_delay(1002)
    );
\LUT1_gen[1003].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1002),
      O => trig_delay(1003)
    );
\LUT1_gen[1004].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1003),
      O => trig_delay(1004)
    );
\LUT1_gen[1005].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1004),
      O => trig_delay(1005)
    );
\LUT1_gen[1006].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1005),
      O => trig_delay(1006)
    );
\LUT1_gen[1007].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1006),
      O => trig_delay(1007)
    );
\LUT1_gen[1008].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1007),
      O => trig_delay(1008)
    );
\LUT1_gen[1009].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1008),
      O => trig_delay(1009)
    );
\LUT1_gen[100].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(99),
      O => trig_delay(100)
    );
\LUT1_gen[1010].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1009),
      O => trig_delay(1010)
    );
\LUT1_gen[1011].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1010),
      O => trig_delay(1011)
    );
\LUT1_gen[1012].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1011),
      O => trig_delay(1012)
    );
\LUT1_gen[1013].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1012),
      O => trig_delay(1013)
    );
\LUT1_gen[1014].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1013),
      O => trig_delay(1014)
    );
\LUT1_gen[1015].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1014),
      O => trig_delay(1015)
    );
\LUT1_gen[1016].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1015),
      O => trig_delay(1016)
    );
\LUT1_gen[1017].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1016),
      O => trig_delay(1017)
    );
\LUT1_gen[1018].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1017),
      O => trig_delay(1018)
    );
\LUT1_gen[1019].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1018),
      O => trig_delay(1019)
    );
\LUT1_gen[101].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(100),
      O => trig_delay(101)
    );
\LUT1_gen[1020].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1019),
      O => trig_delay(1020)
    );
\LUT1_gen[1021].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1020),
      O => trig_delay(1021)
    );
\LUT1_gen[1022].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1021),
      O => trig_delay(1022)
    );
\LUT1_gen[1023].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1022),
      O => trig_delay(1023)
    );
\LUT1_gen[1024].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1023),
      O => trig_delay(1024)
    );
\LUT1_gen[1025].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1024),
      O => trig_delay(1025)
    );
\LUT1_gen[1026].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1025),
      O => trig_delay(1026)
    );
\LUT1_gen[1027].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1026),
      O => trig_delay(1027)
    );
\LUT1_gen[1028].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1027),
      O => trig_delay(1028)
    );
\LUT1_gen[1029].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1028),
      O => trig_delay(1029)
    );
\LUT1_gen[102].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(101),
      O => trig_delay(102)
    );
\LUT1_gen[1030].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1029),
      O => trig_delay(1030)
    );
\LUT1_gen[1031].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1030),
      O => trig_delay(1031)
    );
\LUT1_gen[1032].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1031),
      O => trig_delay(1032)
    );
\LUT1_gen[1033].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1032),
      O => trig_delay(1033)
    );
\LUT1_gen[1034].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1033),
      O => trig_delay(1034)
    );
\LUT1_gen[1035].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1034),
      O => trig_delay(1035)
    );
\LUT1_gen[1036].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1035),
      O => trig_delay(1036)
    );
\LUT1_gen[1037].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1036),
      O => trig_delay(1037)
    );
\LUT1_gen[1038].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1037),
      O => trig_delay(1038)
    );
\LUT1_gen[1039].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1038),
      O => trig_delay(1039)
    );
\LUT1_gen[103].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(102),
      O => trig_delay(103)
    );
\LUT1_gen[1040].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1039),
      O => trig_delay(1040)
    );
\LUT1_gen[1041].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1040),
      O => trig_delay(1041)
    );
\LUT1_gen[1042].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1041),
      O => trig_delay(1042)
    );
\LUT1_gen[1043].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1042),
      O => trig_delay(1043)
    );
\LUT1_gen[1044].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1043),
      O => trig_delay(1044)
    );
\LUT1_gen[1045].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1044),
      O => trig_delay(1045)
    );
\LUT1_gen[1046].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1045),
      O => trig_delay(1046)
    );
\LUT1_gen[1047].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1046),
      O => trig_delay(1047)
    );
\LUT1_gen[1048].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1047),
      O => trig_delay(1048)
    );
\LUT1_gen[1049].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1048),
      O => trig_delay(1049)
    );
\LUT1_gen[104].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(103),
      O => trig_delay(104)
    );
\LUT1_gen[1050].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1049),
      O => trig_delay(1050)
    );
\LUT1_gen[1051].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1050),
      O => trig_delay(1051)
    );
\LUT1_gen[1052].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1051),
      O => trig_delay(1052)
    );
\LUT1_gen[1053].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1052),
      O => trig_delay(1053)
    );
\LUT1_gen[1054].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1053),
      O => trig_delay(1054)
    );
\LUT1_gen[1055].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1054),
      O => trig_delay(1055)
    );
\LUT1_gen[1056].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1055),
      O => trig_delay(1056)
    );
\LUT1_gen[1057].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1056),
      O => trig_delay(1057)
    );
\LUT1_gen[1058].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1057),
      O => trig_delay(1058)
    );
\LUT1_gen[1059].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1058),
      O => trig_delay(1059)
    );
\LUT1_gen[105].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(104),
      O => trig_delay(105)
    );
\LUT1_gen[1060].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1059),
      O => trig_delay(1060)
    );
\LUT1_gen[1061].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1060),
      O => trig_delay(1061)
    );
\LUT1_gen[1062].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1061),
      O => trig_delay(1062)
    );
\LUT1_gen[1063].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1062),
      O => trig_delay(1063)
    );
\LUT1_gen[1064].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1063),
      O => trig_delay(1064)
    );
\LUT1_gen[1065].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1064),
      O => trig_delay(1065)
    );
\LUT1_gen[1066].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1065),
      O => trig_delay(1066)
    );
\LUT1_gen[1067].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1066),
      O => trig_delay(1067)
    );
\LUT1_gen[1068].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1067),
      O => trig_delay(1068)
    );
\LUT1_gen[1069].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1068),
      O => trig_delay(1069)
    );
\LUT1_gen[106].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(105),
      O => trig_delay(106)
    );
\LUT1_gen[1070].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1069),
      O => trig_delay(1070)
    );
\LUT1_gen[1071].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1070),
      O => trig_delay(1071)
    );
\LUT1_gen[1072].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1071),
      O => trig_delay(1072)
    );
\LUT1_gen[1073].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1072),
      O => trig_delay(1073)
    );
\LUT1_gen[1074].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1073),
      O => trig_delay(1074)
    );
\LUT1_gen[1075].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1074),
      O => trig_delay(1075)
    );
\LUT1_gen[1076].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1075),
      O => trig_delay(1076)
    );
\LUT1_gen[1077].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1076),
      O => trig_delay(1077)
    );
\LUT1_gen[1078].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1077),
      O => trig_delay(1078)
    );
\LUT1_gen[1079].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1078),
      O => trig_delay(1079)
    );
\LUT1_gen[107].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(106),
      O => trig_delay(107)
    );
\LUT1_gen[1080].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1079),
      O => trig_delay(1080)
    );
\LUT1_gen[1081].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1080),
      O => trig_delay(1081)
    );
\LUT1_gen[1082].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1081),
      O => trig_delay(1082)
    );
\LUT1_gen[1083].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1082),
      O => trig_delay(1083)
    );
\LUT1_gen[1084].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1083),
      O => trig_delay(1084)
    );
\LUT1_gen[1085].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1084),
      O => trig_delay(1085)
    );
\LUT1_gen[1086].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1085),
      O => trig_delay(1086)
    );
\LUT1_gen[1087].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1086),
      O => trig_delay(1087)
    );
\LUT1_gen[1088].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1087),
      O => trig_delay(1088)
    );
\LUT1_gen[1089].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1088),
      O => trig_delay(1089)
    );
\LUT1_gen[108].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(107),
      O => trig_delay(108)
    );
\LUT1_gen[1090].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1089),
      O => trig_delay(1090)
    );
\LUT1_gen[1091].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1090),
      O => trig_delay(1091)
    );
\LUT1_gen[1092].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1091),
      O => trig_delay(1092)
    );
\LUT1_gen[1093].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1092),
      O => trig_delay(1093)
    );
\LUT1_gen[1094].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1093),
      O => trig_delay(1094)
    );
\LUT1_gen[1095].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1094),
      O => trig_delay(1095)
    );
\LUT1_gen[1096].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1095),
      O => trig_delay(1096)
    );
\LUT1_gen[1097].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1096),
      O => trig_delay(1097)
    );
\LUT1_gen[1098].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1097),
      O => trig_delay(1098)
    );
\LUT1_gen[1099].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1098),
      O => trig_delay(1099)
    );
\LUT1_gen[109].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(108),
      O => trig_delay(109)
    );
\LUT1_gen[10].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(9),
      O => trig_delay(10)
    );
\LUT1_gen[1100].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1099),
      O => trig_delay(1100)
    );
\LUT1_gen[1101].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1100),
      O => trig_delay(1101)
    );
\LUT1_gen[1102].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1101),
      O => trig_delay(1102)
    );
\LUT1_gen[1103].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1102),
      O => trig_delay(1103)
    );
\LUT1_gen[1104].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1103),
      O => trig_delay(1104)
    );
\LUT1_gen[1105].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1104),
      O => trig_delay(1105)
    );
\LUT1_gen[1106].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1105),
      O => trig_delay(1106)
    );
\LUT1_gen[1107].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1106),
      O => trig_delay(1107)
    );
\LUT1_gen[1108].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1107),
      O => trig_delay(1108)
    );
\LUT1_gen[1109].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1108),
      O => trig_delay(1109)
    );
\LUT1_gen[110].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(109),
      O => trig_delay(110)
    );
\LUT1_gen[1110].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1109),
      O => trig_delay(1110)
    );
\LUT1_gen[1111].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1110),
      O => trig_delay(1111)
    );
\LUT1_gen[1112].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1111),
      O => trig_delay(1112)
    );
\LUT1_gen[1113].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1112),
      O => trig_delay(1113)
    );
\LUT1_gen[1114].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1113),
      O => trig_delay(1114)
    );
\LUT1_gen[1115].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1114),
      O => trig_delay(1115)
    );
\LUT1_gen[1116].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1115),
      O => trig_delay(1116)
    );
\LUT1_gen[1117].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1116),
      O => trig_delay(1117)
    );
\LUT1_gen[1118].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1117),
      O => trig_delay(1118)
    );
\LUT1_gen[1119].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1118),
      O => trig_delay(1119)
    );
\LUT1_gen[111].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(110),
      O => trig_delay(111)
    );
\LUT1_gen[1120].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1119),
      O => trig_delay(1120)
    );
\LUT1_gen[1121].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1120),
      O => trig_delay(1121)
    );
\LUT1_gen[1122].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1121),
      O => trig_delay(1122)
    );
\LUT1_gen[1123].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1122),
      O => trig_delay(1123)
    );
\LUT1_gen[1124].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1123),
      O => trig_delay(1124)
    );
\LUT1_gen[1125].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1124),
      O => trig_delay(1125)
    );
\LUT1_gen[1126].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1125),
      O => trig_delay(1126)
    );
\LUT1_gen[1127].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1126),
      O => trig_delay(1127)
    );
\LUT1_gen[1128].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1127),
      O => trig_delay(1128)
    );
\LUT1_gen[1129].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1128),
      O => trig_delay(1129)
    );
\LUT1_gen[112].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(111),
      O => trig_delay(112)
    );
\LUT1_gen[1130].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1129),
      O => trig_delay(1130)
    );
\LUT1_gen[1131].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1130),
      O => trig_delay(1131)
    );
\LUT1_gen[1132].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1131),
      O => trig_delay(1132)
    );
\LUT1_gen[1133].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1132),
      O => trig_delay(1133)
    );
\LUT1_gen[1134].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1133),
      O => trig_delay(1134)
    );
\LUT1_gen[1135].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1134),
      O => trig_delay(1135)
    );
\LUT1_gen[1136].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1135),
      O => trig_delay(1136)
    );
\LUT1_gen[1137].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1136),
      O => trig_delay(1137)
    );
\LUT1_gen[1138].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1137),
      O => trig_delay(1138)
    );
\LUT1_gen[1139].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1138),
      O => trig_delay(1139)
    );
\LUT1_gen[113].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(112),
      O => trig_delay(113)
    );
\LUT1_gen[1140].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1139),
      O => trig_delay(1140)
    );
\LUT1_gen[1141].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1140),
      O => trig_delay(1141)
    );
\LUT1_gen[1142].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1141),
      O => trig_delay(1142)
    );
\LUT1_gen[1143].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1142),
      O => trig_delay(1143)
    );
\LUT1_gen[1144].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1143),
      O => trig_delay(1144)
    );
\LUT1_gen[1145].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1144),
      O => trig_delay(1145)
    );
\LUT1_gen[1146].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1145),
      O => trig_delay(1146)
    );
\LUT1_gen[1147].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1146),
      O => trig_delay(1147)
    );
\LUT1_gen[1148].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1147),
      O => trig_delay(1148)
    );
\LUT1_gen[1149].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1148),
      O => trig_delay(1149)
    );
\LUT1_gen[114].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(113),
      O => trig_delay(114)
    );
\LUT1_gen[1150].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1149),
      O => trig_delay(1150)
    );
\LUT1_gen[1151].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1150),
      O => trig_delay(1151)
    );
\LUT1_gen[1152].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1151),
      O => trig_delay(1152)
    );
\LUT1_gen[1153].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1152),
      O => trig_delay(1153)
    );
\LUT1_gen[1154].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1153),
      O => trig_delay(1154)
    );
\LUT1_gen[1155].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1154),
      O => trig_delay(1155)
    );
\LUT1_gen[1156].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1155),
      O => trig_delay(1156)
    );
\LUT1_gen[1157].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1156),
      O => trig_delay(1157)
    );
\LUT1_gen[1158].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1157),
      O => trig_delay(1158)
    );
\LUT1_gen[1159].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1158),
      O => trig_delay(1159)
    );
\LUT1_gen[115].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(114),
      O => trig_delay(115)
    );
\LUT1_gen[1160].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1159),
      O => trig_delay(1160)
    );
\LUT1_gen[1161].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1160),
      O => trig_delay(1161)
    );
\LUT1_gen[1162].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1161),
      O => trig_delay(1162)
    );
\LUT1_gen[1163].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1162),
      O => trig_delay(1163)
    );
\LUT1_gen[1164].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1163),
      O => trig_delay(1164)
    );
\LUT1_gen[1165].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1164),
      O => trig_delay(1165)
    );
\LUT1_gen[1166].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1165),
      O => trig_delay(1166)
    );
\LUT1_gen[1167].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1166),
      O => trig_delay(1167)
    );
\LUT1_gen[1168].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1167),
      O => trig_delay(1168)
    );
\LUT1_gen[1169].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1168),
      O => trig_delay(1169)
    );
\LUT1_gen[116].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(115),
      O => trig_delay(116)
    );
\LUT1_gen[1170].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1169),
      O => trig_delay(1170)
    );
\LUT1_gen[1171].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1170),
      O => trig_delay(1171)
    );
\LUT1_gen[1172].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1171),
      O => trig_delay(1172)
    );
\LUT1_gen[1173].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1172),
      O => trig_delay(1173)
    );
\LUT1_gen[1174].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1173),
      O => trig_delay(1174)
    );
\LUT1_gen[1175].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1174),
      O => trig_delay(1175)
    );
\LUT1_gen[1176].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1175),
      O => trig_delay(1176)
    );
\LUT1_gen[1177].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1176),
      O => trig_delay(1177)
    );
\LUT1_gen[1178].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1177),
      O => trig_delay(1178)
    );
\LUT1_gen[1179].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1178),
      O => trig_delay(1179)
    );
\LUT1_gen[117].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(116),
      O => trig_delay(117)
    );
\LUT1_gen[1180].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1179),
      O => trig_delay(1180)
    );
\LUT1_gen[1181].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1180),
      O => trig_delay(1181)
    );
\LUT1_gen[1182].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1181),
      O => trig_delay(1182)
    );
\LUT1_gen[1183].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1182),
      O => trig_delay(1183)
    );
\LUT1_gen[1184].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1183),
      O => trig_delay(1184)
    );
\LUT1_gen[1185].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1184),
      O => trig_delay(1185)
    );
\LUT1_gen[1186].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1185),
      O => trig_delay(1186)
    );
\LUT1_gen[1187].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1186),
      O => trig_delay(1187)
    );
\LUT1_gen[1188].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1187),
      O => trig_delay(1188)
    );
\LUT1_gen[1189].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1188),
      O => trig_delay(1189)
    );
\LUT1_gen[118].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(117),
      O => trig_delay(118)
    );
\LUT1_gen[1190].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1189),
      O => trig_delay(1190)
    );
\LUT1_gen[1191].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1190),
      O => trig_delay(1191)
    );
\LUT1_gen[1192].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1191),
      O => trig_delay(1192)
    );
\LUT1_gen[1193].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1192),
      O => trig_delay(1193)
    );
\LUT1_gen[1194].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1193),
      O => trig_delay(1194)
    );
\LUT1_gen[1195].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1194),
      O => trig_delay(1195)
    );
\LUT1_gen[1196].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1195),
      O => trig_delay(1196)
    );
\LUT1_gen[1197].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1196),
      O => trig_delay(1197)
    );
\LUT1_gen[1198].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1197),
      O => trig_delay(1198)
    );
\LUT1_gen[1199].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1198),
      O => trig_delay(1199)
    );
\LUT1_gen[119].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(118),
      O => trig_delay(119)
    );
\LUT1_gen[11].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(10),
      O => trig_delay(11)
    );
\LUT1_gen[1200].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1199),
      O => trig_delay(1200)
    );
\LUT1_gen[1201].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1200),
      O => trig_delay(1201)
    );
\LUT1_gen[1202].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1201),
      O => trig_delay(1202)
    );
\LUT1_gen[1203].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1202),
      O => trig_delay(1203)
    );
\LUT1_gen[1204].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1203),
      O => trig_delay(1204)
    );
\LUT1_gen[1205].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1204),
      O => trig_delay(1205)
    );
\LUT1_gen[1206].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1205),
      O => trig_delay(1206)
    );
\LUT1_gen[1207].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1206),
      O => trig_delay(1207)
    );
\LUT1_gen[1208].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1207),
      O => trig_delay(1208)
    );
\LUT1_gen[1209].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1208),
      O => trig_delay(1209)
    );
\LUT1_gen[120].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(119),
      O => trig_delay(120)
    );
\LUT1_gen[1210].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1209),
      O => trig_delay(1210)
    );
\LUT1_gen[1211].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1210),
      O => trig_delay(1211)
    );
\LUT1_gen[1212].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1211),
      O => trig_delay(1212)
    );
\LUT1_gen[1213].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1212),
      O => trig_delay(1213)
    );
\LUT1_gen[1214].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1213),
      O => trig_delay(1214)
    );
\LUT1_gen[1215].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1214),
      O => trig_delay(1215)
    );
\LUT1_gen[1216].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1215),
      O => trig_delay(1216)
    );
\LUT1_gen[1217].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1216),
      O => trig_delay(1217)
    );
\LUT1_gen[1218].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1217),
      O => trig_delay(1218)
    );
\LUT1_gen[1219].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1218),
      O => trig_delay(1219)
    );
\LUT1_gen[121].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(120),
      O => trig_delay(121)
    );
\LUT1_gen[1220].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1219),
      O => trig_delay(1220)
    );
\LUT1_gen[1221].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1220),
      O => trig_delay(1221)
    );
\LUT1_gen[1222].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1221),
      O => trig_delay(1222)
    );
\LUT1_gen[1223].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1222),
      O => trig_delay(1223)
    );
\LUT1_gen[1224].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1223),
      O => trig_delay(1224)
    );
\LUT1_gen[1225].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1224),
      O => trig_delay(1225)
    );
\LUT1_gen[1226].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1225),
      O => trig_delay(1226)
    );
\LUT1_gen[1227].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1226),
      O => trig_delay(1227)
    );
\LUT1_gen[1228].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1227),
      O => trig_delay(1228)
    );
\LUT1_gen[1229].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1228),
      O => trig_delay(1229)
    );
\LUT1_gen[122].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(121),
      O => trig_delay(122)
    );
\LUT1_gen[1230].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1229),
      O => trig_delay(1230)
    );
\LUT1_gen[1231].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1230),
      O => trig_delay(1231)
    );
\LUT1_gen[1232].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1231),
      O => trig_delay(1232)
    );
\LUT1_gen[1233].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1232),
      O => trig_delay(1233)
    );
\LUT1_gen[1234].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1233),
      O => trig_delay(1234)
    );
\LUT1_gen[1235].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1234),
      O => trig_delay(1235)
    );
\LUT1_gen[1236].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1235),
      O => trig_delay(1236)
    );
\LUT1_gen[1237].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1236),
      O => trig_delay(1237)
    );
\LUT1_gen[1238].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1237),
      O => trig_delay(1238)
    );
\LUT1_gen[1239].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1238),
      O => trig_delay(1239)
    );
\LUT1_gen[123].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(122),
      O => trig_delay(123)
    );
\LUT1_gen[1240].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1239),
      O => trig_delay(1240)
    );
\LUT1_gen[1241].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1240),
      O => trig_delay(1241)
    );
\LUT1_gen[1242].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1241),
      O => trig_delay(1242)
    );
\LUT1_gen[1243].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1242),
      O => trig_delay(1243)
    );
\LUT1_gen[1244].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1243),
      O => trig_delay(1244)
    );
\LUT1_gen[1245].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1244),
      O => trig_delay(1245)
    );
\LUT1_gen[1246].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1245),
      O => trig_delay(1246)
    );
\LUT1_gen[1247].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1246),
      O => trig_delay(1247)
    );
\LUT1_gen[1248].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1247),
      O => trig_delay(1248)
    );
\LUT1_gen[1249].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1248),
      O => trig_delay(1249)
    );
\LUT1_gen[124].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(123),
      O => trig_delay(124)
    );
\LUT1_gen[1250].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1249),
      O => trig_delay(1250)
    );
\LUT1_gen[1251].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1250),
      O => trig_delay(1251)
    );
\LUT1_gen[1252].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1251),
      O => trig_delay(1252)
    );
\LUT1_gen[1253].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1252),
      O => trig_delay(1253)
    );
\LUT1_gen[1254].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1253),
      O => trig_delay(1254)
    );
\LUT1_gen[1255].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1254),
      O => trig_delay(1255)
    );
\LUT1_gen[1256].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1255),
      O => trig_delay(1256)
    );
\LUT1_gen[1257].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1256),
      O => trig_delay(1257)
    );
\LUT1_gen[1258].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1257),
      O => trig_delay(1258)
    );
\LUT1_gen[1259].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1258),
      O => trig_delay(1259)
    );
\LUT1_gen[125].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(124),
      O => trig_delay(125)
    );
\LUT1_gen[1260].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1259),
      O => trig_delay(1260)
    );
\LUT1_gen[1261].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1260),
      O => trig_delay(1261)
    );
\LUT1_gen[1262].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1261),
      O => trig_delay(1262)
    );
\LUT1_gen[1263].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1262),
      O => trig_delay(1263)
    );
\LUT1_gen[1264].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1263),
      O => trig_delay(1264)
    );
\LUT1_gen[1265].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1264),
      O => trig_delay(1265)
    );
\LUT1_gen[1266].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1265),
      O => trig_delay(1266)
    );
\LUT1_gen[1267].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1266),
      O => trig_delay(1267)
    );
\LUT1_gen[1268].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1267),
      O => trig_delay(1268)
    );
\LUT1_gen[1269].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1268),
      O => trig_delay(1269)
    );
\LUT1_gen[126].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(125),
      O => trig_delay(126)
    );
\LUT1_gen[1270].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1269),
      O => trig_delay(1270)
    );
\LUT1_gen[1271].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1270),
      O => trig_delay(1271)
    );
\LUT1_gen[1272].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1271),
      O => trig_delay(1272)
    );
\LUT1_gen[1273].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1272),
      O => trig_delay(1273)
    );
\LUT1_gen[1274].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1273),
      O => trig_delay(1274)
    );
\LUT1_gen[1275].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1274),
      O => trig_delay(1275)
    );
\LUT1_gen[1276].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1275),
      O => trig_delay(1276)
    );
\LUT1_gen[1277].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1276),
      O => trig_delay(1277)
    );
\LUT1_gen[1278].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1277),
      O => trig_delay(1278)
    );
\LUT1_gen[1279].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1278),
      O => trig_delay(1279)
    );
\LUT1_gen[127].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(126),
      O => trig_delay(127)
    );
\LUT1_gen[1280].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1279),
      O => trig_delay(1280)
    );
\LUT1_gen[1281].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1280),
      O => trig_delay(1281)
    );
\LUT1_gen[1282].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1281),
      O => trig_delay(1282)
    );
\LUT1_gen[1283].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1282),
      O => trig_delay(1283)
    );
\LUT1_gen[1284].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1283),
      O => trig_delay(1284)
    );
\LUT1_gen[1285].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1284),
      O => trig_delay(1285)
    );
\LUT1_gen[1286].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1285),
      O => trig_delay(1286)
    );
\LUT1_gen[1287].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1286),
      O => trig_delay(1287)
    );
\LUT1_gen[1288].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1287),
      O => trig_delay(1288)
    );
\LUT1_gen[1289].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1288),
      O => trig_delay(1289)
    );
\LUT1_gen[128].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(127),
      O => trig_delay(128)
    );
\LUT1_gen[1290].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1289),
      O => trig_delay(1290)
    );
\LUT1_gen[1291].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1290),
      O => trig_delay(1291)
    );
\LUT1_gen[1292].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1291),
      O => trig_delay(1292)
    );
\LUT1_gen[1293].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1292),
      O => trig_delay(1293)
    );
\LUT1_gen[1294].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1293),
      O => trig_delay(1294)
    );
\LUT1_gen[1295].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1294),
      O => trig_delay(1295)
    );
\LUT1_gen[1296].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1295),
      O => trig_delay(1296)
    );
\LUT1_gen[1297].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1296),
      O => trig_delay(1297)
    );
\LUT1_gen[1298].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1297),
      O => trig_delay(1298)
    );
\LUT1_gen[1299].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1298),
      O => trig_delay(1299)
    );
\LUT1_gen[129].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(128),
      O => trig_delay(129)
    );
\LUT1_gen[12].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(11),
      O => trig_delay(12)
    );
\LUT1_gen[1300].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1299),
      O => trig_delay(1300)
    );
\LUT1_gen[1301].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1300),
      O => trig_delay(1301)
    );
\LUT1_gen[1302].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1301),
      O => trig_delay(1302)
    );
\LUT1_gen[1303].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1302),
      O => trig_delay(1303)
    );
\LUT1_gen[1304].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1303),
      O => trig_delay(1304)
    );
\LUT1_gen[1305].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1304),
      O => trig_delay(1305)
    );
\LUT1_gen[1306].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1305),
      O => trig_delay(1306)
    );
\LUT1_gen[1307].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1306),
      O => trig_delay(1307)
    );
\LUT1_gen[1308].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1307),
      O => trig_delay(1308)
    );
\LUT1_gen[1309].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1308),
      O => trig_delay(1309)
    );
\LUT1_gen[130].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(129),
      O => trig_delay(130)
    );
\LUT1_gen[1310].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1309),
      O => trig_delay(1310)
    );
\LUT1_gen[1311].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1310),
      O => trig_delay(1311)
    );
\LUT1_gen[1312].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1311),
      O => trig_delay(1312)
    );
\LUT1_gen[1313].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1312),
      O => trig_delay(1313)
    );
\LUT1_gen[1314].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1313),
      O => trig_delay(1314)
    );
\LUT1_gen[1315].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1314),
      O => trig_delay(1315)
    );
\LUT1_gen[1316].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1315),
      O => trig_delay(1316)
    );
\LUT1_gen[1317].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1316),
      O => trig_delay(1317)
    );
\LUT1_gen[1318].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1317),
      O => trig_delay(1318)
    );
\LUT1_gen[1319].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1318),
      O => trig_delay(1319)
    );
\LUT1_gen[131].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(130),
      O => trig_delay(131)
    );
\LUT1_gen[1320].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1319),
      O => trig_delay(1320)
    );
\LUT1_gen[1321].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1320),
      O => trig_delay(1321)
    );
\LUT1_gen[1322].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1321),
      O => trig_delay(1322)
    );
\LUT1_gen[1323].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1322),
      O => trig_delay(1323)
    );
\LUT1_gen[1324].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1323),
      O => trig_delay(1324)
    );
\LUT1_gen[1325].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1324),
      O => trig_delay(1325)
    );
\LUT1_gen[1326].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1325),
      O => trig_delay(1326)
    );
\LUT1_gen[1327].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1326),
      O => trig_delay(1327)
    );
\LUT1_gen[1328].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1327),
      O => trig_delay(1328)
    );
\LUT1_gen[1329].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1328),
      O => trig_delay(1329)
    );
\LUT1_gen[132].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(131),
      O => trig_delay(132)
    );
\LUT1_gen[1330].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1329),
      O => trig_delay(1330)
    );
\LUT1_gen[1331].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1330),
      O => trig_delay(1331)
    );
\LUT1_gen[1332].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1331),
      O => trig_delay(1332)
    );
\LUT1_gen[1333].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1332),
      O => trig_delay(1333)
    );
\LUT1_gen[1334].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1333),
      O => trig_delay(1334)
    );
\LUT1_gen[1335].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1334),
      O => trig_delay(1335)
    );
\LUT1_gen[1336].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1335),
      O => trig_delay(1336)
    );
\LUT1_gen[1337].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1336),
      O => trig_delay(1337)
    );
\LUT1_gen[1338].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1337),
      O => trig_delay(1338)
    );
\LUT1_gen[1339].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1338),
      O => trig_delay(1339)
    );
\LUT1_gen[133].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(132),
      O => trig_delay(133)
    );
\LUT1_gen[1340].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1339),
      O => trig_delay(1340)
    );
\LUT1_gen[1341].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1340),
      O => trig_delay(1341)
    );
\LUT1_gen[1342].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1341),
      O => trig_delay(1342)
    );
\LUT1_gen[1343].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1342),
      O => trig_delay(1343)
    );
\LUT1_gen[1344].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1343),
      O => trig_delay(1344)
    );
\LUT1_gen[1345].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1344),
      O => trig_delay(1345)
    );
\LUT1_gen[1346].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1345),
      O => trig_delay(1346)
    );
\LUT1_gen[1347].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1346),
      O => trig_delay(1347)
    );
\LUT1_gen[1348].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1347),
      O => trig_delay(1348)
    );
\LUT1_gen[1349].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1348),
      O => trig_delay(1349)
    );
\LUT1_gen[134].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(133),
      O => trig_delay(134)
    );
\LUT1_gen[1350].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1349),
      O => trig_delay(1350)
    );
\LUT1_gen[1351].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1350),
      O => trig_delay(1351)
    );
\LUT1_gen[1352].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1351),
      O => trig_delay(1352)
    );
\LUT1_gen[1353].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1352),
      O => trig_delay(1353)
    );
\LUT1_gen[1354].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1353),
      O => trig_delay(1354)
    );
\LUT1_gen[1355].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1354),
      O => trig_delay(1355)
    );
\LUT1_gen[1356].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1355),
      O => trig_delay(1356)
    );
\LUT1_gen[1357].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1356),
      O => trig_delay(1357)
    );
\LUT1_gen[1358].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1357),
      O => trig_delay(1358)
    );
\LUT1_gen[1359].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1358),
      O => trig_delay(1359)
    );
\LUT1_gen[135].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(134),
      O => trig_delay(135)
    );
\LUT1_gen[1360].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1359),
      O => trig_delay(1360)
    );
\LUT1_gen[1361].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1360),
      O => trig_delay(1361)
    );
\LUT1_gen[1362].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1361),
      O => trig_delay(1362)
    );
\LUT1_gen[1363].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1362),
      O => trig_delay(1363)
    );
\LUT1_gen[1364].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1363),
      O => trig_delay(1364)
    );
\LUT1_gen[1365].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1364),
      O => trig_delay(1365)
    );
\LUT1_gen[1366].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1365),
      O => trig_delay(1366)
    );
\LUT1_gen[1367].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1366),
      O => trig_delay(1367)
    );
\LUT1_gen[1368].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1367),
      O => trig_delay(1368)
    );
\LUT1_gen[1369].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1368),
      O => trig_delay(1369)
    );
\LUT1_gen[136].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(135),
      O => trig_delay(136)
    );
\LUT1_gen[1370].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1369),
      O => trig_delay(1370)
    );
\LUT1_gen[1371].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1370),
      O => trig_delay(1371)
    );
\LUT1_gen[1372].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1371),
      O => trig_delay(1372)
    );
\LUT1_gen[1373].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1372),
      O => trig_delay(1373)
    );
\LUT1_gen[1374].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1373),
      O => trig_delay(1374)
    );
\LUT1_gen[1375].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1374),
      O => trig_delay(1375)
    );
\LUT1_gen[1376].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1375),
      O => trig_delay(1376)
    );
\LUT1_gen[1377].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1376),
      O => trig_delay(1377)
    );
\LUT1_gen[1378].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1377),
      O => trig_delay(1378)
    );
\LUT1_gen[1379].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1378),
      O => trig_delay(1379)
    );
\LUT1_gen[137].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(136),
      O => trig_delay(137)
    );
\LUT1_gen[1380].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1379),
      O => trig_delay(1380)
    );
\LUT1_gen[1381].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1380),
      O => trig_delay(1381)
    );
\LUT1_gen[1382].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1381),
      O => trig_delay(1382)
    );
\LUT1_gen[1383].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1382),
      O => trig_delay(1383)
    );
\LUT1_gen[1384].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1383),
      O => trig_delay(1384)
    );
\LUT1_gen[1385].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1384),
      O => trig_delay(1385)
    );
\LUT1_gen[1386].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1385),
      O => trig_delay(1386)
    );
\LUT1_gen[1387].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1386),
      O => trig_delay(1387)
    );
\LUT1_gen[1388].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1387),
      O => trig_delay(1388)
    );
\LUT1_gen[1389].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1388),
      O => trig_delay(1389)
    );
\LUT1_gen[138].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(137),
      O => trig_delay(138)
    );
\LUT1_gen[1390].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1389),
      O => trig_delay(1390)
    );
\LUT1_gen[1391].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1390),
      O => trig_delay(1391)
    );
\LUT1_gen[1392].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1391),
      O => trig_delay(1392)
    );
\LUT1_gen[1393].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1392),
      O => trig_delay(1393)
    );
\LUT1_gen[1394].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1393),
      O => trig_delay(1394)
    );
\LUT1_gen[1395].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1394),
      O => trig_delay(1395)
    );
\LUT1_gen[1396].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1395),
      O => trig_delay(1396)
    );
\LUT1_gen[1397].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1396),
      O => trig_delay(1397)
    );
\LUT1_gen[1398].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1397),
      O => trig_delay(1398)
    );
\LUT1_gen[1399].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1398),
      O => trig_delay(1399)
    );
\LUT1_gen[139].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(138),
      O => trig_delay(139)
    );
\LUT1_gen[13].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(12),
      O => trig_delay(13)
    );
\LUT1_gen[1400].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1399),
      O => trig_delay(1400)
    );
\LUT1_gen[1401].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1400),
      O => trig_delay(1401)
    );
\LUT1_gen[1402].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1401),
      O => trig_delay(1402)
    );
\LUT1_gen[1403].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1402),
      O => trig_delay(1403)
    );
\LUT1_gen[1404].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1403),
      O => trig_delay(1404)
    );
\LUT1_gen[1405].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1404),
      O => trig_delay(1405)
    );
\LUT1_gen[1406].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1405),
      O => trig_delay(1406)
    );
\LUT1_gen[1407].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1406),
      O => trig_delay(1407)
    );
\LUT1_gen[1408].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1407),
      O => trig_delay(1408)
    );
\LUT1_gen[1409].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1408),
      O => trig_delay(1409)
    );
\LUT1_gen[140].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(139),
      O => trig_delay(140)
    );
\LUT1_gen[1410].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1409),
      O => trig_delay(1410)
    );
\LUT1_gen[1411].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1410),
      O => trig_delay(1411)
    );
\LUT1_gen[1412].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1411),
      O => trig_delay(1412)
    );
\LUT1_gen[1413].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1412),
      O => trig_delay(1413)
    );
\LUT1_gen[1414].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1413),
      O => trig_delay(1414)
    );
\LUT1_gen[1415].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1414),
      O => trig_delay(1415)
    );
\LUT1_gen[1416].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1415),
      O => trig_delay(1416)
    );
\LUT1_gen[1417].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1416),
      O => trig_delay(1417)
    );
\LUT1_gen[1418].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1417),
      O => trig_delay(1418)
    );
\LUT1_gen[1419].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1418),
      O => trig_delay(1419)
    );
\LUT1_gen[141].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(140),
      O => trig_delay(141)
    );
\LUT1_gen[1420].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1419),
      O => trig_delay(1420)
    );
\LUT1_gen[1421].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1420),
      O => trig_delay(1421)
    );
\LUT1_gen[1422].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1421),
      O => trig_delay(1422)
    );
\LUT1_gen[1423].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1422),
      O => trig_delay(1423)
    );
\LUT1_gen[1424].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1423),
      O => trig_delay(1424)
    );
\LUT1_gen[1425].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1424),
      O => trig_delay(1425)
    );
\LUT1_gen[1426].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1425),
      O => trig_delay(1426)
    );
\LUT1_gen[1427].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1426),
      O => trig_delay(1427)
    );
\LUT1_gen[1428].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1427),
      O => trig_delay(1428)
    );
\LUT1_gen[1429].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1428),
      O => trig_delay(1429)
    );
\LUT1_gen[142].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(141),
      O => trig_delay(142)
    );
\LUT1_gen[1430].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1429),
      O => trig_delay(1430)
    );
\LUT1_gen[1431].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1430),
      O => trig_delay(1431)
    );
\LUT1_gen[1432].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1431),
      O => trig_delay(1432)
    );
\LUT1_gen[1433].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1432),
      O => trig_delay(1433)
    );
\LUT1_gen[1434].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1433),
      O => trig_delay(1434)
    );
\LUT1_gen[1435].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1434),
      O => trig_delay(1435)
    );
\LUT1_gen[1436].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1435),
      O => trig_delay(1436)
    );
\LUT1_gen[1437].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1436),
      O => trig_delay(1437)
    );
\LUT1_gen[1438].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1437),
      O => trig_delay(1438)
    );
\LUT1_gen[1439].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1438),
      O => trig_delay(1439)
    );
\LUT1_gen[143].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(142),
      O => trig_delay(143)
    );
\LUT1_gen[1440].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1439),
      O => trig_delay(1440)
    );
\LUT1_gen[1441].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1440),
      O => trig_delay(1441)
    );
\LUT1_gen[1442].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1441),
      O => trig_delay(1442)
    );
\LUT1_gen[1443].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1442),
      O => trig_delay(1443)
    );
\LUT1_gen[1444].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1443),
      O => trig_delay(1444)
    );
\LUT1_gen[1445].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1444),
      O => trig_delay(1445)
    );
\LUT1_gen[1446].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1445),
      O => trig_delay(1446)
    );
\LUT1_gen[1447].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1446),
      O => trig_delay(1447)
    );
\LUT1_gen[1448].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1447),
      O => trig_delay(1448)
    );
\LUT1_gen[1449].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1448),
      O => trig_delay(1449)
    );
\LUT1_gen[144].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(143),
      O => trig_delay(144)
    );
\LUT1_gen[1450].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1449),
      O => trig_delay(1450)
    );
\LUT1_gen[1451].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1450),
      O => trig_delay(1451)
    );
\LUT1_gen[1452].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1451),
      O => trig_delay(1452)
    );
\LUT1_gen[1453].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1452),
      O => trig_delay(1453)
    );
\LUT1_gen[1454].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1453),
      O => trig_delay(1454)
    );
\LUT1_gen[1455].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1454),
      O => trig_delay(1455)
    );
\LUT1_gen[1456].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1455),
      O => trig_delay(1456)
    );
\LUT1_gen[1457].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1456),
      O => trig_delay(1457)
    );
\LUT1_gen[1458].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1457),
      O => trig_delay(1458)
    );
\LUT1_gen[1459].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1458),
      O => trig_delay(1459)
    );
\LUT1_gen[145].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(144),
      O => trig_delay(145)
    );
\LUT1_gen[1460].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1459),
      O => trig_delay(1460)
    );
\LUT1_gen[1461].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1460),
      O => trig_delay(1461)
    );
\LUT1_gen[1462].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1461),
      O => trig_delay(1462)
    );
\LUT1_gen[1463].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1462),
      O => trig_delay(1463)
    );
\LUT1_gen[1464].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1463),
      O => trig_delay(1464)
    );
\LUT1_gen[1465].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1464),
      O => trig_delay(1465)
    );
\LUT1_gen[1466].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1465),
      O => trig_delay(1466)
    );
\LUT1_gen[1467].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1466),
      O => trig_delay(1467)
    );
\LUT1_gen[1468].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1467),
      O => trig_delay(1468)
    );
\LUT1_gen[1469].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1468),
      O => trig_delay(1469)
    );
\LUT1_gen[146].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(145),
      O => trig_delay(146)
    );
\LUT1_gen[1470].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1469),
      O => trig_delay(1470)
    );
\LUT1_gen[1471].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1470),
      O => trig_delay(1471)
    );
\LUT1_gen[1472].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1471),
      O => trig_delay(1472)
    );
\LUT1_gen[1473].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1472),
      O => trig_delay(1473)
    );
\LUT1_gen[1474].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1473),
      O => trig_delay(1474)
    );
\LUT1_gen[1475].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1474),
      O => trig_delay(1475)
    );
\LUT1_gen[1476].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1475),
      O => trig_delay(1476)
    );
\LUT1_gen[1477].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1476),
      O => trig_delay(1477)
    );
\LUT1_gen[1478].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1477),
      O => trig_delay(1478)
    );
\LUT1_gen[1479].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1478),
      O => trig_delay(1479)
    );
\LUT1_gen[147].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(146),
      O => trig_delay(147)
    );
\LUT1_gen[1480].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1479),
      O => trig_delay(1480)
    );
\LUT1_gen[1481].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1480),
      O => trig_delay(1481)
    );
\LUT1_gen[1482].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1481),
      O => trig_delay(1482)
    );
\LUT1_gen[1483].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1482),
      O => trig_delay(1483)
    );
\LUT1_gen[1484].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1483),
      O => trig_delay(1484)
    );
\LUT1_gen[1485].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1484),
      O => trig_delay(1485)
    );
\LUT1_gen[1486].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1485),
      O => trig_delay(1486)
    );
\LUT1_gen[1487].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1486),
      O => trig_delay(1487)
    );
\LUT1_gen[1488].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1487),
      O => trig_delay(1488)
    );
\LUT1_gen[1489].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1488),
      O => trig_delay(1489)
    );
\LUT1_gen[148].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(147),
      O => trig_delay(148)
    );
\LUT1_gen[1490].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1489),
      O => trig_delay(1490)
    );
\LUT1_gen[1491].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1490),
      O => trig_delay(1491)
    );
\LUT1_gen[1492].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1491),
      O => trig_delay(1492)
    );
\LUT1_gen[1493].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1492),
      O => trig_delay(1493)
    );
\LUT1_gen[1494].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1493),
      O => trig_delay(1494)
    );
\LUT1_gen[1495].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1494),
      O => trig_delay(1495)
    );
\LUT1_gen[1496].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1495),
      O => trig_delay(1496)
    );
\LUT1_gen[1497].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1496),
      O => trig_delay(1497)
    );
\LUT1_gen[1498].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1497),
      O => trig_delay(1498)
    );
\LUT1_gen[1499].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1498),
      O => trig_delay(1499)
    );
\LUT1_gen[149].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(148),
      O => trig_delay(149)
    );
\LUT1_gen[14].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(13),
      O => trig_delay(14)
    );
\LUT1_gen[1500].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1499),
      O => trig_delay(1500)
    );
\LUT1_gen[1501].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1500),
      O => trig_delay(1501)
    );
\LUT1_gen[1502].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1501),
      O => trig_delay(1502)
    );
\LUT1_gen[1503].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1502),
      O => trig_delay(1503)
    );
\LUT1_gen[1504].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1503),
      O => trig_delay(1504)
    );
\LUT1_gen[1505].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1504),
      O => trig_delay(1505)
    );
\LUT1_gen[1506].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1505),
      O => trig_delay(1506)
    );
\LUT1_gen[1507].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1506),
      O => trig_delay(1507)
    );
\LUT1_gen[1508].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1507),
      O => trig_delay(1508)
    );
\LUT1_gen[1509].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1508),
      O => trig_delay(1509)
    );
\LUT1_gen[150].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(149),
      O => trig_delay(150)
    );
\LUT1_gen[1510].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1509),
      O => trig_delay(1510)
    );
\LUT1_gen[1511].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1510),
      O => trig_delay(1511)
    );
\LUT1_gen[1512].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1511),
      O => trig_delay(1512)
    );
\LUT1_gen[1513].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1512),
      O => trig_delay(1513)
    );
\LUT1_gen[1514].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1513),
      O => trig_delay(1514)
    );
\LUT1_gen[1515].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1514),
      O => trig_delay(1515)
    );
\LUT1_gen[1516].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1515),
      O => trig_delay(1516)
    );
\LUT1_gen[1517].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1516),
      O => trig_delay(1517)
    );
\LUT1_gen[1518].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1517),
      O => trig_delay(1518)
    );
\LUT1_gen[1519].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1518),
      O => trig_delay(1519)
    );
\LUT1_gen[151].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(150),
      O => trig_delay(151)
    );
\LUT1_gen[1520].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1519),
      O => trig_delay(1520)
    );
\LUT1_gen[1521].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1520),
      O => trig_delay(1521)
    );
\LUT1_gen[1522].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1521),
      O => trig_delay(1522)
    );
\LUT1_gen[1523].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1522),
      O => trig_delay(1523)
    );
\LUT1_gen[1524].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1523),
      O => trig_delay(1524)
    );
\LUT1_gen[1525].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1524),
      O => trig_delay(1525)
    );
\LUT1_gen[1526].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1525),
      O => trig_delay(1526)
    );
\LUT1_gen[1527].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1526),
      O => trig_delay(1527)
    );
\LUT1_gen[1528].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1527),
      O => trig_delay(1528)
    );
\LUT1_gen[1529].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1528),
      O => trig_delay(1529)
    );
\LUT1_gen[152].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(151),
      O => trig_delay(152)
    );
\LUT1_gen[1530].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1529),
      O => trig_delay(1530)
    );
\LUT1_gen[1531].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1530),
      O => trig_delay(1531)
    );
\LUT1_gen[1532].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1531),
      O => trig_delay(1532)
    );
\LUT1_gen[1533].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1532),
      O => trig_delay(1533)
    );
\LUT1_gen[1534].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1533),
      O => trig_delay(1534)
    );
\LUT1_gen[1535].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1534),
      O => trig_delay(1535)
    );
\LUT1_gen[1536].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1535),
      O => trig_delay(1536)
    );
\LUT1_gen[1537].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1536),
      O => trig_delay(1537)
    );
\LUT1_gen[1538].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1537),
      O => trig_delay(1538)
    );
\LUT1_gen[1539].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1538),
      O => trig_delay(1539)
    );
\LUT1_gen[153].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(152),
      O => trig_delay(153)
    );
\LUT1_gen[1540].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1539),
      O => trig_delay(1540)
    );
\LUT1_gen[1541].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1540),
      O => trig_delay(1541)
    );
\LUT1_gen[1542].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1541),
      O => trig_delay(1542)
    );
\LUT1_gen[1543].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1542),
      O => trig_delay(1543)
    );
\LUT1_gen[1544].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1543),
      O => trig_delay(1544)
    );
\LUT1_gen[1545].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1544),
      O => trig_delay(1545)
    );
\LUT1_gen[1546].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1545),
      O => trig_delay(1546)
    );
\LUT1_gen[1547].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1546),
      O => trig_delay(1547)
    );
\LUT1_gen[1548].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1547),
      O => trig_delay(1548)
    );
\LUT1_gen[1549].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1548),
      O => trig_delay(1549)
    );
\LUT1_gen[154].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(153),
      O => trig_delay(154)
    );
\LUT1_gen[1550].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1549),
      O => trig_delay(1550)
    );
\LUT1_gen[1551].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1550),
      O => trig_delay(1551)
    );
\LUT1_gen[1552].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1551),
      O => trig_delay(1552)
    );
\LUT1_gen[1553].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1552),
      O => trig_delay(1553)
    );
\LUT1_gen[1554].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1553),
      O => trig_delay(1554)
    );
\LUT1_gen[1555].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1554),
      O => trig_delay(1555)
    );
\LUT1_gen[1556].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1555),
      O => trig_delay(1556)
    );
\LUT1_gen[1557].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1556),
      O => trig_delay(1557)
    );
\LUT1_gen[1558].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1557),
      O => trig_delay(1558)
    );
\LUT1_gen[1559].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1558),
      O => trig_delay(1559)
    );
\LUT1_gen[155].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(154),
      O => trig_delay(155)
    );
\LUT1_gen[1560].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1559),
      O => trig_delay(1560)
    );
\LUT1_gen[1561].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1560),
      O => trig_delay(1561)
    );
\LUT1_gen[1562].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1561),
      O => trig_delay(1562)
    );
\LUT1_gen[1563].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1562),
      O => trig_delay(1563)
    );
\LUT1_gen[1564].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1563),
      O => trig_delay(1564)
    );
\LUT1_gen[1565].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1564),
      O => trig_delay(1565)
    );
\LUT1_gen[1566].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1565),
      O => trig_delay(1566)
    );
\LUT1_gen[1567].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1566),
      O => trig_delay(1567)
    );
\LUT1_gen[1568].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1567),
      O => trig_delay(1568)
    );
\LUT1_gen[1569].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1568),
      O => trig_delay(1569)
    );
\LUT1_gen[156].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(155),
      O => trig_delay(156)
    );
\LUT1_gen[1570].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1569),
      O => trig_delay(1570)
    );
\LUT1_gen[1571].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1570),
      O => trig_delay(1571)
    );
\LUT1_gen[1572].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1571),
      O => trig_delay(1572)
    );
\LUT1_gen[1573].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1572),
      O => trig_delay(1573)
    );
\LUT1_gen[1574].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1573),
      O => trig_delay(1574)
    );
\LUT1_gen[1575].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1574),
      O => trig_delay(1575)
    );
\LUT1_gen[1576].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1575),
      O => trig_delay(1576)
    );
\LUT1_gen[1577].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1576),
      O => trig_delay(1577)
    );
\LUT1_gen[1578].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1577),
      O => trig_delay(1578)
    );
\LUT1_gen[1579].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1578),
      O => trig_delay(1579)
    );
\LUT1_gen[157].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(156),
      O => trig_delay(157)
    );
\LUT1_gen[1580].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1579),
      O => trig_delay(1580)
    );
\LUT1_gen[1581].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1580),
      O => trig_delay(1581)
    );
\LUT1_gen[1582].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1581),
      O => trig_delay(1582)
    );
\LUT1_gen[1583].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1582),
      O => trig_delay(1583)
    );
\LUT1_gen[1584].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1583),
      O => trig_delay(1584)
    );
\LUT1_gen[1585].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1584),
      O => trig_delay(1585)
    );
\LUT1_gen[1586].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1585),
      O => trig_delay(1586)
    );
\LUT1_gen[1587].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1586),
      O => trig_delay(1587)
    );
\LUT1_gen[1588].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1587),
      O => trig_delay(1588)
    );
\LUT1_gen[1589].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1588),
      O => trig_delay(1589)
    );
\LUT1_gen[158].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(157),
      O => trig_delay(158)
    );
\LUT1_gen[1590].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1589),
      O => trig_delay(1590)
    );
\LUT1_gen[1591].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1590),
      O => trig_delay(1591)
    );
\LUT1_gen[1592].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1591),
      O => trig_delay(1592)
    );
\LUT1_gen[1593].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1592),
      O => trig_delay(1593)
    );
\LUT1_gen[1594].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1593),
      O => trig_delay(1594)
    );
\LUT1_gen[1595].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1594),
      O => trig_delay(1595)
    );
\LUT1_gen[1596].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1595),
      O => trig_delay(1596)
    );
\LUT1_gen[1597].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1596),
      O => trig_delay(1597)
    );
\LUT1_gen[1598].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1597),
      O => trig_delay(1598)
    );
\LUT1_gen[1599].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1598),
      O => trig_delay(1599)
    );
\LUT1_gen[159].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(158),
      O => trig_delay(159)
    );
\LUT1_gen[15].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(14),
      O => trig_delay(15)
    );
\LUT1_gen[1600].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1599),
      O => trig_delay(1600)
    );
\LUT1_gen[1601].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1600),
      O => trig_delay(1601)
    );
\LUT1_gen[1602].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1601),
      O => trig_delay(1602)
    );
\LUT1_gen[1603].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1602),
      O => trig_delay(1603)
    );
\LUT1_gen[1604].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1603),
      O => trig_delay(1604)
    );
\LUT1_gen[1605].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1604),
      O => trig_delay(1605)
    );
\LUT1_gen[1606].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1605),
      O => trig_delay(1606)
    );
\LUT1_gen[1607].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1606),
      O => trig_delay(1607)
    );
\LUT1_gen[1608].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1607),
      O => trig_delay(1608)
    );
\LUT1_gen[1609].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1608),
      O => trig_delay(1609)
    );
\LUT1_gen[160].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(159),
      O => trig_delay(160)
    );
\LUT1_gen[1610].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1609),
      O => trig_delay(1610)
    );
\LUT1_gen[1611].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1610),
      O => trig_delay(1611)
    );
\LUT1_gen[1612].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1611),
      O => trig_delay(1612)
    );
\LUT1_gen[1613].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1612),
      O => trig_delay(1613)
    );
\LUT1_gen[1614].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1613),
      O => trig_delay(1614)
    );
\LUT1_gen[1615].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1614),
      O => trig_delay(1615)
    );
\LUT1_gen[1616].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1615),
      O => trig_delay(1616)
    );
\LUT1_gen[1617].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1616),
      O => trig_delay(1617)
    );
\LUT1_gen[1618].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1617),
      O => trig_delay(1618)
    );
\LUT1_gen[1619].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1618),
      O => trig_delay(1619)
    );
\LUT1_gen[161].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(160),
      O => trig_delay(161)
    );
\LUT1_gen[1620].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1619),
      O => trig_delay(1620)
    );
\LUT1_gen[1621].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1620),
      O => trig_delay(1621)
    );
\LUT1_gen[1622].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1621),
      O => trig_delay(1622)
    );
\LUT1_gen[1623].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1622),
      O => trig_delay(1623)
    );
\LUT1_gen[1624].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1623),
      O => trig_delay(1624)
    );
\LUT1_gen[1625].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1624),
      O => trig_delay(1625)
    );
\LUT1_gen[1626].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1625),
      O => trig_delay(1626)
    );
\LUT1_gen[1627].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1626),
      O => trig_delay(1627)
    );
\LUT1_gen[1628].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1627),
      O => trig_delay(1628)
    );
\LUT1_gen[1629].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1628),
      O => trig_delay(1629)
    );
\LUT1_gen[162].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(161),
      O => trig_delay(162)
    );
\LUT1_gen[1630].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1629),
      O => trig_delay(1630)
    );
\LUT1_gen[1631].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1630),
      O => trig_delay(1631)
    );
\LUT1_gen[1632].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1631),
      O => trig_delay(1632)
    );
\LUT1_gen[1633].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1632),
      O => trig_delay(1633)
    );
\LUT1_gen[1634].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1633),
      O => trig_delay(1634)
    );
\LUT1_gen[1635].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1634),
      O => trig_delay(1635)
    );
\LUT1_gen[1636].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1635),
      O => trig_delay(1636)
    );
\LUT1_gen[1637].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1636),
      O => trig_delay(1637)
    );
\LUT1_gen[1638].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1637),
      O => trig_delay(1638)
    );
\LUT1_gen[1639].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1638),
      O => trig_delay(1639)
    );
\LUT1_gen[163].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(162),
      O => trig_delay(163)
    );
\LUT1_gen[1640].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1639),
      O => trig_delay(1640)
    );
\LUT1_gen[1641].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1640),
      O => trig_delay(1641)
    );
\LUT1_gen[1642].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1641),
      O => trig_delay(1642)
    );
\LUT1_gen[1643].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1642),
      O => trig_delay(1643)
    );
\LUT1_gen[1644].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1643),
      O => trig_delay(1644)
    );
\LUT1_gen[1645].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1644),
      O => trig_delay(1645)
    );
\LUT1_gen[1646].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1645),
      O => trig_delay(1646)
    );
\LUT1_gen[1647].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1646),
      O => trig_delay(1647)
    );
\LUT1_gen[1648].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1647),
      O => trig_delay(1648)
    );
\LUT1_gen[1649].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1648),
      O => trig_delay(1649)
    );
\LUT1_gen[164].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(163),
      O => trig_delay(164)
    );
\LUT1_gen[1650].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1649),
      O => trig_delay(1650)
    );
\LUT1_gen[1651].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1650),
      O => trig_delay(1651)
    );
\LUT1_gen[1652].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1651),
      O => trig_delay(1652)
    );
\LUT1_gen[1653].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1652),
      O => trig_delay(1653)
    );
\LUT1_gen[1654].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1653),
      O => trig_delay(1654)
    );
\LUT1_gen[1655].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1654),
      O => trig_delay(1655)
    );
\LUT1_gen[1656].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1655),
      O => trig_delay(1656)
    );
\LUT1_gen[1657].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1656),
      O => trig_delay(1657)
    );
\LUT1_gen[1658].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1657),
      O => trig_delay(1658)
    );
\LUT1_gen[1659].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1658),
      O => trig_delay(1659)
    );
\LUT1_gen[165].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(164),
      O => trig_delay(165)
    );
\LUT1_gen[1660].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1659),
      O => trig_delay(1660)
    );
\LUT1_gen[1661].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1660),
      O => trig_delay(1661)
    );
\LUT1_gen[1662].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1661),
      O => trig_delay(1662)
    );
\LUT1_gen[1663].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1662),
      O => trig_delay(1663)
    );
\LUT1_gen[1664].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1663),
      O => trig_delay(1664)
    );
\LUT1_gen[1665].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1664),
      O => trig_delay(1665)
    );
\LUT1_gen[1666].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1665),
      O => trig_delay(1666)
    );
\LUT1_gen[1667].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1666),
      O => trig_delay(1667)
    );
\LUT1_gen[1668].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1667),
      O => trig_delay(1668)
    );
\LUT1_gen[1669].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1668),
      O => trig_delay(1669)
    );
\LUT1_gen[166].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(165),
      O => trig_delay(166)
    );
\LUT1_gen[1670].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1669),
      O => trig_delay(1670)
    );
\LUT1_gen[1671].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1670),
      O => trig_delay(1671)
    );
\LUT1_gen[1672].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1671),
      O => trig_delay(1672)
    );
\LUT1_gen[1673].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1672),
      O => trig_delay(1673)
    );
\LUT1_gen[1674].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1673),
      O => trig_delay(1674)
    );
\LUT1_gen[1675].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1674),
      O => trig_delay(1675)
    );
\LUT1_gen[1676].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1675),
      O => trig_delay(1676)
    );
\LUT1_gen[1677].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1676),
      O => trig_delay(1677)
    );
\LUT1_gen[1678].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1677),
      O => trig_delay(1678)
    );
\LUT1_gen[1679].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1678),
      O => trig_delay(1679)
    );
\LUT1_gen[167].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(166),
      O => trig_delay(167)
    );
\LUT1_gen[1680].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1679),
      O => trig_delay(1680)
    );
\LUT1_gen[1681].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1680),
      O => trig_delay(1681)
    );
\LUT1_gen[1682].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1681),
      O => trig_delay(1682)
    );
\LUT1_gen[1683].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1682),
      O => trig_delay(1683)
    );
\LUT1_gen[1684].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1683),
      O => trig_delay(1684)
    );
\LUT1_gen[1685].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1684),
      O => trig_delay(1685)
    );
\LUT1_gen[1686].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1685),
      O => trig_delay(1686)
    );
\LUT1_gen[1687].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1686),
      O => trig_delay(1687)
    );
\LUT1_gen[1688].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1687),
      O => trig_delay(1688)
    );
\LUT1_gen[1689].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1688),
      O => trig_delay(1689)
    );
\LUT1_gen[168].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(167),
      O => trig_delay(168)
    );
\LUT1_gen[1690].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1689),
      O => trig_delay(1690)
    );
\LUT1_gen[1691].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1690),
      O => trig_delay(1691)
    );
\LUT1_gen[1692].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1691),
      O => trig_delay(1692)
    );
\LUT1_gen[1693].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1692),
      O => trig_delay(1693)
    );
\LUT1_gen[1694].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1693),
      O => trig_delay(1694)
    );
\LUT1_gen[1695].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1694),
      O => trig_delay(1695)
    );
\LUT1_gen[1696].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1695),
      O => trig_delay(1696)
    );
\LUT1_gen[1697].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1696),
      O => trig_delay(1697)
    );
\LUT1_gen[1698].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1697),
      O => trig_delay(1698)
    );
\LUT1_gen[1699].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1698),
      O => trig_delay(1699)
    );
\LUT1_gen[169].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(168),
      O => trig_delay(169)
    );
\LUT1_gen[16].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(15),
      O => trig_delay(16)
    );
\LUT1_gen[1700].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1699),
      O => trig_delay(1700)
    );
\LUT1_gen[1701].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1700),
      O => trig_delay(1701)
    );
\LUT1_gen[1702].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1701),
      O => trig_delay(1702)
    );
\LUT1_gen[1703].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1702),
      O => trig_delay(1703)
    );
\LUT1_gen[1704].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1703),
      O => trig_delay(1704)
    );
\LUT1_gen[1705].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1704),
      O => trig_delay(1705)
    );
\LUT1_gen[1706].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1705),
      O => trig_delay(1706)
    );
\LUT1_gen[1707].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1706),
      O => trig_delay(1707)
    );
\LUT1_gen[1708].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1707),
      O => trig_delay(1708)
    );
\LUT1_gen[1709].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1708),
      O => trig_delay(1709)
    );
\LUT1_gen[170].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(169),
      O => trig_delay(170)
    );
\LUT1_gen[1710].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1709),
      O => trig_delay(1710)
    );
\LUT1_gen[1711].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1710),
      O => trig_delay(1711)
    );
\LUT1_gen[1712].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1711),
      O => trig_delay(1712)
    );
\LUT1_gen[1713].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1712),
      O => trig_delay(1713)
    );
\LUT1_gen[1714].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1713),
      O => trig_delay(1714)
    );
\LUT1_gen[1715].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1714),
      O => trig_delay(1715)
    );
\LUT1_gen[1716].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1715),
      O => trig_delay(1716)
    );
\LUT1_gen[1717].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1716),
      O => trig_delay(1717)
    );
\LUT1_gen[1718].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1717),
      O => trig_delay(1718)
    );
\LUT1_gen[1719].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1718),
      O => trig_delay(1719)
    );
\LUT1_gen[171].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(170),
      O => trig_delay(171)
    );
\LUT1_gen[1720].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1719),
      O => trig_delay(1720)
    );
\LUT1_gen[1721].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1720),
      O => trig_delay(1721)
    );
\LUT1_gen[1722].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1721),
      O => trig_delay(1722)
    );
\LUT1_gen[1723].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1722),
      O => trig_delay(1723)
    );
\LUT1_gen[1724].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1723),
      O => trig_delay(1724)
    );
\LUT1_gen[1725].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1724),
      O => trig_delay(1725)
    );
\LUT1_gen[1726].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1725),
      O => trig_delay(1726)
    );
\LUT1_gen[1727].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1726),
      O => trig_delay(1727)
    );
\LUT1_gen[1728].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1727),
      O => trig_delay(1728)
    );
\LUT1_gen[1729].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1728),
      O => trig_delay(1729)
    );
\LUT1_gen[172].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(171),
      O => trig_delay(172)
    );
\LUT1_gen[1730].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1729),
      O => trig_delay(1730)
    );
\LUT1_gen[1731].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1730),
      O => trig_delay(1731)
    );
\LUT1_gen[1732].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1731),
      O => trig_delay(1732)
    );
\LUT1_gen[1733].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1732),
      O => trig_delay(1733)
    );
\LUT1_gen[1734].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1733),
      O => trig_delay(1734)
    );
\LUT1_gen[1735].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1734),
      O => trig_delay(1735)
    );
\LUT1_gen[1736].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1735),
      O => trig_delay(1736)
    );
\LUT1_gen[1737].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1736),
      O => trig_delay(1737)
    );
\LUT1_gen[1738].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1737),
      O => trig_delay(1738)
    );
\LUT1_gen[1739].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1738),
      O => trig_delay(1739)
    );
\LUT1_gen[173].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(172),
      O => trig_delay(173)
    );
\LUT1_gen[1740].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1739),
      O => trig_delay(1740)
    );
\LUT1_gen[1741].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1740),
      O => trig_delay(1741)
    );
\LUT1_gen[1742].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1741),
      O => trig_delay(1742)
    );
\LUT1_gen[1743].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1742),
      O => trig_delay(1743)
    );
\LUT1_gen[1744].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1743),
      O => trig_delay(1744)
    );
\LUT1_gen[1745].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1744),
      O => trig_delay(1745)
    );
\LUT1_gen[1746].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1745),
      O => trig_delay(1746)
    );
\LUT1_gen[1747].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1746),
      O => trig_delay(1747)
    );
\LUT1_gen[1748].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1747),
      O => trig_delay(1748)
    );
\LUT1_gen[1749].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1748),
      O => trig_delay(1749)
    );
\LUT1_gen[174].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(173),
      O => trig_delay(174)
    );
\LUT1_gen[1750].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1749),
      O => trig_delay(1750)
    );
\LUT1_gen[1751].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1750),
      O => trig_delay(1751)
    );
\LUT1_gen[1752].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1751),
      O => trig_delay(1752)
    );
\LUT1_gen[1753].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1752),
      O => trig_delay(1753)
    );
\LUT1_gen[1754].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1753),
      O => trig_delay(1754)
    );
\LUT1_gen[1755].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1754),
      O => trig_delay(1755)
    );
\LUT1_gen[1756].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1755),
      O => trig_delay(1756)
    );
\LUT1_gen[1757].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1756),
      O => trig_delay(1757)
    );
\LUT1_gen[1758].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1757),
      O => trig_delay(1758)
    );
\LUT1_gen[1759].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1758),
      O => trig_delay(1759)
    );
\LUT1_gen[175].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(174),
      O => trig_delay(175)
    );
\LUT1_gen[1760].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1759),
      O => trig_delay(1760)
    );
\LUT1_gen[1761].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1760),
      O => trig_delay(1761)
    );
\LUT1_gen[1762].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1761),
      O => trig_delay(1762)
    );
\LUT1_gen[1763].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1762),
      O => trig_delay(1763)
    );
\LUT1_gen[1764].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1763),
      O => trig_delay(1764)
    );
\LUT1_gen[1765].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1764),
      O => trig_delay(1765)
    );
\LUT1_gen[1766].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1765),
      O => trig_delay(1766)
    );
\LUT1_gen[1767].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1766),
      O => trig_delay(1767)
    );
\LUT1_gen[1768].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1767),
      O => trig_delay(1768)
    );
\LUT1_gen[1769].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1768),
      O => trig_delay(1769)
    );
\LUT1_gen[176].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(175),
      O => trig_delay(176)
    );
\LUT1_gen[1770].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1769),
      O => trig_delay(1770)
    );
\LUT1_gen[1771].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1770),
      O => trig_delay(1771)
    );
\LUT1_gen[1772].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1771),
      O => trig_delay(1772)
    );
\LUT1_gen[1773].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1772),
      O => trig_delay(1773)
    );
\LUT1_gen[1774].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1773),
      O => trig_delay(1774)
    );
\LUT1_gen[1775].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1774),
      O => trig_delay(1775)
    );
\LUT1_gen[1776].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1775),
      O => trig_delay(1776)
    );
\LUT1_gen[1777].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1776),
      O => trig_delay(1777)
    );
\LUT1_gen[1778].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1777),
      O => trig_delay(1778)
    );
\LUT1_gen[1779].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1778),
      O => trig_delay(1779)
    );
\LUT1_gen[177].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(176),
      O => trig_delay(177)
    );
\LUT1_gen[1780].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1779),
      O => trig_delay(1780)
    );
\LUT1_gen[1781].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1780),
      O => trig_delay(1781)
    );
\LUT1_gen[1782].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1781),
      O => trig_delay(1782)
    );
\LUT1_gen[1783].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1782),
      O => trig_delay(1783)
    );
\LUT1_gen[1784].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1783),
      O => trig_delay(1784)
    );
\LUT1_gen[1785].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1784),
      O => trig_delay(1785)
    );
\LUT1_gen[1786].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1785),
      O => trig_delay(1786)
    );
\LUT1_gen[1787].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1786),
      O => trig_delay(1787)
    );
\LUT1_gen[1788].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1787),
      O => trig_delay(1788)
    );
\LUT1_gen[1789].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1788),
      O => trig_delay(1789)
    );
\LUT1_gen[178].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(177),
      O => trig_delay(178)
    );
\LUT1_gen[1790].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1789),
      O => trig_delay(1790)
    );
\LUT1_gen[1791].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1790),
      O => trig_delay(1791)
    );
\LUT1_gen[1792].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1791),
      O => trig_delay(1792)
    );
\LUT1_gen[1793].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1792),
      O => trig_delay(1793)
    );
\LUT1_gen[1794].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1793),
      O => trig_delay(1794)
    );
\LUT1_gen[1795].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1794),
      O => trig_delay(1795)
    );
\LUT1_gen[1796].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1795),
      O => trig_delay(1796)
    );
\LUT1_gen[1797].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1796),
      O => trig_delay(1797)
    );
\LUT1_gen[1798].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1797),
      O => trig_delay(1798)
    );
\LUT1_gen[1799].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1798),
      O => trig_delay(1799)
    );
\LUT1_gen[179].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(178),
      O => trig_delay(179)
    );
\LUT1_gen[17].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(16),
      O => trig_delay(17)
    );
\LUT1_gen[1800].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1799),
      O => trig_delay(1800)
    );
\LUT1_gen[1801].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1800),
      O => trig_delay(1801)
    );
\LUT1_gen[1802].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1801),
      O => trig_delay(1802)
    );
\LUT1_gen[1803].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1802),
      O => trig_delay(1803)
    );
\LUT1_gen[1804].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1803),
      O => trig_delay(1804)
    );
\LUT1_gen[1805].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1804),
      O => trig_delay(1805)
    );
\LUT1_gen[1806].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1805),
      O => trig_delay(1806)
    );
\LUT1_gen[1807].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1806),
      O => trig_delay(1807)
    );
\LUT1_gen[1808].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1807),
      O => trig_delay(1808)
    );
\LUT1_gen[1809].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1808),
      O => trig_delay(1809)
    );
\LUT1_gen[180].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(179),
      O => trig_delay(180)
    );
\LUT1_gen[1810].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1809),
      O => trig_delay(1810)
    );
\LUT1_gen[1811].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1810),
      O => trig_delay(1811)
    );
\LUT1_gen[1812].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1811),
      O => trig_delay(1812)
    );
\LUT1_gen[1813].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1812),
      O => trig_delay(1813)
    );
\LUT1_gen[1814].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1813),
      O => trig_delay(1814)
    );
\LUT1_gen[1815].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1814),
      O => trig_delay(1815)
    );
\LUT1_gen[1816].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1815),
      O => trig_delay(1816)
    );
\LUT1_gen[1817].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1816),
      O => trig_delay(1817)
    );
\LUT1_gen[1818].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1817),
      O => trig_delay(1818)
    );
\LUT1_gen[1819].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1818),
      O => trig_delay(1819)
    );
\LUT1_gen[181].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(180),
      O => trig_delay(181)
    );
\LUT1_gen[1820].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1819),
      O => trig_delay(1820)
    );
\LUT1_gen[1821].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1820),
      O => trig_delay(1821)
    );
\LUT1_gen[1822].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1821),
      O => trig_delay(1822)
    );
\LUT1_gen[1823].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1822),
      O => trig_delay(1823)
    );
\LUT1_gen[1824].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1823),
      O => trig_delay(1824)
    );
\LUT1_gen[1825].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1824),
      O => trig_delay(1825)
    );
\LUT1_gen[1826].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1825),
      O => trig_delay(1826)
    );
\LUT1_gen[1827].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1826),
      O => trig_delay(1827)
    );
\LUT1_gen[1828].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1827),
      O => trig_delay(1828)
    );
\LUT1_gen[1829].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1828),
      O => trig_delay(1829)
    );
\LUT1_gen[182].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(181),
      O => trig_delay(182)
    );
\LUT1_gen[1830].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1829),
      O => trig_delay(1830)
    );
\LUT1_gen[1831].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1830),
      O => trig_delay(1831)
    );
\LUT1_gen[1832].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1831),
      O => trig_delay(1832)
    );
\LUT1_gen[1833].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1832),
      O => trig_delay(1833)
    );
\LUT1_gen[1834].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1833),
      O => trig_delay(1834)
    );
\LUT1_gen[1835].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1834),
      O => trig_delay(1835)
    );
\LUT1_gen[1836].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1835),
      O => trig_delay(1836)
    );
\LUT1_gen[1837].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1836),
      O => trig_delay(1837)
    );
\LUT1_gen[1838].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1837),
      O => trig_delay(1838)
    );
\LUT1_gen[1839].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1838),
      O => trig_delay(1839)
    );
\LUT1_gen[183].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(182),
      O => trig_delay(183)
    );
\LUT1_gen[1840].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1839),
      O => trig_delay(1840)
    );
\LUT1_gen[1841].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1840),
      O => trig_delay(1841)
    );
\LUT1_gen[1842].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1841),
      O => trig_delay(1842)
    );
\LUT1_gen[1843].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1842),
      O => trig_delay(1843)
    );
\LUT1_gen[1844].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1843),
      O => trig_delay(1844)
    );
\LUT1_gen[1845].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1844),
      O => trig_delay(1845)
    );
\LUT1_gen[1846].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1845),
      O => trig_delay(1846)
    );
\LUT1_gen[1847].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1846),
      O => trig_delay(1847)
    );
\LUT1_gen[1848].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1847),
      O => trig_delay(1848)
    );
\LUT1_gen[1849].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1848),
      O => trig_delay(1849)
    );
\LUT1_gen[184].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(183),
      O => trig_delay(184)
    );
\LUT1_gen[1850].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1849),
      O => trig_delay(1850)
    );
\LUT1_gen[1851].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1850),
      O => trig_delay(1851)
    );
\LUT1_gen[1852].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1851),
      O => trig_delay(1852)
    );
\LUT1_gen[1853].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1852),
      O => trig_delay(1853)
    );
\LUT1_gen[1854].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1853),
      O => trig_delay(1854)
    );
\LUT1_gen[1855].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1854),
      O => trig_delay(1855)
    );
\LUT1_gen[1856].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1855),
      O => trig_delay(1856)
    );
\LUT1_gen[1857].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1856),
      O => trig_delay(1857)
    );
\LUT1_gen[1858].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1857),
      O => trig_delay(1858)
    );
\LUT1_gen[1859].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1858),
      O => trig_delay(1859)
    );
\LUT1_gen[185].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(184),
      O => trig_delay(185)
    );
\LUT1_gen[1860].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1859),
      O => trig_delay(1860)
    );
\LUT1_gen[1861].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1860),
      O => trig_delay(1861)
    );
\LUT1_gen[1862].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1861),
      O => trig_delay(1862)
    );
\LUT1_gen[1863].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1862),
      O => trig_delay(1863)
    );
\LUT1_gen[1864].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1863),
      O => trig_delay(1864)
    );
\LUT1_gen[1865].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1864),
      O => trig_delay(1865)
    );
\LUT1_gen[1866].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1865),
      O => trig_delay(1866)
    );
\LUT1_gen[1867].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1866),
      O => trig_delay(1867)
    );
\LUT1_gen[1868].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1867),
      O => trig_delay(1868)
    );
\LUT1_gen[1869].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1868),
      O => trig_delay(1869)
    );
\LUT1_gen[186].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(185),
      O => trig_delay(186)
    );
\LUT1_gen[1870].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1869),
      O => trig_delay(1870)
    );
\LUT1_gen[1871].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1870),
      O => trig_delay(1871)
    );
\LUT1_gen[1872].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1871),
      O => trig_delay(1872)
    );
\LUT1_gen[1873].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1872),
      O => trig_delay(1873)
    );
\LUT1_gen[1874].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1873),
      O => trig_delay(1874)
    );
\LUT1_gen[1875].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1874),
      O => trig_delay(1875)
    );
\LUT1_gen[1876].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1875),
      O => trig_delay(1876)
    );
\LUT1_gen[1877].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1876),
      O => trig_delay(1877)
    );
\LUT1_gen[1878].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1877),
      O => trig_delay(1878)
    );
\LUT1_gen[1879].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1878),
      O => trig_delay(1879)
    );
\LUT1_gen[187].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(186),
      O => trig_delay(187)
    );
\LUT1_gen[1880].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1879),
      O => trig_delay(1880)
    );
\LUT1_gen[1881].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1880),
      O => trig_delay(1881)
    );
\LUT1_gen[1882].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1881),
      O => trig_delay(1882)
    );
\LUT1_gen[1883].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1882),
      O => trig_delay(1883)
    );
\LUT1_gen[1884].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1883),
      O => trig_delay(1884)
    );
\LUT1_gen[1885].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1884),
      O => trig_delay(1885)
    );
\LUT1_gen[1886].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1885),
      O => trig_delay(1886)
    );
\LUT1_gen[1887].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1886),
      O => trig_delay(1887)
    );
\LUT1_gen[1888].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1887),
      O => trig_delay(1888)
    );
\LUT1_gen[1889].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1888),
      O => trig_delay(1889)
    );
\LUT1_gen[188].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(187),
      O => trig_delay(188)
    );
\LUT1_gen[1890].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1889),
      O => trig_delay(1890)
    );
\LUT1_gen[1891].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1890),
      O => trig_delay(1891)
    );
\LUT1_gen[1892].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1891),
      O => trig_delay(1892)
    );
\LUT1_gen[1893].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1892),
      O => trig_delay(1893)
    );
\LUT1_gen[1894].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1893),
      O => trig_delay(1894)
    );
\LUT1_gen[1895].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1894),
      O => trig_delay(1895)
    );
\LUT1_gen[1896].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1895),
      O => trig_delay(1896)
    );
\LUT1_gen[1897].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1896),
      O => trig_delay(1897)
    );
\LUT1_gen[1898].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1897),
      O => trig_delay(1898)
    );
\LUT1_gen[1899].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1898),
      O => trig_delay(1899)
    );
\LUT1_gen[189].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(188),
      O => trig_delay(189)
    );
\LUT1_gen[18].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(17),
      O => trig_delay(18)
    );
\LUT1_gen[1900].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1899),
      O => trig_delay(1900)
    );
\LUT1_gen[1901].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1900),
      O => trig_delay(1901)
    );
\LUT1_gen[1902].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1901),
      O => trig_delay(1902)
    );
\LUT1_gen[1903].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1902),
      O => trig_delay(1903)
    );
\LUT1_gen[1904].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1903),
      O => trig_delay(1904)
    );
\LUT1_gen[1905].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1904),
      O => trig_delay(1905)
    );
\LUT1_gen[1906].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1905),
      O => trig_delay(1906)
    );
\LUT1_gen[1907].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1906),
      O => trig_delay(1907)
    );
\LUT1_gen[1908].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1907),
      O => trig_delay(1908)
    );
\LUT1_gen[1909].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1908),
      O => trig_delay(1909)
    );
\LUT1_gen[190].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(189),
      O => trig_delay(190)
    );
\LUT1_gen[1910].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1909),
      O => trig_delay(1910)
    );
\LUT1_gen[1911].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1910),
      O => trig_delay(1911)
    );
\LUT1_gen[1912].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1911),
      O => trig_delay(1912)
    );
\LUT1_gen[1913].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1912),
      O => trig_delay(1913)
    );
\LUT1_gen[1914].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1913),
      O => trig_delay(1914)
    );
\LUT1_gen[1915].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1914),
      O => trig_delay(1915)
    );
\LUT1_gen[1916].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1915),
      O => trig_delay(1916)
    );
\LUT1_gen[1917].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1916),
      O => trig_delay(1917)
    );
\LUT1_gen[1918].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1917),
      O => trig_delay(1918)
    );
\LUT1_gen[1919].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1918),
      O => trig_delay(1919)
    );
\LUT1_gen[191].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(190),
      O => trig_delay(191)
    );
\LUT1_gen[1920].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1919),
      O => trig_delay(1920)
    );
\LUT1_gen[1921].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1920),
      O => trig_delay(1921)
    );
\LUT1_gen[1922].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1921),
      O => trig_delay(1922)
    );
\LUT1_gen[1923].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1922),
      O => trig_delay(1923)
    );
\LUT1_gen[1924].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1923),
      O => trig_delay(1924)
    );
\LUT1_gen[1925].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1924),
      O => trig_delay(1925)
    );
\LUT1_gen[1926].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1925),
      O => trig_delay(1926)
    );
\LUT1_gen[1927].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1926),
      O => trig_delay(1927)
    );
\LUT1_gen[1928].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1927),
      O => trig_delay(1928)
    );
\LUT1_gen[1929].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1928),
      O => trig_delay(1929)
    );
\LUT1_gen[192].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(191),
      O => trig_delay(192)
    );
\LUT1_gen[1930].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1929),
      O => trig_delay(1930)
    );
\LUT1_gen[1931].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1930),
      O => trig_delay(1931)
    );
\LUT1_gen[1932].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1931),
      O => trig_delay(1932)
    );
\LUT1_gen[1933].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1932),
      O => trig_delay(1933)
    );
\LUT1_gen[1934].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1933),
      O => trig_delay(1934)
    );
\LUT1_gen[1935].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1934),
      O => trig_delay(1935)
    );
\LUT1_gen[1936].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1935),
      O => trig_delay(1936)
    );
\LUT1_gen[1937].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1936),
      O => trig_delay(1937)
    );
\LUT1_gen[1938].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1937),
      O => trig_delay(1938)
    );
\LUT1_gen[1939].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1938),
      O => trig_delay(1939)
    );
\LUT1_gen[193].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(192),
      O => trig_delay(193)
    );
\LUT1_gen[1940].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1939),
      O => trig_delay(1940)
    );
\LUT1_gen[1941].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1940),
      O => trig_delay(1941)
    );
\LUT1_gen[1942].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1941),
      O => trig_delay(1942)
    );
\LUT1_gen[1943].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1942),
      O => trig_delay(1943)
    );
\LUT1_gen[1944].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1943),
      O => trig_delay(1944)
    );
\LUT1_gen[1945].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1944),
      O => trig_delay(1945)
    );
\LUT1_gen[1946].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1945),
      O => trig_delay(1946)
    );
\LUT1_gen[1947].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1946),
      O => trig_delay(1947)
    );
\LUT1_gen[1948].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1947),
      O => trig_delay(1948)
    );
\LUT1_gen[1949].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1948),
      O => trig_delay(1949)
    );
\LUT1_gen[194].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(193),
      O => trig_delay(194)
    );
\LUT1_gen[1950].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1949),
      O => trig_delay(1950)
    );
\LUT1_gen[1951].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1950),
      O => trig_delay(1951)
    );
\LUT1_gen[1952].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1951),
      O => trig_delay(1952)
    );
\LUT1_gen[1953].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1952),
      O => trig_delay(1953)
    );
\LUT1_gen[1954].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1953),
      O => trig_delay(1954)
    );
\LUT1_gen[1955].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1954),
      O => trig_delay(1955)
    );
\LUT1_gen[1956].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1955),
      O => trig_delay(1956)
    );
\LUT1_gen[1957].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1956),
      O => trig_delay(1957)
    );
\LUT1_gen[1958].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1957),
      O => trig_delay(1958)
    );
\LUT1_gen[1959].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1958),
      O => trig_delay(1959)
    );
\LUT1_gen[195].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(194),
      O => trig_delay(195)
    );
\LUT1_gen[1960].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1959),
      O => trig_delay(1960)
    );
\LUT1_gen[1961].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1960),
      O => trig_delay(1961)
    );
\LUT1_gen[1962].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1961),
      O => trig_delay(1962)
    );
\LUT1_gen[1963].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1962),
      O => trig_delay(1963)
    );
\LUT1_gen[1964].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1963),
      O => trig_delay(1964)
    );
\LUT1_gen[1965].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1964),
      O => trig_delay(1965)
    );
\LUT1_gen[1966].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1965),
      O => trig_delay(1966)
    );
\LUT1_gen[1967].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1966),
      O => trig_delay(1967)
    );
\LUT1_gen[1968].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1967),
      O => trig_delay(1968)
    );
\LUT1_gen[1969].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1968),
      O => trig_delay(1969)
    );
\LUT1_gen[196].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(195),
      O => trig_delay(196)
    );
\LUT1_gen[1970].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1969),
      O => trig_delay(1970)
    );
\LUT1_gen[1971].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1970),
      O => trig_delay(1971)
    );
\LUT1_gen[1972].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1971),
      O => trig_delay(1972)
    );
\LUT1_gen[1973].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1972),
      O => trig_delay(1973)
    );
\LUT1_gen[1974].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1973),
      O => trig_delay(1974)
    );
\LUT1_gen[1975].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1974),
      O => trig_delay(1975)
    );
\LUT1_gen[1976].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1975),
      O => trig_delay(1976)
    );
\LUT1_gen[1977].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1976),
      O => trig_delay(1977)
    );
\LUT1_gen[1978].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1977),
      O => trig_delay(1978)
    );
\LUT1_gen[1979].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1978),
      O => trig_delay(1979)
    );
\LUT1_gen[197].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(196),
      O => trig_delay(197)
    );
\LUT1_gen[1980].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1979),
      O => trig_delay(1980)
    );
\LUT1_gen[1981].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1980),
      O => trig_delay(1981)
    );
\LUT1_gen[1982].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1981),
      O => trig_delay(1982)
    );
\LUT1_gen[1983].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1982),
      O => trig_delay(1983)
    );
\LUT1_gen[1984].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1983),
      O => trig_delay(1984)
    );
\LUT1_gen[1985].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1984),
      O => trig_delay(1985)
    );
\LUT1_gen[1986].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1985),
      O => trig_delay(1986)
    );
\LUT1_gen[1987].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1986),
      O => trig_delay(1987)
    );
\LUT1_gen[1988].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1987),
      O => trig_delay(1988)
    );
\LUT1_gen[1989].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1988),
      O => trig_delay(1989)
    );
\LUT1_gen[198].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(197),
      O => trig_delay(198)
    );
\LUT1_gen[1990].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1989),
      O => trig_delay(1990)
    );
\LUT1_gen[1991].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1990),
      O => trig_delay(1991)
    );
\LUT1_gen[1992].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1991),
      O => trig_delay(1992)
    );
\LUT1_gen[1993].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1992),
      O => trig_delay(1993)
    );
\LUT1_gen[1994].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1993),
      O => trig_delay(1994)
    );
\LUT1_gen[1995].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1994),
      O => trig_delay(1995)
    );
\LUT1_gen[1996].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1995),
      O => trig_delay(1996)
    );
\LUT1_gen[1997].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1996),
      O => trig_delay(1997)
    );
\LUT1_gen[1998].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1997),
      O => trig_delay(1998)
    );
\LUT1_gen[1999].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1998),
      O => trig_delay(1999)
    );
\LUT1_gen[199].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(198),
      O => trig_delay(199)
    );
\LUT1_gen[19].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(18),
      O => trig_delay(19)
    );
\LUT1_gen[1].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(0),
      O => trig_delay(1)
    );
\LUT1_gen[2000].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1999),
      O => trig_delay(2000)
    );
\LUT1_gen[2001].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2000),
      O => trig_delay(2001)
    );
\LUT1_gen[2002].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2001),
      O => trig_delay(2002)
    );
\LUT1_gen[2003].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2002),
      O => trig_delay(2003)
    );
\LUT1_gen[2004].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2003),
      O => trig_delay(2004)
    );
\LUT1_gen[2005].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2004),
      O => trig_delay(2005)
    );
\LUT1_gen[2006].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2005),
      O => trig_delay(2006)
    );
\LUT1_gen[2007].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2006),
      O => trig_delay(2007)
    );
\LUT1_gen[2008].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2007),
      O => trig_delay(2008)
    );
\LUT1_gen[2009].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2008),
      O => trig_delay(2009)
    );
\LUT1_gen[200].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(199),
      O => trig_delay(200)
    );
\LUT1_gen[2010].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2009),
      O => trig_delay(2010)
    );
\LUT1_gen[2011].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2010),
      O => trig_delay(2011)
    );
\LUT1_gen[2012].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2011),
      O => trig_delay(2012)
    );
\LUT1_gen[2013].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2012),
      O => trig_delay(2013)
    );
\LUT1_gen[2014].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2013),
      O => trig_delay(2014)
    );
\LUT1_gen[2015].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2014),
      O => trig_delay(2015)
    );
\LUT1_gen[2016].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2015),
      O => trig_delay(2016)
    );
\LUT1_gen[2017].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2016),
      O => trig_delay(2017)
    );
\LUT1_gen[2018].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2017),
      O => trig_delay(2018)
    );
\LUT1_gen[2019].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2018),
      O => trig_delay(2019)
    );
\LUT1_gen[201].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(200),
      O => trig_delay(201)
    );
\LUT1_gen[2020].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2019),
      O => trig_delay(2020)
    );
\LUT1_gen[2021].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2020),
      O => trig_delay(2021)
    );
\LUT1_gen[2022].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2021),
      O => trig_delay(2022)
    );
\LUT1_gen[2023].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2022),
      O => trig_delay(2023)
    );
\LUT1_gen[2024].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2023),
      O => trig_delay(2024)
    );
\LUT1_gen[2025].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2024),
      O => trig_delay(2025)
    );
\LUT1_gen[2026].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2025),
      O => trig_delay(2026)
    );
\LUT1_gen[2027].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2026),
      O => trig_delay(2027)
    );
\LUT1_gen[2028].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2027),
      O => trig_delay(2028)
    );
\LUT1_gen[2029].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2028),
      O => trig_delay(2029)
    );
\LUT1_gen[202].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(201),
      O => trig_delay(202)
    );
\LUT1_gen[2030].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2029),
      O => trig_delay(2030)
    );
\LUT1_gen[2031].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2030),
      O => trig_delay(2031)
    );
\LUT1_gen[2032].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2031),
      O => trig_delay(2032)
    );
\LUT1_gen[2033].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2032),
      O => trig_delay(2033)
    );
\LUT1_gen[2034].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2033),
      O => trig_delay(2034)
    );
\LUT1_gen[2035].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2034),
      O => trig_delay(2035)
    );
\LUT1_gen[2036].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2035),
      O => trig_delay(2036)
    );
\LUT1_gen[2037].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2036),
      O => trig_delay(2037)
    );
\LUT1_gen[2038].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2037),
      O => trig_delay(2038)
    );
\LUT1_gen[2039].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2038),
      O => trig_delay(2039)
    );
\LUT1_gen[203].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(202),
      O => trig_delay(203)
    );
\LUT1_gen[2040].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2039),
      O => trig_delay(2040)
    );
\LUT1_gen[2041].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2040),
      O => trig_delay(2041)
    );
\LUT1_gen[2042].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2041),
      O => trig_delay(2042)
    );
\LUT1_gen[2043].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2042),
      O => trig_delay(2043)
    );
\LUT1_gen[2044].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2043),
      O => trig_delay(2044)
    );
\LUT1_gen[2045].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2044),
      O => trig_delay(2045)
    );
\LUT1_gen[2046].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2045),
      O => trig_delay(2046)
    );
\LUT1_gen[2047].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2046),
      O => trig_delay(2047)
    );
\LUT1_gen[204].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(203),
      O => trig_delay(204)
    );
\LUT1_gen[205].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(204),
      O => trig_delay(205)
    );
\LUT1_gen[206].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(205),
      O => trig_delay(206)
    );
\LUT1_gen[207].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(206),
      O => trig_delay(207)
    );
\LUT1_gen[208].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(207),
      O => trig_delay(208)
    );
\LUT1_gen[209].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(208),
      O => trig_delay(209)
    );
\LUT1_gen[20].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(19),
      O => trig_delay(20)
    );
\LUT1_gen[210].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(209),
      O => trig_delay(210)
    );
\LUT1_gen[211].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(210),
      O => trig_delay(211)
    );
\LUT1_gen[212].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(211),
      O => trig_delay(212)
    );
\LUT1_gen[213].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(212),
      O => trig_delay(213)
    );
\LUT1_gen[214].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(213),
      O => trig_delay(214)
    );
\LUT1_gen[215].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(214),
      O => trig_delay(215)
    );
\LUT1_gen[216].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(215),
      O => trig_delay(216)
    );
\LUT1_gen[217].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(216),
      O => trig_delay(217)
    );
\LUT1_gen[218].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(217),
      O => trig_delay(218)
    );
\LUT1_gen[219].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(218),
      O => trig_delay(219)
    );
\LUT1_gen[21].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(20),
      O => trig_delay(21)
    );
\LUT1_gen[220].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(219),
      O => trig_delay(220)
    );
\LUT1_gen[221].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(220),
      O => trig_delay(221)
    );
\LUT1_gen[222].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(221),
      O => trig_delay(222)
    );
\LUT1_gen[223].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(222),
      O => trig_delay(223)
    );
\LUT1_gen[224].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(223),
      O => trig_delay(224)
    );
\LUT1_gen[225].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(224),
      O => trig_delay(225)
    );
\LUT1_gen[226].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(225),
      O => trig_delay(226)
    );
\LUT1_gen[227].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(226),
      O => trig_delay(227)
    );
\LUT1_gen[228].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(227),
      O => trig_delay(228)
    );
\LUT1_gen[229].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(228),
      O => trig_delay(229)
    );
\LUT1_gen[22].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(21),
      O => trig_delay(22)
    );
\LUT1_gen[230].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(229),
      O => trig_delay(230)
    );
\LUT1_gen[231].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(230),
      O => trig_delay(231)
    );
\LUT1_gen[232].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(231),
      O => trig_delay(232)
    );
\LUT1_gen[233].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(232),
      O => trig_delay(233)
    );
\LUT1_gen[234].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(233),
      O => trig_delay(234)
    );
\LUT1_gen[235].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(234),
      O => trig_delay(235)
    );
\LUT1_gen[236].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(235),
      O => trig_delay(236)
    );
\LUT1_gen[237].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(236),
      O => trig_delay(237)
    );
\LUT1_gen[238].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(237),
      O => trig_delay(238)
    );
\LUT1_gen[239].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(238),
      O => trig_delay(239)
    );
\LUT1_gen[23].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(22),
      O => trig_delay(23)
    );
\LUT1_gen[240].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(239),
      O => trig_delay(240)
    );
\LUT1_gen[241].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(240),
      O => trig_delay(241)
    );
\LUT1_gen[242].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(241),
      O => trig_delay(242)
    );
\LUT1_gen[243].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(242),
      O => trig_delay(243)
    );
\LUT1_gen[244].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(243),
      O => trig_delay(244)
    );
\LUT1_gen[245].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(244),
      O => trig_delay(245)
    );
\LUT1_gen[246].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(245),
      O => trig_delay(246)
    );
\LUT1_gen[247].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(246),
      O => trig_delay(247)
    );
\LUT1_gen[248].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(247),
      O => trig_delay(248)
    );
\LUT1_gen[249].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(248),
      O => trig_delay(249)
    );
\LUT1_gen[24].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(23),
      O => trig_delay(24)
    );
\LUT1_gen[250].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(249),
      O => trig_delay(250)
    );
\LUT1_gen[251].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(250),
      O => trig_delay(251)
    );
\LUT1_gen[252].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(251),
      O => trig_delay(252)
    );
\LUT1_gen[253].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(252),
      O => trig_delay(253)
    );
\LUT1_gen[254].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(253),
      O => trig_delay(254)
    );
\LUT1_gen[255].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(254),
      O => trig_delay(255)
    );
\LUT1_gen[256].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(255),
      O => trig_delay(256)
    );
\LUT1_gen[257].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(256),
      O => trig_delay(257)
    );
\LUT1_gen[258].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(257),
      O => trig_delay(258)
    );
\LUT1_gen[259].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(258),
      O => trig_delay(259)
    );
\LUT1_gen[25].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(24),
      O => trig_delay(25)
    );
\LUT1_gen[260].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(259),
      O => trig_delay(260)
    );
\LUT1_gen[261].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(260),
      O => trig_delay(261)
    );
\LUT1_gen[262].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(261),
      O => trig_delay(262)
    );
\LUT1_gen[263].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(262),
      O => trig_delay(263)
    );
\LUT1_gen[264].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(263),
      O => trig_delay(264)
    );
\LUT1_gen[265].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(264),
      O => trig_delay(265)
    );
\LUT1_gen[266].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(265),
      O => trig_delay(266)
    );
\LUT1_gen[267].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(266),
      O => trig_delay(267)
    );
\LUT1_gen[268].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(267),
      O => trig_delay(268)
    );
\LUT1_gen[269].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(268),
      O => trig_delay(269)
    );
\LUT1_gen[26].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(25),
      O => trig_delay(26)
    );
\LUT1_gen[270].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(269),
      O => trig_delay(270)
    );
\LUT1_gen[271].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(270),
      O => trig_delay(271)
    );
\LUT1_gen[272].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(271),
      O => trig_delay(272)
    );
\LUT1_gen[273].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(272),
      O => trig_delay(273)
    );
\LUT1_gen[274].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(273),
      O => trig_delay(274)
    );
\LUT1_gen[275].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(274),
      O => trig_delay(275)
    );
\LUT1_gen[276].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(275),
      O => trig_delay(276)
    );
\LUT1_gen[277].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(276),
      O => trig_delay(277)
    );
\LUT1_gen[278].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(277),
      O => trig_delay(278)
    );
\LUT1_gen[279].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(278),
      O => trig_delay(279)
    );
\LUT1_gen[27].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(26),
      O => trig_delay(27)
    );
\LUT1_gen[280].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(279),
      O => trig_delay(280)
    );
\LUT1_gen[281].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(280),
      O => trig_delay(281)
    );
\LUT1_gen[282].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(281),
      O => trig_delay(282)
    );
\LUT1_gen[283].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(282),
      O => trig_delay(283)
    );
\LUT1_gen[284].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(283),
      O => trig_delay(284)
    );
\LUT1_gen[285].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(284),
      O => trig_delay(285)
    );
\LUT1_gen[286].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(285),
      O => trig_delay(286)
    );
\LUT1_gen[287].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(286),
      O => trig_delay(287)
    );
\LUT1_gen[288].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(287),
      O => trig_delay(288)
    );
\LUT1_gen[289].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(288),
      O => trig_delay(289)
    );
\LUT1_gen[28].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(27),
      O => trig_delay(28)
    );
\LUT1_gen[290].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(289),
      O => trig_delay(290)
    );
\LUT1_gen[291].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(290),
      O => trig_delay(291)
    );
\LUT1_gen[292].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(291),
      O => trig_delay(292)
    );
\LUT1_gen[293].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(292),
      O => trig_delay(293)
    );
\LUT1_gen[294].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(293),
      O => trig_delay(294)
    );
\LUT1_gen[295].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(294),
      O => trig_delay(295)
    );
\LUT1_gen[296].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(295),
      O => trig_delay(296)
    );
\LUT1_gen[297].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(296),
      O => trig_delay(297)
    );
\LUT1_gen[298].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(297),
      O => trig_delay(298)
    );
\LUT1_gen[299].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(298),
      O => trig_delay(299)
    );
\LUT1_gen[29].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(28),
      O => trig_delay(29)
    );
\LUT1_gen[2].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(1),
      O => trig_delay(2)
    );
\LUT1_gen[300].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(299),
      O => trig_delay(300)
    );
\LUT1_gen[301].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(300),
      O => trig_delay(301)
    );
\LUT1_gen[302].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(301),
      O => trig_delay(302)
    );
\LUT1_gen[303].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(302),
      O => trig_delay(303)
    );
\LUT1_gen[304].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(303),
      O => trig_delay(304)
    );
\LUT1_gen[305].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(304),
      O => trig_delay(305)
    );
\LUT1_gen[306].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(305),
      O => trig_delay(306)
    );
\LUT1_gen[307].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(306),
      O => trig_delay(307)
    );
\LUT1_gen[308].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(307),
      O => trig_delay(308)
    );
\LUT1_gen[309].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(308),
      O => trig_delay(309)
    );
\LUT1_gen[30].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(29),
      O => trig_delay(30)
    );
\LUT1_gen[310].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(309),
      O => trig_delay(310)
    );
\LUT1_gen[311].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(310),
      O => trig_delay(311)
    );
\LUT1_gen[312].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(311),
      O => trig_delay(312)
    );
\LUT1_gen[313].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(312),
      O => trig_delay(313)
    );
\LUT1_gen[314].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(313),
      O => trig_delay(314)
    );
\LUT1_gen[315].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(314),
      O => trig_delay(315)
    );
\LUT1_gen[316].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(315),
      O => trig_delay(316)
    );
\LUT1_gen[317].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(316),
      O => trig_delay(317)
    );
\LUT1_gen[318].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(317),
      O => trig_delay(318)
    );
\LUT1_gen[319].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(318),
      O => trig_delay(319)
    );
\LUT1_gen[31].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(30),
      O => trig_delay(31)
    );
\LUT1_gen[320].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(319),
      O => trig_delay(320)
    );
\LUT1_gen[321].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(320),
      O => trig_delay(321)
    );
\LUT1_gen[322].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(321),
      O => trig_delay(322)
    );
\LUT1_gen[323].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(322),
      O => trig_delay(323)
    );
\LUT1_gen[324].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(323),
      O => trig_delay(324)
    );
\LUT1_gen[325].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(324),
      O => trig_delay(325)
    );
\LUT1_gen[326].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(325),
      O => trig_delay(326)
    );
\LUT1_gen[327].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(326),
      O => trig_delay(327)
    );
\LUT1_gen[328].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(327),
      O => trig_delay(328)
    );
\LUT1_gen[329].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(328),
      O => trig_delay(329)
    );
\LUT1_gen[32].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(31),
      O => trig_delay(32)
    );
\LUT1_gen[330].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(329),
      O => trig_delay(330)
    );
\LUT1_gen[331].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(330),
      O => trig_delay(331)
    );
\LUT1_gen[332].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(331),
      O => trig_delay(332)
    );
\LUT1_gen[333].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(332),
      O => trig_delay(333)
    );
\LUT1_gen[334].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(333),
      O => trig_delay(334)
    );
\LUT1_gen[335].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(334),
      O => trig_delay(335)
    );
\LUT1_gen[336].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(335),
      O => trig_delay(336)
    );
\LUT1_gen[337].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(336),
      O => trig_delay(337)
    );
\LUT1_gen[338].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(337),
      O => trig_delay(338)
    );
\LUT1_gen[339].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(338),
      O => trig_delay(339)
    );
\LUT1_gen[33].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(32),
      O => trig_delay(33)
    );
\LUT1_gen[340].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(339),
      O => trig_delay(340)
    );
\LUT1_gen[341].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(340),
      O => trig_delay(341)
    );
\LUT1_gen[342].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(341),
      O => trig_delay(342)
    );
\LUT1_gen[343].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(342),
      O => trig_delay(343)
    );
\LUT1_gen[344].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(343),
      O => trig_delay(344)
    );
\LUT1_gen[345].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(344),
      O => trig_delay(345)
    );
\LUT1_gen[346].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(345),
      O => trig_delay(346)
    );
\LUT1_gen[347].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(346),
      O => trig_delay(347)
    );
\LUT1_gen[348].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(347),
      O => trig_delay(348)
    );
\LUT1_gen[349].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(348),
      O => trig_delay(349)
    );
\LUT1_gen[34].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(33),
      O => trig_delay(34)
    );
\LUT1_gen[350].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(349),
      O => trig_delay(350)
    );
\LUT1_gen[351].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(350),
      O => trig_delay(351)
    );
\LUT1_gen[352].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(351),
      O => trig_delay(352)
    );
\LUT1_gen[353].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(352),
      O => trig_delay(353)
    );
\LUT1_gen[354].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(353),
      O => trig_delay(354)
    );
\LUT1_gen[355].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(354),
      O => trig_delay(355)
    );
\LUT1_gen[356].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(355),
      O => trig_delay(356)
    );
\LUT1_gen[357].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(356),
      O => trig_delay(357)
    );
\LUT1_gen[358].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(357),
      O => trig_delay(358)
    );
\LUT1_gen[359].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(358),
      O => trig_delay(359)
    );
\LUT1_gen[35].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(34),
      O => trig_delay(35)
    );
\LUT1_gen[360].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(359),
      O => trig_delay(360)
    );
\LUT1_gen[361].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(360),
      O => trig_delay(361)
    );
\LUT1_gen[362].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(361),
      O => trig_delay(362)
    );
\LUT1_gen[363].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(362),
      O => trig_delay(363)
    );
\LUT1_gen[364].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(363),
      O => trig_delay(364)
    );
\LUT1_gen[365].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(364),
      O => trig_delay(365)
    );
\LUT1_gen[366].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(365),
      O => trig_delay(366)
    );
\LUT1_gen[367].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(366),
      O => trig_delay(367)
    );
\LUT1_gen[368].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(367),
      O => trig_delay(368)
    );
\LUT1_gen[369].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(368),
      O => trig_delay(369)
    );
\LUT1_gen[36].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(35),
      O => trig_delay(36)
    );
\LUT1_gen[370].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(369),
      O => trig_delay(370)
    );
\LUT1_gen[371].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(370),
      O => trig_delay(371)
    );
\LUT1_gen[372].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(371),
      O => trig_delay(372)
    );
\LUT1_gen[373].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(372),
      O => trig_delay(373)
    );
\LUT1_gen[374].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(373),
      O => trig_delay(374)
    );
\LUT1_gen[375].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(374),
      O => trig_delay(375)
    );
\LUT1_gen[376].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(375),
      O => trig_delay(376)
    );
\LUT1_gen[377].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(376),
      O => trig_delay(377)
    );
\LUT1_gen[378].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(377),
      O => trig_delay(378)
    );
\LUT1_gen[379].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(378),
      O => trig_delay(379)
    );
\LUT1_gen[37].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(36),
      O => trig_delay(37)
    );
\LUT1_gen[380].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(379),
      O => trig_delay(380)
    );
\LUT1_gen[381].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(380),
      O => trig_delay(381)
    );
\LUT1_gen[382].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(381),
      O => trig_delay(382)
    );
\LUT1_gen[383].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(382),
      O => trig_delay(383)
    );
\LUT1_gen[384].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(383),
      O => trig_delay(384)
    );
\LUT1_gen[385].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(384),
      O => trig_delay(385)
    );
\LUT1_gen[386].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(385),
      O => trig_delay(386)
    );
\LUT1_gen[387].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(386),
      O => trig_delay(387)
    );
\LUT1_gen[388].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(387),
      O => trig_delay(388)
    );
\LUT1_gen[389].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(388),
      O => trig_delay(389)
    );
\LUT1_gen[38].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(37),
      O => trig_delay(38)
    );
\LUT1_gen[390].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(389),
      O => trig_delay(390)
    );
\LUT1_gen[391].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(390),
      O => trig_delay(391)
    );
\LUT1_gen[392].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(391),
      O => trig_delay(392)
    );
\LUT1_gen[393].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(392),
      O => trig_delay(393)
    );
\LUT1_gen[394].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(393),
      O => trig_delay(394)
    );
\LUT1_gen[395].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(394),
      O => trig_delay(395)
    );
\LUT1_gen[396].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(395),
      O => trig_delay(396)
    );
\LUT1_gen[397].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(396),
      O => trig_delay(397)
    );
\LUT1_gen[398].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(397),
      O => trig_delay(398)
    );
\LUT1_gen[399].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(398),
      O => trig_delay(399)
    );
\LUT1_gen[39].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(38),
      O => trig_delay(39)
    );
\LUT1_gen[3].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(2),
      O => trig_delay(3)
    );
\LUT1_gen[400].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(399),
      O => trig_delay(400)
    );
\LUT1_gen[401].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(400),
      O => trig_delay(401)
    );
\LUT1_gen[402].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(401),
      O => trig_delay(402)
    );
\LUT1_gen[403].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(402),
      O => trig_delay(403)
    );
\LUT1_gen[404].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(403),
      O => trig_delay(404)
    );
\LUT1_gen[405].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(404),
      O => trig_delay(405)
    );
\LUT1_gen[406].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(405),
      O => trig_delay(406)
    );
\LUT1_gen[407].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(406),
      O => trig_delay(407)
    );
\LUT1_gen[408].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(407),
      O => trig_delay(408)
    );
\LUT1_gen[409].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(408),
      O => trig_delay(409)
    );
\LUT1_gen[40].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(39),
      O => trig_delay(40)
    );
\LUT1_gen[410].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(409),
      O => trig_delay(410)
    );
\LUT1_gen[411].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(410),
      O => trig_delay(411)
    );
\LUT1_gen[412].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(411),
      O => trig_delay(412)
    );
\LUT1_gen[413].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(412),
      O => trig_delay(413)
    );
\LUT1_gen[414].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(413),
      O => trig_delay(414)
    );
\LUT1_gen[415].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(414),
      O => trig_delay(415)
    );
\LUT1_gen[416].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(415),
      O => trig_delay(416)
    );
\LUT1_gen[417].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(416),
      O => trig_delay(417)
    );
\LUT1_gen[418].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(417),
      O => trig_delay(418)
    );
\LUT1_gen[419].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(418),
      O => trig_delay(419)
    );
\LUT1_gen[41].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(40),
      O => trig_delay(41)
    );
\LUT1_gen[420].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(419),
      O => trig_delay(420)
    );
\LUT1_gen[421].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(420),
      O => trig_delay(421)
    );
\LUT1_gen[422].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(421),
      O => trig_delay(422)
    );
\LUT1_gen[423].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(422),
      O => trig_delay(423)
    );
\LUT1_gen[424].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(423),
      O => trig_delay(424)
    );
\LUT1_gen[425].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(424),
      O => trig_delay(425)
    );
\LUT1_gen[426].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(425),
      O => trig_delay(426)
    );
\LUT1_gen[427].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(426),
      O => trig_delay(427)
    );
\LUT1_gen[428].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(427),
      O => trig_delay(428)
    );
\LUT1_gen[429].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(428),
      O => trig_delay(429)
    );
\LUT1_gen[42].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(41),
      O => trig_delay(42)
    );
\LUT1_gen[430].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(429),
      O => trig_delay(430)
    );
\LUT1_gen[431].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(430),
      O => trig_delay(431)
    );
\LUT1_gen[432].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(431),
      O => trig_delay(432)
    );
\LUT1_gen[433].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(432),
      O => trig_delay(433)
    );
\LUT1_gen[434].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(433),
      O => trig_delay(434)
    );
\LUT1_gen[435].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(434),
      O => trig_delay(435)
    );
\LUT1_gen[436].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(435),
      O => trig_delay(436)
    );
\LUT1_gen[437].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(436),
      O => trig_delay(437)
    );
\LUT1_gen[438].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(437),
      O => trig_delay(438)
    );
\LUT1_gen[439].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(438),
      O => trig_delay(439)
    );
\LUT1_gen[43].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(42),
      O => trig_delay(43)
    );
\LUT1_gen[440].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(439),
      O => trig_delay(440)
    );
\LUT1_gen[441].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(440),
      O => trig_delay(441)
    );
\LUT1_gen[442].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(441),
      O => trig_delay(442)
    );
\LUT1_gen[443].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(442),
      O => trig_delay(443)
    );
\LUT1_gen[444].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(443),
      O => trig_delay(444)
    );
\LUT1_gen[445].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(444),
      O => trig_delay(445)
    );
\LUT1_gen[446].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(445),
      O => trig_delay(446)
    );
\LUT1_gen[447].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(446),
      O => trig_delay(447)
    );
\LUT1_gen[448].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(447),
      O => trig_delay(448)
    );
\LUT1_gen[449].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(448),
      O => trig_delay(449)
    );
\LUT1_gen[44].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(43),
      O => trig_delay(44)
    );
\LUT1_gen[450].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(449),
      O => trig_delay(450)
    );
\LUT1_gen[451].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(450),
      O => trig_delay(451)
    );
\LUT1_gen[452].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(451),
      O => trig_delay(452)
    );
\LUT1_gen[453].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(452),
      O => trig_delay(453)
    );
\LUT1_gen[454].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(453),
      O => trig_delay(454)
    );
\LUT1_gen[455].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(454),
      O => trig_delay(455)
    );
\LUT1_gen[456].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(455),
      O => trig_delay(456)
    );
\LUT1_gen[457].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(456),
      O => trig_delay(457)
    );
\LUT1_gen[458].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(457),
      O => trig_delay(458)
    );
\LUT1_gen[459].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(458),
      O => trig_delay(459)
    );
\LUT1_gen[45].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(44),
      O => trig_delay(45)
    );
\LUT1_gen[460].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(459),
      O => trig_delay(460)
    );
\LUT1_gen[461].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(460),
      O => trig_delay(461)
    );
\LUT1_gen[462].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(461),
      O => trig_delay(462)
    );
\LUT1_gen[463].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(462),
      O => trig_delay(463)
    );
\LUT1_gen[464].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(463),
      O => trig_delay(464)
    );
\LUT1_gen[465].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(464),
      O => trig_delay(465)
    );
\LUT1_gen[466].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(465),
      O => trig_delay(466)
    );
\LUT1_gen[467].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(466),
      O => trig_delay(467)
    );
\LUT1_gen[468].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(467),
      O => trig_delay(468)
    );
\LUT1_gen[469].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(468),
      O => trig_delay(469)
    );
\LUT1_gen[46].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(45),
      O => trig_delay(46)
    );
\LUT1_gen[470].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(469),
      O => trig_delay(470)
    );
\LUT1_gen[471].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(470),
      O => trig_delay(471)
    );
\LUT1_gen[472].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(471),
      O => trig_delay(472)
    );
\LUT1_gen[473].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(472),
      O => trig_delay(473)
    );
\LUT1_gen[474].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(473),
      O => trig_delay(474)
    );
\LUT1_gen[475].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(474),
      O => trig_delay(475)
    );
\LUT1_gen[476].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(475),
      O => trig_delay(476)
    );
\LUT1_gen[477].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(476),
      O => trig_delay(477)
    );
\LUT1_gen[478].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(477),
      O => trig_delay(478)
    );
\LUT1_gen[479].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(478),
      O => trig_delay(479)
    );
\LUT1_gen[47].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(46),
      O => trig_delay(47)
    );
\LUT1_gen[480].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(479),
      O => trig_delay(480)
    );
\LUT1_gen[481].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(480),
      O => trig_delay(481)
    );
\LUT1_gen[482].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(481),
      O => trig_delay(482)
    );
\LUT1_gen[483].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(482),
      O => trig_delay(483)
    );
\LUT1_gen[484].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(483),
      O => trig_delay(484)
    );
\LUT1_gen[485].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(484),
      O => trig_delay(485)
    );
\LUT1_gen[486].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(485),
      O => trig_delay(486)
    );
\LUT1_gen[487].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(486),
      O => trig_delay(487)
    );
\LUT1_gen[488].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(487),
      O => trig_delay(488)
    );
\LUT1_gen[489].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(488),
      O => trig_delay(489)
    );
\LUT1_gen[48].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(47),
      O => trig_delay(48)
    );
\LUT1_gen[490].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(489),
      O => trig_delay(490)
    );
\LUT1_gen[491].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(490),
      O => trig_delay(491)
    );
\LUT1_gen[492].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(491),
      O => trig_delay(492)
    );
\LUT1_gen[493].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(492),
      O => trig_delay(493)
    );
\LUT1_gen[494].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(493),
      O => trig_delay(494)
    );
\LUT1_gen[495].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(494),
      O => trig_delay(495)
    );
\LUT1_gen[496].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(495),
      O => trig_delay(496)
    );
\LUT1_gen[497].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(496),
      O => trig_delay(497)
    );
\LUT1_gen[498].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(497),
      O => trig_delay(498)
    );
\LUT1_gen[499].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(498),
      O => trig_delay(499)
    );
\LUT1_gen[49].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(48),
      O => trig_delay(49)
    );
\LUT1_gen[4].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(3),
      O => trig_delay(4)
    );
\LUT1_gen[500].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(499),
      O => trig_delay(500)
    );
\LUT1_gen[501].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(500),
      O => trig_delay(501)
    );
\LUT1_gen[502].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(501),
      O => trig_delay(502)
    );
\LUT1_gen[503].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(502),
      O => trig_delay(503)
    );
\LUT1_gen[504].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(503),
      O => trig_delay(504)
    );
\LUT1_gen[505].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(504),
      O => trig_delay(505)
    );
\LUT1_gen[506].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(505),
      O => trig_delay(506)
    );
\LUT1_gen[507].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(506),
      O => trig_delay(507)
    );
\LUT1_gen[508].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(507),
      O => trig_delay(508)
    );
\LUT1_gen[509].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(508),
      O => trig_delay(509)
    );
\LUT1_gen[50].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(49),
      O => trig_delay(50)
    );
\LUT1_gen[510].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(509),
      O => trig_delay(510)
    );
\LUT1_gen[511].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(510),
      O => trig_delay(511)
    );
\LUT1_gen[512].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(511),
      O => trig_delay(512)
    );
\LUT1_gen[513].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(512),
      O => trig_delay(513)
    );
\LUT1_gen[514].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(513),
      O => trig_delay(514)
    );
\LUT1_gen[515].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(514),
      O => trig_delay(515)
    );
\LUT1_gen[516].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(515),
      O => trig_delay(516)
    );
\LUT1_gen[517].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(516),
      O => trig_delay(517)
    );
\LUT1_gen[518].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(517),
      O => trig_delay(518)
    );
\LUT1_gen[519].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(518),
      O => trig_delay(519)
    );
\LUT1_gen[51].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(50),
      O => trig_delay(51)
    );
\LUT1_gen[520].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(519),
      O => trig_delay(520)
    );
\LUT1_gen[521].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(520),
      O => trig_delay(521)
    );
\LUT1_gen[522].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(521),
      O => trig_delay(522)
    );
\LUT1_gen[523].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(522),
      O => trig_delay(523)
    );
\LUT1_gen[524].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(523),
      O => trig_delay(524)
    );
\LUT1_gen[525].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(524),
      O => trig_delay(525)
    );
\LUT1_gen[526].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(525),
      O => trig_delay(526)
    );
\LUT1_gen[527].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(526),
      O => trig_delay(527)
    );
\LUT1_gen[528].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(527),
      O => trig_delay(528)
    );
\LUT1_gen[529].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(528),
      O => trig_delay(529)
    );
\LUT1_gen[52].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(51),
      O => trig_delay(52)
    );
\LUT1_gen[530].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(529),
      O => trig_delay(530)
    );
\LUT1_gen[531].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(530),
      O => trig_delay(531)
    );
\LUT1_gen[532].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(531),
      O => trig_delay(532)
    );
\LUT1_gen[533].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(532),
      O => trig_delay(533)
    );
\LUT1_gen[534].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(533),
      O => trig_delay(534)
    );
\LUT1_gen[535].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(534),
      O => trig_delay(535)
    );
\LUT1_gen[536].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(535),
      O => trig_delay(536)
    );
\LUT1_gen[537].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(536),
      O => trig_delay(537)
    );
\LUT1_gen[538].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(537),
      O => trig_delay(538)
    );
\LUT1_gen[539].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(538),
      O => trig_delay(539)
    );
\LUT1_gen[53].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(52),
      O => trig_delay(53)
    );
\LUT1_gen[540].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(539),
      O => trig_delay(540)
    );
\LUT1_gen[541].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(540),
      O => trig_delay(541)
    );
\LUT1_gen[542].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(541),
      O => trig_delay(542)
    );
\LUT1_gen[543].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(542),
      O => trig_delay(543)
    );
\LUT1_gen[544].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(543),
      O => trig_delay(544)
    );
\LUT1_gen[545].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(544),
      O => trig_delay(545)
    );
\LUT1_gen[546].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(545),
      O => trig_delay(546)
    );
\LUT1_gen[547].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(546),
      O => trig_delay(547)
    );
\LUT1_gen[548].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(547),
      O => trig_delay(548)
    );
\LUT1_gen[549].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(548),
      O => trig_delay(549)
    );
\LUT1_gen[54].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(53),
      O => trig_delay(54)
    );
\LUT1_gen[550].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(549),
      O => trig_delay(550)
    );
\LUT1_gen[551].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(550),
      O => trig_delay(551)
    );
\LUT1_gen[552].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(551),
      O => trig_delay(552)
    );
\LUT1_gen[553].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(552),
      O => trig_delay(553)
    );
\LUT1_gen[554].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(553),
      O => trig_delay(554)
    );
\LUT1_gen[555].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(554),
      O => trig_delay(555)
    );
\LUT1_gen[556].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(555),
      O => trig_delay(556)
    );
\LUT1_gen[557].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(556),
      O => trig_delay(557)
    );
\LUT1_gen[558].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(557),
      O => trig_delay(558)
    );
\LUT1_gen[559].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(558),
      O => trig_delay(559)
    );
\LUT1_gen[55].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(54),
      O => trig_delay(55)
    );
\LUT1_gen[560].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(559),
      O => trig_delay(560)
    );
\LUT1_gen[561].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(560),
      O => trig_delay(561)
    );
\LUT1_gen[562].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(561),
      O => trig_delay(562)
    );
\LUT1_gen[563].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(562),
      O => trig_delay(563)
    );
\LUT1_gen[564].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(563),
      O => trig_delay(564)
    );
\LUT1_gen[565].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(564),
      O => trig_delay(565)
    );
\LUT1_gen[566].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(565),
      O => trig_delay(566)
    );
\LUT1_gen[567].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(566),
      O => trig_delay(567)
    );
\LUT1_gen[568].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(567),
      O => trig_delay(568)
    );
\LUT1_gen[569].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(568),
      O => trig_delay(569)
    );
\LUT1_gen[56].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(55),
      O => trig_delay(56)
    );
\LUT1_gen[570].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(569),
      O => trig_delay(570)
    );
\LUT1_gen[571].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(570),
      O => trig_delay(571)
    );
\LUT1_gen[572].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(571),
      O => trig_delay(572)
    );
\LUT1_gen[573].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(572),
      O => trig_delay(573)
    );
\LUT1_gen[574].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(573),
      O => trig_delay(574)
    );
\LUT1_gen[575].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(574),
      O => trig_delay(575)
    );
\LUT1_gen[576].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(575),
      O => trig_delay(576)
    );
\LUT1_gen[577].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(576),
      O => trig_delay(577)
    );
\LUT1_gen[578].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(577),
      O => trig_delay(578)
    );
\LUT1_gen[579].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(578),
      O => trig_delay(579)
    );
\LUT1_gen[57].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(56),
      O => trig_delay(57)
    );
\LUT1_gen[580].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(579),
      O => trig_delay(580)
    );
\LUT1_gen[581].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(580),
      O => trig_delay(581)
    );
\LUT1_gen[582].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(581),
      O => trig_delay(582)
    );
\LUT1_gen[583].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(582),
      O => trig_delay(583)
    );
\LUT1_gen[584].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(583),
      O => trig_delay(584)
    );
\LUT1_gen[585].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(584),
      O => trig_delay(585)
    );
\LUT1_gen[586].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(585),
      O => trig_delay(586)
    );
\LUT1_gen[587].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(586),
      O => trig_delay(587)
    );
\LUT1_gen[588].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(587),
      O => trig_delay(588)
    );
\LUT1_gen[589].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(588),
      O => trig_delay(589)
    );
\LUT1_gen[58].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(57),
      O => trig_delay(58)
    );
\LUT1_gen[590].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(589),
      O => trig_delay(590)
    );
\LUT1_gen[591].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(590),
      O => trig_delay(591)
    );
\LUT1_gen[592].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(591),
      O => trig_delay(592)
    );
\LUT1_gen[593].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(592),
      O => trig_delay(593)
    );
\LUT1_gen[594].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(593),
      O => trig_delay(594)
    );
\LUT1_gen[595].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(594),
      O => trig_delay(595)
    );
\LUT1_gen[596].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(595),
      O => trig_delay(596)
    );
\LUT1_gen[597].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(596),
      O => trig_delay(597)
    );
\LUT1_gen[598].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(597),
      O => trig_delay(598)
    );
\LUT1_gen[599].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(598),
      O => trig_delay(599)
    );
\LUT1_gen[59].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(58),
      O => trig_delay(59)
    );
\LUT1_gen[5].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(4),
      O => trig_delay(5)
    );
\LUT1_gen[600].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(599),
      O => trig_delay(600)
    );
\LUT1_gen[601].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(600),
      O => trig_delay(601)
    );
\LUT1_gen[602].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(601),
      O => trig_delay(602)
    );
\LUT1_gen[603].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(602),
      O => trig_delay(603)
    );
\LUT1_gen[604].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(603),
      O => trig_delay(604)
    );
\LUT1_gen[605].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(604),
      O => trig_delay(605)
    );
\LUT1_gen[606].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(605),
      O => trig_delay(606)
    );
\LUT1_gen[607].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(606),
      O => trig_delay(607)
    );
\LUT1_gen[608].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(607),
      O => trig_delay(608)
    );
\LUT1_gen[609].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(608),
      O => trig_delay(609)
    );
\LUT1_gen[60].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(59),
      O => trig_delay(60)
    );
\LUT1_gen[610].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(609),
      O => trig_delay(610)
    );
\LUT1_gen[611].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(610),
      O => trig_delay(611)
    );
\LUT1_gen[612].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(611),
      O => trig_delay(612)
    );
\LUT1_gen[613].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(612),
      O => trig_delay(613)
    );
\LUT1_gen[614].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(613),
      O => trig_delay(614)
    );
\LUT1_gen[615].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(614),
      O => trig_delay(615)
    );
\LUT1_gen[616].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(615),
      O => trig_delay(616)
    );
\LUT1_gen[617].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(616),
      O => trig_delay(617)
    );
\LUT1_gen[618].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(617),
      O => trig_delay(618)
    );
\LUT1_gen[619].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(618),
      O => trig_delay(619)
    );
\LUT1_gen[61].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(60),
      O => trig_delay(61)
    );
\LUT1_gen[620].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(619),
      O => trig_delay(620)
    );
\LUT1_gen[621].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(620),
      O => trig_delay(621)
    );
\LUT1_gen[622].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(621),
      O => trig_delay(622)
    );
\LUT1_gen[623].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(622),
      O => trig_delay(623)
    );
\LUT1_gen[624].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(623),
      O => trig_delay(624)
    );
\LUT1_gen[625].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(624),
      O => trig_delay(625)
    );
\LUT1_gen[626].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(625),
      O => trig_delay(626)
    );
\LUT1_gen[627].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(626),
      O => trig_delay(627)
    );
\LUT1_gen[628].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(627),
      O => trig_delay(628)
    );
\LUT1_gen[629].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(628),
      O => trig_delay(629)
    );
\LUT1_gen[62].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(61),
      O => trig_delay(62)
    );
\LUT1_gen[630].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(629),
      O => trig_delay(630)
    );
\LUT1_gen[631].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(630),
      O => trig_delay(631)
    );
\LUT1_gen[632].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(631),
      O => trig_delay(632)
    );
\LUT1_gen[633].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(632),
      O => trig_delay(633)
    );
\LUT1_gen[634].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(633),
      O => trig_delay(634)
    );
\LUT1_gen[635].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(634),
      O => trig_delay(635)
    );
\LUT1_gen[636].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(635),
      O => trig_delay(636)
    );
\LUT1_gen[637].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(636),
      O => trig_delay(637)
    );
\LUT1_gen[638].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(637),
      O => trig_delay(638)
    );
\LUT1_gen[639].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(638),
      O => trig_delay(639)
    );
\LUT1_gen[63].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(62),
      O => trig_delay(63)
    );
\LUT1_gen[640].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(639),
      O => trig_delay(640)
    );
\LUT1_gen[641].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(640),
      O => trig_delay(641)
    );
\LUT1_gen[642].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(641),
      O => trig_delay(642)
    );
\LUT1_gen[643].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(642),
      O => trig_delay(643)
    );
\LUT1_gen[644].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(643),
      O => trig_delay(644)
    );
\LUT1_gen[645].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(644),
      O => trig_delay(645)
    );
\LUT1_gen[646].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(645),
      O => trig_delay(646)
    );
\LUT1_gen[647].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(646),
      O => trig_delay(647)
    );
\LUT1_gen[648].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(647),
      O => trig_delay(648)
    );
\LUT1_gen[649].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(648),
      O => trig_delay(649)
    );
\LUT1_gen[64].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(63),
      O => trig_delay(64)
    );
\LUT1_gen[650].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(649),
      O => trig_delay(650)
    );
\LUT1_gen[651].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(650),
      O => trig_delay(651)
    );
\LUT1_gen[652].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(651),
      O => trig_delay(652)
    );
\LUT1_gen[653].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(652),
      O => trig_delay(653)
    );
\LUT1_gen[654].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(653),
      O => trig_delay(654)
    );
\LUT1_gen[655].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(654),
      O => trig_delay(655)
    );
\LUT1_gen[656].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(655),
      O => trig_delay(656)
    );
\LUT1_gen[657].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(656),
      O => trig_delay(657)
    );
\LUT1_gen[658].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(657),
      O => trig_delay(658)
    );
\LUT1_gen[659].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(658),
      O => trig_delay(659)
    );
\LUT1_gen[65].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(64),
      O => trig_delay(65)
    );
\LUT1_gen[660].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(659),
      O => trig_delay(660)
    );
\LUT1_gen[661].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(660),
      O => trig_delay(661)
    );
\LUT1_gen[662].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(661),
      O => trig_delay(662)
    );
\LUT1_gen[663].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(662),
      O => trig_delay(663)
    );
\LUT1_gen[664].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(663),
      O => trig_delay(664)
    );
\LUT1_gen[665].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(664),
      O => trig_delay(665)
    );
\LUT1_gen[666].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(665),
      O => trig_delay(666)
    );
\LUT1_gen[667].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(666),
      O => trig_delay(667)
    );
\LUT1_gen[668].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(667),
      O => trig_delay(668)
    );
\LUT1_gen[669].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(668),
      O => trig_delay(669)
    );
\LUT1_gen[66].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(65),
      O => trig_delay(66)
    );
\LUT1_gen[670].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(669),
      O => trig_delay(670)
    );
\LUT1_gen[671].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(670),
      O => trig_delay(671)
    );
\LUT1_gen[672].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(671),
      O => trig_delay(672)
    );
\LUT1_gen[673].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(672),
      O => trig_delay(673)
    );
\LUT1_gen[674].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(673),
      O => trig_delay(674)
    );
\LUT1_gen[675].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(674),
      O => trig_delay(675)
    );
\LUT1_gen[676].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(675),
      O => trig_delay(676)
    );
\LUT1_gen[677].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(676),
      O => trig_delay(677)
    );
\LUT1_gen[678].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(677),
      O => trig_delay(678)
    );
\LUT1_gen[679].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(678),
      O => trig_delay(679)
    );
\LUT1_gen[67].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(66),
      O => trig_delay(67)
    );
\LUT1_gen[680].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(679),
      O => trig_delay(680)
    );
\LUT1_gen[681].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(680),
      O => trig_delay(681)
    );
\LUT1_gen[682].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(681),
      O => trig_delay(682)
    );
\LUT1_gen[683].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(682),
      O => trig_delay(683)
    );
\LUT1_gen[684].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(683),
      O => trig_delay(684)
    );
\LUT1_gen[685].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(684),
      O => trig_delay(685)
    );
\LUT1_gen[686].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(685),
      O => trig_delay(686)
    );
\LUT1_gen[687].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(686),
      O => trig_delay(687)
    );
\LUT1_gen[688].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(687),
      O => trig_delay(688)
    );
\LUT1_gen[689].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(688),
      O => trig_delay(689)
    );
\LUT1_gen[68].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(67),
      O => trig_delay(68)
    );
\LUT1_gen[690].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(689),
      O => trig_delay(690)
    );
\LUT1_gen[691].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(690),
      O => trig_delay(691)
    );
\LUT1_gen[692].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(691),
      O => trig_delay(692)
    );
\LUT1_gen[693].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(692),
      O => trig_delay(693)
    );
\LUT1_gen[694].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(693),
      O => trig_delay(694)
    );
\LUT1_gen[695].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(694),
      O => trig_delay(695)
    );
\LUT1_gen[696].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(695),
      O => trig_delay(696)
    );
\LUT1_gen[697].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(696),
      O => trig_delay(697)
    );
\LUT1_gen[698].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(697),
      O => trig_delay(698)
    );
\LUT1_gen[699].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(698),
      O => trig_delay(699)
    );
\LUT1_gen[69].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(68),
      O => trig_delay(69)
    );
\LUT1_gen[6].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(5),
      O => trig_delay(6)
    );
\LUT1_gen[700].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(699),
      O => trig_delay(700)
    );
\LUT1_gen[701].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(700),
      O => trig_delay(701)
    );
\LUT1_gen[702].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(701),
      O => trig_delay(702)
    );
\LUT1_gen[703].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(702),
      O => trig_delay(703)
    );
\LUT1_gen[704].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(703),
      O => trig_delay(704)
    );
\LUT1_gen[705].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(704),
      O => trig_delay(705)
    );
\LUT1_gen[706].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(705),
      O => trig_delay(706)
    );
\LUT1_gen[707].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(706),
      O => trig_delay(707)
    );
\LUT1_gen[708].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(707),
      O => trig_delay(708)
    );
\LUT1_gen[709].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(708),
      O => trig_delay(709)
    );
\LUT1_gen[70].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(69),
      O => trig_delay(70)
    );
\LUT1_gen[710].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(709),
      O => trig_delay(710)
    );
\LUT1_gen[711].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(710),
      O => trig_delay(711)
    );
\LUT1_gen[712].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(711),
      O => trig_delay(712)
    );
\LUT1_gen[713].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(712),
      O => trig_delay(713)
    );
\LUT1_gen[714].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(713),
      O => trig_delay(714)
    );
\LUT1_gen[715].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(714),
      O => trig_delay(715)
    );
\LUT1_gen[716].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(715),
      O => trig_delay(716)
    );
\LUT1_gen[717].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(716),
      O => trig_delay(717)
    );
\LUT1_gen[718].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(717),
      O => trig_delay(718)
    );
\LUT1_gen[719].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(718),
      O => trig_delay(719)
    );
\LUT1_gen[71].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(70),
      O => trig_delay(71)
    );
\LUT1_gen[720].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(719),
      O => trig_delay(720)
    );
\LUT1_gen[721].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(720),
      O => trig_delay(721)
    );
\LUT1_gen[722].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(721),
      O => trig_delay(722)
    );
\LUT1_gen[723].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(722),
      O => trig_delay(723)
    );
\LUT1_gen[724].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(723),
      O => trig_delay(724)
    );
\LUT1_gen[725].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(724),
      O => trig_delay(725)
    );
\LUT1_gen[726].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(725),
      O => trig_delay(726)
    );
\LUT1_gen[727].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(726),
      O => trig_delay(727)
    );
\LUT1_gen[728].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(727),
      O => trig_delay(728)
    );
\LUT1_gen[729].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(728),
      O => trig_delay(729)
    );
\LUT1_gen[72].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(71),
      O => trig_delay(72)
    );
\LUT1_gen[730].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(729),
      O => trig_delay(730)
    );
\LUT1_gen[731].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(730),
      O => trig_delay(731)
    );
\LUT1_gen[732].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(731),
      O => trig_delay(732)
    );
\LUT1_gen[733].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(732),
      O => trig_delay(733)
    );
\LUT1_gen[734].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(733),
      O => trig_delay(734)
    );
\LUT1_gen[735].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(734),
      O => trig_delay(735)
    );
\LUT1_gen[736].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(735),
      O => trig_delay(736)
    );
\LUT1_gen[737].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(736),
      O => trig_delay(737)
    );
\LUT1_gen[738].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(737),
      O => trig_delay(738)
    );
\LUT1_gen[739].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(738),
      O => trig_delay(739)
    );
\LUT1_gen[73].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(72),
      O => trig_delay(73)
    );
\LUT1_gen[740].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(739),
      O => trig_delay(740)
    );
\LUT1_gen[741].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(740),
      O => trig_delay(741)
    );
\LUT1_gen[742].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(741),
      O => trig_delay(742)
    );
\LUT1_gen[743].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(742),
      O => trig_delay(743)
    );
\LUT1_gen[744].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(743),
      O => trig_delay(744)
    );
\LUT1_gen[745].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(744),
      O => trig_delay(745)
    );
\LUT1_gen[746].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(745),
      O => trig_delay(746)
    );
\LUT1_gen[747].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(746),
      O => trig_delay(747)
    );
\LUT1_gen[748].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(747),
      O => trig_delay(748)
    );
\LUT1_gen[749].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(748),
      O => trig_delay(749)
    );
\LUT1_gen[74].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(73),
      O => trig_delay(74)
    );
\LUT1_gen[750].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(749),
      O => trig_delay(750)
    );
\LUT1_gen[751].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(750),
      O => trig_delay(751)
    );
\LUT1_gen[752].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(751),
      O => trig_delay(752)
    );
\LUT1_gen[753].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(752),
      O => trig_delay(753)
    );
\LUT1_gen[754].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(753),
      O => trig_delay(754)
    );
\LUT1_gen[755].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(754),
      O => trig_delay(755)
    );
\LUT1_gen[756].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(755),
      O => trig_delay(756)
    );
\LUT1_gen[757].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(756),
      O => trig_delay(757)
    );
\LUT1_gen[758].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(757),
      O => trig_delay(758)
    );
\LUT1_gen[759].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(758),
      O => trig_delay(759)
    );
\LUT1_gen[75].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(74),
      O => trig_delay(75)
    );
\LUT1_gen[760].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(759),
      O => trig_delay(760)
    );
\LUT1_gen[761].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(760),
      O => trig_delay(761)
    );
\LUT1_gen[762].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(761),
      O => trig_delay(762)
    );
\LUT1_gen[763].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(762),
      O => trig_delay(763)
    );
\LUT1_gen[764].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(763),
      O => trig_delay(764)
    );
\LUT1_gen[765].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(764),
      O => trig_delay(765)
    );
\LUT1_gen[766].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(765),
      O => trig_delay(766)
    );
\LUT1_gen[767].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(766),
      O => trig_delay(767)
    );
\LUT1_gen[768].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(767),
      O => trig_delay(768)
    );
\LUT1_gen[769].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(768),
      O => trig_delay(769)
    );
\LUT1_gen[76].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(75),
      O => trig_delay(76)
    );
\LUT1_gen[770].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(769),
      O => trig_delay(770)
    );
\LUT1_gen[771].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(770),
      O => trig_delay(771)
    );
\LUT1_gen[772].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(771),
      O => trig_delay(772)
    );
\LUT1_gen[773].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(772),
      O => trig_delay(773)
    );
\LUT1_gen[774].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(773),
      O => trig_delay(774)
    );
\LUT1_gen[775].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(774),
      O => trig_delay(775)
    );
\LUT1_gen[776].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(775),
      O => trig_delay(776)
    );
\LUT1_gen[777].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(776),
      O => trig_delay(777)
    );
\LUT1_gen[778].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(777),
      O => trig_delay(778)
    );
\LUT1_gen[779].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(778),
      O => trig_delay(779)
    );
\LUT1_gen[77].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(76),
      O => trig_delay(77)
    );
\LUT1_gen[780].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(779),
      O => trig_delay(780)
    );
\LUT1_gen[781].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(780),
      O => trig_delay(781)
    );
\LUT1_gen[782].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(781),
      O => trig_delay(782)
    );
\LUT1_gen[783].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(782),
      O => trig_delay(783)
    );
\LUT1_gen[784].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(783),
      O => trig_delay(784)
    );
\LUT1_gen[785].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(784),
      O => trig_delay(785)
    );
\LUT1_gen[786].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(785),
      O => trig_delay(786)
    );
\LUT1_gen[787].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(786),
      O => trig_delay(787)
    );
\LUT1_gen[788].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(787),
      O => trig_delay(788)
    );
\LUT1_gen[789].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(788),
      O => trig_delay(789)
    );
\LUT1_gen[78].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(77),
      O => trig_delay(78)
    );
\LUT1_gen[790].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(789),
      O => trig_delay(790)
    );
\LUT1_gen[791].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(790),
      O => trig_delay(791)
    );
\LUT1_gen[792].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(791),
      O => trig_delay(792)
    );
\LUT1_gen[793].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(792),
      O => trig_delay(793)
    );
\LUT1_gen[794].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(793),
      O => trig_delay(794)
    );
\LUT1_gen[795].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(794),
      O => trig_delay(795)
    );
\LUT1_gen[796].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(795),
      O => trig_delay(796)
    );
\LUT1_gen[797].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(796),
      O => trig_delay(797)
    );
\LUT1_gen[798].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(797),
      O => trig_delay(798)
    );
\LUT1_gen[799].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(798),
      O => trig_delay(799)
    );
\LUT1_gen[79].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(78),
      O => trig_delay(79)
    );
\LUT1_gen[7].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(6),
      O => trig_delay(7)
    );
\LUT1_gen[800].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(799),
      O => trig_delay(800)
    );
\LUT1_gen[801].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(800),
      O => trig_delay(801)
    );
\LUT1_gen[802].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(801),
      O => trig_delay(802)
    );
\LUT1_gen[803].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(802),
      O => trig_delay(803)
    );
\LUT1_gen[804].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(803),
      O => trig_delay(804)
    );
\LUT1_gen[805].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(804),
      O => trig_delay(805)
    );
\LUT1_gen[806].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(805),
      O => trig_delay(806)
    );
\LUT1_gen[807].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(806),
      O => trig_delay(807)
    );
\LUT1_gen[808].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(807),
      O => trig_delay(808)
    );
\LUT1_gen[809].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(808),
      O => trig_delay(809)
    );
\LUT1_gen[80].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(79),
      O => trig_delay(80)
    );
\LUT1_gen[810].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(809),
      O => trig_delay(810)
    );
\LUT1_gen[811].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(810),
      O => trig_delay(811)
    );
\LUT1_gen[812].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(811),
      O => trig_delay(812)
    );
\LUT1_gen[813].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(812),
      O => trig_delay(813)
    );
\LUT1_gen[814].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(813),
      O => trig_delay(814)
    );
\LUT1_gen[815].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(814),
      O => trig_delay(815)
    );
\LUT1_gen[816].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(815),
      O => trig_delay(816)
    );
\LUT1_gen[817].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(816),
      O => trig_delay(817)
    );
\LUT1_gen[818].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(817),
      O => trig_delay(818)
    );
\LUT1_gen[819].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(818),
      O => trig_delay(819)
    );
\LUT1_gen[81].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(80),
      O => trig_delay(81)
    );
\LUT1_gen[820].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(819),
      O => trig_delay(820)
    );
\LUT1_gen[821].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(820),
      O => trig_delay(821)
    );
\LUT1_gen[822].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(821),
      O => trig_delay(822)
    );
\LUT1_gen[823].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(822),
      O => trig_delay(823)
    );
\LUT1_gen[824].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(823),
      O => trig_delay(824)
    );
\LUT1_gen[825].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(824),
      O => trig_delay(825)
    );
\LUT1_gen[826].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(825),
      O => trig_delay(826)
    );
\LUT1_gen[827].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(826),
      O => trig_delay(827)
    );
\LUT1_gen[828].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(827),
      O => trig_delay(828)
    );
\LUT1_gen[829].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(828),
      O => trig_delay(829)
    );
\LUT1_gen[82].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(81),
      O => trig_delay(82)
    );
\LUT1_gen[830].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(829),
      O => trig_delay(830)
    );
\LUT1_gen[831].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(830),
      O => trig_delay(831)
    );
\LUT1_gen[832].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(831),
      O => trig_delay(832)
    );
\LUT1_gen[833].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(832),
      O => trig_delay(833)
    );
\LUT1_gen[834].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(833),
      O => trig_delay(834)
    );
\LUT1_gen[835].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(834),
      O => trig_delay(835)
    );
\LUT1_gen[836].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(835),
      O => trig_delay(836)
    );
\LUT1_gen[837].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(836),
      O => trig_delay(837)
    );
\LUT1_gen[838].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(837),
      O => trig_delay(838)
    );
\LUT1_gen[839].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(838),
      O => trig_delay(839)
    );
\LUT1_gen[83].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(82),
      O => trig_delay(83)
    );
\LUT1_gen[840].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(839),
      O => trig_delay(840)
    );
\LUT1_gen[841].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(840),
      O => trig_delay(841)
    );
\LUT1_gen[842].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(841),
      O => trig_delay(842)
    );
\LUT1_gen[843].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(842),
      O => trig_delay(843)
    );
\LUT1_gen[844].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(843),
      O => trig_delay(844)
    );
\LUT1_gen[845].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(844),
      O => trig_delay(845)
    );
\LUT1_gen[846].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(845),
      O => trig_delay(846)
    );
\LUT1_gen[847].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(846),
      O => trig_delay(847)
    );
\LUT1_gen[848].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(847),
      O => trig_delay(848)
    );
\LUT1_gen[849].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(848),
      O => trig_delay(849)
    );
\LUT1_gen[84].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(83),
      O => trig_delay(84)
    );
\LUT1_gen[850].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(849),
      O => trig_delay(850)
    );
\LUT1_gen[851].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(850),
      O => trig_delay(851)
    );
\LUT1_gen[852].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(851),
      O => trig_delay(852)
    );
\LUT1_gen[853].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(852),
      O => trig_delay(853)
    );
\LUT1_gen[854].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(853),
      O => trig_delay(854)
    );
\LUT1_gen[855].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(854),
      O => trig_delay(855)
    );
\LUT1_gen[856].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(855),
      O => trig_delay(856)
    );
\LUT1_gen[857].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(856),
      O => trig_delay(857)
    );
\LUT1_gen[858].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(857),
      O => trig_delay(858)
    );
\LUT1_gen[859].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(858),
      O => trig_delay(859)
    );
\LUT1_gen[85].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(84),
      O => trig_delay(85)
    );
\LUT1_gen[860].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(859),
      O => trig_delay(860)
    );
\LUT1_gen[861].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(860),
      O => trig_delay(861)
    );
\LUT1_gen[862].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(861),
      O => trig_delay(862)
    );
\LUT1_gen[863].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(862),
      O => trig_delay(863)
    );
\LUT1_gen[864].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(863),
      O => trig_delay(864)
    );
\LUT1_gen[865].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(864),
      O => trig_delay(865)
    );
\LUT1_gen[866].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(865),
      O => trig_delay(866)
    );
\LUT1_gen[867].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(866),
      O => trig_delay(867)
    );
\LUT1_gen[868].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(867),
      O => trig_delay(868)
    );
\LUT1_gen[869].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(868),
      O => trig_delay(869)
    );
\LUT1_gen[86].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(85),
      O => trig_delay(86)
    );
\LUT1_gen[870].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(869),
      O => trig_delay(870)
    );
\LUT1_gen[871].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(870),
      O => trig_delay(871)
    );
\LUT1_gen[872].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(871),
      O => trig_delay(872)
    );
\LUT1_gen[873].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(872),
      O => trig_delay(873)
    );
\LUT1_gen[874].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(873),
      O => trig_delay(874)
    );
\LUT1_gen[875].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(874),
      O => trig_delay(875)
    );
\LUT1_gen[876].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(875),
      O => trig_delay(876)
    );
\LUT1_gen[877].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(876),
      O => trig_delay(877)
    );
\LUT1_gen[878].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(877),
      O => trig_delay(878)
    );
\LUT1_gen[879].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(878),
      O => trig_delay(879)
    );
\LUT1_gen[87].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(86),
      O => trig_delay(87)
    );
\LUT1_gen[880].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(879),
      O => trig_delay(880)
    );
\LUT1_gen[881].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(880),
      O => trig_delay(881)
    );
\LUT1_gen[882].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(881),
      O => trig_delay(882)
    );
\LUT1_gen[883].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(882),
      O => trig_delay(883)
    );
\LUT1_gen[884].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(883),
      O => trig_delay(884)
    );
\LUT1_gen[885].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(884),
      O => trig_delay(885)
    );
\LUT1_gen[886].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(885),
      O => trig_delay(886)
    );
\LUT1_gen[887].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(886),
      O => trig_delay(887)
    );
\LUT1_gen[888].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(887),
      O => trig_delay(888)
    );
\LUT1_gen[889].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(888),
      O => trig_delay(889)
    );
\LUT1_gen[88].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(87),
      O => trig_delay(88)
    );
\LUT1_gen[890].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(889),
      O => trig_delay(890)
    );
\LUT1_gen[891].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(890),
      O => trig_delay(891)
    );
\LUT1_gen[892].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(891),
      O => trig_delay(892)
    );
\LUT1_gen[893].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(892),
      O => trig_delay(893)
    );
\LUT1_gen[894].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(893),
      O => trig_delay(894)
    );
\LUT1_gen[895].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(894),
      O => trig_delay(895)
    );
\LUT1_gen[896].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(895),
      O => trig_delay(896)
    );
\LUT1_gen[897].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(896),
      O => trig_delay(897)
    );
\LUT1_gen[898].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(897),
      O => trig_delay(898)
    );
\LUT1_gen[899].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(898),
      O => trig_delay(899)
    );
\LUT1_gen[89].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(88),
      O => trig_delay(89)
    );
\LUT1_gen[8].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(7),
      O => trig_delay(8)
    );
\LUT1_gen[900].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(899),
      O => trig_delay(900)
    );
\LUT1_gen[901].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(900),
      O => trig_delay(901)
    );
\LUT1_gen[902].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(901),
      O => trig_delay(902)
    );
\LUT1_gen[903].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(902),
      O => trig_delay(903)
    );
\LUT1_gen[904].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(903),
      O => trig_delay(904)
    );
\LUT1_gen[905].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(904),
      O => trig_delay(905)
    );
\LUT1_gen[906].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(905),
      O => trig_delay(906)
    );
\LUT1_gen[907].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(906),
      O => trig_delay(907)
    );
\LUT1_gen[908].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(907),
      O => trig_delay(908)
    );
\LUT1_gen[909].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(908),
      O => trig_delay(909)
    );
\LUT1_gen[90].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(89),
      O => trig_delay(90)
    );
\LUT1_gen[910].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(909),
      O => trig_delay(910)
    );
\LUT1_gen[911].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(910),
      O => trig_delay(911)
    );
\LUT1_gen[912].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(911),
      O => trig_delay(912)
    );
\LUT1_gen[913].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(912),
      O => trig_delay(913)
    );
\LUT1_gen[914].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(913),
      O => trig_delay(914)
    );
\LUT1_gen[915].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(914),
      O => trig_delay(915)
    );
\LUT1_gen[916].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(915),
      O => trig_delay(916)
    );
\LUT1_gen[917].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(916),
      O => trig_delay(917)
    );
\LUT1_gen[918].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(917),
      O => trig_delay(918)
    );
\LUT1_gen[919].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(918),
      O => trig_delay(919)
    );
\LUT1_gen[91].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(90),
      O => trig_delay(91)
    );
\LUT1_gen[920].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(919),
      O => trig_delay(920)
    );
\LUT1_gen[921].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(920),
      O => trig_delay(921)
    );
\LUT1_gen[922].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(921),
      O => trig_delay(922)
    );
\LUT1_gen[923].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(922),
      O => trig_delay(923)
    );
\LUT1_gen[924].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(923),
      O => trig_delay(924)
    );
\LUT1_gen[925].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(924),
      O => trig_delay(925)
    );
\LUT1_gen[926].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(925),
      O => trig_delay(926)
    );
\LUT1_gen[927].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(926),
      O => trig_delay(927)
    );
\LUT1_gen[928].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(927),
      O => trig_delay(928)
    );
\LUT1_gen[929].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(928),
      O => trig_delay(929)
    );
\LUT1_gen[92].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(91),
      O => trig_delay(92)
    );
\LUT1_gen[930].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(929),
      O => trig_delay(930)
    );
\LUT1_gen[931].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(930),
      O => trig_delay(931)
    );
\LUT1_gen[932].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(931),
      O => trig_delay(932)
    );
\LUT1_gen[933].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(932),
      O => trig_delay(933)
    );
\LUT1_gen[934].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(933),
      O => trig_delay(934)
    );
\LUT1_gen[935].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(934),
      O => trig_delay(935)
    );
\LUT1_gen[936].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(935),
      O => trig_delay(936)
    );
\LUT1_gen[937].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(936),
      O => trig_delay(937)
    );
\LUT1_gen[938].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(937),
      O => trig_delay(938)
    );
\LUT1_gen[939].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(938),
      O => trig_delay(939)
    );
\LUT1_gen[93].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(92),
      O => trig_delay(93)
    );
\LUT1_gen[940].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(939),
      O => trig_delay(940)
    );
\LUT1_gen[941].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(940),
      O => trig_delay(941)
    );
\LUT1_gen[942].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(941),
      O => trig_delay(942)
    );
\LUT1_gen[943].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(942),
      O => trig_delay(943)
    );
\LUT1_gen[944].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(943),
      O => trig_delay(944)
    );
\LUT1_gen[945].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(944),
      O => trig_delay(945)
    );
\LUT1_gen[946].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(945),
      O => trig_delay(946)
    );
\LUT1_gen[947].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(946),
      O => trig_delay(947)
    );
\LUT1_gen[948].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(947),
      O => trig_delay(948)
    );
\LUT1_gen[949].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(948),
      O => trig_delay(949)
    );
\LUT1_gen[94].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(93),
      O => trig_delay(94)
    );
\LUT1_gen[950].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(949),
      O => trig_delay(950)
    );
\LUT1_gen[951].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(950),
      O => trig_delay(951)
    );
\LUT1_gen[952].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(951),
      O => trig_delay(952)
    );
\LUT1_gen[953].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(952),
      O => trig_delay(953)
    );
\LUT1_gen[954].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(953),
      O => trig_delay(954)
    );
\LUT1_gen[955].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(954),
      O => trig_delay(955)
    );
\LUT1_gen[956].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(955),
      O => trig_delay(956)
    );
\LUT1_gen[957].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(956),
      O => trig_delay(957)
    );
\LUT1_gen[958].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(957),
      O => trig_delay(958)
    );
\LUT1_gen[959].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(958),
      O => trig_delay(959)
    );
\LUT1_gen[95].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(94),
      O => trig_delay(95)
    );
\LUT1_gen[960].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(959),
      O => trig_delay(960)
    );
\LUT1_gen[961].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(960),
      O => trig_delay(961)
    );
\LUT1_gen[962].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(961),
      O => trig_delay(962)
    );
\LUT1_gen[963].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(962),
      O => trig_delay(963)
    );
\LUT1_gen[964].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(963),
      O => trig_delay(964)
    );
\LUT1_gen[965].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(964),
      O => trig_delay(965)
    );
\LUT1_gen[966].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(965),
      O => trig_delay(966)
    );
\LUT1_gen[967].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(966),
      O => trig_delay(967)
    );
\LUT1_gen[968].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(967),
      O => trig_delay(968)
    );
\LUT1_gen[969].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(968),
      O => trig_delay(969)
    );
\LUT1_gen[96].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(95),
      O => trig_delay(96)
    );
\LUT1_gen[970].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(969),
      O => trig_delay(970)
    );
\LUT1_gen[971].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(970),
      O => trig_delay(971)
    );
\LUT1_gen[972].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(971),
      O => trig_delay(972)
    );
\LUT1_gen[973].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(972),
      O => trig_delay(973)
    );
\LUT1_gen[974].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(973),
      O => trig_delay(974)
    );
\LUT1_gen[975].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(974),
      O => trig_delay(975)
    );
\LUT1_gen[976].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(975),
      O => trig_delay(976)
    );
\LUT1_gen[977].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(976),
      O => trig_delay(977)
    );
\LUT1_gen[978].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(977),
      O => trig_delay(978)
    );
\LUT1_gen[979].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(978),
      O => trig_delay(979)
    );
\LUT1_gen[97].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(96),
      O => trig_delay(97)
    );
\LUT1_gen[980].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(979),
      O => trig_delay(980)
    );
\LUT1_gen[981].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(980),
      O => trig_delay(981)
    );
\LUT1_gen[982].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(981),
      O => trig_delay(982)
    );
\LUT1_gen[983].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(982),
      O => trig_delay(983)
    );
\LUT1_gen[984].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(983),
      O => trig_delay(984)
    );
\LUT1_gen[985].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(984),
      O => trig_delay(985)
    );
\LUT1_gen[986].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(985),
      O => trig_delay(986)
    );
\LUT1_gen[987].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(986),
      O => trig_delay(987)
    );
\LUT1_gen[988].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(987),
      O => trig_delay(988)
    );
\LUT1_gen[989].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(988),
      O => trig_delay(989)
    );
\LUT1_gen[98].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(97),
      O => trig_delay(98)
    );
\LUT1_gen[990].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(989),
      O => trig_delay(990)
    );
\LUT1_gen[991].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(990),
      O => trig_delay(991)
    );
\LUT1_gen[992].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(991),
      O => trig_delay(992)
    );
\LUT1_gen[993].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(992),
      O => trig_delay(993)
    );
\LUT1_gen[994].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(993),
      O => trig_delay(994)
    );
\LUT1_gen[995].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(994),
      O => trig_delay(995)
    );
\LUT1_gen[996].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(995),
      O => trig_delay(996)
    );
\LUT1_gen[997].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(996),
      O => trig_delay(997)
    );
\LUT1_gen[998].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(997),
      O => trig_delay(998)
    );
\LUT1_gen[999].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(998),
      O => trig_delay(999)
    );
\LUT1_gen[99].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(98),
      O => trig_delay(99)
    );
\LUT1_gen[9].LUT1_inst\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_delay(8),
      O => trig_delay(9)
    );
RSR_init_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => RSR_init_start0,
      Q => RSR_init_start,
      R => '0'
    );
\SROUT_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(12),
      I1 => \SROUT_count_reg_n_0_[0]\,
      O => \SROUT_count[0]_i_1_n_0\
    );
\SROUT_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^out\(12),
      I1 => \SROUT_count_reg_n_0_[0]\,
      I2 => \SROUT_count_reg_n_0_[1]\,
      O => \SROUT_count[1]_i_1_n_0\
    );
\SROUT_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^out\(12),
      I1 => \SROUT_count_reg_n_0_[1]\,
      I2 => \SROUT_count_reg_n_0_[0]\,
      I3 => \SROUT_count_reg_n_0_[2]\,
      O => \SROUT_count[2]_i_1_n_0\
    );
\SROUT_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF5700"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[3]\,
      I1 => \SROUT_count_reg_n_0_[2]\,
      I2 => \SROUT_count_reg_n_0_[1]\,
      I3 => \SROUT_count[3]_i_3_n_0\,
      I4 => \^out\(11),
      I5 => \^out\(8),
      O => SROUT_count
    );
\SROUT_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^out\(12),
      I1 => \SROUT_count_reg_n_0_[0]\,
      I2 => \SROUT_count_reg_n_0_[1]\,
      I3 => \SROUT_count_reg_n_0_[2]\,
      I4 => \SROUT_count_reg_n_0_[3]\,
      O => \SROUT_count[3]_i_2_n_0\
    );
\SROUT_count[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_srclk\,
      I1 => \^out\(12),
      O => \SROUT_count[3]_i_3_n_0\
    );
\SROUT_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => SROUT_count,
      CLR => axi_rst,
      D => \SROUT_count[0]_i_1_n_0\,
      Q => \SROUT_count_reg_n_0_[0]\
    );
\SROUT_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => SROUT_count,
      CLR => axi_rst,
      D => \SROUT_count[1]_i_1_n_0\,
      Q => \SROUT_count_reg_n_0_[1]\
    );
\SROUT_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => SROUT_count,
      CLR => axi_rst,
      D => \SROUT_count[2]_i_1_n_0\,
      Q => \SROUT_count_reg_n_0_[2]\
    );
\SROUT_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => SROUT_count,
      CLR => axi_rst,
      D => \SROUT_count[3]_i_2_n_0\,
      Q => \SROUT_count_reg_n_0_[3]\
    );
\SROUT_vector[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8AFA8A8A8A0"
    )
        port map (
      I0 => i_SROUT,
      I1 => \^out\(12),
      I2 => \^out\(11),
      I3 => \^out\(8),
      I4 => \SROUT_vector[0]_i_2_n_0\,
      I5 => SROUT_vector(0),
      O => \SROUT_vector[0]_i_1_n_0\
    );
\SROUT_vector[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[1]\,
      I1 => \SROUT_count_reg_n_0_[0]\,
      I2 => \^out\(12),
      I3 => \^o_srclk\,
      I4 => \SROUT_count_reg_n_0_[2]\,
      I5 => \SROUT_count_reg_n_0_[3]\,
      O => \SROUT_vector[0]_i_2_n_0\
    );
\SROUT_vector[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8880"
    )
        port map (
      I0 => \^out\(12),
      I1 => i_SROUT,
      I2 => \^out\(8),
      I3 => \SROUT_vector[1]_i_2_n_0\,
      I4 => SROUT_vector(1),
      O => \SROUT_vector[1]_i_1_n_0\
    );
\SROUT_vector[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[1]\,
      I1 => \^o_srclk\,
      I2 => \^out\(12),
      I3 => \SROUT_count_reg_n_0_[0]\,
      I4 => \SROUT_count_reg_n_0_[3]\,
      I5 => \SROUT_count_reg_n_0_[2]\,
      O => \SROUT_vector[1]_i_2_n_0\
    );
\SROUT_vector[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8880808088"
    )
        port map (
      I0 => \^out\(12),
      I1 => i_SROUT,
      I2 => \^out\(8),
      I3 => \SROUT_vector[2]_i_2_n_0\,
      I4 => \SROUT_count_reg_n_0_[2]\,
      I5 => SROUT_vector(2),
      O => \SROUT_vector[2]_i_1_n_0\
    );
\SROUT_vector[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \^o_srclk\,
      I1 => \^out\(12),
      I2 => \SROUT_count_reg_n_0_[0]\,
      I3 => \SROUT_count_reg_n_0_[1]\,
      I4 => \SROUT_count_reg_n_0_[3]\,
      O => \SROUT_vector[2]_i_2_n_0\
    );
\SROUT_vector[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => \SROUT_vector[3]_i_2_n_0\,
      I1 => \^out\(8),
      I2 => \SROUT_vector[3]_i_3_n_0\,
      I3 => \SROUT_count_reg_n_0_[2]\,
      I4 => \SROUT_vector[3]_i_4_n_0\,
      I5 => SROUT_vector(3),
      O => \SROUT_vector[3]_i_1_n_0\
    );
\SROUT_vector[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(12),
      I1 => i_SROUT,
      O => \SROUT_vector[3]_i_2_n_0\
    );
\SROUT_vector[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[0]\,
      I1 => \^out\(12),
      I2 => \^o_srclk\,
      O => \SROUT_vector[3]_i_3_n_0\
    );
\SROUT_vector[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[3]\,
      I1 => \SROUT_count_reg_n_0_[1]\,
      O => \SROUT_vector[3]_i_4_n_0\
    );
\SROUT_vector[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8880"
    )
        port map (
      I0 => \^out\(12),
      I1 => i_SROUT,
      I2 => \^out\(8),
      I3 => \SROUT_vector[4]_i_2_n_0\,
      I4 => SROUT_vector(4),
      O => \SROUT_vector[4]_i_1_n_0\
    );
\SROUT_vector[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[0]\,
      I1 => \^out\(12),
      I2 => \^o_srclk\,
      I3 => \SROUT_count_reg_n_0_[3]\,
      I4 => \SROUT_count_reg_n_0_[2]\,
      I5 => \SROUT_count_reg_n_0_[1]\,
      O => \SROUT_vector[4]_i_2_n_0\
    );
\SROUT_vector[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8880"
    )
        port map (
      I0 => \^out\(12),
      I1 => i_SROUT,
      I2 => \^out\(8),
      I3 => \SROUT_vector[5]_i_2_n_0\,
      I4 => SROUT_vector(5),
      O => \SROUT_vector[5]_i_1_n_0\
    );
\SROUT_vector[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \^o_srclk\,
      I1 => \^out\(12),
      I2 => \SROUT_count_reg_n_0_[0]\,
      I3 => \SROUT_count_reg_n_0_[3]\,
      I4 => \SROUT_count_reg_n_0_[2]\,
      I5 => \SROUT_count_reg_n_0_[1]\,
      O => \SROUT_vector[5]_i_2_n_0\
    );
\SROUT_vector[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => \^out\(12),
      I1 => i_SROUT,
      I2 => \^out\(8),
      I3 => \SROUT_vector[2]_i_2_n_0\,
      I4 => \SROUT_count_reg_n_0_[2]\,
      I5 => SROUT_vector(6),
      O => \SROUT_vector[6]_i_1_n_0\
    );
\SROUT_vector[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => \SROUT_vector[3]_i_2_n_0\,
      I1 => \^out\(8),
      I2 => \SROUT_count_reg_n_0_[3]\,
      I3 => \SROUT_vector[7]_i_2_n_0\,
      I4 => \SROUT_count[3]_i_3_n_0\,
      I5 => SROUT_vector(7),
      O => \SROUT_vector[7]_i_1_n_0\
    );
\SROUT_vector[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[0]\,
      I1 => \SROUT_count_reg_n_0_[1]\,
      I2 => \SROUT_count_reg_n_0_[2]\,
      O => \SROUT_vector[7]_i_2_n_0\
    );
\SROUT_vector[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => \SROUT_vector[3]_i_2_n_0\,
      I1 => \^out\(8),
      I2 => \SROUT_count_reg_n_0_[0]\,
      I3 => \SROUT_count[3]_i_3_n_0\,
      I4 => \SROUT_vector[8]_i_2_n_0\,
      I5 => SROUT_vector(8),
      O => \SROUT_vector[8]_i_1_n_0\
    );
\SROUT_vector[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \SROUT_count_reg_n_0_[2]\,
      I1 => \SROUT_count_reg_n_0_[1]\,
      I2 => \SROUT_count_reg_n_0_[3]\,
      O => \SROUT_vector[8]_i_2_n_0\
    );
\SROUT_vector[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBBBBBA8888888"
    )
        port map (
      I0 => \SROUT_vector[3]_i_2_n_0\,
      I1 => \^out\(8),
      I2 => \SROUT_count_reg_n_0_[0]\,
      I3 => \SROUT_count[3]_i_3_n_0\,
      I4 => \SROUT_vector[8]_i_2_n_0\,
      I5 => SROUT_vector(9),
      O => \SROUT_vector[9]_i_1_n_0\
    );
\SROUT_vector_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[0]_i_1_n_0\,
      Q => SROUT_vector(0)
    );
\SROUT_vector_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[1]_i_1_n_0\,
      Q => SROUT_vector(1)
    );
\SROUT_vector_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[2]_i_1_n_0\,
      Q => SROUT_vector(2)
    );
\SROUT_vector_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[3]_i_1_n_0\,
      Q => SROUT_vector(3)
    );
\SROUT_vector_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[4]_i_1_n_0\,
      Q => SROUT_vector(4)
    );
\SROUT_vector_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[5]_i_1_n_0\,
      Q => SROUT_vector(5)
    );
\SROUT_vector_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[6]_i_1_n_0\,
      Q => SROUT_vector(6)
    );
\SROUT_vector_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[7]_i_1_n_0\,
      Q => SROUT_vector(7)
    );
\SROUT_vector_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[8]_i_1_n_0\,
      Q => SROUT_vector(8)
    );
\SROUT_vector_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \SROUT_vector[9]_i_1_n_0\,
      Q => SROUT_vector(9)
    );
\count_refclk[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_refclk_reg__0\(0),
      I1 => \^count_refclk_reg[6]_0\,
      O => p_0_in(0)
    );
\count_refclk[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \count_refclk_reg__0\(1),
      I1 => \count_refclk_reg__0\(0),
      I2 => \^count_refclk_reg[6]_0\,
      O => p_0_in(1)
    );
\count_refclk[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \count_refclk_reg__0\(0),
      I1 => \count_refclk_reg__0\(1),
      I2 => \count_refclk_reg__0\(2),
      I3 => \^count_refclk_reg[6]_0\,
      O => p_0_in(2)
    );
\count_refclk[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \count_refclk_reg__0\(1),
      I1 => \count_refclk_reg__0\(0),
      I2 => \count_refclk_reg__0\(2),
      I3 => \count_refclk_reg__0\(3),
      I4 => \^count_refclk_reg[6]_0\,
      O => p_0_in(3)
    );
\count_refclk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \^count_refclk_reg[6]_0\,
      I1 => \count_refclk_reg__0\(2),
      I2 => \count_refclk_reg__0\(0),
      I3 => \count_refclk_reg__0\(1),
      I4 => \count_refclk_reg__0\(3),
      I5 => \count_refclk_reg__0\(4),
      O => p_0_in(4)
    );
\count_refclk[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \count_refclk[6]_i_3_n_0\,
      I1 => \count_refclk_reg__0\(5),
      I2 => \^count_refclk_reg[6]_0\,
      O => p_0_in(5)
    );
\count_refclk[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^out\(6),
      I2 => \^out\(5),
      O => \^e\(0)
    );
\count_refclk[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \count_refclk[6]_i_3_n_0\,
      I1 => \count_refclk_reg__0\(5),
      I2 => \count_refclk_reg__0\(6),
      I3 => \^count_refclk_reg[6]_0\,
      O => p_0_in(6)
    );
\count_refclk[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \count_refclk_reg__0\(4),
      I1 => \count_refclk_reg__0\(3),
      I2 => \count_refclk_reg__0\(1),
      I3 => \count_refclk_reg__0\(0),
      I4 => \count_refclk_reg__0\(2),
      O => \count_refclk[6]_i_3_n_0\
    );
\count_refclk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \^e\(0),
      CLR => axi_rst,
      D => p_0_in(0),
      Q => \count_refclk_reg__0\(0)
    );
\count_refclk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \^e\(0),
      CLR => axi_rst,
      D => p_0_in(1),
      Q => \count_refclk_reg__0\(1)
    );
\count_refclk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \^e\(0),
      CLR => axi_rst,
      D => p_0_in(2),
      Q => \count_refclk_reg__0\(2)
    );
\count_refclk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \^e\(0),
      CLR => axi_rst,
      D => p_0_in(3),
      Q => \count_refclk_reg__0\(3)
    );
\count_refclk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \^e\(0),
      CLR => axi_rst,
      D => p_0_in(4),
      Q => \count_refclk_reg__0\(4)
    );
\count_refclk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \^e\(0),
      CLR => axi_rst,
      D => p_0_in(5),
      Q => \count_refclk_reg__0\(5)
    );
\count_refclk_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \^e\(0),
      CLR => axi_rst,
      D => p_0_in(6),
      Q => \count_refclk_reg__0\(6)
    );
\counter_init[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[0]_i_1_n_0\
    );
\counter_init[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[12]_i_2_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[10]_i_1_n_0\
    );
\counter_init[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[12]_i_2_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[11]_i_1_n_0\
    );
\counter_init[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[12]_i_2_n_4\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[12]_i_1_n_0\
    );
\counter_init[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[16]_i_2_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[13]_i_1_n_0\
    );
\counter_init[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[16]_i_2_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[14]_i_1_n_0\
    );
\counter_init[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[16]_i_2_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[15]_i_1_n_0\
    );
\counter_init[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[16]_i_2_n_4\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[16]_i_1_n_0\
    );
\counter_init[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[20]_i_2_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[17]_i_1_n_0\
    );
\counter_init[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[20]_i_2_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[18]_i_1_n_0\
    );
\counter_init[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[20]_i_2_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[19]_i_1_n_0\
    );
\counter_init[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[4]_i_2_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[1]_i_1_n_0\
    );
\counter_init[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[20]_i_2_n_4\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[20]_i_1_n_0\
    );
\counter_init[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[24]_i_2_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[21]_i_1_n_0\
    );
\counter_init[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[24]_i_2_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[22]_i_1_n_0\
    );
\counter_init[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[24]_i_2_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[23]_i_1_n_0\
    );
\counter_init[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[24]_i_2_n_4\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[24]_i_1_n_0\
    );
\counter_init[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[28]_i_2_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[25]_i_1_n_0\
    );
\counter_init[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[28]_i_2_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[26]_i_1_n_0\
    );
\counter_init[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[28]_i_2_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[27]_i_1_n_0\
    );
\counter_init[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[28]_i_2_n_4\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[28]_i_1_n_0\
    );
\counter_init[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[31]_i_8_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[29]_i_1_n_0\
    );
\counter_init[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[4]_i_2_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[2]_i_1_n_0\
    );
\counter_init[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[31]_i_8_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[30]_i_1_n_0\
    );
\counter_init[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_drs4_states_reg_n_0_[0]\,
      I1 => \counter_init[31]_i_2_n_0\,
      O => \counter_init[31]_i_1_n_0\
    );
\counter_init[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7070FF70"
    )
        port map (
      I0 => \^o_srclk_adc\,
      I1 => drs4_states1,
      I2 => \^out\(11),
      I3 => \^out\(0),
      I4 => \srclk_o0_carry__2_n_0\,
      I5 => \^out\(3),
      O => \counter_init[31]_i_10_n_0\
    );
\counter_init[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5545554555555545"
    )
        port map (
      I0 => axi_rst,
      I1 => \counter_init[31]_i_4_n_0\,
      I2 => \counter_init[31]_i_5_n_0\,
      I3 => \counter_init[31]_i_6_n_0\,
      I4 => \^out\(8),
      I5 => \counter_init[31]_i_7_n_0\,
      O => \counter_init[31]_i_2_n_0\
    );
\counter_init[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[31]_i_8_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[31]_i_3_n_0\
    );
\counter_init[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^drs_sr_count_reg[10]_0\,
      O => \counter_init[31]_i_4_n_0\
    );
\counter_init[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_drs4_states_reg_n_0_[16]\,
      I1 => \^out\(10),
      I2 => \^out\(6),
      I3 => \^out\(7),
      I4 => rsrload_o_i_12_n_0,
      O => \counter_init[31]_i_5_n_0\
    );
\counter_init[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^out\(4),
      I1 => \^out\(3),
      I2 => \^out\(0),
      I3 => \^out\(11),
      O => \counter_init[31]_i_6_n_0\
    );
\counter_init[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CONF_REG_start,
      I1 => start_ROI,
      O => \counter_init[31]_i_7_n_0\
    );
\counter_init[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000555D"
    )
        port map (
      I0 => \^out\(7),
      I1 => \FSM_onehot_drs4_states[4]_i_2_n_0\,
      I2 => \FSM_onehot_drs4_states[4]_i_3_n_0\,
      I3 => \FSM_onehot_drs4_states[16]_i_7_n_0\,
      I4 => \counter_init[31]_i_10_n_0\,
      I5 => \FSM_onehot_drs4_states[1]_i_2_n_0\,
      O => \counter_init[31]_i_9_n_0\
    );
\counter_init[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[4]_i_2_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[3]_i_1_n_0\
    );
\counter_init[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[4]_i_2_n_4\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[4]_i_1_n_0\
    );
\counter_init[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[8]_i_2_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[5]_i_1_n_0\
    );
\counter_init[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[8]_i_2_n_6\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[6]_i_1_n_0\
    );
\counter_init[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[8]_i_2_n_5\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[7]_i_1_n_0\
    );
\counter_init[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[8]_i_2_n_4\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[8]_i_1_n_0\
    );
\counter_init[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg[12]_i_2_n_7\,
      I1 => \counter_init[31]_i_9_n_0\,
      O => \counter_init[9]_i_1_n_0\
    );
\counter_init_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[0]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[0]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[10]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[10]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[11]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[11]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[12]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[12]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_init_reg[8]_i_2_n_0\,
      CO(3) => \counter_init_reg[12]_i_2_n_0\,
      CO(2) => \counter_init_reg[12]_i_2_n_1\,
      CO(1) => \counter_init_reg[12]_i_2_n_2\,
      CO(0) => \counter_init_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_init_reg[12]_i_2_n_4\,
      O(2) => \counter_init_reg[12]_i_2_n_5\,
      O(1) => \counter_init_reg[12]_i_2_n_6\,
      O(0) => \counter_init_reg[12]_i_2_n_7\,
      S(3) => \counter_init_reg_n_0_[12]\,
      S(2) => \counter_init_reg_n_0_[11]\,
      S(1) => \counter_init_reg_n_0_[10]\,
      S(0) => \counter_init_reg_n_0_[9]\
    );
\counter_init_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[13]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[13]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[14]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[14]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[15]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[15]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[16]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[16]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_init_reg[12]_i_2_n_0\,
      CO(3) => \counter_init_reg[16]_i_2_n_0\,
      CO(2) => \counter_init_reg[16]_i_2_n_1\,
      CO(1) => \counter_init_reg[16]_i_2_n_2\,
      CO(0) => \counter_init_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_init_reg[16]_i_2_n_4\,
      O(2) => \counter_init_reg[16]_i_2_n_5\,
      O(1) => \counter_init_reg[16]_i_2_n_6\,
      O(0) => \counter_init_reg[16]_i_2_n_7\,
      S(3) => \counter_init_reg_n_0_[16]\,
      S(2) => \counter_init_reg_n_0_[15]\,
      S(1) => \counter_init_reg_n_0_[14]\,
      S(0) => \counter_init_reg_n_0_[13]\
    );
\counter_init_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[17]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[17]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[18]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[18]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[19]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[19]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[1]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[1]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[20]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[20]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_init_reg[16]_i_2_n_0\,
      CO(3) => \counter_init_reg[20]_i_2_n_0\,
      CO(2) => \counter_init_reg[20]_i_2_n_1\,
      CO(1) => \counter_init_reg[20]_i_2_n_2\,
      CO(0) => \counter_init_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_init_reg[20]_i_2_n_4\,
      O(2) => \counter_init_reg[20]_i_2_n_5\,
      O(1) => \counter_init_reg[20]_i_2_n_6\,
      O(0) => \counter_init_reg[20]_i_2_n_7\,
      S(3) => \counter_init_reg_n_0_[20]\,
      S(2) => \counter_init_reg_n_0_[19]\,
      S(1) => \counter_init_reg_n_0_[18]\,
      S(0) => \counter_init_reg_n_0_[17]\
    );
\counter_init_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[21]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[21]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[22]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[22]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[23]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[23]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[24]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[24]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_init_reg[20]_i_2_n_0\,
      CO(3) => \counter_init_reg[24]_i_2_n_0\,
      CO(2) => \counter_init_reg[24]_i_2_n_1\,
      CO(1) => \counter_init_reg[24]_i_2_n_2\,
      CO(0) => \counter_init_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_init_reg[24]_i_2_n_4\,
      O(2) => \counter_init_reg[24]_i_2_n_5\,
      O(1) => \counter_init_reg[24]_i_2_n_6\,
      O(0) => \counter_init_reg[24]_i_2_n_7\,
      S(3) => \counter_init_reg_n_0_[24]\,
      S(2) => \counter_init_reg_n_0_[23]\,
      S(1) => \counter_init_reg_n_0_[22]\,
      S(0) => \counter_init_reg_n_0_[21]\
    );
\counter_init_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[25]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[25]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[26]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[26]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[27]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[27]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[28]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[28]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_init_reg[24]_i_2_n_0\,
      CO(3) => \counter_init_reg[28]_i_2_n_0\,
      CO(2) => \counter_init_reg[28]_i_2_n_1\,
      CO(1) => \counter_init_reg[28]_i_2_n_2\,
      CO(0) => \counter_init_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_init_reg[28]_i_2_n_4\,
      O(2) => \counter_init_reg[28]_i_2_n_5\,
      O(1) => \counter_init_reg[28]_i_2_n_6\,
      O(0) => \counter_init_reg[28]_i_2_n_7\,
      S(3) => \counter_init_reg_n_0_[28]\,
      S(2) => \counter_init_reg_n_0_[27]\,
      S(1) => \counter_init_reg_n_0_[26]\,
      S(0) => \counter_init_reg_n_0_[25]\
    );
\counter_init_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[29]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[29]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[2]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[2]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[30]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[30]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[31]_i_3_n_0\,
      Q => \counter_init_reg_n_0_[31]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[31]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_init_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_counter_init_reg[31]_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_init_reg[31]_i_8_n_2\,
      CO(0) => \counter_init_reg[31]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_init_reg[31]_i_8_O_UNCONNECTED\(3),
      O(2) => \counter_init_reg[31]_i_8_n_5\,
      O(1) => \counter_init_reg[31]_i_8_n_6\,
      O(0) => \counter_init_reg[31]_i_8_n_7\,
      S(3) => '0',
      S(2) => \counter_init_reg_n_0_[31]\,
      S(1) => \counter_init_reg_n_0_[30]\,
      S(0) => \counter_init_reg_n_0_[29]\
    );
\counter_init_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[3]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[3]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[4]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[4]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_init_reg[4]_i_2_n_0\,
      CO(2) => \counter_init_reg[4]_i_2_n_1\,
      CO(1) => \counter_init_reg[4]_i_2_n_2\,
      CO(0) => \counter_init_reg[4]_i_2_n_3\,
      CYINIT => \counter_init_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \counter_init_reg[4]_i_2_n_4\,
      O(2) => \counter_init_reg[4]_i_2_n_5\,
      O(1) => \counter_init_reg[4]_i_2_n_6\,
      O(0) => \counter_init_reg[4]_i_2_n_7\,
      S(3) => \counter_init_reg_n_0_[4]\,
      S(2) => \counter_init_reg_n_0_[3]\,
      S(1) => \counter_init_reg_n_0_[2]\,
      S(0) => \counter_init_reg_n_0_[1]\
    );
\counter_init_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[5]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[5]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[6]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[6]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[7]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[7]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[8]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[8]\,
      S => \counter_init[31]_i_1_n_0\
    );
\counter_init_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_init_reg[4]_i_2_n_0\,
      CO(3) => \counter_init_reg[8]_i_2_n_0\,
      CO(2) => \counter_init_reg[8]_i_2_n_1\,
      CO(1) => \counter_init_reg[8]_i_2_n_2\,
      CO(0) => \counter_init_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_init_reg[8]_i_2_n_4\,
      O(2) => \counter_init_reg[8]_i_2_n_5\,
      O(1) => \counter_init_reg[8]_i_2_n_6\,
      O(0) => \counter_init_reg[8]_i_2_n_7\,
      S(3) => \counter_init_reg_n_0_[8]\,
      S(2) => \counter_init_reg_n_0_[7]\,
      S(1) => \counter_init_reg_n_0_[6]\,
      S(0) => \counter_init_reg_n_0_[5]\
    );
\counter_init_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk_drs4,
      CE => \counter_init[31]_i_2_n_0\,
      D => \counter_init[9]_i_1_n_0\,
      Q => \counter_init_reg_n_0_[9]\,
      S => \counter_init[31]_i_1_n_0\
    );
denable_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states_reg[9]_0\,
      Q => o_denable
    );
\drs4_states0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \drs4_states0_inferred__0/i__carry_n_0\,
      CO(2) => \drs4_states0_inferred__0/i__carry_n_1\,
      CO(1) => \drs4_states0_inferred__0/i__carry_n_2\,
      CO(0) => \drs4_states0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_drs4_states0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
drs4_trigs_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(13),
      O => drs4_trigs0
    );
drs4_trigs_reg: unisim.vcomponents.FDCE
     port map (
      C => i_drs4_trigger,
      CE => drs4_trigs0,
      CLR => \^drs4_trigs_reg_0\,
      D => drs4_trigs0,
      Q => trig_delay(0)
    );
\drs_sr_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \drs_sr_count[8]_i_3_n_0\,
      I1 => \drs_sr_count[10]_i_2_n_0\,
      I2 => \drs_sr_count_reg_n_0_[0]\,
      O => \drs_sr_count[0]_i_1_n_0\
    );
\drs_sr_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \drs_sr_count[10]_i_2_n_0\,
      I1 => \drs_sr_count[10]_i_4_n_0\,
      I2 => \FSM_onehot_drs4_states[1]_i_2_n_0\,
      O => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count[10]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \drs_sr_count[10]_i_11_n_0\
    );
\drs_sr_count[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      O => \drs_sr_count[10]_i_12_n_0\
    );
\drs_sr_count[10]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[26]\,
      I1 => \counter_init_reg_n_0_[27]\,
      O => \drs_sr_count[10]_i_13_n_0\
    );
\drs_sr_count[10]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      O => \drs_sr_count[10]_i_14_n_0\
    );
\drs_sr_count[10]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \drs_sr_count[10]_i_15_n_0\
    );
\drs_sr_count[10]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[28]\,
      I1 => \counter_init_reg_n_0_[29]\,
      O => \drs_sr_count[10]_i_16_n_0\
    );
\drs_sr_count[10]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[27]\,
      I1 => \counter_init_reg_n_0_[26]\,
      O => \drs_sr_count[10]_i_17_n_0\
    );
\drs_sr_count[10]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[24]\,
      I1 => \counter_init_reg_n_0_[25]\,
      O => \drs_sr_count[10]_i_18_n_0\
    );
\drs_sr_count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555551055555555"
    )
        port map (
      I0 => axi_rst,
      I1 => \^drs_sr_count_reg[10]_0\,
      I2 => \^out\(9),
      I3 => \drs_sr_count[10]_i_5_n_0\,
      I4 => \drs_sr_count[10]_i_6_n_0\,
      I5 => \drs_sr_count[10]_i_7_n_0\,
      O => \drs_sr_count[10]_i_2_n_0\
    );
\drs_sr_count[10]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[23]\,
      I1 => \counter_init_reg_n_0_[22]\,
      O => \drs_sr_count[10]_i_20_n_0\
    );
\drs_sr_count[10]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[20]\,
      O => \drs_sr_count[10]_i_21_n_0\
    );
\drs_sr_count[10]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[19]\,
      I1 => \counter_init_reg_n_0_[18]\,
      O => \drs_sr_count[10]_i_22_n_0\
    );
\drs_sr_count[10]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[17]\,
      I1 => \counter_init_reg_n_0_[16]\,
      O => \drs_sr_count[10]_i_23_n_0\
    );
\drs_sr_count[10]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[22]\,
      I1 => \counter_init_reg_n_0_[23]\,
      O => \drs_sr_count[10]_i_24_n_0\
    );
\drs_sr_count[10]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[21]\,
      O => \drs_sr_count[10]_i_25_n_0\
    );
\drs_sr_count[10]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[18]\,
      I1 => \counter_init_reg_n_0_[19]\,
      O => \drs_sr_count[10]_i_26_n_0\
    );
\drs_sr_count[10]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[16]\,
      I1 => \counter_init_reg_n_0_[17]\,
      O => \drs_sr_count[10]_i_27_n_0\
    );
\drs_sr_count[10]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[14]\,
      O => \drs_sr_count[10]_i_29_n_0\
    );
\drs_sr_count[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[10]\,
      I1 => \drs_sr_count_reg_n_0_[9]\,
      I2 => \FSM_onehot_drs4_states[8]_i_2_n_0\,
      O => \drs_sr_count[10]_i_3_n_0\
    );
\drs_sr_count[10]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      O => \drs_sr_count[10]_i_30_n_0\
    );
\drs_sr_count[10]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      O => \drs_sr_count[10]_i_31_n_0\
    );
\drs_sr_count[10]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[9]\,
      I1 => \counter_init_reg_n_0_[8]\,
      O => \drs_sr_count[10]_i_32_n_0\
    );
\drs_sr_count[10]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[14]\,
      I1 => \counter_init_reg_n_0_[15]\,
      O => \drs_sr_count[10]_i_33_n_0\
    );
\drs_sr_count[10]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[12]\,
      I1 => \counter_init_reg_n_0_[13]\,
      O => \drs_sr_count[10]_i_34_n_0\
    );
\drs_sr_count[10]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[10]\,
      I1 => \counter_init_reg_n_0_[11]\,
      O => \drs_sr_count[10]_i_35_n_0\
    );
\drs_sr_count[10]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[8]\,
      I1 => \counter_init_reg_n_0_[9]\,
      O => \drs_sr_count[10]_i_36_n_0\
    );
\drs_sr_count[10]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      O => \drs_sr_count[10]_i_37_n_0\
    );
\drs_sr_count[10]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[5]\,
      I1 => \counter_init_reg_n_0_[4]\,
      O => \drs_sr_count[10]_i_38_n_0\
    );
\drs_sr_count[10]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[6]\,
      I1 => \counter_init_reg_n_0_[7]\,
      O => \drs_sr_count[10]_i_39_n_0\
    );
\drs_sr_count[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^drs_sr_count_reg[10]_0\,
      I1 => \^out\(9),
      I2 => \^o_srclk\,
      I3 => \^out\(12),
      I4 => \^out\(2),
      O => \drs_sr_count[10]_i_4_n_0\
    );
\drs_sr_count[10]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[4]\,
      I1 => \counter_init_reg_n_0_[5]\,
      O => \drs_sr_count[10]_i_40_n_0\
    );
\drs_sr_count[10]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[2]\,
      I1 => \counter_init_reg_n_0_[3]\,
      O => \drs_sr_count[10]_i_41_n_0\
    );
\drs_sr_count[10]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init_reg_n_0_[1]\,
      O => \drs_sr_count[10]_i_42_n_0\
    );
\drs_sr_count[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4F4F4"
    )
        port map (
      I0 => rsrload_o_i_11_n_0,
      I1 => \^o_srclk\,
      I2 => \drs_sr_count[10]_i_8_n_0\,
      I3 => \^out\(11),
      I4 => drs4_states1,
      I5 => \^o_srclk_adc\,
      O => \drs_sr_count[10]_i_5_n_0\
    );
\drs_sr_count[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFCFC"
    )
        port map (
      I0 => \drs4_states0_inferred__0/i__carry_n_0\,
      I1 => \^out\(8),
      I2 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I3 => \^o_srclk\,
      I4 => \^out\(12),
      O => \drs_sr_count[10]_i_6_n_0\
    );
\drs_sr_count[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7FFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[8]_i_2_n_0\,
      I1 => \drs_sr_count_reg_n_0_[9]\,
      I2 => \drs_sr_count_reg_n_0_[10]\,
      I3 => \^o_srclk\,
      I4 => \^out\(0),
      I5 => \srclk_o0_carry__2_n_0\,
      O => \drs_sr_count[10]_i_7_n_0\
    );
\drs_sr_count[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => RSR_init_start,
      I1 => \^out\(5),
      I2 => dwrite_o_reg_LDC_n_0,
      I3 => dwrite_o_reg_P_n_0,
      I4 => \^out\(1),
      O => \drs_sr_count[10]_i_8_n_0\
    );
\drs_sr_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[0]\,
      I1 => \drs_sr_count_reg_n_0_[1]\,
      O => \drs_sr_count[1]_i_1_n_0\
    );
\drs_sr_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[2]\,
      I1 => \drs_sr_count_reg_n_0_[1]\,
      I2 => \drs_sr_count_reg_n_0_[0]\,
      O => \drs_sr_count[2]_i_1_n_0\
    );
\drs_sr_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[3]\,
      I1 => \drs_sr_count_reg_n_0_[2]\,
      I2 => \drs_sr_count_reg_n_0_[0]\,
      I3 => \drs_sr_count_reg_n_0_[1]\,
      O => \drs_sr_count[3]_i_1_n_0\
    );
\drs_sr_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[4]\,
      I1 => \drs_sr_count_reg_n_0_[2]\,
      I2 => \drs_sr_count_reg_n_0_[3]\,
      I3 => \drs_sr_count_reg_n_0_[0]\,
      I4 => \drs_sr_count_reg_n_0_[1]\,
      O => \drs_sr_count[4]_i_1_n_0\
    );
\drs_sr_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[5]\,
      I1 => \drs_sr_count_reg_n_0_[1]\,
      I2 => \drs_sr_count_reg_n_0_[0]\,
      I3 => \drs_sr_count_reg_n_0_[3]\,
      I4 => \drs_sr_count_reg_n_0_[2]\,
      I5 => \drs_sr_count_reg_n_0_[4]\,
      O => \drs_sr_count[5]_i_1_n_0\
    );
\drs_sr_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[6]\,
      I1 => \drs_sr_count[9]_i_2_n_0\,
      I2 => \drs_sr_count_reg_n_0_[5]\,
      O => \drs_sr_count[6]_i_1_n_0\
    );
\drs_sr_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[7]\,
      I1 => \drs_sr_count_reg_n_0_[6]\,
      I2 => \drs_sr_count_reg_n_0_[5]\,
      I3 => \drs_sr_count[9]_i_2_n_0\,
      O => \drs_sr_count[7]_i_1_n_0\
    );
\drs_sr_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F10"
    )
        port map (
      I0 => \drs_sr_count[8]_i_2_n_0\,
      I1 => \drs_sr_count[8]_i_3_n_0\,
      I2 => \drs_sr_count[10]_i_2_n_0\,
      I3 => \drs_sr_count_reg_n_0_[8]\,
      O => \drs_sr_count[8]_i_1_n_0\
    );
\drs_sr_count[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \drs_sr_count[9]_i_2_n_0\,
      I1 => \drs_sr_count_reg_n_0_[7]\,
      I2 => \drs_sr_count_reg_n_0_[5]\,
      I3 => \drs_sr_count_reg_n_0_[6]\,
      O => \drs_sr_count[8]_i_2_n_0\
    );
\drs_sr_count[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011101110111"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(2),
      I2 => \^out\(12),
      I3 => \^o_srclk\,
      I4 => \^out\(9),
      I5 => \^drs_sr_count_reg[10]_0\,
      O => \drs_sr_count[8]_i_3_n_0\
    );
\drs_sr_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[9]\,
      I1 => \drs_sr_count[9]_i_2_n_0\,
      I2 => \drs_sr_count_reg_n_0_[7]\,
      I3 => \drs_sr_count_reg_n_0_[5]\,
      I4 => \drs_sr_count_reg_n_0_[6]\,
      I5 => \drs_sr_count_reg_n_0_[8]\,
      O => \drs_sr_count[9]_i_1_n_0\
    );
\drs_sr_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[4]\,
      I1 => \drs_sr_count_reg_n_0_[2]\,
      I2 => \drs_sr_count_reg_n_0_[3]\,
      I3 => \drs_sr_count_reg_n_0_[0]\,
      I4 => \drs_sr_count_reg_n_0_[1]\,
      O => \drs_sr_count[9]_i_2_n_0\
    );
\drs_sr_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => '1',
      D => \drs_sr_count[0]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[0]\,
      R => '0'
    );
\drs_sr_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[10]_i_3_n_0\,
      Q => \drs_sr_count_reg_n_0_[10]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[10]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \drs_sr_count_reg[10]_i_19_n_0\,
      CO(3) => \drs_sr_count_reg[10]_i_10_n_0\,
      CO(2) => \drs_sr_count_reg[10]_i_10_n_1\,
      CO(1) => \drs_sr_count_reg[10]_i_10_n_2\,
      CO(0) => \drs_sr_count_reg[10]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \drs_sr_count[10]_i_20_n_0\,
      DI(2) => \drs_sr_count[10]_i_21_n_0\,
      DI(1) => \drs_sr_count[10]_i_22_n_0\,
      DI(0) => \drs_sr_count[10]_i_23_n_0\,
      O(3 downto 0) => \NLW_drs_sr_count_reg[10]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \drs_sr_count[10]_i_24_n_0\,
      S(2) => \drs_sr_count[10]_i_25_n_0\,
      S(1) => \drs_sr_count[10]_i_26_n_0\,
      S(0) => \drs_sr_count[10]_i_27_n_0\
    );
\drs_sr_count_reg[10]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \drs_sr_count_reg[10]_i_28_n_0\,
      CO(3) => \drs_sr_count_reg[10]_i_19_n_0\,
      CO(2) => \drs_sr_count_reg[10]_i_19_n_1\,
      CO(1) => \drs_sr_count_reg[10]_i_19_n_2\,
      CO(0) => \drs_sr_count_reg[10]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \drs_sr_count[10]_i_29_n_0\,
      DI(2) => \drs_sr_count[10]_i_30_n_0\,
      DI(1) => \drs_sr_count[10]_i_31_n_0\,
      DI(0) => \drs_sr_count[10]_i_32_n_0\,
      O(3 downto 0) => \NLW_drs_sr_count_reg[10]_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \drs_sr_count[10]_i_33_n_0\,
      S(2) => \drs_sr_count[10]_i_34_n_0\,
      S(1) => \drs_sr_count[10]_i_35_n_0\,
      S(0) => \drs_sr_count[10]_i_36_n_0\
    );
\drs_sr_count_reg[10]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \drs_sr_count_reg[10]_i_28_n_0\,
      CO(2) => \drs_sr_count_reg[10]_i_28_n_1\,
      CO(1) => \drs_sr_count_reg[10]_i_28_n_2\,
      CO(0) => \drs_sr_count_reg[10]_i_28_n_3\,
      CYINIT => '0',
      DI(3) => \drs_sr_count[10]_i_37_n_0\,
      DI(2) => \drs_sr_count[10]_i_38_n_0\,
      DI(1) => \counter_init_reg_n_0_[3]\,
      DI(0) => \counter_init_reg_n_0_[1]\,
      O(3 downto 0) => \NLW_drs_sr_count_reg[10]_i_28_O_UNCONNECTED\(3 downto 0),
      S(3) => \drs_sr_count[10]_i_39_n_0\,
      S(2) => \drs_sr_count[10]_i_40_n_0\,
      S(1) => \drs_sr_count[10]_i_41_n_0\,
      S(0) => \drs_sr_count[10]_i_42_n_0\
    );
\drs_sr_count_reg[10]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \drs_sr_count_reg[10]_i_10_n_0\,
      CO(3) => drs4_states1,
      CO(2) => \drs_sr_count_reg[10]_i_9_n_1\,
      CO(1) => \drs_sr_count_reg[10]_i_9_n_2\,
      CO(0) => \drs_sr_count_reg[10]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => \drs_sr_count[10]_i_11_n_0\,
      DI(2) => \drs_sr_count[10]_i_12_n_0\,
      DI(1) => \drs_sr_count[10]_i_13_n_0\,
      DI(0) => \drs_sr_count[10]_i_14_n_0\,
      O(3 downto 0) => \NLW_drs_sr_count_reg[10]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \drs_sr_count[10]_i_15_n_0\,
      S(2) => \drs_sr_count[10]_i_16_n_0\,
      S(1) => \drs_sr_count[10]_i_17_n_0\,
      S(0) => \drs_sr_count[10]_i_18_n_0\
    );
\drs_sr_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[1]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[1]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[2]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[2]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[3]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[3]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[4]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[4]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[5]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[5]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[6]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[6]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[7]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[7]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\drs_sr_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => '1',
      D => \drs_sr_count[8]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[8]\,
      R => '0'
    );
\drs_sr_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => \drs_sr_count[10]_i_2_n_0\,
      D => \drs_sr_count[9]_i_1_n_0\,
      Q => \drs_sr_count_reg_n_0_[9]\,
      R => \drs_sr_count[10]_i_1_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_100\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1048),
      I1 => trig_delay(1040),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1032),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1024),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_100_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1080),
      I1 => trig_delay(1072),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1064),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1056),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_101_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_102\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1112),
      I1 => trig_delay(1104),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1096),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1088),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_102_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_103\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1144),
      I1 => trig_delay(1136),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1128),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1120),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_103_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_104\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1944),
      I1 => trig_delay(1936),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1928),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1920),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_104_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_105\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1976),
      I1 => trig_delay(1968),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1960),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1952),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_105_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_106\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(2008),
      I1 => trig_delay(2000),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1992),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1984),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_106_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_107\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(2040),
      I1 => trig_delay(2032),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(2024),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(2016),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_107_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_108\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1816),
      I1 => trig_delay(1808),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1800),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1792),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_108_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_109\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1848),
      I1 => trig_delay(1840),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1832),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1824),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_109_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_110\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1880),
      I1 => trig_delay(1872),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1864),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1856),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_110_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_111\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1912),
      I1 => trig_delay(1904),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1896),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1888),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_111_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_112\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1688),
      I1 => trig_delay(1680),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1672),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1664),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_112_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_113\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1720),
      I1 => trig_delay(1712),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1704),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1696),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_113_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_114\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1752),
      I1 => trig_delay(1744),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1736),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1728),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_114_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_115\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1784),
      I1 => trig_delay(1776),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1768),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1760),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_115_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_116\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1560),
      I1 => trig_delay(1552),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1544),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1536),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_116_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_117\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1592),
      I1 => trig_delay(1584),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1576),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1568),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_117_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_118\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1624),
      I1 => trig_delay(1616),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1608),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1600),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_118_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_119\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1656),
      I1 => trig_delay(1648),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1640),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1632),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_119_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_8_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_9_n_0\,
      I2 => \trigger_delay_count_axi_reg[7]\(5),
      I3 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_10_n_0\,
      I4 => \trigger_delay_count_axi_reg[7]\(4),
      I5 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_11_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_4_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_12_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_13_n_0\,
      I2 => \trigger_delay_count_axi_reg[7]\(5),
      I3 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_14_n_0\,
      I4 => \trigger_delay_count_axi_reg[7]\(4),
      I5 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_15_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_5_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(408),
      I1 => trig_delay(400),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(392),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(384),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_56_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(440),
      I1 => trig_delay(432),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(424),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(416),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_57_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(472),
      I1 => trig_delay(464),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(456),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(448),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_58_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(504),
      I1 => trig_delay(496),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(488),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(480),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_59_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_16_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_17_n_0\,
      I2 => \trigger_delay_count_axi_reg[7]\(5),
      I3 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_18_n_0\,
      I4 => \trigger_delay_count_axi_reg[7]\(4),
      I5 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_19_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_6_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(280),
      I1 => trig_delay(272),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(264),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(256),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_60_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(312),
      I1 => trig_delay(304),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(296),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(288),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_61_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(344),
      I1 => trig_delay(336),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(328),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(320),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_62_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(376),
      I1 => trig_delay(368),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(360),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(352),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_63_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(152),
      I1 => trig_delay(144),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(136),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(128),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_64_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(184),
      I1 => trig_delay(176),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(168),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(160),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_65_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(216),
      I1 => trig_delay(208),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(200),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(192),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_66_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(248),
      I1 => trig_delay(240),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(232),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(224),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_67_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(24),
      I1 => trig_delay(16),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(8),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(0),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_68_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(56),
      I1 => trig_delay(48),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(40),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(32),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_69_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_20_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_21_n_0\,
      I2 => \trigger_delay_count_axi_reg[7]\(5),
      I3 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_22_n_0\,
      I4 => \trigger_delay_count_axi_reg[7]\(4),
      I5 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_23_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_7_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(88),
      I1 => trig_delay(80),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(72),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(64),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_70_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(120),
      I1 => trig_delay(112),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(104),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(96),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_71_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(920),
      I1 => trig_delay(912),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(904),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(896),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_72_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(952),
      I1 => trig_delay(944),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(936),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(928),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_73_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(984),
      I1 => trig_delay(976),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(968),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(960),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_74_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1016),
      I1 => trig_delay(1008),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1000),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(992),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_75_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(792),
      I1 => trig_delay(784),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(776),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(768),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_76_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(824),
      I1 => trig_delay(816),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(808),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(800),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_77_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(856),
      I1 => trig_delay(848),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(840),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(832),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_78_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(888),
      I1 => trig_delay(880),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(872),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(864),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_79_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(664),
      I1 => trig_delay(656),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(648),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(640),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_80_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(696),
      I1 => trig_delay(688),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(680),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(672),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_81_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(728),
      I1 => trig_delay(720),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(712),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(704),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_82_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(760),
      I1 => trig_delay(752),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(744),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(736),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_83_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(536),
      I1 => trig_delay(528),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(520),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(512),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_84_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(568),
      I1 => trig_delay(560),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(552),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(544),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_85_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(600),
      I1 => trig_delay(592),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(584),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(576),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_86_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(632),
      I1 => trig_delay(624),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(616),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(608),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_87_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1432),
      I1 => trig_delay(1424),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1416),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1408),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_88_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1464),
      I1 => trig_delay(1456),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1448),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1440),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_89_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_90\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1496),
      I1 => trig_delay(1488),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1480),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1472),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_90_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_91\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1528),
      I1 => trig_delay(1520),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1512),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1504),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_91_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_92\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1304),
      I1 => trig_delay(1296),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1288),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1280),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_92_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_93\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1336),
      I1 => trig_delay(1328),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1320),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1312),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_93_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_94\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1368),
      I1 => trig_delay(1360),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1352),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1344),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_94_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_95\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1400),
      I1 => trig_delay(1392),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1384),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1376),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_95_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_96\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1176),
      I1 => trig_delay(1168),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1160),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1152),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_96_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_97\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1208),
      I1 => trig_delay(1200),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1192),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1184),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_97_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_98\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1240),
      I1 => trig_delay(1232),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1224),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1216),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_98_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_P_i_99\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => trig_delay(1272),
      I1 => trig_delay(1264),
      I2 => \trigger_delay_count_axi_reg[7]\(1),
      I3 => trig_delay(1256),
      I4 => \trigger_delay_count_axi_reg[7]\(0),
      I5 => trig_delay(1248),
      O => \dwrite_o0_inferred__0/dwrite_o_P_i_99_n_0\
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_2_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_3_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_1_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(7)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_28_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_29_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_10_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_30_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_31_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_11_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_32_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_33_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_12_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_34_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_35_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_13_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_36_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_37_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_14_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_38_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_39_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_15_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_40_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_41_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_16_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_42_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_43_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_17_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_18\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_44_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_45_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_18_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_46_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_47_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_19_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_4_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_5_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_2_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(6)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_48_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_49_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_20_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_21\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_50_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_51_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_21_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_22\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_52_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_53_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_22_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_23\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_54_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_55_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_23_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_56_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_57_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_24_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_58_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_59_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_25_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_60_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_61_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_26_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_62_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_63_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_27_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_64_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_65_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_28_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_66_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_67_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_29_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_6_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_7_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_3_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(6)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_68_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_69_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_30_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_70_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_71_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_31_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_72_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_73_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_32_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_74_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_75_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_33_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_76_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_77_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_34_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_78_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_79_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_35_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_80_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_81_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_36_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_82_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_83_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_37_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_84_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_85_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_38_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_86_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_87_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_39_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_88_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_89_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_40_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_90_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_91_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_41_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_42\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_92_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_93_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_42_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_43\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_94_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_95_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_43_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_44\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_96_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_97_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_44_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_45\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_98_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_99_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_45_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_46\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_100_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_101_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_46_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_47\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_102_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_103_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_47_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_48\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_104_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_105_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_48_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_49\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_106_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_107_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_49_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_50\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_108_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_109_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_50_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_51\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_110_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_111_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_51_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_52\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_112_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_113_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_52_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_53\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_114_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_115_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_53_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_54\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_116_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_117_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_54_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_55\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_P_i_118_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_P_i_119_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_55_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(2)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_24_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_25_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_8_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
\dwrite_o0_inferred__0/dwrite_o_reg_P_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_26_n_0\,
      I1 => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_27_n_0\,
      O => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_9_n_0\,
      S => \trigger_delay_count_axi_reg[7]\(3)
    );
dwrite_o_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => dwrite_o0,
      D => '1',
      G => \^dwrite_o_reg_p_0\,
      GE => '1',
      Q => dwrite_o_reg_LDC_n_0
    );
dwrite_o_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(3),
      O => dwrite_o0
    );
dwrite_o_reg_P: unisim.vcomponents.FDPE
     port map (
      C => \dwrite_o0_inferred__0/dwrite_o_reg_P_i_1_n_0\,
      CE => '1',
      D => '0',
      PRE => \^dwrite_o_reg_p_0\,
      Q => dwrite_o_reg_P_n_0
    );
dwrite_set_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states_reg[15]_0\,
      Q => \^dwrite_o_reg_p_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[22]\,
      I2 => \counter_init_reg_n_0_[23]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[22]\,
      I2 => \counter_init_reg_n_0_[23]\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[22]\,
      I2 => \counter_init_reg_n_0_[23]\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[22]\,
      I2 => \counter_init_reg_n_0_[23]\,
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[22]\,
      I2 => \counter_init_reg_n_0_[23]\,
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[22]\,
      I2 => \counter_init_reg_n_0_[23]\,
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[18]\,
      I2 => \counter_init_reg_n_0_[19]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[18]\,
      I2 => \counter_init_reg_n_0_[19]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[18]\,
      I2 => \counter_init_reg_n_0_[19]\,
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[18]\,
      I2 => \counter_init_reg_n_0_[19]\,
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[18]\,
      I2 => \counter_init_reg_n_0_[19]\,
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[18]\,
      I2 => \counter_init_reg_n_0_[19]\,
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[16]\,
      I2 => \counter_init_reg_n_0_[17]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[16]\,
      I2 => \counter_init_reg_n_0_[17]\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[16]\,
      I2 => \counter_init_reg_n_0_[17]\,
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[16]\,
      I2 => \counter_init_reg_n_0_[17]\,
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[16]\,
      I2 => \counter_init_reg_n_0_[17]\,
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[16]\,
      I2 => \counter_init_reg_n_0_[17]\,
      O => \i__carry__0_i_3__4_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      I2 => \counter_init_reg_n_0_[14]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      I2 => \counter_init_reg_n_0_[14]\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      I2 => \counter_init_reg_n_0_[14]\,
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      I2 => \counter_init_reg_n_0_[14]\,
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      I2 => \counter_init_reg_n_0_[14]\,
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry__0_i_4__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      I2 => \counter_init_reg_n_0_[14]\,
      O => \i__carry__0_i_4__4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \i__carry__1_i_1__3_n_0\
    );
\i__carry__1_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \i__carry__1_i_1__4_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \counter_init_reg_n_0_[27]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \counter_init_reg_n_0_[27]\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \counter_init_reg_n_0_[27]\,
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \counter_init_reg_n_0_[27]\,
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \counter_init_reg_n_0_[27]\,
      O => \i__carry__1_i_2__3_n_0\
    );
\i__carry__1_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \counter_init_reg_n_0_[27]\,
      O => \i__carry__1_i_2__4_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      I2 => \counter_init_reg_n_0_[26]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      I2 => \counter_init_reg_n_0_[26]\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      I2 => \counter_init_reg_n_0_[26]\,
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      I2 => \counter_init_reg_n_0_[26]\,
      O => \i__carry__1_i_3__2_n_0\
    );
\i__carry__1_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      I2 => \counter_init_reg_n_0_[26]\,
      O => \i__carry__1_i_3__3_n_0\
    );
\i__carry__1_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      I2 => \counter_init_reg_n_0_[26]\,
      O => \i__carry__1_i_3__4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      I2 => \counter_init_reg_n_0_[9]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => srclk_final_count(10),
      I1 => \drs_sr_count_reg_n_0_[10]\,
      I2 => srclk_final_count(9),
      I3 => \drs_sr_count_reg_n_0_[9]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      I2 => \counter_init_reg_n_0_[9]\,
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      I2 => \counter_init_reg_n_0_[9]\,
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      I2 => \counter_init_reg_n_0_[9]\,
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      I2 => \counter_init_reg_n_0_[9]\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      I2 => \counter_init_reg_n_0_[9]\,
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      I2 => \counter_init_reg_n_0_[8]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => srclk_final_count(8),
      I1 => \drs_sr_count_reg_n_0_[8]\,
      I2 => \drs_sr_count_reg_n_0_[7]\,
      I3 => srclk_final_count(7),
      I4 => \drs_sr_count_reg_n_0_[6]\,
      I5 => srclk_final_count(6),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      I2 => \counter_init_reg_n_0_[8]\,
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      I2 => \counter_init_reg_n_0_[8]\,
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      I2 => \counter_init_reg_n_0_[8]\,
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      I2 => \counter_init_reg_n_0_[8]\,
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      I2 => \counter_init_reg_n_0_[8]\,
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[5]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[3]\,
      I1 => srclk_final_count(3),
      I2 => \drs_sr_count_reg_n_0_[4]\,
      I3 => srclk_final_count(4),
      I4 => srclk_final_count(5),
      I5 => \drs_sr_count_reg_n_0_[5]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \counter_init_reg_n_0_[5]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[3]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[5]\,
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[5]\,
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[5]\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[5]\,
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init_reg_n_0_[1]\,
      I2 => \counter_init_reg_n_0_[2]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init_reg_n_0_[1]\,
      I2 => \counter_init_reg_n_0_[2]\,
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init_reg_n_0_[1]\,
      I2 => \counter_init_reg_n_0_[2]\,
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => srclk_final_count(2),
      I1 => \drs_sr_count_reg_n_0_[2]\,
      I2 => \drs_sr_count_reg_n_0_[0]\,
      I3 => srclk_final_count(0),
      I4 => \drs_sr_count_reg_n_0_[1]\,
      I5 => srclk_final_count(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \counter_init_reg_n_0_[2]\,
      I1 => \counter_init_reg_n_0_[0]\,
      I2 => \counter_init_reg_n_0_[1]\,
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init_reg_n_0_[1]\,
      I2 => \counter_init_reg_n_0_[2]\,
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \counter_init_reg_n_0_[2]\,
      I1 => \counter_init_reg_n_0_[0]\,
      I2 => \counter_init_reg_n_0_[1]\,
      O => \i__carry_i_4__5_n_0\
    );
load_srin_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => shift_reg_init,
      Q => \^load_srin_1\,
      R => '0'
    );
load_srin_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \^load_srin_1\,
      Q => load_srin_2,
      R => '0'
    );
o_dwrite_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dwrite_o_reg_LDC_n_0,
      I1 => dwrite_o_reg_P_n_0,
      O => o_dwrite
    );
o_dwrite_for_trigger_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(11),
      O => \^slv_reg2_reg[2]\
    );
o_dwrite_for_trigger_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^out\(12),
      I1 => \^out\(8),
      I2 => \^out\(11),
      I3 => \^out\(0),
      I4 => \^out\(5),
      O => trigger_reset
    );
o_dwrite_for_trigger_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_drs4,
      CE => '1',
      D => \FSM_onehot_drs4_states_reg[6]_0\,
      PRE => axi_rst,
      Q => o_dwrite_for_trigger
    );
\o_stop_cell[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAEAAAAAAA"
    )
        port map (
      I0 => \^out\(10),
      I1 => \^o_srclk\,
      I2 => \^out\(12),
      I3 => \SROUT_count_reg_n_0_[3]\,
      I4 => \SROUT_count_reg_n_0_[2]\,
      I5 => \SROUT_count_reg_n_0_[1]\,
      O => \o_stop_cell[9]_i_1_n_0\
    );
o_stop_cell_ready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_rst,
      O => o_stop_cell_ready_i_1_n_0
    );
o_stop_cell_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAEAAAAAAA"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^o_srclk\,
      I2 => \^out\(12),
      I3 => \SROUT_count_reg_n_0_[3]\,
      I4 => \SROUT_count_reg_n_0_[2]\,
      I5 => \SROUT_count_reg_n_0_[1]\,
      O => o_stop_cell_ready_i_2_n_0
    );
o_stop_cell_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => o_stop_cell_ready_i_2_n_0,
      Q => o_stop_cell_ready,
      R => '0'
    );
\o_stop_cell_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(9),
      Q => \^o_stop_cell\(0)
    );
\o_stop_cell_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(8),
      Q => \^o_stop_cell\(1)
    );
\o_stop_cell_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(7),
      Q => \^o_stop_cell\(2)
    );
\o_stop_cell_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(6),
      Q => \^o_stop_cell\(3)
    );
\o_stop_cell_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(5),
      Q => \^o_stop_cell\(4)
    );
\o_stop_cell_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(4),
      Q => \^o_stop_cell\(5)
    );
\o_stop_cell_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(3),
      Q => \^o_stop_cell\(6)
    );
\o_stop_cell_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(2),
      Q => \^o_stop_cell\(7)
    );
\o_stop_cell_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(1),
      Q => \^o_stop_cell\(8)
    );
\o_stop_cell_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => \o_stop_cell[9]_i_1_n_0\,
      CLR => axi_rst,
      D => SROUT_vector(0),
      Q => \^o_stop_cell\(9)
    );
refclk_p_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002000000002002"
    )
        port map (
      I0 => refclk_p_o_i_3_n_0,
      I1 => refclk_p_o_i_4_n_0,
      I2 => Q(0),
      I3 => \count_refclk_reg__0\(0),
      I4 => Q(1),
      I5 => \count_refclk_reg__0\(1),
      O => \^count_refclk_reg[6]_0\
    );
refclk_p_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(6),
      I1 => \count_refclk_reg__0\(6),
      I2 => \count_refclk_reg__0\(3),
      I3 => Q(3),
      I4 => \count_refclk_reg__0\(5),
      I5 => Q(5),
      O => refclk_p_o_i_3_n_0
    );
refclk_p_o_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => Q(2),
      I1 => \count_refclk_reg__0\(2),
      I2 => Q(4),
      I3 => \count_refclk_reg__0\(4),
      O => refclk_p_o_i_4_n_0
    );
refclk_p_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states_reg[10]_0\,
      Q => o_refclk_p
    );
rsrload_o_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rsrload_o_i_16_n_0,
      I1 => \counter_init_reg_n_0_[19]\,
      I2 => \counter_init_reg_n_0_[18]\,
      I3 => \counter_init_reg_n_0_[21]\,
      I4 => \counter_init_reg_n_0_[20]\,
      I5 => rsrload_o_i_17_n_0,
      O => rsrload_o_i_10_n_0
    );
rsrload_o_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^out\(2),
      O => rsrload_o_i_11_n_0
    );
rsrload_o_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^out\(1),
      I1 => dwrite_o_reg_P_n_0,
      I2 => dwrite_o_reg_LDC_n_0,
      O => rsrload_o_i_12_n_0
    );
rsrload_o_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      O => rsrload_o_i_13_n_0
    );
rsrload_o_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \^out\(11),
      I2 => \counter_init_reg_n_0_[15]\,
      I3 => rsrload_o_i_7_n_0,
      I4 => \counter_init_reg_n_0_[31]\,
      I5 => \counter_init_reg_n_0_[30]\,
      O => rsrload_o_i_14_n_0
    );
rsrload_o_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      O => rsrload_o_i_15_n_0
    );
rsrload_o_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[17]\,
      I1 => \counter_init_reg_n_0_[16]\,
      O => rsrload_o_i_16_n_0
    );
rsrload_o_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[23]\,
      I1 => \counter_init_reg_n_0_[22]\,
      O => rsrload_o_i_17_n_0
    );
rsrload_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => rsrload_o_i_6_n_0,
      I1 => \counter_init_reg_n_0_[2]\,
      I2 => \counter_init_reg_n_0_[3]\,
      I3 => rsrload_o_i_7_n_0,
      I4 => \counter_init_reg_n_0_[0]\,
      I5 => \counter_init_reg_n_0_[1]\,
      O => rsrload_o_reg_0
    );
rsrload_o_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \FSM_onehot_drs4_states[4]_i_2_n_0\,
      I3 => \counter_init_reg_n_0_[30]\,
      I4 => \counter_init_reg_n_0_[31]\,
      O => \^fsm_onehot_drs4_states_reg[5]_0\
    );
rsrload_o_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001004"
    )
        port map (
      I0 => rsrload_o_i_8_n_0,
      I1 => \counter_init_reg_n_0_[2]\,
      I2 => \counter_init_reg_n_0_[1]\,
      I3 => \counter_init_reg_n_0_[0]\,
      I4 => rsrload_o_i_9_n_0,
      I5 => rsrload_o_i_10_n_0,
      O => rsrload_o_reg_2
    );
rsrload_o_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => rsrload_o_i_11_n_0,
      I1 => \^out\(5),
      I2 => \^out\(3),
      I3 => \^out\(10),
      I4 => \^out\(6),
      I5 => rsrload_o_i_12_n_0,
      O => rsrload_o_reg_1
    );
rsrload_o_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      O => rsrload_o_i_6_n_0
    );
rsrload_o_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[5]\,
      I1 => \counter_init_reg_n_0_[4]\,
      O => rsrload_o_i_7_n_0
    );
rsrload_o_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter_init_reg_n_0_[9]\,
      I1 => rsrload_o_i_13_n_0,
      I2 => \counter_init_reg_n_0_[14]\,
      I3 => \counter_init_reg_n_0_[12]\,
      I4 => \counter_init_reg_n_0_[13]\,
      I5 => rsrload_o_i_14_n_0,
      O => rsrload_o_i_8_n_0
    );
rsrload_o_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => srin_o_i_7_n_0,
      I1 => \counter_init_reg_n_0_[27]\,
      I2 => \counter_init_reg_n_0_[8]\,
      I3 => rsrload_o_i_6_n_0,
      I4 => \counter_init_reg_n_0_[26]\,
      I5 => rsrload_o_i_15_n_0,
      O => rsrload_o_i_9_n_0
    );
rsrload_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states_reg[13]_0\,
      Q => o_rsrload
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => axi_wready_reg,
      I2 => \slv_reg2[0]_i_2_n_0\,
      I3 => \^out\(8),
      I4 => \^out\(12),
      I5 => \slv_reg2[0]_i_3_n_0\,
      O => D(0)
    );
\slv_reg2[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I1 => \^out\(1),
      I2 => \^out\(9),
      I3 => \^out\(3),
      O => \slv_reg2[0]_i_2_n_0\
    );
\slv_reg2[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^out\(0),
      O => \slv_reg2[0]_i_3_n_0\
    );
\slv_reg2[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(5),
      O => D(10)
    );
\slv_reg2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(6),
      O => D(11)
    );
\slv_reg2[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(7),
      O => D(12)
    );
\slv_reg2[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(8),
      O => D(13)
    );
\slv_reg2[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(9),
      O => D(14)
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => axi_wready_reg,
      I2 => \slv_reg2[1]_i_2_n_0\,
      I3 => \^out\(3),
      I4 => \^out\(6),
      I5 => \slv_reg2[1]_i_3_n_0\,
      O => D(1)
    );
\slv_reg2[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(0),
      I1 => \FSM_onehot_drs4_states_reg_n_0_[0]\,
      O => \slv_reg2[1]_i_2_n_0\
    );
\slv_reg2[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^out\(13),
      I1 => \^out\(11),
      I2 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I3 => \^out\(10),
      O => \slv_reg2[1]_i_3_n_0\
    );
\slv_reg2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => axi_wready_reg,
      I2 => \slv_reg2[3]_i_3_n_0\,
      I3 => \^out\(13),
      I4 => \^out\(4),
      I5 => \^slv_reg2_reg[2]\,
      O => D(2)
    );
\slv_reg2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBBB8"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => axi_wready_reg,
      I2 => \slv_reg2[3]_i_2_n_0\,
      I3 => \FSM_onehot_drs4_states_reg_n_0_[16]\,
      I4 => \slv_reg2[3]_i_3_n_0\,
      O => D(3)
    );
\slv_reg2[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^out\(12),
      I1 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I2 => \^out\(10),
      O => \slv_reg2[3]_i_2_n_0\
    );
\slv_reg2[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_drs4_states_reg_n_0_[0]\,
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \^out\(1),
      O => \slv_reg2[3]_i_3_n_0\
    );
\slv_reg2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^out\(7),
      O => D(4)
    );
\slv_reg2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(0),
      O => D(5)
    );
\slv_reg2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(1),
      O => D(6)
    );
\slv_reg2[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(2),
      O => D(7)
    );
\slv_reg2[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(3),
      O => D(8)
    );
\slv_reg2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => axi_wready_reg_0,
      I4 => axi_awready_reg,
      I5 => \^o_stop_cell\(4),
      O => D(9)
    );
\srclk_final_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(0),
      Q => srclk_final_count(0),
      R => '0'
    );
\srclk_final_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(10),
      Q => srclk_final_count(10),
      R => '0'
    );
\srclk_final_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(1),
      Q => srclk_final_count(1),
      R => '0'
    );
\srclk_final_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(2),
      Q => srclk_final_count(2),
      R => '0'
    );
\srclk_final_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(3),
      Q => srclk_final_count(3),
      R => '0'
    );
\srclk_final_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(4),
      Q => srclk_final_count(4),
      R => '0'
    );
\srclk_final_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(5),
      Q => srclk_final_count(5),
      R => '0'
    );
\srclk_final_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(6),
      Q => srclk_final_count(6),
      R => '0'
    );
\srclk_final_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(7),
      Q => srclk_final_count(7),
      R => '0'
    );
\srclk_final_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(8),
      Q => srclk_final_count(8),
      R => '0'
    );
\srclk_final_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \cell_counts_axi_reg[10]\(9),
      Q => srclk_final_count(9),
      R => '0'
    );
srclk_o0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => srclk_o0_carry_n_0,
      CO(2) => srclk_o0_carry_n_1,
      CO(1) => srclk_o0_carry_n_2,
      CO(0) => srclk_o0_carry_n_3,
      CYINIT => '1',
      DI(3) => srclk_o0_carry_i_1_n_0,
      DI(2) => srclk_o0_carry_i_2_n_0,
      DI(1) => srclk_o0_carry_i_3_n_0,
      DI(0) => srclk_o0_carry_i_4_n_0,
      O(3 downto 0) => NLW_srclk_o0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => srclk_o0_carry_i_5_n_0,
      S(2) => srclk_o0_carry_i_6_n_0,
      S(1) => srclk_o0_carry_i_7_n_0,
      S(0) => srclk_o0_carry_i_8_n_0
    );
\srclk_o0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => srclk_o0_carry_n_0,
      CO(3) => \srclk_o0_carry__0_n_0\,
      CO(2) => \srclk_o0_carry__0_n_1\,
      CO(1) => \srclk_o0_carry__0_n_2\,
      CO(0) => \srclk_o0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \srclk_o0_carry__0_i_1_n_0\,
      DI(2) => \srclk_o0_carry__0_i_2_n_0\,
      DI(1) => \srclk_o0_carry__0_i_3_n_0\,
      DI(0) => \srclk_o0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_srclk_o0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \srclk_o0_carry__0_i_5_n_0\,
      S(2) => \srclk_o0_carry__0_i_6_n_0\,
      S(1) => \srclk_o0_carry__0_i_7_n_0\,
      S(0) => \srclk_o0_carry__0_i_8_n_0\
    );
\srclk_o0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[14]\,
      O => \srclk_o0_carry__0_i_1_n_0\
    );
\srclk_o0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      O => \srclk_o0_carry__0_i_2_n_0\
    );
\srclk_o0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      O => \srclk_o0_carry__0_i_3_n_0\
    );
\srclk_o0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[9]\,
      I1 => \counter_init_reg_n_0_[8]\,
      O => \srclk_o0_carry__0_i_4_n_0\
    );
\srclk_o0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[14]\,
      I1 => \counter_init_reg_n_0_[15]\,
      O => \srclk_o0_carry__0_i_5_n_0\
    );
\srclk_o0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[12]\,
      I1 => \counter_init_reg_n_0_[13]\,
      O => \srclk_o0_carry__0_i_6_n_0\
    );
\srclk_o0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[10]\,
      I1 => \counter_init_reg_n_0_[11]\,
      O => \srclk_o0_carry__0_i_7_n_0\
    );
\srclk_o0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[8]\,
      I1 => \counter_init_reg_n_0_[9]\,
      O => \srclk_o0_carry__0_i_8_n_0\
    );
\srclk_o0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srclk_o0_carry__0_n_0\,
      CO(3) => \srclk_o0_carry__1_n_0\,
      CO(2) => \srclk_o0_carry__1_n_1\,
      CO(1) => \srclk_o0_carry__1_n_2\,
      CO(0) => \srclk_o0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \srclk_o0_carry__1_i_1_n_0\,
      DI(2) => \srclk_o0_carry__1_i_2_n_0\,
      DI(1) => \srclk_o0_carry__1_i_3_n_0\,
      DI(0) => \srclk_o0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_srclk_o0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \srclk_o0_carry__1_i_5_n_0\,
      S(2) => \srclk_o0_carry__1_i_6_n_0\,
      S(1) => \srclk_o0_carry__1_i_7_n_0\,
      S(0) => \srclk_o0_carry__1_i_8_n_0\
    );
\srclk_o0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[23]\,
      I1 => \counter_init_reg_n_0_[22]\,
      O => \srclk_o0_carry__1_i_1_n_0\
    );
\srclk_o0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[20]\,
      O => \srclk_o0_carry__1_i_2_n_0\
    );
\srclk_o0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[19]\,
      I1 => \counter_init_reg_n_0_[18]\,
      O => \srclk_o0_carry__1_i_3_n_0\
    );
\srclk_o0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[17]\,
      I1 => \counter_init_reg_n_0_[16]\,
      O => \srclk_o0_carry__1_i_4_n_0\
    );
\srclk_o0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[22]\,
      I1 => \counter_init_reg_n_0_[23]\,
      O => \srclk_o0_carry__1_i_5_n_0\
    );
\srclk_o0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[21]\,
      O => \srclk_o0_carry__1_i_6_n_0\
    );
\srclk_o0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[18]\,
      I1 => \counter_init_reg_n_0_[19]\,
      O => \srclk_o0_carry__1_i_7_n_0\
    );
\srclk_o0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[16]\,
      I1 => \counter_init_reg_n_0_[17]\,
      O => \srclk_o0_carry__1_i_8_n_0\
    );
\srclk_o0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \srclk_o0_carry__1_n_0\,
      CO(3) => \srclk_o0_carry__2_n_0\,
      CO(2) => \srclk_o0_carry__2_n_1\,
      CO(1) => \srclk_o0_carry__2_n_2\,
      CO(0) => \srclk_o0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \srclk_o0_carry__2_i_1_n_0\,
      DI(2) => \srclk_o0_carry__2_i_2_n_0\,
      DI(1) => \srclk_o0_carry__2_i_3_n_0\,
      DI(0) => \srclk_o0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_srclk_o0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \srclk_o0_carry__2_i_5_n_0\,
      S(2) => \srclk_o0_carry__2_i_6_n_0\,
      S(1) => \srclk_o0_carry__2_i_7_n_0\,
      S(0) => \srclk_o0_carry__2_i_8_n_0\
    );
\srclk_o0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \srclk_o0_carry__2_i_1_n_0\
    );
\srclk_o0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      O => \srclk_o0_carry__2_i_2_n_0\
    );
\srclk_o0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[26]\,
      I1 => \counter_init_reg_n_0_[27]\,
      O => \srclk_o0_carry__2_i_3_n_0\
    );
\srclk_o0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      O => \srclk_o0_carry__2_i_4_n_0\
    );
\srclk_o0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \srclk_o0_carry__2_i_5_n_0\
    );
\srclk_o0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[28]\,
      I1 => \counter_init_reg_n_0_[29]\,
      O => \srclk_o0_carry__2_i_6_n_0\
    );
\srclk_o0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[27]\,
      I1 => \counter_init_reg_n_0_[26]\,
      O => \srclk_o0_carry__2_i_7_n_0\
    );
\srclk_o0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[24]\,
      I1 => \counter_init_reg_n_0_[25]\,
      O => \srclk_o0_carry__2_i_8_n_0\
    );
srclk_o0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      O => srclk_o0_carry_i_1_n_0
    );
srclk_o0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[5]\,
      I1 => \counter_init_reg_n_0_[4]\,
      O => srclk_o0_carry_i_2_n_0
    );
srclk_o0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[2]\,
      I1 => \counter_init_reg_n_0_[3]\,
      O => srclk_o0_carry_i_3_n_0
    );
srclk_o0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_init_reg_n_0_[1]\,
      I1 => \counter_init_reg_n_0_[0]\,
      O => srclk_o0_carry_i_4_n_0
    );
srclk_o0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[6]\,
      I1 => \counter_init_reg_n_0_[7]\,
      O => srclk_o0_carry_i_5_n_0
    );
srclk_o0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[4]\,
      I1 => \counter_init_reg_n_0_[5]\,
      O => srclk_o0_carry_i_6_n_0
    );
srclk_o0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[2]\,
      O => srclk_o0_carry_i_7_n_0
    );
srclk_o0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[1]\,
      I1 => \counter_init_reg_n_0_[0]\,
      O => srclk_o0_carry_i_8_n_0
    );
srclk_o2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => srclk_o2_carry_n_0,
      CO(2) => srclk_o2_carry_n_1,
      CO(1) => srclk_o2_carry_n_2,
      CO(0) => srclk_o2_carry_n_3,
      CYINIT => '1',
      DI(3) => srclk_o2_carry_i_1_n_0,
      DI(2) => srclk_o2_carry_i_2_n_0,
      DI(1) => srclk_o2_carry_i_3_n_0,
      DI(0) => srclk_o2_carry_i_4_n_0,
      O(3 downto 0) => NLW_srclk_o2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => srclk_o2_carry_i_5_n_0,
      S(2) => srclk_o2_carry_i_6_n_0,
      S(1) => srclk_o2_carry_i_7_n_0,
      S(0) => srclk_o2_carry_i_8_n_0
    );
\srclk_o2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => srclk_o2_carry_n_0,
      CO(3) => \srclk_o2_carry__0_n_0\,
      CO(2) => \srclk_o2_carry__0_n_1\,
      CO(1) => \srclk_o2_carry__0_n_2\,
      CO(0) => \srclk_o2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \srclk_o2_carry__0_i_1_n_0\,
      DI(2) => \srclk_o2_carry__0_i_2_n_0\,
      DI(1) => \srclk_o2_carry__0_i_3_n_0\,
      DI(0) => \srclk_o2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_srclk_o2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \srclk_o2_carry__0_i_5_n_0\,
      S(2) => \srclk_o2_carry__0_i_6_n_0\,
      S(1) => \srclk_o2_carry__0_i_7_n_0\,
      S(0) => \srclk_o2_carry__0_i_8_n_0\
    );
\srclk_o2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[14]\,
      O => \srclk_o2_carry__0_i_1_n_0\
    );
\srclk_o2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      O => \srclk_o2_carry__0_i_2_n_0\
    );
\srclk_o2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      O => \srclk_o2_carry__0_i_3_n_0\
    );
\srclk_o2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[9]\,
      I1 => \counter_init_reg_n_0_[8]\,
      O => \srclk_o2_carry__0_i_4_n_0\
    );
\srclk_o2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[14]\,
      I1 => \counter_init_reg_n_0_[15]\,
      O => \srclk_o2_carry__0_i_5_n_0\
    );
\srclk_o2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[12]\,
      I1 => \counter_init_reg_n_0_[13]\,
      O => \srclk_o2_carry__0_i_6_n_0\
    );
\srclk_o2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[10]\,
      I1 => \counter_init_reg_n_0_[11]\,
      O => \srclk_o2_carry__0_i_7_n_0\
    );
\srclk_o2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[8]\,
      I1 => \counter_init_reg_n_0_[9]\,
      O => \srclk_o2_carry__0_i_8_n_0\
    );
\srclk_o2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srclk_o2_carry__0_n_0\,
      CO(3) => \srclk_o2_carry__1_n_0\,
      CO(2) => \srclk_o2_carry__1_n_1\,
      CO(1) => \srclk_o2_carry__1_n_2\,
      CO(0) => \srclk_o2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \srclk_o2_carry__1_i_1_n_0\,
      DI(2) => \srclk_o2_carry__1_i_2_n_0\,
      DI(1) => \srclk_o2_carry__1_i_3_n_0\,
      DI(0) => \srclk_o2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_srclk_o2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \srclk_o2_carry__1_i_5_n_0\,
      S(2) => \srclk_o2_carry__1_i_6_n_0\,
      S(1) => \srclk_o2_carry__1_i_7_n_0\,
      S(0) => \srclk_o2_carry__1_i_8_n_0\
    );
\srclk_o2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[23]\,
      I1 => \counter_init_reg_n_0_[22]\,
      O => \srclk_o2_carry__1_i_1_n_0\
    );
\srclk_o2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[20]\,
      O => \srclk_o2_carry__1_i_2_n_0\
    );
\srclk_o2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[19]\,
      I1 => \counter_init_reg_n_0_[18]\,
      O => \srclk_o2_carry__1_i_3_n_0\
    );
\srclk_o2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[17]\,
      I1 => \counter_init_reg_n_0_[16]\,
      O => \srclk_o2_carry__1_i_4_n_0\
    );
\srclk_o2_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[22]\,
      I1 => \counter_init_reg_n_0_[23]\,
      O => \srclk_o2_carry__1_i_5_n_0\
    );
\srclk_o2_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[21]\,
      O => \srclk_o2_carry__1_i_6_n_0\
    );
\srclk_o2_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[18]\,
      I1 => \counter_init_reg_n_0_[19]\,
      O => \srclk_o2_carry__1_i_7_n_0\
    );
\srclk_o2_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[16]\,
      I1 => \counter_init_reg_n_0_[17]\,
      O => \srclk_o2_carry__1_i_8_n_0\
    );
\srclk_o2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \srclk_o2_carry__1_n_0\,
      CO(3) => srclk_o2,
      CO(2) => \srclk_o2_carry__2_n_1\,
      CO(1) => \srclk_o2_carry__2_n_2\,
      CO(0) => \srclk_o2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \srclk_o2_carry__2_i_1_n_0\,
      DI(2) => \srclk_o2_carry__2_i_2_n_0\,
      DI(1) => \srclk_o2_carry__2_i_3_n_0\,
      DI(0) => \srclk_o2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_srclk_o2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \srclk_o2_carry__2_i_5_n_0\,
      S(2) => \srclk_o2_carry__2_i_6_n_0\,
      S(1) => \srclk_o2_carry__2_i_7_n_0\,
      S(0) => \srclk_o2_carry__2_i_8_n_0\
    );
\srclk_o2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \srclk_o2_carry__2_i_1_n_0\
    );
\srclk_o2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      O => \srclk_o2_carry__2_i_2_n_0\
    );
\srclk_o2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[26]\,
      I1 => \counter_init_reg_n_0_[27]\,
      O => \srclk_o2_carry__2_i_3_n_0\
    );
\srclk_o2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      O => \srclk_o2_carry__2_i_4_n_0\
    );
\srclk_o2_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \srclk_o2_carry__2_i_5_n_0\
    );
\srclk_o2_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[28]\,
      I1 => \counter_init_reg_n_0_[29]\,
      O => \srclk_o2_carry__2_i_6_n_0\
    );
\srclk_o2_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[27]\,
      I1 => \counter_init_reg_n_0_[26]\,
      O => \srclk_o2_carry__2_i_7_n_0\
    );
\srclk_o2_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[24]\,
      I1 => \counter_init_reg_n_0_[25]\,
      O => \srclk_o2_carry__2_i_8_n_0\
    );
srclk_o2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      O => srclk_o2_carry_i_1_n_0
    );
srclk_o2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_init_reg_n_0_[5]\,
      I1 => \counter_init_reg_n_0_[4]\,
      O => srclk_o2_carry_i_2_n_0
    );
srclk_o2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[2]\,
      I1 => \counter_init_reg_n_0_[3]\,
      O => srclk_o2_carry_i_3_n_0
    );
srclk_o2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init_reg_n_0_[1]\,
      O => srclk_o2_carry_i_4_n_0
    );
srclk_o2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[6]\,
      I1 => \counter_init_reg_n_0_[7]\,
      O => srclk_o2_carry_i_5_n_0
    );
srclk_o2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \counter_init_reg_n_0_[5]\,
      I1 => \counter_init_reg_n_0_[4]\,
      O => srclk_o2_carry_i_6_n_0
    );
srclk_o2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[2]\,
      O => srclk_o2_carry_i_7_n_0
    );
srclk_o2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[1]\,
      I1 => \counter_init_reg_n_0_[0]\,
      O => srclk_o2_carry_i_8_n_0
    );
\srclk_o2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \srclk_o2_inferred__0/i__carry_n_0\,
      CO(2) => \srclk_o2_inferred__0/i__carry_n_1\,
      CO(1) => \srclk_o2_inferred__0/i__carry_n_2\,
      CO(0) => \srclk_o2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srclk_o2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\srclk_o2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \srclk_o2_inferred__0/i__carry_n_0\,
      CO(3) => \srclk_o2_inferred__0/i__carry__0_n_0\,
      CO(2) => \srclk_o2_inferred__0/i__carry__0_n_1\,
      CO(1) => \srclk_o2_inferred__0/i__carry__0_n_2\,
      CO(0) => \srclk_o2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srclk_o2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\srclk_o2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srclk_o2_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_srclk_o2_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => srclk_o27_in,
      CO(1) => \srclk_o2_inferred__0/i__carry__1_n_2\,
      CO(0) => \srclk_o2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srclk_o2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
srclk_o_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEFEE"
    )
        port map (
      I0 => \^out\(12),
      I1 => \^out\(0),
      I2 => srclk_o2,
      I3 => \^out\(3),
      I4 => srclk_o27_in,
      O => srclk_o_reg_0
    );
srclk_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => srclk_o_i_5_n_0,
      I1 => \drs_sr_count_reg_n_0_[7]\,
      I2 => \drs_sr_count_reg_n_0_[4]\,
      I3 => \drs_sr_count_reg_n_0_[8]\,
      I4 => \drs_sr_count_reg_n_0_[3]\,
      I5 => srclk_o_i_6_n_0,
      O => \^drs_sr_count_reg[10]_0\
    );
srclk_o_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(7),
      I2 => \^out\(6),
      I3 => \srclk_o0_carry__2_n_0\,
      I4 => \^out\(0),
      I5 => srclk_o_i_7_n_0,
      O => srclk_o
    );
srclk_o_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[1]\,
      I1 => \drs_sr_count_reg_n_0_[0]\,
      I2 => \drs_sr_count_reg_n_0_[6]\,
      I3 => \drs_sr_count_reg_n_0_[2]\,
      O => srclk_o_i_5_n_0
    );
srclk_o_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \drs_sr_count_reg_n_0_[9]\,
      I1 => \drs_sr_count_reg_n_0_[10]\,
      I2 => \drs_sr_count_reg_n_0_[5]\,
      I3 => \^o_srclk\,
      O => srclk_o_i_6_n_0
    );
srclk_o_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \^out\(10),
      I1 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      I2 => \^out\(12),
      I3 => rsrload_o_i_11_n_0,
      I4 => \^out\(5),
      I5 => \^out\(3),
      O => srclk_o_i_7_n_0
    );
srclk_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => \FSM_onehot_drs4_states_reg[3]_0\,
      Q => \^o_srclk\
    );
srclk_test_o_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_srclk_adc\,
      O => srclk_test_o_i_1_n_0
    );
srclk_test_o_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_drs4,
      CE => '1',
      CLR => axi_rst,
      D => srclk_test_o_i_1_n_0,
      Q => \^o_srclk_adc\
    );
srin_o2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => srin_o2_carry_n_0,
      CO(2) => srin_o2_carry_n_1,
      CO(1) => srin_o2_carry_n_2,
      CO(0) => srin_o2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_srin_o2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => srin_o2_carry_i_1_n_0,
      S(2) => srin_o2_carry_i_2_n_0,
      S(1) => srin_o2_carry_i_3_n_0,
      S(0) => srin_o2_carry_i_4_n_0
    );
\srin_o2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => srin_o2_carry_n_0,
      CO(3) => \srin_o2_carry__0_n_0\,
      CO(2) => \srin_o2_carry__0_n_1\,
      CO(1) => \srin_o2_carry__0_n_2\,
      CO(0) => \srin_o2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \srin_o2_carry__0_i_1_n_0\,
      S(2) => \srin_o2_carry__0_i_2_n_0\,
      S(1) => \srin_o2_carry__0_i_3_n_0\,
      S(0) => \srin_o2_carry__0_i_4_n_0\
    );
\srin_o2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[21]\,
      I1 => \counter_init_reg_n_0_[22]\,
      I2 => \counter_init_reg_n_0_[23]\,
      O => \srin_o2_carry__0_i_1_n_0\
    );
\srin_o2_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[20]\,
      I1 => \counter_init_reg_n_0_[18]\,
      I2 => \counter_init_reg_n_0_[19]\,
      O => \srin_o2_carry__0_i_2_n_0\
    );
\srin_o2_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[15]\,
      I1 => \counter_init_reg_n_0_[16]\,
      I2 => \counter_init_reg_n_0_[17]\,
      O => \srin_o2_carry__0_i_3_n_0\
    );
\srin_o2_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[13]\,
      I1 => \counter_init_reg_n_0_[12]\,
      I2 => \counter_init_reg_n_0_[14]\,
      O => \srin_o2_carry__0_i_4_n_0\
    );
\srin_o2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_carry__0_n_0\,
      CO(3) => \NLW_srin_o2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => srin_o2,
      CO(1) => \srin_o2_carry__1_n_2\,
      CO(0) => \srin_o2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \srin_o2_carry__1_i_1_n_0\,
      S(1) => \srin_o2_carry__1_i_2_n_0\,
      S(0) => \srin_o2_carry__1_i_3_n_0\
    );
\srin_o2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_init_reg_n_0_[30]\,
      I1 => \counter_init_reg_n_0_[31]\,
      O => \srin_o2_carry__1_i_1_n_0\
    );
\srin_o2_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      I2 => \counter_init_reg_n_0_[27]\,
      O => \srin_o2_carry__1_i_2_n_0\
    );
\srin_o2_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[25]\,
      I1 => \counter_init_reg_n_0_[24]\,
      I2 => \counter_init_reg_n_0_[26]\,
      O => \srin_o2_carry__1_i_3_n_0\
    );
srin_o2_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[11]\,
      I1 => \counter_init_reg_n_0_[10]\,
      I2 => \counter_init_reg_n_0_[9]\,
      O => srin_o2_carry_i_1_n_0
    );
srin_o2_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \counter_init_reg_n_0_[7]\,
      I1 => \counter_init_reg_n_0_[6]\,
      I2 => \counter_init_reg_n_0_[8]\,
      O => srin_o2_carry_i_2_n_0
    );
srin_o2_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \counter_init_reg_n_0_[3]\,
      I1 => \counter_init_reg_n_0_[4]\,
      I2 => \counter_init_reg_n_0_[5]\,
      O => srin_o2_carry_i_3_n_0
    );
srin_o2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \counter_init_reg_n_0_[0]\,
      I1 => \counter_init_reg_n_0_[1]\,
      I2 => \counter_init_reg_n_0_[2]\,
      O => srin_o2_carry_i_4_n_0
    );
\srin_o2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \srin_o2_inferred__0/i__carry_n_0\,
      CO(2) => \srin_o2_inferred__0/i__carry_n_1\,
      CO(1) => \srin_o2_inferred__0/i__carry_n_2\,
      CO(0) => \srin_o2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\srin_o2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__0/i__carry_n_0\,
      CO(3) => \srin_o2_inferred__0/i__carry__0_n_0\,
      CO(2) => \srin_o2_inferred__0/i__carry__0_n_1\,
      CO(1) => \srin_o2_inferred__0/i__carry__0_n_2\,
      CO(0) => \srin_o2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\srin_o2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_srin_o2_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => srin_o20_in,
      CO(1) => \srin_o2_inferred__0/i__carry__1_n_2\,
      CO(0) => \srin_o2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__0_n_0\,
      S(1) => \i__carry__1_i_2__0_n_0\,
      S(0) => \i__carry__1_i_3__0_n_0\
    );
\srin_o2_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \srin_o2_inferred__1/i__carry_n_0\,
      CO(2) => \srin_o2_inferred__1/i__carry_n_1\,
      CO(1) => \srin_o2_inferred__1/i__carry_n_2\,
      CO(0) => \srin_o2_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\srin_o2_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__1/i__carry_n_0\,
      CO(3) => \srin_o2_inferred__1/i__carry__0_n_0\,
      CO(2) => \srin_o2_inferred__1/i__carry__0_n_1\,
      CO(1) => \srin_o2_inferred__1/i__carry__0_n_2\,
      CO(0) => \srin_o2_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\srin_o2_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__1/i__carry__0_n_0\,
      CO(3) => \NLW_srin_o2_inferred__1/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => srin_o21_in,
      CO(1) => \srin_o2_inferred__1/i__carry__1_n_2\,
      CO(0) => \srin_o2_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__1_n_0\,
      S(1) => \i__carry__1_i_2__1_n_0\,
      S(0) => \i__carry__1_i_3__1_n_0\
    );
\srin_o2_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \srin_o2_inferred__2/i__carry_n_0\,
      CO(2) => \srin_o2_inferred__2/i__carry_n_1\,
      CO(1) => \srin_o2_inferred__2/i__carry_n_2\,
      CO(0) => \srin_o2_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\srin_o2_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__2/i__carry_n_0\,
      CO(3) => \srin_o2_inferred__2/i__carry__0_n_0\,
      CO(2) => \srin_o2_inferred__2/i__carry__0_n_1\,
      CO(1) => \srin_o2_inferred__2/i__carry__0_n_2\,
      CO(0) => \srin_o2_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\srin_o2_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__2/i__carry__0_n_0\,
      CO(3) => \NLW_srin_o2_inferred__2/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => srin_o22_in,
      CO(1) => \srin_o2_inferred__2/i__carry__1_n_2\,
      CO(0) => \srin_o2_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__2_n_0\,
      S(1) => \i__carry__1_i_2__2_n_0\,
      S(0) => \i__carry__1_i_3__2_n_0\
    );
\srin_o2_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \srin_o2_inferred__3/i__carry_n_0\,
      CO(2) => \srin_o2_inferred__3/i__carry_n_1\,
      CO(1) => \srin_o2_inferred__3/i__carry_n_2\,
      CO(0) => \srin_o2_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__5_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\srin_o2_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__3/i__carry_n_0\,
      CO(3) => \srin_o2_inferred__3/i__carry__0_n_0\,
      CO(2) => \srin_o2_inferred__3/i__carry__0_n_1\,
      CO(1) => \srin_o2_inferred__3/i__carry__0_n_2\,
      CO(0) => \srin_o2_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__3_n_0\,
      S(2) => \i__carry__0_i_2__3_n_0\,
      S(1) => \i__carry__0_i_3__3_n_0\,
      S(0) => \i__carry__0_i_4__3_n_0\
    );
\srin_o2_inferred__3/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__3/i__carry__0_n_0\,
      CO(3) => \NLW_srin_o2_inferred__3/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => srin_o24_in,
      CO(1) => \srin_o2_inferred__3/i__carry__1_n_2\,
      CO(0) => \srin_o2_inferred__3/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__3/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__3_n_0\,
      S(1) => \i__carry__1_i_2__3_n_0\,
      S(0) => \i__carry__1_i_3__3_n_0\
    );
\srin_o2_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \srin_o2_inferred__4/i__carry_n_0\,
      CO(2) => \srin_o2_inferred__4/i__carry_n_1\,
      CO(1) => \srin_o2_inferred__4/i__carry_n_2\,
      CO(0) => \srin_o2_inferred__4/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__4/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__5_n_0\,
      S(2) => \i__carry_i_2__5_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4__5_n_0\
    );
\srin_o2_inferred__4/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__4/i__carry_n_0\,
      CO(3) => \srin_o2_inferred__4/i__carry__0_n_0\,
      CO(2) => \srin_o2_inferred__4/i__carry__0_n_1\,
      CO(1) => \srin_o2_inferred__4/i__carry__0_n_2\,
      CO(0) => \srin_o2_inferred__4/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__4/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__4_n_0\,
      S(2) => \i__carry__0_i_2__4_n_0\,
      S(1) => \i__carry__0_i_3__4_n_0\,
      S(0) => \i__carry__0_i_4__4_n_0\
    );
\srin_o2_inferred__4/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \srin_o2_inferred__4/i__carry__0_n_0\,
      CO(3) => \NLW_srin_o2_inferred__4/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => srin_o25_in,
      CO(1) => \srin_o2_inferred__4/i__carry__1_n_2\,
      CO(0) => \srin_o2_inferred__4/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_srin_o2_inferred__4/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1__4_n_0\,
      S(1) => \i__carry__1_i_2__4_n_0\,
      S(0) => \i__carry__1_i_3__4_n_0\
    );
srin_o_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABA8ABA8ABAB"
    )
        port map (
      I0 => \config_states_axi_reg[2]\(1),
      I1 => srin_o21_in,
      I2 => srin_o22_in,
      I3 => \config_states_axi_reg[2]\(0),
      I4 => srin_o20_in,
      I5 => srin_o2,
      O => srin_o_i_10_n_0
    );
srin_o_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_drs4_states[8]_i_2_n_0\,
      I1 => \drs_sr_count_reg_n_0_[9]\,
      I2 => \drs_sr_count_reg_n_0_[10]\,
      O => srin_o_i_11_n_0
    );
srin_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => srin_o_i_7_n_0,
      I1 => \FSM_onehot_drs4_states[4]_i_2_n_0\,
      I2 => srin_o_i_8_n_0,
      I3 => srin_o_i_9_n_0,
      I4 => \A3_0_o_reg[0]_i_3_n_2\,
      I5 => \FSM_onehot_drs4_states[5]_i_2_n_0\,
      O => srin_o_reg_1
    );
srin_o_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA222AAAA22222"
    )
        port map (
      I0 => \^out\(3),
      I1 => \A3_0_o_reg[0]_i_3_n_2\,
      I2 => srin_o24_in,
      I3 => srin_o25_in,
      I4 => \config_states_axi_reg[2]\(2),
      I5 => srin_o_i_10_n_0,
      O => srin_o_reg_4
    );
srin_o_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C8FFC8"
    )
        port map (
      I0 => \^out\(6),
      I1 => CONF_REG_start,
      I2 => \^out\(8),
      I3 => \^out\(5),
      I4 => RSR_init_start,
      O => srin_o_reg_2
    );
srin_o_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \A3_0_o[2]_i_2_n_0\,
      I1 => \^out\(5),
      I2 => \^out\(1),
      I3 => \FSM_onehot_drs4_states_reg_n_0_[11]\,
      O => srin_o_reg_3
    );
srin_o_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77705550"
    )
        port map (
      I0 => \^drs_sr_count_reg[10]_0\,
      I1 => \^o_srclk\,
      I2 => \^out\(2),
      I3 => \^out\(9),
      I4 => srin_o_i_11_n_0,
      O => srin_o_reg_0
    );
srin_o_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[29]\,
      I1 => \counter_init_reg_n_0_[28]\,
      O => srin_o_i_7_n_0
    );
srin_o_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_init_reg_n_0_[31]\,
      I1 => \counter_init_reg_n_0_[30]\,
      O => srin_o_i_8_n_0
    );
srin_o_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \counter_init_reg_n_0_[1]\,
      I1 => \counter_init_reg_n_0_[0]\,
      O => srin_o_i_9_n_0
    );
srin_o_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_drs4,
      CE => '1',
      D => srin_o_reg_5,
      PRE => axi_rst,
      Q => o_srin
    );
start_conf_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => conf_reg_init,
      Q => \^start_conf_1\,
      R => '0'
    );
start_conf_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_drs4,
      CE => o_stop_cell_ready_i_1_n_0,
      D => \^start_conf_1\,
      Q => start_conf_2,
      R => '0'
    );
trigger_reset_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_drs4,
      CE => '1',
      D => \FSM_onehot_drs4_states_reg[14]_0\,
      PRE => axi_rst,
      Q => \^drs4_trigs_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0_S00_AXI is
  port (
    dwrite_o_reg_P : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    start_conf_1 : out STD_LOGIC;
    start_conf_2 : out STD_LOGIC;
    drs4_trigs_reg : out STD_LOGIC;
    o_srclk_adc : out STD_LOGIC;
    load_srin_1 : out STD_LOGIC;
    load_srin_2 : out STD_LOGIC;
    o_stop_cell_ready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    o_nReset : out STD_LOGIC;
    o_ROFS : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    o_srclk : out STD_LOGIC;
    o_srin : out STD_LOGIC;
    o_rsrload : out STD_LOGIC;
    o_denable : out STD_LOGIC;
    o_refclk_p : out STD_LOGIC;
    o_dwrite_for_trigger : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    \axi_awaddr_reg[3]_0\ : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    \drs_sr_count_reg[10]\ : out STD_LOGIC;
    rsrload_o_reg : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_A3_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_stop_cell : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rsrload_o_reg_0 : out STD_LOGIC;
    \FSM_onehot_drs4_states_reg[5]\ : out STD_LOGIC;
    srclk_o : out STD_LOGIC;
    srin_o_reg : out STD_LOGIC;
    trigger_reset : out STD_LOGIC;
    rsrload_o_reg_1 : out STD_LOGIC;
    srin_o_reg_0 : out STD_LOGIC;
    \count_refclk_reg[6]\ : out STD_LOGIC;
    \slv_reg2_reg[2]_0\ : out STD_LOGIC;
    srin_o_reg_1 : out STD_LOGIC;
    srin_o_reg_2 : out STD_LOGIC;
    srin_o_reg_3 : out STD_LOGIC;
    srclk_o_reg : out STD_LOGIC;
    clk_drs4 : in STD_LOGIC;
    CONF_REG_start0 : in STD_LOGIC;
    i_drs4_trigger : in STD_LOGIC;
    RSR_init_start0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[14]\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[15]\ : in STD_LOGIC;
    srin_o_reg_4 : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[13]\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[9]\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[10]\ : in STD_LOGIC;
    \FSM_onehot_drs4_states_reg[6]\ : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    aw_en_reg_0 : in STD_LOGIC;
    axi_arready_reg_0 : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_SROUT : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0_S00_AXI : entity is "DRS4_firmware_v3_0_S00_AXI";
end zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0_S00_AXI;

architecture STRUCTURE of zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0_S00_AXI is
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \^axi_awaddr_reg[3]_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_rst : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal cell_counts : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal conf_reg_init : STD_LOGIC;
  signal config_states_axi : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal o_o_nReset0_out : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal refclk_counter : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal shift_reg_init : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal start_ROI : STD_LOGIC;
  signal start_full_readout : STD_LOGIC;
  signal trigger_delay_count_axi : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair28";
begin
  \axi_awaddr_reg[3]_0\ <= \^axi_awaddr_reg[3]_0\;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
DRS4_firmware_comp: entity work.zsys_DRS4_firmware_1_0_drs4_firmware
     port map (
      CONF_REG_start0 => CONF_REG_start0,
      D(14 downto 0) => p_2_in(14 downto 0),
      E(0) => E(0),
      \FSM_onehot_drs4_states_reg[10]_0\ => \FSM_onehot_drs4_states_reg[10]\,
      \FSM_onehot_drs4_states_reg[13]_0\ => \FSM_onehot_drs4_states_reg[13]\,
      \FSM_onehot_drs4_states_reg[14]_0\ => \FSM_onehot_drs4_states_reg[14]\,
      \FSM_onehot_drs4_states_reg[15]_0\ => \FSM_onehot_drs4_states_reg[15]\,
      \FSM_onehot_drs4_states_reg[3]_0\ => \FSM_onehot_drs4_states_reg[3]\,
      \FSM_onehot_drs4_states_reg[5]_0\ => \FSM_onehot_drs4_states_reg[5]\,
      \FSM_onehot_drs4_states_reg[6]_0\ => \FSM_onehot_drs4_states_reg[6]\,
      \FSM_onehot_drs4_states_reg[9]_0\ => \FSM_onehot_drs4_states_reg[9]\,
      Q(6 downto 0) => refclk_counter(6 downto 0),
      RSR_init_start0 => RSR_init_start0,
      axi_awready_reg => \^s00_axi_awready\,
      axi_rst => axi_rst,
      axi_wready_reg => \slv_reg0[31]_i_2_n_0\,
      axi_wready_reg_0 => \^s00_axi_wready\,
      \cell_counts_axi_reg[10]\(10 downto 0) => cell_counts(10 downto 0),
      clk_drs4 => clk_drs4,
      conf_reg_init => conf_reg_init,
      \config_states_axi_reg[2]\(2 downto 0) => config_states_axi(2 downto 0),
      \count_refclk_reg[6]_0\ => \count_refclk_reg[6]\,
      drs4_trigs_reg_0 => drs4_trigs_reg,
      \drs_sr_count_reg[10]_0\ => \drs_sr_count_reg[10]\,
      dwrite_o_reg_P_0 => dwrite_o_reg_P,
      i_SROUT => i_SROUT,
      i_drs4_trigger => i_drs4_trigger,
      load_srin_1 => load_srin_1,
      load_srin_2 => load_srin_2,
      o_A3_0(2 downto 0) => o_A3_0(2 downto 0),
      o_denable => o_denable,
      o_dwrite => o_dwrite,
      o_dwrite_for_trigger => o_dwrite_for_trigger,
      o_refclk_p => o_refclk_p,
      o_rsrload => o_rsrload,
      o_srclk => o_srclk,
      o_srclk_adc => o_srclk_adc,
      o_srin => o_srin,
      o_stop_cell(9 downto 0) => o_stop_cell(9 downto 0),
      o_stop_cell_ready => o_stop_cell_ready,
      \out\(13 downto 0) => \out\(13 downto 0),
      rsrload_o_reg_0 => rsrload_o_reg,
      rsrload_o_reg_1 => rsrload_o_reg_0,
      rsrload_o_reg_2 => rsrload_o_reg_1,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(14 downto 0) => s00_axi_wdata(14 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      shift_reg_init => shift_reg_init,
      \slv_reg2_reg[2]\ => \slv_reg2_reg[2]_0\,
      srclk_o => srclk_o,
      srclk_o_reg_0 => srclk_o_reg,
      srin_o_reg_0 => srin_o_reg,
      srin_o_reg_1 => srin_o_reg_0,
      srin_o_reg_2 => srin_o_reg_1,
      srin_o_reg_3 => srin_o_reg_2,
      srin_o_reg_4 => srin_o_reg_3,
      srin_o_reg_5 => srin_o_reg_4,
      start_ROI => start_ROI,
      start_conf_1 => start_conf_1,
      start_conf_2 => start_conf_2,
      start_full_readout => start_full_readout,
      \trigger_delay_count_axi_reg[7]\(7 downto 0) => trigger_delay_count_axi(7 downto 0),
      trigger_reset => trigger_reset
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_reg_0,
      Q => \^axi_awaddr_reg[3]_0\,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^s00_axi_awready\,
      I2 => \^axi_awaddr_reg[3]_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^s00_axi_awready\,
      I2 => \^axi_awaddr_reg[3]_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^axi_awaddr_reg[3]_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_reg_0,
      Q => s00_axi_bvalid,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[11]\,
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[12]\,
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[13]\,
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[14]\,
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[15]\,
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[16]\,
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[17]\,
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[18]\,
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[19]\,
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[20]\,
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[21]\,
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[22]\,
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[23]\,
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[28]\,
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[29]\,
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[31]\,
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[3]\,
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[7]\,
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => slv_reg0(5),
      Q => axi_rst,
      R => '0'
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_reg_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^axi_awaddr_reg[3]_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\cell_counts_axi_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[7]\,
      Q => cell_counts(0),
      R => '0'
    );
\cell_counts_axi_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[17]\,
      Q => cell_counts(10),
      R => '0'
    );
\cell_counts_axi_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[8]\,
      Q => cell_counts(1),
      R => '0'
    );
\cell_counts_axi_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[9]\,
      Q => cell_counts(2),
      R => '0'
    );
\cell_counts_axi_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[10]\,
      Q => cell_counts(3),
      R => '0'
    );
\cell_counts_axi_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[11]\,
      Q => cell_counts(4),
      R => '0'
    );
\cell_counts_axi_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[12]\,
      Q => cell_counts(5),
      R => '0'
    );
\cell_counts_axi_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[13]\,
      Q => cell_counts(6),
      R => '0'
    );
\cell_counts_axi_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[14]\,
      Q => cell_counts(7),
      R => '0'
    );
\cell_counts_axi_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[15]\,
      Q => cell_counts(8),
      R => '0'
    );
\cell_counts_axi_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[16]\,
      Q => cell_counts(9),
      R => '0'
    );
conf_reg_init_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => slv_reg0(2),
      Q => conf_reg_init,
      R => '0'
    );
\config_states_axi_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[20]\,
      Q => config_states_axi(0),
      R => '0'
    );
\config_states_axi_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[21]\,
      Q => config_states_axi(1),
      R => '0'
    );
\config_states_axi_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[22]\,
      Q => config_states_axi(2),
      R => '0'
    );
o_o_ROFS_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => slv_reg0(6),
      Q => o_ROFS,
      R => '0'
    );
o_o_nReset_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^s00_axi_awready\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      O => o_o_nReset0_out
    );
o_o_nReset_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => slv_reg0(0),
      Q => o_nReset,
      R => '0'
    );
\refclk_counter_axi_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[0]\,
      Q => refclk_counter(0),
      R => '0'
    );
\refclk_counter_axi_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[1]\,
      Q => refclk_counter(1),
      R => '0'
    );
\refclk_counter_axi_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[2]\,
      Q => refclk_counter(2),
      R => '0'
    );
\refclk_counter_axi_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[3]\,
      Q => refclk_counter(3),
      R => '0'
    );
\refclk_counter_axi_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[4]\,
      Q => refclk_counter(4),
      R => '0'
    );
\refclk_counter_axi_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[5]\,
      Q => refclk_counter(5),
      R => '0'
    );
\refclk_counter_axi_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[6]\,
      Q => refclk_counter(6),
      R => '0'
    );
shift_reg_init_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => slv_reg0(1),
      Q => shift_reg_init,
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => \^s00_axi_awready\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(0)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => p_0_in_0(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => p_0_in_0(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => p_0_in_0(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => p_0_in_0(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(1),
      I3 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg2[14]_i_1_n_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => s00_axi_wstrb(1),
      I5 => slv_reg2(15),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D55"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[14]_i_1_n_0\,
      D => p_2_in(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[14]_i_1_n_0\,
      D => p_2_in(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[14]_i_1_n_0\,
      D => p_2_in(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[14]_i_1_n_0\,
      D => p_2_in(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[14]_i_1_n_0\,
      D => p_2_in(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg2[15]_i_1_n_0\,
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => p_2_in(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[14]_i_1_n_0\,
      D => p_2_in(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[14]_i_1_n_0\,
      D => p_2_in(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(0),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(0),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => p_0_in_0(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
start_ROI_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => slv_reg0(3),
      Q => start_ROI,
      R => '0'
    );
start_full_readout_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => slv_reg0(4),
      Q => start_full_readout,
      R => '0'
    );
\trigger_delay_count_axi_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[23]\,
      Q => trigger_delay_count_axi(0),
      R => '0'
    );
\trigger_delay_count_axi_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[24]\,
      Q => trigger_delay_count_axi(1),
      R => '0'
    );
\trigger_delay_count_axi_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[25]\,
      Q => trigger_delay_count_axi(2),
      R => '0'
    );
\trigger_delay_count_axi_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[26]\,
      Q => trigger_delay_count_axi(3),
      R => '0'
    );
\trigger_delay_count_axi_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[27]\,
      Q => trigger_delay_count_axi(4),
      R => '0'
    );
\trigger_delay_count_axi_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[28]\,
      Q => trigger_delay_count_axi(5),
      R => '0'
    );
\trigger_delay_count_axi_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[29]\,
      Q => trigger_delay_count_axi(6),
      R => '0'
    );
\trigger_delay_count_axi_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_o_nReset0_out,
      D => \slv_reg1_reg_n_0_[30]\,
      Q => trigger_delay_count_axi(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0 is
  port (
    o_srclk : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_srclk_adc : out STD_LOGIC;
    o_A3_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_stop_cell : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_stop_cell_ready : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    o_nReset : out STD_LOGIC;
    o_ROFS : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    o_srin : out STD_LOGIC;
    o_rsrload : out STD_LOGIC;
    o_denable : out STD_LOGIC;
    o_dwrite_for_trigger : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    o_refclk_p : out STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_drs4 : in STD_LOGIC;
    i_drs4_trigger : in STD_LOGIC;
    i_SROUT : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0 : entity is "DRS4_firmware_v3_0";
end zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0;

architecture STRUCTURE of zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0 is
  signal \DRS4_firmware_comp/CONF_REG_start0\ : STD_LOGIC;
  signal \DRS4_firmware_comp/RSR_init_start0\ : STD_LOGIC;
  signal \DRS4_firmware_comp/count_refclk0\ : STD_LOGIC;
  signal \DRS4_firmware_comp/load_srin_1\ : STD_LOGIC;
  signal \DRS4_firmware_comp/load_srin_2\ : STD_LOGIC;
  signal \DRS4_firmware_comp/srclk_o\ : STD_LOGIC;
  signal \DRS4_firmware_comp/start_conf_1\ : STD_LOGIC;
  signal \DRS4_firmware_comp/start_conf_2\ : STD_LOGIC;
  signal \DRS4_firmware_comp/trigger_reset\ : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_0 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_1 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_2 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_3 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_34 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_36 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_37 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_4 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_8 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_85 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_86 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_88 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_90 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_91 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_92 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_93 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_94 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_95 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_96 : STD_LOGIC;
  signal DRS4_firmware_v2_0_S00_AXI_inst_n_97 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal denable_o_i_1_n_0 : STD_LOGIC;
  signal dwrite_set_i_1_n_0 : STD_LOGIC;
  signal \^o_denable\ : STD_LOGIC;
  signal \^o_dwrite_for_trigger\ : STD_LOGIC;
  signal o_dwrite_for_trigger_i_1_n_0 : STD_LOGIC;
  signal \^o_refclk_p\ : STD_LOGIC;
  signal \^o_rsrload\ : STD_LOGIC;
  signal \^o_srclk\ : STD_LOGIC;
  signal \^o_srin\ : STD_LOGIC;
  signal refclk_p_o_i_1_n_0 : STD_LOGIC;
  signal rsrload_o_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal srclk_o_i_1_n_0 : STD_LOGIC;
  signal srin_o_i_1_n_0 : STD_LOGIC;
  signal trigger_reset_i_1_n_0 : STD_LOGIC;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  o_denable <= \^o_denable\;
  o_dwrite_for_trigger <= \^o_dwrite_for_trigger\;
  o_refclk_p <= \^o_refclk_p\;
  o_rsrload <= \^o_rsrload\;
  o_srclk <= \^o_srclk\;
  o_srin <= \^o_srin\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
CONF_REG_start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DRS4_firmware_comp/start_conf_1\,
      I1 => \DRS4_firmware_comp/start_conf_2\,
      O => \DRS4_firmware_comp/CONF_REG_start0\
    );
DRS4_firmware_v2_0_S00_AXI_inst: entity work.zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0_S00_AXI
     port map (
      CONF_REG_start0 => \DRS4_firmware_comp/CONF_REG_start0\,
      E(0) => \DRS4_firmware_comp/count_refclk0\,
      \FSM_onehot_drs4_states_reg[10]\ => refclk_p_o_i_1_n_0,
      \FSM_onehot_drs4_states_reg[13]\ => rsrload_o_i_1_n_0,
      \FSM_onehot_drs4_states_reg[14]\ => trigger_reset_i_1_n_0,
      \FSM_onehot_drs4_states_reg[15]\ => dwrite_set_i_1_n_0,
      \FSM_onehot_drs4_states_reg[3]\ => srclk_o_i_1_n_0,
      \FSM_onehot_drs4_states_reg[5]\ => DRS4_firmware_v2_0_S00_AXI_inst_n_86,
      \FSM_onehot_drs4_states_reg[6]\ => o_dwrite_for_trigger_i_1_n_0,
      \FSM_onehot_drs4_states_reg[9]\ => denable_o_i_1_n_0,
      RSR_init_start0 => \DRS4_firmware_comp/RSR_init_start0\,
      aw_en_reg_0 => aw_en_i_1_n_0,
      axi_arready_reg_0 => axi_rvalid_i_1_n_0,
      \axi_awaddr_reg[3]_0\ => DRS4_firmware_v2_0_S00_AXI_inst_n_34,
      axi_wready_reg_0 => axi_bvalid_i_1_n_0,
      clk_drs4 => clk_drs4,
      \count_refclk_reg[6]\ => DRS4_firmware_v2_0_S00_AXI_inst_n_92,
      drs4_trigs_reg => DRS4_firmware_v2_0_S00_AXI_inst_n_17,
      \drs_sr_count_reg[10]\ => DRS4_firmware_v2_0_S00_AXI_inst_n_36,
      dwrite_o_reg_P => DRS4_firmware_v2_0_S00_AXI_inst_n_0,
      i_SROUT => i_SROUT,
      i_drs4_trigger => i_drs4_trigger,
      load_srin_1 => \DRS4_firmware_comp/load_srin_1\,
      load_srin_2 => \DRS4_firmware_comp/load_srin_2\,
      o_A3_0(2 downto 0) => o_A3_0(2 downto 0),
      o_ROFS => o_ROFS,
      o_denable => \^o_denable\,
      o_dwrite => o_dwrite,
      o_dwrite_for_trigger => \^o_dwrite_for_trigger\,
      o_nReset => o_nReset,
      o_refclk_p => \^o_refclk_p\,
      o_rsrload => \^o_rsrload\,
      o_srclk => \^o_srclk\,
      o_srclk_adc => o_srclk_adc,
      o_srin => \^o_srin\,
      o_stop_cell(9 downto 0) => o_stop_cell(9 downto 0),
      o_stop_cell_ready => o_stop_cell_ready,
      \out\(13) => DRS4_firmware_v2_0_S00_AXI_inst_n_1,
      \out\(12) => DRS4_firmware_v2_0_S00_AXI_inst_n_2,
      \out\(11) => DRS4_firmware_v2_0_S00_AXI_inst_n_3,
      \out\(10) => DRS4_firmware_v2_0_S00_AXI_inst_n_4,
      \out\(9) => DRS4_firmware_v2_0_S00_AXI_inst_n_5,
      \out\(8) => DRS4_firmware_v2_0_S00_AXI_inst_n_6,
      \out\(7) => DRS4_firmware_v2_0_S00_AXI_inst_n_7,
      \out\(6) => DRS4_firmware_v2_0_S00_AXI_inst_n_8,
      \out\(5) => DRS4_firmware_v2_0_S00_AXI_inst_n_9,
      \out\(4) => DRS4_firmware_v2_0_S00_AXI_inst_n_10,
      \out\(3) => DRS4_firmware_v2_0_S00_AXI_inst_n_11,
      \out\(2) => DRS4_firmware_v2_0_S00_AXI_inst_n_12,
      \out\(1) => DRS4_firmware_v2_0_S00_AXI_inst_n_13,
      \out\(0) => DRS4_firmware_v2_0_S00_AXI_inst_n_14,
      rsrload_o_reg => DRS4_firmware_v2_0_S00_AXI_inst_n_37,
      rsrload_o_reg_0 => DRS4_firmware_v2_0_S00_AXI_inst_n_85,
      rsrload_o_reg_1 => DRS4_firmware_v2_0_S00_AXI_inst_n_90,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => \^s_axi_arready\,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => \^s_axi_awready\,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rvalid => \^s00_axi_rvalid\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg2_reg[2]_0\ => DRS4_firmware_v2_0_S00_AXI_inst_n_93,
      srclk_o => \DRS4_firmware_comp/srclk_o\,
      srclk_o_reg => DRS4_firmware_v2_0_S00_AXI_inst_n_97,
      srin_o_reg => DRS4_firmware_v2_0_S00_AXI_inst_n_88,
      srin_o_reg_0 => DRS4_firmware_v2_0_S00_AXI_inst_n_91,
      srin_o_reg_1 => DRS4_firmware_v2_0_S00_AXI_inst_n_94,
      srin_o_reg_2 => DRS4_firmware_v2_0_S00_AXI_inst_n_95,
      srin_o_reg_3 => DRS4_firmware_v2_0_S00_AXI_inst_n_96,
      srin_o_reg_4 => srin_o_i_1_n_0,
      start_conf_1 => \DRS4_firmware_comp/start_conf_1\,
      start_conf_2 => \DRS4_firmware_comp/start_conf_2\,
      trigger_reset => \DRS4_firmware_comp/trigger_reset\
    );
RSR_init_start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DRS4_firmware_comp/load_srin_1\,
      I1 => \DRS4_firmware_comp/load_srin_2\,
      O => \DRS4_firmware_comp/RSR_init_start0\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FF070F070F070"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_34,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
denable_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFEFFFFFCFC"
    )
        port map (
      I0 => \DRS4_firmware_comp/count_refclk0\,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_6,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_1,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_11,
      I4 => DRS4_firmware_v2_0_S00_AXI_inst_n_10,
      I5 => \^o_denable\,
      O => denable_o_i_1_n_0
    );
dwrite_set_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCCDFFFFCCCC"
    )
        port map (
      I0 => DRS4_firmware_v2_0_S00_AXI_inst_n_1,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_6,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_9,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_13,
      I4 => DRS4_firmware_v2_0_S00_AXI_inst_n_4,
      I5 => DRS4_firmware_v2_0_S00_AXI_inst_n_0,
      O => dwrite_set_i_1_n_0
    );
o_dwrite_for_trigger_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFFF0"
    )
        port map (
      I0 => DRS4_firmware_v2_0_S00_AXI_inst_n_93,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_9,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_7,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_4,
      I4 => \DRS4_firmware_comp/trigger_reset\,
      I5 => \^o_dwrite_for_trigger\,
      O => o_dwrite_for_trigger_i_1_n_0
    );
refclk_p_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => DRS4_firmware_v2_0_S00_AXI_inst_n_5,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_8,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_9,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_92,
      I4 => \^o_refclk_p\,
      O => refclk_p_o_i_1_n_0
    );
rsrload_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8AFF8A8A8A00"
    )
        port map (
      I0 => DRS4_firmware_v2_0_S00_AXI_inst_n_3,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_37,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_86,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_90,
      I4 => DRS4_firmware_v2_0_S00_AXI_inst_n_85,
      I5 => \^o_rsrload\,
      O => rsrload_o_i_1_n_0
    );
srclk_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFEAA0000"
    )
        port map (
      I0 => DRS4_firmware_v2_0_S00_AXI_inst_n_97,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_12,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_5,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_36,
      I4 => \DRS4_firmware_comp/srclk_o\,
      I5 => \^o_srclk\,
      O => srclk_o_i_1_n_0
    );
srin_o_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4FFFFFFF400"
    )
        port map (
      I0 => DRS4_firmware_v2_0_S00_AXI_inst_n_91,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_96,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_94,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_95,
      I4 => DRS4_firmware_v2_0_S00_AXI_inst_n_88,
      I5 => \^o_srin\,
      O => srin_o_i_1_n_0
    );
trigger_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF1FFFFFFF0"
    )
        port map (
      I0 => DRS4_firmware_v2_0_S00_AXI_inst_n_2,
      I1 => DRS4_firmware_v2_0_S00_AXI_inst_n_6,
      I2 => DRS4_firmware_v2_0_S00_AXI_inst_n_3,
      I3 => DRS4_firmware_v2_0_S00_AXI_inst_n_14,
      I4 => DRS4_firmware_v2_0_S00_AXI_inst_n_9,
      I5 => DRS4_firmware_v2_0_S00_AXI_inst_n_17,
      O => trigger_reset_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zsys_DRS4_firmware_1_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zsys_DRS4_firmware_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zsys_DRS4_firmware_1_0 : entity is "zsys_DRS4_firmware_1_0,DRS4_firmware_v3_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zsys_DRS4_firmware_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of zsys_DRS4_firmware_1_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of zsys_DRS4_firmware_1_0 : entity is "DRS4_firmware_v3_0,Vivado 2018.2";
end zsys_DRS4_firmware_1_0;

architecture STRUCTURE of zsys_DRS4_firmware_1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o_a3_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK1";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  o_A3_0(3) <= \<const1>\;
  o_A3_0(2 downto 0) <= \^o_a3_0\(2 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zsys_DRS4_firmware_1_0_DRS4_firmware_v3_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      clk_drs4 => clk_drs4,
      i_SROUT => i_SROUT,
      i_drs4_trigger => i_drs4_trigger,
      o_A3_0(2 downto 0) => \^o_a3_0\(2 downto 0),
      o_ROFS => o_ROFS,
      o_denable => o_denable,
      o_dwrite => o_dwrite,
      o_dwrite_for_trigger => o_dwrite_for_trigger,
      o_nReset => o_nReset,
      o_refclk_p => o_refclk_p,
      o_rsrload => o_rsrload,
      o_srclk => o_srclk,
      o_srclk_adc => o_srclk_adc,
      o_srin => o_srin,
      o_stop_cell(9 downto 0) => o_stop_cell(9 downto 0),
      o_stop_cell_ready => o_stop_cell_ready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
