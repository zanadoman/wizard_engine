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
	movl	$10, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%r8d, %ebp
	movl	$3, %r8d
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
	movq	8(%rbx), %rax
	movq	(%rbx), %rdi
	movl	$1, %edx
	movsd	.LC0(%rip), %xmm0
	movzwl	120(%rax), %esi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	addq	$144, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
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
.LC2:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"eagle hit"
.LC4:
	.string	"player hit"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.globl	_ZN6bullet6UpdateEv
	.type	_ZN6bullet6UpdateEv, @function
_ZN6bullet6UpdateEv:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	16(%rdi), %rbx
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%rbx, %rdi
.LEHB0:
	call	_ZN3wze6engine6actors5actor8GetAngleEv@PLT
	movq	0(%rbp), %rax
	movq	%xmm0, %r14
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm3, %xmm3
	movq	16(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm3
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	8(%rsp), %xmm1
	movq	%r14, %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor4SetXEd@PLT
	movq	16(%rbp), %rbx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor8GetAngleEv@PLT
	movq	0(%rbp), %rax
	movq	%xmm0, %r14
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm4, %xmm4
	movq	16(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm4
	movsd	%xmm4, 8(%rsp)
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movsd	8(%rsp), %xmm1
	movq	%r14, %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor4SetYEd@PLT
	movq	40(%rbp), %rax
	movq	24(%rbp), %rdi
	leaq	48(%rsp), %rdx
	leaq	16(%rsp), %rsi
	leaq	40(%rsp), %r8
	movl	$1, %r9d
	movl	$2, %ecx
	movdqa	.LC1(%rip), %xmm0
	movq	%rax, 40(%rsp)
	movaps	%xmm0, 48(%rsp)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_@PLT
	movl	48(%rbp), %edx
	movq	16(%rsp), %rax
	cmpl	$1, %edx
	je	.L11
	cmpl	$2, %edx
	jne	.L12
	movl	$1, %ebx
	cmpq	$1, %rax
	ja	.L13
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L22:
	cmpq	%rax, %rbx
	jnb	.L49
	movq	%rbx, %rdx
	salq	$4, %rdx
	cmpq	$0, (%rdi,%rdx)
	jne	.L21
.L25:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L52
.L13:
	movq	0(%rbp), %rax
	movq	%rbx, %rsi
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor7GetTypeEv@PLT
	movq	%rax, %rdx
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rax
	cmpq	$1, %rdx
	jne	.L22
	cmpq	%rax, %rbx
	jnb	.L49
	movq	%rbx, %rdx
	salq	$4, %rdx
	cmpq	$0, (%rdi,%rdx)
	je	.L25
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L12:
	movq	24(%rsp), %rdi
.L52:
	xorl	%ebp, %ebp
.L14:
	testq	%rax, %rax
	je	.L27
.L34:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	movq	24(%rsp), %rdi
	cmpq	16(%rsp), %rbx
	jb	.L29
.L27:
	call	free@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L54
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
	movl	$1, %ebp
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L11:
	movl	$1, %ebx
	cmpq	$1, %rax
	ja	.L15
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L16:
	cmpq	%rax, %rbx
	jnb	.L49
	movq	%rbx, %rdx
	salq	$4, %rdx
	cmpq	$0, (%rdi,%rdx)
	jne	.L21
.L18:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L52
.L15:
	movq	0(%rbp), %rax
	movq	%rbx, %rsi
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor7GetTypeEv@PLT
	movq	%rax, %rdx
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rax
	cmpq	$2, %rdx
	jne	.L16
	cmpq	%rax, %rbx
	jnb	.L49
	movq	%rbx, %rdx
	salq	$4, %rdx
	cmpq	$0, (%rdi,%rdx)
	je	.L18
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L53:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdi
	movl	$1, %ebp
	jmp	.L14
.L49:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L54:
	call	__stack_chk_fail@PLT
.L38:
	movq	%rax, %rbp
	jmp	.L30
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB0-.LFB8152
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L38-.LFB8152
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
.L30:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 14, -16
	xorl	%ebx, %ebx
.L31:
	movq	24(%rsp), %rdi
	cmpq	16(%rsp), %rbx
	jnb	.L55
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L31
.L55:
	call	free@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L56
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L56:
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
	.uleb128 .LEHB1-.LCOLDB5
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
	.section	.text.unlikely
	.text
	.size	_ZN6bullet6UpdateEv, .-_ZN6bullet6UpdateEv
	.section	.text.unlikely
	.size	_ZN6bullet6UpdateEv.cold, .-_ZN6bullet6UpdateEv.cold
.LCOLDE5:
	.text
.LHOTE5:
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
