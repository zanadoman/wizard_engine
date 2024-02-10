	.file	"inifnite.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8infiniteC2EPN3wze6engineEP4game
	.type	_ZN8infiniteC2EPN3wze6engineEP4game, @function
_ZN8infiniteC2EPN3wze6engineEP4game:
.LFB8147:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	pxor	%xmm1, %xmm1
	movsd	.LC0(%rip), %xmm2
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movl	$10800, %r8d
	movl	$19200, %ecx
	movapd	%xmm1, %xmm0
	movq	%rdx, 8(%rdi)
	leaq	240(%rsi), %rdi
	movl	$1, %edx
	xorl	%esi, %esi
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	movq	%rax, 16(%rbx)
	leaq	40(%rax), %rdi
	movzwl	18(%rdx), %esi
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movq	%rax, 24(%rbx)
	popq	%rbx
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
	movl	$2, %eax
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
