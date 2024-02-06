	.file	"WZEFlipbook(s).cpp"
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
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0:
.LFB8365:
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
.LFE8365:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_:
.LFB8145:
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
.LFE8145:
	.size	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.type	_ZN3wze6engine6actors5actor9flipbooksD2Ev, @function
_ZN3wze6engine6actors5actor9flipbooksD2Ev:
.LFB8151:
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
.LFE8151:
	.size	_ZN3wze6engine6actors5actor9flipbooksD2Ev, .-_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.globl	_ZN3wze6engine6actors5actor9flipbooksD1Ev
	.set	_ZN3wze6engine6actors5actor9flipbooksD1Ev,_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC5:
	.string	"wze::engine.actors[].flipbooks.Delete(): Flipbook does not exist\nParams: ID: %lld\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.type	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy, @function
_ZN3wze6engine6actors5actor9flipbooks6DeleteEy:
.LFB8157:
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
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
.LFE8157:
	.size	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy, .-_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB8158:
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
	movq	16(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L60
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L61
	cmpq	%rcx, %rdx
	jnb	.L62
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.L62
.L61:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L63
.L60:
	cmpq	$1, %rcx
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
	cmpq	%rcx, %rbp
	jb	.L65
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
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
	movq	16(%r13), %rcx
	movq	24(%r13), %rdx
.L70:
	cmpq	%rcx, %rbp
	jnb	.L100
	movq	$0, (%rdx,%r15)
	jmp	.L69
.L99:
	movq	%rcx, %rax
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L78:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L97
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L101
	movq	%rsi, %rax
.L73:
	cmpq	$1, %rax
	jne	.L78
.L77:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	jmp	.L95
.L64:
	testq	%rcx, %rcx
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
.L101:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L77
.L62:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L100:
	movq	%rbp, %rsi
	jmp	.L97
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
.LFB8159:
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rdx
	movq	16(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L103
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L104:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L103
.L106:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L104
	cmpq	%rdi, %rcx
	jnb	.L105
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L104
.L105:
	leaq	.LC8(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L103:
	cmpq	$1, %rdi
	jbe	.L107
	movq	24(%r12), %rsi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L111
	.p2align 4,,10
	.p2align 3
.L116:
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L111
.L110:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L140
	cmpq	%rax, %rdx
	je	.L111
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L115
.L142:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L116
	.p2align 4,,10
	.p2align 3
.L111:
	movq	(%rsi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L113
	movq	104(%r13), %rdi
	call	free@PLT
	movl	$112, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L113:
	cmpq	%rdi, %rbx
	jnb	.L141
	addq	$1, %rbx
	movq	$0, (%rsi,%r14)
	cmpq	%rdi, %rbx
	jb	.L142
.L115:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L143
.L137:
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
.L143:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L122:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L144
	cmpq	$0, (%rsi,%rax,8)
	jne	.L145
	movq	%rax, %rcx
.L117:
	cmpq	$1, %rcx
	jne	.L122
.L121:
	leaq	16(%r12), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
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
.L107:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L137
	orq	$-1, %rsi
.L139:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L145:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L121
.L144:
	movq	%rax, %rsi
	jmp	.L139
.L141:
	movq	%rbx, %rsi
	jmp	.L139
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: ID: %lld\n"
	.align 8
.LC10:
	.string	"wze::engine.actors[].flipbooks[]: Flipbook does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksixEy
	.type	_ZN3wze6engine6actors5actor9flipbooksixEy, @function
_ZN3wze6engine6actors5actor9flipbooksixEy:
.LFB8160:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L151
	cmpq	16(%rdi), %rsi
	jnb	.L148
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L148
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L148:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L151:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6actors5actor9flipbooksixEy, .-_ZN3wze6engine6actors5actor9flipbooksixEy
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pxor	%xmm0, %xmm0
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%r9, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	200(%rdx), %eax
	movq	%rdi, %rbx
	movupd	168(%rdx), %xmm1
	movq	%rsi, (%rdi)
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movq	%rdx, 8(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 104(%rdi)
	movw	%ax, 36(%rdi)
	movb	$1, 38(%rdi)
	movl	%ecx, 72(%rdi)
	movq	$0, 80(%rdi)
	movl	$0, 88(%rdi)
	movups	%xmm1, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	testq	%r9, %r9
	jne	.L161
.L153:
	movq	%rbp, 96(%rbx)
	movq	%r12, %rdi
	movq	%r12, 104(%rbx)
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
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L161:
	.cfi_restore_state
	leaq	0(,%r9,8), %r14
	movq	%r8, %r13
	movq	%r14, %rdi
	call	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L162
	movq	%r14, %rdx
	movq	%rax, %rsi
	movq	%r13, %rdi
.LEHB0:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L153
.L162:
	movq	%rbp, %rdx
	movl	$8, %esi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L157:
	movq	%rax, %rbp
	jmp	.L155
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
	.uleb128 .LEHB0-.LFB8162
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L157-.LFB8162
	.uleb128 0
.LLSDACSE8162:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8162
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold:
.LFSB8162:
.L155:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	104(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE8162:
	.section	.gcc_except_table
.LLSDAC8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8162-.LLSDACSBC8162
.LLSDACSBC8162:
	.uleb128 .LEHB1-.LCOLDB11
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8162:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold
.LCOLDE11:
	.text
.LHOTE11:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC13:
	.string	"wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC14:
	.string	"wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC15:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC16:
	.string	"wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE:
.LFB8153:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8153
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
	je	.L193
	movl	%esi, %r14d
	cmpq	$1, %rcx
	jbe	.L194
	movq	%rdi, %r12
	movq	%rdx, %r13
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L165:
	movq	0(%r13,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L166
	movq	(%r12), %rcx
	cmpq	624(%rcx), %rdx
	jnb	.L167
	movq	632(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L167
.L166:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L165
	movq	16(%r12), %rax
	cmpq	$1, %rax
	jbe	.L168
	movq	24(%r12), %rdx
	movl	$1, %ebx
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L169:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L168
.L172:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L169
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
	movq	%rax, %r15
.LEHB3:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
.LEHE3:
	movq	24(%r12), %rax
	cmpq	16(%r12), %rbx
	jnb	.L195
	movq	%r15, (%rax,%rbx,8)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L168:
	movl	$112, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	8(%r12), %rdx
	movq	%r13, %r8
	movq	%rbp, %r9
	movq	(%r12), %rsi
	movl	%r14d, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB5:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
.LEHE5:
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.L196
	movq	16(%r12), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB6:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L197
	cmpq	$0, (%rdx,%rax,8)
	je	.L198
.L163:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L199
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
.L167:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movq	%rbp, %rdx
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L194:
	leaq	.LC13(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L193:
	leaq	.LC12(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L199:
	call	__stack_chk_fail@PLT
.L198:
	leaq	.LC16(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L197:
	orq	$-1, %rsi
.L191:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L196:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE6:
	movl	$1, %edi
	call	exit@PLT
.L195:
	movq	%rbx, %rsi
	jmp	.L191
.L184:
	movq	%rax, %rbp
	jmp	.L179
.L183:
	movq	%rax, %rbx
	jmp	.L177
	.section	.gcc_except_table
.LLSDA8153:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8153-.LLSDACSB8153
.LLSDACSB8153:
	.uleb128 .LEHB2-.LFB8153
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8153
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L183-.LFB8153
	.uleb128 0
	.uleb128 .LEHB4-.LFB8153
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8153
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L184-.LFB8153
	.uleb128 0
	.uleb128 .LEHB6-.LFB8153
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8153:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8153
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.LFSB8153:
.L179:
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
	jne	.L192
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.L177:
	movl	$112, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L192
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE7:
.L192:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8153:
	.section	.gcc_except_table
.LLSDAC8153:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8153-.LLSDACSBC8153
.LLSDACSBC8153:
	.uleb128 .LEHB7-.LCOLDB17
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8153:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold
.LCOLDE17:
	.text
.LHOTE17:
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"neo::array=: Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n"
	.align 8
.LC19:
	.string	"neo::array=: Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n"
	.align 8
.LC20:
	.string	"neo::array=: Memory allocation failed\nParams: Arrays(type, length): %ld %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB21:
	.text
.LHOTB21:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE:
.LFB8165:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8165
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm0, %xmm0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	200(%rdx), %eax
	movupd	168(%rdx), %xmm1
	movq	%rsi, (%rdi)
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movq	%rdx, 8(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 104(%rdi)
	movw	%ax, 36(%rdi)
	movb	$1, 38(%rdi)
	movl	%ecx, 72(%rdi)
	movq	$0, 80(%rdi)
	movl	$0, 88(%rdi)
	movups	%xmm1, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	testq	%r8, %r8
	je	.L213
	leaq	96(%rdi), %rax
	movq	%r8, %rbx
	cmpq	%r8, %rax
	je	.L214
	movq	(%r8), %rdx
	xorl	%esi, %esi
	movq	%rdx, 96(%rdi)
	leaq	0(,%rdx,8), %r12
	testq	%rdx, %rdx
	je	.L204
	movq	%r12, %rdi
	call	malloc@PLT
	movq	%rax, 104(%rbp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L205
	.p2align 4,,10
	.p2align 3
.L204:
	movq	8(%rbx), %rdi
	movq	%r12, %rdx
.LEHB8:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L213:
	.cfi_restore_state
	movl	$1, %ecx
	movl	$8, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	call	printf@PLT
.L203:
	movl	$1, %edi
	call	exit@PLT
.L214:
	movl	$1, %ecx
	movl	$8, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	call	printf@PLT
	jmp	.L203
.L205:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE8:
	jmp	.L203
.L209:
	movq	%rax, %rbx
	jmp	.L207
	.section	.gcc_except_table
.LLSDA8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8165-.LLSDACSB8165
.LLSDACSB8165:
	.uleb128 .LEHB8-.LFB8165
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L209-.LFB8165
	.uleb128 0
.LLSDACSE8165:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8165
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold:
.LFSB8165:
.L207:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	104(%rbp), %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
	.cfi_endproc
.LFE8165:
	.section	.gcc_except_table
.LLSDAC8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8165-.LLSDACSBC8165
.LLSDACSBC8165:
	.uleb128 .LEHB9-.LCOLDB21
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC8165:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold
.LCOLDE21:
	.text
.LHOTE21:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC23:
	.string	"wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC24:
	.string	"wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC25:
	.string	"wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB26:
	.text
.LHOTB26:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE:
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
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
	je	.L245
	movl	%esi, %r13d
	cmpq	$1, %rcx
	jbe	.L246
	movq	8(%rdx), %rsi
	movq	%rdi, %rbp
	movq	%rdx, %r12
	xorl	%eax, %eax
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L218:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L247
.L220:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L218
	movq	0(%rbp), %rdi
	cmpq	624(%rdi), %rdx
	jnb	.L219
	movq	632(%rdi), %rdi
	cmpq	$0, (%rdi,%rdx,8)
	jne	.L218
.L219:
	leaq	.LC24(%rip), %rdi
	movq	%rcx, %rdx
	movl	%r13d, %esi
	xorl	%eax, %eax
.LEHB10:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L247:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L221
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L222:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L221
.L225:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L222
	movl	$112, %edi
	call	_Znwm@PLT
.LEHE10:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r8
	movl	%r13d, %ecx
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB11:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
.LEHE11:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L248
	movq	%r14, (%rax,%rbx,8)
.L215:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L249
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
.L221:
	.cfi_restore_state
	movl	$112, %edi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r8
	movl	%r13d, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB13:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
.LEHE13:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L250
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB14:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L251
	cmpq	$0, (%rdx,%rax,8)
	jne	.L215
	movq	(%r12), %rsi
	leaq	.LC25(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L250:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L251:
	orq	$-1, %rsi
.L243:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L246:
	leaq	.LC23(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L245:
	leaq	.LC22(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
.LEHE14:
	movl	$1, %edi
	call	exit@PLT
.L248:
	movq	%rbx, %rsi
	jmp	.L243
.L249:
	call	__stack_chk_fail@PLT
.L236:
	movq	%rax, %rbp
	jmp	.L232
.L235:
	movq	%rax, %rbx
	jmp	.L230
	.section	.gcc_except_table
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB10-.LFB8156
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8156
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L235-.LFB8156
	.uleb128 0
	.uleb128 .LEHB12-.LFB8156
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB8156
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L236-.LFB8156
	.uleb128 0
	.uleb128 .LEHB14-.LFB8156
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.LFSB8156:
.L232:
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
	jne	.L244
	movq	%rbp, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L230:
	movl	$112, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L244
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
.L244:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB15-.LCOLDB26
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold
.LCOLDE26:
	.text
.LHOTE26:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB8167:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB8168:
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
	movsd	176(%rax), %xmm1
	movsd	168(%rax), %xmm0
	leaq	608(%rdx), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rcx
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 56(%rbx)
	movsd	48(%rbx), %xmm3
	movsd	168(%rax), %xmm0
	movsd	176(%rax), %xmm1
	leaq	608(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
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
.LFE8168:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB8169:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB8170:
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
	movsd	176(%rax), %xmm1
	movsd	168(%rax), %xmm0
	leaq	608(%rdx), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rcx
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 56(%rbx)
	movsd	40(%rbx), %xmm2
	movsd	168(%rax), %xmm0
	movsd	176(%rax), %xmm1
	leaq	608(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
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
.LFE8170:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB8171:
	.cfi_startproc
	movl	72(%rdi), %eax
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\nParams: Delay: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB8172:
	.cfi_startproc
	movl	%esi, %eax
	testl	%esi, %esi
	je	.L264
	movl	%esi, 72(%rdi)
	ret
.L264:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	leaq	.LC27(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB8173:
	.cfi_startproc
	movq	$0, 80(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
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
