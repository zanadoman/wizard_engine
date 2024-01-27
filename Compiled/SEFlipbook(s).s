	.file	"SEFlipbook(s).cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_:
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC1ESt16initializer_listIS7_E
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
	.size	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_,_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.type	_ZN4slay6engine6actors5actor9flipbooksD2Ev, @function
_ZN4slay6engine6actors5actor9flipbooksD2Ev:
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L5
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L5:
	addq	$1, -24(%rbp)
.L4:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L6
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED1Ev
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
	.size	_ZN4slay6engine6actors5actor9flipbooksD2Ev, .-_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.globl	_ZN4slay6engine6actors5actor9flipbooksD1Ev
	.set	_ZN4slay6engine6actors5actor9flipbooksD1Ev,_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.section	.text._ZNKSt16initializer_listIyE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIyE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE4sizeEv
	.type	_ZNKSt16initializer_listIyE4sizeEv, @function
_ZNKSt16initializer_listIyE4sizeEv:
.LFB2203:
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
.LFE2203:
	.size	_ZNKSt16initializer_listIyE4sizeEv, .-_ZNKSt16initializer_listIyE4sizeEv
	.section	.rodata
	.align 8
.LC0:
	.string	"slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: TextureIDs(length): %ld\n"
	.align 8
.LC1:
	.string	"slay::engine.actors[].flipbooks.New(): Texture does not exists\nParams: TextureIDs(length): %ld\n"
	.align 8
.LC2:
	.string	"slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE:
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
	subq	$64, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	$1, %rax
	setbe	%al
	testb	%al, %al
	je	.L10
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB0:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	movq	$0, -64(%rbp)
	jmp	.L11
