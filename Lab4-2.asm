;Subtract the value #6EH from #4CH using the SUBB command. Notice that the CY flag will
;be set if the result is a negative number, and the negative value is stored in 2’s complement.
;Write a program to convert the 2’s complement value back to the absolute value of the
;negative result. Save the result in R1.
;(Taking the complement of a number and then adding one will result in the 2’s complement of
;that number and vice versa)

;4CH - 6EH = -22H. If the result of an arithmetic expression is negative, the Carry flag
;will be set and the value is stored in 2’s complement. Taking the complement of such a value and
;then adding 1 will result in the absolute value of the result, in this case 22H.

		MOV A, #4CH
		SUBB A, #6EH	;A = 4CH-6EH-C (C: carry flag, currently 0)
		JNC END
		CPL A 			;if C=1, take 1's complement
		INC A 			;increment to get 2's complement
END:	MOV R1, A 	;save result in R1
