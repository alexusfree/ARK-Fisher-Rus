---------------------------
; Author: Spencer j Potts & alexusfre
; Game: Ark: Survival Evolved
; 1680x1050 русская
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
;;WinActivate, ARK: Survival Evolved

;F7::Reload ;; Перезапустить скрипт
End::ExitApp ; Остановить скрипт

;;F6 = Break Script
F6::
	i := 1
	SoundBeep, 494, 200 ;si
	SoundBeep, 440, 200 ;la
	SoundBeep, 392, 200 ;co
	SoundBeep, 349, 200 ;fa
	Reload
return


;F9::
;	SoundBeep, 262, 200 ;do
;	SoundBeep, 294, 200 ;re
;	SoundBeep, 330, 200 ;mi
;	SoundBeep, 349, 200 ;fa
;	SoundBeep, 392, 200 ;co
;	SoundBeep, 440, 200 ;la
;	SoundBeep, 494, 200 ;si
;return

;;F5 = Run Script "F5"
F5::
	i := 0
	color 		 = 0xFFFFFF
	speed 		 = 150
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
	Sleep, speed
	
	
	PixelSearch PxA, Py, 1254, 839, 1254, 839, color, 3, Fast
	if PxA	{	
    	;	MsgBox, A
		Send, a
		goto Start
	}

	PixelSearch PxZ, Py, 1215, 899, 1215, 899, color, 3, Fast
	if PxZ	{	
    	;	MsgBox, z
		Send, z
		goto Start
	}

	PixelSearch PxQ, Py, 1302, 916, 1302, 916, color, 3, Fast
	if PxQ	{
    	;	MsgBox, Q
		Send, q
		goto Start
	}

	PixelSearch PxW, Py, 1323, 834, 1323, 834, color, 3, Fast
	if PxW	{	
    	;	MsgBox, W
		Send, w
		goto Start
	}
		
	PixelSearch PxX, Py, 1291, 823, 1291, 823, color, 10, Fast
	if PxX	{	
	;    	MsgBox, X
		Send, x
		goto Start
	}

	PixelSearch PxS, Py, 1219, 885, 1219, 885, color, 3, Fast 
	if PxS	{
	;    	MsgBox, S
		Send, s
		goto Start
	}


	PixelSearch PxD, PyD, 1292, 852, 1292, 852, color, 3, Fast
	if PxD && !PyQ	{	
    	;	MsgBox, D
		Send, d
		goto Start
	}

	PixelSearch PxE, Py, 1275, 858, 1275, 858, color, 3, Fast 
	if PxE && !PyA	{
	;	MsgBox, E
		Send, e
		goto Start
	}

	PixelSearch PxC, Py, 1220, 865, 1220, 865, color, 3, Fast
	if ( PxC && !PxQ) {
	;	MsgBox, C
		Send, c
		goto Start
	}

}
return
