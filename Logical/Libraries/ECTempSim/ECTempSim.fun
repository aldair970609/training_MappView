(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Library: TempLib
 * File: TempLib.fun
 * Author: gierlingerj
 * Created: May 15, 2013
 ********************************************************************
 * Functions and function blocks of library TempLib
 ********************************************************************)

FUNCTION_BLOCK ECTempSimModel (*simulation of an extruder temperature zone*) (*$GROUP=User*)
	VAR_INPUT
		Enable : BOOL; (*Enables the function block*)
		InHeat : REAL; (*Heating control action. Permitted values: 0.0..100.0 [%].*)
		InCool : REAL; (*Cooling control action. Permitted values: 0.0..100.0 [%].*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Function block is active.*)
		Error : BOOL; (*Indicates an error.*)
		StatusID : UDINT; (*Status information.*)
		UpdateDone : BOOL; (*Update is done.*)
		OutTemp : REAL; (*Output temperature (output variable). Units: °C.*)
	END_VAR
	VAR
		Internal : SimModInternalType;
	END_VAR
END_FUNCTION_BLOCK
