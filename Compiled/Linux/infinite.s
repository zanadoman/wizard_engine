	.file	"infinite.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8infiniteC2EPN3wze6engineEP4game
	.type	_ZN8infiniteC2EPN3wze6engineEP4game, @function
_ZN8infiniteC2EPN3wze6engineEP4game:
.LFB8147:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	leaq	16(%rdi), %rdi
	movq	%rsi, -16(%rdi)
	movq	%rdx, -8(%rdi)
	call	_ZN5pauseC1EPN3wze6engineEP4game@PLT
	leaq	96(%rbx), %rdi
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	_ZN5statsC1EPN3wze6engineEP4game@PLT
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	xorl	%edx, %edx
	movsd	.LC0(%rip), %xmm2
	movl	$10800, %r8d
	movapd	%xmm1, %xmm0
	xorl	%esi, %esi
	leaq	240(%rax), %rdi
	movl	$19200, %ecx
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	movq	%rax, 144(%rbx)
	leaq	40(%rax), %rdi
	movzwl	18(%rdx), %esi
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movq	%rax, 152(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN8infiniteC2EPN3wze6engineEP4game, .-_ZN8infiniteC2EPN3wze6engineEP4game
	.globl	_ZN8infiniteC1EPN3wze6engineEP4game
	.set	_ZN8infiniteC1EPN3wze6engineEP4game,_ZN8infiniteC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN8infinite6UpdateEv
	.type	_ZN8infinite6UpdateEv, @function
_ZN8infinite6UpdateEv:
.LFB8149:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$16, %rdi
	call	_ZN5pause6UpdateEv@PLT
	testl	%eax, %eax
	je	.L8
	cmpl	$2, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	leaq	96(%rbx), %rdi
	call	_ZN5stats6UpdateEv@PLT
	movl	$2, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN8infinite6UpdateEv, .-_ZN8infinite6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1717986918
	.long	1069128089
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
