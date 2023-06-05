;Write a program to perform the following:
;(a) Keep monitoring the P1.2 bit until it becomes high
;(b) When P1.2 becomes high, write value 45H to port 0
;(c) Send a high-to-low (H-to-L) pulse to P2.3

		SETB P1.2 		;make P1.2 an input
LOOP:JNB P1.2, LOOP	; get out of loop when P1.2=1
		MOV P0, #45H
		SETB P2.3 		;make P2.3 high
		CLR P2.3 			;make P2.3 low for H-to-L