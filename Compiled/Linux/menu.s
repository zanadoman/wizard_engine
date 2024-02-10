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
	movq	8(%rdx), %rdx
	movzwl	8(%rdx), %edx
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
	movq	8(%rax), %rax
	movzwl	8(%rax), %edx
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
	movq	8(%rax), %rax
	movzwl	8(%rax), %edx
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
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN4menu6UpdateEv
	.type	_ZN4menu6UpdateEv, @function
_ZN4menu6UpdateEv:
.LFB8149:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8149
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	32(%rdi), %rdi
.LEHB0:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$1, %al
	movq	40(%rbx), %rax
	jne	.L18
	movl	$-32640, %esi
	movb	$-128, 22(%rax)
	movw	%si, 20(%rax)
.L6:
	movq	56(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$1, %al
	movq	64(%rbx), %rax
	jne	.L19
	movl	$-32640, %edx
	movb	$-128, 22(%rax)
	movw	%dx, 20(%rax)
.L11:
	xorl	%eax, %eax
.L4:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
	movl	$24672, %edi
	movb	$96, 22(%rax)
	movw	%di, 20(%rax)
	movq	32(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$4, %al
	je	.L6
	movq	(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE@PLT
	movq	8(%rbx), %rax
	movl	$32, %edi
	movl	$1, 16(%rax)
	call	_Znwm@PLT
.LEHE0:
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB1:
	call	_ZN6normalC1EPN3wze6engineEP4game@PLT
.LEHE1:
	movq	8(%rbx), %rax
	movq	%rbp, 32(%rax)
.L7:
	movl	$1, %eax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L19:
	movl	$24672, %ecx
	movb	$96, 22(%rax)
	movw	%cx, 20(%rax)
	movq	56(%rbx), %rdi
.LEHB2:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv@PLT
	testb	$4, %al
	je	.L11
	movq	(%rbx), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	240(%rax), %rdi
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE@PLT
.LEHE2:
	movq	8(%rbx), %rax
	movl	$2, 16(%rax)
	jmp	.L7
.L13:
	movq	%rax, %rbx
	jmp	.L12
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8149:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8149-.LLSDACSB8149
.LLSDACSB8149:
	.uleb128 .LEHB0-.LFB8149
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8149
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L13-.LFB8149
	.uleb128 0
	.uleb128 .LEHB2-.LFB8149
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE8149:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8149
	.type	_ZN4menu6UpdateEv.cold, @function
_ZN4menu6UpdateEv.cold:
.LFSB8149:
.L12:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	%rbp, %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE8149:
	.section	.gcc_except_table
.LLSDAC8149:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8149-.LLSDACSBC8149
.LLSDACSBC8149:
	.uleb128 .LEHB3-.LCOLDB8
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8149:
	.section	.text.unlikely
	.text
	.size	_ZN4menu6UpdateEv, .-_ZN4menu6UpdateEv
	.section	.text.unlikely
	.size	_ZN4menu6UpdateEv.cold, .-_ZN4menu6UpdateEv.cold
.LCOLDE8:
	.text
.LHOTE8:
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
