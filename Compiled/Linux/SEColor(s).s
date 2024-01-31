	.file	"SEColor(s).cpp"
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
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0:
.LFB2428:
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
.LFE2428:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colorsC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor6colorsC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor6colorsC2ERS0_RS2_:
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
	.size	_ZN4slay6engine6actors5actor6colorsC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor6colorsC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor6colorsC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor6colorsC1ERS0_RS2_,_ZN4slay6engine6actors5actor6colorsC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colorsD2Ev
	.type	_ZN4slay6engine6actors5actor6colorsD2Ev, @function
_ZN4slay6engine6actors5actor6colorsD2Ev:
.LFB2235:
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
	movl	$56, %esi
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
.LFE2235:
	.size	_ZN4slay6engine6actors5actor6colorsD2Ev, .-_ZN4slay6engine6actors5actor6colorsD2Ev
	.globl	_ZN4slay6engine6actors5actor6colorsD1Ev
	.set	_ZN4slay6engine6actors5actor6colorsD1Ev,_ZN4slay6engine6actors5actor6colorsD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC5:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC6:
	.string	"slay::engine.actors[].colors.New(): Memory allocation failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors3NewEv
	.type	_ZN4slay6engine6actors5actor6colors3NewEv, @function
_ZN4slay6engine6actors5actor6colors3NewEv:
.LFB2237:
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
	movl	$56, %edi
	call	_Znwm@PLT
	movdqu	0(%rbp), %xmm2
	pxor	%xmm0, %xmm0
	movabsq	$-4294967296, %rcx
	movq	%rcx, 18(%rax)
	xorl	%ecx, %ecx
	movq	24(%rbp), %rdx
	movb	$0, 16(%rax)
	movq	$384, 26(%rax)
	movw	%cx, 34(%rax)
	movups	%xmm2, (%rax)
	movups	%xmm0, 40(%rax)
	cmpq	16(%rbp), %rbx
	jnb	.L59
	movq	%rax, (%rdx,%rbx,8)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	movl	$56, %edi
	call	_Znwm@PLT
	movdqu	0(%rbp), %xmm1
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movabsq	$-4294967296, %rcx
	movb	$0, 16(%rax)
	movq	24(%rbp), %rdi
	movq	%rcx, 18(%rax)
	movq	$384, 26(%rax)
	movw	%dx, 34(%rax)
	movq	%rax, (%rsp)
	movups	%xmm1, (%rax)
	movups	%xmm0, 40(%rax)
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
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	call	__stack_chk_fail@PLT
.L62:
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L61:
	orq	$-1, %rsi
	jmp	.L58
