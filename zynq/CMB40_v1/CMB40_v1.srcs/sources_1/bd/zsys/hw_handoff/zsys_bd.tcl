
################################################################
# This is a generated script based on design: zsys
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source zsys_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# DRS_A_test, Elink_output, Lvds_Rx_top, M1to5, M1to5, M1to5, Signal_sel, Vibufds_diff_out, delay_module, delay_module, enable_signal, reset_init, trigger_logic, ADC_readout_buff, ROController, mapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z015clg485-2
   set_property BOARD_PART trenz.biz:te0715_15_2i:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name zsys

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_0 "DRS_nRESET, o_denable
Signals are controlled by CPLD" [get_bd_designs $design_name]

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: ADC_refclk_OBUFDS
proc create_hier_cell_ADC_refclk_OBUFDS { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ADC_refclk_OBUFDS() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_1_N
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_1_P
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_2_N
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_2_P
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_3_N
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_3_P
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_4_N
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_4_P
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_5_N
  create_bd_pin -dir O -from 0 -to 0 -type clk ADC_refclk_5_P
  create_bd_pin -dir I -from 0 -to 0 -type clk OBUF_IN

  # Create instance: util_ds_buf_2, and set properties
  set util_ds_buf_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_2 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_2

  # Create instance: util_ds_buf_4, and set properties
  set util_ds_buf_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_4 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_4

  # Create instance: util_ds_buf_5, and set properties
  set util_ds_buf_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_5 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_5

  # Create instance: util_ds_buf_6, and set properties
  set util_ds_buf_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_6 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_6

  # Create instance: util_ds_buf_7, and set properties
  set util_ds_buf_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_7 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_7

  # Create port connections
  connect_bd_net -net DRS4_firmware_0_o_srclk_R2 [get_bd_pins OBUF_IN] [get_bd_pins util_ds_buf_2/OBUF_IN] [get_bd_pins util_ds_buf_4/OBUF_IN] [get_bd_pins util_ds_buf_5/OBUF_IN] [get_bd_pins util_ds_buf_6/OBUF_IN] [get_bd_pins util_ds_buf_7/OBUF_IN]
  connect_bd_net -net util_ds_buf_2_OBUF_DS_N [get_bd_pins ADC_refclk_1_N] [get_bd_pins util_ds_buf_2/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_2_OBUF_DS_P [get_bd_pins ADC_refclk_1_P] [get_bd_pins util_ds_buf_2/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_4_OBUF_DS_N [get_bd_pins ADC_refclk_2_N] [get_bd_pins util_ds_buf_4/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_4_OBUF_DS_P [get_bd_pins ADC_refclk_2_P] [get_bd_pins util_ds_buf_4/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_5_OBUF_DS_N [get_bd_pins ADC_refclk_5_N] [get_bd_pins util_ds_buf_5/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_5_OBUF_DS_P [get_bd_pins ADC_refclk_5_P] [get_bd_pins util_ds_buf_5/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_6_OBUF_DS_N [get_bd_pins ADC_refclk_3_N] [get_bd_pins util_ds_buf_6/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_6_OBUF_DS_P [get_bd_pins ADC_refclk_3_P] [get_bd_pins util_ds_buf_6/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_7_OBUF_DS_N [get_bd_pins ADC_refclk_4_N] [get_bd_pins util_ds_buf_7/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_7_OBUF_DS_P [get_bd_pins ADC_refclk_4_P] [get_bd_pins util_ds_buf_7/OBUF_DS_P]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ADC
proc create_hier_cell_ADC { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ADC() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI1

  # Create pins
  create_bd_pin -dir I ADC_MISO
  create_bd_pin -dir O ADC_MOSI
  create_bd_pin -dir O ADC_SCLK
  create_bd_pin -dir I -from 7 -to 0 MUXOUT_N
  create_bd_pin -dir I -from 7 -to 0 MUXOUT_P
  create_bd_pin -dir I i_ADclk
  create_bd_pin -dir I i_DRS4_DWRITEn
  create_bd_pin -dir I i_Lclk
  create_bd_pin -dir I i_next_fifo_full
  create_bd_pin -dir I -type rst i_rst
  create_bd_pin -dir I -from 9 -to 0 i_stop_cell
  create_bd_pin -dir I i_stop_cell_ready
  create_bd_pin -dir I i_veto
  create_bd_pin -dir O o_Lclk
  create_bd_pin -dir O -from 7 -to 0 o_ascii
  create_bd_pin -dir O o_busy
  create_bd_pin -dir O -type clk o_data_clk
  create_bd_pin -dir O o_outfifo_wr_en
  create_bd_pin -dir O o_wr_fifo_en
  create_bd_pin -dir I -type clk rd_clk
  create_bd_pin -dir O -from 11 -to 0 rd_data_count
  create_bd_pin -dir I -type rst s00_axi_aresetn

  # Create instance: ADC_readout_buff_0, and set properties
  set block_name ADC_readout_buff
  set block_cell_name ADC_readout_buff_0
  if { [catch {set ADC_readout_buff_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ADC_readout_buff_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: AXI_ADC_1, and set properties
  set AXI_ADC_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:AXI_ADC:4.0 AXI_ADC_1 ]

  # Create instance: ROController_0, and set properties
  set block_name ROController
  set block_cell_name ROController_0
  if { [catch {set ROController_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ROController_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {12} \
   CONFIG.Enable_Safety_Circuit {false} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {4093} \
   CONFIG.Full_Threshold_Negate_Value {4092} \
   CONFIG.Input_Data_Width {97} \
   CONFIG.Input_Depth {4096} \
   CONFIG.Output_Data_Width {97} \
   CONFIG.Output_Depth {4096} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {12} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Write_Data_Count_Width {12} \
 ] $fifo_generator_0

  # Create instance: mapper_0, and set properties
  set block_name mapper
  set block_cell_name mapper_0
  if { [catch {set mapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mapper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {12} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {100} \
   CONFIG.CONST_WIDTH {12} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1000} \
   CONFIG.CONST_WIDTH {12} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_3

  # Create interface connections
  connect_bd_intf_net -intf_net ROController_0_i_rd_fifo [get_bd_intf_pins ROController_0/i_rd_fifo] [get_bd_intf_pins fifo_generator_0/FIFO_READ]
  connect_bd_intf_net -intf_net ROController_0_o_wr_fifo [get_bd_intf_pins ROController_0/o_wr_fifo] [get_bd_intf_pins fifo_generator_0/FIFO_WRITE]
  connect_bd_intf_net -intf_net S00_AXI1_1 [get_bd_intf_pins S00_AXI1] [get_bd_intf_pins AXI_ADC_1/S00_AXI]

  # Create port connections
  connect_bd_net -net ADC_MISO_1 [get_bd_pins ADC_MISO] [get_bd_pins AXI_ADC_1/i_MISO]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch0_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch0_n] [get_bd_pins AXI_ADC_1/i_data_in_ch0_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch0_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch0_p] [get_bd_pins AXI_ADC_1/i_data_in_ch0_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch1_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch1_n] [get_bd_pins AXI_ADC_1/i_data_in_ch1_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch1_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch1_p] [get_bd_pins AXI_ADC_1/i_data_in_ch1_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch2_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch2_n] [get_bd_pins AXI_ADC_1/i_data_in_ch2_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch2_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch2_p] [get_bd_pins AXI_ADC_1/i_data_in_ch2_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch3_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch3_n] [get_bd_pins AXI_ADC_1/i_data_in_ch3_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch3_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch3_p] [get_bd_pins AXI_ADC_1/i_data_in_ch3_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch4_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch4_n] [get_bd_pins AXI_ADC_1/i_data_in_ch4_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch4_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch4_p] [get_bd_pins AXI_ADC_1/i_data_in_ch4_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch5_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch5_n] [get_bd_pins AXI_ADC_1/i_data_in_ch5_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch5_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch5_p] [get_bd_pins AXI_ADC_1/i_data_in_ch5_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch6_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch6_n] [get_bd_pins AXI_ADC_1/i_data_in_ch6_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch6_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch6_p] [get_bd_pins AXI_ADC_1/i_data_in_ch6_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch7_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch7_n] [get_bd_pins AXI_ADC_1/i_data_in_ch7_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch7_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch7_p] [get_bd_pins AXI_ADC_1/i_data_in_ch7_p]
  connect_bd_net -net ADC_readout_buff_0_o_Lclk [get_bd_pins o_Lclk] [get_bd_pins ADC_readout_buff_0/o_Lclk] [get_bd_pins AXI_ADC_1/i_Lclk]
  connect_bd_net -net AXI_ADC_0_o_data_clk [get_bd_pins o_data_clk] [get_bd_pins ADC_readout_buff_0/o_ADclk] [get_bd_pins AXI_ADC_1/i_ADclk] [get_bd_pins ROController_0/i_data_clk]
  connect_bd_net -net AXI_ADC_1_o_MOSI [get_bd_pins ADC_MOSI] [get_bd_pins AXI_ADC_1/o_MOSI]
  connect_bd_net -net AXI_ADC_1_o_SCLK [get_bd_pins ADC_SCLK] [get_bd_pins AXI_ADC_1/o_SCLK]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch0 [get_bd_pins AXI_ADC_1/o_data_out_ch0] [get_bd_pins mapper_0/i_in_0]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch1 [get_bd_pins AXI_ADC_1/o_data_out_ch1] [get_bd_pins mapper_0/i_in_1]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch2 [get_bd_pins AXI_ADC_1/o_data_out_ch2] [get_bd_pins mapper_0/i_in_2]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch3 [get_bd_pins AXI_ADC_1/o_data_out_ch3] [get_bd_pins mapper_0/i_in_3]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch4 [get_bd_pins AXI_ADC_1/o_data_out_ch4] [get_bd_pins mapper_0/i_in_4]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch5 [get_bd_pins AXI_ADC_1/o_data_out_ch5] [get_bd_pins mapper_0/i_in_5]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch6 [get_bd_pins AXI_ADC_1/o_data_out_ch6] [get_bd_pins mapper_0/i_in_6]
  connect_bd_net -net AXI_ADC_1_o_data_out_ch7 [get_bd_pins AXI_ADC_1/o_data_out_ch7] [get_bd_pins mapper_0/i_in_7]
  connect_bd_net -net AXI_ADC_1_o_debug [get_bd_pins AXI_ADC_1/o_debug] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net MUXOUT_N_1 [get_bd_pins MUXOUT_N] [get_bd_pins ADC_readout_buff_0/i_ADC_ch_n]
  connect_bd_net -net MUXOUT_P_1 [get_bd_pins MUXOUT_P] [get_bd_pins ADC_readout_buff_0/i_ADC_ch_p]
  connect_bd_net -net ROController_0_o_ascii [get_bd_pins o_ascii] [get_bd_pins ROController_0/o_ascii]
  connect_bd_net -net ROController_0_o_busy [get_bd_pins o_busy] [get_bd_pins ROController_0/o_busy]
  connect_bd_net -net ROController_0_o_outfifo_wr_en [get_bd_pins o_outfifo_wr_en] [get_bd_pins ROController_0/o_outfifo_wr_en]
  connect_bd_net -net ROController_0_o_rd_fifo_en [get_bd_pins ROController_0/o_rd_fifo_en] [get_bd_pins fifo_generator_0/rd_en]
  connect_bd_net -net ROController_0_o_wr_fifo_clk [get_bd_pins ROController_0/o_wr_fifo_clk] [get_bd_pins fifo_generator_0/wr_clk]
  connect_bd_net -net ROController_0_o_wr_fifo_en [get_bd_pins o_wr_fifo_en] [get_bd_pins ROController_0/o_wr_fifo_en] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins ROController_0/i_rd_fifo_empty] [get_bd_pins fifo_generator_0/empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins ROController_0/i_wr_fifo_full] [get_bd_pins fifo_generator_0/full]
  connect_bd_net -net fifo_generator_0_rd_data_count [get_bd_pins rd_data_count] [get_bd_pins ROController_0/i_rd_data_count] [get_bd_pins fifo_generator_0/rd_data_count]
  connect_bd_net -net i_ADclk_1 [get_bd_pins i_ADclk] [get_bd_pins ADC_readout_buff_0/i_ADclk]
  connect_bd_net -net i_DRS4_DWRITEn_1 [get_bd_pins i_DRS4_DWRITEn] [get_bd_pins ROController_0/i_DRS4_DWRITEn]
  connect_bd_net -net i_Lclk_1 [get_bd_pins i_Lclk] [get_bd_pins ADC_readout_buff_0/i_Lclk]
  connect_bd_net -net i_next_fifo_full_1 [get_bd_pins i_next_fifo_full] [get_bd_pins ROController_0/i_next_fifo_full]
  connect_bd_net -net i_rst_1 [get_bd_pins i_rst] [get_bd_pins ROController_0/i_rst] [get_bd_pins fifo_generator_0/rst]
  connect_bd_net -net i_stop_cell_1 [get_bd_pins i_stop_cell] [get_bd_pins ROController_0/i_stop_cell]
  connect_bd_net -net i_stop_cell_ready_1 [get_bd_pins i_stop_cell_ready] [get_bd_pins ROController_0/i_stop_cell_ready]
  connect_bd_net -net i_veto_1 [get_bd_pins i_veto] [get_bd_pins ROController_0/i_veto]
  connect_bd_net -net mapper_0_o_out_0 [get_bd_pins ROController_0/i_data_ch0] [get_bd_pins mapper_0/o_out_0] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net mapper_0_o_out_1 [get_bd_pins ROController_0/i_data_ch1] [get_bd_pins mapper_0/o_out_1]
  connect_bd_net -net mapper_0_o_out_2 [get_bd_pins ROController_0/i_data_ch2] [get_bd_pins mapper_0/o_out_2]
  connect_bd_net -net mapper_0_o_out_3 [get_bd_pins ROController_0/i_data_ch3] [get_bd_pins mapper_0/o_out_3]
  connect_bd_net -net mapper_0_o_out_4 [get_bd_pins ROController_0/i_data_ch4] [get_bd_pins mapper_0/o_out_4]
  connect_bd_net -net mapper_0_o_out_5 [get_bd_pins ROController_0/i_data_ch5] [get_bd_pins mapper_0/o_out_5]
  connect_bd_net -net mapper_0_o_out_6 [get_bd_pins ROController_0/i_data_ch6] [get_bd_pins mapper_0/o_out_6]
  connect_bd_net -net mapper_0_o_out_7 [get_bd_pins ROController_0/i_data_ch7] [get_bd_pins mapper_0/o_out_7]
  connect_bd_net -net o_read_proc_st_debug_states [get_bd_pins ROController_0/o_read_proc_st_debug_states]
  connect_bd_net -net o_ro_proc_st_debug_states [get_bd_pins ROController_0/o_ro_proc_st_debug_states]
  connect_bd_net -net o_send_data_control_debug_states [get_bd_pins ROController_0/o_send_data_control_debug_states]
  connect_bd_net -net s00_axi_aresetn_1 [get_bd_pins s00_axi_aresetn] [get_bd_pins AXI_ADC_1/s00_axi_aresetn]
  connect_bd_net -net s00_axi_ctrl_aclk_1 [get_bd_pins rd_clk] [get_bd_pins AXI_ADC_1/s00_axi_aclk] [get_bd_pins ROController_0/sys_clk] [get_bd_pins fifo_generator_0/rd_clk]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins ROController_0/i_pre_trig_wind] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins ROController_0/i_post_trig_wind] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins ROController_0/i_trigger] [get_bd_pins xlconstant_3/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set I2C_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 I2C_0 ]

  # Create ports
  set ADCLK_MUX_N [ create_bd_port -dir I ADCLK_MUX_N ]
  set ADCLK_MUX_P [ create_bd_port -dir I ADCLK_MUX_P ]
  set ADC_MISO [ create_bd_port -dir I ADC_MISO ]
  set ADC_MOSI [ create_bd_port -dir O ADC_MOSI ]
  set ADC_SCLK [ create_bd_port -dir O ADC_SCLK ]
  set ADC_refclk_1_N [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_1_N ]
  set ADC_refclk_1_P [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_1_P ]
  set ADC_refclk_2_N [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_2_N ]
  set ADC_refclk_2_P [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_2_P ]
  set ADC_refclk_3_N [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_3_N ]
  set ADC_refclk_3_P [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_3_P ]
  set ADC_refclk_4_N [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_4_N ]
  set ADC_refclk_4_P [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_4_P ]
  set ADC_refclk_5_N [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_5_N ]
  set ADC_refclk_5_P [ create_bd_port -dir O -from 0 -to 0 -type clk ADC_refclk_5_P ]
  set B0_TRG [ create_bd_port -dir I -from 7 -to 0 B0_TRG ]
  set CPLD_MISO [ create_bd_port -dir I CPLD_MISO ]
  set CPLD_nCS [ create_bd_port -dir I CPLD_nCS ]
  set CSR_MOSI [ create_bd_port -dir O -from 0 -to 0 -type clk CSR_MOSI ]
  set CSR_SCLK_N [ create_bd_port -dir O -from 0 -to 0 -type clk CSR_SCLK_N ]
  set CSR_SCLK_P [ create_bd_port -dir O -from 0 -to 0 -type clk CSR_SCLK_P ]
  set CSR_nCS [ create_bd_port -dir O -from 0 -to 0 -type clk CSR_nCS ]
  set DAC_nCLR [ create_bd_port -dir O -from 0 -to 0 DAC_nCLR ]
  set DRS_A [ create_bd_port -dir O -from 3 -to 0 DRS_A ]
  set DRS_DTAP0 [ create_bd_port -dir I -from 0 -to 0 DRS_DTAP0 ]
  set DRS_DTAP1 [ create_bd_port -dir I -from 0 -to 0 DRS_DTAP1 ]
  set DRS_DTAP2 [ create_bd_port -dir I -from 0 -to 0 DRS_DTAP2 ]
  set DRS_DTAP3 [ create_bd_port -dir I -from 0 -to 0 DRS_DTAP3 ]
  set DRS_DTAP4 [ create_bd_port -dir I -from 0 -to 0 DRS_DTAP4 ]
  set DRS_DWRITE [ create_bd_port -dir O -from 4 -to 0 DRS_DWRITE ]
  set DRS_REFCLK_N [ create_bd_port -dir O -from 0 -to 0 -type clk DRS_REFCLK_N ]
  set DRS_REFCLK_P [ create_bd_port -dir O -from 0 -to 0 -type clk DRS_REFCLK_P ]
  set DRS_RSLOAD [ create_bd_port -dir O -from 4 -to 0 DRS_RSLOAD ]
  set DRS_SRCLK [ create_bd_port -dir O -from 4 -to 0 DRS_SRCLK ]
  set DRS_SRIN [ create_bd_port -dir O DRS_SRIN ]
  set DRS_SROUT [ create_bd_port -dir I -from 4 -to 0 DRS_SROUT ]
  set Elink_N [ create_bd_port -dir O -from 0 -to 0 Elink_N ]
  set Elink_P [ create_bd_port -dir O -from 0 -to 0 Elink_P ]
  set Elink_clk_N [ create_bd_port -dir O -from 0 -to 0 Elink_clk_N ]
  set Elink_clk_P [ create_bd_port -dir O -from 0 -to 0 Elink_clk_P ]
  set LCLK_MUX_N [ create_bd_port -dir I LCLK_MUX_N ]
  set LCLK_MUX_P [ create_bd_port -dir I LCLK_MUX_P ]
  set MUXOUT_N [ create_bd_port -dir I -from 7 -to 0 -type data MUXOUT_N ]
  set MUXOUT_P [ create_bd_port -dir I -from 7 -to 0 -type data MUXOUT_P ]
  set MUX_SEL [ create_bd_port -dir O -from 2 -to 0 MUX_SEL ]

  # Create instance: ADC
  create_hier_cell_ADC [current_bd_instance .] ADC

  # Create instance: ADC_refclk_OBUFDS
  create_hier_cell_ADC_refclk_OBUFDS [current_bd_instance .] ADC_refclk_OBUFDS

  # Create instance: CPLD_ctrl_0, and set properties
  set CPLD_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:CPLD_ctrl:1.0 CPLD_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SPI_word_lenght {14} \
 ] $CPLD_ctrl_0

  # Create instance: DRS4_firmware_1, and set properties
  set DRS4_firmware_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:DRS4_firmware:4 DRS4_firmware_1 ]

  # Create instance: DRS_A_test_0, and set properties
  set block_name DRS_A_test
  set block_cell_name DRS_A_test_0
  if { [catch {set DRS_A_test_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DRS_A_test_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Elink_output_0, and set properties
  set block_name Elink_output
  set block_cell_name Elink_output_0
  if { [catch {set Elink_output_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Elink_output_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Lvds_Rx_top_0, and set properties
  set block_name Lvds_Rx_top
  set block_cell_name Lvds_Rx_top_0
  if { [catch {set Lvds_Rx_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Lvds_Rx_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M1to5_0, and set properties
  set block_name M1to5
  set block_cell_name M1to5_0
  if { [catch {set M1to5_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M1to5_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M1to5_1, and set properties
  set block_name M1to5
  set block_cell_name M1to5_1
  if { [catch {set M1to5_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M1to5_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: M1to5_2, and set properties
  set block_name M1to5
  set block_cell_name M1to5_2
  if { [catch {set M1to5_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $M1to5_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Signal_sel_0, and set properties
  set block_name Signal_sel
  set block_cell_name Signal_sel_0
  if { [catch {set Signal_sel_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Signal_sel_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Vibufds_diff_out_0, and set properties
  set block_name Vibufds_diff_out
  set block_cell_name Vibufds_diff_out_0
  if { [catch {set Vibufds_diff_out_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Vibufds_diff_out_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [ list \
   CONFIG.c_sg_include_stscntrl_strm {0} \
   CONFIG.c_sg_length_width {16} \
 ] $axi_dma_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set axi_gpio_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
 ] $axi_gpio_1

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
   CONFIG.NUM_SI {3} \
 ] $axi_smc

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Output_Width {12} \
 ] $c_counter_binary_0

  # Create instance: c_counter_binary_1, and set properties
  set c_counter_binary_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_1 ]
  set_property -dict [ list \
   CONFIG.Output_Width {8} \
 ] $c_counter_binary_1

  # Create instance: clk_mon_0, and set properties
  set clk_mon_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_mon:1.0 clk_mon_0 ]

  # Create instance: dac_i2c_0, and set properties
  set dac_i2c_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:dac_i2c:1.0 dac_i2c_0 ]

  # Create instance: delay_module_0, and set properties
  set block_name delay_module
  set block_cell_name delay_module_0
  if { [catch {set delay_module_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_module_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.Max_lut_number {31} \
 ] $delay_module_0

  # Create instance: delay_module_1, and set properties
  set block_name delay_module
  set block_cell_name delay_module_1
  if { [catch {set delay_module_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_module_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.Max_lut_number {31} \
 ] $delay_module_1

  # Create instance: enable_signal_0, and set properties
  set block_name enable_signal
  set block_cell_name enable_signal_0
  if { [catch {set enable_signal_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $enable_signal_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.signal_size {0} \
 ] $enable_signal_0

  # Create instance: fifo8b_2_axis_0, and set properties
  set fifo8b_2_axis_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:fifo8b_2_axis:1.0 fifo8b_2_axis_0 ]

  # Create instance: fit_timer_0, and set properties
  set fit_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fit_timer:2.0 fit_timer_0 ]
  set_property -dict [ list \
   CONFIG.C_NO_CLOCKS {700000000} \
 ] $fit_timer_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {40.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN0_BASEADDR {0xE0008000} \
   CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN0_HIGHADDR {0xE0008FFF} \
   CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN0_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN1_BASEADDR {0xE0009000} \
   CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
   CONFIG.PCW_CAN1_HIGHADDR {0xE0009FFF} \
   CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_CAN1_PERIPHERAL_FREQMHZ {-1} \
   CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {50000000} \
   CONFIG.PCW_CLK2_FREQ {40000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CORE0_FIQ_INTR {0} \
   CONFIG.PCW_CORE0_IRQ_INTR {0} \
   CONFIG.PCW_CORE1_FIQ_INTR {0} \
   CONFIG.PCW_CORE1_IRQ_INTR {0} \
   CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {767} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
   CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
   CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
   CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
   CONFIG.PCW_DM_WIDTH {4} \
   CONFIG.PCW_DQS_WIDTH {4} \
   CONFIG.PCW_DQ_WIDTH {32} \
   CONFIG.PCW_ENET0_BASEADDR {0xE000B000} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_HIGHADDR {0xE000BFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET0_RESET_IO {<Select>} \
   CONFIG.PCW_ENET1_BASEADDR {0xE000C000} \
   CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {0} \
   CONFIG.PCW_ENET1_HIGHADDR {0xE000CFFF} \
   CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_4K_TIMER {0} \
   CONFIG.PCW_EN_CAN0 {0} \
   CONFIG.PCW_EN_CAN1 {0} \
   CONFIG.PCW_EN_CLK0_PORT {1} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_CLK2_PORT {1} \
   CONFIG.PCW_EN_CLK3_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
   CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
   CONFIG.PCW_EN_DDR {1} \
   CONFIG.PCW_EN_EMIO_CAN0 {0} \
   CONFIG.PCW_EN_EMIO_CAN1 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_ENET1 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {0} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_I2C1 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
   CONFIG.PCW_EN_EMIO_PJTAG {0} \
   CONFIG.PCW_EN_EMIO_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_SDIO1 {0} \
   CONFIG.PCW_EN_EMIO_SPI0 {0} \
   CONFIG.PCW_EN_EMIO_SPI1 {0} \
   CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
   CONFIG.PCW_EN_EMIO_TRACE {0} \
   CONFIG.PCW_EN_EMIO_TTC0 {0} \
   CONFIG.PCW_EN_EMIO_TTC1 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {0} \
   CONFIG.PCW_EN_EMIO_WDT {1} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_ENET1 {0} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {0} \
   CONFIG.PCW_EN_I2C1 {0} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_MODEM_UART1 {0} \
   CONFIG.PCW_EN_PJTAG {0} \
   CONFIG.PCW_EN_PTP_ENET0 {0} \
   CONFIG.PCW_EN_PTP_ENET1 {0} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_RST0_PORT {1} \
   CONFIG.PCW_EN_RST1_PORT {0} \
   CONFIG.PCW_EN_RST2_PORT {0} \
   CONFIG.PCW_EN_RST3_PORT {0} \
   CONFIG.PCW_EN_SDIO0 {0} \
   CONFIG.PCW_EN_SDIO1 {0} \
   CONFIG.PCW_EN_SMC {0} \
   CONFIG.PCW_EN_SPI0 {0} \
   CONFIG.PCW_EN_SPI1 {0} \
   CONFIG.PCW_EN_TRACE {0} \
   CONFIG.PCW_EN_TTC0 {0} \
   CONFIG.PCW_EN_TTC1 {0} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_EN_UART1 {0} \
   CONFIG.PCW_EN_USB0 {0} \
   CONFIG.PCW_EN_USB1 {0} \
   CONFIG.PCW_EN_WDT {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {5} \
   CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK2_BUF {TRUE} \
   CONFIG.PCW_FCLK_CLK3_BUF {FALSE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {40} \
   CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {1} \
   CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
   CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
   CONFIG.PCW_GPIO_BASEADDR {0xE000A000} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {64} \
   CONFIG.PCW_GPIO_HIGHADDR {0xE000AFFF} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_BASEADDR {0xE0005000} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C1_HIGHADDR {0xE0005FFF} \
   CONFIG.PCW_I2C1_I2C1_IO {<Select>} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
   CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
   CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
   CONFIG.PCW_INCLUDE_TRACE_BUFFER {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_0_PULLUP {enabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {in} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {out} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {inout} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {inout} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {inout} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {inout} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {disabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {disabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {disabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {disabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {disabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {disabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {inout} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {inout} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {inout} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {inout} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_PRIMITIVE {54} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#UART 0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#gpio[28]#gpio[29]#gpio[30]#gpio[31]#gpio[32]#gpio[33]#gpio[34]#gpio[35]#gpio[36]#gpio[37]#gpio[38]#gpio[39]#gpio[40]#gpio[41]#gpio[42]#gpio[43]#gpio[44]#gpio[45]#gpio[46]#gpio[47]#gpio[48]#gpio[49]#gpio[50]#gpio[51]#mdc#mdio} \
   CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_ENABLE_STATIC_REMAP {0} \
   CONFIG.PCW_M_AXI_GP1_ID_WIDTH {12} \
   CONFIG.PCW_M_AXI_GP1_SUPPORT_NARROW_BURST {0} \
   CONFIG.PCW_M_AXI_GP1_THREAD_ID_WIDTH {12} \
   CONFIG.PCW_NAND_CYCLES_T_AR {1} \
   CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
   CONFIG.PCW_NAND_CYCLES_T_RC {11} \
   CONFIG.PCW_NAND_CYCLES_T_REA {1} \
   CONFIG.PCW_NAND_CYCLES_T_RR {1} \
   CONFIG.PCW_NAND_CYCLES_T_WC {11} \
   CONFIG.PCW_NAND_CYCLES_T_WP {1} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_CS0_T_PC {1} \
   CONFIG.PCW_NOR_CS0_T_RC {11} \
   CONFIG.PCW_NOR_CS0_T_TR {1} \
   CONFIG.PCW_NOR_CS0_T_WC {11} \
   CONFIG.PCW_NOR_CS0_T_WP {1} \
   CONFIG.PCW_NOR_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_CS1_T_PC {1} \
   CONFIG.PCW_NOR_CS1_T_RC {11} \
   CONFIG.PCW_NOR_CS1_T_TR {1} \
   CONFIG.PCW_NOR_CS1_T_WC {11} \
   CONFIG.PCW_NOR_CS1_T_WP {1} \
   CONFIG.PCW_NOR_CS1_WE_TIME {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
   CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
   CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
   CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
   CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
   CONFIG.PCW_P2F_CAN0_INTR {0} \
   CONFIG.PCW_P2F_CAN1_INTR {0} \
   CONFIG.PCW_P2F_CTI_INTR {0} \
   CONFIG.PCW_P2F_DMAC0_INTR {0} \
   CONFIG.PCW_P2F_DMAC1_INTR {0} \
   CONFIG.PCW_P2F_DMAC2_INTR {0} \
   CONFIG.PCW_P2F_DMAC3_INTR {0} \
   CONFIG.PCW_P2F_DMAC4_INTR {0} \
   CONFIG.PCW_P2F_DMAC5_INTR {0} \
   CONFIG.PCW_P2F_DMAC6_INTR {0} \
   CONFIG.PCW_P2F_DMAC7_INTR {0} \
   CONFIG.PCW_P2F_DMAC_ABORT_INTR {0} \
   CONFIG.PCW_P2F_ENET0_INTR {0} \
   CONFIG.PCW_P2F_ENET1_INTR {0} \
   CONFIG.PCW_P2F_GPIO_INTR {0} \
   CONFIG.PCW_P2F_I2C0_INTR {0} \
   CONFIG.PCW_P2F_I2C1_INTR {0} \
   CONFIG.PCW_P2F_QSPI_INTR {0} \
   CONFIG.PCW_P2F_SDIO0_INTR {0} \
   CONFIG.PCW_P2F_SDIO1_INTR {0} \
   CONFIG.PCW_P2F_SMC_INTR {0} \
   CONFIG.PCW_P2F_SPI0_INTR {0} \
   CONFIG.PCW_P2F_SPI1_INTR {0} \
   CONFIG.PCW_P2F_UART0_INTR {0} \
   CONFIG.PCW_P2F_UART1_INTR {0} \
   CONFIG.PCW_P2F_USB0_INTR {0} \
   CONFIG.PCW_P2F_USB1_INTR {0} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.075} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.070} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.077} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.094} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.000} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.001} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {0.004} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.035} \
   CONFIG.PCW_PACKAGE_NAME {clg485} \
   CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
   CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 2.5V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
   CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SD0_SD0_IO {<Select>} \
   CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
   CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
   CONFIG.PCW_SDIO1_BASEADDR {0xE0101000} \
   CONFIG.PCW_SDIO1_HIGHADDR {0xE0101FFF} \
   CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_CYCLE_T0 {NA} \
   CONFIG.PCW_SMC_CYCLE_T1 {NA} \
   CONFIG.PCW_SMC_CYCLE_T2 {NA} \
   CONFIG.PCW_SMC_CYCLE_T3 {NA} \
   CONFIG.PCW_SMC_CYCLE_T4 {NA} \
   CONFIG.PCW_SMC_CYCLE_T5 {NA} \
   CONFIG.PCW_SMC_CYCLE_T6 {NA} \
   CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SPI0_BASEADDR {0xE0006000} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI0_HIGHADDR {0xE0006FFF} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI1_BASEADDR {0xE0007000} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
   CONFIG.PCW_SPI1_HIGHADDR {0xE0007FFF} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
   CONFIG.PCW_S_AXI_ACP_ARUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_AWUSER_VAL {31} \
   CONFIG.PCW_S_AXI_ACP_ID_WIDTH {3} \
   CONFIG.PCW_S_AXI_GP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_GP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP1_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP2_ID_WIDTH {6} \
   CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
   CONFIG.PCW_S_AXI_HP3_ID_WIDTH {6} \
   CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_TRACE_BUFFER_CLOCK_DELAY {12} \
   CONFIG.PCW_TRACE_BUFFER_FIFO_SIZE {128} \
   CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
   CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
   CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PCW_TTC0_BASEADDR {0xE0104000} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_HIGHADDR {0xE0104fff} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC0_TTC0_IO {<Select>} \
   CONFIG.PCW_TTC1_BASEADDR {0xE0105000} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_HIGHADDR {0xE0105fff} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC1_TTC1_IO {<Select>} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_BASEADDR {0xE0000000} \
   CONFIG.PCW_UART0_BAUD_RATE {115200} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_HIGHADDR {0xE0000FFF} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
   CONFIG.PCW_UART1_BAUD_RATE {115200} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
   CONFIG.PCW_UIPARAM_DDR_AL {0} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {76.428} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {76.428} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {76.428} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {76.428} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {76.687} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {77.8025} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {72.8405} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {111.904} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {73.119} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.8935} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {77.045} \
   CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {111.903} \
   CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533} \
   CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3 (Low Voltage)} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
   CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
   CONFIG.PCW_USB0_BASEADDR {0xE0102000} \
   CONFIG.PCW_USB0_HIGHADDR {0xE0102fff} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_RESET_IO {<Select>} \
   CONFIG.PCW_USB0_USB0_IO {<Select>} \
   CONFIG.PCW_USB1_BASEADDR {0xE0103000} \
   CONFIG.PCW_USB1_HIGHADDR {0xE0103fff} \
   CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
   CONFIG.PCW_USB_RESET_SELECT {<Select>} \
   CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
   CONFIG.PCW_USE_AXI_NONSECURE {0} \
   CONFIG.PCW_USE_CORESIGHT {0} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_CR_FABRIC {1} \
   CONFIG.PCW_USE_DDR_BYPASS {0} \
   CONFIG.PCW_USE_DEBUG {0} \
   CONFIG.PCW_USE_DEFAULT_ACP_USER_VAL {0} \
   CONFIG.PCW_USE_DMA0 {0} \
   CONFIG.PCW_USE_DMA1 {0} \
   CONFIG.PCW_USE_DMA2 {0} \
   CONFIG.PCW_USE_DMA3 {0} \
   CONFIG.PCW_USE_EXPANDED_IOP {0} \
   CONFIG.PCW_USE_EXPANDED_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_HIGH_OCM {0} \
   CONFIG.PCW_USE_M_AXI_GP0 {1} \
   CONFIG.PCW_USE_M_AXI_GP1 {0} \
   CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
   CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
   CONFIG.PCW_USE_S_AXI_ACP {0} \
   CONFIG.PCW_USE_S_AXI_GP0 {0} \
   CONFIG.PCW_USE_S_AXI_GP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {0} \
   CONFIG.PCW_USE_S_AXI_HP2 {0} \
   CONFIG.PCW_USE_S_AXI_HP3 {0} \
   CONFIG.PCW_USE_TRACE {0} \
   CONFIG.PCW_USE_TRACE_DATA_EDGE_DETECTOR {0} \
   CONFIG.PCW_VALUE_SILVERSION {3} \
   CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
   CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_WDT_WDT_IO {EMIO} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {9} \
 ] $ps7_0_axi_periph

  # Create instance: reset_50M_0, and set properties
  set reset_50M_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_50M_0 ]

  # Create instance: reset_init_0, and set properties
  set block_name reset_init
  set block_cell_name reset_init_0
  if { [catch {set reset_init_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $reset_init_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_FIFO_100M, and set properties
  set rst_FIFO_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_FIFO_100M ]

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: trigger_logic_0, and set properties
  set block_name trigger_logic
  set block_cell_name trigger_logic_0
  if { [catch {set trigger_logic_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $trigger_logic_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_1

  # Create instance: util_ds_buf_3, and set properties
  set util_ds_buf_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_3 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_3

  # Create instance: util_ds_buf_5, and set properties
  set util_ds_buf_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_5 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_5

  # Create instance: util_ds_buf_ADCLK, and set properties
  set util_ds_buf_ADCLK [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_ADCLK ]

  # Create instance: util_ds_buf_LCLK, and set properties
  set util_ds_buf_LCLK [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_LCLK ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {12} \
 ] $util_vector_logic_2

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {12} \
   CONFIG.IN1_WIDTH {12} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {24} \
   CONFIG.IN1_WIDTH {8} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {5} \
 ] $xlconcat_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {32} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {10} \
 ] $xlslice_2

  # Create instance: xlslice_15, and set properties
  set xlslice_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_15 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {15} \
   CONFIG.DIN_TO {15} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_15

  # Create instance: xlslice_16, and set properties
  set xlslice_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_16 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {16} \
   CONFIG.DIN_TO {16} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_16

  # Create instance: xlslice_17, and set properties
  set xlslice_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_17 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {17} \
   CONFIG.DIN_TO {17} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_17

  # Create instance: xlslice_18, and set properties
  set xlslice_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_18 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {18} \
   CONFIG.DIN_TO {18} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_18

  # Create instance: xlslice_2to2, and set properties
  set xlslice_2to2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2to2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2to2

  # Create instance: xlslice_3to3, and set properties
  set xlslice_3to3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3to3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {3} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_3to3

  # Create instance: xlslice_4to6, and set properties
  set xlslice_4to6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4to6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {3} \
 ] $xlslice_4to6

  # Create instance: xlslice_7to14, and set properties
  set xlslice_7to14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_7to14 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {14} \
   CONFIG.DIN_TO {7} \
   CONFIG.DIN_WIDTH {32} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_7to14

  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_smc/S01_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_smc/S02_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_SG [get_bd_intf_pins axi_dma_0/M_AXI_SG] [get_bd_intf_pins axi_smc/S00_AXI]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net dac_i2c_0_DAC_I2C [get_bd_intf_ports I2C_0] [get_bd_intf_pins dac_i2c_0/DAC_I2C]
  connect_bd_intf_net -intf_net fifo8b_2_axis_0_M00_AXIS [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM] [get_bd_intf_pins fifo8b_2_axis_0/M00_AXIS]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins dac_i2c_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_gpio_1/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins DRS4_firmware_1/s00_axi] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins CPLD_ctrl_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M05_AXI [get_bd_intf_pins axi_dma_0/S_AXI_LITE] [get_bd_intf_pins ps7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M06_AXI [get_bd_intf_pins clk_mon_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M08_AXI [get_bd_intf_pins ADC/S00_AXI1] [get_bd_intf_pins ps7_0_axi_periph/M08_AXI]

  # Create port connections
  connect_bd_net -net ADCLK_MUX_N_1 [get_bd_ports ADCLK_MUX_N] [get_bd_pins util_ds_buf_ADCLK/IBUF_DS_N]
  connect_bd_net -net ADCLK_MUX_P_1 [get_bd_ports ADCLK_MUX_P] [get_bd_pins util_ds_buf_ADCLK/IBUF_DS_P]
  connect_bd_net -net ADC_ADC_MOSI [get_bd_ports ADC_MOSI] [get_bd_pins ADC/ADC_MOSI]
  connect_bd_net -net ADC_ADC_SCLK [get_bd_ports ADC_SCLK] [get_bd_pins ADC/ADC_SCLK]
  connect_bd_net -net ADC_MISO_1 [get_bd_ports ADC_MISO] [get_bd_pins ADC/ADC_MISO]
  connect_bd_net -net ADC_o_ascii [get_bd_pins ADC/o_ascii] [get_bd_pins fifo8b_2_axis_0/i_fifo_din]
  connect_bd_net -net ADC_o_busy [get_bd_pins ADC/o_busy] [get_bd_pins fifo8b_2_axis_0/i_sending] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net ADC_o_data_clk [get_bd_pins ADC/o_data_clk] [get_bd_pins c_counter_binary_1/CLK]
  connect_bd_net -net ADC_o_outfifo_wr_en [get_bd_pins ADC/o_outfifo_wr_en] [get_bd_pins fifo8b_2_axis_0/i_fifo_we]
  connect_bd_net -net ADC_refclk_OBUFDS_OBUF_DS_N_0 [get_bd_ports ADC_refclk_3_N] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_3_N]
  connect_bd_net -net ADC_refclk_OBUFDS_OBUF_DS_N_1 [get_bd_ports ADC_refclk_4_N] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_4_N]
  connect_bd_net -net ADC_refclk_OBUFDS_OBUF_DS_N_2 [get_bd_ports ADC_refclk_5_N] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_5_N]
  connect_bd_net -net ADC_refclk_OBUFDS_OBUF_DS_P_0 [get_bd_ports ADC_refclk_3_P] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_3_P]
  connect_bd_net -net ADC_refclk_OBUFDS_OBUF_DS_P_1 [get_bd_ports ADC_refclk_4_P] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_4_P]
  connect_bd_net -net ADC_refclk_OBUFDS_OBUF_DS_P_2 [get_bd_ports ADC_refclk_5_P] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_5_P]
  connect_bd_net -net CPLD_MISO_1 [get_bd_ports CPLD_MISO] [get_bd_pins CPLD_ctrl_0/SPI_MISO]
  connect_bd_net -net CPLD_ctrl_0_CPLD_Mux_sel [get_bd_ports MUX_SEL] [get_bd_pins CPLD_ctrl_0/CPLD_Mux_sel] [get_bd_pins Signal_sel_0/Mux_sel]
  connect_bd_net -net CPLD_ctrl_0_CPLD_SPI_MOSI [get_bd_ports CSR_MOSI] [get_bd_pins CPLD_ctrl_0/CPLD_SPI_MOSI]
  connect_bd_net -net CPLD_ctrl_0_CPLD_SPI_SCLK [get_bd_pins CPLD_ctrl_0/CPLD_SPI_SCLK] [get_bd_pins util_ds_buf_5/OBUF_IN]
  connect_bd_net -net CPLD_ctrl_0_CPLD_SPI_nCS [get_bd_ports CSR_nCS] [get_bd_pins CPLD_ctrl_0/CPLD_SPI_nCS]
  connect_bd_net -net CPLD_nCS_1 [get_bd_ports CPLD_nCS] [get_bd_pins CPLD_ctrl_0/nCS_CPLD]
  connect_bd_net -net DRS4_firmware_0_o_srclk_R2 [get_bd_pins DRS4_firmware_1/o_srclk_adc] [get_bd_pins enable_signal_0/signal_in]
  connect_bd_net -net DRS4_firmware_1_o_A3_0 [get_bd_pins DRS4_firmware_1/o_A3_0] [get_bd_pins DRS_A_test_0/A_vec]
  connect_bd_net -net DRS4_firmware_1_o_dwrite [get_bd_pins DRS4_firmware_1/o_dwrite] [get_bd_pins DRS_A_test_0/i_dwrite]
  connect_bd_net -net DRS4_firmware_1_o_dwrite_for_trigger [get_bd_pins ADC/i_DRS4_DWRITEn] [get_bd_pins DRS4_firmware_1/o_dwrite_for_trigger]
  connect_bd_net -net DRS4_firmware_1_o_refclk_p [get_bd_pins DRS4_firmware_1/o_refclk_p] [get_bd_pins util_ds_buf_3/OBUF_IN]
  connect_bd_net -net DRS4_firmware_1_o_rsrload [get_bd_pins DRS4_firmware_1/o_rsrload] [get_bd_pins DRS_A_test_0/i_RSRLOAD]
  connect_bd_net -net DRS4_firmware_1_o_srclk [get_bd_pins DRS4_firmware_1/o_srclk] [get_bd_pins DRS_A_test_0/i_SRCLK]
  connect_bd_net -net DRS4_firmware_1_o_srin [get_bd_pins DRS4_firmware_1/o_srin] [get_bd_pins DRS_A_test_0/i_SRIN]
  connect_bd_net -net DRS4_firmware_1_o_stop_cell [get_bd_pins ADC/i_stop_cell] [get_bd_pins DRS4_firmware_1/o_stop_cell]
  connect_bd_net -net DRS4_firmware_1_o_stop_cell_ready [get_bd_pins ADC/i_stop_cell_ready] [get_bd_pins DRS4_firmware_1/o_stop_cell_ready]
  connect_bd_net -net DRS_A_test_0_o_A_vec [get_bd_ports DRS_A] [get_bd_pins DRS_A_test_0/o_A_vec]
  connect_bd_net -net DRS_A_test_0_o_RSRLOAD [get_bd_pins DRS_A_test_0/o_RSRLOAD] [get_bd_pins delay_module_1/signal_in]
  connect_bd_net -net DRS_A_test_0_o_SRCLK [get_bd_pins DRS_A_test_0/o_SRCLK] [get_bd_pins delay_module_0/signal_in]
  connect_bd_net -net DRS_A_test_0_o_SRIN [get_bd_ports DRS_SRIN] [get_bd_pins DRS_A_test_0/o_SRIN]
  connect_bd_net -net DRS_A_test_0_o_dwrite [get_bd_pins DRS_A_test_0/o_dwrite] [get_bd_pins M1to5_1/in1]
  connect_bd_net -net DRS_DTAP0_1 [get_bd_ports DRS_DTAP0] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net DRS_DTAP1_1 [get_bd_ports DRS_DTAP1] [get_bd_pins xlconcat_3/In1]
  connect_bd_net -net DRS_DTAP2_1 [get_bd_ports DRS_DTAP2] [get_bd_pins xlconcat_3/In2]
  connect_bd_net -net DRS_DTAP3_1 [get_bd_ports DRS_DTAP3] [get_bd_pins xlconcat_3/In3]
  connect_bd_net -net DRS_DTAP4_1 [get_bd_ports DRS_DTAP4] [get_bd_pins xlconcat_3/In4]
  connect_bd_net -net DRS_SROUT_1 [get_bd_ports DRS_SROUT] [get_bd_pins Signal_sel_0/D]
  connect_bd_net -net LCLK_MUX_N_1 [get_bd_ports LCLK_MUX_N] [get_bd_pins util_ds_buf_LCLK/IBUF_DS_N]
  connect_bd_net -net LCLK_MUX_P_1 [get_bd_ports LCLK_MUX_P] [get_bd_pins util_ds_buf_LCLK/IBUF_DS_P]
  connect_bd_net -net Lvds_Rx_top_0_ChOut_0 [get_bd_pins Lvds_Rx_top_0/ChOut_0] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net Lvds_Rx_top_0_ChOut_1 [get_bd_pins Lvds_Rx_top_0/ChOut_1] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net M1to5_0_out5 [get_bd_ports DRS_SRCLK] [get_bd_pins M1to5_0/out5]
  connect_bd_net -net M1to5_1_out5 [get_bd_ports DRS_DWRITE] [get_bd_pins M1to5_1/out5]
  connect_bd_net -net M1to5_2_out5 [get_bd_ports DRS_RSLOAD] [get_bd_pins M1to5_2/out5]
  connect_bd_net -net MUXOUT_N_1 [get_bd_ports MUXOUT_N] [get_bd_pins Vibufds_diff_out_0/MUXOUT_N]
  connect_bd_net -net MUXOUT_P_1 [get_bd_ports MUXOUT_P] [get_bd_pins Vibufds_diff_out_0/MUXOUT_P]
  connect_bd_net -net Net -boundary_type upper [get_bd_pins ADC/o_Lclk]
  connect_bd_net -net ROController_0_o_wr_fifo_en [get_bd_pins ADC/o_wr_fifo_en] [get_bd_pins c_counter_binary_0/CLK]
  connect_bd_net -net Signal_sel_0_O [get_bd_pins DRS4_firmware_1/i_SROUT] [get_bd_pins Signal_sel_0/O]
  connect_bd_net -net Vibufds_diff_out_0_o_MUXOUT_N [get_bd_pins ADC/MUXOUT_N] [get_bd_pins Vibufds_diff_out_0/o_MUXOUT_N]
  connect_bd_net -net Vibufds_diff_out_0_o_MUXOUT_P [get_bd_pins ADC/MUXOUT_P] [get_bd_pins Vibufds_diff_out_0/o_MUXOUT_P]
  connect_bd_net -net axi_dma_0_mm2s_introut [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net axi_dma_0_s2mm_introut [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins axi_gpio_0/gpio2_io_o] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_15/Din] [get_bd_pins xlslice_16/Din] [get_bd_pins xlslice_17/Din] [get_bd_pins xlslice_18/Din] [get_bd_pins xlslice_2to2/Din] [get_bd_pins xlslice_3to3/Din] [get_bd_pins xlslice_4to6/Din] [get_bd_pins xlslice_7to14/Din]
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_pins axi_gpio_1/gpio_io_o] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net c_counter_binary_1_Q [get_bd_pins c_counter_binary_1/Q] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net delay_module_0_signal_out [get_bd_pins M1to5_0/in1] [get_bd_pins delay_module_0/signal_out]
  connect_bd_net -net delay_module_1_signal_out [get_bd_pins M1to5_2/in1] [get_bd_pins delay_module_1/signal_out]
  connect_bd_net -net enable_signal_0_signal_out [get_bd_pins ADC_refclk_OBUFDS/OBUF_IN] [get_bd_pins enable_signal_0/signal_out]
  connect_bd_net -net fifo_generator_0_rd_data_count [get_bd_pins ADC/rd_data_count] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net fit_timer_0_Interrupt [get_bd_pins fit_timer_0/Interrupt] [get_bd_pins trigger_logic_0/i_soft_trigger]
  connect_bd_net -net i_in_trigger_1 [get_bd_ports B0_TRG] [get_bd_pins trigger_logic_0/i_in_trigger]
  connect_bd_net -net i_next_fifo_full_1 [get_bd_pins ADC/i_next_fifo_full] [get_bd_pins fifo8b_2_axis_0/o_fifo_full]
  connect_bd_net -net o_fifo_data_count [get_bd_pins fifo8b_2_axis_0/o_fifo_data_count]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins ADC/rd_clk] [get_bd_pins CPLD_ctrl_0/s00_axi_aclk] [get_bd_pins Elink_output_0/clk] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] [get_bd_pins axi_dma_0/m_axi_sg_aclk] [get_bd_pins axi_dma_0/s_axi_lite_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_gpio_1/s_axi_aclk] [get_bd_pins axi_smc/aclk] [get_bd_pins clk_mon_0/s00_axi_aclk] [get_bd_pins dac_i2c_0/s00_axi_aclk] [get_bd_pins fifo8b_2_axis_0/m00_axis_aclk] [get_bd_pins fit_timer_0/Clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/M05_ACLK] [get_bd_pins ps7_0_axi_periph/M06_ACLK] [get_bd_pins ps7_0_axi_periph/M07_ACLK] [get_bd_pins ps7_0_axi_periph/M08_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins reset_init_0/clk] [get_bd_pins rst_FIFO_100M/slowest_sync_clk] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk] [get_bd_pins trigger_logic_0/sys_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins DRS4_firmware_1/clk_drs4] [get_bd_pins DRS4_firmware_1/s00_axi_aclk] [get_bd_pins DRS_A_test_0/i_clk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins reset_50M_0/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK3 [get_bd_pins processing_system7_0/FCLK_CLK2] [get_bd_pins util_ds_buf_0/OBUF_IN] [get_bd_pins util_ds_buf_1/OBUF_IN]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins reset_50M_0/ext_reset_in] [get_bd_pins rst_FIFO_100M/ext_reset_in] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net reset_50M_0_peripheral_aresetn [get_bd_pins DRS4_firmware_1/s00_axi_aresetn] [get_bd_pins DRS_A_test_0/i_nrst] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins reset_50M_0/peripheral_aresetn]
  connect_bd_net -net rst_FIFO_100M_peripheral_aresetn [get_bd_pins ADC/s00_axi_aresetn] [get_bd_pins axi_gpio_1/s_axi_aresetn] [get_bd_pins clk_mon_0/s00_axi_aresetn] [get_bd_pins ps7_0_axi_periph/M06_ARESETN] [get_bd_pins rst_FIFO_100M/peripheral_aresetn]
  connect_bd_net -net rst_FIFO_100M_peripheral_reset [get_bd_pins ADC/i_rst] [get_bd_pins Lvds_Rx_top_0/SysRst] [get_bd_pins rst_FIFO_100M/peripheral_reset] [get_bd_pins trigger_logic_0/areset]
  connect_bd_net -net rst_ps7_0_100M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins CPLD_ctrl_0/s00_axi_aresetn] [get_bd_pins axi_dma_0/axi_resetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_smc/aresetn] [get_bd_pins dac_i2c_0/s00_axi_aresetn] [get_bd_pins fifo8b_2_axis_0/m00_axis_aresetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/M05_ARESETN] [get_bd_pins ps7_0_axi_periph/M07_ARESETN] [get_bd_pins ps7_0_axi_periph/M08_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]
  connect_bd_net -net trigger_logic_0_o_out_trigger [get_bd_pins DRS4_firmware_1/i_drs4_trigger] [get_bd_pins trigger_logic_0/o_out_trigger]
  connect_bd_net -net util_ds_buf_0_BUFH_O [get_bd_pins clk_mon_0/i_DTAP] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_N [get_bd_ports Elink_N] [get_bd_pins util_ds_buf_0/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_P [get_bd_ports Elink_P] [get_bd_pins util_ds_buf_0/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_N [get_bd_ports Elink_clk_N] [get_bd_pins util_ds_buf_1/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_P [get_bd_ports Elink_clk_P] [get_bd_pins util_ds_buf_1/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_2_OBUF_DS_N [get_bd_ports ADC_refclk_1_N] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_1_N]
  connect_bd_net -net util_ds_buf_2_OBUF_DS_P [get_bd_ports ADC_refclk_1_P] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_1_P]
  connect_bd_net -net util_ds_buf_3_OBUF_DS_N [get_bd_ports DRS_REFCLK_N] [get_bd_pins util_ds_buf_3/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_3_OBUF_DS_P [get_bd_ports DRS_REFCLK_P] [get_bd_pins util_ds_buf_3/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_4_OBUF_DS_N [get_bd_ports ADC_refclk_2_N] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_2_N]
  connect_bd_net -net util_ds_buf_4_OBUF_DS_P [get_bd_ports ADC_refclk_2_P] [get_bd_pins ADC_refclk_OBUFDS/ADC_refclk_2_P]
  connect_bd_net -net util_ds_buf_5_OBUF_DS_N [get_bd_ports CSR_SCLK_N] [get_bd_pins util_ds_buf_5/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_5_OBUF_DS_P [get_bd_ports CSR_SCLK_P] [get_bd_pins util_ds_buf_5/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_ADCLK1_IBUF_OUT [get_bd_pins ADC/i_Lclk] [get_bd_pins Lvds_Rx_top_0/Lclk] [get_bd_pins util_ds_buf_LCLK/IBUF_OUT]
  connect_bd_net -net util_ds_buf_ADCLK_IBUF_OUT [get_bd_pins ADC/i_ADclk] [get_bd_pins Lvds_Rx_top_0/AdClk] [get_bd_pins util_ds_buf_ADCLK/IBUF_OUT]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins trigger_logic_0/i_en_soft_trigger] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins trigger_logic_0/i_busy] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins xlconcat_1/dout] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins DRS4_firmware_1/i_PLLLCK] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins fifo8b_2_axis_0/i_force_send] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins fit_timer_0/Rst] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_11_Dout [get_bd_pins reset_init_0/input_start] [get_bd_pins xlslice_16/Dout]
  connect_bd_net -net xlslice_15_Dout [get_bd_pins ADC/i_veto] [get_bd_pins xlslice_15/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins rst_FIFO_100M/aux_reset_in] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins delay_module_0/delay_sel] [get_bd_pins delay_module_1/delay_sel] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_2_Dout2 [get_bd_pins trigger_logic_0/i_trigg_select_function] [get_bd_pins xlslice_4to6/Dout]
  connect_bd_net -net xlslice_2to2_Dout [get_bd_pins util_vector_logic_1/Op2] [get_bd_pins xlslice_2to2/Dout]
  connect_bd_net -net xlslice_3_Dout1 [get_bd_pins trigger_logic_0/i_trigg_mask] [get_bd_pins xlslice_7to14/Dout]
  connect_bd_net -net xlslice_3to3_Dout [get_bd_pins enable_signal_0/enable] [get_bd_pins xlslice_3to3/Dout]
  connect_bd_net -net xlslice_3to4_Dout [get_bd_pins DRS_A_test_0/i_en_test] [get_bd_pins xlslice_17/Dout]
  connect_bd_net -net xlslice_5_Dout [get_bd_ports DAC_nCLR] [get_bd_pins xlslice_18/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_SG] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x40000000 -offset 0x00000000 [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs ADC/AXI_ADC_1/S00_AXI/S00_AXI_reg] SEG_AXI_ADC_1_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs CPLD_ctrl_0/S00_AXI/S00_AXI_reg] SEG_CPLD_ctrl_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs DRS4_firmware_1/s00_axi/reg0] SEG_DRS4_firmware_1_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] SEG_axi_dma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_1/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C40000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs clk_mon_0/S00_AXI/S00_AXI_reg] SEG_clk_mon_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs dac_i2c_0/S00_AXI/S00_AXI_reg] SEG_dac_i2c_0_S00_AXI_reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


