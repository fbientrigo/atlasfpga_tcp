# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BramAsRegister" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ExternalClockIn" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FfAsRegister" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LclkOffsetK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PhaseControl" -parent ${Page_0}


}

proc update_PARAM_VALUE.BramAsRegister { PARAM_VALUE.BramAsRegister } {
	# Procedure called to update BramAsRegister when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BramAsRegister { PARAM_VALUE.BramAsRegister } {
	# Procedure called to validate BramAsRegister
	return true
}

proc update_PARAM_VALUE.ExternalClockIn { PARAM_VALUE.ExternalClockIn } {
	# Procedure called to update ExternalClockIn when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ExternalClockIn { PARAM_VALUE.ExternalClockIn } {
	# Procedure called to validate ExternalClockIn
	return true
}

proc update_PARAM_VALUE.FfAsRegister { PARAM_VALUE.FfAsRegister } {
	# Procedure called to update FfAsRegister when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FfAsRegister { PARAM_VALUE.FfAsRegister } {
	# Procedure called to validate FfAsRegister
	return true
}

proc update_PARAM_VALUE.LclkOffsetK { PARAM_VALUE.LclkOffsetK } {
	# Procedure called to update LclkOffsetK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LclkOffsetK { PARAM_VALUE.LclkOffsetK } {
	# Procedure called to validate LclkOffsetK
	return true
}

proc update_PARAM_VALUE.PhaseControl { PARAM_VALUE.PhaseControl } {
	# Procedure called to update PhaseControl when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PhaseControl { PARAM_VALUE.PhaseControl } {
	# Procedure called to validate PhaseControl
	return true
}


proc update_MODELPARAM_VALUE.ExternalClockIn { MODELPARAM_VALUE.ExternalClockIn PARAM_VALUE.ExternalClockIn } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ExternalClockIn}] ${MODELPARAM_VALUE.ExternalClockIn}
}

proc update_MODELPARAM_VALUE.BramAsRegister { MODELPARAM_VALUE.BramAsRegister PARAM_VALUE.BramAsRegister } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BramAsRegister}] ${MODELPARAM_VALUE.BramAsRegister}
}

proc update_MODELPARAM_VALUE.FfAsRegister { MODELPARAM_VALUE.FfAsRegister PARAM_VALUE.FfAsRegister } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FfAsRegister}] ${MODELPARAM_VALUE.FfAsRegister}
}

proc update_MODELPARAM_VALUE.PhaseControl { MODELPARAM_VALUE.PhaseControl PARAM_VALUE.PhaseControl } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PhaseControl}] ${MODELPARAM_VALUE.PhaseControl}
}

proc update_MODELPARAM_VALUE.LclkOffsetK { MODELPARAM_VALUE.LclkOffsetK PARAM_VALUE.LclkOffsetK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LclkOffsetK}] ${MODELPARAM_VALUE.LclkOffsetK}
}

