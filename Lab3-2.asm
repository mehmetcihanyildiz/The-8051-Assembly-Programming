;Write a program to blink two LEDs alternatively. Use P1.0 and P1.6 as the LED bits.
;First,turn P1.0 on and turn P1.6 off simultaneously. Then, turn P1.0 off and turn on P1.6.

BEGIN:	CPL	P1.0
			ACALL DELAY
			CPL 	P1.0
			CPL	P1.6
			ACALL DELAY
			CPL	P1.6
			SJMP	BEGIN
DELAY:	MOV R0,#05H
			DJNZ R0,$
			RET
