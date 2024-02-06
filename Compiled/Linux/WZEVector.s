	.file	"WZEVector.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vectorC2EPS0_
	.type	_ZN3wze6engine6vectorC2EPS0_, @function
_ZN3wze6engine6vectorC2EPS0_:
.LFB8145:
	.cfi_startproc
	movq	%rsi, (%rdi)
	ret
	.cfi_endproc
.LFE8145:
	.size	_ZN3wze6engine6vectorC2EPS0_, .-_ZN3wze6engine6vectorC2EPS0_
	.globl	_ZN3wze6engine6vectorC1EPS0_
	.set	_ZN3wze6engine6vectorC1EPS0_,_ZN3wze6engine6vectorC2EPS0_
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::engine.vector.Length(): X1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.align 8
.LC1:
	.string	"wze::engine.vector.Length(): Y1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.align 8
.LC2:
	.string	"wze::engine.vector.Length(): X2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.align 8
.LC3:
	.string	"wze::engine.vector.Length(): Y2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector6LengthEdddd
	.type	_ZN3wze6engine6vector6LengthEdddd, @function
_ZN3wze6engine6vector6LengthEdddd:
.LFB8147:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L21
	ucomisd	%xmm1, %xmm1
	jp	.L22
	ucomisd	%xmm2, %xmm2
	jp	.L23
	ucomisd	%xmm3, %xmm3
	jp	.L24
	subsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm3
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	mulsd	%xmm2, %xmm2
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm0
	sqrtsd	%xmm0, %xmm0
	ret
.L21:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L24:
	leaq	.LC3(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L23:
	leaq	.LC2(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	leaq	.LC1(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6vector6LengthEdddd, .-_ZN3wze6engine6vector6LengthEdddd
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.vector.Angle(): X1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine.vector.Angle(): Y1 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.vector.Angle(): X2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.align 8
.LC7:
	.string	"wze::engine.vector.Angle(): Y2 must not be NaN\nParams: X1: %lf, Y1: %lf, X2: %lf, Y2: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector5AngleEdddd
	.type	_ZN3wze6engine6vector5AngleEdddd, @function
_ZN3wze6engine6vector5AngleEdddd:
.LFB8148:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L48
	ucomisd	%xmm1, %xmm1
	jp	.L49
	ucomisd	%xmm2, %xmm2
	jp	.L50
	ucomisd	%xmm3, %xmm3
	jp	.L51
	subsd	%xmm0, %xmm2
	comisd	%xmm3, %xmm1
	movapd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	movapd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm4
	addsd	%xmm4, %xmm0
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	ja	.L52
	call	acos@PLT
	mulsd	.LC8(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	.cfi_restore_state
	call	acos@PLT
	movsd	.LC8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC9(%rip), %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	subsd	%xmm1, %xmm0
	ret
.L51:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L50:
	leaq	.LC6(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
	leaq	.LC5(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L48:
	leaq	.LC4(%rip), %rdi
	movl	$4, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine6vector5AngleEdddd, .-_ZN3wze6engine6vector5AngleEdddd
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.vector.TerminalX(): InitialX must not be NaN\nParams: InitialX: %lf, Length: %lf, Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalXEddd
	.type	_ZN3wze6engine6vector9TerminalXEddd, @function
_ZN3wze6engine6vector9TerminalXEddd:
.LFB8149:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	movsd	%xmm1, (%rsp)
	jp	.L59
	mulsd	.LC11(%rip), %xmm2
	movsd	%xmm0, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	cos@PLT
	mulsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm3
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addsd	%xmm3, %xmm0
	ret
.L59:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6vector9TerminalXEddd, .-_ZN3wze6engine6vector9TerminalXEddd
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.vector.TerminalY(): InitialY must not be NaN\nParams: InitialY: %lf, Length: %lf, Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalYEddd
	.type	_ZN3wze6engine6vector9TerminalYEddd, @function
_ZN3wze6engine6vector9TerminalYEddd:
.LFB8150:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	movsd	%xmm1, (%rsp)
	jp	.L66
	mulsd	.LC11(%rip), %xmm2
	movsd	%xmm0, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	sin@PLT
	mulsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm3
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addsd	%xmm3, %xmm0
	ret
.L66:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6vector9TerminalYEddd, .-_ZN3wze6engine6vector9TerminalYEddd
	.section	.rodata.cst8,"aM",@progbits,8
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
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
