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
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector6LengthEdddd
	.type	_ZN3wze6engine6vector6LengthEdddd, @function
_ZN3wze6engine6vector6LengthEdddd:
.LFB8147:
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
.LFE8147:
	.size	_ZN3wze6engine6vector6LengthEdddd, .-_ZN3wze6engine6vector6LengthEdddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector5AngleEdddd
	.type	_ZN3wze6engine6vector5AngleEdddd, @function
_ZN3wze6engine6vector5AngleEdddd:
.LFB8148:
	.cfi_startproc
	subsd	%xmm0, %xmm2
	movapd	%xmm3, %xmm4
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	subsd	%xmm1, %xmm4
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm1, (%rsp)
	movapd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	%xmm4, %xmm4
	addsd	%xmm4, %xmm0
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	call	acos@PLT
	movsd	(%rsp), %xmm1
	movsd	8(%rsp), %xmm3
	mulsd	.LC0(%rip), %xmm0
	comisd	%xmm1, %xmm3
	jbe	.L4
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
.L4:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine6vector5AngleEdddd, .-_ZN3wze6engine6vector5AngleEdddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalXEddd
	.type	_ZN3wze6engine6vector9TerminalXEddd, @function
_ZN3wze6engine6vector9TerminalXEddd:
.LFB8149:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	mulsd	.LC2(%rip), %xmm2
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
.LFE8149:
	.size	_ZN3wze6engine6vector9TerminalXEddd, .-_ZN3wze6engine6vector9TerminalXEddd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6vector9TerminalYEddd
	.type	_ZN3wze6engine6vector9TerminalYEddd, @function
_ZN3wze6engine6vector9TerminalYEddd:
.LFB8150:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	mulsd	.LC2(%rip), %xmm2
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
.LFE8150:
	.size	_ZN3wze6engine6vector9TerminalYEddd, .-_ZN3wze6engine6vector9TerminalYEddd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	442745336
	.long	1078765020
	.align 8
.LC1:
	.long	0
	.long	1081507840
	.align 8
.LC2:
	.long	-1571644103
	.long	1066524486
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
