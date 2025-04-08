# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z015clg485-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.cache/wt [current_project]
set_property parent.project_path /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part_repo_paths /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/TE0715-test_board/test_board/board_files [current_project]
set_property board_part trenz.biz:te0715_15_2i:part0:1.1 [current_project]
set_property ip_repo_paths {
  /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/ip_lib/Mult_ADC_IP/Mult_ADC_AXI_1.0
  /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/ip_lib
} [current_project]
set_property ip_output_repo /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/hdl/zsys_wrapper.vhd
add_files /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/zsys.bd
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_processing_system7_0_0/zsys_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_rst_ps7_0_100M_0/zsys_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_rst_ps7_0_100M_0/zsys_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_rst_ps7_0_100M_0/zsys_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_fifo_generator_0_0/zsys_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_fifo_generator_0_0/zsys_fifo_generator_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_fifo_generator_0_0/zsys_fifo_generator_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_proc_sys_reset_0_0/zsys_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_proc_sys_reset_0_0/zsys_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_proc_sys_reset_0_0/zsys_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_gpio_0_0/zsys_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_gpio_0_0/zsys_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_gpio_0_0/zsys_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_c_counter_binary_0_0/zsys_c_counter_binary_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_1_1/zsys_util_ds_buf_1_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_1_1/zsys_util_ds_buf_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_1_1/zsys_util_ds_buf_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_2_0/zsys_util_ds_buf_2_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_2_0/zsys_util_ds_buf_2_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_2_0/zsys_util_ds_buf_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_rst_ps7_0_100M_1/zsys_rst_ps7_0_100M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_rst_ps7_0_100M_1/zsys_rst_ps7_0_100M_1.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_rst_ps7_0_100M_1/zsys_rst_ps7_0_100M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_fit_timer_0_0/zsys_fit_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_fifo8b_2_axis_0_0/src/fifo_generator_1/fifo_generator_1.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_dma_0_0/zsys_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_dma_0_0/zsys_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_dma_0_0/zsys_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_10/bd_fa8c_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_19/bd_fa8c_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_25/bd_fa8c_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_29/bd_fa8c_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_30/bd_fa8c_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_31/bd_fa8c_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_32/bd_fa8c_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_33/bd_fa8c_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_34/bd_fa8c_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_26/bd_fa8c_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_27/bd_fa8c_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_28/bd_fa8c_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_20/bd_fa8c_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_21/bd_fa8c_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_11/bd_fa8c_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_12/bd_fa8c_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_13/bd_fa8c_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_14/bd_fa8c_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_15/bd_fa8c_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_2/bd_fa8c_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_3/bd_fa8c_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_4/bd_fa8c_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_5/bd_fa8c_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_6/bd_fa8c_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_1/bd_fa8c_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/bd_0/ip/ip_1/bd_fa8c_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_2_1/zsys_util_ds_buf_2_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_2_1/zsys_util_ds_buf_2_1.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_2_1/zsys_util_ds_buf_2_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_0/zsys_util_ds_buf_4_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_0/zsys_util_ds_buf_4_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_0/zsys_util_ds_buf_4_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_1/zsys_util_ds_buf_4_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_1/zsys_util_ds_buf_4_1.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_1/zsys_util_ds_buf_4_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_2/zsys_util_ds_buf_4_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_2/zsys_util_ds_buf_4_2.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_4_2/zsys_util_ds_buf_4_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_xbar_0/zsys_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_3_1/zsys_util_ds_buf_3_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_3_1/zsys_util_ds_buf_3_1.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_3_1/zsys_util_ds_buf_3_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_1/zsys_util_ds_buf_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_1/zsys_util_ds_buf_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_1/zsys_util_ds_buf_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_ADCLK_0/zsys_util_ds_buf_ADCLK_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_ADCLK_0/zsys_util_ds_buf_ADCLK_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_ADCLK_0/zsys_util_ds_buf_ADCLK_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_c_counter_binary_0_1/zsys_c_counter_binary_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_gpio_1_0/zsys_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_gpio_1_0/zsys_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_axi_gpio_1_0/zsys_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_0/zsys_util_ds_buf_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_0/zsys_util_ds_buf_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_0/zsys_util_ds_buf_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_2/zsys_util_ds_buf_0_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_2/zsys_util_ds_buf_0_2.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_util_ds_buf_0_2/zsys_util_ds_buf_0_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_auto_cc_0/zsys_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_auto_cc_0/zsys_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_auto_cc_0/zsys_auto_cc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_auto_pc_0/zsys_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/zsys_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/constrs_1/new/timing.xdc
set_property used_in_implementation false [get_files /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/constrs_1/new/timing.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top zsys_wrapper -part xc7z015clg485-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef zsys_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file zsys_wrapper_utilization_synth.rpt -pb zsys_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
