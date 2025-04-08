connect -url tcp:127.0.0.1:3121
source C:/Users/victo/Desktop/Vivados/DAQ_MB_te0715_v2/DAQ_MB_te0715_v2.sdk/zsys_wrapper_hw_platform_2/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 251633001C3FA"} -index 0
loadhw -hw C:/Users/victo/Desktop/Vivados/DAQ_MB_te0715_v2/DAQ_MB_te0715_v2.sdk/zsys_wrapper_hw_platform_2/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 251633001C3FA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 251633001C3FA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 251633001C3FA"} -index 0
dow C:/Users/victo/Desktop/Vivados/DAQ_MB_te0715_v2/DAQ_MB_te0715_v2.sdk/daq_MB_hw2/Debug/daq_MB_hw2.elf
configparams force-mem-access 0
bpadd -addr &main
