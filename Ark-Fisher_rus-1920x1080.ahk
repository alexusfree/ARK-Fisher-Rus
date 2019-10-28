; ----------------------------
; Author: Spencer j Potts & alexusfre
; Game: Ark: Survival Evolved
; 1920x1080 русская
;
; Пилагорнис
;Cheat GMSummon "Pela_Character_BP_C" 150

;Удочка
;GiveItem "Blueprint'/Game/PrimalEarth/CoreBlueprints/Weapons/PrimalItem_WeaponFishingRod.PrimalItem_WeaponFishingRod'" 5 1000 0

;Мёд
;GiveItem "Blueprint'/Game/PrimalEarth/CoreBlueprints/Items/Consumables/PrimalItemConsumable_Honey.PrimalItemConsumable_Honey'" 1000 100 0
 
;Лосось 
;SpawnDino "Blueprint'/Game/PrimalEarth/Dinos/Salmon/Salmon_Character_BP.Salmon_Character_BP'" 500 0 0 150
; ----------------------------
#NoEnv
#UseHook On
;WinActivate, ARK: Survival Evolved
;F6::Reload ;; перезагружает скрипт
;End::ExitApp ;;закрывает скрипт, 

F6::   ;F6 Break Script
	i := 1
	SoundBeep, 494, 200 ;si
	SoundBeep, 440, 200 ;la
	SoundBeep, 392, 200 ;co
	SoundBeep, 349, 200 ;fa
	Reload
return

F5::   ;F5 = Run Script "F5"
	i := 0
	color 	 = 0xFFFFFF
	speed 	 = 150
	SoundBeep, 349, 200 ;fa
	SoundBeep, 392, 200 ;co
	SoundBeep, 440, 200 ;la
	SoundBeep, 494, 200 ;si

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
		
	PixelSearch PxX, Py, 1475, 880, 1475, 880, color, 8, Fast
	if PxX	{	
    	;	MsgBox, Íàéäåí X
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
	if PxD && !PxQ	{	
    	;	MsgBox, D
		Send, d
		Sleep, speed
		goto Start
	}

	PixelSearch PxE, Py, 1458, 919, 1458, 919, color, 3, Fast 
	if PxE && !PxA	{
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

