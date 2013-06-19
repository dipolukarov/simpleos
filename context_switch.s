.global activate
activate:
	mov	r0, #0x10
	msr	SPSR, r0
	ldr	lr, =first

	mov	ip, sp
	msr	CPSR_c, #0xDF	/* System mode */
	mov	sp, ip
	msr	CPSR_c, #0xD3	/* Supervisor mode */

	movs	pc, lr
