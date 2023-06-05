;Write a program that displays the number
;1234 on the four 7-segment displays
;continuously.


START:	SETB P3.3
			SETB P3.4	;enable display 3
			MOV P1, #11111001b ;put pattern for 1 on display
			ACALL DELAY
			MOV P1, #0FFH ;clear the display
			CLR P3.3 ;enable display 2
			MOV P1, #10100100b;put pattern for 2 on display
			ACALL DELAY
			MOV P1, #0FFH ;clear the display
			CLR P3.4
			SETB P3.3 ;enable display 1
			MOV P1, #10110000b ;put pattern for 3 on display
			ACALL DELAY
			MOV P1, #0FFH ;clear the display
			CLR P3.3 ;enable display 0
			MOV P1, #10011001b ;put pattern for 4 on display
			ACALL DELAY
			MOV P1, #0FFH ;clear the display
			LJMP START ;jump back to start

DELAY: MOV R4,#02H
			DJNZ R4,$
			RET