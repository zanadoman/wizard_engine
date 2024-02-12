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
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
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
	movq	$0, 104(%rdi)
	movq	$0, 112(%rdi)
	leaq	256(%rsi), %rdi
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
	movl	$257, %r8d
	movq	%rax, 64(%rbx)
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movw	%r8w, 72(%rbx)
	movups	%xmm0, 80(%rbx)
	leaq	392(%rax), %rdi
	call	_ZN3wze6engine6timing14GetCurrentTickEv@PLT
	movq	%rbp, %xmm4
	movl	%eax, 96(%rbx)
	movq	16(%rbx), %rdi
	cvttsd2sil	%xmm4, %esi
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
	movq	32(%rbx), %rax
	movb	$-1, 36(%rax)
	movq	40(%rbx), %r12
	movq	16(%rbx), %rdi
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd@PLT
	movq	40(%rbx), %rax
	movl	$255, %edi
	movw	%di, 36(%rax)
	movq	48(%rbx), %r12
	movq	16(%rbx), %rdi
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd@PLT
	movq	48(%rbx), %rax
	movl	$255, %esi
	movw	%si, 36(%rax)
	movq	56(%rbx), %r12
	movq	16(%rbx), %rdi
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd@PLT
	movq	56(%rbx), %rax
	movl	$255, %ecx
	movw	%cx, 36(%rax)
	movq	64(%rbx), %r12
	movq	16(%rbx), %rdi
	movl	%ebp, 16(%r12)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	addsd	.LC2(%rip), %xmm0
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd@PLT
.LEHE0:
	movq	64(%rbx), %rax
	movl	$255, %edx
	movw	%dx, 36(%rax)
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
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB0-.LFB8156
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L3-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN6playerC2EPN3wze6engineEP4gamedddd.cold, @function
_ZN6playerC2EPN3wze6engineEP4gamedddd.cold:
.LFSB8156:
.L2:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	112(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB1-.LCOLDB4
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
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
.LFB8159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8159
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
	movq	104(%rdi), %rax
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
	movq	104(%r12), %rax
	cmpq	%rax, %rbx
	jnb	.L11
.L15:
	movq	112(%r12), %rdx
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
	leaq	256(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	movq	112(%r12), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8159:
	.section	.gcc_except_table
.LLSDA8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8159-.LLSDACSB8159
.LLSDACSB8159:
.LLSDACSE8159:
	.text
	.size	_ZN6playerD2Ev, .-_ZN6playerD2Ev
	.globl	_ZN6playerD1Ev
	.set	_ZN6playerD1Ev,_ZN6playerD2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC14:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC15:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC16:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC17:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB18:
	.text
.LHOTB18:
	.align 2
	.p2align 4
	.globl	_ZN6player6UpdateEv
	.type	_ZN6player6UpdateEv, @function
_ZN6player6UpdateEv:
.LFB8161:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8161
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
	leaq	176(%rax), %rdi
.LEHB2:
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L114
.L18:
	pxor	%xmm0, %xmm0
	comisd	80(%rbx), %xmm0
	movq	(%rbx), %rdi
	ja	.L23
	movsd	.LC7(%rip), %xmm3
	movsd	%xmm3, 8(%rsp)
.L24:
	addq	$176, %rdi
	movl	$7, %esi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L29
.L32:
	movsd	80(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm1
	ja	.L115
.L34:
	movq	16(%rbx), %rbp
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	(%rbx), %rax
	movsd	80(%rbx), %xmm5
	movsd	%xmm0, 24(%rsp)
	leaq	392(%rax), %rdi
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
	leaq	176(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L44
	pxor	%xmm0, %xmm0
	ucomisd	88(%rbx), %xmm0
	jp	.L44
	jne	.L44
	movq	.LC9(%rip), %rax
	movq	%rax, 88(%rbx)
.L44:
	movq	(%rbx), %rax
	leaq	392(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm0
	movq	16(%rbx), %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	8(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm6
	movsd	%xmm0, 16(%rsp)
	leaq	392(%rax), %rdi
	movsd	%xmm6, 8(%rsp)
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
	movsd	88(%rbx), %xmm4
	movsd	%xmm0, 16(%rsp)
	leaq	392(%rax), %rdi
	movsd	%xmm4, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	8(%rsp), %xmm0
	addsd	16(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetYEd@PLT
	movq	%rbp, %xmm7
	ucomisd	%xmm0, %xmm7
	jp	.L92
	jne	.L92
.L113:
	movq	(%rbx), %rdi
.L52:
	leaq	200(%rdi), %rbp
	movq	16(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor8GetLayerEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	(%rbx), %rax
	movq	16(%rbx), %rdi
	movsd	%xmm0, 24(%rsp)
	leaq	200(%rax), %rbp
	call	_ZN3wze6engine6actors5actor8GetLayerEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, 16(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	movl	$232, %esi
	movsd	%xmm0, 8(%rsp)
	leaq	176(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L116
.L60:
	xorl	%ebp, %ebp
	cmpq	$0, 104(%rbx)
	jne	.L67
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L117:
	addq	$1, %rbp
.L71:
	cmpq	104(%rbx), %rbp
	jnb	.L80
.L67:
	movq	112(%rbx), %rax
	leaq	0(,%rbp,8), %r12
	movq	(%rax,%rbp,8), %rdi
	call	_ZN6bullet6UpdateEv@PLT
	testb	%al, %al
	je	.L117
	movq	104(%rbx), %rax
	movq	112(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L118
	movq	(%rdx,%r12), %r13
	testq	%r13, %r13
	je	.L73
	movq	%r13, %rdi
	call	_ZN6bulletD1Ev@PLT
	movl	$56, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	104(%rbx), %rax
	cmpq	%rax, %rbp
	jnb	.L119
.L73:
	leaq	1(%rbp), %rdx
	cmpq	%rdx, %rax
	jb	.L120
	leaq	-1(%rax), %r13
	movq	112(%rbx), %r14
	movq	%r13, 104(%rbx)
	testq	%r13, %r13
	je	.L75
	cmpq	%r13, %rbp
	jnb	.L79
	subq	%rbp, %rax
	leaq	8(%r14,%r12), %rsi
	leaq	(%r14,%r12), %rdi
	leaq	-8(,%rax,8), %rdx
	call	memmove@PLT
.L79:
	leaq	0(,%r13,8), %rsi
	movq	%r14, %rdi
	call	realloc@PLT
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	jne	.L71
	leaq	.LC17(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L80:
	movsd	88(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	movq	32(%rbx), %rdi
	movq	40(%rbx), %rsi
	movq	48(%rbx), %rcx
	comisd	%xmm1, %xmm0
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rax
	ja	.L121
	comisd	%xmm0, %xmm1
	jbe	.L122
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	movl	$1, %r8d
.L68:
	movb	%r11b, 37(%rdi)
	movb	%r10b, 37(%rsi)
	movb	$0, 37(%rcx)
	movb	%r9b, 37(%rdx)
	movb	%r8b, 37(%rax)
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L123
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
.L75:
	.cfi_restore_state
	movq	%r14, %rdi
	call	free@PLT
	movq	$0, 112(%rbx)
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L92:
	movsd	88(%rbx), %xmm0
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rdi
	comisd	%xmm1, %xmm0
	ja	.L124
	comisd	%xmm0, %xmm1
	jbe	.L52
	movq	$0x000000000, 88(%rbx)
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L122:
	ucomisd	80(%rbx), %xmm0
	jp	.L88
	jne	.L88
	movl	$1, %r11d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L124:
	addq	$392, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 88(%rbx)
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L121:
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%r8d, %r8d
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L115:
	movq	(%rbx), %rax
	leaq	392(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm2, %xmm2
	movsd	80(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	8(%rsp), %xmm2
	subsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm0
	ja	.L41
	movsd	%xmm1, 80(%rbx)
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L29:
	movq	(%rbx), %rax
	movl	$4, %esi
	leaq	176(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L32
	movq	(%rbx), %rax
	movb	$1, 73(%rbx)
	leaq	392(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm1
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	8(%rsp), %xmm0
	movq	32(%rbx), %rax
	addsd	80(%rbx), %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rbx)
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
.L114:
	movq	(%rbx), %rax
	movl	$7, %esi
	leaq	176(%rax), %rdi
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L18
	movq	(%rbx), %rax
	movb	$-1, 73(%rbx)
	leaq	392(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	80(%rbx), %xmm0
	movq	(%rbx), %rdi
	movl	%eax, %eax
	movsd	.LC7(%rip), %xmm7
	cvtsi2sdq	%rax, %xmm1
	movq	32(%rbx), %rax
	movsd	%xmm7, 8(%rsp)
	mulsd	%xmm7, %xmm1
	subsd	%xmm1, %xmm0
	movsd	.LC5(%rip), %xmm1
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rbx)
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
.L116:
	movl	96(%rbx), %eax
	leal	200(%rax), %ebp
	movq	(%rbx), %rax
	leaq	392(%rax), %rdi
	call	_ZN3wze6engine6timing14GetCurrentTickEv@PLT
	cmpl	%eax, %ebp
	jnb	.L60
	movzbl	73(%rbx), %eax
	cmpb	$1, %al
	je	.L125
	cmpb	$-1, %al
	jne	.L60
	movsd	.LC12(%rip), %xmm0
	movsd	8(%rsp), %xmm3
	comisd	%xmm3, %xmm0
	jb	.L60
	comisd	.LC11(%rip), %xmm3
	jbe	.L60
.L63:
	movl	$56, %edi
	call	_Znwm@PLT
.LEHE2:
	movq	16(%rbx), %rdi
	movq	%rax, %rbp
.LEHB3:
	call	_ZN3wze6engine6actors5actor7GetTypeEv@PLT
	movq	16(%rbx), %rdi
	movq	%rax, %r15
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	16(%rbx), %rdi
	movq	%rax, %r14
	call	_ZN3wze6engine6actors5actor8GetLayerEv@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r13
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r12
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	%r15d, %r8d
	movq	%r14, %rcx
	movsd	8(%rsp), %xmm3
	movq	%r13, %xmm2
	movq	%r12, %xmm1
	movq	%rbp, %rdi
	call	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord@PLT
.LEHE3:
	movq	104(%rbx), %rax
	movq	112(%rbx), %rdi
	movq	%rbp, 32(%rsp)
	addq	$1, %rax
	movq	%rax, 104(%rbx)
	leaq	0(,%rax,8), %rsi
	call	realloc@PLT
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L126
	movq	104(%rbx), %rdx
	leaq	32(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	392(%rax), %rdi
	call	_ZN3wze6engine6timing14GetCurrentTickEv@PLT
	movl	%eax, 96(%rbx)
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L23:
	addq	$392, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm6
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm6, 8(%rsp)
	mulsd	%xmm6, %xmm1
	addsd	80(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L127
	movq	$0x000000000, 80(%rbx)
	movq	(%rbx), %rdi
	jmp	.L24
.L88:
	xorl	%r11d, %r11d
	movl	$1, %r10d
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.L68
.L127:
	movq	(%rbx), %rdi
	movsd	%xmm1, 80(%rbx)
	jmp	.L24
.L41:
	movq	$0x000000000, 80(%rbx)
	jmp	.L34
.L125:
	movsd	.LC11(%rip), %xmm0
	movsd	8(%rsp), %xmm2
	comisd	%xmm2, %xmm0
	jnb	.L63
	comisd	.LC12(%rip), %xmm2
	ja	.L63
	jmp	.L60
.L120:
	leaq	.LC16(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L119:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L118:
	leaq	.LC14(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L126:
	leaq	.LC13(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L123:
	call	__stack_chk_fail@PLT
.L89:
	movq	%rax, %rbx
	jmp	.L82
	.section	.gcc_except_table
.LLSDA8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8161-.LLSDACSB8161
.LLSDACSB8161:
	.uleb128 .LEHB2-.LFB8161
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8161
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L89-.LFB8161
	.uleb128 0
	.uleb128 .LEHB4-.LFB8161
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8161:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8161
	.type	_ZN6player6UpdateEv.cold, @function
_ZN6player6UpdateEv.cold:
.LFSB8161:
.L82:
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
	jne	.L128
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L128:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8161:
	.section	.gcc_except_table
.LLSDAC8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8161-.LLSDACSBC8161
.LLSDACSBC8161:
	.uleb128 .LEHB5-.LCOLDB18
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8161:
	.section	.text.unlikely
	.text
	.size	_ZN6player6UpdateEv, .-_ZN6player6UpdateEv
	.section	.text.unlikely
	.size	_ZN6player6UpdateEv.cold, .-_ZN6player6UpdateEv.cold
.LCOLDE18:
	.text
.LHOTE18:
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
	.align 8
.LC11:
	.long	0
	.long	1079410688
	.align 8
.LC12:
	.long	0
	.long	1081139200
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
