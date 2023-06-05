;Assume that bit P2.3 is an input and represents the condition of an oven.
;If it goes high, it means that the oven is hot. Monitor the bit continuously.
;Whenever it goes high, send a high-to-low pulse to port P1.5 to turn on a buzzer.


			SETB P2.3			
LOOP: 	JNB P2.3, LOOP	;keep monitoring for high
			SETB P1.5			;set bit P1.5=1
			CLR P1.5			;make high-to-low
			SJMP LOOP			;keep repeating
