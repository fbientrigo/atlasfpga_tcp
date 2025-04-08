# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DRS4_samples" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Nbits" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Nchannels" -parent ${Page_0}


}

proc update_PARAM_VALUE.DRS4_samples { PARAM_VALUE.DRS4_samples } {
	# Procedure called to update DRS4_samples when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DRS4_samples { PARAM_VALUE.DRS4_samples } {
	# Procedure called to validate DRS4_samples
	return true
}

proc update_PARAM_VALUE.Nbits { PARAM_VALUE.Nbits } {
	# Procedure called to update Nbits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Nbits { PARAM_VALUE.Nbits } {
	# Procedure called to validate Nbits
	return true
}

proc update_PARAM_VALUE.Nchannels { PARAM_VALUE.Nchannels } {
	# Procedure called to update Nchannels when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Nchannels { PARAM_VALUE.Nchannels } {
	# Procedure called to validate Nchannels
	return true
}


proc update_MODELPARAM_VALUE.Nbits { MODELPARAM_VALUE.Nbits PARAM_VALUE.Nbits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Nbits}] ${MODELPARAM_VALUE.Nbits}
}

proc update_MODELPARAM_VALUE.Nchannels { MODELPARAM_VALUE.Nchannels PARAM_VALUE.Nchannels } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Nchannels}] ${MODELPARAM_VALUE.Nchannels}
}

proc update_MODELPARAM_VALUE.DRS4_samples { MODELPARAM_VALUE.DRS4_samples PARAM_VALUE.DRS4_samples } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DRS4_samples}] ${MODELPARAM_VALUE.DRS4_samples}
}

