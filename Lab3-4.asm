;Write a program to display the numbers 
;between 0 - 9 alternatively on the  LED connected to P1.
START:
MOV P1, #11000000b ;1s are turned off and 0s are turned on. 
ACALL WAIT
MOV P1, #11111001b ;1
ACALL WAIT
MOV P1, #10100100b ;2
ACALL WAIT
MOV P1, #10110000b ;3
ACALL WAIT
MOV P1, #10011001b ;4
ACALL WAIT
MOV P1, #10010010b ;5
ACALL WAIT
MOV P1, #10000010b ;6
ACALL WAIT
MOV P1, #11111000b ;7
ACALL WAIT
MOV P1, #10000000b ;8
ACALL WAIT
MOV P1, #10010000b ;9
ACALL WAIT
SJMP START
WAIT: MOV R4,#05H
DJNZ R4, $
RET