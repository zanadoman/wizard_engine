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
	.globl	_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_
	.type	_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_, @function
_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_:
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
	.size	_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_, .-_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_
	.globl	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_
	.set	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_
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
	movq	104(%rbp), %rdi
	addq	$1, %rbx
	call	free@PLT
	movq	%rbp, %rdi
	movl	$112, %esi
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
	.string	"slay::engine.actors[].flipbooks.Delete(): Flipbook does not exist\nParams: ID: %lld\n"
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
	movq	104(%r12), %rdi
	call	free@PLT
	movl	$112, %esi
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
	.string	"slay::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep(length): %ld\n"
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
	movq	104(%r14), %rdi
	call	free@PLT
	movl	$112, %esi
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
	.string	"slay::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep: %p\n"
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
	movq	104(%r13), %rdi
	call	free@PLT
	movl	$112, %esi
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
	.string	"slay::engine.actors[].flipbooks[]: Flipbook does not exist\nParams: ID: %lld\n"
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
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE:
.LFB2246:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pxor	%xmm0, %xmm0
	leaq	0(,%r9,8), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%r9, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	168(%rdx), %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movupd	152(%rdx), %xmm1
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movw	%ax, 36(%rdi)
	movb	$1, 38(%rdi)
	movl	%ecx, 72(%rdi)
	movq	$0, 80(%rdi)
	movl	$0, 88(%rdi)
	movq	%r9, 96(%rdi)
	movups	%xmm1, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	movq	%r13, %rdi
	call	malloc@PLT
	movq	%rax, 104(%rbx)
	testq	%rax, %rax
	je	.L154
	testq	%rbp, %rbp
	je	.L159
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memcpy@PLT
	.p2align 4,,10
	.p2align 3
