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
	.file	"power.c"
	.text
	.align	2
	.global	power
	.syntax unified
	.arm
	.type	power, %function
power:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	mov	r2, #0
.L2:
	cmp	r2, r1
	mullt	r3, r0, r3
	addlt	r2, r2, #1
	blt	.L2
.L5:
	mov	r0, r3
	bx	lr
	.size	power, .-power
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
