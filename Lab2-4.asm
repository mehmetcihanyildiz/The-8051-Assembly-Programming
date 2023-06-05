;Write a program to monitor P2.4 continuously. 
;When it becomes low, it sends 55H to P1.

MAIN:	SETB P2.4
LOOP:	JB P2.4, LOOP
	MOV P1, #55H
	SJMP MAIN
			
