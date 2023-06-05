;Write and assemble a program to add the values 9CH and 64H,
;and use the simulator to examine the CY flag.

MOV A, #9CH
ADD A, #64H

;9C + 64 = 100
;10011100 + 01100100 = 00000000
;CY = 1 since there is carry beyond the D7 bit.