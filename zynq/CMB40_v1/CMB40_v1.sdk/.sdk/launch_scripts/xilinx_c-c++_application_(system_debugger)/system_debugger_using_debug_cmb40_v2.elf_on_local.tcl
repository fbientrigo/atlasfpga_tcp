connect -url tcp:127.0.0.1:3121
source /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/2024_10_02_proyecto/CMB40_v1/CMB40_v1.sdk/zsys_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
loadhw -hw /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/2024_10_02_proyecto/CMB40_v1/CMB40_v1.sdk/zsys_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
dow /home/ifraba/Desktop/Laboral/SAPHIR/Pruebas_tecnicas/CMB_project/2024_10_02_proyecto/CMB40_v1/CMB40_v1.sdk/CMB40_V2/Debug/CMB40_V2.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074DBA"} -index 0
con
