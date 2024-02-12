	.file	"menu.cpp"
	.text
	.section .rdata,"dr"
.LC1:
	.ascii "Wizard Engine Demo\0"
.LC2:
	.ascii "Normal Mode\0"
.LC3:
	.ascii "Infinite Mode\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4menuC2EPN3wze6engineEP4game
	.def	_ZN4menuC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4menuC2EPN3wze6engineEP4game
_ZN4menuC2EPN3wze6engineEP4game:
.LFB6889:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	pxor	%xmm6, %xmm6
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, 8(%rcx)
	movq	%rdx, %rcx
	call	_ZN3wze6engine6window9GetHeightEv
	movq	(%rbx), %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6window8GetWidthEv
	pxor	%xmm3, %xmm3
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	shrw	%ax
	movl	$0, 48(%rsp)
	leaq	240(%rsi), %rcx
	movzwl	%ax, %eax
	movl	$0, 40(%rsp)
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm6, 32(%rsp)
	movq	$0x000000000, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	8(%rbx), %rdx
	movq	%rax, 16(%rbx)
	leaq	104(%rax), %rcx
	movzwl	16(%rdx), %r8d
	leaq	.LC1(%rip), %rdx
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	xorl	%edx, %edx
	movq	%rax, 24(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rcx
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	movq	16(%rbx), %rdi
	leaq	.LC2(%rip), %rdx
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rdi), %rcx
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	xorl	%edx, %edx
	movq	%rax, 48(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 56(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rcx
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	movq	16(%rbx), %rdi
	leaq	.LC3(%rip), %rdx
	movq	%rax, 64(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rdi), %rcx
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	movq	%rax, 72(%rbx)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC4(%rip), %xmm1
	movq	%rsi, %rcx
	addsd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	movq	24(%rbx), %rcx
	movl	$100, %edx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	16(%rbx), %rcx
	movq	32(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC5(%rip), %xmm6
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	movq	32(%rbx), %rcx
	movl	$250, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	32(%rbx), %rcx
	movl	$75, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	movq	32(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
	movq	32(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	movq	32(%rbx), %rcx
	movw	%ax, 16(%rsi)
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	movq	48(%rbx), %rcx
	movl	$30, %edx
	movw	%ax, 18(%rsi)
	movq	40(%rbx), %rax
	movzwl	.LC6(%rip), %esi
	movb	$-128, 22(%rax)
	movw	%si, 20(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	32(%rbx), %rcx
	movq	48(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	movq	16(%rbx), %rcx
	movq	56(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	subsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	movq	56(%rbx), %rcx
	movl	$250, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	56(%rbx), %rcx
	movl	$75, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	movq	56(%rbx), %rcx
	movq	64(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
	movq	56(%rbx), %rcx
	movq	64(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	movq	56(%rbx), %rcx
	movw	%ax, 16(%rdi)
	movq	64(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	movq	72(%rbx), %rcx
	movl	$30, %edx
	movw	%ax, 18(%rdi)
	movq	64(%rbx), %rax
	movw	%si, 20(%rax)
	movb	$-128, 22(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	56(%rbx), %rcx
	movq	72(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	nop
	movaps	64(%rsp), %xmm6
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	.seh_endproc
	.globl	_ZN4menuC1EPN3wze6engineEP4game
	.def	_ZN4menuC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN4menuC1EPN3wze6engineEP4game,_ZN4menuC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN4menuD2Ev
	.def	_ZN4menuD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4menuD2Ev
_ZN4menuD2Ev:
.LFB6892:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN4menuD1Ev
	.def	_ZN4menuD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4menuD1Ev,_ZN4menuD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4menu6UpdateEv
	.def	_ZN4menu6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4menu6UpdateEv
_ZN4menu6UpdateEv:
.LFB6894:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movq	32(%rcx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	testb	$1, %al
	movq	40(%rbx), %rax
	je	.L5
	movl	$24672, %ecx
	movb	$96, 22(%rax)
	movw	%cx, 20(%rax)
	movq	32(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	shrl	$2, %eax
	andl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	movzwl	.LC6(%rip), %esi
	movb	$-128, 22(%rax)
	movw	%si, 20(%rax)
	movq	56(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	andl	$1, %eax
	jne	.L8
	movq	64(%rbx), %rdx
	movw	%si, 20(%rdx)
	movb	$-128, 22(%rdx)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movq	64(%rbx), %rax
	movl	$24672, %edx
	movw	%dx, 20(%rax)
	movb	$96, 22(%rax)
	movq	56(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	shrl	%eax
	andl	$2, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1081466880
	.align 8
.LC5:
	.long	0
	.long	1079164928
	.align 2
.LC6:
	.byte	-128
	.byte	-128
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6window9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor10colorboxes3NewEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv;	.scl	2;	.type	32;	.endef
