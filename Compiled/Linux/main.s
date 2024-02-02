	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"assets/icon.png"
.LC1:
	.string	"Demo"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.section	.text.startup,"ax",@progbits
.LHOTB2:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2231:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2231
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$688, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$6, %r9d
	movl	$1080, %r8d
	movl	$1920, %ecx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB1:
	call	_ZN4slay6engineC1EPKcS2_tth@PLT
.LEHE1:
	movl	$32, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB3:
	call	_ZN10backgroundC1EPN4slay6engineE@PLT
.LEHE3:
	movl	$56, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB5:
	call	_ZN6playerC1EPN4slay6engineE@PLT
.LEHE5:
	movq	8(%rbp), %rsi
	leaq	80(%rbx), %rdi
.LEHB6:
	call	_ZN4slay6engine6camera4BindEy@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbp, %rdi
	call	_ZN6player6UpdateEv@PLT
.L2:
	movq	%rbx, %rdi
	call	_ZN4slay6engine6UpdateEv@PLT
.LEHE6:
	testb	%al, %al
	jne	.L3
	movq	%r12, %rdi
	call	_ZN10backgroundD1Ev@PLT
	movl	$32, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
	call	_ZN6playerD1Ev@PLT
	movl	$56, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	%rbx, %rdi
	movl	$688, %esi
	call	_ZdlPvm@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	movq	%rax, %rbp
	jmp	.L4
.L9:
	movq	%rax, %rbx
	jmp	.L6
.L8:
	movq	%rax, %rbx
	jmp	.L5
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
	.uleb128 .L7-.LFB2231
	.uleb128 0
	.uleb128 .LEHB2-.LFB2231
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2231
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L8-.LFB2231
	.uleb128 0
	.uleb128 .LEHB4-.LFB2231
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2231
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L9-.LFB2231
	.uleb128 0
	.uleb128 .LEHB6-.LFB2231
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
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
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%rbx, %rdi
	movl	$688, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.L6:
	movq	%rbp, %rdi
	movl	$56, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L5:
	movq	%r12, %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE2231:
	.section	.gcc_except_table
.LLSDAC2231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2231-.LLSDACSBC2231
.LLSDACSBC2231:
	.uleb128 .LEHB7-.LCOLDB2
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC2231:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE2:
	.section	.text.startup
.LHOTE2:
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
