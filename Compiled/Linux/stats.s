	.file	"stats.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"GameTime: "
.LC3:
	.string	"RenderTime: "
.LC4:
	.string	"FrameTime: "
	.text
	.align 2
	.p2align 4
	.globl	_ZN5statsC2EPN3wze6engineEP4game
	.type	_ZN5statsC2EPN3wze6engineEP4game, @function
_ZN5statsC2EPN3wze6engineEP4game:
.LFB8147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%rsi, %rdi
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	xorl	%r8d, %r8d
	movzwl	%ax, %eax
	movsd	.LC0(%rip), %xmm0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	subl	$20, %eax
	leaq	240(%rbp), %rdi
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm1
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, 16(%rbx)
	leaq	104(%rax), %rdi
	movzwl	16(%rdx), %edx
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy@PLT
	movq	24(%rbx), %rdi
	movl	$20, %esi
	movq	%rax, 40(%rbx)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	24(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC5(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	movq	24(%rbx), %rax
	xorl	%edx, %edx
	movq	32(%rbx), %rdi
	movl	$20, %esi
	movw	%dx, 16(%rax)
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	32(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd@PLT
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC6(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	movq	32(%rbx), %rax
	xorl	%ecx, %ecx
	movq	40(%rbx), %rdi
	movl	$20, %esi
	movw	%cx, 16(%rax)
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt@PLT
	movq	16(%rbx), %rdi
	movq	40(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	40(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd@PLT
	movq	16(%rbx), %rdi
	movq	40(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC7(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd@PLT
	movq	40(%rbx), %rax
	xorl	%esi, %esi
	movw	%si, 16(%rax)
	movb	$0, 18(%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN5statsC2EPN3wze6engineEP4game, .-_ZN5statsC2EPN3wze6engineEP4game
	.globl	_ZN5statsC1EPN3wze6engineEP4game
	.set	_ZN5statsC1EPN3wze6engineEP4game,_ZN5statsC2EPN3wze6engineEP4game
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN5stats6UpdateEv
	.type	_ZN5stats6UpdateEv, @function
_ZN5stats6UpdateEv:
.LFB8149:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8149
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$64, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE0:
	movq	(%rbx), %rax
	movq	24(%rbx), %r14
	leaq	400(%rax), %rdi
.LEHB1:
	call	_ZN3wze6engine6timing11GetGameTimeEv@PLT
	movl	%eax, %eax
	leaq	40(%rsp), %r13
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, 48(%rsp)
	movq	%r13, %rsi
	leaq	48(%rsp), %r12
	leaq	.LC2(%rip), %rax
	movq	%rax, 40(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	%r14, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %r14
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	24(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd@PLT
	movq	(%rbx), %rax
	movq	32(%rbx), %r14
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing13GetRenderTimeEv@PLT
	movl	%eax, %eax
	movq	%r13, %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, 48(%rsp)
	leaq	.LC3(%rip), %rax
	movq	%rax, 40(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	%r14, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc@PLT
	movq	16(%rbx), %rdi
	movq	32(%rbx), %r14
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	32(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd@PLT
	movq	(%rbx), %rax
	movq	40(%rbx), %r14
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6timing12GetFrameTimeEv@PLT
	movl	%eax, %eax
	movq	%r13, %rsi
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, 48(%rsp)
	leaq	.LC4(%rip), %rax
	movq	%rax, 40(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	%r14, %rdi
	call	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc@PLT
	movq	16(%rbx), %rdi
	movq	40(%rbx), %r12
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	40(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd@PLT
.LEHE1:
	movq	%rbp, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L11
	addq	$64, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L8:
	movq	%rax, %rbx
	jmp	.L5
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
	.uleb128 .L8-.LFB8149
	.uleb128 0
.LLSDACSE8149:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8149
	.type	_ZN5stats6UpdateEv.cold, @function
_ZN5stats6UpdateEv.cold:
.LFSB8149:
.L5:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%rbp, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L12
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L12:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8149:
	.section	.gcc_except_table
.LLSDAC8149:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8149-.LLSDACSBC8149
.LLSDACSBC8149:
	.uleb128 .LEHB2-.LCOLDB8
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC8149:
	.section	.text.unlikely
	.text
	.size	_ZN5stats6UpdateEv, .-_ZN5stats6UpdateEv
	.section	.text.unlikely
	.size	_ZN5stats6UpdateEv.cold, .-_ZN5stats6UpdateEv.cold
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1077149696
	.align 8
.LC5:
	.long	0
	.long	1076101120
	.align 8
.LC6:
	.long	0
	.long	1078198272
	.align 8
.LC7:
	.long	0
	.long	1079083008
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
