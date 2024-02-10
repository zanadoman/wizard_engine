	.file	"game.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.p2align 4
	.globl	_ZN4gameC2EPN3wze6engineE
	.type	_ZN4gameC2EPN3wze6engineE, @function
_ZN4gameC2EPN3wze6engineE:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	8(%rdi), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	%r12, %rdi
.LEHB0:
	call	_ZN6assetsC1EPN3wze6engineE@PLT
.LEHE0:
	movl	$32, %edi
	movl	$0, 128(%rbx)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	(%rbx), %rsi
	movq	%r12, %rdx
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB2:
	call	_ZN4menuC1EPN3wze6engineEP6assets@PLT
.LEHE2:
	movq	%rbp, 136(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L4:
	.cfi_restore_state
	movq	%rax, %r12
	jmp	.L3
.L5:
	movq	%rax, %r12
	jmp	.L2
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
	.uleb128 .LEHB0-.LFB8150
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8150
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L4-.LFB8150
	.uleb128 0
	.uleb128 .LEHB2-.LFB8150
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L5-.LFB8150
	.uleb128 0
.LLSDACSE8150:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8150
	.type	_ZN4gameC2EPN3wze6engineE.cold, @function
_ZN4gameC2EPN3wze6engineE.cold:
.LFSB8150:
.L2:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$32, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L3:
	movq	112(%rbx), %rdi
	call	free@PLT
	movq	96(%rbx), %rdi
	call	free@PLT
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	56(%rbx), %rdi
	call	free@PLT
	movq	40(%rbx), %rdi
	call	free@PLT
	movq	%r12, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
.LLSDAC8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8150-.LLSDACSBC8150
.LLSDACSBC8150:
	.uleb128 .LEHB3-.LCOLDB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC8150:
	.section	.text.unlikely
	.text
	.size	_ZN4gameC2EPN3wze6engineE, .-_ZN4gameC2EPN3wze6engineE
	.section	.text.unlikely
	.size	_ZN4gameC2EPN3wze6engineE.cold, .-_ZN4gameC2EPN3wze6engineE.cold
.LCOLDE0:
	.text
.LHOTE0:
	.globl	_ZN4gameC1EPN3wze6engineE
	.set	_ZN4gameC1EPN3wze6engineE,_ZN4gameC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN4gameD2Ev
	.type	_ZN4gameD2Ev, @function
_ZN4gameD2Ev:
.LFB8153:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	128(%rdi), %eax
	movq	%rdi, %rbx
	testl	%eax, %eax
	jne	.L10
	movq	136(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L10
	movl	$32, %esi
	call	_ZdlPvm@PLT
.L10:
	movq	112(%rbx), %rdi
	call	free@PLT
	movq	96(%rbx), %rdi
	call	free@PLT
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	56(%rbx), %rdi
	call	free@PLT
	movq	40(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN4gameD2Ev, .-_ZN4gameD2Ev
	.globl	_ZN4gameD1Ev
	.set	_ZN4gameD1Ev,_ZN4gameD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4game6UpdateEv
	.type	_ZN4game6UpdateEv, @function
_ZN4game6UpdateEv:
.LFB8155:
	.cfi_startproc
	movl	128(%rdi), %eax
	testl	%eax, %eax
	je	.L21
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	136(%rdi), %rdi
	call	_ZN4menu6UpdateEv@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN4game6UpdateEv, .-_ZN4game6UpdateEv
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
