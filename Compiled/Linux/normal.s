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
	pxor	%xmm1, %xmm1
	movsd	.LC0(%rip), %xmm2
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movapd	%xmm1, %xmm0
	movq	%rdx, 8(%rdi)
	leaq	240(%rsi), %rdi
	movl	$1, %edx
	xorl	%esi, %esi
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	%rax, 16(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN6normalC2EPN3wze6engineEP4game, .-_ZN6normalC2EPN3wze6engineEP4game
	.globl	_ZN6normalC1EPN3wze6engineEP4game
	.set	_ZN6normalC1EPN3wze6engineEP4game,_ZN6normalC2EPN3wze6engineEP4game
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
