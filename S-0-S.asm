	ORG 00H
START: 	MOV R0,#04H
	MOV DPTR,#STRING
BACK:	MOV A, #00H
 	MOVC A,@A+DPTR
	MOV P1,A
	ACALL DELAY
	INC DPTR
	DJNZ R0,BACK
	SJMP START
STRING:	DB 12H,40H,12H,0FFH;

DELAY: 	MOV R2, #10H
UP: 	MOV R3, #10H
HERE: 	DJNZ R3, HERE
	DJNZ R2,UP
	RET
	END



		
