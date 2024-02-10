	.file	"normal.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6normalC2EPN3wze6engineEP4game
	.type	_ZN6normalC2EPN3wze6engineEP4game, @function
_ZN6normalC2EPN3wze6engineEP4game:
.LFB8147:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	16(%rdi), %rdi
	movq	%rsi, -16(%rdi)
	movq	%rdx, -8(%rdi)
	call	_ZN5pauseC1EPN3wze6engineEP4game@PLT
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
	movq	%rax, 96(%rbx)
	leaq	40(%rax), %rdi
	movzwl	18(%rdx), %esi
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movq	%rax, 104(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN6normalC2EPN3wze6engineEP4game, .-_ZN6normalC2EPN3wze6engineEP4game
	.globl	_ZN6normalC1EPN3wze6engineEP4game
	.set	_ZN6normalC1EPN3wze6engineEP4game,_ZN6normalC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN6normal6UpdateEv
	.type	_ZN6normal6UpdateEv, @function
_ZN6normal6UpdateEv:
.LFB8149:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	addq	$16, %rdi
	call	_ZN5pause6UpdateEv@PLT
	cmpl	$2, %eax
	setne	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN6normal6UpdateEv, .-_ZN6normal6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1717986918
	.long	1069128089
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
