;Write a program to get a byte of data from P1 
;and send it to P0 and P2. Also, give a copy of it to 
;registers R0, R1, and R2. Single-step the prog
;examine the ports and registers.

MOV P1, #0FFH   ; make P1 an input port by writing 1 to all bits
MOV P0, P1      ; take input from P1 and move to P0, P2, R0, R1, R2
MOV P2, P1
MOV R0, P1
MOV R1, P1
MOV R2, P1
