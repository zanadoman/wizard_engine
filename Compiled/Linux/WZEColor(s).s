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
.LFB8345:
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
.LFE8345:
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
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].colors.Delete(): Illegal deletion of NULL Color\nParams: ID: %lld\n"
	.align 8
.LC10:
	.string	"wze::engine.actors[].colors.Delete(): Color does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors6DeleteEy
	.type	_ZN3wze6engine6actors5actor6colors6DeleteEy, @function
_ZN3wze6engine6actors5actor6colors6DeleteEy:
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
	je	.L77
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L66
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L66
	movl	$64, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L78
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L79
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
.L79:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L73:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L76
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L80
	cmpq	$1, %rsi
	jne	.L73
.L72:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
.L80:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L72
.L78:
	movq	%rbx, %rsi
.L76:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L66:
	leaq	.LC10(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor6colors6DeleteEy, .-_ZN3wze6engine6actors5actor6colors6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.actors[].colors.Purge(): Color does not exist\nParams: Keep(length): %ld\n"
	.text
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
	je	.L82
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L85:
	movq	(%r12,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L83
	cmpq	%rdx, %rcx
	jnb	.L84
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.L84
.L83:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L85
.L82:
	cmpq	$1, %rdx
	jbe	.L86
	movq	24(%r13), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L87:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L88
.L94:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L89
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L94
.L88:
	movq	(%rcx,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r14
	testq	%rdi, %rdi
	je	.L91
	movl	$64, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L91:
	cmpq	%rdx, %rbx
	jnb	.L120
	movq	$0, (%rcx,%r14)
.L89:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L87
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L121
.L117:
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
.L121:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L100:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L119
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L122
	movq	%rsi, %rax
.L95:
	cmpq	$1, %rax
	jne	.L100
.L99:
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
.L86:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L117
	orq	$-1, %rsi
.L119:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L122:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L99
.L84:
	leaq	.LC11(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L120:
	movq	%rbx, %rsi
	jmp	.L119
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].colors.Purge(): Color does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE:
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
	je	.L124
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L125:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L124
.L127:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L125
	cmpq	%rdi, %rdx
	jnb	.L126
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L125
.L126:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L124:
	cmpq	$1, %rdi
	jbe	.L128
	movq	24(%r12), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L136:
	movq	8(%rbp), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L129
.L130:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L131
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L130
	.p2align 4,,10
	.p2align 3
.L129:
	movq	(%rsi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L133
	movl	$64, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L133:
	cmpq	%rdi, %rbx
	jnb	.L163
	movq	$0, (%rsi,%r13)
.L131:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L135
	movq	0(%rbp), %rcx
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L135:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L164
.L160:
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
.L164:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L142:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L165
	cmpq	$0, (%rsi,%rax,8)
	jne	.L166
	movq	%rax, %rcx
.L137:
	cmpq	$1, %rcx
	jne	.L142
.L141:
	leaq	16(%r12), %rdi
	movq	%rcx, %rsi
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
.L128:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L160
	orq	$-1, %rsi
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L166:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L141
.L163:
	movq	%rbx, %rsi
.L162:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L165:
	movq	%rax, %rsi
	jmp	.L162
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors[].colors[]: Illegal access to NULL Color\nParams: ID: %lld\n"
	.align 8
.LC14:
	.string	"wze::engine.actors[].colors[]: Color does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsixEy
	.type	_ZN3wze6engine6actors5actor6colorsixEy, @function
_ZN3wze6engine6actors5actor6colorsixEy:
.LFB8158:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L172
	cmpq	16(%rdi), %rsi
	jnb	.L169
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L169
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L169:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L172:
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor6colorsixEy, .-_ZN3wze6engine6actors5actor6colorsixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_:
.LFB8160:
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
.LFE8160:
	.size	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_,_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetXEv
	.type	_ZN3wze6engine6actors5actor6colors5color4GetXEv, @function
_ZN3wze6engine6actors5actor6colors5color4GetXEv:
.LFB8162:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6actors5actor6colors5color4GetXEv, .-_ZN3wze6engine6actors5actor6colors5color4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.actors[].colors[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetXEd
	.type	_ZN3wze6engine6actors5actor6colors5color4SetXEd, @function
_ZN3wze6engine6actors5actor6colors5color4SetXEd:
.LFB8163:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L193
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L178
	jne	.L178
	ucomisd	%xmm3, %xmm1
	jp	.L178
	jne	.L178
	movq	$0x000000000, 48(%rdi)
.L186:
	pxor	%xmm0, %xmm0
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L178:
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
	jp	.L182
	jne	.L182
	ucomisd	%xmm3, %xmm1
	jp	.L182
	je	.L186
.L182:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L185:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 32(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L193:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor6colors5color4SetXEd, .-_ZN3wze6engine6actors5actor6colors5color4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetYEv
	.type	_ZN3wze6engine6actors5actor6colors5color4GetYEv, @function
_ZN3wze6engine6actors5actor6colors5color4GetYEv:
.LFB8164:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor6colors5color4GetYEv, .-_ZN3wze6engine6actors5actor6colors5color4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.actors[].colors[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetYEd
	.type	_ZN3wze6engine6actors5actor6colors5color4SetYEd, @function
_ZN3wze6engine6actors5actor6colors5color4SetYEd:
.LFB8165:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L213
	movq	8(%rdi), %rax
	movsd	32(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L198
	jne	.L198
	ucomisd	%xmm1, %xmm3
	jp	.L198
	jne	.L198
	movq	$0x000000000, 48(%rdi)
.L206:
	pxor	%xmm0, %xmm0
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L198:
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
	jp	.L202
	jne	.L202
	ucomisd	%xmm1, %xmm3
	jp	.L202
	je	.L206
.L202:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L205:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L213:
	.cfi_restore_state
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor6colors5color4SetYEd, .-_ZN3wze6engine6actors5actor6colors5color4SetYEd
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
