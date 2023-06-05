;Write a program to calculate the following operations:
; 35H AND FH
; 4H OR 68H
; 54H XOR 78H

MOV A,#35H ;A = 35H
ANL A,#0FH ;A = A AND 0FH
MOV A,#04H ;A = 04
ORL A,#68H ;A = 6C
MOV A,#54H
XRL A,#78H