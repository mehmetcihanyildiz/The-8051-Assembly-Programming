;Display the letters A, B and C on the LEDs

BEGIN:	MOV P1,#10001000B
	ACALL WAIT
	MOV P1,#10000011B
	ACALL WAIT
	MOV P1,#11000110B
	ACALL WAIT
	SJMP BEGIN

WAIT:	MOV R5,#05H
	DJNZ R5, $
	RET