.L17:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L34
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	addq	$560, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L14
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	560(%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L15
.L14:
	movl	$1, %eax
	jmp	.L16
.L15:
	movl	$0, %eax
.L16:
	testb	%al, %al
	je	.L13
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L34:
	nop
.L13:
	addq	$1, -64(%rbp)
.L11:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -64(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L17
	movq	$1, -56(%rbp)
	jmp	.L18
.L22:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L19
	movl	$104, %edi
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rbx
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE
	movl	$0, %r13d
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
.LEHE1:
	movq	%rbx, (%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L20
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB2:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L20:
	movq	-56(%rbp), %rax
	jmp	.L21
.L19:
	addq	$1, -56(%rbp)
.L18:
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L22
	movl	$104, %edi
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rbx
	movl	$1, %r14d
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
.LEHE3:
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L23
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB4:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L23:
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	subq	$1, %rax
.L21:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	jmp	.L33
.L31:
	movq	%rax, %r12
	testb	%r13b, %r13b
	je	.L25
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L25:
	movq	%r12, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L32:
	movq	%rax, %r12
	testb	%r14b, %r14b
	je	.L28
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L28:
	movq	%r12, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L33:
	call	__stack_chk_fail@PLT
.L30:
	addq	$64, %rsp
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
	.uleb128 .L31-.LFB2202
	.uleb128 0
	.uleb128 .LEHB2-.LFB2202
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2202
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L32-.LFB2202
	.uleb128 0
	.uleb128 .LEHB4-.LFB2202
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2202:
	.text
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
	.section	.rodata
	.align 8
.LC3:
	.string	"slay::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC4:
	.string	"slay::engine.actors[].flipbooks.Delete(): Flipbook does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
	.type	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy, @function
_ZN4slay6engine6actors5actor9flipbooks6DeleteEy:
.LFB2204:
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
	jne	.L36
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L36:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L37
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L38
.L37:
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	testb	%al, %al
	je	.L40
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L40:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L41
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L41:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	$1, %rax
	jbe	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	testb	%al, %al
	je	.L44
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	movq	%rax, -24(%rbp)
	jmp	.L45
.L48:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L50
	subq	$1, -24(%rbp)
.L45:
	cmpq	$1, -24(%rbp)
	ja	.L48
	jmp	.L47
.L50:
	nop
.L47:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy
.L44:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy, .-_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
	.section	.rodata
	.align 8
.LC5:
	.string	"slay::engine.actors[].flipbooks.Purge(): Flipbook does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB2205:
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
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L52
.L58:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L75
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L55
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L56
.L55:
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	testb	%al, %al
	je	.L54
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	nop
.L54:
	addq	$1, -32(%rbp)
.L52:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L58
	movq	$1, -32(%rbp)
	jmp	.L59
.L66:
	movq	$0, -24(%rbp)
	jmp	.L60
.L63:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L76
	addq	$1, -24(%rbp)
.L60:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L63
	jmp	.L62
.L76:
	nop
.L62:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	sete	%al
	testb	%al, %al
	je	.L64
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.L65
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L65:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	$0, (%rax)
.L64:
	addq	$1, -32(%rbp)
.L59:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L66
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	$1, %rax
	jbe	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
	movl	$0, %eax
.L68:
	testb	%al, %al
	je	.L69
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	movq	%rax, -32(%rbp)
	jmp	.L70
.L73:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L77
	subq	$1, -32(%rbp)
.L70:
	cmpq	$1, -32(%rbp)
	ja	.L73
	jmp	.L72
.L77:
	nop
.L72:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy
.L69:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.section	.rodata
	.align 8
.LC6:
	.string	"slay::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC7:
	.string	"slay::engine.actors[].flipbooks[]: Flipbook does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooksixEy
	.type	_ZN4slay6engine6actors5actor9flipbooksixEy, @function
_ZN4slay6engine6actors5actor9flipbooksixEy:
.LFB2206:
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
	jne	.L79
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L79:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -16(%rbp)
	jnb	.L80
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L81
.L80:
	movl	$1, %eax
	jmp	.L82
.L81:
	movl	$0, %eax
.L82:
	testb	%al, %al
	je	.L83
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L83:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6actors5actor9flipbooksixEy, .-_ZN4slay6engine6actors5actor9flipbooksixEy
	.section	.rodata
	.align 8
.LC9:
	.string	"slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\nParams: Engine: %p, Actor: %p, TextureIDs(length): %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$50, 16(%rax)
	movq	-24(%rbp), %rax
	movb	$1, 20(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 21(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 22(%rax)
	movq	-24(%rbp), %rax
	movw	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movw	$0, 26(%rax)
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 32(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-24(%rbp), %rax
	movb	$-1, 42(%rax)
	movq	-24(%rbp), %rax
	movb	$-1, 43(%rax)
	movq	-24(%rbp), %rax
	movb	$-1, 44(%rax)
	movq	-24(%rbp), %rax
	movb	$-1, 45(%rax)
	movq	-24(%rbp), %rax
	movb	$-128, 46(%rax)
	movq	-24(%rbp), %rax
	movb	$1, 47(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 56(%rax)
	movq	-24(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 80(%rax)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, 88(%rdx)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L86
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L86:
	movq	$0, -8(%rbp)
	jmp	.L87
.L88:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L87:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L88
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB2211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv:
.LFB2213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2213:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi:
.LFB2214:
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
	movsd	152(%rax), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	160(%rax), %xmm1
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	160(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	160(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2214:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv:
.LFB2215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2215:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi:
.LFB2216:
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
	movsd	152(%rax), %xmm1
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	160(%rax), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	160(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rdx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-4(%rbp), %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsd	160(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rax), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 52(%rax)
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2216:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi
	.align 2
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB2217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2217:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
	.section	.text._ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	.type	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv, @function
_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv:
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
	.size	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv, .-_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	.section	.rodata
	.align 8
.LC10:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC2ESt16initializer_listIS7_E,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC5ESt16initializer_listIS7_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC2ESt16initializer_listIS7_E
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC2ESt16initializer_listIS7_E, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC2ESt16initializer_listIS7_E:
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
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L103
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L106
.L103:
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
	je	.L105
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L105:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L106:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC2ESt16initializer_listIS7_E, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC2ESt16initializer_listIS7_E
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC1ESt16initializer_listIS7_E
	.set	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC1ESt16initializer_listIS7_E,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEC2ESt16initializer_listIS7_E
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED2Ev,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED2Ev
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED2Ev, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED2Ev:
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
	jmp	.L108
.L109:
	addq	$1, -8(%rbp)
.L108:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L109
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED2Ev, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED2Ev
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED1Ev
	.set	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED1Ev,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEED2Ev
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.section	.rodata
	.align 8
.LC11:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy:
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
	jb	.L113
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L113:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.section	.text._ZNKSt16initializer_listIyE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIyE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE5beginEv
	.type	_ZNKSt16initializer_listIyE5beginEv, @function
_ZNKSt16initializer_listIyE5beginEv:
.LFB2291:
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
.LFE2291:
	.size	_ZNKSt16initializer_listIyE5beginEv, .-_ZNKSt16initializer_listIyE5beginEv
	.section	.text._ZN3neo5arrayIP11SDL_TextureE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	.type	_ZN3neo5arrayIP11SDL_TextureE6LengthEv, @function
_ZN3neo5arrayIP11SDL_TextureE6LengthEv:
.LFB2292:
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
.LFE2292:
	.size	_ZN3neo5arrayIP11SDL_TextureE6LengthEv, .-_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	.section	.text._ZN3neo5arrayIP11SDL_TextureEixEy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEixEy
	.type	_ZN3neo5arrayIP11SDL_TextureEixEy, @function
_ZN3neo5arrayIP11SDL_TextureEixEy:
.LFB2293:
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
	jb	.L120
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L120:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2293:
	.size	_ZN3neo5arrayIP11SDL_TextureEixEy, .-_ZN3neo5arrayIP11SDL_TextureEixEy
	.section	.rodata
	.align 8
.LC12:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E:
.LFB2294:
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
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L123
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
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
	je	.L124
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L124:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE4sizeEv
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L123:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEpLESt16initializer_listIS7_E
	.section	.rodata
	.align 8
.LC13:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC14:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC15:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy:
.LFB2295:
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
	jb	.L127
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L127:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L128
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L128:
	cmpq	$0, -40(%rbp)
	je	.L129
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L130
.L131:
	addq	$1, -16(%rbp)
.L130:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L131
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
	je	.L132
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L129
.L132:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L133
.L134:
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
.L133:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L134
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
	je	.L129
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L129:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2295:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy
	.section	.text._ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv
	.type	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv, @function
_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv:
.LFB2346:
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
.LFE2346:
	.size	_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv, .-_ZNKSt16initializer_listIPN4slay6engine6actors5actor9flipbooks8flipbookEE5beginEv
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
