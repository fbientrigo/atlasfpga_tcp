#defines the real input pin clock, default is 50% duty cycle
#For a ADC ref clk of 25 MHz

#create a virtual clock with opposite edges than Lclk, so it is like the signal that is really generating data_clk
#defines the clock "seen" by the logic (because we take the data from the negative output) so is inverted
#create_generated_clock  -name Lclk_B -source [get_ports {B0_LCLK_P}] -invert -divide_by 1 -add -master_clock Lclk [get_pins microprocessor_subsystem_i/ADC_readout_buff_0/U0/o_Lclk]

#create the generated clock, define the edges from Lclk, best choice.
# 6 veces mas lento que LCLK y proviene de AD_CLK este reloj

# Set two clocks as asynchronous

#set_input_delay -clock [get_clocks Lclk0] -min 3.300 [get_ports {B0_ADC_CH_1_N B0_ADC_CH_1_P B0_ADC_CH_2_N B0_ADC_CH_2_P B0_ADC_CH_3_N B0_ADC_CH_3_P B0_ADC_CH_4_N B0_ADC_CH_4_P B0_ADC_CH_5_N B0_ADC_CH_5_P B0_ADC_CH_6_N B0_ADC_CH_6_P B0_ADC_CH_7_N B0_ADC_CH_7_P B0_ADC_CH_8_N B0_ADC_CH_8_P}]
#set_input_delay -clock [get_clocks Lclk0] -max 5.800 [get_ports {B0_ADC_CH_1_N B0_ADC_CH_1_P B0_ADC_CH_2_N B0_ADC_CH_2_P B0_ADC_CH_3_N B0_ADC_CH_3_P B0_ADC_CH_4_N B0_ADC_CH_4_P B0_ADC_CH_5_N B0_ADC_CH_5_P B0_ADC_CH_6_N B0_ADC_CH_6_P B0_ADC_CH_7_N B0_ADC_CH_7_P B0_ADC_CH_8_N B0_ADC_CH_8_P}]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]



create_clock -period 6.666 -name Lclk0 [get_ports LCLK_MUX_P]
create_clock -period 40.000 -name ADclk0 [get_ports ADCLK_MUX_P]

create_generated_clock -name LCLK_bufg -source [get_ports LCLK_MUX_P] -divide_by 1 -add -master_clock Lclk0 [get_pins -hier -filter {NAME =~ */BUFG_inst_LCLK/O}]
create_generated_clock -name ADCLK_bufg -source [get_ports ADCLK_MUX_P] -divide_by 1 -add -master_clock ADclk0 [get_pins -hier -filter {NAME =~ */BUFG_inst_ADCLK/O}]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[0]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[1]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[2]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[3]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[4]]

#create_generated_clock -name data_clk -source [get_ports ADCLK_MUX_P] -edges {2 8 14} -add -master_clock Lclk0 [get_pins -hier -filter {NAME =~ */BUFR_inst_LCLK/O}]
#create_generated_clock -name data_clk_G -source [get_pins -hier -filter {NAME =~ */BUFR_inst_ADCLK/O}] -divide_by 1 -add -master_clock ADclk0 [get_pins -hier -filter {NAME =~ */data_clk_bufg/BUFG_O*}]



set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks Lclk*]
set_input_delay -clock [get_clocks clk_fpga_1] -min -add_delay 4.000 [get_ports {DRS_SROUT[*]}]
set_input_delay -clock [get_clocks clk_fpga_1] -max -add_delay 10.000 [get_ports {DRS_SROUT[*]}]
set_input_delay -clock [get_clocks clk_fpga_0] -min -add_delay 4.000 [get_ports ADC_MISO]
set_input_delay -clock [get_clocks clk_fpga_0] -max -add_delay 8.000 [get_ports ADC_MISO]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[0]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[0]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[0]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[0]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[1]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[1]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[1]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[1]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[2]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[2]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[2]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[2]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[3]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[3]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[3]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[3]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[4]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[4]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[4]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[4]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[5]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[5]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[5]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[5]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[6]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[6]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[6]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[6]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[7]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[7]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[7]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[7]}]

#set_output_delay -clock [get_clocks clk_fpga_1] 15.000 [get_ports {{DRS_RSLOAD[0]} {DRS_RSLOAD[1]} {DRS_RSLOAD[2]} {DRS_RSLOAD[3]} {DRS_RSLOAD[4]} {DRS_SRCLK[0]} {DRS_SRCLK[1]} {DRS_SRCLK[2]} {DRS_SRCLK[3]} {DRS_SRCLK[4]} {DRS_DWRITE[0]} {DRS_DWRITE[1]} {DRS_DWRITE[2]} {DRS_DWRITE[3]} {DRS_DWRITE[4]}}]








