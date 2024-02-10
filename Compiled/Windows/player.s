	.file	"player.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6playerC2EPN3wze6engineEP4gamedddd
	.def	_ZN6playerC2EPN3wze6engineEP4gamedddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6playerC2EPN3wze6engineEP4gamedddd
_ZN6playerC2EPN3wze6engineEP4gamedddd:
.LFB6880:
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
	movsd	152(%rsp), %xmm0
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	leaq	240(%rdx), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdx
	movsd	%xmm0, 56(%rsp)
	movsd	144(%rsp), %xmm0
	movl	$82, 48(%rsp)
	movl	$60, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movl	$1, %edx
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	16(%rbx), %rsi
	movl	$100, %edx
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	48(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	16(%rbx), %rsi
	movl	$100, %edx
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	64(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	16(%rbx), %rsi
	movl	$100, %edx
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	leaq	72(%rsi), %rcx
	leaq	32(%rax), %r8
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, 48(%rbx)
	movq	8(%rbx), %rax
	movzwl	82(%rax), %edx
	movq	16(%rbx), %rax
	leaq	40(%rax), %rcx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movq	%rax, 56(%rbx)
	movq	8(%rbx), %rax
	movzwl	80(%rax), %edx
	movq	16(%rbx), %rax
	leaq	40(%rax), %rcx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rcx
	cvttsd2sil	160(%rsp), %edx
	movq	%rax, 64(%rbx)
	movups	%xmm0, 72(%rbx)
	movzbl	%dl, %edx
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor8GetWidthEv
	pxor	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm6
	movq	%rsi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm6, %xmm0
	cvttsd2sil	%xmm0, %edx
	movzwl	%dx, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor9GetHeightEv
	pxor	%xmm0, %xmm0
	movq	%rsi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm6, %xmm0
	cvttsd2sil	%xmm0, %edx
	movzwl	%dx, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	movl	.LC1(%rip), %esi
	movq	32(%rbx), %rdi
	movq	16(%rbx), %rcx
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC2(%rip), %xmm6
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	movq	40(%rbx), %rdi
	movq	16(%rbx), %rcx
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	movq	40(%rbx), %rax
	movq	48(%rbx), %rdi
	movq	16(%rbx), %rcx
	movb	$0, 37(%rax)
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	movq	48(%rbx), %rax
	movq	56(%rbx), %rdi
	movq	16(%rbx), %rcx
	movb	$0, 37(%rax)
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor8textures7texture4SetYEd
	movq	56(%rbx), %rax
	movq	64(%rbx), %rdi
	movq	16(%rbx), %rcx
	movb	$0, 37(%rax)
	movl	%esi, 16(%rdi)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor8textures7texture4SetYEd
	movq	64(%rbx), %rax
	movb	$0, 37(%rax)
	movaps	64(%rsp), %xmm6
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.globl	_ZN6playerC1EPN3wze6engineEP4gamedddd
	.def	_ZN6playerC1EPN3wze6engineEP4gamedddd;	.scl	2;	.type	32;	.endef
	.set	_ZN6playerC1EPN3wze6engineEP4gamedddd,_ZN6playerC2EPN3wze6engineEP4gamedddd
	.align 2
	.p2align 4
	.globl	_ZN6player6UpdateEv
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6player6UpdateEv
_ZN6player6UpdateEv:
.LFB6882:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	movl	$4, %edx
	movq	(%rcx), %rax
	movq	%rcx, %rbx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	movq	(%rbx), %rcx
	testb	%al, %al
	jne	.L70
.L4:
	pxor	%xmm6, %xmm6
	comisd	72(%rbx), %xmm6
	ja	.L71
.L10:
	addq	$160, %rcx
	movl	$7, %edx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L15
.L18:
	movsd	72(%rbx), %xmm0
	pxor	%xmm6, %xmm6
	comisd	%xmm6, %xmm0
	ja	.L72
.L20:
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	16(%rbx), %rsi
	movapd	%xmm0, %xmm7
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	(%rbx), %rax
	movsd	72(%rbx), %xmm8
	movapd	%xmm0, %xmm6
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm8, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	ucomisd	%xmm0, %xmm7
	jp	.L30
	jne	.L30
	movq	$0x000000000, 72(%rbx)
.L30:
	movq	(%rbx), %rax
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movsd	80(%rbx), %xmm0
	movq	16(%rbx), %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC8(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rbx)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	16(%rbx), %rsi
	movapd	%xmm0, %xmm6
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	(%rbx), %rax
	movsd	80(%rbx), %xmm9
	movapd	%xmm0, %xmm8
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm9, %xmm1
	addsd	%xmm8, %xmm1
	call	_ZN3wze6engine6actors5actor4SetYEd
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	(%rbx), %rcx
	ucomisd	%xmm0, %xmm6
	jp	.L36
	jne	.L36
	movsd	80(%rbx), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	ja	.L73
	comisd	%xmm0, %xmm1
	ja	.L74
.L36:
	addq	$160, %rcx
	movl	$44, %edx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L43
	pxor	%xmm0, %xmm0
	ucomisd	80(%rbx), %xmm0
	jp	.L43
	jne	.L43
	movq	.LC10(%rip), %rax
	movq	%rax, 80(%rbx)
.L43:
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC11(%rip), %xmm1
	movapd	%xmm6, %xmm2
	subsd	%xmm1, %xmm2
	comisd	%xmm0, %xmm2
	jbe	.L67
	movq	32(%rbx), %rax
	movb	$0, 37(%rax)
	movq	40(%rbx), %rax
	movb	$0, 37(%rax)
	movq	48(%rbx), %rax
	movb	$0, 37(%rax)
	movq	56(%rbx), %rax
	movb	$1, 37(%rax)
	movq	64(%rbx), %rax
	movb	$0, 37(%rax)
.L47:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L73:
	addq	$400, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm0, %xmm0
	movq	(%rbx), %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC9(%rip), %xmm0
	movsd	%xmm0, 80(%rbx)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L72:
	movq	(%rbx), %rax
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movsd	72(%rbx), %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm0, %xmm6
	ja	.L27
	movsd	%xmm0, 72(%rbx)
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L15:
	movq	(%rbx), %rax
	movl	$4, %edx
	leaq	160(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L18
	movq	(%rbx), %rax
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm1
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC6(%rip), %xmm0
	movq	32(%rbx), %rax
	addsd	72(%rbx), %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rbx)
	movb	$0, 32(%rax)
	movq	40(%rbx), %rax
	movb	$0, 32(%rax)
	movq	56(%rbx), %rax
	movb	$0, 32(%rax)
	movq	64(%rbx), %rax
	movb	$0, 32(%rax)
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L70:
	addq	$160, %rcx
	movl	$7, %edx
	call	_ZN3wze6engine4keysixENS_3keyE
	movq	(%rbx), %rcx
	testb	%al, %al
	jne	.L4
	addq	$400, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm1, %xmm1
	movsd	72(%rbx), %xmm0
	movq	(%rbx), %rcx
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC6(%rip), %xmm1
	movq	32(%rbx), %rax
	subsd	%xmm1, %xmm0
	movsd	.LC4(%rip), %xmm1
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rbx)
	movb	$1, 32(%rax)
	movq	40(%rbx), %rax
	movb	$1, 32(%rax)
	movq	56(%rbx), %rax
	movb	$1, 32(%rax)
	movq	64(%rbx), %rax
	movb	$1, 32(%rax)
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L67:
	addsd	%xmm1, %xmm6
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	comisd	%xmm6, %xmm0
	jbe	.L68
	movq	32(%rbx), %rax
	movb	$0, 37(%rax)
	movq	40(%rbx), %rax
	movb	$0, 37(%rax)
	movq	48(%rbx), %rax
	movb	$0, 37(%rax)
	movq	56(%rbx), %rax
	movb	$0, 37(%rax)
	movq	64(%rbx), %rax
	movb	$1, 37(%rax)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L71:
	addq	$400, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC6(%rip), %xmm0
	addsd	72(%rbx), %xmm0
	comisd	%xmm6, %xmm0
	jbe	.L75
	movq	$0x000000000, 72(%rbx)
	movq	(%rbx), %rcx
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L74:
	movq	$0x000000000, 80(%rbx)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L75:
	movq	(%rbx), %rcx
	movsd	%xmm0, 72(%rbx)
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L27:
	movq	$0x000000000, 72(%rbx)
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L68:
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	comisd	%xmm0, %xmm7
	jbe	.L69
	movq	32(%rbx), %r9
	movq	40(%rbx), %r8
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rax
	movq	48(%rbx), %rcx
.L50:
	movb	$0, 37(%r9)
	movb	$1, 37(%r8)
	movb	$0, 37(%rcx)
	movb	$0, 37(%rdx)
	movb	$0, 37(%rax)
	jmp	.L47
.L69:
	movq	16(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	32(%rbx), %r9
	movq	40(%rbx), %r8
	comisd	%xmm7, %xmm0
	movq	48(%rbx), %rcx
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rax
	ja	.L50
	movb	$1, 37(%r9)
	movb	$0, 37(%r8)
	movb	$0, 37(%rcx)
	movb	$0, 37(%rdx)
	movb	$0, 37(%rax)
	jmp	.L47
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-350469331
	.long	1059731170
	.align 4
.LC1:
	.word	132
	.word	128
	.align 8
.LC2:
	.long	0
	.long	1077280768
	.align 8
.LC4:
	.long	0
	.long	-1075838976
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	-755914244
	.long	1064329805
	.align 8
.LC8:
	.long	-1133871366
	.long	1063818100
	.align 8
.LC9:
	.long	-755914244
	.long	-1083153843
	.align 8
.LC10:
	.long	0
	.long	1072955392
	.align 8
.LC11:
	.long	-350469331
	.long	1058682594
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures7texture4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
