;Assume that R7-R6 and R5-R4 are two 16 bit registers, where R6 and R4 keep lower bytes,
;R5 and R7 keep the higher bytes. Subtract these two numbers ( R5R4 - R7R6 ) and store the
;result in RAM locations 33H (lower byte) and 32H (higher byte). Don’t adjust for negative
;values.

;   R5 R4
;   R7 R6
;-__________
; 	  32H 33H

MOV A, R4 	;A=R4
SUBB A, R6 	;A=R4-R6-C
MOV 33H, A 	;store the lower byte in RAM lcation 33H
MOV A, R5 	;A=R5
SUBB A, R7	;A=R5-R7-C
MOV 32H, A 	;store the higher byte
