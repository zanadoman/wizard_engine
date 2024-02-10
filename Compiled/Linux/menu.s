	.file	"menu.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Wizard Engine Demo"
.LC2:
	.string	"Normal Mode"
.LC3:
	.string	"Infinite Mode"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4menuC2EPN3wze6engineEP6assets
	.type	_ZN4menuC2EPN3wze6engineEP6assets, @function
_ZN4menuC2EPN3wze6engineEP6assets:
.LFB8147:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
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
	leaq	.LC1(%rip), %rsi
	movq	%rax, %r13
	leaq	104(%rax), %r15
	movq	8(%rbx), %rax
	movq	%r15, %rdi
	leaq	136(%r13), %rbp
	leaq	8(%r13), %r14
	movzwl	8(%rax), %edx
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movw	%ax, 18(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%r14, %rdi
	movw	%ax, 20(%rbx)
	call	_ZN3wze6engine6actors5actor6colors3NewEv@PLT
	movq	%r15, %rdi
	leaq	.LC2(%rip), %rsi
	movw	%ax, 22(%rbx)
	movq	8(%rbx), %rax
	movzwl	8(%rax), %edx
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movw	%ax, 24(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%r14, %rdi
	movw	%ax, 26(%rbx)
	call	_ZN3wze6engine6actors5actor6colors3NewEv@PLT
	movq	%r15, %rdi
	leaq	.LC3(%rip), %rsi
	movw	%ax, 28(%rbx)
	movq	8(%rbx), %rax
	movzwl	8(%rax), %edx
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	movzwl	18(%rbx), %esi
	movq	%r15, %rdi
	movq	%r15, 8(%rsp)
	movw	%ax, 30(%rbx)
	call	_ZN3wze6engine6actors5actor5textsixEy@PLT
	movzwl	20(%rbx), %esi
	movq	%rbp, %rdi
	movq	%rax, 16(%rsp)
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy@PLT
	movzwl	22(%rbx), %esi
	movq	%r14, %rdi
	movq	%rax, %r12
	call	_ZN3wze6engine6actors5actor6colorsixEy@PLT
	movzwl	24(%rbx), %esi
	movq	8(%rsp), %rdi
	movq	%rax, %r15
	call	_ZN3wze6engine6actors5actor5textsixEy@PLT
	movzwl	26(%rbx), %esi
	movq	%rbp, %rdi
	movq	%rax, 24(%rsp)
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy@PLT
	movzwl	28(%rbx), %esi
	movq	%r14, %rdi
	movq	%rax, %rbp
	call	_ZN3wze6engine6actors5actor6colorsixEy@PLT
	movzwl	30(%rbx), %esi
	movq	8(%rsp), %rdi
	movq	%rax, %r14
	call	_ZN3wze6engine6actors5actor5textsixEy@PLT
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC4(%rip), %xmm0
	movq	16(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	movq	16(%rsp), %rdi
	movl	$100, %esi
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	%r13, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC5(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd@PLT
	movq	%r12, %rdi
	movl	$250, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movl	$75, %esi
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	movq	%r15, %rdi
	call	_ZN3wze6engine6actors5actor6colors5color4SetYEd@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv@PLT
	movq	%r12, %rdi
	movw	%ax, 16(%r15)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv@PLT
	movb	$-128, 22(%r15)
	movl	$30, %esi
	movzwl	.LC6(%rip), %edx
	movw	%ax, 18(%r15)
	movw	%dx, 20(%r15)
	movq	24(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	movq	%r15, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	movq	%r13, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC5(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd@PLT
	movq	%rbp, %rdi
	movl	$250, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movl	$75, %esi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	movq	%r14, %rdi
	call	_ZN3wze6engine6actors5actor6colors5color4SetYEd@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv@PLT
	movq	%rbp, %rdi
	movw	%ax, 16(%r14)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv@PLT
	movzwl	.LC6(%rip), %edx
	movb	$-128, 22(%r14)
	movq	%rbx, %rdi
	movw	%ax, 18(%r14)
	movl	$30, %esi
	movw	%dx, 20(%r14)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
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
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movzwl	16(%rdi), %esi
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movzwl	20(%rbx), %esi
	leaq	136(%rax), %r12
	movq	%rax, %rbp
	movq	%r12, %rdi
	addq	$8, %rbp
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy@PLT
	movzwl	22(%rbx), %esi
	movq	%rbp, %rdi
	movq	%rax, %r13
	call	_ZN3wze6engine6actors5actor6colorsixEy@PLT
	movzwl	26(%rbx), %esi
	movq	%r12, %rdi
	movq	%rax, %r14
	call	_ZN3wze6engine6actors5actor12overlapboxesixEy@PLT
	movzwl	28(%rbx), %esi
	movq	%rbp, %rdi
	movq	%rax, %r12
	call	_ZN3wze6engine6actors5actor6colorsixEy@PLT
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	movq	%r12, %rdi
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$32, %edx
	addl	$96, %edx
	movb	%dl, 20(%r14)
	movb	%dl, 21(%r14)
	movb	%dl, 22(%r14)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	%edx, %edx
	xorl	%eax, %eax
	andl	$32, %edx
	addl	$96, %edx
	movb	%dl, 20(%rbx)
	movb	%dl, 21(%rbx)
	movb	%dl, 22(%rbx)
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
.LFE8149:
	.size	_ZN4menu6UpdateEv, .-_ZN4menu6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	0
	.long	1081466880
	.align 8
.LC5:
	.long	0
	.long	1079164928
	.section	.rodata.cst2,"aM",@progbits,2
	.align 2
.LC6:
	.byte	-128
	.byte	-128
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
