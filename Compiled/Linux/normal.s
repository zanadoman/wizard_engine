	.file	"normal.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"neo::array=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN6normalC2EPN3wze6engineEP4game
	.type	_ZN6normalC2EPN3wze6engineEP4game, @function
_ZN6normalC2EPN3wze6engineEP4game:
.LFB8147:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8147
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	16(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	leaq	96(%rbx), %r12
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN5pauseC1EPN3wze6engineEP4game@PLT
.LEHE0:
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB1:
	call	_ZN5statsC1EPN3wze6engineEP4game@PLT
.LEHE1:
	movq	$0, 168(%rbx)
	movl	$88, %edi
	movq	$0, 176(%rbx)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	pxor	%xmm0, %xmm0
	movq	.LC0(%rip), %rax
	movsd	.LC1(%rip), %xmm1
	movq	%r13, %rdi
	movq	%rax, %xmm3
	movq	%rax, %xmm2
.LEHB3:
	call	_ZN6playerC1EPN3wze6engineEP4gamedddd@PLT
.LEHE3:
	movq	(%rbx), %rax
	movq	%r13, 144(%rbx)
	pxor	%xmm1, %xmm1
	xorl	%edx, %edx
	movsd	.LC3(%rip), %xmm2
	movl	$16200, %r8d
	movapd	%xmm1, %xmm0
	xorl	%esi, %esi
	leaq	240(%rax), %rdi
	movl	$28800, %ecx
.LEHB4:
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	movq	%rax, 152(%rbx)
	leaq	40(%rax), %rdi
	movzwl	18(%rdx), %esi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	%rax, 160(%rbx)
	movl	$40, %edi
	call	_Znwm@PLT
.LEHE4:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC4(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	movl	$375, %r8d
	movl	$1500, %ecx
	movq	%rax, %xmm2
.LEHB5:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE5:
	movl	$40, %edi
	movq	%r13, (%rsp)
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC5(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	movl	$50, %r8d
	movl	$300, %ecx
	movq	%rax, %xmm2
.LEHB7:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE7:
	movl	$40, %edi
	movq	%r13, 8(%rsp)
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movl	$50, %r8d
	movl	$200, %ecx
	movsd	.LC6(%rip), %xmm1
	movsd	.LC7(%rip), %xmm0
	movq	%r13, %rdi
	movq	%rax, %xmm2
.LEHB9:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE9:
	movl	$40, %edi
	movq	%r13, 16(%rsp)
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC8(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	movl	$50, %r8d
	movl	$200, %ecx
	movq	%rax, %xmm2
.LEHB11:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE11:
	movl	$40, %edi
	movq	%r13, 24(%rsp)
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %r13
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movl	$50, %r8d
	movl	$200, %ecx
	movsd	.LC9(%rip), %xmm1
	movsd	.LC10(%rip), %xmm0
	movq	%r13, %rdi
	movq	%rax, %xmm2
.LEHB13:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE13:
	movq	168(%rbx), %rdx
	movq	%r13, 32(%rsp)
	cmpq	$5, %rdx
	jne	.L26
	movq	176(%rbx), %rsi
.L4:
	salq	$3, %rdx
	movq	%rsp, %rdi
.LEHB14:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	80(%rax), %r13
	movq	144(%rbx), %rax
	movq	16(%rax), %rdi
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rax, %rsi
	movq	%r13, %rdi
	call	_ZN3wze6engine6camera4BindEy@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L27
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
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
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_restore_state
	movq	$5, 168(%rbx)
	movq	176(%rbx), %rdi
	movl	$40, %esi
	call	realloc@PLT
	movq	%rax, 176(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L3
	movq	168(%rbx), %rdx
	jmp	.L4
.L27:
	call	__stack_chk_fail@PLT
.L3:
	movl	$5, %edx
	movl	$8, %esi
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE14:
	movl	$1, %edi
	call	exit@PLT
.L16:
	movq	%rax, %r14
	jmp	.L6
.L18:
	movq	%rax, %r14
	jmp	.L11
.L17:
	movq	%rax, %r14
	jmp	.L5
.L22:
	movq	%rax, %r14
	jmp	.L11
.L21:
	movq	%rax, %r14
	jmp	.L11
.L20:
	movq	%rax, %r14
	jmp	.L11
.L19:
	movq	%rax, %r14
	jmp	.L11
.L15:
	movq	%rax, %r13
	jmp	.L12
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
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8147
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L15-.LFB8147
	.uleb128 0
	.uleb128 .LEHB2-.LFB8147
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L16-.LFB8147
	.uleb128 0
	.uleb128 .LEHB3-.LFB8147
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L17-.LFB8147
	.uleb128 0
	.uleb128 .LEHB4-.LFB8147
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L16-.LFB8147
	.uleb128 0
	.uleb128 .LEHB5-.LFB8147
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L18-.LFB8147
	.uleb128 0
	.uleb128 .LEHB6-.LFB8147
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L16-.LFB8147
	.uleb128 0
	.uleb128 .LEHB7-.LFB8147
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L19-.LFB8147
	.uleb128 0
	.uleb128 .LEHB8-.LFB8147
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L16-.LFB8147
	.uleb128 0
	.uleb128 .LEHB9-.LFB8147
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L20-.LFB8147
	.uleb128 0
	.uleb128 .LEHB10-.LFB8147
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L16-.LFB8147
	.uleb128 0
	.uleb128 .LEHB11-.LFB8147
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L21-.LFB8147
	.uleb128 0
	.uleb128 .LEHB12-.LFB8147
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L16-.LFB8147
	.uleb128 0
	.uleb128 .LEHB13-.LFB8147
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L22-.LFB8147
	.uleb128 0
	.uleb128 .LEHB14-.LFB8147
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L16-.LFB8147
	.uleb128 0
.LLSDACSE8147:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8147
	.type	_ZN6normalC2EPN3wze6engineEP4game.cold, @function
_ZN6normalC2EPN3wze6engineEP4game.cold:
.LFSB8147:
.L11:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$40, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
.L6:
	movq	176(%rbx), %rdi
	movq	%r14, %r13
	call	free@PLT
	movq	%r12, %rdi
	call	_ZN5statsD1Ev@PLT
.L12:
	movq	%rbp, %rdi
	call	_ZN5pauseD1Ev@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L28
	movq	%r13, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L5:
	movl	$88, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	jmp	.L6
.L28:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8147:
	.section	.gcc_except_table
.LLSDAC8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8147-.LLSDACSBC8147
.LLSDACSBC8147:
	.uleb128 .LEHB15-.LCOLDB12
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8147:
	.section	.text.unlikely
	.text
	.size	_ZN6normalC2EPN3wze6engineEP4game, .-_ZN6normalC2EPN3wze6engineEP4game
	.section	.text.unlikely
	.size	_ZN6normalC2EPN3wze6engineEP4game.cold, .-_ZN6normalC2EPN3wze6engineEP4game.cold
.LCOLDE12:
	.text
.LHOTE12:
	.globl	_ZN6normalC1EPN3wze6engineEP4game
	.set	_ZN6normalC1EPN3wze6engineEP4game,_ZN6normalC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN6normalD2Ev
	.type	_ZN6normalD2Ev, @function
_ZN6normalD2Ev:
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
	movq	144(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L30
	movq	%rbx, %rdi
	call	_ZN6playerD1Ev@PLT
	movl	$88, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L30:
	movq	168(%r12), %rdx
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.L41
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L42:
	movq	%rbp, %rdi
	addl	$1, %ebx
	call	_ZN8platformD1Ev@PLT
	movl	$40, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	168(%r12), %rdx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jnb	.L34
.L41:
	movq	176(%r12), %rcx
.L31:
	movq	(%rcx,%rax,8), %rbp
	testq	%rbp, %rbp
	jne	.L42
	addl	$1, %ebx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jb	.L31
.L34:
	movq	(%r12), %rax
	movq	152(%r12), %rdi
	leaq	240(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	movq	176(%r12), %rdi
	call	free@PLT
	leaq	96(%r12), %rdi
	call	_ZN5statsD1Ev@PLT
	popq	%rbx
	.cfi_def_cfa_offset 24
	leaq	16(%r12), %rdi
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZN5pauseD1Ev@PLT
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
	.size	_ZN6normalD2Ev, .-_ZN6normalD2Ev
	.globl	_ZN6normalD1Ev
	.set	_ZN6normalD1Ev,_ZN6normalD2Ev
	.align 2
	.p2align 4
	.globl	_ZN6normal6UpdateEv
	.type	_ZN6normal6UpdateEv, @function
_ZN6normal6UpdateEv:
.LFB8152:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	addq	$96, %rdi
	call	_ZN5stats6UpdateEv@PLT
	leaq	16(%rbx), %rdi
	call	_ZN5pause6UpdateEv@PLT
	cmpl	$2, %eax
	setne	%dl
	movzbl	%dl, %edx
	testl	%eax, %eax
	je	.L48
	movl	%edx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	.cfi_restore_state
	movq	144(%rbx), %rdi
	call	_ZN6player6UpdateEv@PLT
	movl	$1, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE8152:
	.size	_ZN6normal6UpdateEv, .-_ZN6normal6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1082081280
	.align 8
.LC3:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC4:
	.long	0
	.long	-1065402368
	.align 8
.LC5:
	.long	0
	.long	-1067270144
	.align 8
.LC6:
	.long	0
	.long	1078116352
	.align 8
.LC7:
	.long	0
	.long	-1066450944
	.align 8
.LC8:
	.long	0
	.long	1080827904
	.align 8
.LC9:
	.long	0
	.long	1081722880
	.align 8
.LC10:
	.long	0
	.long	1081032704
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
