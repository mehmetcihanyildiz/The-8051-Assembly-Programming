;Write a program to copy the value 55H into RAM memory locations 
;40H to 41H using register indirect addressing mode without a loop.

			ORG 00H
			SJMP MAIN
			ORG 30H
MAIN: 	MOV A, #55H
			MOV R0, #40H
			MOV @R0, A
			INC R0
			MOV @R0, A
			END