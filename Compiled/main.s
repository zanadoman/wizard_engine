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
	xorl	%esi, %esi
	movl	$6, %r8d
	movl	$1080, %ecx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1920, %edx
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
	subq	$824, %rsp
	.cfi_def_cfa_offset 880
	movq	%fs:40, %rax
	movq	%rax, 808(%rsp)
	xorl	%eax, %eax
	leaq	112(%rsp), %r14
	movq	%r14, %rdi
.LEHB0:
	call	_ZN4slay6engineC1EPKctth@PLT
.LEHE0:
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rdi, 8(%rsp)
.LEHB1:
	call	_ZN10backgroundC1ERN4slay6engineE@PLT
.LEHE1:
	leaq	48(%rsp), %r15
	movq	%r14, %rsi
	movq	%r15, %rdi
.LEHB2:
	call	_ZN6playerC1ERN4slay6engineE@PLT
.LEHE2:
	movq	56(%rsp), %rsi
	leaq	192(%rsp), %rdi
.LEHB3:
	call	_ZN4slay6engine6camera4BindEy@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	call	_ZN6player6UpdateEv@PLT
	leaq	744(%rsp), %rbx
	movq	%rbx, %rdi
	call	_ZN4slay6engine6timing12GetFrameTimeEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %r13d
	call	_ZN4slay6engine6timing14GetWorkingTimeEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %r12d
	call	_ZN4slay6engine6timing13GetRenderTimeEv@PLT
	movq	%rbx, %rdi
	movl	%eax, %ebp
	call	_ZN4slay6engine6timing11GetGameTimeEv@PLT
	movl	%eax, %esi
	movl	%r13d, %r8d
	movl	%r12d, %ecx
	movl	%ebp, %edx
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L2:
	movq	%r14, %rdi
	call	_ZN4slay6engine6UpdateEv@PLT
.LEHE3:
	movq	%r15, %rdi
	testb	%al, %al
	jne	.L3
	call	_ZN6playerD1Ev@PLT
	movq	8(%rsp), %rdi
	call	_ZN10backgroundD1Ev@PLT
	movq	%r14, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	808(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L15
	addq	$824, %rsp
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
.L15:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L11:
	movq	%rax, %rbx
	jmp	.L4
.L10:
	movq	%rax, %rbx
	jmp	.L5
.L9:
	movq	%rax, %rbx
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
	.cfi_def_cfa_offset 880
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	_ZN6playerD1Ev@PLT
.L5:
	movq	8(%rsp), %rdi
	call	_ZN10backgroundD1Ev@PLT
.L6:
	movq	%r14, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	808(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L16
	movq	%rbx, %rdi
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
	.uleb128 .LEHB4-.LCOLDB1
	.uleb128 .LEHE4-.LEHB4
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
