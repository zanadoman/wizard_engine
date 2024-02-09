	.file	"WZEOverlapbox(es).cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Insert(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0, @function
_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0:
.LFB8375:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	cmpq	%rbx, %rsi
	jb	.L15
	testq	%rdx, %rdx
	jne	.L16
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
.L16:
	.cfi_restore_state
	addq	%rdx, %rsi
	movq	%rdi, %r12
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L17
	movq	(%r12), %rdx
	leaq	(%rbx,%rbp), %rdi
	leaq	-1(%rdx), %rcx
	cmpq	%rdi, %rcx
	jb	.L5
	movq	%rbp, %rsi
	salq	$4, %rdx
	negq	%rsi
	addq	%rax, %rdx
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L6:
	movdqu	-16(%rdx,%rsi), %xmm0
	subq	$1, %rcx
	subq	$16, %rdx
	movups	%xmm0, (%rdx)
	cmpq	%rdi, %rcx
	jnb	.L6
.L5:
	cmpq	%rdi, %rbx
	jnb	.L1
	salq	$4, %rbx
	salq	$4, %rdi
	leaq	(%rax,%rbx), %rdx
	addq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L7:
	movq	$0, (%rdx)
	addq	$16, %rdx
	movq	$0, -8(%rdx)
	cmpq	%rdx, %rax
	jne	.L7
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L17:
	leaq	.LC1(%rip), %rdi
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8375:
	.size	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0, .-_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC3:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC4:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0:
.LFB8376:
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
	jnb	.L42
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L43
	testq	%rbx, %rbx
	je	.L18
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L22
	cmpq	%rcx, %rsi
	jnb	.L29
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L26
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L44
.L26:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L31:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L31
	.p2align 4,,10
	.p2align 3
