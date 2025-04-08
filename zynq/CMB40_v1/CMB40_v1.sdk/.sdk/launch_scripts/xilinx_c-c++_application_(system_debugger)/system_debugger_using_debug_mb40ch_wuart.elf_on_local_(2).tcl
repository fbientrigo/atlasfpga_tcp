connect -url tcp:127.0.0.1:3121
source /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.sdk/HARDWARE_PLATFORM/2024_12_02_CMB40/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "JTAG-ONB4 2516330074DBA" && level==0} -index 1
fpga -file /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.sdk/HARDWARE_PLATFORM/2024_12_02_CMB40/zsys_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
loadhw -hw /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.sdk/HARDWARE_PLATFORM/2024_12_02_CMB40/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
dow /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/CMB_project_Gitlab_Orlando/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.sdk/MB40ch_wUART/Debug/MB40ch_wUART.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
con
