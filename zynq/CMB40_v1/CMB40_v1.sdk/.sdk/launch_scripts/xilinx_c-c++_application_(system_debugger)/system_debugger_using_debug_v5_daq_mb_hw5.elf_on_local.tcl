connect -url tcp:127.0.0.1:3121
source C:/Users/victo/Desktop/Vivados/DAQ_MB_te0715_v4/DAQ_MB_te0715_v4.sdk/zsys_wrapper_hw_platform_5/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A30E7E"} -index 0
loadhw -hw C:/Users/victo/Desktop/Vivados/DAQ_MB_te0715_v4/DAQ_MB_te0715_v4.sdk/zsys_wrapper_hw_platform_5/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A30E7E"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A30E7E"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A30E7E"} -index 0
dow C:/Users/victo/Desktop/Vivados/DAQ_MB_te0715_v4/DAQ_MB_te0715_v4.sdk/v5_daq_MB_hw5/Debug/v5_daq_MB_hw5.elf
configparams force-mem-access 0
bpadd -addr &main
