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
.LFB8381:
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
.LFE8381:
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
.LFB8156:
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
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
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
.LFE8156:
	.size	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.type	_ZN3wze6engine6actors5actor9flipbooksD2Ev, @function
_ZN3wze6engine6actors5actor9flipbooksD2Ev:
.LFB8159:
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
	movq	112(%rbp), %rdi
	addq	$1, %rbx
	call	free@PLT
	movq	%rbp, %rdi
	movl	$120, %esi
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
.LFE8159:
	.size	_ZN3wze6engine6actors5actor9flipbooksD2Ev, .-_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.globl	_ZN3wze6engine6actors5actor9flipbooksD1Ev
	.set	_ZN3wze6engine6actors5actor9flipbooksD1Ev,_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.type	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy, @function
_ZN3wze6engine6actors5actor9flipbooks6DeleteEy:
.LFB8165:
	.cfi_startproc
	cmpq	16(%rdi), %rsi
	jb	.L65
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L65:
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
	movq	24(%rdi), %rax
	movq	%rdi, %rbx
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L44
	movq	112(%r12), %rdi
	call	free@PLT
	movl	$120, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L66
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L44
	cmpq	$1, %rax
	je	.L44
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L50:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L67
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L68
	cmpq	$1, %rsi
	jne	.L50
.L49:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
.L44:
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
.L68:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L49
.L67:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L66:
	leaq	.LC4(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy, .-_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB8166:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L70
	movq	24(%rdi), %rcx
	movq	%rdi, %r14
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L77:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L72
.L71:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L73
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L71
.L72:
	movq	(%rcx,%rbx,8), %r13
	leaq	0(,%rbx,8), %r15
	testq	%r13, %r13
	je	.L75
	movq	112(%r13), %rdi
	call	free@PLT
	movl	$120, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r14), %rdx
	movq	24(%r14), %rcx
.L75:
	cmpq	%rdx, %rbx
	jnb	.L97
	movq	$0, (%rcx,%r15)
.L73:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L77
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L98
.L94:
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
.L98:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L83:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L96
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L99
	movq	%rsi, %rax
.L78:
	cmpq	$1, %rax
	jne	.L83
.L82:
	leaq	16(%r14), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	jmp	.L94
.L70:
	testq	%rdx, %rdx
	jne	.L94
	orq	$-1, %rsi
.L96:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L99:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L82
.L97:
	movq	%rbx, %rsi
	jmp	.L96
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.actors[].flipbooks.Purge(): KeepFlipbookIDs must not be NULL\nParams: KeepFlipbookIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
.LFB8167:
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
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	testq	%rsi, %rsi
	je	.L101
	movq	16(%rdi), %rcx
	movq	%rdi, %r13
	cmpq	$1, %rcx
	jbe	.L132
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L110:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L104
.L105:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L106
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L105
	.p2align 4,,10
	.p2align 3
.L104:
	movq	(%rdi,%rbx,8), %r12
	leaq	0(,%rbx,8), %r14
	testq	%r12, %r12
	je	.L108
	movq	112(%r12), %rdi
	call	free@PLT
	movq	%r12, %rdi
	movl	$120, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rcx
	movq	24(%r13), %rdi
.L108:
	cmpq	%rcx, %rbx
	jnb	.L133
	movq	$0, (%rdi,%r14)
.L106:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L110
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L134
.L129:
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
.L134:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L116:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L131
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L135
	movq	%rsi, %rax
.L111:
	cmpq	$1, %rax
	jne	.L116
.L115:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
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
.L132:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L129
	orq	$-1, %rsi
