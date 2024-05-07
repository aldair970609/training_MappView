
PROGRAM _INIT

	SimuladorTemperatura.Enable := TRUE;
	 
END_PROGRAM

PROGRAM _CYCLIC
	//simulador de temperatura
	
	SimuladorTemperatura ();
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

