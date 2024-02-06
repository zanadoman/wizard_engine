	.file	"WZEVector.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vectorC2EPS0_
	.def	_ZN3wze6engine6vectorC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vectorC2EPS0_
_ZN3wze6engine6vectorC2EPS0_:
.LFB8433:
	.seh_endprologue
	movq	%rdx, (%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6vectorC1EPS0_
	.def	_ZN3wze6engine6vectorC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6vectorC1EPS0_,_ZN3wze6engine6vectorC2EPS0_
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "wze::engine.vector.Length(): X1 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.align 8
.LC1:
	.ascii "wze::engine.vector.Length(): Y1 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.align 8
.LC2:
	.ascii "wze::engine.vector.Length(): X2 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.align 8
.LC3:
	.ascii "wze::engine.vector.Length(): Y2 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector6LengthEdddd
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector6LengthEdddd
_ZN3wze6engine6vector6LengthEdddd:
.LFB8435:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movsd	96(%rsp), %xmm0
	ucomisd	%xmm1, %xmm1
	jp	.L21
	ucomisd	%xmm2, %xmm2
	jp	.L22
	ucomisd	%xmm3, %xmm3
	jp	.L23
	ucomisd	%xmm0, %xmm0
	jp	.L24
	subsd	%xmm1, %xmm3
	subsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	sqrtsd	%xmm0, %xmm0
	addq	$56, %rsp
	ret
.L21:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC0(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L24:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC3(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L23:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC2(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L22:
	movsd	%xmm0, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC1(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.vector.Angle(): X1 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.vector.Angle(): Y1 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.vector.Angle(): X2 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.vector.Angle(): Y2 must not be NaN\12Params: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector5AngleEdddd
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector5AngleEdddd
_ZN3wze6engine6vector5AngleEdddd:
.LFB8436:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movsd	96(%rsp), %xmm4
	ucomisd	%xmm1, %xmm1
	jp	.L47
	ucomisd	%xmm2, %xmm2
	jp	.L48
	ucomisd	%xmm3, %xmm3
	jp	.L49
	ucomisd	%xmm4, %xmm4
	jp	.L50
	subsd	%xmm1, %xmm3
	comisd	%xmm4, %xmm2
	movapd	%xmm4, %xmm1
	subsd	%xmm2, %xmm1
	movapd	%xmm3, %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	ja	.L51
	call	acos
	mulsd	.LC8(%rip), %xmm0
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	call	acos
	movsd	.LC8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC9(%rip), %xmm0
	subsd	%xmm1, %xmm0
	addq	$56, %rsp
	ret
.L50:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC7(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L49:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC6(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L48:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L47:
	movsd	%xmm4, 32(%rsp)
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.vector.TerminalX(): InitialX must not be NaN\12Params: InitialX: %lf, Length: %lf, Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalXEddd
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector9TerminalXEddd
_ZN3wze6engine6vector9TerminalXEddd:
.LFB8437:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm7
	jp	.L57
	mulsd	.LC11(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	cos
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L57:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.vector.TerminalY(): InitialY must not be NaN\12Params: InitialY: %lf, Length: %lf, Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalYEddd
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6vector9TerminalYEddd
_ZN3wze6engine6vector9TerminalYEddd:
.LFB8438:
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm6
	movapd	%xmm2, %xmm7
	jp	.L63
	mulsd	.LC11(%rip), %xmm3
	movapd	%xmm3, %xmm0
	call	sin
	mulsd	%xmm7, %xmm0
	movaps	48(%rsp), %xmm7
	addsd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	ret
.L63:
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movq	%xmm1, %rdx
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.long	442745336
	.long	1078765020
	.align 8
.LC9:
	.long	0
	.long	1081507840
	.align 8
.LC11:
	.long	-1571644103
	.long	1066524486
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	acos;	.scl	2;	.type	32;	.endef
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
