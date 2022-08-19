			;Kendall Boesch
			;CS 2240 Lab Section N12
			;3 March 2021
			;SUMMATION WITH FUNCTIONS: This program computes 
			;	the summation 3n^3 as n goes from 4 to 7
			;	the final summation is heald in register 8
			AREA SummationWithFunctions, CODE, READONLY
				ENTRY 
				
				
main		MOV R11, #3			;R11 HOLDS 3 & WILL BE USED TO MULTIPLY CUBED VALUES
			; WITH CUBE VALUE 4
			MOV R0, #4			; ASSIGN R0 TO 4	
			BL computeTerm		; FUNCTION CALL
			MOV R8, R0			; MOVE INTERMEDIATE ANSWER TO R8
			
			;WITH CUBE VALUE 5
			MOV R0, #5			; ASSIGN R0 TO 5
			BL computeTerm		; FUNCTION CALL
			ADD R8, R8, R0		; ADD RESULT OF FUNCTION CALL TO R8 TOTAL

			; WIOTH CUBE VALUE 6
			MOV R0, #6			; ASSIGN R0 TO 6
			BL computeTerm		; FUNCTION CALL
			ADD R8, R8, R0		; ADD RESULT OF FUNCTION CALL TO R8 TOTAL
			
			;WITH CUBE VALUE 7
			MOV R0, #7			; ASSIGN R0 TO 7
			BL computeTerm		;FUNCTION CALL
			ADD R8, R8, R0		; ADD RESULT OF FUNCTION CALL TO R8 TOTAL	
			
			;END COMPUTATION 
stop		B stop

			;COMPUTE TERM FUNCTION: CUBES VALUE IN R0 
			;THEN MULTIPLIES IT BY 3 AND PLACES THE FINAL
			;VALUE BACK INTO REGISTER R0
computeTerm	 MOV R9, R0			;ASSIGN R9 THE VALUE OF R0
			 MUL R10, R9, R0	; R10 HOLDS SQUARED VALUE
			 MUL R12, R10, R0	; R12 HOLDS THE CUBED VALUE
			 MUL R0, R12, R11	; R0 NOW HOLDS THE CUBED VALUE X 3
			 BX LR
			 
			 END
			 