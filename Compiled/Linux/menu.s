	.file	"menu.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4menuC2EPN3wze6engineEP6assets
	.type	_ZN4menuC2EPN3wze6engineEP6assets, @function
_ZN4menuC2EPN3wze6engineEP6assets:
.LFB8147:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%rsi, %rdi
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rdi
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, 8(%rsp)
	call	_ZN3wze6engine6window8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	xorl	%r8d, %r8d
	shrw	%ax
	movsd	8(%rsp), %xmm1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movzwl	%ax, %eax
	leaq	240(%rbp), %rdi
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm0
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movw	%ax, 16(%rbx)
	movzwl	%ax, %esi
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	xorl	%esi, %esi
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movzwl	16(%rbx), %esi
	movw	%ax, 18(%rbx)
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor6colors3NewEv@PLT
	movzwl	16(%rbx), %esi
	movw	%ax, 20(%rbx)
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	xorl	%esi, %esi
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movzwl	16(%rbx), %esi
	movw	%ax, 22(%rbx)
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor6colors3NewEv@PLT
	movzwl	16(%rbx), %esi
	movw	%ax, 24(%rbx)
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movzwl	16(%rbx), %esi
	movq	%rax, %rbp
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movzwl	18(%rbx), %esi
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy@PLT
	movzwl	16(%rbx), %esi
	movq	%rax, %r13
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movzwl	20(%rbx), %esi
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor6colorsixEy@PLT
	movzwl	16(%rbx), %esi
	movq	%rax, %r14
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movzwl	22(%rbx), %esi
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy@PLT
	movzwl	16(%rbx), %esi
	movq	%rax, %r12
	movq	(%rbx), %rax
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movzwl	24(%rbx), %esi
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor6colorsixEy@PLT
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC1(%rip), %xmm0
	movq	%r13, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd@PLT
	movq	%r13, %rdi
	movl	$250, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movl	$75, %esi
	movq	%r13, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC1(%rip), %xmm0
	movq	%r14, %rdi
	call	_ZN3wze6engine6actors5actor6colors5color4SetYEd@PLT
	movl	.LC2(%rip), %r13d
	movq	%rbp, %rdi
	movl	%r13d, 16(%r14)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC1(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd@PLT
	movq	%r12, %rdi
	movl	$250, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movl	$75, %esi
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC1(%rip), %xmm0
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor6colors5color4SetYEd@PLT
	movl	%r13d, 16(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN4menuC2EPN3wze6engineEP6assets, .-_ZN4menuC2EPN3wze6engineEP6assets
	.globl	_ZN4menuC1EPN3wze6engineEP6assets
	.set	_ZN4menuC1EPN3wze6engineEP6assets,_ZN4menuC2EPN3wze6engineEP6assets
	.align 2
	.p2align 4
	.globl	_ZN4menu6UpdateEv
	.type	_ZN4menu6UpdateEv, @function
_ZN4menu6UpdateEv:
.LFB8149:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN4menu6UpdateEv, .-_ZN4menu6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1079164928
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.value	250
	.value	75
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
