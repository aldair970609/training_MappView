
PROGRAM _INIT
	(* Insert code here *)
	
	MpAlarmXCore_0.Enable := TRUE;
	MpAlarmXCore_0.MpLink := ADR(gAlarmXCore);
	
	MpAlarmXHistory_0.Enable := TRUE;
	MpAlarmXHistory_0.MpLink := ADR(gAlarmXHistory);
	MpAlarmXHistory_0.DeviceName := ADR('Historico');
	
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	MpAlarmXCore_0();
	MpAlarmXHistory_0();
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
		MpAlarmXCore_0.Enable := FALSE;
		MpAlarmXCore_0();
	
		MpAlarmXHistory_0.Enable := FALSE;
		MpAlarmXHistory_0();
	
END_PROGRAM

