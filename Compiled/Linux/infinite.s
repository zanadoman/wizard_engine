	.file	"infinite.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZN8infiniteC2EPN3wze6engineEP4game
	.type	_ZN8infiniteC2EPN3wze6engineEP4game, @function
_ZN8infiniteC2EPN3wze6engineEP4game:
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
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
	movq	%rsi, (%rdi)
	leaq	96(%rbx), %r12
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
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movl	$10800, %r8d
	xorl	%edx, %edx
	movsd	.LC0(%rip), %xmm2
	movl	$19200, %ecx
	movapd	%xmm1, %xmm0
	xorl	%esi, %esi
	leaq	240(%rax), %rdi
.LEHB2:
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movq	8(%rbx), %rdx
	movq	%rax, 144(%rbx)
	leaq	40(%rax), %rdi
	movzwl	18(%rdx), %esi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
.LEHE2:
	movq	%rax, 152(%rbx)
	popq	%rbx
	.cfi_remember_state
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
.L4:
	.cfi_restore_state
	movq	%rax, %rbx
	jmp	.L3
.L5:
	movq	%rax, %rbx
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
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8156
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L4-.LFB8156
	.uleb128 0
	.uleb128 .LEHB2-.LFB8156
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L5-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN8infiniteC2EPN3wze6engineEP4game.cold, @function
_ZN8infiniteC2EPN3wze6engineEP4game.cold:
.LFSB8156:
.L2:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%r12, %rdi
	call	_ZN5statsD1Ev@PLT
.L3:
	movq	%rbp, %rdi
	call	_ZN5pauseD1Ev@PLT
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB3-.LCOLDB2
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
	.section	.text.unlikely
	.text
	.size	_ZN8infiniteC2EPN3wze6engineEP4game, .-_ZN8infiniteC2EPN3wze6engineEP4game
	.section	.text.unlikely
	.size	_ZN8infiniteC2EPN3wze6engineEP4game.cold, .-_ZN8infiniteC2EPN3wze6engineEP4game.cold
.LCOLDE2:
	.text
.LHOTE2:
	.globl	_ZN8infiniteC1EPN3wze6engineEP4game
	.set	_ZN8infiniteC1EPN3wze6engineEP4game,_ZN8infiniteC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN8infiniteD2Ev
	.type	_ZN8infiniteD2Ev, @function
_ZN8infiniteD2Ev:
.LFB8159:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	96(%rdi), %rdi
	call	_ZN5statsD1Ev@PLT
	leaq	16(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN5pauseD1Ev@PLT
	.cfi_endproc
.LFE8159:
	.size	_ZN8infiniteD2Ev, .-_ZN8infiniteD2Ev
	.globl	_ZN8infiniteD1Ev
	.set	_ZN8infiniteD1Ev,_ZN8infiniteD2Ev
	.align 2
	.p2align 4
	.globl	_ZN8infinite6UpdateEv
	.type	_ZN8infinite6UpdateEv, @function
_ZN8infinite6UpdateEv:
.LFB8161:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	96(%rdi), %rdi
	call	_ZN5stats6UpdateEv@PLT
	leaq	16(%rbx), %rdi
	call	_ZN5pause6UpdateEv@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	cmpl	$2, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN8infinite6UpdateEv, .-_ZN8infinite6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1717986918
	.long	1069128089
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
