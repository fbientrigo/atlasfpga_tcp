connect -url tcp:127.0.0.1:3121
source C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.sdk/zsys_wrapper_hw_platform_2/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074E6A"} -index 0
loadhw -hw C:/Users/victo/Desktop/Vivados/verDAQ8_uart/verDAQ8_uart.sdk/zsys_wrapper_hw_platform_2/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074E6A"} -index 0
stop
ps7_init
ps7_post_config
configparams force-mem-access 0
