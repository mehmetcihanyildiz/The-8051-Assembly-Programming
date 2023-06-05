;Write and assemble a program to determine if R5 contains
;the value 0. If so, put 55H in R5.
;If not, put the value 80H into R6.

BEGIN:	MOV A, R5
			JNZ NOT
			JZ  ZERO
NOT:		MOV R6,#80H
			SJMP BEGIN
ZERO:	MOV R5, #55H
			SJMP BEGIN