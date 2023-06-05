;Use P1 and P2 to take input of two numbers and calculate the following operations on these
;numbers in order.
; Addition R3
; Subtraction R4
; Multiplication R5 (high byte) R6 (low byte)
; Division R7
; Modulus R0

MOV P1, #0FFH
MOV P2, #0FFH	;make P1 and P2 input ports
MOV R1, P1
MOV R2, P2	;Save the inputs from P1 and P2 to R1 and R2 respectively
MOV A, R1 	;A=R1
ADD A,R2 	;A=A+R2
MOV R3, A 	;R3=R1+R2
MOV A, R1	;A=R1
CLR C 		;clear the Carry flag
SUBB A, R2 	;A=R1-R2-C (C:Binary Value of the Carry Flag)
MOV R4, A 	;R4 = R1-R2-C
MOV A, R1
MOV B, R2 	;the multiplied values must be stored in registers A and B
MUL AB 		;multiplies the contents of A and B. The result is kept in both
		;registers: B keeps the high bits and A keeps the low bits
MOV R5, B 	;the high byte is saved in R5
MOV R6, A 	;the low byte is kept in R6
MOV A, R1
MOV B, R2 	;A must have the dividend and B must have the divisor
DIV AB 		;this command divides A by B, stores the quotient in register
		;A and the remainder in B
MOV R7, A 	;division is stored in R7
MOV R0, B 	;modulus (remainder of A/B) is saved in R0
