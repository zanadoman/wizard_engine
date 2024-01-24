	.file	"SEVector.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6vectorC2ERS0_
	.type	_ZN4slay6engine6vectorC2ERS0_, @function
_ZN4slay6engine6vectorC2ERS0_:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6vectorC2ERS0_, .-_ZN4slay6engine6vectorC2ERS0_
	.globl	_ZN4slay6engine6vectorC1ERS0_
	.set	_ZN4slay6engine6vectorC1ERS0_,_ZN4slay6engine6vectorC2ERS0_
	.align 2
	.globl	_ZN4slay6engine6vector6LengthEdddd
	.type	_ZN4slay6engine6vector6LengthEdddd, @function
_ZN4slay6engine6vector6LengthEdddd:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	-48(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-56(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine6vector6LengthEdddd, .-_ZN4slay6engine6vector6LengthEdddd
	.align 2
	.globl	_ZN4slay6engine6vector5AngleEdddd
	.type	_ZN4slay6engine6vector5AngleEdddd, @function
_ZN4slay6engine6vector5AngleEdddd:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-32(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm2
	movsd	-32(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	_ZN4slay6engine6vector6LengthEdddd
	movsd	-48(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	acos@PLT
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6vector5AngleEdddd, .-_ZN4slay6engine6vector5AngleEdddd
	.align 2
	.globl	_ZN4slay6engine6vector9TerminalXEddd
	.type	_ZN4slay6engine6vector9TerminalXEddd, @function
_ZN4slay6engine6vector9TerminalXEddd:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	cos@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6vector9TerminalXEddd, .-_ZN4slay6engine6vector9TerminalXEddd
	.align 2
	.globl	_ZN4slay6engine6vector9TerminalYEddd
	.type	_ZN4slay6engine6vector9TerminalYEddd, @function
_ZN4slay6engine6vector9TerminalYEddd:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine6vector9TerminalYEddd, .-_ZN4slay6engine6vector9TerminalYEddd
	.section	.rodata
	.align 8
.LC0:
	.long	442745336
	.long	1078765020
	.align 8
.LC1:
	.long	1256670345
	.long	1069963032
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
