	.file	"bullet.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord
	.type	_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord, @function
_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord:
.LFB8147:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%xmm3, %r14
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rcx, %r12
	movl	$20, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%r8d, %ebp
	movl	$5, %r8d
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	addq	$240, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, (%rbx)
	movq	%rbx, %rsi
	movq	%rdx, 8(%rbx)
	movl	$3, %edx
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movl	$3, %esi
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy@PLT
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	movzwl	122(%rax), %esi
	movq	16(%rbx), %rax
	leaq	40(%rax), %rdi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	%r12, 40(%rbx)
	movq	16(%rbx), %rdi
	movq	%r14, %xmm0
	movq	%rax, 32(%rbx)
	movl	%ebp, 48(%rbx)
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	movq	32(%rbx), %rax
	xorl	%edx, %edx
	movsd	.LC0(%rip), %xmm0
	movw	%dx, 20(%rax)
	movl	$1, %edx
	movb	$0, 22(%rax)
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	movzwl	120(%rax), %esi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	addq	$144, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine5audio4PlayEytd@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord, .-_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord
	.globl	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord
	.set	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord,_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord
	.align 2
	.p2align 4
	.globl	_ZN6bulletD2Ev
	.type	_ZN6bulletD2Ev, @function
_ZN6bulletD2Ev:
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
	.size	_ZN6bulletD2Ev, .-_ZN6bulletD2Ev
	.globl	_ZN6bulletD1Ev
	.set	_ZN6bulletD1Ev,_ZN6bulletD2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN6bullet6UpdateEv
	.type	_ZN6bullet6UpdateEv, @function
_ZN6bullet6UpdateEv:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	movq	16(%rdi), %rbx
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%rbx, %rdi
.LEHB0:
	call	_ZN3wze6engine6actors5actor8GetAngleEv@PLT
	movq	0(%rbp), %rax
	movq	%xmm0, %r12
	leaq	376(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm3, %xmm3
	movq	16(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm3
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	8(%rsp), %xmm1
	movq	%r12, %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	16(%rbp), %rbx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor8GetAngleEv@PLT
	movq	0(%rbp), %rax
	movq	%xmm0, %r12
	leaq	376(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm4, %xmm4
	movq	16(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm4
	movsd	%xmm4, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movsd	8(%rsp), %xmm1
	movq	%r12, %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor4SetYEd@PLT
	movq	40(%rbp), %rax
	movq	24(%rbp), %rdi
	leaq	48(%rsp), %rdx
	leaq	16(%rsp), %rsi
	leaq	40(%rsp), %r8
	movl	$1, %r9d
	movl	$4, %ecx
	movdqa	.LC1(%rip), %xmm0
	movq	%rax, 40(%rsp)
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC2(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_@PLT
	movl	48(%rbp), %edx
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdi
	cmpl	$1, %edx
	je	.L11
	cmpl	$2, %edx
	jne	.L37
	xorl	%ebx, %ebx
	testq	%rax, %rax
	jne	.L13
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L55:
	movq	0(%rbp), %rax
	movq	%rbx, %rsi
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor7GetTypeEv@PLT
	cmpq	$1, %rax
	je	.L23
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdi
	cmpq	%rax, %rbx
	jnb	.L33
	cmpq	$0, (%rdi,%r12)
	jne	.L41
.L26:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L53
.L13:
	movq	%rbx, %r12
	salq	$4, %r12
	cmpq	$0, (%rdi,%r12)
	jne	.L55
	cmpq	%rax, %rbx
	jb	.L26
.L33:
	movq	%rbx, %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L37:
	xorl	%ebp, %ebp
.L12:
	testq	%rax, %rax
	je	.L14
.L35:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L28:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	movq	24(%rsp), %rdi
	cmpq	16(%rsp), %rbx
	jb	.L28
.L14:
	call	free@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L56
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L39
	xorl	%ebx, %ebx
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L58:
	movq	0(%rbp), %rax
	movq	%rbx, %rsi
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor7GetTypeEv@PLT
	cmpq	$2, %rax
	je	.L57
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdi
	cmpq	%rax, %rbx
	jnb	.L33
	cmpq	$0, (%rdi,%r12)
	jne	.L41
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L53
.L21:
	movq	%rbx, %r12
	salq	$4, %r12
	cmpq	$0, (%rdi,%r12)
	jne	.L58
	cmpq	%rax, %rbx
	jnb	.L33
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L21
.L53:
	xorl	%ebp, %ebp
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$1, %ebp
	jmp	.L35
.L23:
	movq	0(%rbp), %rdi
	movq	%rbx, %rsi
	addq	$240, %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor7GetDataEv@PLT
	movb	$0, 72(%rax)
	movq	24(%rsp), %rdi
	movl	$1, %ebp
	movq	16(%rsp), %rax
	jmp	.L12
.L57:
	movq	0(%rbp), %rdi
	movq	%rbx, %rsi
	addq	$240, %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor7GetDataEv@PLT
.LEHE0:
	movb	$0, 56(%rax)
	movq	24(%rsp), %rdi
	movl	$1, %ebp
	movq	16(%rsp), %rax
	jmp	.L12
.L39:
	xorl	%ebp, %ebp
	jmp	.L14
.L56:
	call	__stack_chk_fail@PLT
.L42:
	movq	%rax, %rbp
	jmp	.L29
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB0-.LFB8152
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L42-.LFB8152
	.uleb128 0
.LLSDACSE8152:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8152
	.type	_ZN6bullet6UpdateEv.cold, @function
_ZN6bullet6UpdateEv.cold:
.LFSB8152:
.L29:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	xorl	%ebx, %ebx
.L30:
	movq	24(%rsp), %rdi
	cmpq	16(%rsp), %rbx
	jnb	.L59
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L30
.L59:
	call	free@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L60
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L60:
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
	.uleb128 .LEHB1-.LCOLDB4
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
	.section	.text.unlikely
	.text
	.size	_ZN6bullet6UpdateEv, .-_ZN6bullet6UpdateEv
	.section	.text.unlikely
	.size	_ZN6bullet6UpdateEv.cold, .-_ZN6bullet6UpdateEv.cold
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1070596096
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.quad	1
	.quad	2
	.align 16
.LC2:
	.quad	4
	.quad	5
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
