	.file	"WZEColor(s).cpp"
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
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0:
.LFB8343:
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
.LFE8343:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_:
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
	.size	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_,_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsD2Ev
	.type	_ZN3wze6engine6actors5actor6colorsD2Ev, @function
_ZN3wze6engine6actors5actor6colorsD2Ev:
.LFB8150:
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
	movl	$64, %esi
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
.LFE8150:
	.size	_ZN3wze6engine6actors5actor6colorsD2Ev, .-_ZN3wze6engine6actors5actor6colorsD2Ev
	.globl	_ZN3wze6engine6actors5actor6colorsD1Ev
	.set	_ZN3wze6engine6actors5actor6colorsD1Ev,_ZN3wze6engine6actors5actor6colorsD2Ev
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC6:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC7:
	.string	"wze::engine.actors[].colors.New(): Memory allocation failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors3NewEv
	.type	_ZN3wze6engine6actors5actor6colors3NewEv, @function
_ZN3wze6engine6actors5actor6colors3NewEv:
.LFB8152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L46
	movq	24(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L47:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L46
.L50:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L47
	movl	$64, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movdqu	0(%rbp), %xmm3
	movl	$-32767, %esi
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movl	248(%rdx), %ecx
	movupd	216(%rdx), %xmm4
	movw	%si, 24(%rax)
	movb	$1, 26(%rax)
	movq	24(%rbp), %rdx
	movl	%ecx, 16(%rax)
	movups	%xmm3, (%rax)
	movups	%xmm4, 32(%rax)
	movups	%xmm0, 48(%rax)
	cmpq	16(%rbp), %rbx
	jnb	.L59
	movq	%rax, (%rdx,%rbx,8)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	movl	$64, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movdqu	0(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movq	24(%rbp), %rdi
	movl	248(%rdx), %ecx
	movupd	216(%rdx), %xmm2
	movb	$1, 26(%rax)
	movq	%rax, (%rsp)
	movl	%ecx, 16(%rax)
	movl	$-32767, %ecx
	movw	%cx, 24(%rax)
	movups	%xmm1, (%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	16(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L60
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L61
	cmpq	$0, (%rdx,%rax,8)
	je	.L62
.L45:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L63
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L59:
	.cfi_restore_state
	movq	%rbx, %rsi
.L58:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	call	__stack_chk_fail@PLT
.L62:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L61:
	orq	$-1, %rsi
	jmp	.L58
.L60:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor6colors3NewEv, .-_ZN3wze6engine6actors5actor6colors3NewEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors6DeleteEy
	.type	_ZN3wze6engine6actors5actor6colors6DeleteEy, @function
_ZN3wze6engine6actors5actor6colors6DeleteEy:
.LFB8153:
	.cfi_startproc
	cmpq	16(%rdi), %rsi
	jb	.L87
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L66
	movl	$64, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L88
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L66
	cmpq	$1, %rax
	je	.L66
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L72:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L89
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L90
	cmpq	$1, %rsi
	jne	.L72
.L71:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
.L66:
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
.L90:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L71
.L89:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L88:
	leaq	.LC5(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor6colors6DeleteEy, .-_ZN3wze6engine6actors5actor6colors6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE:
.LFB8154:
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
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	16(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L92
	movq	24(%rdi), %rcx
	movq	%rdi, %r13
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L99:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L94
.L93:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L95
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L93
.L94:
	movq	(%rcx,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r14
	testq	%rdi, %rdi
	je	.L97
	movl	$64, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L97:
	cmpq	%rdx, %rbx
	jnb	.L119
	movq	$0, (%rcx,%r14)
.L95:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L99
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L120
.L116:
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
.L120:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L105:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L118
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L121
	movq	%rsi, %rax
.L100:
	cmpq	$1, %rax
	jne	.L105
.L104:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
.L92:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L116
	orq	$-1, %rsi
.L118:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L121:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L104
.L119:
	movq	%rbx, %rsi
	jmp	.L118
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].colors.Purge(): KeepColorIDs must not be NULL\nParams: KeepColorIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE:
.LFB8155:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	je	.L123
	movq	16(%rdi), %rcx
	movq	%rdi, %r12
	cmpq	$1, %rcx
	jbe	.L154
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L132:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L126
.L127:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L128
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L127
	.p2align 4,,10
	.p2align 3
.L126:
	movq	(%rdi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L130
	movq	%rax, %rdi
	movl	$64, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rcx
	movq	24(%r12), %rdi
.L130:
	cmpq	%rcx, %rbx
	jnb	.L155
	movq	$0, (%rdi,%r13)
.L128:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L132
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L156
.L151:
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
.L156:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L138:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L153
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L157
	movq	%rsi, %rax
.L133:
	cmpq	$1, %rax
	jne	.L138
.L137:
	leaq	16(%r12), %rdi
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
.L154:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L151
	orq	$-1, %rsi
.L153:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L157:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L137
.L123:
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L155:
	movq	%rbx, %rsi
	jmp	.L153
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.actors[].colors[]: Illegal access to NULL Color\nParams: ColorID: %lld\n"
	.align 8
.LC11:
	.string	"wze::engine.actors[].colors[]: Color does not exist\nParams: ColorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsixEy
	.type	_ZN3wze6engine6actors5actor6colorsixEy, @function
_ZN3wze6engine6actors5actor6colorsixEy:
.LFB8156:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L163
	cmpq	16(%rdi), %rsi
	jnb	.L160
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L160
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L160:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L163:
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor6colorsixEy, .-_ZN3wze6engine6actors5actor6colorsixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_:
.LFB8158:
	.cfi_startproc
	movl	248(%rdx), %eax
	movupd	216(%rdx), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%eax, 16(%rdi)
	movl	$-32767, %eax
	movl	$-1, 20(%rdi)
	movw	%ax, 24(%rdi)
	movb	$1, 26(%rdi)
	movups	%xmm1, 32(%rdi)
	movups	%xmm0, 48(%rdi)
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_,_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetXEv
	.type	_ZN3wze6engine6actors5actor6colors5color4GetXEv, @function
_ZN3wze6engine6actors5actor6colors5color4GetXEv:
.LFB8160:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6actors5actor6colors5color4GetXEv, .-_ZN3wze6engine6actors5actor6colors5color4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors[].colors[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetXEd
	.type	_ZN3wze6engine6actors5actor6colors5color4SetXEd, @function
_ZN3wze6engine6actors5actor6colors5color4SetXEd:
.LFB8161:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L184
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L169
	jne	.L169
	ucomisd	%xmm3, %xmm1
	jp	.L169
	jne	.L169
	movq	$0x000000000, 48(%rdi)
.L177:
	pxor	%xmm0, %xmm0
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L169:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	40(%rbx), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 48(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L173
	jne	.L173
	ucomisd	%xmm3, %xmm1
	jp	.L173
	je	.L177
.L173:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L176:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 32(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L184:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor6colors5color4SetXEd, .-_ZN3wze6engine6actors5actor6colors5color4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetYEv
	.type	_ZN3wze6engine6actors5actor6colors5color4GetYEv, @function
_ZN3wze6engine6actors5actor6colors5color4GetYEv:
.LFB8162:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6actors5actor6colors5color4GetYEv, .-_ZN3wze6engine6actors5actor6colors5color4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].colors[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetYEd
	.type	_ZN3wze6engine6actors5actor6colors5color4SetYEd, @function
_ZN3wze6engine6actors5actor6colors5color4SetYEd:
.LFB8163:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L204
	movq	8(%rdi), %rax
	movsd	32(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L189
	jne	.L189
	ucomisd	%xmm1, %xmm3
	jp	.L189
	jne	.L189
	movq	$0x000000000, 48(%rdi)
.L197:
	pxor	%xmm0, %xmm0
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L189:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	32(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 48(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L193
	jne	.L193
	ucomisd	%xmm1, %xmm3
	jp	.L193
	je	.L197
.L193:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L196:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L204:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor6colors5color4SetYEd, .-_ZN3wze6engine6actors5actor6colors5color4SetYEd
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
