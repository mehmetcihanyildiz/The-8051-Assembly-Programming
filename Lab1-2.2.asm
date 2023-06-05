;Write and assemble a program to show the status of 
;the CY flag after the addition of 38H and 2FH.

MOV A, #38H
ADD A, #2FH

;38+2F=67
;00111000 + 00101111 = 01100111
;CY= 0 since there is no carry beyond the D7 bit.