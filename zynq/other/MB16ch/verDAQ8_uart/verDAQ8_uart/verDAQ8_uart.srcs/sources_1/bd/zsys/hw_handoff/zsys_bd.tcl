
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
# ROController, fifo2Uart, reset_init, ADC_readout_buff, mapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z015clg485-1
   set_property BOARD_PART trenz.biz:te0715_15_1i:part0:1.1 [current_project]
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

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s00_axi_ctrl

  # Create pins
  create_bd_pin -dir I ADC_MISO
  create_bd_pin -dir O ADC_MOSI
  create_bd_pin -dir O ADC_SCLK
  create_bd_pin -dir O B1_ADC_nCS
  create_bd_pin -dir I i_ADC_ch0_n_0
  create_bd_pin -dir I i_ADC_ch0_p_0
  create_bd_pin -dir I i_ADC_ch1_n_0
  create_bd_pin -dir I i_ADC_ch1_p_0
  create_bd_pin -dir I i_ADC_ch2_n_0
  create_bd_pin -dir I i_ADC_ch2_p_0
  create_bd_pin -dir I i_ADC_ch3_n_0
  create_bd_pin -dir I i_ADC_ch3_p_0
  create_bd_pin -dir I i_ADC_ch4_n_0
  create_bd_pin -dir I i_ADC_ch4_p_0
  create_bd_pin -dir I i_ADC_ch5_n_0
  create_bd_pin -dir I i_ADC_ch5_p_0
  create_bd_pin -dir I i_ADC_ch6_n_0
  create_bd_pin -dir I i_ADC_ch6_p_0
  create_bd_pin -dir I i_ADC_ch7_n_0
  create_bd_pin -dir I i_ADC_ch7_p_0
  create_bd_pin -dir I i_ADclk_n_0
  create_bd_pin -dir I i_ADclk_p_0
  create_bd_pin -dir I i_Lclk_n_0
  create_bd_pin -dir I i_Lclk_p_0
  create_bd_pin -dir O o_ADclk_p
  create_bd_pin -dir O o_Lclk_p
  create_bd_pin -dir O -type clk o_data_clk
  create_bd_pin -dir O -from 11 -to 0 o_debug
  create_bd_pin -dir O o_lclk_debug
  create_bd_pin -dir O -from 11 -to 0 o_out_0
  create_bd_pin -dir O -from 11 -to 0 o_out_1
  create_bd_pin -dir O -from 11 -to 0 o_out_2
  create_bd_pin -dir O -from 11 -to 0 o_out_3
  create_bd_pin -dir O -from 11 -to 0 o_out_4
  create_bd_pin -dir O -from 11 -to 0 o_out_5
  create_bd_pin -dir O -from 11 -to 0 o_out_6
  create_bd_pin -dir O -from 11 -to 0 o_out_7
  create_bd_pin -dir I -type clk s00_axi_ctrl_aclk
  create_bd_pin -dir I -type rst s00_axi_ctrl_aresetn

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
  
  # Create instance: AXI_ADC_v1_0_0, and set properties
  set AXI_ADC_v1_0_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:AXI_ADC_v1_0:2.0 AXI_ADC_v1_0_0 ]

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
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s00_axi_ctrl] [get_bd_intf_pins AXI_ADC_v1_0_0/s00_axi_ctrl]

  # Create port connections
  connect_bd_net -net ADC_MISO_1 [get_bd_pins ADC_MISO] [get_bd_pins AXI_ADC_v1_0_0/i_MISO]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch0_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch0_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch0_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch0_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch0_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch0_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch1_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch1_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch1_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch1_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch1_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch1_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch2_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch2_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch2_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch2_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch2_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch2_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch3_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch3_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch3_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch3_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch3_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch3_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch4_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch4_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch4_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch4_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch4_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch4_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch5_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch5_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch5_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch5_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch5_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch5_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch6_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch6_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch6_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch6_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch6_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch6_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch7_n [get_bd_pins ADC_readout_buff_0/o_ADC_ch7_n] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch7_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADC_ch7_p [get_bd_pins ADC_readout_buff_0/o_ADC_ch7_p] [get_bd_pins AXI_ADC_v1_0_0/i_data_in_ch7_p]
  connect_bd_net -net ADC_readout_buff_0_o_ADclk_n [get_bd_pins ADC_readout_buff_0/o_ADclk_n] [get_bd_pins AXI_ADC_v1_0_0/i_ADclk_n]
  connect_bd_net -net ADC_readout_buff_0_o_ADclk_p [get_bd_pins o_ADclk_p] [get_bd_pins ADC_readout_buff_0/o_ADclk_p] [get_bd_pins AXI_ADC_v1_0_0/i_ADclk_p]
  connect_bd_net -net ADC_readout_buff_0_o_Lclk_n [get_bd_pins ADC_readout_buff_0/o_Lclk_n] [get_bd_pins AXI_ADC_v1_0_0/i_Lclk_n]
  connect_bd_net -net ADC_readout_buff_0_o_Lclk_p [get_bd_pins o_Lclk_p] [get_bd_pins ADC_readout_buff_0/o_Lclk_p] [get_bd_pins AXI_ADC_v1_0_0/i_Lclk_p]
  connect_bd_net -net AXI_ADC_v1_0_0_o_MOSI [get_bd_pins ADC_MOSI] [get_bd_pins AXI_ADC_v1_0_0/o_MOSI]
  connect_bd_net -net AXI_ADC_v1_0_0_o_SCLK [get_bd_pins ADC_SCLK] [get_bd_pins AXI_ADC_v1_0_0/o_SCLK]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_clk [get_bd_pins o_data_clk] [get_bd_pins AXI_ADC_v1_0_0/o_data_clk]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch0 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch0] [get_bd_pins mapper_0/i_in_0]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch1 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch1] [get_bd_pins mapper_0/i_in_1]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch2 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch2] [get_bd_pins mapper_0/i_in_2]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch3 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch3] [get_bd_pins mapper_0/i_in_3]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch4 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch4] [get_bd_pins mapper_0/i_in_4]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch5 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch5] [get_bd_pins mapper_0/i_in_5]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch6 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch6] [get_bd_pins mapper_0/i_in_6]
  connect_bd_net -net AXI_ADC_v1_0_0_o_data_out_ch7 [get_bd_pins AXI_ADC_v1_0_0/o_data_out_ch7] [get_bd_pins mapper_0/i_in_7]
  connect_bd_net -net AXI_ADC_v1_0_0_o_debug [get_bd_pins o_debug] [get_bd_pins AXI_ADC_v1_0_0/o_debug]
  connect_bd_net -net AXI_ADC_v1_0_0_o_lclk_debug -boundary_type lower [get_bd_pins o_lclk_debug]
  connect_bd_net -net AXI_ADC_v1_0_0_o_nCS [get_bd_pins B1_ADC_nCS] [get_bd_pins AXI_ADC_v1_0_0/o_nCS]
  connect_bd_net -net i_ADC_ch0_n_0_1 [get_bd_pins i_ADC_ch0_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch0_n]
  connect_bd_net -net i_ADC_ch0_p_0_1 [get_bd_pins i_ADC_ch0_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch0_p]
  connect_bd_net -net i_ADC_ch1_n_0_1 [get_bd_pins i_ADC_ch1_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch1_n]
  connect_bd_net -net i_ADC_ch1_p_0_1 [get_bd_pins i_ADC_ch1_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch1_p]
  connect_bd_net -net i_ADC_ch2_n_0_1 [get_bd_pins i_ADC_ch2_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch2_n]
  connect_bd_net -net i_ADC_ch2_p_0_1 [get_bd_pins i_ADC_ch2_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch2_p]
  connect_bd_net -net i_ADC_ch3_n_0_1 [get_bd_pins i_ADC_ch3_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch3_n]
  connect_bd_net -net i_ADC_ch3_p_0_1 [get_bd_pins i_ADC_ch3_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch3_p]
  connect_bd_net -net i_ADC_ch4_n_0_1 [get_bd_pins i_ADC_ch4_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch4_n]
  connect_bd_net -net i_ADC_ch4_p_0_1 [get_bd_pins i_ADC_ch4_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch4_p]
  connect_bd_net -net i_ADC_ch5_n_0_1 [get_bd_pins i_ADC_ch5_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch5_n]
  connect_bd_net -net i_ADC_ch5_p_0_1 [get_bd_pins i_ADC_ch5_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch5_p]
  connect_bd_net -net i_ADC_ch6_n_0_1 [get_bd_pins i_ADC_ch6_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch6_n]
  connect_bd_net -net i_ADC_ch6_p_0_1 [get_bd_pins i_ADC_ch6_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch6_p]
  connect_bd_net -net i_ADC_ch7_n_0_1 [get_bd_pins i_ADC_ch7_n_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch7_n]
  connect_bd_net -net i_ADC_ch7_p_0_1 [get_bd_pins i_ADC_ch7_p_0] [get_bd_pins ADC_readout_buff_0/i_ADC_ch7_p]
  connect_bd_net -net i_ADclk_n_0_1 [get_bd_pins i_ADclk_n_0] [get_bd_pins ADC_readout_buff_0/i_ADclk_n]
  connect_bd_net -net i_ADclk_p_0_1 [get_bd_pins i_ADclk_p_0] [get_bd_pins ADC_readout_buff_0/i_ADclk_p]
  connect_bd_net -net i_Lclk_n_0_1 [get_bd_pins i_Lclk_n_0] [get_bd_pins ADC_readout_buff_0/i_Lclk_n]
  connect_bd_net -net i_Lclk_p_0_1 [get_bd_pins i_Lclk_p_0] [get_bd_pins ADC_readout_buff_0/i_Lclk_p]
  connect_bd_net -net mapper_0_o_out_0 [get_bd_pins o_out_0] [get_bd_pins mapper_0/o_out_0]
  connect_bd_net -net mapper_0_o_out_1 [get_bd_pins o_out_1] [get_bd_pins mapper_0/o_out_1]
  connect_bd_net -net mapper_0_o_out_2 [get_bd_pins o_out_2] [get_bd_pins mapper_0/o_out_2]
  connect_bd_net -net mapper_0_o_out_3 [get_bd_pins o_out_3] [get_bd_pins mapper_0/o_out_3]
  connect_bd_net -net mapper_0_o_out_4 [get_bd_pins o_out_4] [get_bd_pins mapper_0/o_out_4]
  connect_bd_net -net mapper_0_o_out_5 [get_bd_pins o_out_5] [get_bd_pins mapper_0/o_out_5]
  connect_bd_net -net mapper_0_o_out_6 [get_bd_pins o_out_6] [get_bd_pins mapper_0/o_out_6]
  connect_bd_net -net mapper_0_o_out_7 [get_bd_pins o_out_7] [get_bd_pins mapper_0/o_out_7]
  connect_bd_net -net s00_axi_ctrl_aclk_1 [get_bd_pins s00_axi_ctrl_aclk] [get_bd_pins AXI_ADC_v1_0_0/s00_axi_ctrl_aclk]
  connect_bd_net -net s00_axi_ctrl_aresetn_1 [get_bd_pins s00_axi_ctrl_aresetn] [get_bd_pins AXI_ADC_v1_0_0/s00_axi_ctrl_aresetn]

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
  set ADC_MISO [ create_bd_port -dir I ADC_MISO ]
  set ADC_MOSI [ create_bd_port -dir O ADC_MOSI ]
  set ADC_SCLK [ create_bd_port -dir O ADC_SCLK ]
  set B0_ADC_CH_1_N [ create_bd_port -dir I B0_ADC_CH_1_N ]
  set B0_ADC_CH_1_P [ create_bd_port -dir I B0_ADC_CH_1_P ]
  set B0_ADC_CH_2_N [ create_bd_port -dir I B0_ADC_CH_2_N ]
  set B0_ADC_CH_2_P [ create_bd_port -dir I B0_ADC_CH_2_P ]
  set B0_ADC_CH_3_N [ create_bd_port -dir I B0_ADC_CH_3_N ]
  set B0_ADC_CH_3_P [ create_bd_port -dir I B0_ADC_CH_3_P ]
  set B0_ADC_CH_4_N [ create_bd_port -dir I B0_ADC_CH_4_N ]
  set B0_ADC_CH_4_P [ create_bd_port -dir I B0_ADC_CH_4_P ]
  set B0_ADC_CH_5_N [ create_bd_port -dir I B0_ADC_CH_5_N ]
  set B0_ADC_CH_5_P [ create_bd_port -dir I B0_ADC_CH_5_P ]
  set B0_ADC_CH_6_N [ create_bd_port -dir I B0_ADC_CH_6_N ]
  set B0_ADC_CH_6_P [ create_bd_port -dir I B0_ADC_CH_6_P ]
  set B0_ADC_CH_7_N [ create_bd_port -dir I B0_ADC_CH_7_N ]
  set B0_ADC_CH_7_P [ create_bd_port -dir I B0_ADC_CH_7_P ]
  set B0_ADC_CH_8_N [ create_bd_port -dir I B0_ADC_CH_8_N ]
  set B0_ADC_CH_8_P [ create_bd_port -dir I B0_ADC_CH_8_P ]
  set B0_ADC_CLK_N [ create_bd_port -dir O -from 0 -to 0 -type clk B0_ADC_CLK_N ]
  set B0_ADC_CLK_P [ create_bd_port -dir O -from 0 -to 0 -type clk B0_ADC_CLK_P ]
  set B0_ADC_nCS [ create_bd_port -dir O B0_ADC_nCS ]
  set B0_AD_clk_N [ create_bd_port -dir I B0_AD_clk_N ]
  set B0_AD_clk_P [ create_bd_port -dir I B0_AD_clk_P ]
  set B0_DAC_SEL [ create_bd_port -dir O -from 1 -to 0 B0_DAC_SEL ]
  set B0_DRS_A0 [ create_bd_port -dir O -from 3 -to 0 B0_DRS_A0 ]
  set B0_DRS_DWRITE [ create_bd_port -dir O B0_DRS_DWRITE ]
  set B0_DRS_REFCLK_N [ create_bd_port -dir O -from 0 -to 0 -type clk B0_DRS_REFCLK_N ]
  set B0_DRS_REFCLK_P [ create_bd_port -dir O -from 0 -to 0 -type clk B0_DRS_REFCLK_P ]
  set B0_DRS_RSLOAD [ create_bd_port -dir O B0_DRS_RSLOAD ]
  set B0_DRS_SRCLK [ create_bd_port -dir O B0_DRS_SRCLK ]
  set B0_DRS_SRIN [ create_bd_port -dir O B0_DRS_SRIN ]
  set B0_DRS_SROUT [ create_bd_port -dir I B0_DRS_SROUT ]
  set B0_LCLK_N [ create_bd_port -dir I B0_LCLK_N ]
  set B0_LCLK_P [ create_bd_port -dir I B0_LCLK_P ]
  set B1_DRS_DENABLE [ create_bd_port -dir O B1_DRS_DENABLE ]
  set B1_DRS_nRESET [ create_bd_port -dir O B1_DRS_nRESET ]
  set DAC_nCLR [ create_bd_port -dir O -from 0 -to 0 DAC_nCLR ]
  set E_Link_TX_N [ create_bd_port -dir O -from 0 -to 0 E_Link_TX_N ]
  set E_Link_TX_P [ create_bd_port -dir O -from 0 -to 0 E_Link_TX_P ]
  set GAIN_CTRL [ create_bd_port -dir O -from 1 -to 0 GAIN_CTRL ]
  set MUX_CTRL [ create_bd_port -dir O -from 1 -to 0 MUX_CTRL ]
  set TCal [ create_bd_port -dir O -from 0 -to 0 TCal ]
  set TEST [ create_bd_port -dir O -from 1 -to 0 TEST ]
  set nSHDN [ create_bd_port -dir O -from 0 -to 0 nSHDN ]

  # Create instance: ADC
  create_hier_cell_ADC [current_bd_instance .] ADC

  # Create instance: DRS4_firmware_1, and set properties
  set DRS4_firmware_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:DRS4_firmware:4 DRS4_firmware_1 ]

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
  
  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {12} \
   CONFIG.C_GPIO_WIDTH {24} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.Output_Width {12} \
 ] $c_counter_binary_0

  # Create instance: dac_i2c_0, and set properties
  set dac_i2c_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:dac_i2c:1.0 dac_i2c_0 ]

  # Create instance: data_clk_bufg, and set properties
  set data_clk_bufg [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 data_clk_bufg ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $data_clk_bufg

  # Create instance: fifo2Uart_0, and set properties
  set block_name fifo2Uart
  set block_cell_name fifo2Uart_0
  if { [catch {set fifo2Uart_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo2Uart_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.baud_rate {115200} \
 ] $fifo2Uart_0

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

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_1 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {9} \
   CONFIG.Fifo_Implementation {Common_Clock_Builtin_FIFO} \
   CONFIG.Full_Threshold_Assert_Value {510} \
   CONFIG.Full_Threshold_Negate_Value {509} \
   CONFIG.Input_Data_Width {8} \
   CONFIG.Input_Depth {512} \
   CONFIG.Output_Data_Width {8} \
   CONFIG.Output_Depth {512} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Use_Dout_Reset {false} \
   CONFIG.Write_Acknowledge_Flag {true} \
   CONFIG.Write_Data_Count_Width {9} \
 ] $fifo_generator_1

  # Create instance: fit_timer_0, and set properties
  set fit_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fit_timer:2.0 fit_timer_0 ]
  set_property -dict [ list \
   CONFIG.C_NO_CLOCKS {1500000000} \
 ] $fit_timer_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
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
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {50000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x3FFFFFFF} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET0_RESET_IO {MIO 50} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {1} \
   CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_EMIO_TTC0 {0} \
   CONFIG.PCW_EN_EMIO_TTC1 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_WDT {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C1 {0} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_SDIO0 {0} \
   CONFIG.PCW_EN_TTC0 {0} \
   CONFIG.PCW_EN_TTC1 {0} \
   CONFIG.PCW_EN_UART0 {1} \
   CONFIG.PCW_EN_USB0 {0} \
   CONFIG.PCW_EN_WDT {0} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C1_I2C1_IO {<Select>} \
   CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
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
   CONFIG.PCW_MIO_29_DIRECTION {in} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 2.5V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {out} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {in} \
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
   CONFIG.PCW_MIO_36_DIRECTION {in} \
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
   CONFIG.PCW_MIO_50_DIRECTION {out} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {out} \
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
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#UART 0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#ENET Reset#GPIO#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#gpio[28]#gpio[29]#gpio[30]#gpio[31]#gpio[32]#gpio[33]#gpio[34]#gpio[35]#gpio[36]#gpio[37]#gpio[38]#gpio[39]#gpio[40]#gpio[41]#gpio[42]#gpio[43]#gpio[44]#gpio[45]#gpio[46]#gpio[47]#gpio[48]#gpio[49]#reset#gpio[51]#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 2.5V} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_SD0_SD0_IO {<Select>} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {0} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC0_TTC0_IO {<Select>} \
   CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_TTC1_TTC1_IO {<Select>} \
   CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART0_UART0_IO {MIO 14 .. 15} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3 (Low Voltage)} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J256M16 RE-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.91} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_RESET_IO {MIO 51} \
   CONFIG.PCW_USB0_USB0_IO {<Select>} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {1} \
   CONFIG.PCW_USB_RESET_SELECT {<Select>} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {0} \
   CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
   CONFIG.PCW_WDT_WDT_IO {<Select>} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {4} \
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

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_2, and set properties
  set util_ds_buf_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_2 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_2

  # Create instance: util_ds_buf_3, and set properties
  set util_ds_buf_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_3 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_3

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {12} \
   CONFIG.IN1_WIDTH {12} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

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
   CONFIG.CONST_VAL {2} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_3

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {12} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create instance: xlslice_3to2, and set properties
  set xlslice_3to2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3to2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_3to2

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_4

  # Create instance: xlslice_5to6, and set properties
  set xlslice_5to6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_5to6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_5to6

  # Create instance: xlslice_7to8, and set properties
  set xlslice_7to8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_7to8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {7} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_7to8

  # Create instance: xlslice_9, and set properties
  set xlslice_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_9 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {9} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_9

  # Create instance: xlslice_10, and set properties
  set xlslice_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_10 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {10} \
   CONFIG.DIN_TO {10} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_10

  # Create instance: xlslice_11, and set properties
  set xlslice_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_11 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {11} \
   CONFIG.DIN_WIDTH {12} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_11

  # Create interface connections
  connect_bd_intf_net -intf_net ROController_0_i_rd_fifo [get_bd_intf_pins ROController_0/i_rd_fifo] [get_bd_intf_pins fifo_generator_0/FIFO_READ]
  connect_bd_intf_net -intf_net ROController_0_o_wr_fifo [get_bd_intf_pins ROController_0/o_wr_fifo] [get_bd_intf_pins fifo_generator_0/FIFO_WRITE]
  connect_bd_intf_net -intf_net dac_i2c_0_DAC_I2C [get_bd_intf_ports I2C_0] [get_bd_intf_pins dac_i2c_0/DAC_I2C]
  connect_bd_intf_net -intf_net fifo2Uart_0_F_read [get_bd_intf_pins fifo2Uart_0/F_read] [get_bd_intf_pins fifo_generator_1/FIFO_READ]
  connect_bd_intf_net -intf_net fifo2Uart_0_F_write [get_bd_intf_pins fifo2Uart_0/F_write] [get_bd_intf_pins fifo_generator_1/FIFO_WRITE]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins dac_i2c_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins ADC/s00_axi_ctrl] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins DRS4_firmware_1/s00_axi] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net ADC_ADC_MOSI [get_bd_ports ADC_MOSI] [get_bd_pins ADC/ADC_MOSI]
  connect_bd_net -net ADC_ADC_SCLK [get_bd_ports ADC_SCLK] [get_bd_pins ADC/ADC_SCLK]
  connect_bd_net -net ADC_B1_ADC_nCS [get_bd_ports B0_ADC_nCS] [get_bd_pins ADC/B1_ADC_nCS]
  connect_bd_net -net ADC_MISO_1 [get_bd_ports ADC_MISO] [get_bd_pins ADC/ADC_MISO]
  connect_bd_net -net ADC_o_data_clk [get_bd_pins ADC/o_data_clk] [get_bd_pins data_clk_bufg/BUFG_I]
  connect_bd_net -net ADC_o_out_0 [get_bd_pins ADC/o_out_0] [get_bd_pins ROController_0/i_data_ch0]
  connect_bd_net -net ADC_o_out_1 [get_bd_pins ADC/o_out_1] [get_bd_pins ROController_0/i_data_ch1]
  connect_bd_net -net ADC_o_out_2 [get_bd_pins ADC/o_out_2] [get_bd_pins ROController_0/i_data_ch2]
  connect_bd_net -net ADC_o_out_3 [get_bd_pins ADC/o_out_3] [get_bd_pins ROController_0/i_data_ch3]
  connect_bd_net -net ADC_o_out_4 [get_bd_pins ADC/o_out_4] [get_bd_pins ROController_0/i_data_ch4]
  connect_bd_net -net ADC_o_out_5 [get_bd_pins ADC/o_out_5] [get_bd_pins ROController_0/i_data_ch5]
  connect_bd_net -net ADC_o_out_6 [get_bd_pins ADC/o_out_6] [get_bd_pins ROController_0/i_data_ch6]
  connect_bd_net -net ADC_o_out_7 [get_bd_pins ADC/o_out_7] [get_bd_pins ROController_0/i_data_ch7]
  connect_bd_net -net DRS4_firmware_0_o_dwrite_for_trigger [get_bd_pins DRS4_firmware_1/o_dwrite_for_trigger] [get_bd_pins ROController_0/i_DRS4_DWRITEn]
  connect_bd_net -net DRS4_firmware_0_o_srclk_R2 [get_bd_pins DRS4_firmware_1/o_srclk_adc] [get_bd_pins util_ds_buf_2/OBUF_IN]
  connect_bd_net -net DRS4_firmware_1_o_A3_0 [get_bd_ports B0_DRS_A0] [get_bd_pins DRS4_firmware_1/o_A3_0]
  connect_bd_net -net DRS4_firmware_1_o_denable [get_bd_ports B1_DRS_DENABLE] [get_bd_pins DRS4_firmware_1/o_denable]
  connect_bd_net -net DRS4_firmware_1_o_dwrite [get_bd_ports B0_DRS_DWRITE] [get_bd_pins DRS4_firmware_1/o_dwrite]
  connect_bd_net -net DRS4_firmware_1_o_nReset [get_bd_ports B1_DRS_nRESET] [get_bd_pins DRS4_firmware_1/o_nReset]
  connect_bd_net -net DRS4_firmware_1_o_refclk_p [get_bd_pins DRS4_firmware_1/o_refclk_p] [get_bd_pins util_ds_buf_3/OBUF_IN]
  connect_bd_net -net DRS4_firmware_1_o_rsrload [get_bd_ports B0_DRS_RSLOAD] [get_bd_pins DRS4_firmware_1/o_rsrload]
  connect_bd_net -net DRS4_firmware_1_o_srclk [get_bd_ports B0_DRS_SRCLK] [get_bd_pins DRS4_firmware_1/o_srclk]
  connect_bd_net -net DRS4_firmware_1_o_srin [get_bd_ports B0_DRS_SRIN] [get_bd_pins DRS4_firmware_1/o_srin]
  connect_bd_net -net DRS4_firmware_1_o_stop_cell [get_bd_pins DRS4_firmware_1/o_stop_cell] [get_bd_pins ROController_0/i_stop_cell]
  connect_bd_net -net DRS4_firmware_1_o_stop_cell_ready [get_bd_pins DRS4_firmware_1/o_stop_cell_ready] [get_bd_pins ROController_0/i_stop_cell_ready]
  connect_bd_net -net ROController_0_o_ascii [get_bd_pins ROController_0/o_ascii] [get_bd_pins fifo2Uart_0/i_ascii]
  connect_bd_net -net ROController_0_o_busy [get_bd_pins ROController_0/o_busy]
  connect_bd_net -net ROController_0_o_outfifo_wr_en [get_bd_pins ROController_0/o_outfifo_wr_en] [get_bd_pins fifo2Uart_0/i_f_wr_en]
  connect_bd_net -net ROController_0_o_rd_fifo_en [get_bd_pins ROController_0/o_rd_fifo_en] [get_bd_pins fifo_generator_0/rd_en]
  connect_bd_net -net ROController_0_o_wr_fifo_clk [get_bd_pins ROController_0/o_wr_fifo_clk] [get_bd_pins fifo_generator_0/wr_clk]
  connect_bd_net -net ROController_0_o_wr_fifo_en [get_bd_pins ROController_0/o_wr_fifo_en] [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins axi_gpio_0/gpio2_io_o] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_10/Din] [get_bd_pins xlslice_11/Din] [get_bd_pins xlslice_3to2/Din] [get_bd_pins xlslice_4/Din] [get_bd_pins xlslice_5to6/Din] [get_bd_pins xlslice_7to8/Din] [get_bd_pins xlslice_9/Din]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net fifo2Uart_0_o_UART_Tx [get_bd_pins fifo2Uart_0/o_UART_Tx] [get_bd_pins util_ds_buf_0/OBUF_IN]
  connect_bd_net -net fifo2Uart_0_o_fifo_full [get_bd_pins ROController_0/i_next_fifo_full] [get_bd_pins fifo2Uart_0/o_fifo_full]
  connect_bd_net -net fifo2Uart_0_o_rst_fifo [get_bd_pins fifo2Uart_0/o_rst_fifo] [get_bd_pins fifo_generator_1/rst]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins ROController_0/i_rd_fifo_empty] [get_bd_pins fifo_generator_0/empty]
  connect_bd_net -net fifo_generator_0_rd_data_count [get_bd_pins ROController_0/i_rd_data_count] [get_bd_pins fifo_generator_0/rd_data_count] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net fifo_generator_1_wr_ack [get_bd_pins ROController_0/i_wr_ack_ascii] [get_bd_pins fifo_generator_1/wr_ack]
  connect_bd_net -net fit_timer_0_Interrupt [get_bd_pins DRS4_firmware_1/i_drs4_trigger] [get_bd_pins fit_timer_0/Interrupt]
  connect_bd_net -net i_ADC_ch0_n_0_1 [get_bd_ports B0_ADC_CH_1_N] [get_bd_pins ADC/i_ADC_ch0_n_0]
  connect_bd_net -net i_ADC_ch0_p_0_1 [get_bd_ports B0_ADC_CH_1_P] [get_bd_pins ADC/i_ADC_ch0_p_0]
  connect_bd_net -net i_ADC_ch1_n_0_1 [get_bd_ports B0_ADC_CH_2_N] [get_bd_pins ADC/i_ADC_ch1_n_0]
  connect_bd_net -net i_ADC_ch1_p_0_1 [get_bd_ports B0_ADC_CH_2_P] [get_bd_pins ADC/i_ADC_ch1_p_0]
  connect_bd_net -net i_ADC_ch2_n_0_1 [get_bd_ports B0_ADC_CH_3_N] [get_bd_pins ADC/i_ADC_ch2_n_0]
  connect_bd_net -net i_ADC_ch2_p_0_1 [get_bd_ports B0_ADC_CH_3_P] [get_bd_pins ADC/i_ADC_ch2_p_0]
  connect_bd_net -net i_ADC_ch3_n_0_1 [get_bd_ports B0_ADC_CH_4_N] [get_bd_pins ADC/i_ADC_ch3_n_0]
  connect_bd_net -net i_ADC_ch3_p_0_1 [get_bd_ports B0_ADC_CH_4_P] [get_bd_pins ADC/i_ADC_ch3_p_0]
  connect_bd_net -net i_ADC_ch4_n_0_1 [get_bd_ports B0_ADC_CH_5_N] [get_bd_pins ADC/i_ADC_ch4_n_0]
  connect_bd_net -net i_ADC_ch4_p_0_1 [get_bd_ports B0_ADC_CH_5_P] [get_bd_pins ADC/i_ADC_ch4_p_0]
  connect_bd_net -net i_ADC_ch5_n_0_1 [get_bd_ports B0_ADC_CH_6_N] [get_bd_pins ADC/i_ADC_ch5_n_0]
  connect_bd_net -net i_ADC_ch5_p_0_1 [get_bd_ports B0_ADC_CH_6_P] [get_bd_pins ADC/i_ADC_ch5_p_0]
  connect_bd_net -net i_ADC_ch6_n_0_1 [get_bd_ports B0_ADC_CH_7_N] [get_bd_pins ADC/i_ADC_ch6_n_0]
  connect_bd_net -net i_ADC_ch6_p_0_1 [get_bd_ports B0_ADC_CH_7_P] [get_bd_pins ADC/i_ADC_ch6_p_0]
  connect_bd_net -net i_ADC_ch7_n_0_1 [get_bd_ports B0_ADC_CH_8_N] [get_bd_pins ADC/i_ADC_ch7_n_0]
  connect_bd_net -net i_ADC_ch7_p_0_1 [get_bd_ports B0_ADC_CH_8_P] [get_bd_pins ADC/i_ADC_ch7_p_0]
  connect_bd_net -net i_ADclk_n_0_1 [get_bd_ports B0_AD_clk_N] [get_bd_pins ADC/i_ADclk_n_0]
  connect_bd_net -net i_ADclk_p_0_1 [get_bd_ports B0_AD_clk_P] [get_bd_pins ADC/i_ADclk_p_0]
  connect_bd_net -net i_Lclk_n_0_1 [get_bd_ports B0_LCLK_N] [get_bd_pins ADC/i_Lclk_n_0]
  connect_bd_net -net i_Lclk_p_0_1 [get_bd_ports B0_LCLK_P] [get_bd_pins ADC/i_Lclk_p_0]
  connect_bd_net -net i_SROUT_0_1 [get_bd_ports B0_DRS_SROUT] [get_bd_pins DRS4_firmware_1/i_SROUT]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins ADC/s00_axi_ctrl_aclk] [get_bd_pins ROController_0/sys_clk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins dac_i2c_0/s00_axi_aclk] [get_bd_pins fifo2Uart_0/clk] [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins fifo_generator_1/clk] [get_bd_pins fit_timer_0/Clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins reset_init_0/clk] [get_bd_pins rst_FIFO_100M/slowest_sync_clk] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins DRS4_firmware_1/clk_drs4] [get_bd_pins DRS4_firmware_1/s00_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins reset_50M_0/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins reset_50M_0/ext_reset_in] [get_bd_pins rst_FIFO_100M/ext_reset_in] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net reset_50M_0_peripheral_aresetn [get_bd_pins DRS4_firmware_1/s00_axi_aresetn] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins reset_50M_0/peripheral_aresetn]
  connect_bd_net -net reset_init_0_rst [get_bd_pins reset_50M_0/aux_reset_in] [get_bd_pins reset_init_0/rst] [get_bd_pins rst_ps7_0_100M/aux_reset_in]
  connect_bd_net -net rst_FIFO_100M_peripheral_reset [get_bd_pins ROController_0/i_rst] [get_bd_pins fifo2Uart_0/rst] [get_bd_pins fifo_generator_0/rst] [get_bd_pins fit_timer_0/Rst] [get_bd_pins rst_FIFO_100M/peripheral_reset]
  connect_bd_net -net rst_ps7_0_100M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins ADC/s00_axi_ctrl_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins dac_i2c_0/s00_axi_aresetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_BUFG_O [get_bd_pins ROController_0/i_data_clk] [get_bd_pins data_clk_bufg/BUFG_O]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_N [get_bd_ports E_Link_TX_N] [get_bd_pins util_ds_buf_0/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_P [get_bd_ports E_Link_TX_P] [get_bd_pins util_ds_buf_0/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_2_OBUF_DS_N [get_bd_ports B0_ADC_CLK_N] [get_bd_pins util_ds_buf_2/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_2_OBUF_DS_P [get_bd_ports B0_ADC_CLK_P] [get_bd_pins util_ds_buf_2/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_3_OBUF_DS_N [get_bd_ports B0_DRS_REFCLK_N] [get_bd_pins util_ds_buf_3/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_3_OBUF_DS_P [get_bd_ports B0_DRS_REFCLK_P] [get_bd_pins util_ds_buf_3/OBUF_DS_P]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins DRS4_firmware_1/i_PLLLCK] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins ROController_0/i_pre_trig_wind] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins ROController_0/i_post_trig_wind] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_ports B0_DAC_SEL] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_11_Dout [get_bd_pins reset_init_0/input_start] [get_bd_pins xlslice_11/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins ROController_0/i_veto] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins rst_FIFO_100M/aux_reset_in] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout1 [get_bd_ports GAIN_CTRL] [get_bd_pins xlslice_5to6/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_ports TEST] [get_bd_pins xlslice_3to2/Dout]
  connect_bd_net -net xlslice_5to4_Dout [get_bd_ports DAC_nCLR] [get_bd_pins xlslice_4/Dout]
  connect_bd_net -net xlslice_5to7_Dout [get_bd_ports MUX_CTRL] [get_bd_pins xlslice_7to8/Dout]
  connect_bd_net -net xlslice_7to10_Dout [get_bd_ports TCal] [get_bd_pins xlslice_10/Dout]
  connect_bd_net -net xlslice_7to9_Dout [get_bd_ports nSHDN] [get_bd_pins xlslice_9/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs ADC/AXI_ADC_v1_0_0/s00_axi_ctrl/reg0] SEG_AXI_ADC_v1_0_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs DRS4_firmware_1/s00_axi/reg0] SEG_DRS4_firmware_1_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
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


