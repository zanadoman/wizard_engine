	.file	"WZEVector.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vectorC2EPS0_
	.type	_ZN3wze6engine6vectorC2EPS0_, @function
_ZN3wze6engine6vectorC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	%rsi, (%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN3wze6engine6vectorC2EPS0_, .-_ZN3wze6engine6vectorC2EPS0_
	.globl	_ZN3wze6engine6vectorC1EPS0_
	.set	_ZN3wze6engine6vectorC1EPS0_,_ZN3wze6engine6vectorC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector6LengthEdddd
	.type	_ZN3wze6engine6vector6LengthEdddd, @function
_ZN3wze6engine6vector6LengthEdddd:
.LFB2234:
	.cfi_startproc
	subsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm2
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm0
	sqrtsd	%xmm0, %xmm0
	ret
	.cfi_endproc
.LFE2234:
	.size	_ZN3wze6engine6vector6LengthEdddd, .-_ZN3wze6engine6vector6LengthEdddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector5AngleEdddd
	.type	_ZN3wze6engine6vector5AngleEdddd, @function
_ZN3wze6engine6vector5AngleEdddd:
.LFB2235:
	.cfi_startproc
	subsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm3
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	mulsd	%xmm3, %xmm3
	movapd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	call	acos@PLT
	mulsd	.LC0(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2235:
	.size	_ZN3wze6engine6vector5AngleEdddd, .-_ZN3wze6engine6vector5AngleEdddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalXEddd
	.type	_ZN3wze6engine6vector9TerminalXEddd, @function
_ZN3wze6engine6vector9TerminalXEddd:
.LFB2236:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	mulsd	.LC1(%rip), %xmm2
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	cos@PLT
	mulsd	8(%rsp), %xmm0
	addsd	(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2236:
	.size	_ZN3wze6engine6vector9TerminalXEddd, .-_ZN3wze6engine6vector9TerminalXEddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalYEddd
	.type	_ZN3wze6engine6vector9TerminalYEddd, @function
_ZN3wze6engine6vector9TerminalYEddd:
.LFB2237:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	mulsd	.LC1(%rip), %xmm2
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	movapd	%xmm2, %xmm0
	call	sin@PLT
	mulsd	8(%rsp), %xmm0
	addsd	(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZN3wze6engine6vector9TerminalYEddd, .-_ZN3wze6engine6vector9TerminalYEddd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	442745336
	.long	1078765020
	.align 8
.LC1:
	.long	-1571644103
	.long	1066524486
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
