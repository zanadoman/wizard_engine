	.file	"player.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN6playerC2EPN3wze6engineEP4gamedddd
	.type	_ZN6playerC2EPN3wze6engineEP4gamedddd, @function
_ZN6playerC2EPN3wze6engineEP4gamedddd:
.LFB8147:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8147
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$82, %r8d
	movl	$60, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%xmm3, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	$1, %edx
	movq	$0, 88(%rdi)
	movq	$0, 96(%rdi)
	leaq	240(%rsi), %rdi
	movq	%rbx, %rsi
.LEHB0:
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rdi
	movl	$1, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	movl	$125, %esi
	leaq	48(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	movl	$125, %esi
	leaq	64(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	movl	$125, %esi
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
	movq	%rbp, %xmm4
	movq	%rax, 64(%rbx)
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rdi
	cvttsd2sil	%xmm4, %esi
	movups	%xmm0, 72(%rbx)
	movzbl	%sil, %esi
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor8GetWidthEv@PLT
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC0(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor9GetHeightEv@PLT
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC0(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
	movq	32(%rbx), %r12
	movl	.LC1(%rip), %ebp
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
.LEHE0:
	movq	64(%rbx), %rax
	movb	$0, 37(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L3:
	.cfi_restore_state
	movq	%rax, %rbp
	jmp	.L2
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8147-.LLSDACSB8147
.LLSDACSB8147:
	.uleb128 .LEHB0-.LFB8147
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L3-.LFB8147
	.uleb128 0
.LLSDACSE8147:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8147
	.type	_ZN6playerC2EPN3wze6engineEP4gamedddd.cold, @function
_ZN6playerC2EPN3wze6engineEP4gamedddd.cold:
.LFSB8147:
.L2:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	96(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE8147:
	.section	.gcc_except_table
.LLSDAC8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8147-.LLSDACSBC8147
.LLSDACSBC8147:
	.uleb128 .LEHB1-.LCOLDB4
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8147:
	.section	.text.unlikely
	.text
	.size	_ZN6playerC2EPN3wze6engineEP4gamedddd, .-_ZN6playerC2EPN3wze6engineEP4gamedddd
	.section	.text.unlikely
	.size	_ZN6playerC2EPN3wze6engineEP4gamedddd.cold, .-_ZN6playerC2EPN3wze6engineEP4gamedddd.cold
.LCOLDE4:
	.text
.LHOTE4:
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	88(%rdi), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	jne	.L15
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L16:
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	_ZN6bulletD1Ev@PLT
	movl	$56, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	88(%r12), %rax
	cmpq	%rax, %rbx
	jnb	.L11
.L15:
	movq	96(%r12), %rdx
.L8:
	movq	(%rdx,%rbx,8), %rbp
	testq	%rbp, %rbp
	jne	.L16
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L8
.L11:
	movq	(%r12), %rax
	movq	16(%r12), %rdi
	leaq	240(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	movq	96(%r12), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC12:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC13:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC14:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC15:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.p2align 4
	.globl	_ZN6player6UpdateEv
	.type	_ZN6player6UpdateEv, @function
_ZN6player6UpdateEv:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$4, %esi
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	movq	(%rdi), %rax
	leaq	160(%rax), %rdi
.LEHB2:
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L110
.L18:
	pxor	%xmm0, %xmm0
	comisd	72(%rbx), %xmm0
	movq	(%rbx), %rdi
	ja	.L23
	movsd	.LC7(%rip), %xmm5
	movsd	%xmm5, 8(%rsp)
.L24:
	addq	$160, %rdi
	movl	$7, %esi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L29
.L32:
	movsd	72(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L111
.L34:
	movq	16(%rbx), %rbp
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	(%rbx), %rax
	movsd	72(%rbx), %xmm5
	movsd	%xmm0, 24(%rsp)
	leaq	400(%rax), %rdi
	movsd	%xmm5, 16(%rsp)
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
	je	.L44
	pxor	%xmm0, %xmm0
	ucomisd	80(%rbx), %xmm0
	jp	.L44
	jne	.L44
	movq	.LC9(%rip), %rax
	movq	%rax, 80(%rbx)
.L44:
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
	movsd	80(%rbx), %xmm3
	movsd	%xmm0, 16(%rsp)
	leaq	400(%rax), %rdi
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movsd	16(%rsp), %xmm4
	movq	16(%rbx), %r12
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	8(%rsp), %xmm0
	movq	%r12, %rdi
	addsd	%xmm0, %xmm4
	movq	%xmm4, %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rax
	movsd	80(%rbx), %xmm7
	movsd	%xmm0, 16(%rsp)
	leaq	400(%rax), %rdi
	movsd	%xmm7, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	8(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetYEd@PLT
	movq	%rbp, %xmm4
	ucomisd	%xmm0, %xmm4
	jp	.L86
	jne	.L86
.L109:
	movq	(%rbx), %rdi
.L52:
	addq	$160, %rdi
	movl	$232, %esi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L112
.L59:
	xorl	%ebp, %ebp
	cmpq	$0, 88(%rbx)
	jne	.L61
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L64:
	addq	$1, %rbp
	cmpq	88(%rbx), %rbp
	jnb	.L74
.L61:
	movq	96(%rbx), %rax
	leaq	0(,%rbp,8), %r12
	movq	(%rax,%rbp,8), %rdi
	call	_ZN6bullet6UpdateEv@PLT
	testb	%al, %al
	je	.L64
	movq	88(%rbx), %rax
	movq	96(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L113
	movq	(%rdx,%r12), %r13
	testq	%r13, %r13
	je	.L66
	movq	%r13, %rdi
	call	_ZN6bulletD1Ev@PLT
	movl	$56, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	88(%rbx), %rax
	cmpq	%rax, %rbp
	jnb	.L114
.L66:
	leaq	1(%rbp), %r13
	cmpq	%r13, %rax
	jb	.L115
	leaq	-1(%rax), %r14
	movq	96(%rbx), %r15
	movq	%r14, 88(%rbx)
	testq	%r14, %r14
	je	.L68
	cmpq	%r14, %rbp
	jnb	.L73
	subq	%rbp, %rax
	leaq	8(%r15,%r12), %rsi
	leaq	(%r15,%r12), %rdi
	leaq	-8(,%rax,8), %rdx
	call	memmove@PLT
.L73:
	leaq	0(,%r14,8), %rsi
	movq	%r15, %rdi
	call	realloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	je	.L116
.L71:
	movq	%r13, %rbp
	cmpq	88(%rbx), %rbp
	jb	.L61
	.p2align 4,,10
	.p2align 3
.L74:
	movsd	80(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	movq	32(%rbx), %rdi
	movq	40(%rbx), %rsi
	movq	48(%rbx), %rcx
	comisd	%xmm1, %xmm0
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rax
	ja	.L117
	comisd	%xmm0, %xmm1
	jbe	.L118
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	movl	$1, %r8d
.L62:
	movb	%r11b, 37(%rdi)
	movb	%r10b, 37(%rsi)
	movb	$0, 37(%rcx)
	movb	%r9b, 37(%rdx)
	movb	%r8b, 37(%rax)
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L119
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	movq	%r15, %rdi
	call	free@PLT
	movq	$0, 96(%rbx)
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L86:
	movsd	80(%rbx), %xmm0
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rdi
	comisd	%xmm1, %xmm0
	ja	.L120
	comisd	%xmm0, %xmm1
	jbe	.L52
	movq	$0x000000000, 80(%rbx)
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L118:
	ucomisd	72(%rbx), %xmm0
	jp	.L82
	jne	.L82
	movl	$1, %r11d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L120:
	addq	$400, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 80(%rbx)
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L117:
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%r8d, %r8d
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L111:
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
	ja	.L41
	movsd	%xmm1, 72(%rbx)
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L29:
	movq	(%rbx), %rax
	movl	$4, %esi
	leaq	160(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L32
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm1
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
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L110:
	movq	(%rbx), %rax
	movl	$7, %esi
	leaq	160(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L18
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	72(%rbx), %xmm0
	movq	(%rbx), %rdi
	movl	%eax, %eax
	movsd	.LC7(%rip), %xmm3
	cvtsi2sdq	%rax, %xmm1
	movq	32(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rbx)
	movb	$1, 32(%rax)
	movq	40(%rbx), %rax
	movb	$1, 32(%rax)
	movq	56(%rbx), %rax
	movb	$1, 32(%rax)
	movq	64(%rbx), %rax
	movb	$1, 32(%rax)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L112:
	movl	$56, %edi
	call	_Znwm@PLT
.LEHE2:
	movq	16(%rbx), %rdi
	movq	%rax, %rbp
	movq	(%rbx), %rax
	leaq	184(%rax), %r12
.LEHB3:
	call	_ZN3wze6engine6actors5actor8GetLayerEv@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	(%rbx), %rax
	movq	16(%rbx), %rdi
	movq	%xmm0, %r14
	leaq	184(%rax), %r12
	call	_ZN3wze6engine6actors5actor8GetLayerEv@PLT
	movq	%r12, %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r13
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r12
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	%r14, %xmm3
	movq	%r13, %xmm2
	movq	%r12, %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r15
	call	_ZN3wze6engine6actors5actor7GetTypeEv@PLT
	movq	16(%rbx), %rdi
	movq	%rax, %r12
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	16(%rbx), %rdi
	movq	%rax, %r13
	call	_ZN3wze6engine6actors5actor8GetLayerEv@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r14
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movq	%r15, %xmm3
	movl	%r12d, %r8d
	movsd	8(%rsp), %xmm1
	movq	%r13, %rcx
	movq	%r14, %xmm2
	movq	%rbp, %rdi
	call	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord@PLT
.LEHE3:
	movq	88(%rbx), %rax
	movq	96(%rbx), %rdi
	movq	%rbp, 32(%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 88(%rbx)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	je	.L121
	movq	88(%rbx), %rdx
	leaq	32(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L23:
	addq	$400, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm2
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm2, 8(%rsp)
	mulsd	%xmm2, %xmm1
	addsd	72(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L122
	movq	$0x000000000, 72(%rbx)
	movq	(%rbx), %rdi
	jmp	.L24
.L82:
	xorl	%r11d, %r11d
	movl	$1, %r10d
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.L62
.L122:
	movq	(%rbx), %rdi
	movsd	%xmm1, 72(%rbx)
	jmp	.L24
.L41:
	movq	$0x000000000, 72(%rbx)
	jmp	.L34
.L113:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L115:
	leaq	.LC14(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L114:
	leaq	.LC13(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L121:
	leaq	.LC11(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L116:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L119:
	call	__stack_chk_fail@PLT
.L83:
	movq	%rax, %rbx
	jmp	.L76
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB2-.LFB8152
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8152
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L83-.LFB8152
	.uleb128 0
	.uleb128 .LEHB4-.LFB8152
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8152:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8152
	.type	_ZN6player6UpdateEv.cold, @function
_ZN6player6UpdateEv.cold:
.LFSB8152:
.L76:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$56, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L123
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L123:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8152:
	.section	.gcc_except_table
.LLSDAC8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8152-.LLSDACSBC8152
.LLSDACSBC8152:
	.uleb128 .LEHB5-.LCOLDB16
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
	.section	.text.unlikely
	.text
	.size	_ZN6player6UpdateEv, .-_ZN6player6UpdateEv
	.section	.text.unlikely
	.size	_ZN6player6UpdateEv.cold, .-_ZN6player6UpdateEv.cold
.LCOLDE16:
	.text
.LHOTE16:
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
.LC5:
	.long	0
	.long	-1075838976
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	-1133871366
	.long	1063818100
	.align 8
.LC9:
	.long	0
	.long	1072955392
	.align 8
.LC10:
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
