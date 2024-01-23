	.file	"SEText(s).cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$1, %ebx
	movq	%rcx, %r8
	movq	%rbx, %r9
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	movq	%r8, %rcx
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC1ESt16initializer_listIS7_E
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_,_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.align 2
	.globl	_ZN4slay6engine6actors5actor5textsD2Ev
	.type	_ZN4slay6engine6actors5actor5textsD2Ev, @function
_ZN4slay6engine6actors5actor5textsD2Ev:
.LFB2200:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2200
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	$1, -24(%rbp)
	jmp	.L4
.L6:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L5
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor5texts4textD1Ev
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L5:
	addq	$1, -24(%rbp)
.L4:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L6
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED1Ev
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2200:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2200-.LLSDACSB2200
.LLSDACSB2200:
.LLSDACSE2200:
	.text
	.size	_ZN4slay6engine6actors5actor5textsD2Ev, .-_ZN4slay6engine6actors5actor5textsD2Ev
	.globl	_ZN4slay6engine6actors5actor5textsD1Ev
	.set	_ZN4slay6engine6actors5actor5textsD1Ev,_ZN4slay6engine6actors5actor5textsD2Ev
	.section	.rodata
	.align 8
.LC0:
	.string	"slay::engine.actors[].texts.New(): Memory allocation failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts3NewEv
	.type	_ZN4slay6engine6actors5actor5texts3NewEv, @function
_ZN4slay6engine6actors5actor5texts3NewEv:
.LFB2202:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2202
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	$1, -56(%rbp)
	jmp	.L8
