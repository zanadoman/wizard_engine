	.file	"stats.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"GameTime: 0ms"
.LC3:
	.string	"RenderTime: 0ms"
.LC4:
	.string	"FrameTime: 0ms"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5statsC2EPN3wze6engineEP4game
	.type	_ZN5statsC2EPN3wze6engineEP4game, @function
_ZN5statsC2EPN3wze6engineEP4game:
.LFB8157:
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
	leaq	256(%rbp), %rdi
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm1
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, 16(%rbx)
	leaq	104(%rax), %rdi
	movzwl	16(%rdx), %edx
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	movzwl	16(%rax), %edx
	movq	16(%rbx), %rax
	leaq	104(%rax), %rdi
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy@PLT
	movq	24(%rbx), %rdi
	movl	$20, %esi
	movq	%rax, 40(%rbx)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	24(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
	movq	16(%rbx), %rdi
	movq	24(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC5(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd@PLT
	movq	24(%rbx), %rax
	xorl	%edx, %edx
	movq	32(%rbx), %rdi
	movl	$20, %esi
	movw	%dx, 16(%rax)
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt@PLT
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	32(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
	movq	16(%rbx), %rdi
	movq	32(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC6(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd@PLT
	movq	32(%rbx), %rax
	xorl	%ecx, %ecx
	movq	40(%rbx), %rdi
	movl	$20, %esi
	movw	%cx, 16(%rax)
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt@PLT
	movq	16(%rbx), %rdi
	movq	40(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	40(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
	movq	16(%rbx), %rdi
	movq	40(%rbx), %rbp
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	subsd	.LC7(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd@PLT
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
.LFE8157:
	.size	_ZN5statsC2EPN3wze6engineEP4game, .-_ZN5statsC2EPN3wze6engineEP4game
	.globl	_ZN5statsC1EPN3wze6engineEP4game
	.set	_ZN5statsC1EPN3wze6engineEP4game,_ZN5statsC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN5statsD2Ev
	.type	_ZN5statsD2Ev, @function
_ZN5statsD2Ev:
.LFB8160:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8160
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	16(%rdi), %rdi
	leaq	256(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8160:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8160-.LLSDACSB8160
.LLSDACSB8160:
.LLSDACSE8160:
	.text
	.size	_ZN5statsD2Ev, .-_ZN5statsD2Ev
	.globl	_ZN5statsD1Ev
	.set	_ZN5statsD1Ev,_ZN5statsD2Ev
	.section	.rodata.str1.1
.LC8:
	.string	"ms"
.LC9:
	.string	"GameTime: "
.LC10:
	.string	"RenderTime: "
.LC11:
	.string	"FrameTime: "
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN5stats6UpdateEv
	.type	_ZN5stats6UpdateEv, @function
_ZN5stats6UpdateEv:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC8(%rip), %r15
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE0:
	movq	(%rbx), %rcx
	movq	24(%rbx), %rax
	movq	%r15, 48(%rsp)
	leaq	392(%rcx), %rdi
	movq	%rax, (%rsp)
.LEHB1:
	call	_ZN3wze6engine6timing11GetGameTimeEv@PLT
	movl	%eax, %ecx
	leaq	32(%rsp), %r14
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rcx, 40(%rsp)
	movq	%r14, %rsi
	leaq	40(%rsp), %r13
	leaq	.LC9(%rip), %rcx
	movq	%rcx, 32(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	leaq	48(%rsp), %r12
	movq	%rax, %rdi
	movl	$1, %edx
	movq	%r12, %rsi
	call	_ZN3neo6stringpLESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rsp), %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc@PLT
	movq	24(%rbx), %rax
	movq	16(%rbx), %rdi
	movq	%rax, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	24(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	(%rsp), %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
	movq	(%rbx), %rcx
	movq	32(%rbx), %rax
	movq	%r15, 48(%rsp)
	leaq	392(%rcx), %rdi
	movq	%rax, (%rsp)
	call	_ZN3wze6engine6timing13GetRenderTimeEv@PLT
	leaq	.LC10(%rip), %rdx
	movl	%eax, %ecx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movq	%rdx, 32(%rsp)
	movl	$1, %edx
	movq	%rcx, 40(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rsp), %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc@PLT
	movq	32(%rbx), %rax
	movq	16(%rbx), %rdi
	movq	%rax, (%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	32(%rbx), %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	(%rsp), %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	8(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
	movq	(%rbx), %rcx
	movq	40(%rbx), %rax
	movq	%r15, 48(%rsp)
	leaq	392(%rcx), %rdi
	movq	%rax, (%rsp)
	call	_ZN3wze6engine6timing12GetFrameTimeEv@PLT
	movl	%eax, %edx
	leaq	.LC11(%rip), %rcx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movq	%rdx, 40(%rsp)
	movl	$1, %edx
	movq	%rcx, 32(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rsp), %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc@PLT
	movq	16(%rbx), %rdi
	movq	40(%rbx), %r12
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	40(%rbx), %rdi
	movsd	%xmm0, (%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
.LEHE1:
	movq	%rbp, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$72, %rsp
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
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L10:
	movq	%rax, %rbx
	jmp	.L7
	.section	.gcc_except_table
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
	.uleb128 .LEHB0-.LFB8162
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8162
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB8162
	.uleb128 0
.LLSDACSE8162:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8162
	.type	_ZN5stats6UpdateEv.cold, @function
_ZN5stats6UpdateEv.cold:
.LFSB8162:
.L7:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbp, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L14
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L14:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8162:
	.section	.gcc_except_table
.LLSDAC8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8162-.LLSDACSBC8162
.LLSDACSBC8162:
	.uleb128 .LEHB2-.LCOLDB12
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC8162:
	.section	.text.unlikely
	.text
	.size	_ZN5stats6UpdateEv, .-_ZN5stats6UpdateEv
	.section	.text.unlikely
	.size	_ZN5stats6UpdateEv.cold, .-_ZN5stats6UpdateEv.cold
.LCOLDE12:
	.text
.LHOTE12:
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