.L159:
	.cfi_restore_state
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L154:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	leaq	8(%rbx), %rdx
	movq	%rbp, %rcx
	xorl	%eax, %eax
	movq	%rbx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"slay::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC13:
	.string	"slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC14:
	.string	"slay::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC15:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC16:
	.string	"slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE:
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
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L190
	movl	%esi, %r14d
	cmpq	$1, %rcx
	jbe	.L191
	movq	%rdi, %r12
	movq	%rdx, %r13
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L162:
	movq	0(%r13,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L163
	movq	(%r12), %rcx
	cmpq	568(%rcx), %rdx
	jnb	.L164
	movq	576(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L164
.L163:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L162
	movq	16(%r12), %rax
	cmpq	$1, %rax
	jbe	.L165
	movq	24(%r12), %rdx
	movl	$1, %ebx
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L166:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L165
.L169:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L166
	movl	$112, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	8(%r12), %rdx
	movq	%r13, %r8
	movq	%rbp, %r9
	movq	(%r12), %rsi
	movl	%r14d, %ecx
	movq	%rax, %rdi
	movq	%rax, %r15
.LEHB1:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
.LEHE1:
	movq	24(%r12), %rax
	cmpq	16(%r12), %rbx
	jnb	.L192
	movq	%r15, (%rax,%rbx,8)
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L165:
	movl	$112, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	8(%r12), %rdx
	movq	%r13, %r8
	movq	%rbp, %r9
	movq	(%r12), %rsi
	movl	%r14d, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB3:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
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
	je	.L193
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
	jnc	.L194
	cmpq	$0, (%rdx,%rax,8)
	je	.L195
.L160:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L196
	addq	$24, %rsp
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
.L164:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movq	%rbp, %rdx
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L191:
	leaq	.LC13(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L190:
	leaq	.LC12(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L196:
	call	__stack_chk_fail@PLT
.L195:
	leaq	.LC16(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L194:
	orq	$-1, %rsi
.L188:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L193:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L192:
	movq	%rbx, %rsi
	jmp	.L188
.L181:
	movq	%rax, %rbp
	jmp	.L176
.L180:
	movq	%rax, %rbx
	jmp	.L174
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
	.uleb128 .L180-.LFB2237
	.uleb128 0
	.uleb128 .LEHB2-.LFB2237
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2237
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L181-.LFB2237
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
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, @function
_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.LFSB2237:
.L176:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$112, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L189
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L174:
	movl	$112, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L189
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L189:
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
	.uleb128 .LEHB5-.LCOLDB17
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2237:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, .-_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, .-_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold
.LCOLDE17:
	.text
.LHOTE17:
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\nParams: Engine: %p, Actor: %p, TextureIDs(length): %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE:
.LFB2249:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm0, %xmm0
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	(%r8), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	168(%rdx), %eax
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movupd	152(%rdx), %xmm2
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movq	%rdx, 8(%rdi)
	movw	%ax, 36(%rdi)
	movb	$1, 38(%rdi)
	movl	%ecx, 72(%rdi)
	movq	$0, 80(%rdi)
	movl	$0, 88(%rdi)
	movq	%rbp, 96(%rdi)
	movups	%xmm2, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	%rax, 104(%rbx)
	testq	%rax, %rax
	je	.L198
	testq	%rbp, %rbp
	je	.L197
	leaq	-1(%rbp), %rdx
	movq	8(%r12), %rcx
	cmpq	$2, %rdx
	jbe	.L207
	leaq	8(%rcx), %rsi
	xorl	%edx, %edx
	cmpq	%rsi, %rax
	jne	.L215
	.p2align 4,,10
	.p2align 3
.L205:
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rbp
	jne	.L205
.L197:
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
.L215:
	.cfi_restore_state
	movq	%rbp, %rsi
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L201:
	movdqu	(%rcx,%rdx), %xmm1
	movups	%xmm1, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jne	.L201
	movq	%rbp, %rdx
	andq	$-2, %rdx
	andl	$1, %ebp
	je	.L197
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
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
.L207:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L205
.L198:
	leaq	.LC18(%rip), %rdi
	leaq	8(%rbx), %rdx
	movq	%rbp, %rcx
	xorl	%eax, %eax
	movq	%rbx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"slay::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC20:
	.string	"slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC21:
	.string	"slay::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %lld\n"
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
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE:
.LFB2240:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2240
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
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdx), %rcx
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L246
	movl	%esi, %r13d
	cmpq	$1, %rcx
	jbe	.L247
	movq	8(%rdx), %rsi
	movq	%rdi, %rbp
	movq	%rdx, %r12
	xorl	%eax, %eax
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L219:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L248
.L221:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L219
	movq	0(%rbp), %rdi
	cmpq	568(%rdi), %rdx
	jnb	.L220
	movq	576(%rdi), %rdi
	cmpq	$0, (%rdi,%rdx,8)
	jne	.L219
.L220:
	leaq	.LC21(%rip), %rdi
	movq	%rcx, %rdx
	movl	%r13d, %esi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L248:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L222
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L223:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L222
.L226:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L223
	movl	$112, %edi
	call	_Znwm@PLT
.LEHE6:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r8
	movl	%r13d, %ecx
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB7:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
.LEHE7:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L249
	movq	%r14, (%rax,%rbx,8)
.L216:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L250
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
	.p2align 4,,10
	.p2align 3
.L222:
	.cfi_restore_state
	movl	$112, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r8
	movl	%r13d, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB9:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
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
	je	.L251
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
	jnc	.L252
	cmpq	$0, (%rdx,%rax,8)
	jne	.L216
	movq	(%r12), %rsi
	leaq	.LC22(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L251:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L252:
	orq	$-1, %rsi
.L244:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L247:
	leaq	.LC20(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L246:
	leaq	.LC19(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
.LEHE10:
	movl	$1, %edi
	call	exit@PLT
.L249:
	movq	%rbx, %rsi
	jmp	.L244
.L250:
	call	__stack_chk_fail@PLT
.L237:
	movq	%rax, %rbp
	jmp	.L233
.L236:
	movq	%rax, %rbx
	jmp	.L231
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
	.uleb128 .L236-.LFB2240
	.uleb128 0
	.uleb128 .LEHB8-.LFB2240
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2240
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L237-.LFB2240
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
	.type	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, @function
_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.LFSB2240:
.L233:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$112, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L245
	movq	%rbp, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L231:
	movl	$112, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L245
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
.L245:
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
	.uleb128 .LEHB11-.LCOLDB23
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC2240:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, .-_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold
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
	movq	104(%rdi), %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE2252:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev, .-_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB2254:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2254:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB2255:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rax
	movq	(%rdi), %rdx
	movsd	48(%rbx), %xmm3
	movsd	%xmm2, 8(%rsp)
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm0
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rcx
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 56(%rbx)
	movsd	48(%rbx), %xmm3
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rcx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 64(%rbx)
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movapd	%xmm2, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB2256:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB2257:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rax
	movq	(%rdi), %rdx
	movsd	40(%rbx), %xmm2
	movsd	%xmm3, 8(%rsp)
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm0
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rcx
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 56(%rbx)
	movsd	40(%rbx), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rcx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 64(%rbx)
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movapd	%xmm3, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2257:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB2258:
	.cfi_startproc
	movl	72(%rdi), %eax
	ret
	.cfi_endproc
.LFE2258:
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
.LFB2259:
	.cfi_startproc
	movl	%esi, %eax
	testl	%esi, %esi
	je	.L266
	movl	%esi, 72(%rdi)
	ret
.L266:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	leaq	.LC24(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2259:
	.size	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj, .-_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
	.type	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv, @function
_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB2260:
	.cfi_startproc
	movq	$0, 80(%rdi)
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
