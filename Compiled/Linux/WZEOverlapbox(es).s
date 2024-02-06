	.file	"WZEOverlapbox(es).cpp"
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
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0:
.LFB8354:
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
.LFE8354:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_:
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
	.size	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.type	_ZN3wze6engine6actors5actor12overlapboxesD2Ev, @function
_ZN3wze6engine6actors5actor12overlapboxesD2Ev:
.LFB8148:
	.cfi_startproc
	movq	16(%rdi), %rdx
	movq	24(%rdi), %rax
	cmpq	$1, %rdx
	jbe	.L42
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
.L40:
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L38
	movl	$112, %esi
	addq	$1, %rbx
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	cmpq	%rdx, %rbx
	jb	.L40
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
.L38:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L40
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
.L42:
	movq	%rax, %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine6actors5actor12overlapboxesD2Ev, .-_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
	.set	_ZN3wze6engine6actors5actor12overlapboxesD1Ev,_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors[].overlapboxes.Delete(): Illegal deletion of NULL Overlapbox\nParams: ID: %lld\n"
	.align 8
.LC5:
	.string	"wze::engine.actors[].overlapboxes.Delete(): Overlapbox does not exist\nParams: ID: %lld\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.type	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy, @function
_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy:
.LFB8151:
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
	je	.L58
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L47
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L47
	movl	$112, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L59
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L60
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
.L60:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L54:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L57
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L61
	cmpq	$1, %rsi
	jne	.L54
.L53:
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
.L61:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L53
.L59:
	movq	%rbx, %rsi
