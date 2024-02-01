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
	.string	"slay::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC5:
	.string	"slay::engine.actors[].flipbooks.Delete(): Flipbook does not exists\nParams: ID: %lld\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
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
	je	.L55
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L44
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L44
	movq	96(%r12), %rdi
	call	free@PLT
	movl	$104, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L56
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L57
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
.L57:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L54
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L58
	cmpq	$1, %rsi
	jne	.L51
.L50:
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
.L58:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L50
.L56:
	movq	%rbx, %rsi
.L54:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L55:
	leaq	.LC4(%rip), %rdi
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
.LC7:
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
	je	.L60
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L61
	cmpq	%rsi, %rdx
	jnb	.L62
	movq	24(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L62
.L61:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L63
.L60:
	cmpq	$1, %rsi
	jbe	.L64
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L65:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L67
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L98:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L68
.L67:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L98
	cmpq	%rax, %rbx
	je	.L68
.L69:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L65
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
	je	.L99
.L95:
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
.L68:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %r14
	leaq	0(,%rbp,8), %r15
	testq	%r14, %r14
	je	.L70
	movq	96(%r14), %rdi
	call	free@PLT
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rsi
	movq	24(%r13), %rdx
.L70:
	cmpq	%rsi, %rbp
	jnb	.L100
	movq	$0, (%rdx,%r15)
	jmp	.L69
.L99:
	movq	%rsi, %rcx
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L78:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L101
	cmpq	$0, (%rdx,%rax,8)
	jne	.L102
	movq	%rax, %rcx
.L73:
	cmpq	$1, %rcx
	jne	.L78
.L77:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	jmp	.L95
.L64:
	testq	%rsi, %rsi
	jne	.L95
	orq	$-1, %rsi
.L97:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L102:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L77
.L62:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L101:
	movq	%rax, %rsi
	jmp	.L97
.L100:
	movq	%rbp, %rsi
	jmp	.L97
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC8:
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
	je	.L104
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L107:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L105
	cmpq	%rsi, %rcx
	jnb	.L106
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L106
.L105:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L107
.L104:
	cmpq	$1, %rsi
	jbe	.L108
	movq	24(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L112
	.p2align 4,,10
	.p2align 3
.L117:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L141:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L112
.L111:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L141
	cmpq	%rax, %rdx
	je	.L112
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L116
.L143:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L117
	.p2align 4,,10
	.p2align 3
.L112:
	movq	(%rdi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L114
	movq	96(%r13), %rdi
	call	free@PLT
	movl	$104, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rsi
	movq	24(%rbp), %rdi
.L114:
	cmpq	%rsi, %rbx
	jnb	.L142
	addq	$1, %rbx
	movq	$0, (%rdi,%r14)
	cmpq	%rsi, %rbx
	jb	.L143
.L116:
	cmpq	$0, -8(%rdi,%rsi,8)
	leaq	-1(%rsi), %rdx
	je	.L144
.L138:
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
.L144:
	.cfi_restore_state
	movq	%rsi, %rcx
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L123:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L145
	cmpq	$0, (%rdi,%rax,8)
	jne	.L146
	movq	%rax, %rcx
.L118:
	cmpq	$1, %rcx
	jne	.L123
.L122:
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
.L108:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L138
	orq	$-1, %rsi
.L140:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L146:
	subq	%rcx, %rsi
	movq	%rsi, %rdx
	jmp	.L122
.L106:
	leaq	.LC8(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L145:
	movq	%rax, %rsi
	jmp	.L140
.L142:
	movq	%rbx, %rsi
	jmp	.L140
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"slay::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC10:
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
	je	.L152
	cmpq	16(%rdi), %rsi
	jnb	.L149
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L149
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L149:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L152:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6actors5actor9flipbooksixEy, .-_ZN4slay6engine6actors5actor9flipbooksixEy
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\nParams: Engine: %p, Actor: %p, TextureIDs(length): %ld\n"
	.text
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
	pxor	%xmm0, %xmm0
	leaq	0(,%r8,8), %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
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
	movl	136(%rdx), %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movw	%ax, 36(%rdi)
	movb	$1, 38(%rdi)
	movq	$0, 40(%rdi)
	movl	$1, 64(%rdi)
	movq	$0, 72(%rdi)
	movl	$0, 80(%rdi)
	movq	%r8, 88(%rdi)
	movups	%xmm0, 48(%rdi)
	movq	%r15, %rdi
	call	malloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	je	.L154
	testq	%rbp, %rbp
	je	.L159
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
.L159:
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
.L154:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	movq	%rbp, %rcx
	movq	%r12, %rdx
	movq	%r14, %rsi
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
.LC12:
	.string	"slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: TextureIDs(length): %ld\n"
	.align 8
.LC13:
	.string	"slay::engine.actors[].flipbooks.New(): Texture does not exists\nParams: TextureIDs(length): %ld\n"
	.align 8
.LC14:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC15:
	.string	"slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE:
.LFB2237:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2237
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	cmpq	$1, %rdx
	jbe	.L189
	movq	%rdi, %r12
	movq	%rsi, %r13
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L161:
	movq	0(%r13,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L162
	movq	(%r12), %rcx
	cmpq	568(%rcx), %rdx
	jnb	.L163
	movq	576(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L163
.L162:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L161
	movq	16(%r12), %rax
	cmpq	$1, %rax
	jbe	.L164
	movq	24(%r12), %rdx
	movl	$1, %ebx
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L165:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L164
.L168:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L165
	movl	$104, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	8(%r12), %rdx
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB1:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE
.LEHE1:
	movq	24(%r12), %rax
	cmpq	16(%r12), %rbx
	jnb	.L190
	movq	%r14, (%rax,%rbx,8)
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L164:
	movl	$104, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	8(%r12), %rdx
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	(%r12), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB3:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_St16initializer_listIyE
.LEHE3:
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.L191
	movq	16(%r12), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L192
	cmpq	$0, (%rdx,%rax,8)
	je	.L193
.L160:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L194
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rbx, %rax
	popq	%rbx
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
.L163:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L189:
	leaq	.LC12(%rip), %rdi
	movq	%rdx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L194:
	call	__stack_chk_fail@PLT
.L193:
	leaq	.LC15(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L192:
	orq	$-1, %rsi
.L187:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L191:
	leaq	.LC14(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L190:
	movq	%rbx, %rsi
	jmp	.L187
.L180:
	movq	%rax, %rbp
	jmp	.L175
.L179:
	movq	%rax, %rbx
	jmp	.L173
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
	.uleb128 .L179-.LFB2237
	.uleb128 0
	.uleb128 .LEHB2-.LFB2237
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2237
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L180-.LFB2237
	.uleb128 0
	.uleb128 .LEHB4-.LFB2237
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
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
.L175:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L188
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L173:
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L188
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L188:
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
	.uleb128 .LEHB5-.LCOLDB16
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2237:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold, .-_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE.cold
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.str1.8
	.align 8
.LC17:
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
	pxor	%xmm0, %xmm0
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	136(%rdx), %eax
	movq	%rdi, %rbx
	movq	(%rcx), %rbp
	movq	%rsi, (%rdi)
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movq	%rdx, 8(%rdi)
	movw	%ax, 36(%rdi)
	movb	$1, 38(%rdi)
	movq	$0, 40(%rdi)
	movl	$1, 64(%rdi)
	movq	$0, 72(%rdi)
	movl	$0, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movups	%xmm0, 48(%rdi)
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	%rax, 96(%rbx)
	testq	%rax, %rax
	je	.L196
	testq	%rbp, %rbp
	je	.L195
	movq	%rax, %rdi
	leaq	-1(%rbp), %rax
	movq	8(%r13), %rdx
	cmpq	$2, %rax
	jbe	.L205
	leaq	8(%rdx), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	jne	.L213
	.p2align 4,,10
	.p2align 3
.L203:
	movq	(%rdx,%rax,8), %rcx
	movq	%rcx, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L203
.L195:
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
.L213:
	.cfi_restore_state
	movq	%rbp, %rcx
	shrq	%rcx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L199:
	movdqu	(%rdx,%rax), %xmm1
	movups	%xmm1, (%rdi,%rax)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.L199
	movq	%rbp, %rax
	andq	$-2, %rax
	andl	$1, %ebp
	je	.L195
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
.L205:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L203
.L196:
	leaq	.LC17(%rip), %rdi
	movq	%rbp, %rcx
	movq	%r12, %rdx
	movq	%r14, %rsi
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
.LC18:
	.string	"slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: TextureIDs(length): %lld\n"
	.align 8
.LC19:
	.string	"slay::engine.actors[].flipbooks.New(): Texture does not exists\nParams: TextureIDs(length): %lld\n"
	.align 8
.LC20:
	.string	"slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB21:
	.text
.LHOTB21:
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
	jbe	.L243
	movq	%rdi, %rbp
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L218:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L216
	movq	0(%rbp), %rcx
	cmpq	568(%rcx), %rdx
	jnb	.L217
	movq	576(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L217
.L216:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L218
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L219
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L220:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L219
.L223:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L220
	movl	$104, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %rcx
	movq	%rax, %rdi
	movq	%rax, %r13
.LEHB7:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
.LEHE7:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L244
	movq	%r13, (%rax,%rbx,8)
.L214:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L245
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
.L219:
	.cfi_restore_state
	movl	$104, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %rcx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB9:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1ERS0_RS2_PN3neo5arrayIyEE
.LEHE9:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L246
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB10:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L247
	cmpq	$0, (%rdx,%rax,8)
	jne	.L214
	movq	(%r12), %rsi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L217:
	leaq	.LC19(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L243:
	leaq	.LC18(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L244:
	movq	%rbx, %rsi
.L241:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L245:
	call	__stack_chk_fail@PLT
.L246:
	leaq	.LC14(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE10:
	movl	$1, %edi
	call	exit@PLT
.L247:
	orq	$-1, %rsi
	jmp	.L241
.L233:
	movq	%rax, %rbx
	jmp	.L228
.L234:
	movq	%rax, %rbp
	jmp	.L230
	.section	.gcc_except_table
.LLSDA2240:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2240-.LLSDACSB2240
.LLSDACSB2240:
	.uleb128 .LEHB6-.LFB2240
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2240
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L233-.LFB2240
	.uleb128 0
	.uleb128 .LEHB8-.LFB2240
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2240
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L234-.LFB2240
	.uleb128 0
	.uleb128 .LEHB10-.LFB2240
	.uleb128 .LEHE10-.LEHB10
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
.L228:
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
	jne	.L242
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L230:
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L242
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
.L242:
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
	.uleb128 .LEHB11-.LCOLDB21
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC2240:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold, .-_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE.cold
.LCOLDE21:
	.text
.LHOTE21:
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
	movl	40(%rdi), %eax
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
	movl	64(%rdi), %eax
	ret
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.section	.rodata.str1.8
	.align 8
.LC22:
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
	je	.L256
	movl	%esi, 64(%rdi)
	ret
.L256:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	leaq	.LC22(%rip), %rdi
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
	cvtsi2sdl	44(%rdi), %xmm0
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
	movsd	%xmm0, 48(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 40(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 56(%rbx)
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
	movl	44(%rdi), %eax
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
	cvtsi2sdl	40(%rdi), %xmm0
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
	movsd	%xmm0, 48(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 44(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 56(%rbx)
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
