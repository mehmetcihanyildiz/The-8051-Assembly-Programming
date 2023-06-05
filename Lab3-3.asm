;Write a program that reflects the status of the switches on P2 to the LEDs connected to P1.

BEGIN:	MOV P1,P2
	SJMP BEGIN

;P2 is connected to the switch and P1 is connected to the LEDs. Note that when the switch is
;closed, P2 holds the value 0. When 0 is moved to P1, the LEDs are turned on. Hence, a
;closed switch (0) results in a lit LED (1) and an opened switch (1) results in turned off LEDs(0).
