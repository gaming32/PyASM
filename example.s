
___jts1_0___:
	jmp ___jts2_0___


___jts1_1___:
	jmp ___jts2_1___


___jts1_2___:
	jmp ___jts2_2___


___jts2_2___:


multiply:
	stx 33022
	sty 33023
	ldx #0
	lda #0


_work_multpily_start:
	cpx 33023
	bne _work_multiply_loop
	jmp _end_multiply


_work_multiply_loop:
	adc 33022
	inx
	jmp _work_multiply_start


_end_multiply:
	rts


___jts2_1___:


___jts2_0___:


start:
	ldx #5
	ldy #5
	jsr multiply
	sta result
	jmp ___hlt___


___hlt___:


result:


