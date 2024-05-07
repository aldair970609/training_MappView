(********************************************************************
 * COPYRIGHT -- Bernecker + Rainer
 ********************************************************************
 * Library: TempLib
 * File: TempLib.typ
 * Author: gierlingerj
 * Created: May 15, 2013
 ********************************************************************
 * Data types of library TempLib
 ********************************************************************)

TYPE
	SimModInternalType : 	STRUCT 
		Tt_cool : MTBasicsTimeDelay;
		Tt_heat : MTBasicsTimeDelay;
		PT2 : MTBasicsPT2;
		k_h : REAL := 1.0;
		k_c : REAL := 1.0;
		EnableOld : BOOL;
		RoomTemp : REAL;
	END_STRUCT;
END_TYPE
