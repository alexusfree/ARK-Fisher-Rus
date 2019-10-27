; ----------------------------
; Author: Spencer j Potts & alexusfre
; Game: Ark: Survival Evolved
; 
;F5 = Run Script "F5"
;F6 = Break Script
; ----------------------------
#NoEnv
#UseHook On
;WinActivate, ARK: Survival Evolved
;F6::Reload ;; перезагружает скрипт
;End::ExitApp ;;закрывает скрипт, 

F6::   ;F6 Break Script
	i := 1
	SoundBeep, 500, 150
	Reload
return

F5::   ;F5 = Run Script "F5"
	i := 0
	color 	 = 0xFFFFFF
	speed 	 = 150
	SoundBeep, 300, 300

while ( %i% = 0 ) {
Start:
	PxQ := 0
	PxW := 0
	PxE := 0
	PxA := 0
	PxS := 0
	PxD := 0
	PxZ := 0
	PxX := 0
	PxC := 0


	PixelSearch PxA, Py, 1433, 898, 1433, 898, color, 3, Fast
	if PxA	{	
    	;	MsgBox, A
		Send, a
		Sleep, speed
		goto Start
	}

	PixelSearch PxZ, Py, 1390, 966, 1390, 966, color, 3, Fast
	if PxZ	{	
    	;	MsgBox, z
		Send, z
		Sleep, speed
		goto Start
	}

	PixelSearch PxQ, Py, 1486, 987, 1489, 987, color, 3, Fast
	if PxQ	{
    	;	MsgBox, Q
		Send, q
		Sleep, speed
		goto Start
	}

	PixelSearch PxW, Py, 1514, 890, 1514, 890, color, 3, Fast
	if PxW	{	
    	;	MsgBox, W
		Send, w
		Sleep, speed
		goto Start
	}
		
	PixelSearch PxX, Py, 1475, 880, 1475, 880, color, 4, Fast
	if PxX	{	
    	;	MsgBox, Найден X
		Send, x
		Sleep, speed
		goto Start
	}

	PixelSearch PxS, Py, 1392, 950, 1392, 950, color, 3, Fast 
	if PxS	{
    	;	MsgBox, S
		Send, s
		goto Start
	}


	PixelSearch PxD, PyD, 1480, 910, 1480, 910, color, 3, Fast
	if PxD && !PyQ	{	
    	;	MsgBox, D
		Send, d
		Sleep, speed
		goto Start
	}

	PixelSearch PxE, Py, 1458, 919, 1458, 919, color, 3, Fast 
	if PxE && !PyA	{
	;	MsgBox, E
		Send, e
		Sleep, speed
		goto Start
	}

	PixelSearch PxC, Py, 1394, 929, 1394, 929, color, 3, Fast
	if ( PxC && !PxQ) {
	;	MsgBox, C
		Send, c
		Sleep, speed
		goto Start
	}

}
return