.L57:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L47:
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L58:
	leaq	.LC4(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy, .-_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE:
.LFB8152:
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
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	movq	16(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L63
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L66:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L64
	cmpq	%rcx, %rdx
	jnb	.L65
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.L65
.L64:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L66
.L63:
	cmpq	$1, %rcx
	jbe	.L67
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L68:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L70
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L101:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L71
.L70:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L101
	cmpq	%rax, %rbx
	je	.L71
.L72:
	addq	$1, %rbp
	cmpq	%rcx, %rbp
	jb	.L68
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L102
.L98:
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
	.p2align 4,,10
	.p2align 3
.L71:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %rdi
	leaq	0(,%rbp,8), %r14
	testq	%rdi, %rdi
	je	.L73
	movl	$112, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rcx
	movq	24(%r13), %rdx
.L73:
	cmpq	%rcx, %rbp
	jnb	.L103
	movq	$0, (%rdx,%r14)
	jmp	.L72
.L102:
	movq	%rcx, %rax
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L81:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L100
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L104
	movq	%rsi, %rax
.L76:
	cmpq	$1, %rax
	jne	.L81
.L80:
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
.L67:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L98
	orq	$-1, %rsi
.L100:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L104:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L80
.L65:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L103:
	movq	%rbp, %rsi
	jmp	.L100
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE:
.LFB8155:
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
	movq	(%rsi), %rdx
	movq	16(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L106
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L107:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L106
.L109:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L107
	cmpq	%rdi, %rcx
	jnb	.L108
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L107
.L108:
	leaq	.LC8(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L106:
	cmpq	$1, %rdi
	jbe	.L110
	movq	24(%r12), %rsi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L114
	.p2align 4,,10
	.p2align 3
.L119:
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L143:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L114
.L113:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L143
	cmpq	%rax, %rdx
	je	.L114
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L118
.L145:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L119
	.p2align 4,,10
	.p2align 3
.L114:
	movq	(%rsi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L116
	movl	$112, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L116:
	cmpq	%rdi, %rbx
	jnb	.L144
	addq	$1, %rbx
	movq	$0, (%rsi,%r13)
	cmpq	%rdi, %rbx
	jb	.L145
.L118:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L146
.L140:
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
.L146:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L125:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L147
	cmpq	$0, (%rsi,%rax,8)
	jne	.L148
	movq	%rax, %rcx
.L120:
	cmpq	$1, %rcx
	jne	.L125
.L124:
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
.L110:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L140
	orq	$-1, %rsi
.L142:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L148:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L124
.L147:
	movq	%rax, %rsi
	jmp	.L142
.L144:
	movq	%rbx, %rsi
	jmp	.L142
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\nParams: ID: %lld\n"
	.align 8
.LC10:
	.string	"wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesixEy
	.type	_ZN3wze6engine6actors5actor12overlapboxesixEy, @function
_ZN3wze6engine6actors5actor12overlapboxesixEy:
.LFB8156:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L154
	cmpq	16(%rdi), %rsi
	jnb	.L151
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L151
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L151:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L154:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor12overlapboxesixEy, .-_ZN3wze6engine6actors5actor12overlapboxesixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev:
.LFB8161:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv:
.LFB8163:
	.cfi_startproc
	movq	24(%rdi), %rax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv:
.LFB8164:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].overlapboxes[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd:
.LFB8165:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L176
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L161
	jne	.L161
	ucomisd	%xmm3, %xmm1
	jp	.L161
	jne	.L161
	movq	$0x000000000, 64(%rdi)
.L169:
	pxor	%xmm0, %xmm0
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L161:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	40(%rbx), %xmm3
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L165
	jne	.L165
	ucomisd	%xmm3, %xmm1
	jp	.L165
	je	.L169
.L165:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L168:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 32(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L176:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv:
.LFB8166:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors[].overlapboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd:
.LFB8167:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L196
	movq	8(%rdi), %rax
	movsd	32(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L181
	jne	.L181
	ucomisd	%xmm1, %xmm3
	jp	.L181
	jne	.L181
	movq	$0x000000000, 64(%rdi)
.L189:
	pxor	%xmm0, %xmm0
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L181:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	32(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L185
	jne	.L185
	ucomisd	%xmm1, %xmm3
	jp	.L185
	je	.L189
.L185:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L188:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L196:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv:
.LFB8168:
	.cfi_startproc
	movzwl	48(%rdi), %eax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv:
.LFB8170:
	.cfi_startproc
	movzwl	50(%rdi), %eax
	ret
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv:
.LFB8172:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv:
.LFB8174:
	.cfi_startproc
	movzwl	80(%rdi), %eax
	ret
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv:
.LFB8175:
	.cfi_startproc
	movzwl	82(%rdi), %eax
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv:
.LFB8176:
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
	movsd	.LC14(%rip), %xmm0
	leaq	688(%rax), %rdi
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
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	movl	%esi, 20(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ecx
	movsd	88(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	24(%rsp), %xmm3
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	(%rsp), %xmm2
	movsd	88(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	88(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
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
.LFE8176:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y:
.LFB8158:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movd	240(%rdx), %xmm0
	pxor	%xmm3, %xmm3
	movq	%rdi, %rbx
	movl	$257, %eax
	movq	%rdx, 8(%rdi)
	pxor	%xmm2, %xmm2
	movsd	248(%rdx), %xmm1
	movw	%ax, 16(%rdi)
	movupd	208(%rdx), %xmm4
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
	leaq	688(%rsi), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC16(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L205
	jne	.L205
	movsd	%xmm1, 96(%rbx)
.L207:
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	movsd	%xmm0, 104(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.p2align 4,,10
	.p2align 3
.L205:
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
	leaq	688(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L208
	je	.L207
.L208:
	movzwl	50(%rbx), %eax
	movzwl	48(%rbx), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	leaq	688(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 104(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC18:
	.string	"wze::engine.actors[].overlapboxes.New(): Memory allocation failed"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.type	_ZN3wze6engine6actors5actor12overlapboxes3NewEy, @function
_ZN3wze6engine6actors5actor12overlapboxes3NewEy:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
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
	jbe	.L214
	movq	24(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L215:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L214
.L218:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L215
	movl	$112, %edi
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
	jnb	.L234
	movq	%r13, (%rax,%rbx,8)
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L214:
	movl	$112, %edi
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
	je	.L235
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
	jnc	.L236
	cmpq	$0, (%rdx,%rax,8)
	je	.L237
.L213:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L238
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
.L234:
	.cfi_restore_state
	movq	%rbx, %rsi
.L232:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L238:
	call	__stack_chk_fail@PLT
.L237:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L236:
	orq	$-1, %rsi
	jmp	.L232
.L235:
	leaq	.LC17(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L228:
	movq	%rax, %rbp
	jmp	.L225
.L229:
	movq	%rax, %rbx
	jmp	.L223
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
	.uleb128 .LEHB0-.LFB8150
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8150
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L229-.LFB8150
	.uleb128 0
	.uleb128 .LEHB2-.LFB8150
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8150
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L228-.LFB8150
	.uleb128 0
	.uleb128 .LEHB4-.LFB8150
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8150:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8150
	.type	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold, @function
_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold:
.LFSB8150:
.L225:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movl	$112, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L233
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L223:
	movl	$112, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L233
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L233:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
.LLSDAC8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8150-.LLSDACSBC8150
.LLSDACSBC8150:
	.uleb128 .LEHB5-.LCOLDB19
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8150:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor12overlapboxes3NewEy, .-_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold, .-_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold
.LCOLDE19:
	.text
.LHOTE19:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt:
.LFB8169:
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
	leaq	688(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm3
	movq	%xmm2, %r14
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC16(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L240
	jne	.L240
	movsd	%xmm1, 96(%rbx)
.L242:
	pxor	%xmm0, %xmm0
.L245:
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
.L240:
	.cfi_restore_state
	movzwl	50(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movq	%r14, %xmm2
	cvtsi2sdl	%eax, %xmm3
	leaq	688(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L243
	je	.L242
.L243:
	movzwl	50(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movq	%r14, %xmm0
	cvtsi2sdl	%eax, %xmm3
	leaq	688(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L245
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt:
.LFB8171:
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
	leaq	688(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm3
	mulsd	.LC16(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L249
	jne	.L249
	movsd	%xmm1, 96(%rbx)
.L251:
	pxor	%xmm0, %xmm0
.L254:
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
.L249:
	.cfi_restore_state
	movzwl	48(%rbx), %eax
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	leaq	688(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	88(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L252
	je	.L251
.L252:
	movzwl	48(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	movq	(%rbx), %rax
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L254
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\nParams: Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd:
.LFB8173:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L263
	movq	%rdi, %rbx
	movsd	%xmm0, 56(%rdi)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movsd	56(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L263:
	.cfi_restore_state
	leaq	.LC20(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC14:
	.long	0
	.long	1080459264
	.align 8
.LC16:
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
