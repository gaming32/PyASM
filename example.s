
___jts1_0___:
	jmp ___jts2_0___


___jts1_1___:
	jmp ___jts2_1___


multiply:
	stx 254
	sty 255
	ldx #0
	lda #0


_work_multpily_start:
	cpx 255
	bne _work_multiply_loop
	jmp _end_multiply


_work_multiply_loop:
	adc 254
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


