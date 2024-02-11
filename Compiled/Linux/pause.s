	.file	"pause.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Resume"
.LC2:
	.string	"Menu"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5pauseC2EPN3wze6engineEP4game
	.type	_ZN5pauseC2EPN3wze6engineEP4game, @function
_ZN5pauseC2EPN3wze6engineEP4game:
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
	xorl	%esi, %esi
	leaq	240(%rbp), %rdi
	cvtsi2sdl	%eax, %xmm0
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	%rax, 16(%rbx)
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv@PLT
	xorl	%esi, %esi
	movq	%rax, 24(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy@PLT
	xorl	%esi, %esi
	movq	%rax, 48(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 56(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rdi
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, 64(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy@PLT
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rbp
	movabsq	$-4309891860637679266, %rcx
	movq	%rax, 72(%rbx)
	movq	24(%rbx), %rax
	movb	$0, 168(%rdi)
	movq	%rcx, 16(%rax)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC3(%rip), %xmm0
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
	call	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd@PLT
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
	movzwl	.LC4(%rip), %ebp
	movb	$-128, 22(%rax)
	movw	%bp, 20(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt@PLT
	movq	48(%rbx), %r12
	movq	32(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd@PLT
	movq	16(%rbx), %rdi
	movq	56(%rbx), %r12
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC3(%rip), %xmm0
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
	call	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd@PLT
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
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt@PLT
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
	jmp	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN5pauseC2EPN3wze6engineEP4game, .-_ZN5pauseC2EPN3wze6engineEP4game
	.globl	_ZN5pauseC1EPN3wze6engineEP4game
	.set	_ZN5pauseC1EPN3wze6engineEP4game,_ZN5pauseC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN5pause6UpdateEv
	.type	_ZN5pause6UpdateEv, @function
_ZN5pause6UpdateEv:
.LFB8149:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movl	$41, %esi
	leaq	160(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	movq	16(%rbx), %rax
	jne	.L18
	cmpb	$0, 168(%rax)
	jne	.L7
	xorl	%eax, %eax
.L4:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	movq	32(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$1, %al
	movq	40(%rbx), %rax
	jne	.L19
	movl	$-32640, %esi
	movb	$-128, 22(%rax)
	movw	%si, 20(%rax)
.L10:
	movq	56(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$1, %al
	movq	64(%rbx), %rax
	je	.L12
	movl	$24672, %ecx
	movb	$96, 22(%rax)
	movw	%cx, 20(%rax)
	movq	56(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	movl	%eax, %edx
	movl	$2, %eax
	andl	$4, %edx
	je	.L6
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
	movb	$1, 168(%rax)
.L6:
	movl	$1, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	movl	$24672, %edi
	movb	$96, 22(%rax)
	movw	%di, 20(%rax)
	movq	32(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$4, %al
	je	.L10
	movq	16(%rbx), %rax
	movb	$0, 168(%rax)
	xorl	%eax, %eax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$-32640, %edx
	movb	$-128, 22(%rax)
	movw	%dx, 20(%rax)
	jmp	.L6
	.cfi_endproc
.LFE8149:
	.size	_ZN5pause6UpdateEv, .-_ZN5pause6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1079164928
	.section	.rodata.cst2,"aM",@progbits,2
	.align 2
.LC4:
	.byte	-128
	.byte	-128
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
