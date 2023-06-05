;Write a program to add the value 3 
;using a looping instruction. Save the result in Register 5.

MOV A, #0 			;A=0,
MOV R2, #10 			;load counter R2=10
LOOP: ADD A, #03 ;add 03 to ACC
DJNZ R2, LOOP 		;repeat until R2=0, so the loop will run 10 times
MOV R5,A 				;save A in R5