set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_in_trigger[7]}]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/unset_input]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/i_trigg_mask[7]}]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/samp_out]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/o_out_trigger]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/p_7_in]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/p_1_in3_in]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/p_3_in]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/p_11_in]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/p_13_in]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/p_9_in]
set_property MARK_DEBUG false [get_nets zsys_i/trigger_logic_0/U0/p_5_in]
set_property MARK_DEBUG false [get_nets {zsys_i/trigger_logic_0/U0/gen_rise[0].rise_input_reg_n_0_[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Vibufds_diff_out_0_o_MUXOUT_P[7]}]
set_property MARK_DEBUG false [get_nets zsys_i/util_ds_buf_ADCLK_IBUF_OUT]






set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/rd_data_count[11]}]

set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[12]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[13]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[14]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[15]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[16]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[17]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[18]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[19]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[20]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[21]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[22]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[23]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[24]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[25]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[26]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[27]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[28]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[29]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[30]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/reg_data_out[31]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/o_debug[8]}]
set_property MARK_DEBUG false [get_nets zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/i_Lclk]
set_property MARK_DEBUG false [get_nets zsys_i/ADC/AXI_ADC_0/U0/AXI_ADC_v3_0_S00_AXI_inst/i_ADclk]

connect_debug_port u_ila_0/clk [get_nets [list zsys_i/Lvds_Rx_top_0/U0/C]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_C]

set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/ChOut_0[3]}]


connect_debug_port u_ila_0/clk [get_nets [list zsys_i/Lvds_Rx_top_0/U0/RxClk]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_RxClk]



set_property MARK_DEBUG true [get_nets zsys_i/Lvds_Rx_top_0_AnalyseOut]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_0[10]}]

connect_debug_port u_ila_0/probe1 [get_nets [list zsys_i/Lvds_Rx_top_0_AnalyseOut]]
connect_debug_port dbg_hub/clk [get_nets clk]
















set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/DataInChP[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0/U0/DataInChP[1]}]
set_property MARK_DEBUG false [get_nets zsys_i/Lvds_Rx_top_0/U0/RxClk]
set_property MARK_DEBUG false [get_nets zsys_i/Lvds_Rx_top_0/U0/IntRxClkNot]
set_property MARK_DEBUG false [get_nets zsys_i/Lvds_Rx_top_0/U0/SysRst]
set_property MARK_DEBUG false [get_nets zsys_i/Lvds_Rx_top_0/U0/IntReceiverRst]

set_property MARK_DEBUG true [get_nets zsys_i/Lvds_Rx_top_0/U0/D]
connect_debug_port u_ila_0/probe6 [get_nets [list zsys_i/Lvds_Rx_top_0/U0/D]]

set_property MARK_DEBUG false [get_nets zsys_i/Lvds_Rx_top_0/U0/IntLclkDcmPhsClkLocked]




set_property MARK_DEBUG true [get_nets zsys_i/trigger_logic_0_o_out_trigger]
set_property MARK_DEBUG false [get_nets zsys_i/ADC/ADC_MOSI]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_1[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_6[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_4[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_5[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/mapper_0_o_out_2[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/ROController_0/o_ascii[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/ROController_0/o_ascii[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/ROController_0/o_ascii[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/ROController_0/o_ascii[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/ROController_0/o_ascii[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/ROController_0/o_ascii[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/ROController_0/o_ascii[6]}]





set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_0_o_debug[7]}]

connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]


connect_debug_port dbg_hub/clk [get_nets u_ila_1_FCLK_CLK0]

set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_0/o_debug[9]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_0/o_debug[10]}]
connect_debug_port u_ila_0/probe1 [get_nets [list {zsys_i/ADC/AXI_ADC_0/o_debug[9]} {zsys_i/ADC/AXI_ADC_0/o_debug[10]}]]

set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/Lvds_Rx_top_0_ChOut_1[11]}]
set_property MARK_DEBUG false [get_nets ADC_MOSI_OBUF]
set_property MARK_DEBUG false [get_nets ADC_SCLK_OBUF]


set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[1]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[0]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[2]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[3]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[4]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[5]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[6]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[7]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[8]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[9]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[10]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_0[11]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[8]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[10]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[2]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[3]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[4]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[5]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[6]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[9]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[7]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[11]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[0]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_3[1]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[2]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[0]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[1]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[3]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[4]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[5]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[6]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[7]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[8]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[9]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[10]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/mapper_0_o_out_7[11]}]



