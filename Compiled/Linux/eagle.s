	.file	"eagle.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
	.type	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd, @function
_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd:
.LFB8147:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8147
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movapd	%xmm2, %xmm4
	movq	%rcx, %rbp
	movl	$105, %r8d
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	addsd	%xmm3, %xmm4
	movq	%rdi, %rbx
	movl	$105, %ecx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, (%rdi)
	movsd	%xmm3, 8(%rsp)
	movsd	.LC0(%rip), %xmm3
	movq	%rdx, 8(%rdi)
	movl	$2, %edx
	mulsd	%xmm4, %xmm3
	movq	$0, 88(%rdi)
	movq	$0, 96(%rdi)
	leaq	240(%rsi), %rdi
	movq	%rbx, %rsi
	movsd	%xmm2, (%rsp)
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
.LEHB0:
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rdi
	movl	$2, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	movl	$125, %esi
	leaq	88(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	movl	$125, %esi
	leaq	104(%rax), %rdx
	movq	16(%rbx), %rax
	leaq	72(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movq	%rax, 40(%rbx)
	movq	.LC1(%rip), %rax
	movupd	(%rsp), %xmm0
	movq	%rbp, 48(%rbx)
	movq	%rax, 72(%rbx)
	movq	(%rbx), %rax
	movups	%xmm0, 56(%rbx)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing14GetCurrentTickEv@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	movl	%eax, 80(%rbx)
	call	_ZN3wze6engine6actors5actor8GetWidthEv@PLT
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	cvtsi2sdl	%eax, %xmm0
	addsd	.LC2(%rip), %xmm0
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
	addsd	.LC2(%rip), %xmm0
	cvttsd2sil	%xmm0, %esi
	movzwl	%si, %esi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt@PLT
.LEHE0:
	movq	32(%rbx), %rax
	movl	.LC3(%rip), %edx
	movb	$1, 32(%rax)
	movl	%edx, 16(%rax)
	movq	40(%rbx), %rax
	movl	%edx, 16(%rax)
	movb	$0, 37(%rax)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	.type	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd.cold, @function
_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd.cold:
.LFSB8147:
.L2:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -24
	.cfi_offset 6, -16
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
	.size	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd, .-_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
	.section	.text.unlikely
	.size	_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd.cold, .-_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd.cold
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
	.set	_ZN5eagleC1EPN3wze6engineEP4gameddPNS1_6actors5actorEdd,_ZN5eagleC2EPN3wze6engineEP4gameddPNS1_6actors5actorEdd
	.align 2
	.p2align 4
	.globl	_ZN5eagleD2Ev
	.type	_ZN5eagleD2Ev, @function
_ZN5eagleD2Ev:
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
	.size	_ZN5eagleD2Ev, .-_ZN5eagleD2Ev
	.globl	_ZN5eagleD1Ev
	.set	_ZN5eagleD1Ev,_ZN5eagleD2Ev
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
	.globl	_ZN5eagle6UpdateEv
	.type	_ZN5eagle6UpdateEv, @function
_ZN5eagle6UpdateEv:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	16(%rdi), %rdi
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
.LEHB2:
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movapd	%xmm0, %xmm1
	movsd	56(%rbx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L66
	movq	16(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	.LC1(%rip), %rax
	movq	%rax, 72(%rbx)
	movq	32(%rbx), %rax
	movb	$1, 32(%rax)
.L20:
	movq	16(%rbx), %rbp
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	72(%rbx), %xmm5
	movq	(%rbx), %rax
	movsd	%xmm0, 8(%rsp)
	movsd	.LC6(%rip), %xmm0
	leaq	400(%rax), %rdi
	mulsd	%xmm0, %xmm5
	movsd	%xmm5, (%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	(%rsp), %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	48(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	48(%rbx), %rdi
	movsd	%xmm0, 16(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	16(%rsp), %xmm3
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	48(%rbx), %rdi
	movsd	%xmm0, 24(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	48(%rbx), %rdi
	movsd	%xmm0, 16(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	(%rsp), %xmm1
	movsd	16(%rsp), %xmm3
	movsd	8(%rsp), %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	.LC7(%rip), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L24
	movsd	72(%rbx), %xmm0
	ucomisd	.LC1(%rip), %xmm0
	jp	.L26
	jne	.L26
	movsd	.LC8(%rip), %xmm0
	movsd	24(%rsp), %xmm6
	comisd	%xmm6, %xmm0
	jb	.L69
.L28:
	movl	80(%rbx), %eax
	leal	200(%rax), %ebp
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing14GetCurrentTickEv@PLT
	cmpl	%eax, %ebp
	jb	.L70
	.p2align 4,,10
	.p2align 3
.L24:
	xorl	%ebp, %ebp
	cmpq	$0, 88(%rbx)
	jne	.L35
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L71:
	addq	$1, %rbp
.L37:
	cmpq	88(%rbx), %rbp
	jnb	.L46
.L35:
	movq	96(%rbx), %rax
	leaq	0(,%rbp,8), %r12
	movq	(%rax,%rbp,8), %rdi
	call	_ZN6bullet6UpdateEv@PLT
	testb	%al, %al
	je	.L71
	movq	88(%rbx), %rax
	movq	96(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L72
	movq	(%rdx,%r12), %r13
	testq	%r13, %r13
	je	.L39
	movq	%r13, %rdi
	call	_ZN6bulletD1Ev@PLT
	movl	$56, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	88(%rbx), %rax
	cmpq	%rax, %rbp
	jnb	.L73
.L39:
	leaq	1(%rbp), %rdx
	cmpq	%rdx, %rax
	jb	.L74
	leaq	-1(%rax), %r13
	movq	96(%rbx), %r14
	movq	%r13, 88(%rbx)
	testq	%r13, %r13
	je	.L41
	cmpq	%r13, %rbp
	jnb	.L45
	subq	%rbp, %rax
	leaq	8(%r14,%r12), %rsi
	leaq	(%r14,%r12), %rdi
	leaq	-8(,%rax,8), %rdx
	call	memmove@PLT
.L45:
	leaq	0(,%r13,8), %rsi
	movq	%r14, %rdi
	call	realloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	jne	.L37
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L46:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L75
	addq	$88, %rsp
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
.L41:
	.cfi_restore_state
	movq	%r14, %rdi
	call	free@PLT
	movq	$0, 96(%rbx)
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L26:
	ucomisd	.LC5(%rip), %xmm0
	jp	.L24
	jne	.L24
	movsd	.LC9(%rip), %xmm0
	movsd	24(%rsp), %xmm6
	comisd	%xmm6, %xmm0
	jb	.L24
	comisd	.LC8(%rip), %xmm6
	jbe	.L24
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L66:
	movsd	64(%rbx), %xmm4
	movq	16(%rbx), %rdi
	movsd	%xmm4, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	comisd	(%rsp), %xmm0
	jbe	.L20
	movsd	64(%rbx), %xmm0
	movq	16(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	.LC5(%rip), %rax
	movq	%rax, 72(%rbx)
	movq	32(%rbx), %rax
	movb	$0, 32(%rax)
	jmp	.L20
.L69:
	comisd	.LC9(%rip), %xmm6
	ja	.L28
	jmp	.L24
.L70:
	movq	(%rbx), %rax
	movq	16(%rbx), %rdi
	leaq	40(%rsp), %r13
	leaq	48(%rsp), %rbp
	leaq	296(%rax), %r12
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movdqa	.LC10(%rip), %xmm0
	movq	48(%rbx), %rdi
	movq	$5, 64(%rsp)
	movq	%rax, 40(%rsp)
	movaps	%xmm0, 48(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	48(%rbx), %rdi
	movsd	%xmm0, 16(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	pushq	$0
	.cfi_def_cfa_offset 152
	movq	%rbp, %rdx
	movl	$3, %ecx
	pushq	$0
	.cfi_def_cfa_offset 160
	movq	.LC1(%rip), %rax
	movq	%r13, %r8
	movq	%r12, %rdi
	movsd	32(%rsp), %xmm3
	movsd	24(%rsp), %xmm2
	movl	$1, %esi
	movl	$1, %r9d
	movsd	16(%rsp), %xmm1
	movq	%rax, %xmm4
	call	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_@PLT
	popq	%rdx
	.cfi_def_cfa_offset 152
	popq	%rcx
	.cfi_def_cfa_offset 144
	testb	%al, %al
	je	.L24
	movl	$56, %edi
	call	_Znwm@PLT
.LEHE2:
	movq	48(%rbx), %rdi
	movq	%rax, %r12
.LEHB3:
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	48(%rbx), %rdi
	movq	%xmm0, %r15
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r14
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r13
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	%r15, %xmm3
	movq	%r14, %xmm2
	movq	%r13, %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	16(%rbx), %rdi
	movq	%xmm0, %r15
	call	_ZN3wze6engine6actors5actor7GetTypeEv@PLT
	movq	16(%rbx), %rdi
	movq	%rax, %r13
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	16(%rbx), %rdi
	movq	%rax, %r14
	call	_ZN3wze6engine6actors5actor8GetLayerEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	16(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movq	%r15, %xmm3
	movl	%r13d, %r8d
	movsd	(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movq	%r14, %rcx
	movq	%r12, %rdi
	call	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord@PLT
.LEHE3:
	movq	88(%rbx), %rax
	movq	96(%rbx), %rdi
	movq	%r12, 48(%rsp)
	addq	$1, %rax
	movq	%rax, 88(%rbx)
	leaq	0(,%rax,8), %rsi
	call	realloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	je	.L76
	movq	88(%rbx), %rdx
	movq	%rbp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing14GetCurrentTickEv@PLT
	movl	%eax, 80(%rbx)
	jmp	.L24
.L73:
	leaq	.LC13(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	leaq	.LC14(%rip), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	call	__stack_chk_fail@PLT
.L76:
	leaq	.LC11(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L51:
	movq	%rax, %rbx
	jmp	.L47
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
	.uleb128 .L51-.LFB8152
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
	.type	_ZN5eagle6UpdateEv.cold, @function
_ZN5eagle6UpdateEv.cold:
.LFSB8152:
.L47:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$56, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L77
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L77:
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
	.size	_ZN5eagle6UpdateEv, .-_ZN5eagle6UpdateEv
	.section	.text.unlikely
	.size	_ZN5eagle6UpdateEv.cold, .-_ZN5eagle6UpdateEv.cold
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1071644672
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	-350469331
	.long	1059731170
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.value	125
	.value	125
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	0
	.long	-1074790400
	.align 8
.LC6:
	.long	0
	.long	1070596096
	.align 8
.LC7:
	.long	0
	.long	1082081280
	.align 8
.LC8:
	.long	0
	.long	1079410688
	.align 8
.LC9:
	.long	0
	.long	1081139200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC10:
	.quad	2
	.quad	4
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
