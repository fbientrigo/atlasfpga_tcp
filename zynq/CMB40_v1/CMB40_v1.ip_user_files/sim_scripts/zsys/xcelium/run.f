-makelib xcelium_lib/xilinx_vip -sv \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_3 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_5 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_processing_system7_0_0/sim/zsys_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_ADC_readout_buff_0_0/sim/zsys_ADC_readout_buff_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_ROController_0_0/sim/zsys_ROController_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_mapper_0_0/sim/zsys_mapper_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_rst_ps7_0_100M_0/sim/zsys_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_fifo_generator_0_0/sim/zsys_fifo_generator_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlconstant_1_0/sim/zsys_xlconstant_1_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_proc_sys_reset_0_0/sim/zsys_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlconstant_0_0/sim/zsys_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_19 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_axi_gpio_0_0/sim/zsys_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_5 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_5 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_5 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/0e42/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_12 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/7f1a/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_gate_bit_v12_0_5 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/693f/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_counter_v3_0_5 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/0952/hdl/xbip_counter_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_counter_binary_v12_0_12 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/c366/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_c_counter_binary_0_0/sim/zsys_c_counter_binary_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlconcat_1_0/sim/zsys_xlconcat_1_0.v" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_1 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlslice_0_1/sim/zsys_xlslice_0_1.v" \
  "../../../bd/zsys/ip/zsys_xlslice_1_0/sim/zsys_xlslice_1_0.v" \
  "../../../bd/zsys/ip/zsys_xlslice_0_2/sim/zsys_xlslice_0_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_util_ds_buf_1_1/util_ds_buf.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_1_1/sim/zsys_util_ds_buf_1_1.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_2_0/sim/zsys_util_ds_buf_2_0.vhd" \
  "../../../bd/zsys/ipshared/00b3/src/drs4_firmware_v5.vhd" \
  "../../../bd/zsys/ipshared/00b3/src/DRS4_firmware_v2_0_S00_AXI.vhd" \
  "../../../bd/zsys/ipshared/00b3/src/DRS4_firmware_v2_0.vhd" \
  "../../../bd/zsys/ip/zsys_DRS4_firmware_1_0/sim/zsys_DRS4_firmware_1_0.vhd" \
  "../../../bd/zsys/ip/zsys_rst_ps7_0_100M_1/sim/zsys_rst_ps7_0_100M_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlconstant_1_1/sim/zsys_xlconstant_1_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ipshared/e524/hdl/dac_i2c_v1_0_S00_AXI.vhd" \
  "../../../bd/zsys/ipshared/e524/src/i2c_control.vhd" \
  "../../../bd/zsys/ipshared/e524/src/i2c_dac.vhd" \
  "../../../bd/zsys/ipshared/e524/hdl/dac_i2c_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_dac_i2c_0_0/sim/zsys_dac_i2c_0_0.vhd" \
