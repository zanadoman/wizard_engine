	.file	"SEVector.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6vectorC2EPS0_
	.def	_ZN4slay6engine6vectorC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6vectorC2EPS0_
_ZN4slay6engine6vectorC2EPS0_:
.LFB8433:
	.seh_endprologue
	movq	%rdx, (%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6vectorC1EPS0_
	.def	_ZN4slay6engine6vectorC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6vectorC1EPS0_,_ZN4slay6engine6vectorC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6vector6LengthEdddd
	.def	_ZN4slay6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6vector6LengthEdddd
_ZN4slay6engine6vector6LengthEdddd:
.LFB8435:
	.seh_endprologue
	movsd	40(%rsp), %xmm0
	subsd	%xmm1, %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	sqrtsd	%xmm0, %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6vector5AngleEdddd
	.def	_ZN4slay6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6vector5AngleEdddd
_ZN4slay6engine6vector5AngleEdddd:
.LFB8436:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movsd	80(%rsp), %xmm0
	subsd	%xmm1, %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm0
	movapd	%xmm3, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	call	acos
	mulsd	.LC0(%rip), %xmm0
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6vector9TerminalXEddd
	.def	_ZN4slay6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6vector9TerminalXEddd
_ZN4slay6engine6vector9TerminalXEddd:
.LFB8437:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	mulsd	.LC1(%rip), %xmm3
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm7
	movapd	%xmm3, %xmm0
	call	cos
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6vector9TerminalYEddd
	.def	_ZN4slay6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6vector9TerminalYEddd
_ZN4slay6engine6vector9TerminalYEddd:
.LFB8438:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	mulsd	.LC1(%rip), %xmm3
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm7
	movapd	%xmm3, %xmm0
	call	sin
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	442745336
	.long	1078765020
	.align 8
.LC1:
	.long	-1571644103
	.long	1066524486
	.ident	"GCC: (GNU) 13.1.0"
	.def	acos;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
