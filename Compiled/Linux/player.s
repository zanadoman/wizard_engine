	.file	"player.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6playerC2EPN3wze6engineEP4gamedddd
	.type	_ZN6playerC2EPN3wze6engineEP4gamedddd, @function
_ZN6playerC2EPN3wze6engineEP4gamedddd:
.LFB8147:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$82, %r8d
	movl	$60, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	leaq	240(%rsi), %rdi
	movl	$1, %edx
	movq	%rbx, %rsi
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movl	$1, %esi
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movl	$125, %esi
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	leaq	48(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movl	$125, %esi
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	leaq	64(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movl	$125, %esi
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	leaq	32(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movq	%rax, 48(%rbx)
	movq	8(%rbx), %rax
	movzwl	82(%rax), %esi
	movq	16(%rbx), %rax
	leaq	40(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	%rax, 56(%rbx)
	movq	8(%rbx), %rax
	movzwl	80(%rax), %esi
	movq	16(%rbx), %rax
	leaq	40(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movsd	8(%rsp), %xmm3
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rdi
	movq	%rax, 64(%rbx)
	cvttsd2sil	%xmm3, %esi
	movups	%xmm0, 72(%rbx)
	movzbl	%sil, %esi
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC0(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor9GetHeightEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC0(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movl	.LC1(%rip), %ebp
	movq	32(%rbx), %r12
	movq	16(%rbx), %rdi
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd@PLT
	movq	40(%rbx), %r12
	movq	16(%rbx), %rdi
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd@PLT
	movq	40(%rbx), %rax
	movq	48(%rbx), %r12
	movq	16(%rbx), %rdi
	movb	$0, 37(%rax)
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd@PLT
	movq	48(%rbx), %rax
	movq	56(%rbx), %r12
	movq	16(%rbx), %rdi
	movb	$0, 37(%rax)
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd@PLT
	movq	56(%rbx), %rax
	movq	64(%rbx), %r12
	movq	16(%rbx), %rdi
	movb	$0, 37(%rax)
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd@PLT
	movq	64(%rbx), %rax
	movb	$0, 37(%rax)
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN6playerC2EPN3wze6engineEP4gamedddd, .-_ZN6playerC2EPN3wze6engineEP4gamedddd
	.globl	_ZN6playerC1EPN3wze6engineEP4gamedddd
	.set	_ZN6playerC1EPN3wze6engineEP4gamedddd,_ZN6playerC2EPN3wze6engineEP4gamedddd
	.align 2
	.p2align 4
	.globl	_ZN6playerD2Ev
	.type	_ZN6playerD2Ev, @function
_ZN6playerD2Ev:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	16(%rdi), %rdi
	leaq	240(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8150:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
.LLSDACSE8150:
	.text
	.size	_ZN6playerD2Ev, .-_ZN6playerD2Ev
	.globl	_ZN6playerD1Ev
	.set	_ZN6playerD1Ev,_ZN6playerD2Ev
	.align 2
	.p2align 4
	.globl	_ZN6player6UpdateEv
	.type	_ZN6player6UpdateEv, @function
_ZN6player6UpdateEv:
.LFB8152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$4, %esi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rax
	leaq	160(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L75
.L7:
	pxor	%xmm0, %xmm0
	comisd	72(%rbx), %xmm0
	movq	(%rbx), %rdi
	ja	.L12
	movsd	.LC6(%rip), %xmm4
	movsd	%xmm4, 8(%rsp)
.L13:
	addq	$160, %rdi
	movl	$7, %esi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L18
.L21:
	movsd	72(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L76
.L23:
	movq	16(%rbx), %rbp
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	(%rbx), %rax
	movsd	72(%rbx), %xmm3
	movsd	%xmm0, 24(%rsp)
	leaq	400(%rax), %rdi
	movsd	%xmm3, 16(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	16(%rsp), %xmm0
	addsd	24(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	(%rbx), %rax
	movl	$44, %esi
	leaq	160(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L33
	pxor	%xmm0, %xmm0
	ucomisd	80(%rbx), %xmm0
	jp	.L33
	jne	.L33
	movq	.LC8(%rip), %rax
	movq	%rax, 80(%rbx)
.L33:
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	80(%rbx), %xmm0
	movq	16(%rbx), %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	8(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rbx)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rax
	movsd	80(%rbx), %xmm6
	movsd	%xmm0, 16(%rsp)
	leaq	400(%rax), %rdi
	movsd	%xmm6, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movsd	16(%rsp), %xmm1
	movq	16(%rbx), %rbp
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	8(%rsp), %xmm0
	movq	%rbp, %rdi
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rax
	movsd	80(%rbx), %xmm7
	movsd	%xmm0, 16(%rsp)
	leaq	400(%rax), %rdi
	movsd	%xmm7, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	8(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetYEd@PLT
	movsd	24(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	movsd	80(%rbx), %xmm0
	jp	.L59
	jne	.L59
.L47:
	pxor	%xmm1, %xmm1
	movq	32(%rbx), %rax
	movq	40(%rbx), %rdx
	comisd	%xmm0, %xmm1
	movq	48(%rbx), %rcx
	movq	56(%rbx), %rsi
	movq	64(%rbx), %rdi
	jbe	.L71
	movb	$0, 37(%rax)
	xorl	%eax, %eax
	movb	$0, 37(%rdx)
	movb	$0, 37(%rcx)
	movb	$1, 37(%rsi)
	movb	$0, 37(%rdi)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	.cfi_restore_state
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	ja	.L77
	comisd	%xmm0, %xmm1
	ja	.L61
.L74:
	movq	32(%rbx), %rax
	movq	40(%rbx), %rdx
	movq	56(%rbx), %rsi
	movq	64(%rbx), %rdi
	movq	48(%rbx), %rcx
.L48:
	pxor	%xmm0, %xmm0
	ucomisd	72(%rbx), %xmm0
	jp	.L54
	jne	.L54
	movb	$1, 37(%rax)
	xorl	%eax, %eax
	movb	$0, 37(%rdx)
	movb	$0, 37(%rcx)
	movb	$0, 37(%rsi)
	movb	$0, 37(%rdi)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	.cfi_restore_state
	comisd	%xmm1, %xmm0
	jbe	.L48
	movb	$0, 37(%rax)
	xorl	%eax, %eax
	movb	$0, 37(%rdx)
	movb	$0, 37(%rcx)
	movb	$0, 37(%rsi)
	movb	$1, 37(%rdi)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	.cfi_restore_state
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC9(%rip), %xmm0
	movsd	%xmm0, 80(%rbx)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L76:
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm2, %xmm2
	movsd	72(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	8(%rsp), %xmm2
	subsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	ja	.L30
	movsd	%xmm1, 72(%rbx)
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L18:
	movq	(%rbx), %rax
	movl	$4, %esi
	leaq	160(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L21
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC5(%rip), %xmm1
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	8(%rsp), %xmm0
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
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L75:
	movq	(%rbx), %rax
	movl	$7, %esi
	leaq	160(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L7
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	72(%rbx), %xmm0
	movq	(%rbx), %rdi
	movl	%eax, %eax
	movsd	.LC6(%rip), %xmm4
	cvtsi2sdq	%rax, %xmm1
	movq	32(%rbx), %rax
	movsd	%xmm4, 8(%rsp)
	mulsd	%xmm4, %xmm1
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
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L12:
	addq	$400, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm5
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm5, 8(%rsp)
	mulsd	%xmm5, %xmm1
	addsd	72(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L78
	movq	$0x000000000, 72(%rbx)
	movq	(%rbx), %rdi
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L61:
	movq	$0x000000000, 80(%rbx)
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L54:
	movb	$0, 37(%rax)
	xorl	%eax, %eax
	movb	$1, 37(%rdx)
	movb	$0, 37(%rcx)
	movb	$0, 37(%rsi)
	movb	$0, 37(%rdi)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	.cfi_restore_state
	movq	(%rbx), %rdi
	movsd	%xmm1, 72(%rbx)
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L30:
	movq	$0x000000000, 72(%rbx)
	jmp	.L23
	.cfi_endproc
.LFE8152:
	.size	_ZN6player6UpdateEv, .-_ZN6player6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-350469331
	.long	1059731170
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.value	132
	.value	128
	.section	.rodata.cst8
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
	.long	-1133871366
	.long	1063818100
	.align 8
.LC8:
	.long	0
	.long	1072955392
	.align 8
.LC9:
	.long	-1133871366
	.long	-1083665548
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
