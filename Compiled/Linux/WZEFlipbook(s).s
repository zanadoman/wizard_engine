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
.LFB8371:
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
.LFE8371:
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
.LFB8147:
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
.LFE8147:
	.size	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.type	_ZN3wze6engine6actors5actor9flipbooksD2Ev, @function
_ZN3wze6engine6actors5actor9flipbooksD2Ev:
.LFB8153:
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
.LFE8153:
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
.LFB8159:
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
.LFE8159:
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
.LFB8160:
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
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %rdx
	testq	%rbp, %rbp
	je	.L60
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%r12,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L61
	cmpq	%rdx, %rcx
	jnb	.L62
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.L62
.L61:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L63
.L60:
	cmpq	$1, %rdx
	jbe	.L64
	movq	24(%r13), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L65:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L66
.L72:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L67
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L72
.L66:
	movq	(%rcx,%rbx,8), %r14
	leaq	0(,%rbx,8), %r15
	testq	%r14, %r14
	je	.L69
	movq	104(%r14), %rdi
	call	free@PLT
	movl	$112, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L69:
	cmpq	%rdx, %rbx
	jnb	.L98
	movq	$0, (%rcx,%r15)
.L67:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L65
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
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
.L99:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L78:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L97
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L100
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
	testq	%rdx, %rdx
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
.L100:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L77
.L62:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
	movq	%rbx, %rsi
	jmp	.L97
	.cfi_endproc
