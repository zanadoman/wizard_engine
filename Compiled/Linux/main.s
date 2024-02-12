	.file	"main.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.section	.text.startup,"ax",@progbits
.LHOTB0:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8146:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8146
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$432, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$16, %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$1080, %r8d
	movl	$1920, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth@PLT
.LEHE1:
	movl	$160, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB3:
	call	_ZN4gameC1EPN3wze6engineE@PLT
.LEHE3:
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbp, %rdi
.LEHB4:
	call	_ZN4game6UpdateEv@PLT
.L2:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv@PLT
.LEHE4:
	testb	%al, %al
	jne	.L3
	movq	%rbp, %rdi
	call	_ZN4gameD1Ev@PLT
	movl	$160, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engineD1Ev@PLT
	movq	%rbx, %rdi
	movl	$432, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	movq	%rax, %rbp
	jmp	.L4
.L7:
	movq	%rax, %rbx
	jmp	.L5
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8146:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8146-.LLSDACSB8146
.LLSDACSB8146:
	.uleb128 .LEHB0-.LFB8146
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8146
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6-.LFB8146
	.uleb128 0
	.uleb128 .LEHB2-.LFB8146
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8146
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L7-.LFB8146
	.uleb128 0
	.uleb128 .LEHB4-.LFB8146
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8146:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8146
	.type	main.cold, @function
main.cold:
.LFSB8146:
.L4:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	%rbx, %rdi
	movl	$432, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L5:
	movq	%rbp, %rdi
	movl	$160, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE8146:
	.section	.gcc_except_table
.LLSDAC8146:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8146-.LLSDACSBC8146
.LLSDACSBC8146:
	.uleb128 .LEHB5-.LCOLDB0
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8146:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE0:
	.section	.text.startup
.LHOTE0:
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
