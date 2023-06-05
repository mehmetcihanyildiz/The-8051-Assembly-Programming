;Write a program to copy the value 55H into RAM memory locations 
;40H to 41H using direct addressing mode

			ORG 00H
			SJMP MAIN
			ORG 30H
MAIN: 	MOV A, #55H
			MOV 40H, A
			MOV 41H, A
			END