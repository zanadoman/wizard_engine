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
.LFB2231:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2231
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%esi, %esi
	movl	$6, %r8d
	movl	$1080, %ecx
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$1920, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$808, %rsp
	.cfi_def_cfa_offset 848
	movq	%fs:40, %rax
	movq	%rax, 792(%rsp)
	xorl	%eax, %eax
	leaq	96(%rsp), %rbx
	movq	%rsp, %r12
	movq	%rbx, %rdi
.LEHB0:
	call	_ZN4slay6engineC1EPKctth@PLT
.LEHE0:
	movq	%rbx, %rsi
	movq	%r12, %rdi
.LEHB1:
	call	_ZN10backgroundC1ERN4slay6engineE@PLT
.LEHE1:
	leaq	32(%rsp), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB2:
	call	_ZN6playerC1ERN4slay6engineE@PLT
.LEHE2:
	movq	40(%rsp), %rsi
	leaq	176(%rsp), %rdi
.LEHB3:
	call	_ZN4slay6engine6camera4BindEy@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	call	_ZN6player6UpdateEv@PLT
.L2:
	movq	%rbx, %rdi
	call	_ZN4slay6engine6UpdateEv@PLT
.LEHE3:
	movq	%rbp, %rdi
	testb	%al, %al
	jne	.L3
	call	_ZN6playerD1Ev@PLT
	movq	%r12, %rdi
	call	_ZN10backgroundD1Ev@PLT
	movq	%rbx, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	792(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L15
	addq	$808, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L11:
	movq	%rax, %r13
	jmp	.L4
.L10:
	movq	%rax, %rbp
	jmp	.L5
.L9:
	movq	%rax, %rbp
	jmp	.L6
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2231-.LLSDACSB2231
.LLSDACSB2231:
	.uleb128 .LEHB0-.LFB2231
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2231
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L9-.LFB2231
	.uleb128 0
	.uleb128 .LEHB2-.LFB2231
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L10-.LFB2231
	.uleb128 0
	.uleb128 .LEHB3-.LFB2231
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L11-.LFB2231
	.uleb128 0
.LLSDACSE2231:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2231
	.type	main.cold, @function
main.cold:
.LFSB2231:
.L4:
	.cfi_def_cfa_offset 848
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%rbp, %rdi
	movq	%r13, %rbp
	call	_ZN6playerD1Ev@PLT
.L5:
	movq	%r12, %rdi
	call	_ZN10backgroundD1Ev@PLT
.L6:
	movq	%rbx, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	792(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L16
	movq	%rbp, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L16:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2231:
	.section	.gcc_except_table
.LLSDAC2231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2231-.LLSDACSBC2231
.LLSDACSBC2231:
	.uleb128 .LEHB4-.LCOLDB0
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC2231:
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
