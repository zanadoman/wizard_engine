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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	leaq	16(%rdi), %rdi
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsi, -16(%rdi)
	movq	%rdx, -8(%rdi)
.LEHB0:
	call	_ZN5pauseC1EPN3wze6engineEP4game@PLT
	leaq	96(%rbx), %rdi
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	_ZN5statsC1EPN3wze6engineEP4game@PLT
.LEHE0:
	movl	$88, %edi
	movq	$0, 168(%rbx)
	movq	$0, 176(%rbx)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	%rax, %rbp
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	pxor	%xmm0, %xmm0
	movq	.LC0(%rip), %rax
	movsd	.LC1(%rip), %xmm1
	movq	%rbp, %rdi
	movq	%rax, %xmm3
	movq	%rax, %xmm2
.LEHB2:
	call	_ZN6playerC1EPN3wze6engineEP4gamedddd@PLT
.LEHE2:
	movq	(%rbx), %rax
	movq	%rbp, 144(%rbx)
	pxor	%xmm1, %xmm1
	xorl	%edx, %edx
	movsd	.LC3(%rip), %xmm2
	movl	$16200, %r8d
	movapd	%xmm1, %xmm0
	xorl	%esi, %esi
	leaq	240(%rax), %rdi
	movl	$28800, %ecx
.LEHB3:
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	movq	%rax, 152(%rbx)
	leaq	40(%rax), %rdi
	movzwl	18(%rdx), %esi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	%rax, 160(%rbx)
	movl	$40, %edi
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, %rbp
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC4(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	$375, %r8d
	movl	$1500, %ecx
	movq	%rax, %xmm2
.LEHB4:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE4:
	movl	$40, %edi
	movq	%rbp, (%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	movq	%rax, %rbp
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC5(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	$50, %r8d
	movl	$300, %ecx
	movq	%rax, %xmm2
.LEHB6:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE6:
	movl	$40, %edi
	movq	%rbp, 8(%rsp)
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	movq	%rax, %rbp
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movl	$50, %r8d
	movl	$200, %ecx
	movsd	.LC6(%rip), %xmm1
	movsd	.LC7(%rip), %xmm0
	movq	%rbp, %rdi
	movq	%rax, %xmm2
.LEHB8:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE8:
	movl	$40, %edi
	movq	%rbp, 16(%rsp)
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	movq	%rax, %rbp
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movsd	.LC8(%rip), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	$50, %r8d
	movl	$200, %ecx
	movq	%rax, %xmm2
.LEHB10:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE10:
	movl	$40, %edi
	movq	%rbp, 24(%rsp)
.LEHB11:
	call	_Znwm@PLT
.LEHE11:
	movq	%rax, %rbp
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	movl	$1, %r9d
	movq	.LC0(%rip), %rax
	movl	$50, %r8d
	movl	$200, %ecx
	movsd	.LC9(%rip), %xmm1
	movsd	.LC10(%rip), %xmm0
	movq	%rbp, %rdi
	movq	%rax, %xmm2
.LEHB12:
	call	_ZN8platformC1EPN3wze6engineEP4gameddttdh@PLT
.LEHE12:
	movq	168(%rbx), %rdx
	movq	%rbp, 32(%rsp)
	cmpq	$5, %rdx
	jne	.L24
	movq	176(%rbx), %rsi
.L4:
	salq	$3, %rdx
	movq	%rsp, %rdi
.LEHB13:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	leaq	80(%rax), %rbp
	movq	144(%rbx), %rax
	movq	16(%rax), %rdi
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	%rax, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6camera4BindEy@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L25
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
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
.L25:
	call	__stack_chk_fail@PLT
.L3:
	movl	$5, %edx
	movl	$8, %esi
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE13:
	movl	$1, %edi
	call	exit@PLT
.L14:
	movq	%rax, %r12
	jmp	.L6
.L16:
	movq	%rax, %r12
	jmp	.L11
.L15:
	movq	%rax, %r12
	jmp	.L5
.L20:
	movq	%rax, %r12
	jmp	.L11
.L19:
	movq	%rax, %r12
	jmp	.L11
.L18:
	movq	%rax, %r12
	jmp	.L11
.L17:
	movq	%rax, %r12
	jmp	.L11
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
	.uleb128 .L14-.LFB8147
	.uleb128 0
	.uleb128 .LEHB2-.LFB8147
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB8147
	.uleb128 0
	.uleb128 .LEHB3-.LFB8147
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L14-.LFB8147
	.uleb128 0
	.uleb128 .LEHB4-.LFB8147
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L16-.LFB8147
	.uleb128 0
	.uleb128 .LEHB5-.LFB8147
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L14-.LFB8147
	.uleb128 0
	.uleb128 .LEHB6-.LFB8147
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L17-.LFB8147
	.uleb128 0
	.uleb128 .LEHB7-.LFB8147
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L14-.LFB8147
	.uleb128 0
	.uleb128 .LEHB8-.LFB8147
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L18-.LFB8147
	.uleb128 0
	.uleb128 .LEHB9-.LFB8147
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L14-.LFB8147
	.uleb128 0
	.uleb128 .LEHB10-.LFB8147
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L19-.LFB8147
	.uleb128 0
	.uleb128 .LEHB11-.LFB8147
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L14-.LFB8147
	.uleb128 0
	.uleb128 .LEHB12-.LFB8147
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L20-.LFB8147
	.uleb128 0
	.uleb128 .LEHB13-.LFB8147
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L14-.LFB8147
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
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$40, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L6:
	movq	176(%rbx), %rdi
	call	free@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L26
	movq	%r12, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L5:
	movl	$88, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	jmp	.L6
.L26:
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
	.uleb128 .LEHB14-.LCOLDB12
	.uleb128 .LEHE14-.LEHB14
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	168(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L37
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$40, %esi
	addl	$1, %ebx
	call	_ZdlPvm@PLT
	movq	168(%rbp), %rdx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jnb	.L33
.L37:
	movq	176(%rbp), %rcx
.L28:
	movq	(%rcx,%rax,8), %rdi
	testq	%rdi, %rdi
	jne	.L38
	addl	$1, %ebx
	movzbl	%bl, %eax
	cmpq	%rdx, %rax
	jb	.L28
.L33:
	movq	144(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L30
	movl	$88, %esi
	call	_ZdlPvm@PLT
.L30:
	movq	176(%rbp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8150:
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
	je	.L44
	movl	%edx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L44:
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
