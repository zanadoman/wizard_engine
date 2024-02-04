	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d %d %d %d\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2231:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2231
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$696, %edi
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$6, %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$1080, %r8d
	movl	$1920, %ecx
	movq	%rax, %rdi
	movq	%rax, %r13
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth@PLT
.LEHE1:
	movl	$32, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
.LEHB3:
	call	_ZN10backgroundC1EPN3wze6engineE@PLT
.LEHE3:
	movl	$56, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB5:
	call	_ZN6playerC1EPN3wze6engineE@PLT
.LEHE5:
	movq	8(%r14), %rsi
	leaq	80(%r13), %rdi
.LEHB6:
	call	_ZN3wze6engine6camera4BindEy@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	leaq	640(%r13), %rbx
	movq	%r14, %rdi
	call	_ZN6player6UpdateEv@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine6timing12GetFrameTimeEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %r15d
	call	_ZN3wze6engine6timing14GetWorkingTimeEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %r12d
	call	_ZN3wze6engine6timing13GetRenderTimeEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %ebp
	call	_ZN3wze6engine6timing11GetGameTimeEv@PLT
	movl	%r15d, %r8d
	movl	%r12d, %ecx
	movl	%ebp, %edx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L2:
	movq	%r13, %rdi
	call	_ZN3wze6engine6UpdateEv@PLT
.LEHE6:
	testb	%al, %al
	jne	.L3
	movq	8(%rsp), %rbx
	movq	%rbx, %rdi
	call	_ZN10backgroundD1Ev@PLT
	movl	$32, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	%r14, %rdi
	call	_ZN6playerD1Ev@PLT
	movl	$56, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	%r13, %rdi
	call	_ZN3wze6engineD1Ev@PLT
	movq	%r13, %rdi
	movl	$696, %esi
	call	_ZdlPvm@PLT
	addq	$24, %rsp
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
.L7:
	.cfi_restore_state
	movq	%rax, %rbx
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
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	movl	$696, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.L6:
	movq	%r14, %rdi
	movl	$56, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L5:
	movq	8(%rsp), %rdi
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
	.uleb128 .LEHB7-.LCOLDB1
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC2231:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
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
