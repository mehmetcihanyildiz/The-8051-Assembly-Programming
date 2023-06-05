;Write a program to light the LED bit connected to P1.0, then turn it off and create a blinking pattern.
;Modify your program to light all other bits individually and examine the behaviour of LEDs.

BEGIN:	CPL P1.0
	ACALL DELAY
	SJMP BEGIN
DELAY:	MOV R0, #10
	DJNZ R0,$
	RET
