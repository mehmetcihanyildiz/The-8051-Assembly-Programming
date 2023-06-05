;Write a program to load the accumulator with 
;the value 55H, and complement the ACC 700 times.		

;Since 700 is larger than 255 (the maximum capacity of any register)
;we have to use two registers to create a nested loop structure.
			
			MOV A, #55H
			MOV R0, #35
OUTER:	MOV R1, #20
INNER:	CPL A
			DJNZ R1, INNER
			DJNZ R0, OUTER

