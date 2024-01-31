	.file	"SEFlipbook(s).cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC2:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0:
.LFB2440:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%rbx, %rbx
	je	.L1
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L5
	cmpq	%rcx, %rsi
	jnb	.L12
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L9
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L28
.L9:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L14
	.p2align 4,,10
	.p2align 3
.L12:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L29
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L10:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L10
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L12
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L5:
	call	free@PLT
	movq	$0, 8(%r12)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2440:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_:
.LFB2232:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$1, 16(%rdi)
	movl	$8, %edi
	movq	$0, (%rsp)
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L34
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L35
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L34:
	leaq	.LC3(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2232:
	.size	_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_,_ZN4slay6engine6actors5actor9flipbooksC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.type	_ZN4slay6engine6actors5actor9flipbooksD2Ev, @function
_ZN4slay6engine6actors5actor9flipbooksD2Ev:
.LFB2235:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdi
	cmpq	$1, %rax
	jbe	.L37
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L40:
	movq	(%rdi,%rbx,8), %rbp
	testq	%rbp, %rbp
	je	.L38
	movq	96(%rbp), %rdi
	addq	$1, %rbx
	call	free@PLT
	movq	%rbp, %rdi
	movl	$104, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
	cmpq	%rax, %rbx
	jb	.L40
.L37:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L40
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE2235:
	.size	_ZN4slay6engine6actors5actor9flipbooksD2Ev, .-_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.globl	_ZN4slay6engine6actors5actor9flipbooksD1Ev
	.set	_ZN4slay6engine6actors5actor9flipbooksD1Ev,_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: TextureIDs(length): %ld\n"
	.align 8
.LC5:
	.string	"slay::engine.actors[].flipbooks.New(): Texture does not exists\nParams: TextureIDs(length): %ld\n"
	.align 8
.LC7:
	.string	"slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\nParams: Engine: %p, Actor: %p, TextureIDs(length): %ld\n"
	.align 8
.LC8:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC9:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC10:
	.string	"slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE:
.LFB2237:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2237
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpq	$1, %rdx
	jbe	.L75
	movq	%rdi, %r13
	movq	%rsi, %r12
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L43:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L44
	movq	0(%r13), %rcx
	cmpq	568(%rcx), %rdx
	jnb	.L45
	movq	576(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L45
.L44:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L43
	movq	16(%r13), %rax
	cmpq	$1, %rax
	jbe	.L46
	movq	24(%r13), %rdx
	movl	$1, %ebx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L47:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L46
.L51:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L47
	movl	$104, %edi
	leaq	0(,%rbp,8), %r15
.LEHB0:
	call	_Znwm@PLT
	movdqu	0(%r13), %xmm0
	xorl	%edx, %edx
	movq	%r15, %rdi
	movw	%dx, 16(%rax)
	movq	%rax, %r14
	pxor	%xmm1, %xmm1
	movups	%xmm0, (%rax)
	movl	$0, 18(%rax)
	movq	$0x000000000, 24(%rax)
	movabsq	$-9151314442833559552, %rax
	movq	%rax, 32(%r14)
	movb	$1, 40(%r14)
	movl	$1, 44(%r14)
	movq	$0, 48(%r14)
	movq	$0, 72(%r14)
	movl	$0, 80(%r14)
	movq	%rbp, 88(%r14)
	movups	%xmm1, 56(%r14)
	movaps	%xmm0, (%rsp)
	call	malloc@PLT
	movdqa	(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 96(%r14)
	movq	%rax, %rdi
	je	.L76
	movq	%r15, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	24(%r13), %rax
	cmpq	16(%r13), %rbx
	jnb	.L77
	movq	%r14, (%rax,%rbx,8)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L46:
	movl	$104, %edi
	leaq	0(,%rbp,8), %r14
	call	_Znwm@PLT
	movdqu	0(%r13), %xmm0
	pxor	%xmm1, %xmm1
	movq	%r14, %rdi
	movq	%rax, %rbx
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	movw	%ax, 16(%rbx)
	movabsq	$-9151314442833559552, %rax
	movl	$0, 18(%rbx)
	movq	$0x000000000, 24(%rbx)
	movq	%rax, 32(%rbx)
	movb	$1, 40(%rbx)
	movl	$1, 44(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 72(%rbx)
	movl	$0, 80(%rbx)
	movq	%rbp, 88(%rbx)
	movups	%xmm1, 56(%rbx)
	movaps	%xmm0, (%rsp)
	call	malloc@PLT
	movdqa	(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 96(%rbx)
	movq	%rax, %rdi
	je	.L78
	movq	%r14, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	16(%r13), %rax
	movq	24(%r13), %rdi
	movq	%rbx, 16(%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%r13)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r13)
	testq	%rax, %rax
	je	.L79
	movq	16(%r13), %rdx
	leaq	16(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%r13), %rax
	movq	24(%r13), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L80
	cmpq	$0, (%rdx,%rax,8)
	je	.L81
.L42:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L82
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
.L45:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	leaq	.LC4(%rip), %rdi
	movq	%rdx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L82:
	call	__stack_chk_fail@PLT
.L81:
	leaq	.LC10(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L80:
	orq	$-1, %rsi
.L73:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L72:
	movl	$1, %edi
	call	exit@PLT
.L79:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L78:
	movhlps	%xmm0, %xmm3
	movq	%xmm0, %rsi
	movq	%rbp, %rcx
	xorl	%eax, %eax
	movq	%xmm3, %rdx
	leaq	.LC7(%rip), %rdi
.LEHB1:
	call	printf@PLT
.LEHE1:
	jmp	.L72
.L76:
	movhlps	%xmm0, %xmm2
	movq	%xmm0, %rsi
	movq	%rbp, %rcx
	xorl	%eax, %eax
	movq	%xmm2, %rdx
	leaq	.LC7(%rip), %rdi
.LEHB2:
	call	printf@PLT
.LEHE2:
	jmp	.L72
.L77:
	movq	%rbx, %rsi
	jmp	.L73
.L65:
	movq	%rax, %rbp
	jmp	.L60
.L64:
	movq	%rax, %rbx
	jmp	.L58
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2237-.LLSDACSB2237
.LLSDACSB2237:
	.uleb128 .LEHB0-.LFB2237
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2237
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L65-.LFB2237
	.uleb128 0
	.uleb128 .LEHB2-.LFB2237
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L64-.LFB2237
	.uleb128 0
.LLSDACSE2237:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2237
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold, @function
_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold:
.LFSB2237:
.L60:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L74
	movq	%rbp, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.L58:
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L74
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE3:
.L74:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2237:
	.section	.gcc_except_table
.LLSDAC2237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2237-.LLSDACSBC2237
.LLSDACSBC2237:
	.uleb128 .LEHB3-.LCOLDB12
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC2237:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold, .-_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"slay::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC14:
	.string	"slay::engine.actors[].flipbooks.Delete(): Flipbook does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
	.type	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy, @function
_ZN4slay6engine6actors5actor9flipbooks6DeleteEy:
.LFB2241:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	testq	%rsi, %rsi
	je	.L96
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L85
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L85
	movq	96(%r12), %rdi
	call	free@PLT
	movl	$104, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L97
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L98
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L98:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L92:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L95
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L99
	cmpq	$1, %rsi
	jne	.L92
.L91:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L99:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L91
.L97:
	movq	%rbx, %rsi
.L95:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L85:
	leaq	.LC14(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L96:
	leaq	.LC13(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy, .-_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"slay::engine.actors[].flipbooks.Purge(): Flipbook does not exists\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB2242:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L101
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L104:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L102
	cmpq	%rsi, %rdx
	jnb	.L103
	movq	24(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L103
.L102:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L104
.L101:
	cmpq	$1, %rsi
	jbe	.L105
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L106:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L108
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L139:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L109
.L108:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L139
	cmpq	%rax, %rbx
	je	.L109
.L110:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L106
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
	je	.L140
.L136:
	addq	$8, %rsp
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
	.p2align 4,,10
	.p2align 3
.L109:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %r14
	leaq	0(,%rbp,8), %r15
	testq	%r14, %r14
	je	.L111
	movq	96(%r14), %rdi
	call	free@PLT
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rsi
	movq	24(%r13), %rdx
.L111:
	cmpq	%rsi, %rbp
	jnb	.L141
	movq	$0, (%rdx,%r15)
	jmp	.L110
.L140:
	movq	%rsi, %rcx
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L119:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L142
	cmpq	$0, (%rdx,%rax,8)
	jne	.L143
	movq	%rax, %rcx
.L114:
	cmpq	$1, %rcx
	jne	.L119
.L118:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	jmp	.L136
.L105:
	testq	%rsi, %rsi
	jne	.L136
	orq	$-1, %rsi
.L138:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L143:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L118
.L103:
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L142:
	movq	%rax, %rsi
	jmp	.L138
.L141:
	movq	%rbp, %rsi
	jmp	.L138
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"slay::engine.actors[].flipbooks.Purge(): Flipbook does not exists\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
.LFB2243:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rdx
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L145
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L148:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L146
	cmpq	%rsi, %rcx
	jnb	.L147
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L147
.L146:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L148
.L145:
	cmpq	$1, %rsi
	jbe	.L149
	movq	24(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L153
	.p2align 4,,10
	.p2align 3
.L158:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L182:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L153
.L152:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L182
	cmpq	%rax, %rdx
	je	.L153
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L157
.L184:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L158
	.p2align 4,,10
	.p2align 3
.L153:
	movq	(%rdi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L155
	movq	96(%r13), %rdi
	call	free@PLT
	movl	$104, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rsi
	movq	24(%rbp), %rdi
.L155:
	cmpq	%rsi, %rbx
	jnb	.L183
	addq	$1, %rbx
	movq	$0, (%rdi,%r14)
	cmpq	%rsi, %rbx
	jb	.L184
.L157:
	cmpq	$0, -8(%rdi,%rsi,8)
	leaq	-1(%rsi), %rdx
	je	.L185
.L179:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L185:
	.cfi_restore_state
	movq	%rsi, %rcx
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L164:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L186
	cmpq	$0, (%rdi,%rax,8)
	jne	.L187
	movq	%rax, %rcx
.L159:
	cmpq	$1, %rcx
	jne	.L164
.L163:
	leaq	16(%rbp), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L149:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L179
	orq	$-1, %rsi
.L181:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L187:
	subq	%rcx, %rsi
	movq	%rsi, %rdx
	jmp	.L163
.L147:
	leaq	.LC16(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L186:
	movq	%rax, %rsi
	jmp	.L181
.L183:
	movq	%rbx, %rsi
	jmp	.L181
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"slay::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC18:
	.string	"slay::engine.actors[].flipbooks[]: Flipbook does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooksixEy
	.type	_ZN4slay6engine6actors5actor9flipbooksixEy, @function
_ZN4slay6engine6actors5actor9flipbooksixEy:
.LFB2244:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L193
	cmpq	16(%rdi), %rsi
	jnb	.L190
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L190
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L190:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L193:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6actors5actor9flipbooksixEy, .-_ZN4slay6engine6actors5actor9flipbooksixEy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE:
.LFB2246:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	leaq	0(,%r8,8), %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movw	%ax, 16(%rdi)
	movabsq	$-9151314442833559552, %rax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	$0, 18(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rax, 32(%rdi)
	movb	$1, 40(%rdi)
	movl	$1, 44(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 72(%rdi)
	movl	$0, 80(%rdi)
	movq	%r8, 88(%rdi)
	movups	%xmm0, 56(%rdi)
	movq	%r15, %rdi
	call	malloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	je	.L195
	testq	%rbp, %rbp
	je	.L200
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
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
	jmp	memcpy@PLT
	.p2align 4,,10
	.p2align 3
.L200:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L195:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_St16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\nParams: Engine: %p, Actor: %p, TextureIDs(length): %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE:
.LFB2249:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rcx), %rbp
	movq	%rdi, %rbx
	movw	%ax, 16(%rdi)
	movabsq	$-9151314442833559552, %rax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	$0, 18(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rax, 32(%rdi)
	movb	$1, 40(%rdi)
	movl	$1, 44(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 72(%rdi)
	movl	$0, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movups	%xmm0, 56(%rdi)
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	je	.L202
	testq	%rbp, %rbp
	je	.L201
	movq	%rax, %rdi
	leaq	-1(%rbp), %rax
	movq	8(%r12), %rdx
	cmpq	$2, %rax
	jbe	.L211
	leaq	8(%rdx), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jne	.L219
	.p2align 4,,10
	.p2align 3
.L209:
	movq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L209
.L201:
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
	.p2align 4,,10
	.p2align 3
.L219:
	.cfi_restore_state
	movq	%rbp, %rcx
	shrq	%rcx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L205:
	movdqu	(%rdx,%rax), %xmm1
	movups	%xmm1, (%rdi,%rax)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.L205
	movq	%rbp, %rax
	andq	$-2, %rax
	andl	$1, %ebp
	je	.L201
	movq	(%rdx,%rax,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
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
	.p2align 4,,10
	.p2align 3
.L211:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L209
.L202:
	leaq	.LC19(%rip), %rdi
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2ERS0_RS2_PN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: TextureIDs(length): %lld\n"
	.align 8
.LC21:
	.string	"slay::engine.actors[].flipbooks.New(): Texture does not exists\nParams: TextureIDs(length): %lld\n"
	.align 8
.LC22:
	.string	"slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB23:
	.text
.LHOTB23:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE:
.LFB2240:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2240
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rsi), %rsi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	cmpq	$1, %rsi
	jbe	.L249
	movq	%rdi, %rbp
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L224:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L222
	movq	0(%rbp), %rcx
	cmpq	568(%rcx), %rdx
	jnb	.L223
	movq	576(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L223
.L222:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L224
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L225
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L226:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L225
.L229:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L226
	movl	$104, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %rcx
	movq	%rax, %rdi
	movq	%rax, %r13
.LEHB5:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
.LEHE5:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L250
	movq	%r13, (%rax,%rbx,8)
.L220:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L251
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L225:
	.cfi_restore_state
	movl	$104, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %rcx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB7:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
.LEHE7:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L252
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB8:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L253
	cmpq	$0, (%rdx,%rax,8)
	jne	.L220
	movq	(%r12), %rsi
	leaq	.LC22(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L223:
	leaq	.LC21(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L249:
	leaq	.LC20(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L250:
	movq	%rbx, %rsi
.L247:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L251:
	call	__stack_chk_fail@PLT
.L252:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE8:
	movl	$1, %edi
	call	exit@PLT
.L253:
	orq	$-1, %rsi
	jmp	.L247
.L239:
	movq	%rax, %rbx
	jmp	.L234
.L240:
	movq	%rax, %rbp
	jmp	.L236
	.section	.gcc_except_table
.LLSDA2240:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2240-.LLSDACSB2240
.LLSDACSB2240:
	.uleb128 .LEHB4-.LFB2240
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2240
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L239-.LFB2240
	.uleb128 0
	.uleb128 .LEHB6-.LFB2240
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2240
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L240-.LFB2240
	.uleb128 0
	.uleb128 .LEHB8-.LFB2240
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2240:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2240
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold, @function
_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold:
.LFSB2240:
.L234:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movl	$104, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L248
	movq	%rbx, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.L236:
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L248
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE9:
.L248:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2240:
	.section	.gcc_except_table
.LLSDAC2240:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2240-.LLSDACSBC2240
.LLSDACSBC2240:
	.uleb128 .LEHB9-.LCOLDB23
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC2240:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold, .-_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold
.LCOLDE23:
	.text
.LHOTE23:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB2252:
	.cfi_startproc
	movq	96(%rdi), %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE2252:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv:
.LFB2254:
	.cfi_startproc
	movl	48(%rdi), %eax
	ret
	.cfi_endproc
.LFE2254:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB2255:
	.cfi_startproc
	movl	44(%rdi), %eax
	ret
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"slay::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\nParams: Delay: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB2256:
	.cfi_startproc
	movl	%esi, %eax
	testl	%esi, %esi
	je	.L262
	movl	%esi, 44(%rdi)
	ret
.L262:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	leaq	.LC24(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi:
.LFB2257:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	cvtsi2sdl	52(%rdi), %xmm0
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm4
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	movq	(%rdi), %rax
	leaq	552(%rax), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movsd	%xmm0, 56(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 48(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 64(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2257:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetXEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv:
.LFB2258:
	.cfi_startproc
	movl	52(%rdi), %eax
	ret
	.cfi_endproc
.LFE2258:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10GetOffsetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi:
.LFB2259:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	cvtsi2sdl	%esi, %xmm0
	movq	%rdi, %rbx
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm4
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	48(%rdi), %xmm0
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	movq	(%rdi), %rax
	leaq	552(%rax), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movsd	%xmm0, 56(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 52(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 64(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2259:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook10SetOffsetYEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB2260:
	.cfi_startproc
	movq	$0, 72(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2260:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
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