.L131:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L135:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L115
.L101:
	leaq	.LC5(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L133:
	movq	%rbx, %rsi
	jmp	.L131
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"wze::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: FlipbookID: %lld\n"
	.align 8
.LC7:
	.string	"wze::engine.actors[].flipbooks[]: Flipbook does not exist\nParams: FlipbookID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksixEy
	.type	_ZN3wze6engine6actors5actor9flipbooksixEy, @function
_ZN3wze6engine6actors5actor9flipbooksixEy:
.LFB8168:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L141
	cmpq	16(%rdi), %rsi
	jnb	.L138
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L138
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L138:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L141:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor9flipbooksixEy, .-_ZN3wze6engine6actors5actor9flipbooksixEy
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE:
.LFB8170:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8170
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
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	256(%rdx), %eax
	movq	%rdi, %rbx
	movupd	224(%rdx), %xmm1
	movq	56(%rsp), %r12
	movq	%rsi, (%rdi)
	movl	%eax, 16(%rdi)
	movq	48(%rsp), %r13
	movabsq	$283124260995072, %rax
	movq	%rdx, 8(%rdi)
	movq	$0, 104(%rdi)
	movq	$0, 112(%rdi)
	movl	$-1, 20(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movl	%r8d, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movups	%xmm1, 48(%rdi)
	movups	%xmm0, 64(%rdi)
	testq	%r12, %r12
	jne	.L151
.L143:
	movq	%r12, 104(%rbx)
	movq	%rbp, %rdi
	movq	%rbp, 112(%rbx)
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
.L151:
	.cfi_restore_state
	leaq	0(,%r12,8), %r14
	movq	%r14, %rdi
	call	malloc@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L152
	movq	%r14, %rdx
	movq	%rax, %rsi
	movq	%r13, %rdi
.LEHB0:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L143
.L152:
	movq	%r12, %rdx
	movl	$8, %esi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L147:
	movq	%rax, %rbp
	jmp	.L145
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8170-.LLSDACSB8170
.LLSDACSB8170:
	.uleb128 .LEHB0-.LFB8170
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L147-.LFB8170
	.uleb128 0
.LLSDACSE8170:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8170
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold:
.LFSB8170:
.L145:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	112(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE8170:
	.section	.gcc_except_table
.LLSDAC8170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8170-.LLSDACSBC8170
.LLSDACSBC8170:
	.uleb128 .LEHB1-.LCOLDB11
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC8170:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold
.LCOLDE11:
	.text
.LHOTE11:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
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
.LFB8161:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8161
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %r8d
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	subq	$40, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L182
	cmpq	$1, %rcx
	jbe	.L183
	movq	%rdx, %r12
	movq	%rcx, %r13
	movq	%rdx, %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L155:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L156
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdx
	cmpq	312(%rdx), %rcx
	jnb	.L157
	movq	320(%rdx), %rdx
	cmpq	$0, (%rdx,%rcx,8)
	je	.L157
.L156:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L155
	movq	-72(%rbp), %rdi
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L158
	movq	24(%rdi), %rdx
	movl	$1, %r14d
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L159:
	addq	$1, %r14
	cmpq	%rax, %r14
	je	.L158
.L162:
	cmpq	$0, (%rdx,%r14,8)
	jne	.L159
	movl	$120, %edi
	movl	%r8d, -80(%rbp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	-72(%rbp), %rbx
	movl	-80(%rbp), %r8d
	movq	%r14, %rcx
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	pushq	%r13
	pushq	%r12
.LEHB3:
	.cfi_escape 0x2e,0x10
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
.LEHE3:
	popq	%rcx
	movq	24(%rbx), %rax
	popq	%rsi
	cmpq	16(%rbx), %r14
	jnb	.L184
	movq	%r15, (%rax,%r14,8)
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L158:
	movl	$120, %edi
	movl	%r8d, -80(%rbp)
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	-72(%rbp), %r15
	movl	-80(%rbp), %r8d
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	16(%r15), %rcx
	movq	8(%r15), %rdx
	movq	(%r15), %rsi
	pushq	%r13
	pushq	%r12
.LEHB5:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
.LEHE5:
	movq	16(%r15), %rsi
	popq	%rax
	popq	%rdx
	movq	24(%r15), %rdi
	movq	%r14, -64(%rbp)
	movq	%rsi, -80(%rbp)
	addq	$1, %rsi
	movq	%rsi, 16(%r15)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r15)
	testq	%rax, %rax
	je	.L185
	movq	-72(%rbp), %r15
	leaq	-64(%rbp), %rdi
	movq	16(%r15), %rdx
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB6:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%r15), %rax
	movq	24(%r15), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L186
	movq	(%rdx,%rcx,8), %r15
	testq	%r15, %r15
	je	.L187
.L153:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L188
	leaq	-40(%rbp), %rsp
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L157:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movq	%rbx, %rdx
	movl	%r8d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L183:
	leaq	.LC13(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L182:
	leaq	.LC12(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L188:
	call	__stack_chk_fail@PLT
.L187:
	leaq	.LC16(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L186:
	leaq	.LC4(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L185:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L184:
	leaq	.LC4(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	movl	$1, %edi
	call	exit@PLT
.L174:
	movq	%rax, %rbx
	jmp	.L169
.L173:
	movq	%rax, %rbx
	jmp	.L167
	.section	.gcc_except_table
.LLSDA8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8161-.LLSDACSB8161
.LLSDACSB8161:
	.uleb128 .LEHB2-.LFB8161
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8161
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L173-.LFB8161
	.uleb128 0
	.uleb128 .LEHB4-.LFB8161
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8161
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L174-.LFB8161
	.uleb128 0
	.uleb128 .LEHB6-.LFB8161
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8161:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8161
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.LFSB8161:
.L169:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movl	$120, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L181
.L170:
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L167:
	movl	$120, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	je	.L170
.L181:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8161:
	.section	.gcc_except_table
.LLSDAC8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8161-.LLSDACSBC8161
.LLSDACSBC8161:
	.uleb128 .LEHB7-.LCOLDB17
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8161:
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
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE:
.LFB8173:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8173
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
	movl	256(%rdx), %eax
	movupd	224(%rdx), %xmm1
	movq	%rsi, (%rdi)
	movl	%eax, 16(%rdi)
	movabsq	$283124260995072, %rax
	movq	%rdx, 8(%rdi)
	movq	$0, 104(%rdi)
	movq	$0, 112(%rdi)
	movl	$-1, 20(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movl	%r8d, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movups	%xmm1, 48(%rdi)
	movups	%xmm0, 64(%rdi)
	testq	%r9, %r9
	je	.L202
	leaq	104(%rdi), %rax
	movq	%r9, %rbx
	cmpq	%r9, %rax
	je	.L203
	movq	(%r9), %rdx
	xorl	%esi, %esi
	movq	%rdx, 104(%rdi)
	leaq	0(,%rdx,8), %r12
	testq	%rdx, %rdx
	je	.L193
	movq	%r12, %rdi
	call	malloc@PLT
	movq	%rax, 112(%rbp)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L194
	.p2align 4,,10
	.p2align 3
.L193:
	movq	8(%rbx), %rdi
	movq	%r12, %rdx
.LEHB8:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L202:
	.cfi_restore_state
	movl	$1, %ecx
	movl	$8, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdi
	call	printf@PLT
.L192:
	movl	$1, %edi
	call	exit@PLT
.L203:
	movl	$1, %ecx
	movl	$8, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdi
	call	printf@PLT
	jmp	.L192
.L194:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE8:
	jmp	.L192
.L198:
	movq	%rax, %rbx
	jmp	.L196
	.section	.gcc_except_table
.LLSDA8173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8173-.LLSDACSB8173
.LLSDACSB8173:
	.uleb128 .LEHB8-.LFB8173
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L198-.LFB8173
	.uleb128 0
.LLSDACSE8173:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8173
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold:
.LFSB8173:
.L196:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	112(%rbp), %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
	.cfi_endproc
.LFE8173:
	.section	.gcc_except_table
.LLSDAC8173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8173-.LLSDACSBC8173
.LLSDACSBC8173:
	.uleb128 .LEHB9-.LCOLDB21
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC8173:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold
.LCOLDE21:
	.text
.LHOTE21:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs: %p\n"
	.align 8
.LC23:
	.string	"wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs: %p\n"
	.align 8
.LC24:
	.string	"wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs: %p\n"
	.align 8
.LC25:
	.string	"wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: Delay: %d, TextureIDs: %p\n"
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
.LFB8164:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8164
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L233
	movq	(%rdx), %rdx
	movl	%esi, %r13d
	cmpq	$1, %rdx
	jbe	.L234
	movq	8(%r12), %rsi
	movq	%rdi, %rbp
	xorl	%eax, %eax
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L207:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L235
.L209:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L207
	movq	0(%rbp), %rdi
	cmpq	312(%rdi), %rcx
	jnb	.L208
	movq	320(%rdi), %rdi
	cmpq	$0, (%rdi,%rcx,8)
	jne	.L207
.L208:
	leaq	.LC24(%rip), %rdi
	movq	%r12, %rdx
	movl	%r13d, %esi
	xorl	%eax, %eax
.LEHB10:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L235:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L210
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L211:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L210
.L214:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L211
	movl	$120, %edi
	call	_Znwm@PLT
.LEHE10:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r9
	movl	%r13d, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB11:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
.LEHE11:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L236
	movq	%r14, (%rax,%rbx,8)
.L204:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L237
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r14, %rax
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
.L210:
	.cfi_restore_state
	movl	$120, %edi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	16(%rbp), %rcx
	movq	8(%rbp), %rdx
	movq	%r12, %r9
	movq	0(%rbp), %rsi
	movl	%r13d, %r8d
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB13:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
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
	je	.L238
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB14:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L239
	movq	(%rdx,%rcx,8), %r14
	testq	%r14, %r14
	jne	.L204
	leaq	.LC25(%rip), %rdi
	movq	%r12, %rdx
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L238:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L239:
	leaq	.LC4(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L234:
	leaq	.LC23(%rip), %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L233:
	leaq	.LC22(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L236:
	leaq	.LC4(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE14:
	movl	$1, %edi
	call	exit@PLT
.L237:
	call	__stack_chk_fail@PLT
.L225:
	movq	%rax, %rbp
	jmp	.L221
.L224:
	movq	%rax, %rbx
	jmp	.L219
	.section	.gcc_except_table
.LLSDA8164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8164-.LLSDACSB8164
.LLSDACSB8164:
	.uleb128 .LEHB10-.LFB8164
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8164
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L224-.LFB8164
	.uleb128 0
	.uleb128 .LEHB12-.LFB8164
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB8164
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L225-.LFB8164
	.uleb128 0
	.uleb128 .LEHB14-.LFB8164
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE8164:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8164
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.LFSB8164:
.L221:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$120, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L232
	movq	%rbp, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L219:
	movl	$120, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L232
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
.L232:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8164:
	.section	.gcc_except_table
.LLSDAC8164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8164-.LLSDACSBC8164
.LLSDACSBC8164:
	.uleb128 .LEHB15-.LCOLDB26
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC8164:
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
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB8176:
	.cfi_startproc
	movq	112(%rdi), %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv:
.LFB8178:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8178:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB8179:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.actors[].flipbooks[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB8180:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L261
	movq	8(%rdi), %rax
	movsd	56(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L246
	jne	.L246
	ucomisd	%xmm3, %xmm1
	jp	.L246
	jne	.L246
	movq	$0x000000000, 64(%rdi)
.L254:
	pxor	%xmm0, %xmm0
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L246:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	56(%rbx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L250
	jne	.L250
	ucomisd	%xmm3, %xmm1
	jp	.L250
	je	.L254
.L250:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L253:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L261:
	.cfi_restore_state
	leaq	.LC27(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB8181:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"wze::engine.actors[].flipbooks[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB8182:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L281
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L266
	jne	.L266
	ucomisd	%xmm1, %xmm3
	jp	.L266
	jne	.L266
	movq	$0x000000000, 64(%rdi)
.L274:
	pxor	%xmm0, %xmm0
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L266:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L270
	jne	.L270
	ucomisd	%xmm1, %xmm3
	jp	.L270
	je	.L274
.L270:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L273:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 56(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L281:
	.cfi_restore_state
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB8183:
	.cfi_startproc
	movl	80(%rdi), %eax
	ret
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"wze::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\nParams: Delay: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB8184:
	.cfi_startproc
	movl	%esi, %eax
	testl	%esi, %esi
	je	.L288
	movl	%esi, 80(%rdi)
	ret
.L288:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	leaq	.LC29(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8184:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv:
.LFB8185:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	$0, 39(%rdi)
	jne	.L289
	movzbl	38(%rdi), %eax
	testb	%al, %al
	je	.L292
.L289:
	ret
	.p2align 4,,10
	.p2align 3
.L292:
	movq	104(%rdi), %rax
	subq	$1, %rax
	cmpq	88(%rdi), %rax
	setne	%al
	ret
	.cfi_endproc
.LFE8185:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv:
.LFB8186:
	.cfi_startproc
	movq	88(%rdi), %rax
	ret
	.cfi_endproc
.LFE8186:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB8187:
	.cfi_startproc
	movq	$0, 88(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8187:
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
