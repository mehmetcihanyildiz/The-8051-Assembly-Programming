;Write a program to get the x value from P0 and send x to P1, continuously.

		MOV P0, #0FFH	;make P0 an i/p port ;by writing it all 1s
LOOP:MOV P1, P0		;get data from P0 and send it to P1
		SJMP LOOP			;keep doing it