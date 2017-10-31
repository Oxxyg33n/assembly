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
	.file	"libfib.c"
	.text
	.align	2
	.global	fib
	.syntax unified
	.arm
	.type	fib, %function
fib:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	mov	r1, #0
	mov	r2, r3
.L2:
	cmp	r1, r0
	addlt	ip, r2, r3
	addlt	r1, r1, #1
	movlt	r2, r3
	movlt	r3, ip
	blt	.L2
.L5:
	mov	r0, r2
	bx	lr
	.size	fib, .-fib
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
