	title "You Suffer"
	subtitle "But Why"

;                            _______ _______
;                           | o     U       |
;                           | 1 VCC   GND 8 |  
;                           | 2 GP5   GP0 7 |--o/ BUTT o-----------GND
; +3V--[ 200 R ]--| LED3 >--| 3 GP4   GP1 6 |--< LED1 |--[ 200R ]--+3V
;                           | 4 GP3   GP2 5 |--< LED1 |--[ 200R ]--+3V
;                           |_______________|
; 

	include <p12f509.inc>

BUTT	EQU GP0
LED1	EQU GP1
LED2	EQU GP2
LED3	EQU GP4

	; Prescaler 1:128, assigned to Timer0
	; GP[013] pull-up & wake up enabled
	movlw (b'111' << PS0) | (1 << T0SE)
	option

	; Button input, rest output
	movlw (1 << BUTT)
	tris GPIO

	; Off state
	; Ends up in low power suspend if button is not pressed.
OFF
	movlw (1 << LED1) | (1 << LED2) | (1 << LED3)
	movwf GPIO
	clrwdt
	btfsc GPIO, BUTT
	sleep ; This proceeds at reset

	; Still light state.
	; Enable light right off the bat as we detect a button push,
	; even before the button is released
	movlw (0 << LED1) | (0 << LED2) | (0 << LED3)
	movwf GPIO
	call WAITOFF
STILL
	clrwdt
	btfsc GPIO, BUTT
	goto STILL
	call WAITOFF

	; Blinking state.
	; Checks button before each pause to improve responsivity
BLINK
	clrwdt

	movlw (0 << LED1) | (1 << LED2) | (1 << LED3)
	movwf GPIO
	btfsc GPIO, BUTT
	call DELAY

	movlw (1 << LED1) | (1 << LED2) | (1 << LED3)
	movwf GPIO
	btfsc GPIO, BUTT
	call DELAY

	movlw (1 << LED1) | (0 << LED2) | (1 << LED3)
	movwf GPIO
	btfsc GPIO, BUTT
	call DELAY

	movlw (1 << LED1) | (1 << LED2) | (1 << LED3)
	movwf GPIO
	btfsc GPIO, BUTT
	call DELAY

	movlw (1 << LED1) | (1 << LED2) | (0 << LED3)
	movwf GPIO
	btfsc GPIO, BUTT
	call DELAY

	movlw (1 << LED1) | (1 << LED2) | (1 << LED3)
	movwf GPIO
	btfsc GPIO, BUTT
	call DELAY

	btfsc GPIO, BUTT
	goto BLINK
	call WAITOFF

	goto OFF

WAITOFF
	call DELAY
	btfsc GPIO, BUTT
	return
	goto WAITOFF

DELAY:
	; Wait for the timer to zero out
	clrwdt
	decfsz TMR0,0
	goto DELAY
delayoff:
	; Wait for the zero to lapse
	clrwdt
	decfsz TMR0,0
	return
	goto delayoff

	end
