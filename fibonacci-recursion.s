	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"fibonacci-recursion.c"
	.text
	.align	2
	.global	fib2
	.syntax unified
	.arm
	.type	fib2, %function
fib2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r0, #1
	cmp	r3, #1
	bls	.L3
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r0, r3
	bl	fib
	mov	r4, r0
	sub	r0, r5, #2
	bl	fib
	add	r0, r4, r0
	pop	{r4, r5, r6, pc}
.L3:
	mov	r0, #1
	bx	lr
	.size	fib2, .-fib2
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