.L60:
	leaq	.LC5(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2237:
	.size	_ZN4slay6engine6actors5actor6colors3NewEv, .-_ZN4slay6engine6actors5actor6colors3NewEv
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"slay::engine.actors[].colors.Delete(): Illegal deletion of NULL Color\nParams: ID: %lld\n"
	.align 8
.LC8:
	.string	"slay::engine.actors[].colors.Delete(): Color does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors6DeleteEy
	.type	_ZN4slay6engine6actors5actor6colors6DeleteEy, @function
_ZN4slay6engine6actors5actor6colors6DeleteEy:
.LFB2238:
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
	movl	$56, %esi
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L66:
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
	leaq	.LC7(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6actors5actor6colors6DeleteEy, .-_ZN4slay6engine6actors5actor6colors6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"slay::engine.actors[].colors.Purge(): Color does not exists\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors5PurgeESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor6colors5PurgeESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor6colors5PurgeESt16initializer_listIyE:
.LFB2239:
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
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L82
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L85:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L83
	cmpq	%rsi, %rdx
	jnb	.L84
	movq	24(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L84
.L83:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L85
.L82:
	cmpq	$1, %rsi
	jbe	.L86
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L87:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L89
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L120:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L90
.L89:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L120
	cmpq	%rax, %rbx
	je	.L90
.L91:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L87
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
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
	.p2align 4,,10
	.p2align 3
.L90:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %rdi
	leaq	0(,%rbp,8), %r14
	testq	%rdi, %rdi
	je	.L92
	movl	$56, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rsi
	movq	24(%r13), %rdx
.L92:
	cmpq	%rsi, %rbp
	jnb	.L122
	movq	$0, (%rdx,%r14)
	jmp	.L91
.L121:
	movq	%rsi, %rcx
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L100:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L123
	cmpq	$0, (%rdx,%rax,8)
	jne	.L124
	movq	%rax, %rcx
.L95:
	cmpq	$1, %rcx
	jne	.L100
.L99:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
	testq	%rsi, %rsi
	jne	.L117
	orq	$-1, %rsi
.L119:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L124:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L99
.L84:
	leaq	.LC9(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L123:
	movq	%rax, %rsi
	jmp	.L119
.L122:
	movq	%rbp, %rsi
	jmp	.L119
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6actors5actor6colors5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor6colors5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"slay::engine.actors[].colors.Purge(): Color does not exists\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE:
.LFB2242:
	.cfi_startproc
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rsi), %rdx
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L126
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L129:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L127
	cmpq	%rsi, %rcx
	jnb	.L128
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L128
.L127:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L129
.L126:
	cmpq	$1, %rsi
	jbe	.L130
	movq	24(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L134
	.p2align 4,,10
	.p2align 3
.L139:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L163:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L134
.L133:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L163
	cmpq	%rax, %rdx
	je	.L134
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L138
.L165:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L139
	.p2align 4,,10
	.p2align 3
.L134:
	movq	(%rdi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L136
	movl	$56, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rsi
	movq	24(%rbp), %rdi
.L136:
	cmpq	%rsi, %rbx
	jnb	.L164
	addq	$1, %rbx
	movq	$0, (%rdi,%r13)
	cmpq	%rsi, %rbx
	jb	.L165
.L138:
	cmpq	$0, -8(%rdi,%rsi,8)
	leaq	-1(%rsi), %rdx
	je	.L166
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
.L166:
	.cfi_restore_state
	movq	%rsi, %rcx
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L145:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L167
	cmpq	$0, (%rdi,%rax,8)
	jne	.L168
	movq	%rax, %rcx
.L140:
	cmpq	$1, %rcx
	jne	.L145
.L144:
	leaq	16(%rbp), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
.L130:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L160
	orq	$-1, %rsi
.L162:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L168:
	subq	%rcx, %rsi
	movq	%rsi, %rdx
	jmp	.L144
.L128:
	leaq	.LC10(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L167:
	movq	%rax, %rsi
	jmp	.L162
.L164:
	movq	%rbx, %rsi
	jmp	.L162
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"slay::engine.actors[].colors[]: Illegal access to NULL Color\nParams: ID: %lld\n"
	.align 8
.LC12:
	.string	"slay::engine.actors[].colors[]: Color does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colorsixEy
	.type	_ZN4slay6engine6actors5actor6colorsixEy, @function
_ZN4slay6engine6actors5actor6colorsixEy:
.LFB2243:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L174
	cmpq	16(%rdi), %rsi
	jnb	.L171
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L171
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L171:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L174:
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor6colorsixEy, .-_ZN4slay6engine6actors5actor6colorsixEy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors5colorC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor6colors5colorC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor6colors5colorC2ERS0_RS2_:
.LFB2245:
	.cfi_startproc
	movabsq	$-4294967296, %rax
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movq	%rax, 18(%rdi)
	xorl	%eax, %eax
	movq	%rdx, 8(%rdi)
	movb	$0, 16(%rdi)
	movq	$384, 26(%rdi)
	movw	%ax, 34(%rdi)
	movups	%xmm0, 40(%rdi)
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6actors5actor6colors5colorC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor6colors5colorC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor6colors5colorC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor6colors5colorC1ERS0_RS2_,_ZN4slay6engine6actors5actor6colors5colorC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors5color10GetOffsetXEv
	.type	_ZN4slay6engine6actors5actor6colors5color10GetOffsetXEv, @function
_ZN4slay6engine6actors5actor6colors5color10GetOffsetXEv:
.LFB2247:
	.cfi_startproc
	movl	28(%rdi), %eax
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6actors5actor6colors5color10GetOffsetXEv, .-_ZN4slay6engine6actors5actor6colors5color10GetOffsetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors5color10SetOffsetXEi
	.type	_ZN4slay6engine6actors5actor6colors5color10SetOffsetXEi, @function
_ZN4slay6engine6actors5actor6colors5color10SetOffsetXEi:
.LFB2248:
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
	cvtsi2sdl	32(%rdi), %xmm0
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
	movsd	%xmm0, 40(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 28(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 48(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6actors5actor6colors5color10SetOffsetXEi, .-_ZN4slay6engine6actors5actor6colors5color10SetOffsetXEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors5color10GetOffsetYEv
	.type	_ZN4slay6engine6actors5actor6colors5color10GetOffsetYEv, @function
_ZN4slay6engine6actors5actor6colors5color10GetOffsetYEv:
.LFB2249:
	.cfi_startproc
	movl	32(%rdi), %eax
	ret
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor6colors5color10GetOffsetYEv, .-_ZN4slay6engine6actors5actor6colors5color10GetOffsetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor6colors5color10SetOffsetYEi
	.type	_ZN4slay6engine6actors5actor6colors5color10SetOffsetYEi, @function
_ZN4slay6engine6actors5actor6colors5color10SetOffsetYEi:
.LFB2250:
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
	cvtsi2sdl	28(%rdi), %xmm0
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
	movsd	%xmm0, 40(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 32(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 48(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6actors5actor6colors5color10SetOffsetYEi, .-_ZN4slay6engine6actors5actor6colors5color10SetOffsetYEi
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