set_property MARK_DEBUG false [get_nets zsys_i/ADC_SCLK]

connect_debug_port u_ila_0/probe3 [get_nets [list {zsys_i/ADC/AXI_ADC_0/o_debug[9]} {zsys_i/ADC/AXI_ADC_0/o_debug[10]}]]





set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[0]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[1]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[2]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[3]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[4]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[5]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[6]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[7]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[8]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[14]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[15]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[12]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[13]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[9]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[10]}]
set_property MARK_DEBUG true [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/o_data_out_ch0[11]}]

set_property MARK_DEBUG false [get_nets zsys_i/ADC/ADC_MISO]
set_property MARK_DEBUG false [get_nets zsys_i/ADC_MOSI]
set_property MARK_DEBUG false [get_nets zsys_i/ADC_MISO]

set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[14]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[15]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[12]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[13]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[8]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/o_data_out_ch0[10]}]



set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[1]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[14]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[4]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[15]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[7]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[10]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[11]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[12]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[0]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[13]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[2]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[3]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[5]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[9]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[6]}]
set_property MARK_DEBUG false [get_nets {zsys_i/ADC/AXI_ADC_1_o_data_out_ch0[8]}]



set_property MARK_DEBUG false [get_nets zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/misaligned]
set_property MARK_DEBUG false [get_nets zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/BITSLIP]
set_property MARK_DEBUG false [get_nets zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/bitslip_even_reg_n_0]

connect_debug_port u_ila_0/probe3 [get_nets [list zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/BITSLIP]]
connect_debug_port u_ila_0/probe4 [get_nets [list zsys_i/ADC/AXI_ADC_1/U0/AXI_ADC_v3_0_S00_AXI_inst/Inst_ADC_readout_12bit/bitslip_even_reg_n_0]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list zsys_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {zsys_i/ADC/mapper_0_o_out_7[0]} {zsys_i/ADC/mapper_0_o_out_7[1]} {zsys_i/ADC/mapper_0_o_out_7[2]} {zsys_i/ADC/mapper_0_o_out_7[3]} {zsys_i/ADC/mapper_0_o_out_7[4]} {zsys_i/ADC/mapper_0_o_out_7[5]} {zsys_i/ADC/mapper_0_o_out_7[6]} {zsys_i/ADC/mapper_0_o_out_7[7]} {zsys_i/ADC/mapper_0_o_out_7[8]} {zsys_i/ADC/mapper_0_o_out_7[9]} {zsys_i/ADC/mapper_0_o_out_7[10]} {zsys_i/ADC/mapper_0_o_out_7[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 12 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {zsys_i/ADC/mapper_0_o_out_3[0]} {zsys_i/ADC/mapper_0_o_out_3[1]} {zsys_i/ADC/mapper_0_o_out_3[2]} {zsys_i/ADC/mapper_0_o_out_3[3]} {zsys_i/ADC/mapper_0_o_out_3[4]} {zsys_i/ADC/mapper_0_o_out_3[5]} {zsys_i/ADC/mapper_0_o_out_3[6]} {zsys_i/ADC/mapper_0_o_out_3[7]} {zsys_i/ADC/mapper_0_o_out_3[8]} {zsys_i/ADC/mapper_0_o_out_3[9]} {zsys_i/ADC/mapper_0_o_out_3[10]} {zsys_i/ADC/mapper_0_o_out_3[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 12 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {zsys_i/ADC/mapper_0_o_out_0[0]} {zsys_i/ADC/mapper_0_o_out_0[1]} {zsys_i/ADC/mapper_0_o_out_0[2]} {zsys_i/ADC/mapper_0_o_out_0[3]} {zsys_i/ADC/mapper_0_o_out_0[4]} {zsys_i/ADC/mapper_0_o_out_0[5]} {zsys_i/ADC/mapper_0_o_out_0[6]} {zsys_i/ADC/mapper_0_o_out_0[7]} {zsys_i/ADC/mapper_0_o_out_0[8]} {zsys_i/ADC/mapper_0_o_out_0[9]} {zsys_i/ADC/mapper_0_o_out_0[10]} {zsys_i/ADC/mapper_0_o_out_0[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list zsys_i/trigger_logic_0_o_out_trigger]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
