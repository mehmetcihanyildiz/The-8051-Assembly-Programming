;Add three BCD numbers located in RAM locations 20H, 21H, 22H together and place the
;results in RAM locations 24H (higher byte) and 23H (lower byte).

MOV A, 20H  ;save the value in RAM location 20H to A
ADD A, 21H  ;add the value in RAM location 21H to A, the result is kept in A
DA A 	      ;adjust for BCD form
MOV R0, A   ;save result in R0
MOV A, #00H ;clear A
ADDC A, 24H ;add the carry to the high byte so that C=0 after this step
MOV 24H, A  ;store high byte
MOV A, R0   ;get 20H+21H
ADD A, 22H  ;add 22H to it
DA A        ;adjust for BCD
MOV 23H, A  ;store low byte
MOV A, #00H ;clear A
ADDC A, 24H ;add the carry to high byte
MOV 24H, A  ;store the resulting high byte