.L12:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB0:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L9
	movl	$104, %edi
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rbx
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_
	movl	$0, %r13d
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
.LEHE1:
	movq	%rbx, (%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L10
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
.LEHB2:
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	movq	-56(%rbp), %rax
	jmp	.L11
.L9:
	addq	$1, -56(%rbp)
.L8:
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L12
	movl	$104, %edi
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rbx
	movl	$1, %r14d
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_
	movl	$0, %r14d
	movq	%rbx, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%r12, %r8
	movq	%r13, %r9
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%r8, %rcx
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
.LEHE3:
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L13
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
.LEHB4:
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L13:
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	subq	$1, %rax
.L11:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	jmp	.L23
.L21:
	movq	%rax, %r12
	testb	%r13b, %r13b
	je	.L15
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L15:
	movq	%r12, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L22:
	movq	%rax, %r12
	testb	%r14b, %r14b
	je	.L18
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L18:
	movq	%r12, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L23:
	call	__stack_chk_fail@PLT
.L20:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.section	.gcc_except_table
.LLSDA2202:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2202-.LLSDACSB2202
.LLSDACSB2202:
	.uleb128 .LEHB0-.LFB2202
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2202
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB2202
	.uleb128 0
	.uleb128 .LEHB2-.LFB2202
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2202
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L22-.LFB2202
	.uleb128 0
	.uleb128 .LEHB4-.LFB2202
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2202:
	.text
	.size	_ZN4slay6engine6actors5actor5texts3NewEv, .-_ZN4slay6engine6actors5actor5texts3NewEv
	.section	.rodata
	.align 8
.LC1:
	.string	"slay::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n"
	.align 8
.LC2:
	.string	"slay::engine.actors[].texts.Delete(): Text does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts6DeleteEy
	.type	_ZN4slay6engine6actors5actor5texts6DeleteEy, @function
_ZN4slay6engine6actors5actor5texts6DeleteEy:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L25
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L25:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L26
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
.L26:
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	testb	%al, %al
	je	.L29
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L30
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor5texts4textD1Ev
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L30:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	subq	$1, %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L31
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L32
.L35:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L37
	subq	$1, -24(%rbp)
.L32:
	cmpq	$0, -24(%rbp)
	jne	.L35
	jmp	.L34
.L37:
	nop
.L34:
	addq	$1, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy
.L31:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6actors5actor5texts6DeleteEy, .-_ZN4slay6engine6actors5actor5texts6DeleteEy
	.section	.rodata
	.align 8
.LC3:
	.string	"slay::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n"
	.align 8
.LC4:
	.string	"slay::engine.actors[].texts[]: Text does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor5textsixEy
	.type	_ZN4slay6engine6actors5actor5textsixEy, @function
_ZN4slay6engine6actors5actor5textsixEy:
.LFB2204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L39
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L39:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -16(%rbp)
	jnb	.L40
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L41
.L40:
	movl	$1, %eax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	testb	%al, %al
	je	.L43
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6actors5actor5textsixEy, .-_ZN4slay6engine6actors5actor5textsixEy
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_:
.LFB2206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN3neo6stringC1Ev@PLT
	movq	-8(%rbp), %rax
	movb	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 17(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 18(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 33(%rax)
	movq	-8(%rbp), %rax
	movb	$-1, 34(%rax)
	movq	-8(%rbp), %rax
	movb	$-1, 35(%rax)
	movq	-8(%rbp), %rax
	movb	$-1, 36(%rax)
	movq	-8(%rbp), %rax
	movb	$-1, 37(%rax)
	movq	-8(%rbp), %rax
	movb	$-128, 38(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 39(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 80(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 82(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 48(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 56(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_,_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
	.type	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv, @function
_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv, .-_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
	.type	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi, @function
_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi:
.LFB2209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	120(%rax), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	128(%rax), %xmm1
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	128(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	128(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi, .-_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
	.type	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv, @function
_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv:
.LFB2210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv, .-_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
	.type	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi, @function
_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi:
.LFB2211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	120(%rax), %xmm1
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	128(%rax), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	128(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	128(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	120(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi, .-_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4textD2Ev
	.type	_ZN4slay6engine6actors5actor5texts4textD2Ev, @function
_ZN4slay6engine6actors5actor5texts4textD2Ev:
.LFB2213:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2213
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyTexture@PLT
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2213:
	.section	.gcc_except_table
.LLSDA2213:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2213-.LLSDACSB2213
.LLSDACSB2213:
.LLSDACSE2213:
	.text
	.size	_ZN4slay6engine6actors5actor5texts4textD2Ev, .-_ZN4slay6engine6actors5actor5texts4textD2Ev
	.globl	_ZN4slay6engine6actors5actor5texts4textD1Ev
	.set	_ZN4slay6engine6actors5actor5texts4textD1Ev,_ZN4slay6engine6actors5actor5texts4textD2Ev
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4text6StringEv
	.type	_ZN4slay6engine6actors5actor5texts4text6StringEv, @function
_ZN4slay6engine6actors5actor5texts4text6StringEv:
.LFB2215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, 80(%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2215:
	.size	_ZN4slay6engine6actors5actor5texts4text6StringEv, .-_ZN4slay6engine6actors5actor5texts4text6StringEv
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4text7GetFontEv
	.type	_ZN4slay6engine6actors5actor5texts4text7GetFontEv, @function
_ZN4slay6engine6actors5actor5texts4text7GetFontEv:
.LFB2216:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2216:
	.size	_ZN4slay6engine6actors5actor5texts4text7GetFontEv, .-_ZN4slay6engine6actors5actor5texts4text7GetFontEv
	.section	.rodata
	.align 8
.LC6:
	.string	"slay::engine.actors[].texts[].SetFont(): Font does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor5texts4text7SetFontEy
	.type	_ZN4slay6engine6actors5actor5texts4text7SetFontEy, @function
_ZN4slay6engine6actors5actor5texts4text7SetFontEy:
.LFB2217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L60
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$584, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -16(%rbp)
	jnb	.L62
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	584(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L63
.L62:
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	testb	%al, %al
	je	.L65
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L65:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2217:
	.size	_ZN4slay6engine6actors5actor5texts4text7SetFontEy, .-_ZN4slay6engine6actors5actor5texts4text7SetFontEy
	.section	.text._ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	.type	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv, @function
_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv:
.LFB2283:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2283:
	.size	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv, .-_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	.section	.rodata
	.align 8
.LC7:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC2ESt16initializer_listIS7_E,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC5ESt16initializer_listIS7_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC2ESt16initializer_listIS7_E
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC2ESt16initializer_listIS7_E, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC2ESt16initializer_listIS7_E:
.LFB2284:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L69
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L72
.L69:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L71
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L71:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L72:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC2ESt16initializer_listIS7_E, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC2ESt16initializer_listIS7_E
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC1ESt16initializer_listIS7_E
	.set	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC1ESt16initializer_listIS7_E,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEC2ESt16initializer_listIS7_E
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED2Ev,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED2Ev
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED2Ev, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED2Ev:
.LFB2287:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L74
.L75:
	addq	$1, -8(%rbp)
.L74:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L75
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2287:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED2Ev, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED2Ev
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED1Ev
	.set	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED1Ev,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEED2Ev
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv:
.LFB2289:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.section	.rodata
	.align 8
.LC8:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy:
.LFB2290:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L79
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L79:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2290:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.section	.rodata
	.align 8
.LC9:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E:
.LFB2291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L82
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L83
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L83:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE4sizeEv
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L82:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEpLESt16initializer_listIS7_E
	.section	.rodata
	.align 8
.LC10:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC11:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC12:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy:
.LFB2292:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L86
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L86:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L87
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L87:
	cmpq	$0, -40(%rbp)
	je	.L88
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L89
.L90:
	addq	$1, -16(%rbp)
.L89:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L90
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L91
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L88
.L91:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L93:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L92:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L93
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L88
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L88:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy
	.section	.text._ZN3neo5arrayIP9_TTF_FontE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.type	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, @function
_ZN3neo5arrayIP9_TTF_FontE6LengthEv:
.LFB2293:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2293:
	.size	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, .-_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.section	.text._ZN3neo5arrayIP9_TTF_FontEixEy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEixEy
	.type	_ZN3neo5arrayIP9_TTF_FontEixEy, @function
_ZN3neo5arrayIP9_TTF_FontEixEy:
.LFB2294:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L98
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZN3neo5arrayIP9_TTF_FontEixEy, .-_ZN3neo5arrayIP9_TTF_FontEixEy
	.section	.text._ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv
	.type	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv, @function
_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv:
.LFB2345:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2345:
	.size	_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv, .-_ZNKSt16initializer_listIPN4slay6engine6actors5actor5texts4textEE5beginEv
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