.L29:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L45
.L18:
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
.L44:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L27:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L27
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L29
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L22:
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
.L42:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	leaq	.LC3(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L45:
	leaq	.LC4(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8376:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_:
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
	je	.L50
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L51
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L51:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L50:
	leaq	.LC5(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.type	_ZN3wze6engine6actors5actor12overlapboxesD2Ev, @function
_ZN3wze6engine6actors5actor12overlapboxesD2Ev:
.LFB8150:
	.cfi_startproc
	movq	16(%rdi), %rdx
	movq	24(%rdi), %rax
	cmpq	$1, %rdx
	jbe	.L58
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$1, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L56:
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L54
	movl	$120, %esi
	addq	$1, %rbx
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	cmpq	%rdx, %rbx
	jb	.L56
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L54:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L56
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L58:
	movq	%rax, %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6actors5actor12overlapboxesD2Ev, .-_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
	.set	_ZN3wze6engine6actors5actor12overlapboxesD1Ev,_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"wze::engine.actors[].overlapboxes.Delete(): Illegal deletion of NULL Overlapbox\nParams: ID: %lld\n"
	.align 8
.LC7:
	.string	"wze::engine.actors[].overlapboxes.Delete(): Overlapbox does not exist\nParams: ID: %lld\n"
	.align 8
.LC8:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.type	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy, @function
_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy:
.LFB8153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rsi, %rsi
	je	.L74
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L63
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L63
	movl	$120, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L75
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L76
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L70:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L73
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L77
	cmpq	$1, %rsi
	jne	.L70
.L69:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L77:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L69
.L75:
	movq	%rbx, %rsi
.L73:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	leaq	.LC6(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy, .-_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE:
.LFB8154:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	16(%rdi), %rdx
	testq	%rbp, %rbp
	je	.L79
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L82:
	movq	(%r12,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L80
	cmpq	%rdx, %rcx
	jnb	.L81
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.L81
.L80:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L82
.L79:
	cmpq	$1, %rdx
	jbe	.L83
	movq	24(%r13), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L84:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L85
.L91:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L86
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L91
.L85:
	movq	(%rcx,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r14
	testq	%rdi, %rdi
	je	.L88
	movl	$120, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L88:
	cmpq	%rdx, %rbx
	jnb	.L117
	movq	$0, (%rcx,%r14)
.L86:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L84
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L118
.L114:
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
.L118:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L97:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L116
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L119
	movq	%rsi, %rax
.L92:
	cmpq	$1, %rax
	jne	.L97
.L96:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
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
.L83:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L114
	orq	$-1, %rsi
.L116:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L119:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L96
.L81:
	leaq	.LC9(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L117:
	movq	%rbx, %rsi
	jmp	.L116
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE:
.LFB8157:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rsi), %rcx
	movq	16(%rdi), %rdi
	testq	%rcx, %rcx
	je	.L121
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L122:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L121
.L124:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L122
	cmpq	%rdi, %rdx
	jnb	.L123
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L122
.L123:
	leaq	.LC10(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L121:
	cmpq	$1, %rdi
	jbe	.L125
	movq	24(%r12), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L133:
	movq	8(%rbp), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L126
.L127:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L128
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L127
	.p2align 4,,10
	.p2align 3
.L126:
	movq	(%rsi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L130
	movl	$120, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L130:
	cmpq	%rdi, %rbx
	jnb	.L160
	movq	$0, (%rsi,%r13)
.L128:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L132
	movq	0(%rbp), %rcx
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L132:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L161
.L157:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L161:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L139:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L162
	cmpq	$0, (%rsi,%rax,8)
	jne	.L163
	movq	%rax, %rcx
.L134:
	cmpq	$1, %rcx
	jne	.L139
.L138:
	leaq	16(%r12), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L125:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L157
	orq	$-1, %rsi
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L163:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L138
.L160:
	movq	%rbx, %rsi
.L159:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L162:
	movq	%rax, %rsi
	jmp	.L159
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\nParams: ID: %lld\n"
	.align 8
.LC12:
	.string	"wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesixEy
	.type	_ZN3wze6engine6actors5actor12overlapboxesixEy, @function
_ZN3wze6engine6actors5actor12overlapboxesixEy:
.LFB8158:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L169
	cmpq	16(%rdi), %rsi
	jnb	.L166
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L166
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L166:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L169:
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor12overlapboxesixEy, .-_ZN3wze6engine6actors5actor12overlapboxesixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv:
.LFB8162:
	.cfi_startproc
	movq	8(%rdi), %rax
	movq	200(%rax), %rax
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv:
.LFB8163:
	.cfi_startproc
	movq	8(%rdi), %rax
	movq	208(%rax), %rax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv:
.LFB8164:
	.cfi_startproc
	movq	24(%rdi), %rax
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv:
.LFB8165:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].overlapboxes[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd:
.LFB8166:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L192
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L177
	jne	.L177
	ucomisd	%xmm3, %xmm1
	jp	.L177
	jne	.L177
	movq	$0x000000000, 64(%rdi)
.L185:
	pxor	%xmm0, %xmm0
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L177:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	40(%rbx), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L181
	jne	.L181
	ucomisd	%xmm3, %xmm1
	jp	.L181
	je	.L185
.L181:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L184:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 32(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L192:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv:
.LFB8167:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.actors[].overlapboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd:
.LFB8168:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L212
	movq	8(%rdi), %rax
	movsd	32(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L197
	jne	.L197
	ucomisd	%xmm1, %xmm3
	jp	.L197
	jne	.L197
	movq	$0x000000000, 64(%rdi)
.L205:
	pxor	%xmm0, %xmm0
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L197:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	32(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L201
	jne	.L201
	ucomisd	%xmm1, %xmm3
	jp	.L201
	je	.L205
.L201:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L204:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L212:
	.cfi_restore_state
	leaq	.LC15(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv:
.LFB8169:
	.cfi_startproc
	movzwl	48(%rdi), %eax
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv:
.LFB8171:
	.cfi_startproc
	movzwl	50(%rdi), %eax
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv:
.LFB8173:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv:
.LFB8175:
	.cfi_startproc
	movzwl	80(%rdi), %eax
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv:
.LFB8176:
	.cfi_startproc
	movzwl	82(%rdi), %eax
	ret
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Actor does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n"
	.align 8
.LC17:
	.string	"wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Overlapbox does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy:
.LFB8177:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L231
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	cmpq	584(%rdi), %rsi
	jnb	.L220
	movq	592(%rdi), %rcx
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L220
	testq	%rdx, %rdx
	jne	.L234
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	.cfi_restore_state
	cmpq	152(%rcx), %rdx
	jnb	.L222
	movq	160(%rcx), %rcx
	movq	(%rcx,%rdx,8), %r8
	testq	%r8, %r8
	je	.L222
	movzwl	80(%rax), %edx
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movsd	32(%rax), %xmm0
	addq	$600, %rdi
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm2
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzwl	82(%rax), %ecx
	movl	%ecx, %esi
	cvtsi2sdl	%ecx, %xmm3
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	40(%rax), %xmm1
	movq	%r8, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm4
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm3
	jmp	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	.p2align 4,,10
	.p2align 3
.L231:
	xorl	%eax, %eax
	ret
.L220:
	.cfi_def_cfa_offset 16
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L222:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC19:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_:
.LFB8178:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r10
	movq	%rcx, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%r8, 16(%rsp)
	movq	%fs:40, %rdx
	movq	%rdx, 88(%rsp)
	xorl	%edx, %edx
	testq	%rsi, %rsi
	je	.L236
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r15
	movq	%rsi, %rbp
	movq	%r10, %r12
	movq	%rcx, %r13
	je	.L240
	.p2align 4,,10
	.p2align 3
.L237:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	0(%rbp), %rbx
	jb	.L237
	movq	%r12, %r10
	movq	%r13, %rax
.L240:
	movq	8(%rbp), %rdi
	movq	%rax, 8(%rsp)
	movl	$1, %ebx
	movq	$0, 0(%rbp)
	movq	%r10, (%rsp)
	call	free@PLT
	movq	(%r15), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	$0, 8(%rbp)
	movq	584(%rdx), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%r15), %ecx
	pxor	%xmm1, %xmm1
	movsd	32(%r15), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	(%rsp), %r10
	movq	8(%rsp), %rax
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	82(%r15), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm4
	movq	(%r15), %rdx
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	movq	584(%rdx), %rdi
	cvtsi2sdl	%esi, %xmm1
	addsd	40(%r15), %xmm1
	cmpq	$1, %rdi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L239
	movq	16(%rsp), %r9
	movq	%rbp, %r13
	movq	%r14, %r8
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L241:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L239
.L238:
	movq	592(%rdx), %rsi
	leaq	0(,%rbx,8), %r14
	movq	(%rsi,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L241
	cmpq	8(%r15), %rcx
	je	.L241
	movq	208(%rcx), %rbp
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.L241
	cmpq	(%r10,%rcx,8), %rbp
	je	.L285
.L274:
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.L241
	cmpq	(%r10,%rcx,8), %rbp
	jne	.L274
.L285:
	xorl	%ecx, %ecx
	testq	%r8, %r8
	je	.L245
.L255:
	cmpq	%rbx, (%r9,%rcx,8)
	je	.L241
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.L255
.L245:
	cmpq	%rdi, %rbx
	jnb	.L284
	movq	%rbx, %rcx
	movl	$1, %r12d
	movq	%r10, 48(%rsp)
	salq	$4, %rcx
	movq	%rax, 56(%rsp)
	movq	%r12, %rbp
	movq	%rcx, 32(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	%r9, 64(%rsp)
	movq	%r8, 72(%rsp)
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 24(%rsp)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L283:
	movq	(%r15), %rdx
	movq	584(%rdx), %rdi
.L248:
	movq	592(%rdx), %rsi
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L284
.L253:
	movq	(%rsi,%r14), %rax
	cmpq	152(%rax), %rbp
	jnb	.L286
	movq	160(%rax), %rax
	movq	(%rax,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L248
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	leaq	600(%rdx), %rdi
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L283
	movq	%rbp, 80(%rsp)
	movq	8(%r13), %rdx
	cmpq	0(%r13), %rbx
	jnb	.L284
	movq	32(%rsp), %rax
	leaq	(%rdx,%rax), %r12
	movq	(%r12), %rax
	movq	8(%r12), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L287
	movq	(%r12), %rdx
	movq	40(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L239:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L288
	addq	$104, %rsp
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
.L286:
	.cfi_restore_state
	movsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm1
	movsd	16(%rsp), %xmm2
	movsd	24(%rsp), %xmm3
	movq	48(%rsp), %r10
	movq	56(%rsp), %rax
	movq	64(%rsp), %r9
	movq	72(%rsp), %r8
	jmp	.L241
.L284:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L287:
	leaq	.LC19(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L236:
	movq	%rax, %rdx
	leaq	.LC18(%rip), %rdi
	movq	%r9, %rcx
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L288:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8178:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC21:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE:
.LFB8179:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r9
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
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L340
	movq	%rsi, %r15
	testq	%rdx, %rdx
	je	.L291
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r14
	movq	%rcx, %r13
	movq	%rdx, %r12
	je	.L295
	.p2align 4,,10
	.p2align 3
.L292:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%r15), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	(%r15), %rbx
	jb	.L292
	movq	%r12, %r9
.L295:
	movq	$0, (%r15)
	movq	8(%r15), %rdi
	movl	$1, %ebx
	movq	%r9, 8(%rsp)
	call	free@PLT
	movq	(%r14), %rax
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	$0, 8(%r15)
	movq	584(%rax), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%r14), %edx
	pxor	%xmm1, %xmm1
	movsd	32(%r14), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	8(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm2
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	82(%r14), %eax
	movl	%eax, %ecx
	cvtsi2sdl	%eax, %xmm4
	movq	(%r14), %rax
	shrw	%cx
	subsd	%xmm1, %xmm0
	movzwl	%cx, %ecx
	pxor	%xmm1, %xmm1
	movq	584(%rax), %rsi
	cvtsi2sdl	%ecx, %xmm1
	addsd	40(%r14), %xmm1
	cmpq	$1, %rsi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L294
	movq	%r15, 40(%rsp)
	movq	%r13, %r10
	movq	%r9, %r15
	.p2align 4,,10
	.p2align 3
.L293:
	movq	592(%rax), %rdx
	leaq	0(,%rbx,8), %r13
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L296
	cmpq	8(%r14), %rcx
	je	.L296
	movq	(%r15), %rdi
	movq	208(%rcx), %r8
	xorl	%ecx, %ecx
	movq	8(%r15), %r9
	testq	%rdi, %rdi
	je	.L296
.L297:
	cmpq	(%r9,%rcx,8), %r8
	je	.L341
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L297
	.p2align 4,,10
	.p2align 3
.L296:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L293
.L294:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L342
	addq	$104, %rsp
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
.L341:
	.cfi_restore_state
	xorl	%ecx, %ecx
	testq	%rbp, %rbp
	je	.L300
.L310:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L296
	addq	$1, %rcx
	cmpq	%rcx, %rbp
	jne	.L310
.L300:
	cmpq	%rsi, %rbx
	jnb	.L339
	movq	%rbx, %rcx
	movl	$1, %r12d
	movq	%rbp, 72(%rsp)
	movq	%rsi, %rdi
	salq	$4, %rcx
	movq	%r10, 64(%rsp)
	movq	%r12, %rbp
	movq	%rcx, 48(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm3, 32(%rsp)
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L338:
	movq	(%r14), %rax
	movq	584(%rax), %rdi
.L303:
	movq	592(%rax), %rdx
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L339
.L308:
	movq	(%rdx,%r13), %rdx
	cmpq	152(%rdx), %rbp
	jnb	.L343
	movq	160(%rdx), %rdx
	movq	(%rdx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L303
	movsd	32(%rsp), %xmm3
	movsd	24(%rsp), %xmm2
	leaq	600(%rax), %rdi
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L338
	movq	40(%rsp), %rax
	movq	%rbp, 80(%rsp)
	movq	8(%rax), %rdx
	cmpq	(%rax), %rbx
	jnb	.L339
	movq	48(%rsp), %rax
	leaq	(%rdx,%rax), %r12
	movq	(%r12), %rax
	movq	8(%r12), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L344
	movq	(%r12), %rdx
	movq	56(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L343:
	movq	%rdi, %rsi
	addq	$1, %rbx
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm3
	movq	64(%rsp), %r10
	movq	72(%rsp), %rbp
	cmpq	%rsi, %rbx
	jb	.L293
	jmp	.L294
.L339:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L342:
	call	__stack_chk_fail@PLT
.L291:
	leaq	.LC21(%rip), %rdi
	movq	%r8, %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L340:
	leaq	.LC20(%rip), %rdi
	movq	%r8, %rcx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L344:
	leaq	.LC19(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\n"
	.align 8
.LC23:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): AActorIDBlacklist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_:
.LFB8180:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rcx, %r15
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L396
	movq	%rsi, %rbp
	testq	%r8, %r8
	je	.L347
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r12
	movq	%rdx, %r9
	movq	%r8, %r13
	movq	%rdx, %r14
	je	.L351
	.p2align 4,,10
	.p2align 3
.L348:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	0(%rbp), %rbx
	jb	.L348
	movq	%r13, %r8
	movq	%r14, %r9
.L351:
	movq	8(%rbp), %rdi
	movq	%r9, 16(%rsp)
	movl	$1, %ebx
	movq	$0, 0(%rbp)
	movq	%r8, 8(%rsp)
	call	free@PLT
	movq	(%r12), %rax
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	$0, 8(%rbp)
	movq	584(%rax), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%r12), %edx
	pxor	%xmm1, %xmm1
	movsd	32(%r12), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	8(%rsp), %r8
	movq	16(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm2
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	82(%r12), %eax
	movl	%eax, %ecx
	cvtsi2sdl	%eax, %xmm4
	movq	(%r12), %rax
	shrw	%cx
	subsd	%xmm1, %xmm0
	movzwl	%cx, %ecx
	pxor	%xmm1, %xmm1
	movq	584(%rax), %rsi
	cvtsi2sdl	%ecx, %xmm1
	addsd	40(%r12), %xmm1
	cmpq	$1, %rsi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L350
	movq	%rbp, 40(%rsp)
	movq	%r9, %r14
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L352:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L350
.L349:
	movq	592(%rax), %rdx
	leaq	0(,%rbx,8), %r13
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L352
	cmpq	8(%r12), %rcx
	je	.L352
	movq	208(%rcx), %rdi
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L352
	cmpq	(%r14,%rcx,8), %rdi
	je	.L397
.L386:
	addq	$1, %rcx
	cmpq	%rcx, %r15
	je	.L352
	cmpq	(%r14,%rcx,8), %rdi
	jne	.L386
.L397:
	movq	(%r8), %rdi
	movq	8(%r8), %r9
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L356
.L366:
	cmpq	%rbx, (%r9,%rcx,8)
	je	.L352
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L366
	.p2align 4,,10
	.p2align 3
.L356:
	cmpq	%rsi, %rbx
	jnb	.L395
	movq	%rbx, %rcx
	movq	%r8, 64(%rsp)
	movl	$1, %ebp
	movq	%rsi, %rdi
	salq	$4, %rcx
	movq	%r14, 72(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm3, 32(%rsp)
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L394:
	movq	(%r12), %rax
	movq	584(%rax), %rdi
.L359:
	movq	592(%rax), %rdx
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L395
.L364:
	movq	(%rdx,%r13), %rdx
	cmpq	152(%rdx), %rbp
	jnb	.L398
	movq	160(%rdx), %rdx
	movq	(%rdx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L359
	movsd	32(%rsp), %xmm3
	movsd	24(%rsp), %xmm2
	leaq	600(%rax), %rdi
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L394
	movq	40(%rsp), %rax
	movq	%rbp, 80(%rsp)
	movq	8(%rax), %rdx
	cmpq	(%rax), %rbx
	jnb	.L395
	movq	48(%rsp), %rax
	leaq	(%rdx,%rax), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r14)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L399
	movq	(%r14), %rdx
	movq	56(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L350:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L400
	addq	$104, %rsp
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
.L398:
	.cfi_restore_state
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	movq	%rdi, %rsi
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm3
	movq	64(%rsp), %r8
	movq	72(%rsp), %r14
	jmp	.L352
.L395:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L347:
	leaq	.LC23(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L396:
	leaq	.LC22(%rip), %rdi
	movq	%r8, %rcx
	movq	%r15, %rdx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L400:
	call	__stack_chk_fail@PLT
.L399:
	leaq	.LC19(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %p, ActorIDBlacklist: %p\n"
	.align 8
.LC25:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %p, ActorIDBlacklist: %p\n"
	.align 8
.LC26:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): AActorIDBlacklist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %p, ActorIDBlacklist: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_:
.LFB8181:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L453
	movq	%rsi, %r12
	testq	%rdx, %rdx
	je	.L454
	testq	%rcx, %rcx
	je	.L404
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r14
	movq	%rcx, %rbp
	je	.L408
	.p2align 4,,10
	.p2align 3
.L405:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%r12), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	(%r12), %rbx
	jb	.L405
	movq	%rbp, %rcx
.L408:
	movq	8(%r12), %rdi
	movq	%rcx, (%rsp)
	movl	$1, %ebx
	movq	$0, (%r12)
	call	free@PLT
	movq	(%r14), %rax
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	$0, 8(%r12)
	movq	584(%rax), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%r14), %edx
	pxor	%xmm1, %xmm1
	movsd	32(%r14), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	(%rsp), %rcx
	leaq	64(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm2
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	82(%r14), %eax
	movl	%eax, %esi
	cvtsi2sdl	%eax, %xmm4
	movq	(%r14), %rax
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	40(%r14), %xmm1
	movq	584(%rax), %rsi
	cmpq	$1, %rsi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L407
	movq	%r9, 40(%rsp)
	movq	%r12, %r13
	movq	%r15, %r9
	movq	%r14, %r12
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L406:
	movq	592(%rax), %rdx
	leaq	0(,%rbx,8), %r15
	movq	(%rdx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L409
	cmpq	8(%r12), %rdi
	je	.L409
	movq	(%r9), %r10
	movq	208(%rdi), %r11
	xorl	%edi, %edi
	movq	8(%r9), %rbp
	testq	%r10, %r10
	je	.L409
.L410:
	cmpq	0(%rbp,%rdi,8), %r11
	je	.L455
	addq	$1, %rdi
	cmpq	%rdi, %r10
	jne	.L410
	.p2align 4,,10
	.p2align 3
.L409:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L406
.L407:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L456
	addq	$88, %rsp
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
.L455:
	.cfi_restore_state
	movq	(%rcx), %r10
	movq	8(%rcx), %r11
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.L413
.L423:
	cmpq	%rbx, (%r11,%rdi,8)
	je	.L409
	addq	$1, %rdi
	cmpq	%rdi, %r10
	jne	.L423
	.p2align 4,,10
	.p2align 3
.L413:
	cmpq	%rsi, %rbx
	jnb	.L452
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	movl	$1, %ebp
	salq	$4, %rdi
	movq	%rcx, 56(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rsi, %rdi
	movsd	%xmm0, (%rsp)
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L451:
	movq	(%r12), %rax
	movq	584(%rax), %rdi
.L416:
	movq	592(%rax), %rdx
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L452
.L421:
	movq	(%rdx,%r15), %rdx
	cmpq	152(%rdx), %rbp
	jnb	.L457
	movq	160(%rdx), %rdx
	movq	(%rdx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L416
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	leaq	600(%rax), %rdi
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L451
	movq	%rbp, 64(%rsp)
	movq	8(%r13), %rdx
	cmpq	0(%r13), %rbx
	jnb	.L452
	movq	32(%rsp), %rax
	leaq	(%rdx,%rax), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r14)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L458
	movq	(%r14), %rdx
	movq	40(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L451
	.p2align 4,,10
	.p2align 3
.L457:
	movq	%rdi, %rsi
	addq	$1, %rbx
	movsd	(%rsp), %xmm0
	movq	48(%rsp), %r9
	movq	56(%rsp), %rcx
	cmpq	%rsi, %rbx
	jb	.L406
	jmp	.L407
.L452:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L456:
	call	__stack_chk_fail@PLT
.L404:
	leaq	.LC26(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L454:
	leaq	.LC25(%rip), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L453:
	leaq	.LC24(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L458:
	leaq	.LC19(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv:
.LFB8182:
	.cfi_startproc
	movl	112(%rdi), %eax
	ret
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv:
.LFB8183:
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movsd	56(%rdi), %xmm0
	movsd	96(%rdi), %xmm3
	movsd	104(%rdi), %xmm4
	movq	(%rdi), %rax
	addsd	%xmm0, %xmm3
	movsd	88(%rbx), %xmm1
	addsd	%xmm0, %xmm4
	movsd	.LC27(%rip), %xmm0
	leaq	632(%rax), %rdi
	movapd	%xmm3, %xmm5
	movapd	%xmm3, %xmm2
	movsd	%xmm3, 24(%rsp)
	addsd	%xmm0, %xmm5
	addsd	%xmm4, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	movq	%xmm5, %r13
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	(%rsp), %xmm2
	movsd	88(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	leaq	632(%rax), %rdi
	movl	%esi, 20(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ecx
	movsd	88(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	leaq	632(%rax), %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	24(%rsp), %xmm3
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	(%rsp), %xmm2
	movsd	88(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	88(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movl	20(%rsp), %esi
	movl	16(%rsp), %ecx
	cvttsd2sil	%xmm0, %edx
	cmpl	%esi, %r12d
	movl	%esi, %eax
	cmovge	%r12d, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	%r15d, %eax
	cmovl	%r15d, %eax
	cmpl	%esi, %r12d
	cmovg	%esi, %r12d
	cmpl	%ecx, %r12d
	cmovg	%ecx, %r12d
	cmpl	%r15d, %r12d
	cmovg	%r15d, %r12d
	subl	%r12d, %eax
	cmpl	%r14d, %ebp
	movw	%ax, 80(%rbx)
	movl	%r14d, %eax
	cmovge	%ebp, %eax
	cmpl	%r13d, %eax
	cmovl	%r13d, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%r14d, %ebp
	cmovg	%r14d, %ebp
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	cmpl	%edx, %ebp
	cmovg	%edx, %ebp
	subl	%ebp, %eax
	movw	%ax, 82(%rbx)
	addq	$40, %rsp
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
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y:
.LFB8160:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movd	248(%rdx), %xmm0
	pxor	%xmm3, %xmm3
	movq	%rdi, %rbx
	movl	$257, %eax
	movq	%rdx, 8(%rdi)
	pxor	%xmm2, %xmm2
	movsd	256(%rdx), %xmm1
	movw	%ax, 16(%rdi)
	movupd	216(%rdx), %xmm4
	pextrw	$0, %xmm0, %eax
	pextrw	$1, %xmm0, %edx
	cvtsi2sdl	%edx, %xmm3
	movq	%rsi, (%rdi)
	cvtsi2sdl	%eax, %xmm2
	movb	$0, 18(%rdi)
	movq	%rcx, 24(%rdi)
	movq	$0x000000000, 64(%rdi)
	movq	$0x000000000, 72(%rdi)
	movsd	%xmm1, 56(%rdi)
	pxor	%xmm1, %xmm1
	movd	%xmm0, 48(%rdi)
	movd	%xmm0, 80(%rdi)
	movapd	%xmm1, %xmm0
	movups	%xmm4, 32(%rdi)
	leaq	632(%rsi), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC29(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L463
	jne	.L463
	movsd	%xmm1, 96(%rbx)
.L465:
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	movsd	%xmm0, 104(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.p2align 4,,10
	.p2align 3
.L463:
	.cfi_restore_state
	movzwl	50(%rbx), %edx
	movzwl	48(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm3
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	leaq	632(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L466
	je	.L465
.L466:
	movzwl	50(%rbx), %eax
	movzwl	48(%rbx), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	leaq	632(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 104(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.actors[].overlapboxes.New(): Memory allocation failed"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB31:
	.text
.LHOTB31:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.type	_ZN3wze6engine6actors5actor12overlapboxes3NewEy, @function
_ZN3wze6engine6actors5actor12overlapboxes3NewEy:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L472
	movq	24(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L473:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L472
.L476:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L473
	movl	$120, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %rcx
	movq	%rax, %rdi
	movq	%rax, %r13
.LEHB1:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
.LEHE1:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L492
	movq	%r13, (%rax,%rbx,8)
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L472:
	movl	$120, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %rcx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB3:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
.LEHE3:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L493
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L494
	cmpq	$0, (%rdx,%rax,8)
	je	.L495
.L471:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L496
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
.L492:
	.cfi_restore_state
	movq	%rbx, %rsi
.L490:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L496:
	call	__stack_chk_fail@PLT
.L495:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L494:
	orq	$-1, %rsi
	jmp	.L490
.L493:
	leaq	.LC19(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L486:
	movq	%rax, %rbp
	jmp	.L483
.L487:
	movq	%rax, %rbx
	jmp	.L481
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB0-.LFB8152
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8152
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L487-.LFB8152
	.uleb128 0
	.uleb128 .LEHB2-.LFB8152
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8152
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L486-.LFB8152
	.uleb128 0
	.uleb128 .LEHB4-.LFB8152
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8152:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8152
	.type	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold, @function
_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold:
.LFSB8152:
.L483:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movl	$120, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L491
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L481:
	movl	$120, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L491
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L491:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8152:
	.section	.gcc_except_table
.LLSDAC8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8152-.LLSDACSBC8152
.LLSDACSBC8152:
	.uleb128 .LEHB5-.LCOLDB31
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor12overlapboxes3NewEy, .-_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold, .-_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold
.LCOLDE31:
	.text
.LHOTE31:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt:
.LFB8170:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movapd	%xmm1, %xmm0
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movzwl	50(%rdi), %eax
	movq	(%rdi), %rdx
	movw	%si, 48(%rdi)
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm2
	leaq	632(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm3
	movq	%xmm2, %r14
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC29(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L498
	jne	.L498
	movsd	%xmm1, 96(%rbx)
.L500:
	pxor	%xmm0, %xmm0
.L503:
	movsd	%xmm0, 104(%rbx)
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movzwl	48(%rbx), %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L498:
	.cfi_restore_state
	movzwl	50(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movq	%r14, %xmm2
	cvtsi2sdl	%eax, %xmm3
	leaq	632(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L501
	je	.L500
.L501:
	movzwl	50(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movq	%r14, %xmm0
	cvtsi2sdl	%eax, %xmm3
	leaq	632(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L503
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt:
.LFB8172:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movq	%rdi, %rbx
	movapd	%xmm1, %xmm0
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movzwl	48(%rdi), %eax
	movq	(%rdi), %rdx
	movw	%si, 50(%rdi)
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm3
	leaq	632(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm3
	mulsd	.LC29(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L507
	jne	.L507
	movsd	%xmm1, 96(%rbx)
.L509:
	pxor	%xmm0, %xmm0
.L512:
	movsd	%xmm0, 104(%rbx)
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movzwl	50(%rbx), %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L507:
	.cfi_restore_state
	movzwl	48(%rbx), %eax
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	leaq	632(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	88(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L510
	je	.L509
.L510:
	movzwl	48(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	movq	(%rbx), %rax
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L512
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\nParams: Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd:
.LFB8174:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L521
	movq	%rdi, %rbx
	movsd	%xmm0, 56(%rdi)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movsd	56(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L521:
	.cfi_restore_state
	leaq	.LC32(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC27:
	.long	0
	.long	1080459264
	.align 8
.LC29:
	.long	0
	.long	1071644672
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