-endlib
-makelib xcelium_lib/fit_timer_v2_0_8 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/d59c/hdl/fit_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_fit_timer_0_0/sim/zsys_fit_timer_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_reset_init_0_0/sim/zsys_reset_init_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlslice_10_0/sim/zsys_xlslice_10_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_trigger_logic_0_0/sim/zsys_trigger_logic_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlslice_2_0/sim/zsys_xlslice_2_0.v" \
  "../../../bd/zsys/ip/zsys_xlslice_2_1/sim/zsys_xlslice_2_1.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_util_vector_logic_0_0/sim/zsys_util_vector_logic_0_0.v" \
  "../../../bd/zsys/ip/zsys_util_vector_logic_0_1/sim/zsys_util_vector_logic_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_M1to5_0_0/sim/zsys_M1to5_0_0.vhd" \
  "../../../bd/zsys/ipshared/edit_CPLD_ctrl_v1_0.srcs/sources_1/new/CPLD_comm_module.vhd" \
  "../../../bd/zsys/ip/zsys_CPLD_ctrl_0_0/sim/zsys_CPLD_ctrl_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_fifo8b_2_axis_0_0/src/fifo_generator_1/sim/fifo_generator_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ipshared/76d2/hdl/fifo8b_2_axis_v1_0_M00_AXIS.vhd" \
  "../../../bd/zsys/ipshared/76d2/hdl/fifo8b_2_axis_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_fifo8b_2_axis_0_0/sim/zsys_fifo8b_2_axis_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_11 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_19 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_10 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/6e5f/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_18 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/6bfe/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_axi_dma_0_0/sim/zsys_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/sim/bd_fa8c.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_10/sim/bd_fa8c_s00a2s_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_19/sim/bd_fa8c_s01a2s_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_25/sim/bd_fa8c_s02a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_29/sim/bd_fa8c_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_35/sim/bd_fa8c_m00e_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_30/sim/bd_fa8c_m00arn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_31/sim/bd_fa8c_m00rn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_32/sim/bd_fa8c_m00awn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_33/sim/bd_fa8c_m00wn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_34/sim/bd_fa8c_m00bn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_26/sim/bd_fa8c_sawn_1.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_27/sim/bd_fa8c_swn_1.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_28/sim/bd_fa8c_sbn_1.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_22/sim/bd_fa8c_s02mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_23/sim/bd_fa8c_s02tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_24/sim/bd_fa8c_s02sic_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_20/sim/bd_fa8c_sarn_1.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_21/sim/bd_fa8c_srn_1.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_16/sim/bd_fa8c_s01mmu_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_17/sim/bd_fa8c_s01tr_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_18/sim/bd_fa8c_s01sic_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_11/sim/bd_fa8c_sarn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_12/sim/bd_fa8c_srn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_13/sim/bd_fa8c_sawn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_14/sim/bd_fa8c_swn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_15/sim/bd_fa8c_sbn_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_7/sim/bd_fa8c_s00mmu_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_8/sim/bd_fa8c_s00tr_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_9/sim/bd_fa8c_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/4e7b/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_2/sim/bd_fa8c_arsw_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_3/sim/bd_fa8c_rsw_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_4/sim/bd_fa8c_awsw_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_5/sim/bd_fa8c_wsw_0.sv" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_6/sim/bd_fa8c_bsw_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_0/sim/bd_fa8c_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_1/sim/bd_fa8c_psr_aclk_0.vhd" \
  "../../../bd/zsys/ip/zsys_axi_smc_0/sim/zsys_axi_smc_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlconcat_0_0/sim/zsys_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_M1to5_0_1/sim/zsys_M1to5_0_1.vhd" \
  "../../../bd/zsys/ip/zsys_M1to5_0_2/sim/zsys_M1to5_0_2.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_2_1/sim/zsys_util_ds_buf_2_1.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_4_0/sim/zsys_util_ds_buf_4_0.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_4_1/sim/zsys_util_ds_buf_4_1.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_4_2/sim/zsys_util_ds_buf_4_2.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_17 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_16 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_18 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xbar_0/sim/zsys_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_util_ds_buf_3_1/sim/zsys_util_ds_buf_3_1.vhd" \
  "../../../bd/zsys/sim/zsys.vhd" \
  "../../../bd/zsys/ip/zsys_Signal_sel_1_0/sim/zsys_Signal_sel_1_0.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_0_1/sim/zsys_util_ds_buf_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlconstant_2_1/sim/zsys_xlconstant_2_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_enable_signal_0_0/sim/zsys_enable_signal_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlslice_12to14_0/sim/zsys_xlslice_12to14_0.v" \
  "../../../bd/zsys/ip/zsys_xlslice_3to3_0/sim/zsys_xlslice_3to3_0.v" \
  "../../../bd/zsys/ip/zsys_xlconcat_1_1/sim/zsys_xlconcat_1_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_util_ds_buf_ADCLK_0/sim/zsys_util_ds_buf_ADCLK_0.vhd" \
  "../../../bd/zsys/ip/zsys_c_counter_binary_0_1/sim/zsys_c_counter_binary_0_1.vhd" \
  "../../../bd/zsys/ip/zsys_delay_module_0_0/sim/zsys_delay_module_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_axi_gpio_1_0/sim/zsys_axi_gpio_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlslice_2_2/sim/zsys_xlslice_2_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_delay_module_0_1/sim/zsys_delay_module_0_1.vhd" \
  "../../../bd/zsys/ipshared/b2a8/hdl/clk_mon_v1_0_S00_AXI.vhd" \
  "../../../bd/zsys/ipshared/b2a8/src/clk_monitor.vhd" \
  "../../../bd/zsys/ipshared/b2a8/hdl/clk_mon_v1_0.vhd" \
  "../../../bd/zsys/ip/zsys_clk_mon_0_0/sim/zsys_clk_mon_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_Vibufds_diff_out_0_0/sim/zsys_Vibufds_diff_out_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlconstant_1_2/sim/zsys_xlconstant_1_2.v" \
  "../../../bd/zsys/ip/zsys_xlconcat_3_0/sim/zsys_xlconcat_3_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_DRS_A_test_0_0/sim/zsys_DRS_A_test_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlslice_3to3_1/sim/zsys_xlslice_3to3_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_Elink_output_0_0/sim/zsys_Elink_output_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_0_0/sim/zsys_util_ds_buf_0_0.vhd" \
  "../../../bd/zsys/ip/zsys_util_ds_buf_0_2/sim/zsys_util_ds_buf_0_2.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_xlslice_3to3_2/sim/zsys_xlslice_3to3_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_Lvds_Rx_top_0_0/sim/zsys_Lvds_Rx_top_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_util_vector_logic_2_0_1/sim/zsys_util_vector_logic_2_0.v" \
  "../../../bd/zsys/ip/zsys_util_vector_logic_0_2/sim/zsys_util_vector_logic_0_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ipshared/a552/hdl/AXI_ADC_v3_0_S00_AXI.vhd" \
  "../../../bd/zsys/ipshared/a552/src/SPI_core_v2.vhd" \
  "../../../bd/zsys/ipshared/a552/src/ADC_ctrl.vhd" \
  "../../../bd/zsys/ipshared/a552/src/ADC_readout_3.vhd" \
  "../../../bd/zsys/ipshared/a552/hdl/AXI_ADC_v3_0.vhd" \
  "../../../bd/zsys/ip/zsys_AXI_ADC_1_0/sim/zsys_AXI_ADC_1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_16 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_auto_cc_0/sim/zsys_auto_cc_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_17 \
  "../../../../CMB40_v1.srcs/sources_1/bd/zsys/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/zsys/ip/zsys_auto_pc_0/sim/zsys_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

