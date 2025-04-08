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
set_property webtalk.parent_dir c:/users/victo/desktop/vivados/cmb40_v1/cmb40_v1.tmp/drs4_firmware_v4_project/DRS4_firmware_v4_project.cache/wt [current_project]
set_property parent.project_path c:/users/victo/desktop/vivados/cmb40_v1/cmb40_v1.tmp/drs4_firmware_v4_project/DRS4_firmware_v4_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part trenz.biz:te0715_15_2i:part0:1.1 [current_project]
set_property ip_repo_paths c:/Users/victo/Desktop/Vivados/ip_lib [current_project]
set_property ip_output_repo c:/users/victo/desktop/vivados/cmb40_v1/cmb40_v1.tmp/drs4_firmware_v4_project/DRS4_firmware_v4_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  c:/Users/victo/Desktop/Vivados/ip_lib/DRS4_firmware/src/DRS4_firmware_v2_0_S00_AXI.vhd
  c:/Users/victo/Desktop/Vivados/ip_lib/DRS4_firmware/src/drs4_firmware_v5.vhd
  c:/Users/victo/Desktop/Vivados/ip_lib/DRS4_firmware/src/DRS4_firmware_v2_0.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top DRS4_firmware_v3_0 -part xc7z015clg485-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef DRS4_firmware_v3_0.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file DRS4_firmware_v3_0_utilization_synth.rpt -pb DRS4_firmware_v3_0_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
