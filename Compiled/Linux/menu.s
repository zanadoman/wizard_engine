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
	.globl	_ZN4menuC2EPN3wze6engineEP4game
	.type	_ZN4menuC2EPN3wze6engineEP4game, @function
_ZN4menuC2EPN3wze6engineEP4game:
.LFB8147:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
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
	movq	8(%rbx), %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rax, 16(%rbx)
	leaq	104(%rax), %rdi
	movzwl	16(%rdx), %edx
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	xorl	%esi, %esi
	movq	%rax, 24(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor6colors3NewEv@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	xorl	%esi, %esi
	movq	%rax, 48(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 56(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor6colors3NewEv@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, 64(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	movq	%rax, 72(%rbx)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC4(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	movq	24(%rbx), %rdi
	movl	$100, %esi
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC5(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd@PLT
	movq	32(%rbx), %rdi
	movl	$250, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movq	32(%rbx), %rdi
	movl	$75, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	40(%rbx), %rbp
	movq	32(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor6colors5color4SetYEd@PLT
	movq	32(%rbx), %rdi
	movq	40(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv@PLT
	movq	32(%rbx), %rdi
	movw	%ax, 16(%rbp)
	movq	40(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv@PLT
	movq	48(%rbx), %rdi
	movl	$30, %esi
	movw	%ax, 18(%rbp)
	movq	40(%rbx), %rax
	movzwl	.LC6(%rip), %ebp
	movb	$-128, 22(%rax)
	movw	%bp, 20(%rax)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	48(%rbx), %r12
	movq	32(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	movq	16(%rbx), %rdi
	movq	56(%rbx), %r12
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC5(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd@PLT
	movq	56(%rbx), %rdi
	movl	$250, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movq	56(%rbx), %rdi
	movl	$75, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	64(%rbx), %r12
	movq	56(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor6colors5color4SetYEd@PLT
	movq	56(%rbx), %rdi
	movq	64(%rbx), %r12
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv@PLT
	movq	56(%rbx), %rdi
	movw	%ax, 16(%r12)
	movq	64(%rbx), %r12
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv@PLT
	movq	72(%rbx), %rdi
	movl	$30, %esi
	movw	%ax, 18(%r12)
	movq	64(%rbx), %rax
	movw	%bp, 20(%rax)
	movb	$-128, 22(%rax)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	56(%rbx), %rdi
	movq	72(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN4menuC2EPN3wze6engineEP4game, .-_ZN4menuC2EPN3wze6engineEP4game
	.globl	_ZN4menuC1EPN3wze6engineEP4game
	.set	_ZN4menuC1EPN3wze6engineEP4game,_ZN4menuC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN4menu6UpdateEv
	.type	_ZN4menu6UpdateEv, @function
_ZN4menu6UpdateEv:
.LFB8149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	andl	$1, %eax
	jne	.L10
	movq	40(%rbp), %rax
	movl	$-32640, %esi
	movw	%si, 20(%rax)
	movb	$-128, 22(%rax)
.L7:
	movq	56(%rbp), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	andl	$1, %eax
	movl	%eax, %ebx
	movq	64(%rbp), %rax
	jne	.L11
	movl	$-32640, %edx
	movb	$-128, 22(%rax)
	movw	%dx, 20(%rax)
.L4:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
	movl	%eax, %ebx
	movq	40(%rbp), %rax
	movl	$24672, %edi
	movw	%di, 20(%rax)
	movb	$96, 22(%rax)
	movq	32(%rbp), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$4, %al
	je	.L7
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L11:
	movl	$24672, %ecx
	movb	$96, 22(%rax)
	movw	%cx, 20(%rax)
	movq	56(%rbp), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	shrl	%eax
	movl	%eax, %ebx
	andl	$2, %ebx
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
