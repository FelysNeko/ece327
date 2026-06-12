# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DICT_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GUESS_CNTW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_GUESSES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_LETTERS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RSLT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WORD_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.DICT_SIZE { PARAM_VALUE.DICT_SIZE } {
	# Procedure called to update DICT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DICT_SIZE { PARAM_VALUE.DICT_SIZE } {
	# Procedure called to validate DICT_SIZE
	return true
}

proc update_PARAM_VALUE.GUESS_CNTW { PARAM_VALUE.GUESS_CNTW } {
	# Procedure called to update GUESS_CNTW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GUESS_CNTW { PARAM_VALUE.GUESS_CNTW } {
	# Procedure called to validate GUESS_CNTW
	return true
}

proc update_PARAM_VALUE.MAX_GUESSES { PARAM_VALUE.MAX_GUESSES } {
	# Procedure called to update MAX_GUESSES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_GUESSES { PARAM_VALUE.MAX_GUESSES } {
	# Procedure called to validate MAX_GUESSES
	return true
}

proc update_PARAM_VALUE.NUM_LETTERS { PARAM_VALUE.NUM_LETTERS } {
	# Procedure called to update NUM_LETTERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_LETTERS { PARAM_VALUE.NUM_LETTERS } {
	# Procedure called to validate NUM_LETTERS
	return true
}

proc update_PARAM_VALUE.RSLT_WIDTH { PARAM_VALUE.RSLT_WIDTH } {
	# Procedure called to update RSLT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RSLT_WIDTH { PARAM_VALUE.RSLT_WIDTH } {
	# Procedure called to validate RSLT_WIDTH
	return true
}

proc update_PARAM_VALUE.WORD_WIDTH { PARAM_VALUE.WORD_WIDTH } {
	# Procedure called to update WORD_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WORD_WIDTH { PARAM_VALUE.WORD_WIDTH } {
	# Procedure called to validate WORD_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.NUM_LETTERS { MODELPARAM_VALUE.NUM_LETTERS PARAM_VALUE.NUM_LETTERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_LETTERS}] ${MODELPARAM_VALUE.NUM_LETTERS}
}

proc update_MODELPARAM_VALUE.WORD_WIDTH { MODELPARAM_VALUE.WORD_WIDTH PARAM_VALUE.WORD_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WORD_WIDTH}] ${MODELPARAM_VALUE.WORD_WIDTH}
}

proc update_MODELPARAM_VALUE.RSLT_WIDTH { MODELPARAM_VALUE.RSLT_WIDTH PARAM_VALUE.RSLT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RSLT_WIDTH}] ${MODELPARAM_VALUE.RSLT_WIDTH}
}

proc update_MODELPARAM_VALUE.MAX_GUESSES { MODELPARAM_VALUE.MAX_GUESSES PARAM_VALUE.MAX_GUESSES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_GUESSES}] ${MODELPARAM_VALUE.MAX_GUESSES}
}

proc update_MODELPARAM_VALUE.GUESS_CNTW { MODELPARAM_VALUE.GUESS_CNTW PARAM_VALUE.GUESS_CNTW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GUESS_CNTW}] ${MODELPARAM_VALUE.GUESS_CNTW}
}

proc update_MODELPARAM_VALUE.DICT_SIZE { MODELPARAM_VALUE.DICT_SIZE PARAM_VALUE.DICT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DICT_SIZE}] ${MODELPARAM_VALUE.DICT_SIZE}
}

proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

