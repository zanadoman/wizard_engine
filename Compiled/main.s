	.file	"main.cpp"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2196:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2196
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$808, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-720(%rbp), %rax
	movl	$6, %r8d
	movl	$1080, %ecx
	movl	$1920, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN4slay6engineC1EPKctth@PLT
.LEHE0:
	leaq	-720(%rbp), %rdx
	leaq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZN10backgroundC1ERN4slay6engineE@PLT
.LEHE1:
	leaq	-720(%rbp), %rdx
	leaq	-784(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZN6playerC1ERN4slay6engineE@PLT
.LEHE2:
	movq	-776(%rbp), %rax
	leaq	-720(%rbp), %rdx
	addq	$80, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB3:
	call	_ZN4slay6engine6camera4BindEy@PLT
	jmp	.L2
.L3:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6player6UpdateEv@PLT
.L2:
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6UpdateEv@PLT
.LEHE3:
	testb	%al, %al
	jne	.L3
	movl	$0, %ebx
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6playerD1Ev@PLT
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10backgroundD1Ev@PLT
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	jmp	.L13
.L12:
	movq	%rax, %rbx
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6playerD1Ev@PLT
	jmp	.L6
.L11:
	movq	%rax, %rbx
.L6:
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10backgroundD1Ev@PLT
	jmp	.L7
.L10:
	movq	%rax, %rbx
.L7:
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L13:
	call	__stack_chk_fail@PLT
.L9:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2196:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2196:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2196-.LLSDACSB2196
.LLSDACSB2196:
	.uleb128 .LEHB0-.LFB2196
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2196
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB2196
	.uleb128 0
	.uleb128 .LEHB2-.LFB2196
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB2196
	.uleb128 0
	.uleb128 .LEHB3-.LFB2196
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L12-.LFB2196
	.uleb128 0
	.uleb128 .LEHB4-.LFB2196
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2196:
	.text
	.size	main, .-main
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