.LFE8160:
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
.LFB8161:
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
	movq	(%rsi), %rcx
	movq	16(%rdi), %rdi
	testq	%rcx, %rcx
	je	.L102
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L103:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L102
.L105:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L103
	cmpq	%rdi, %rdx
	jnb	.L104
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L103
.L104:
	leaq	.LC8(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L102:
	cmpq	$1, %rdi
	jbe	.L106
	movq	24(%r12), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L114:
	movq	8(%rbp), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L107
.L108:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L109
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L108
	.p2align 4,,10
	.p2align 3
.L107:
	movq	(%rsi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L111
	movq	104(%r13), %rdi
	call	free@PLT
	movl	$112, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L111:
	cmpq	%rdi, %rbx
	jnb	.L141
	movq	$0, (%rsi,%r14)
.L109:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L113
	movq	0(%rbp), %rcx
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L113:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L142
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
.L142:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L120:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L143
	cmpq	$0, (%rsi,%rax,8)
	jne	.L144
	movq	%rax, %rcx
.L115:
	cmpq	$1, %rcx
	jne	.L120
.L119:
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
.L106:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L138
	orq	$-1, %rsi
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L144:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L119
.L141:
	movq	%rbx, %rsi
.L140:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L143:
	movq	%rax, %rsi
	jmp	.L140
	.cfi_endproc
.LFE8161:
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
.LFB8162:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L150
	cmpq	16(%rdi), %rsi
	jnb	.L147
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L147
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L147:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L150:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6actors5actor9flipbooksixEy, .-_ZN3wze6engine6actors5actor9flipbooksixEy
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE:
.LFB8164:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8164
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
	movl	248(%rdx), %eax
	movq	%rdi, %rbx
	movupd	216(%rdx), %xmm1
	movq	%rsi, (%rdi)
	movl	%eax, 16(%rdi)
	movabsq	$283124260995072, %rax
	movq	%rdx, 8(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 104(%rdi)
	movl	$-1, 20(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rax, 32(%rdi)
	movl	%ecx, 72(%rdi)
	movq	$0, 80(%rdi)
	movl	$0, 88(%rdi)
	movups	%xmm1, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	testq	%r9, %r9
	jne	.L160
.L152:
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
.L160:
	.cfi_restore_state
	leaq	0(,%r9,8), %r14
	movq	%r8, %r13
	movq	%r14, %rdi
	call	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L161
	movq	%r14, %rdx
	movq	%rax, %rsi
	movq	%r13, %rdi
.LEHB0:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L152
.L161:
	movq	%rbp, %rdx
	movl	$8, %esi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L156:
	movq	%rax, %rbp
	jmp	.L154
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8164-.LLSDACSB8164
.LLSDACSB8164:
	.uleb128 .LEHB0-.LFB8164
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L156-.LFB8164
	.uleb128 0
.LLSDACSE8164:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8164
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold:
.LFSB8164:
.L154:
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
.LFE8164:
	.section	.gcc_except_table
.LLSDAC8164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8164-.LLSDACSBC8164
.LLSDACSBC8164:
	.uleb128 .LEHB1-.LCOLDB14
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8164:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE.cold
.LCOLDE14:
	.text
.LHOTE14:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC16:
	.string	"wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC17:
	.string	"wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC18:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC19:
	.string	"wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB20:
	.text
.LHOTB20:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
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
	je	.L192
	movl	%esi, %r14d
	cmpq	$1, %rcx
	jbe	.L193
	movq	%rdi, %r12
	movq	%rdx, %r13
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L164:
	movq	0(%r13,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L165
	movq	(%r12), %rcx
	cmpq	728(%rcx), %rdx
	jnb	.L166
	movq	736(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L166
.L165:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L164
	movq	16(%r12), %rax
	cmpq	$1, %rax
	jbe	.L167
	movq	24(%r12), %rdx
	movl	$1, %ebx
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L168:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L167
.L171:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L168
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
	jnb	.L194
	movq	%r15, (%rax,%rbx,8)
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L167:
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
	je	.L195
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
	jnc	.L196
	cmpq	$0, (%rdx,%rax,8)
	je	.L197
.L162:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L198
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
.L166:
	.cfi_restore_state
	leaq	.LC17(%rip), %rdi
	movq	%rbp, %rdx
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L193:
	leaq	.LC16(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L192:
	leaq	.LC15(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L198:
	call	__stack_chk_fail@PLT
.L197:
	leaq	.LC19(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L196:
	orq	$-1, %rsi
.L190:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L195:
	leaq	.LC18(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE6:
	movl	$1, %edi
	call	exit@PLT
.L194:
	movq	%rbx, %rsi
	jmp	.L190
.L183:
	movq	%rax, %rbp
	jmp	.L178
.L182:
	movq	%rax, %rbx
	jmp	.L176
	.section	.gcc_except_table
.LLSDA8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8155-.LLSDACSB8155
.LLSDACSB8155:
	.uleb128 .LEHB2-.LFB8155
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8155
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L182-.LFB8155
	.uleb128 0
	.uleb128 .LEHB4-.LFB8155
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8155
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L183-.LFB8155
	.uleb128 0
	.uleb128 .LEHB6-.LFB8155
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8155:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8155
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.LFSB8155:
.L178:
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
	jne	.L191
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.L176:
	movl	$112, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L191
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE7:
.L191:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8155:
	.section	.gcc_except_table
.LLSDAC8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8155-.LLSDACSBC8155
.LLSDACSBC8155:
	.uleb128 .LEHB7-.LCOLDB20
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8155:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold
.LCOLDE20:
	.text
.LHOTE20:
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"neo::array=: Arrays[%lld] must not be NULL\nParams: Arrays(type, length): %ld, %ld\n"
	.align 8
.LC22:
	.string	"neo::array=: Arrays[%lld] must not be Self\nParams: Arrays(type, length): %ld, %ld\n"
	.align 8
.LC23:
	.string	"neo::array=: Memory allocation failed\nParams: Arrays(type, length): %ld %ld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE:
.LFB8167:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8167
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
	movl	248(%rdx), %eax
	movupd	216(%rdx), %xmm1
	movq	%rsi, (%rdi)
	movl	%eax, 16(%rdi)
	movabsq	$283124260995072, %rax
	movq	%rdx, 8(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 104(%rdi)
	movl	$-1, 20(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rax, 32(%rdi)
	movl	%ecx, 72(%rdi)
	movq	$0, 80(%rdi)
	movl	$0, 88(%rdi)
	movups	%xmm1, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	testq	%r8, %r8
	je	.L212
	leaq	96(%rdi), %rax
	movq	%r8, %rbx
	cmpq	%r8, %rax
	je	.L213
	movq	(%r8), %rdx
	xorl	%esi, %esi
	movq	%rdx, 96(%rdi)
	leaq	0(,%rdx,8), %r12
	testq	%rdx, %rdx
	je	.L203
	movq	%r12, %rdi
	call	malloc@PLT
	movq	%rax, 104(%rbp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L204
	.p2align 4,,10
	.p2align 3
.L203:
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
.L212:
	.cfi_restore_state
	movl	$1, %ecx
	movl	$8, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	.LC21(%rip), %rdi
	call	printf@PLT
.L202:
	movl	$1, %edi
	call	exit@PLT
.L213:
	movl	$1, %ecx
	movl	$8, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	.LC22(%rip), %rdi
	call	printf@PLT
	jmp	.L202
.L204:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE8:
	jmp	.L202
.L208:
	movq	%rax, %rbx
	jmp	.L206
	.section	.gcc_except_table
.LLSDA8167:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8167-.LLSDACSB8167
.LLSDACSB8167:
	.uleb128 .LEHB8-.LFB8167
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L208-.LFB8167
	.uleb128 0
.LLSDACSE8167:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8167
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold:
.LFSB8167:
.L206:
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
.LFE8167:
	.section	.gcc_except_table
.LLSDAC8167:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8167-.LLSDACSBC8167
.LLSDACSBC8167:
	.uleb128 .LEHB9-.LCOLDB24
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC8167:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE.cold
.LCOLDE24:
	.text
.LHOTE24:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC26:
	.string	"wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC27:
	.string	"wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %lld\n"
	.align 8
.LC28:
	.string	"wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB29:
	.text
.LHOTB29:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE:
.LFB8158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8158
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
	je	.L244
	movl	%esi, %r13d
	cmpq	$1, %rcx
	jbe	.L245
	movq	8(%rdx), %rsi
	movq	%rdi, %rbp
	movq	%rdx, %r12
	xorl	%eax, %eax
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L217:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L246
.L219:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L217
	movq	0(%rbp), %rdi
	cmpq	728(%rdi), %rdx
	jnb	.L218
	movq	736(%rdi), %rdi
	cmpq	$0, (%rdi,%rdx,8)
	jne	.L217
.L218:
	leaq	.LC27(%rip), %rdi
	movq	%rcx, %rdx
	movl	%r13d, %esi
	xorl	%eax, %eax
.LEHB10:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L246:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L220
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L221:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L220
.L224:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L221
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
	jnb	.L247
	movq	%r14, (%rax,%rbx,8)
.L214:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L248
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
.L220:
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
	je	.L249
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
	jnc	.L250
	cmpq	$0, (%rdx,%rax,8)
	jne	.L214
	movq	(%r12), %rsi
	leaq	.LC28(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L249:
	leaq	.LC18(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L250:
	orq	$-1, %rsi
.L242:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L245:
	leaq	.LC26(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L244:
	leaq	.LC25(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
.LEHE14:
	movl	$1, %edi
	call	exit@PLT
.L247:
	movq	%rbx, %rsi
	jmp	.L242
.L248:
	call	__stack_chk_fail@PLT
.L235:
	movq	%rax, %rbp
	jmp	.L231
.L234:
	movq	%rax, %rbx
	jmp	.L229
	.section	.gcc_except_table
.LLSDA8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8158-.LLSDACSB8158
.LLSDACSB8158:
	.uleb128 .LEHB10-.LFB8158
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8158
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L234-.LFB8158
	.uleb128 0
	.uleb128 .LEHB12-.LFB8158
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB8158
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L235-.LFB8158
	.uleb128 0
	.uleb128 .LEHB14-.LFB8158
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE8158:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8158
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.LFSB8158:
.L231:
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
	jne	.L243
	movq	%rbp, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L229:
	movl	$112, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L243
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
.L243:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8158:
	.section	.gcc_except_table
.LLSDAC8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8158-.LLSDACSBC8158
.LLSDACSBC8158:
	.uleb128 .LEHB15-.LCOLDB29
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8158:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold
.LCOLDE29:
	.text
.LHOTE29:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB8169:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.actors[].flipbooks[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB8170:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L270
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L255
	jne	.L255
	ucomisd	%xmm3, %xmm1
	jp	.L255
	jne	.L255
	movq	$0x000000000, 56(%rdi)
.L263:
	pxor	%xmm0, %xmm0
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L255:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	48(%rbx), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 56(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L259
	jne	.L259
	ucomisd	%xmm3, %xmm1
	jp	.L259
	je	.L263
.L259:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L262:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L270:
	.cfi_restore_state
	leaq	.LC30(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB8171:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"wze::engine.actors[].flipbooks[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB8172:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L290
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L275
	jne	.L275
	ucomisd	%xmm1, %xmm3
	jp	.L275
	jne	.L275
	movq	$0x000000000, 56(%rdi)
.L283:
	pxor	%xmm0, %xmm0
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L275:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 56(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L279
	jne	.L279
	ucomisd	%xmm1, %xmm3
	jp	.L279
	je	.L283
.L279:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L282:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L290:
	.cfi_restore_state
	leaq	.LC31(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB8173:
	.cfi_startproc
	movl	72(%rdi), %eax
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"wze::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\nParams: Delay: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB8174:
	.cfi_startproc
	movl	%esi, %eax
	testl	%esi, %esi
	je	.L297
	movl	%esi, 72(%rdi)
	ret
.L297:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	leaq	.LC32(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv:
.LFB8175:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	$0, 39(%rdi)
	jne	.L298
	movzbl	38(%rdi), %eax
	testb	%al, %al
	je	.L301
.L298:
	ret
	.p2align 4,,10
	.p2align 3
.L301:
	movq	96(%rdi), %rax
	subq	$1, %rax
	cmpq	80(%rdi), %rax
	setne	%al
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv:
.LFB8176:
	.cfi_startproc
	movq	80(%rdi), %rax
	ret
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB8177:
	.cfi_startproc
	movq	$0, 80(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8177:
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
