	.file	"WZEAssets.cpp"
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
	.type	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0:
.LFB8388:
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
.LFE8388:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0:
.LFB8389:
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
	jnb	.L54
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L55
	testq	%rbx, %rbx
	je	.L30
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L34
	cmpq	%rcx, %rsi
	jnb	.L41
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L38
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L56
.L38:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L43:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L43
	.p2align 4,,10
	.p2align 3
.L41:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L57
.L30:
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
.L56:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L39:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L39
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L41
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L34:
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
.L54:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L55:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L57:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8389:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0:
.LFB8390:
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
	jnb	.L82
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L83
	testq	%rbx, %rbx
	je	.L58
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L62
	cmpq	%rcx, %rsi
	jnb	.L69
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L66
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L84
.L66:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L71:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L71
	.p2align 4,,10
	.p2align 3
.L69:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L85
.L58:
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
.L84:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L67:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L67
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L69
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L69
	.p2align 4,,10
	.p2align 3
.L62:
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
.L82:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L83:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L85:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8390:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0:
.LFB8391:
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
	jnb	.L110
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L111
	testq	%rbx, %rbx
	je	.L86
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L90
	cmpq	%rcx, %rsi
	jnb	.L97
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L94
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L112
.L94:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L99:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L99
	.p2align 4,,10
	.p2align 3
.L97:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L113
.L86:
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
.L112:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L95:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L95
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L97
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L90:
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
.L110:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L111:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L113:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8391:
	.size	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assetsC2EPS0_
	.type	_ZN3wze6engine6assetsC2EPS0_, @function
_ZN3wze6engine6assetsC2EPS0_:
.LFB8147:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8147
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	$1, 8(%rdi)
	movl	$8, %edi
	movq	$0, 16(%rsp)
	call	malloc@PLT
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.L130
	leaq	16(%rsp), %rbp
	movq	%rax, %rsi
	movl	$8, %edx
	movq	%rbp, %rdi
.LEHB0:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.LEHE0:
	movq	$1, 24(%rbx)
	movl	$8, %edi
	movq	$0, (%rsp)
	call	malloc@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.L131
	movq	%rsp, %rdi
	movl	$8, %edx
	movq	%rax, %rsi
.LEHB1:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.LEHE1:
	movq	$1, 40(%rbx)
	movl	$8, %edi
	movq	$0, 8(%rsp)
	call	malloc@PLT
	movq	%rax, 48(%rbx)
	testq	%rax, %rax
	je	.L132
	leaq	8(%rsp), %rdi
	movl	$8, %edx
	movq	%rax, %rsi
.LEHB2:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.LEHE2:
	movq	$1, 56(%rbx)
	movl	$8, %edi
	movq	$0, 16(%rsp)
	call	malloc@PLT
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.L133
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rbp, %rdi
.LEHB3:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L134
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L134:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L133:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC3(%rip), %rdi
	call	printf@PLT
.LEHE3:
.L118:
	movl	$1, %edi
	call	exit@PLT
.L132:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC3(%rip), %rdi
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L118
.L131:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC3(%rip), %rdi
.LEHB5:
	call	printf@PLT
.LEHE5:
	jmp	.L118
.L130:
	leaq	.LC3(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
.LEHE6:
	movl	$1, %edi
	call	exit@PLT
.L125:
	movq	%rax, %rbp
	jmp	.L122
.L127:
	movq	%rax, %rbp
	jmp	.L120
.L126:
	movq	%rax, %rbp
	jmp	.L121
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8147-.LLSDACSB8147
.LLSDACSB8147:
	.uleb128 .LEHB0-.LFB8147
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8147
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L125-.LFB8147
	.uleb128 0
	.uleb128 .LEHB2-.LFB8147
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L126-.LFB8147
	.uleb128 0
	.uleb128 .LEHB3-.LFB8147
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L127-.LFB8147
	.uleb128 0
	.uleb128 .LEHB4-.LFB8147
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L126-.LFB8147
	.uleb128 0
	.uleb128 .LEHB5-.LFB8147
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L125-.LFB8147
	.uleb128 0
	.uleb128 .LEHB6-.LFB8147
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8147:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8147
	.type	_ZN3wze6engine6assetsC2EPS0_.cold, @function
_ZN3wze6engine6assetsC2EPS0_.cold:
.LFSB8147:
.L120:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	48(%rbx), %rdi
	call	free@PLT
.L121:
	movq	32(%rbx), %rdi
	call	free@PLT
.L122:
	movq	16(%rbx), %rdi
	call	free@PLT
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L135
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L135:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8147:
	.section	.gcc_except_table
.LLSDAC8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8147-.LLSDACSBC8147
.LLSDACSBC8147:
	.uleb128 .LEHB7-.LCOLDB4
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8147:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6assetsC2EPS0_, .-_ZN3wze6engine6assetsC2EPS0_
	.section	.text.unlikely
	.size	_ZN3wze6engine6assetsC2EPS0_.cold, .-_ZN3wze6engine6assetsC2EPS0_.cold
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN3wze6engine6assetsC1EPS0_
	.set	_ZN3wze6engine6assetsC1EPS0_,_ZN3wze6engine6assetsC2EPS0_
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.assets.LoadTexture(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC6:
	.string	"wze::engine.assets.LoadTexture(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC7:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC8:
	.string	"wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n"
	.align 8
.LC9:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11LoadTextureEPKc
	.type	_ZN3wze6engine6assets11LoadTextureEPKc, @function
_ZN3wze6engine6assets11LoadTextureEPKc:
.LFB8149:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L157
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rsi, %r13
	call	IMG_Load@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L138
	movq	8(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L140
	movq	16(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L141:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L140
.L145:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L141
	movq	0(%rbp), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	16(%rbp), %rdx
	cmpq	8(%rbp), %rbx
	jnb	.L158
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L150
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L140:
	movq	0(%rbp), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	16(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	8(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 8(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 16(%rbp)
	testq	%rax, %rax
	je	.L159
	movq	8(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L160
	cmpq	$0, (%rdx,%rcx,8)
	je	.L150
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	movq	8(%rbp), %rbx
	subq	$1, %rbx
.L136:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L161
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
.L158:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L138:
	leaq	.LC6(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L157:
	leaq	.LC5(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L161:
	call	__stack_chk_fail@PLT
.L150:
	leaq	.LC8(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L160:
	leaq	.LC7(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L159:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6assets11LoadTextureEPKc, .-_ZN3wze6engine6assets11LoadTextureEPKc
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.assets.UnloadTexture(): Illegal deletion of NULL Texture\nParams: ID: %lld\n"
	.align 8
.LC11:
	.string	"wze::engine.assets.UnloadTexture(): Texture does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13UnloadTextureEy
	.type	_ZN3wze6engine6assets13UnloadTextureEy, @function
_ZN3wze6engine6assets13UnloadTextureEy:
.LFB8150:
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
	je	.L207
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	8(%rdi), %rsi
	jnb	.L164
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L164
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L208
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L209
.L167:
	movq	0(%rbp), %r10
	movq	640(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L203
	movq	648(%r10), %r11
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L190:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L173
	cmpq	%rsi, %r8
	jnb	.L181
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L175:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L181
.L177:
	cmpq	%rcx, %rax
	jnb	.L210
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L175
	cmpq	%rbx, 72(%rdx)
	jne	.L175
	movq	$0, 72(%rdx)
	movq	640(%r10), %rsi
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L173:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L190
.L203:
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
.L210:
	.cfi_restore_state
	cmpq	%rsi, %r8
	jnb	.L181
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L188:
	cmpq	%rcx, %rdi
	jnb	.L173
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L180
	cmpq	%rsi, %r8
	jnb	.L181
	xorl	%eax, %eax
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L183:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L181
.L184:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L211
.L182:
	cmpq	96(%rdx), %rax
	jnb	.L180
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L183
	movq	$0, (%rcx)
	movq	640(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L184
.L181:
	movq	%r8, %rsi
.L206:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L180:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L188
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L209:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L171:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L206
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L212
	cmpq	$1, %rsi
	jne	.L171
.L170:
	leaq	8(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	jmp	.L167
.L212:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L170
.L211:
	movq	%rdi, %rsi
	jmp	.L206
.L207:
	leaq	.LC10(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L208:
	movq	%rbx, %rsi
	jmp	.L206
.L164:
	leaq	.LC11(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6assets13UnloadTextureEy, .-_ZN3wze6engine6assets13UnloadTextureEy
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.assets.PurgeTextures(): Texture does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	.type	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE, @function
_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE:
.LFB8151:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
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
	movq	8(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L214
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L217:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L215
	cmpq	%rdi, %rdx
	jnb	.L216
	movq	16(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L216
.L215:
	addq	$1, %rax
	cmpq	%rax, %r13
	jne	.L217
.L214:
	movl	$1, %ebx
	cmpq	$1, %rdi
	jbe	.L282
.L218:
	testq	%r13, %r13
	je	.L222
.L223:
	xorl	%eax, %eax
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L283:
	addq	$1, %rax
	cmpq	%rax, %r13
	je	.L222
.L221:
	cmpq	%rbx, (%r12,%rax,8)
	jne	.L283
	cmpq	%rax, %r13
	je	.L222
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jb	.L223
	movq	16(%rbp), %rcx
.L224:
	cmpq	$0, -8(%rcx,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L284
.L278:
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
	.p2align 4,,10
	.p2align 3
.L222:
	.cfi_restore_state
	movq	0(%rbp), %r10
	movq	640(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L225
	movq	648(%r10), %r11
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L243:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L226
	cmpq	%rsi, %r8
	jnb	.L234
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L228:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L234
.L230:
	cmpq	%rcx, %rax
	jnb	.L285
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L228
	cmpq	%rbx, 72(%rdx)
	jne	.L228
	movq	$0, 72(%rdx)
	movq	640(%r10), %rsi
	jmp	.L228
	.p2align 4,,10
	.p2align 3
.L226:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L243
	movq	8(%rbp), %rdi
.L225:
	movq	16(%rbp), %rax
	cmpq	%rdi, %rbx
	jnb	.L281
	movq	(%rax,%rbx,8), %rdi
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %rdi
	movq	16(%rbp), %rcx
	cmpq	%rdi, %rbx
	jnb	.L281
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jb	.L218
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L285:
	cmpq	%rsi, %r8
	jnb	.L234
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L241:
	cmpq	%rcx, %rdi
	jnb	.L226
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L233
	cmpq	%rsi, %r8
	jnb	.L234
	xorl	%eax, %eax
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L236:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L234
.L237:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L286
.L235:
	cmpq	96(%rdx), %rax
	jnb	.L233
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L236
	movq	$0, (%rcx)
	movq	640(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L237
.L234:
	movq	%r8, %rsi
.L280:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L233:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L241
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L284:
	movq	%rdi, %rax
	jmp	.L246
.L251:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L280
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L287
	movq	%rsi, %rax
.L246:
	cmpq	$1, %rax
	jne	.L251
.L250:
	leaq	8(%rbp), %rdi
	movq	%rax, %rsi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
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
.L282:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L278
	orq	$-1, %rsi
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L287:
	subq	%rax, %rdi
	movq	%rdi, %rdx
	jmp	.L250
.L286:
	movq	%rdi, %rsi
	jmp	.L280
.L216:
	leaq	.LC12(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L281:
	movq	%rbx, %rsi
	jmp	.L280
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE, .-_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.assets.PurgeTextures(): Texture does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE:
.LFB8154:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rdx
	movq	8(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L289
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L290:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L289
.L292:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L290
	cmpq	%rdi, %rcx
	jnb	.L291
	movq	16(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L290
.L291:
	leaq	.LC13(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L289:
	movl	$1, %ebx
	cmpq	$1, %rdi
	jbe	.L356
	testq	%rdx, %rdx
	je	.L297
	.p2align 4,,10
	.p2align 3
.L321:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L357:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L297
.L296:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L357
	cmpq	%rdx, %rax
	je	.L297
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L320
.L359:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L321
	.p2align 4,,10
	.p2align 3
.L297:
	movq	0(%rbp), %r10
	movq	640(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L299
	movq	648(%r10), %r11
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L317:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L300
	cmpq	%rsi, %r8
	jnb	.L308
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L302:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L308
.L304:
	cmpq	%rcx, %rax
	jnb	.L358
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L302
	cmpq	%rbx, 72(%rdx)
	jne	.L302
	movq	$0, 72(%rdx)
	movq	640(%r10), %rsi
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L300:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L317
	movq	8(%rbp), %rdi
.L299:
	movq	16(%rbp), %rax
	cmpq	%rdi, %rbx
	jnb	.L355
	movq	(%rax,%rbx,8), %rdi
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %rdi
	movq	16(%rbp), %rax
	cmpq	%rdi, %rbx
	jnb	.L355
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jb	.L359
.L320:
	movq	16(%rbp), %rdx
	leaq	-1(%rdi), %rcx
	cmpq	$0, -8(%rdx,%rdi,8)
	je	.L360
.L352:
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
.L358:
	.cfi_restore_state
	cmpq	%rsi, %r8
	jnb	.L308
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L315:
	cmpq	%rcx, %rdi
	jnb	.L300
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L307
	cmpq	%rsi, %r8
	jnb	.L308
	xorl	%eax, %eax
	jmp	.L309
	.p2align 4,,10
	.p2align 3
.L310:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L308
.L311:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L361
.L309:
	cmpq	96(%rdx), %rax
	jnb	.L307
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L310
	movq	$0, (%rcx)
	movq	640(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L311
.L308:
	movq	%r8, %rsi
.L354:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L307:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L315
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L360:
	movq	%rdi, %rax
	jmp	.L322
.L327:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L354
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L362
	movq	%rsi, %rax
.L322:
	cmpq	$1, %rax
	jne	.L327
.L326:
	leaq	8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L356:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L352
	orq	$-1, %rsi
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L362:
	subq	%rax, %rdi
	movq	%rdi, %rcx
	jmp	.L326
.L361:
	movq	%rdi, %rsi
	jmp	.L354
.L355:
	movq	%rbx, %rsi
	jmp	.L354
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.assets.LoadSound(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC15:
	.string	"wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets9LoadSoundEPKc
	.type	_ZN3wze6engine6assets9LoadSoundEPKc, @function
_ZN3wze6engine6assets9LoadSoundEPKc:
.LFB8155:
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L364
	movq	24(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L366
	movq	32(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L370
	.p2align 4,,10
	.p2align 3
.L367:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L366
.L370:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L367
	movq	%r12, %rdi
	call	Mix_LoadWAV@PLT
	movq	32(%rbp), %rdx
	cmpq	24(%rbp), %rbx
	jnb	.L383
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L363
.L375:
	leaq	.LC15(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L366:
	movq	%r12, %rdi
	call	Mix_LoadWAV@PLT
	movq	32(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	24(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 24(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 32(%rbp)
	testq	%rax, %rax
	je	.L384
	movq	24(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	24(%rbp), %rbx
	movq	32(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L385
	cmpq	$0, (%rax,%rbx,8)
	je	.L375
.L363:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L386
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L383:
	.cfi_restore_state
	movq	%rbx, %rsi
.L382:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L364:
	leaq	.LC14(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L386:
	call	__stack_chk_fail@PLT
.L385:
	orq	$-1, %rsi
	jmp	.L382
.L384:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6assets9LoadSoundEPKc, .-_ZN3wze6engine6assets9LoadSoundEPKc
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.assets.UnloadSound(): Illegal deletion of NULL Sound\nParams: ID: %lld\n"
	.align 8
.LC17:
	.string	"wze::engine.assets.UnloadSound(): Sound does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11UnloadSoundEy
	.type	_ZN3wze6engine6assets11UnloadSoundEy, @function
_ZN3wze6engine6assets11UnloadSoundEy:
.LFB8156:
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
	je	.L400
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	24(%rdi), %rsi
	jnb	.L389
	movq	32(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L389
	call	Mix_FreeChunk@PLT
	movq	24(%rbp), %rax
	movq	32(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L401
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L402
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
.L402:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L396:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L399
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L403
	cmpq	$1, %rsi
	jne	.L396
.L395:
	leaq	24(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
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
.L403:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L395
.L401:
	movq	%rbx, %rsi
.L399:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L389:
	leaq	.LC17(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L400:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6assets11UnloadSoundEy, .-_ZN3wze6engine6assets11UnloadSoundEy
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::assets.PurgeSounds(): Sound does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	.type	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE, @function
_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE:
.LFB8157:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
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
	movq	%rdx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	24(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L405
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L408:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L406
	cmpq	%rsi, %rdx
	jnb	.L407
	movq	32(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L407
.L406:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L408
.L405:
	cmpq	$1, %rsi
	jbe	.L409
	movq	32(%r13), %rcx
	movl	$1, %ebp
.L410:
	testq	%rbx, %rbx
	je	.L413
.L414:
	xorl	%eax, %eax
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L449:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L413
.L412:
	cmpq	(%r12,%rax,8), %rbp
	jne	.L449
	cmpq	%rax, %rbx
	je	.L413
	movq	24(%r13), %rax
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L414
.L415:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L426
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L433
	cmpq	$1, %rax
	jne	.L450
.L433:
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
	.p2align 4,,10
	.p2align 3
.L413:
	.cfi_restore_state
	movq	(%rcx,%rbp,8), %rdi
	call	Mix_FreeChunk@PLT
	movq	24(%r13), %rax
	movq	32(%r13), %rcx
	cmpq	%rax, %rbp
	jnb	.L451
	movq	$0, (%rcx,%rbp,8)
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L410
	jmp	.L415
.L450:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L420:
	movq	%rsi, %rdi
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L448
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L452
	cmpq	$1, %rsi
	jne	.L420
.L425:
	leaq	24(%r13), %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
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
.L409:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L433
.L426:
	orq	$-1, %rsi
.L448:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L452:
	subq	%rdi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdx
	jmp	.L425
.L407:
	leaq	.LC18(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L451:
	movq	%rbp, %rsi
	jmp	.L448
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE, .-_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"wze::assets.PurgeSounds(): Sound does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE:
.LFB8158:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rdx
	movq	24(%rdi), %r8
	testq	%rdx, %rdx
	je	.L454
	movq	8(%rsi), %rdi
	xorl	%eax, %eax
	jmp	.L457
	.p2align 4,,10
	.p2align 3
.L455:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L454
.L457:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L455
	cmpq	%r8, %rcx
	jnb	.L456
	movq	32(%rbp), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	jne	.L455
.L456:
	leaq	.LC19(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L454:
	cmpq	$1, %r8
	jbe	.L458
	movq	32(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L462
	.p2align 4,,10
	.p2align 3
.L466:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L461
	.p2align 4,,10
	.p2align 3
.L497:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L462
.L461:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L497
	cmpq	%rax, %rdx
	je	.L462
	movq	24(%rbp), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L465
.L499:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L466
	.p2align 4,,10
	.p2align 3
.L462:
	movq	(%rdi,%rbx,8), %rdi
	call	Mix_FreeChunk@PLT
	movq	24(%rbp), %rax
	movq	32(%rbp), %rdi
	cmpq	%rax, %rbx
	jnb	.L498
	movq	$0, (%rdi,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L499
.L465:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L476
	cmpq	$0, (%rdi,%rdx,8)
	jne	.L483
	cmpq	$1, %rax
	jne	.L500
.L483:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L500:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L470:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L496
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L501
	cmpq	$1, %rsi
	jne	.L470
.L475:
	leaq	24(%rbp), %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L458:
	.cfi_restore_state
	testq	%r8, %r8
	jne	.L483
.L476:
	orq	$-1, %rsi
.L496:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L501:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmp	.L475
.L498:
	movq	%rbx, %rsi
	jmp	.L496
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.assets.LoadFont(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC21:
	.string	"wze::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets8LoadFontEPKch
	.type	_ZN3wze6engine6assets8LoadFontEPKch, @function
_ZN3wze6engine6assets8LoadFontEPKch:
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L503
	movq	40(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L505
	movq	48(%rdi), %rcx
	movl	$1, %ebx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L506:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L505
.L509:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L506
	movzbl	%dl, %esi
	movq	%r12, %rdi
	call	TTF_OpenFont@PLT
	movq	48(%rbp), %rdx
	cmpq	40(%rbp), %rbx
	jnb	.L522
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L502
.L514:
	leaq	.LC21(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L505:
	movzbl	%dl, %esi
	movq	%r12, %rdi
	call	TTF_OpenFont@PLT
	movq	48(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	40(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 40(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 48(%rbp)
	testq	%rax, %rax
	je	.L523
	movq	40(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	40(%rbp), %rbx
	movq	48(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L524
	cmpq	$0, (%rax,%rbx,8)
	je	.L514
.L502:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L525
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L522:
	.cfi_restore_state
	movq	%rbx, %rsi
.L521:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L503:
	leaq	.LC20(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L525:
	call	__stack_chk_fail@PLT
.L524:
	orq	$-1, %rsi
	jmp	.L521
.L523:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6assets8LoadFontEPKch, .-_ZN3wze6engine6assets8LoadFontEPKch
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.assets.UnloadFont(): Illegal deletion of NULL Font\nParams: ID: %lld\n"
	.align 8
.LC23:
	.string	"wze::engine.assets.UnloadFont(): Font does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10UnloadFontEy
	.type	_ZN3wze6engine6assets10UnloadFontEy, @function
_ZN3wze6engine6assets10UnloadFontEy:
.LFB8160:
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
	je	.L554
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	40(%rdi), %rsi
	jnb	.L528
	movq	48(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L528
	call	TTF_CloseFont@PLT
	movq	40(%rbp), %rax
	movq	48(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L555
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L556
.L531:
	movq	0(%rbp), %r8
	movq	640(%r8), %r9
	cmpq	$1, %r9
	jbe	.L551
	movq	648(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L538:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L545
	cmpq	640(%r8), %rsi
	jnb	.L542
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L541:
	addq	$1, %rax
	cmpq	640(%r8), %rsi
	jnb	.L542
.L543:
	cmpq	%rdi, %rax
	jnb	.L545
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L541
	cmpq	%rbx, 104(%rdx)
	jne	.L541
	movq	$0, 104(%rdx)
	jmp	.L541
	.p2align 4,,10
	.p2align 3
.L545:
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.L538
.L551:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L556:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L535:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L542
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L557
	cmpq	$1, %rsi
	jne	.L535
.L534:
	leaq	40(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L531
.L557:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L534
.L555:
	movq	%rbx, %rsi
.L542:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L528:
	leaq	.LC23(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L554:
	leaq	.LC22(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6assets10UnloadFontEy, .-_ZN3wze6engine6assets10UnloadFontEy
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.assets.PurgeFonts(): Font does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	.type	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE, @function
_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE:
.LFB8161:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	40(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L559
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L562:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L560
	cmpq	%rsi, %rdx
	jnb	.L561
	movq	48(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L561
.L560:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L562
.L559:
	movl	$1, %ebx
	cmpq	$1, %rsi
	jbe	.L614
.L563:
	testq	%rbp, %rbp
	je	.L567
.L568:
	xorl	%eax, %eax
	jmp	.L566
	.p2align 4,,10
	.p2align 3
.L615:
	addq	$1, %rax
	cmpq	%rax, %rbp
	je	.L567
.L566:
	cmpq	%rbx, (%r12,%rax,8)
	jne	.L615
	cmpq	%rax, %rbp
	je	.L567
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L568
	movq	48(%r13), %rcx
	leaq	-1(%rsi), %rdx
	cmpq	$0, -8(%rcx,%rsi,8)
	je	.L616
.L609:
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
	.p2align 4,,10
	.p2align 3
.L567:
	.cfi_restore_state
	movq	0(%r13), %r8
	movq	640(%r8), %r9
	cmpq	$1, %r9
	jbe	.L570
	movq	648(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L572:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L579
	cmpq	640(%r8), %rsi
	jnb	.L611
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L577
	.p2align 4,,10
	.p2align 3
.L575:
	addq	$1, %rax
	cmpq	640(%r8), %rsi
	jnb	.L611
.L577:
	cmpq	%rdi, %rax
	jnb	.L579
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L575
	cmpq	%rbx, 104(%rdx)
	jne	.L575
	movq	$0, 104(%rdx)
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L579:
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.L572
	movq	40(%r13), %rsi
.L570:
	movq	48(%r13), %rax
	cmpq	%rsi, %rbx
	jnb	.L612
	movq	(%rax,%rbx,8), %rdi
	call	TTF_CloseFont@PLT
	movq	40(%r13), %rsi
	movq	48(%r13), %rcx
	cmpq	%rsi, %rbx
	jnb	.L612
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L563
	cmpq	$0, -8(%rcx,%rsi,8)
	leaq	-1(%rsi), %rdx
	jne	.L609
.L616:
	movq	%rsi, %r8
	jmp	.L582
	.p2align 4,,10
	.p2align 3
.L587:
	leaq	-1(%r8), %rax
	cmpq	%rsi, %rax
	jnb	.L617
	cmpq	$0, (%rcx,%rax,8)
	jne	.L618
	movq	%rax, %r8
.L582:
	cmpq	$1, %r8
	jne	.L587
.L586:
	leaq	40(%r13), %rdi
	movq	%r8, %rsi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
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
.L614:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L609
	orq	$-1, %rsi
.L611:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L618:
	subq	%r8, %rsi
	movq	%rsi, %rdx
	jmp	.L586
.L561:
	leaq	.LC24(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L612:
	movq	%rbx, %rsi
	jmp	.L611
.L617:
	movq	%rax, %rsi
	jmp	.L611
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE, .-_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"wze::engine.assets.PurgeFonts(): Font does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE:
.LFB8162:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rdx
	movq	40(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L620
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L623
	.p2align 4,,10
	.p2align 3
.L621:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L620
.L623:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L621
	cmpq	%rdi, %rcx
	jnb	.L622
	movq	48(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L621
.L622:
	leaq	.LC25(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L620:
	movl	$1, %ebx
	cmpq	$1, %rdi
	jbe	.L673
	testq	%rdx, %rdx
	je	.L628
	.p2align 4,,10
	.p2align 3
.L643:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L627
	.p2align 4,,10
	.p2align 3
.L674:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L628
.L627:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L674
	cmpq	%rdx, %rax
	je	.L628
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L642
.L675:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L643
	.p2align 4,,10
	.p2align 3
.L628:
	movq	0(%rbp), %r8
	movq	640(%r8), %r9
	cmpq	$1, %r9
	jbe	.L630
	movq	648(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L632:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L639
	cmpq	640(%r8), %rsi
	jnb	.L671
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L637
	.p2align 4,,10
	.p2align 3
.L635:
	addq	$1, %rax
	cmpq	640(%r8), %rsi
	jnb	.L671
.L637:
	cmpq	%rdi, %rax
	jnb	.L639
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L635
	cmpq	%rbx, 104(%rdx)
	jne	.L635
	movq	$0, 104(%rdx)
	jmp	.L635
	.p2align 4,,10
	.p2align 3
.L639:
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jne	.L632
	movq	40(%rbp), %rdi
.L630:
	movq	48(%rbp), %rax
	cmpq	%rdi, %rbx
	jnb	.L672
	movq	(%rax,%rbx,8), %rdi
	call	TTF_CloseFont@PLT
	movq	40(%rbp), %rdi
	movq	48(%rbp), %rax
	cmpq	%rdi, %rbx
	jnb	.L672
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jb	.L675
	.p2align 4,,10
	.p2align 3
.L642:
	movq	48(%rbp), %rdx
	leaq	-1(%rdi), %rcx
	cmpq	$0, -8(%rdx,%rdi,8)
	je	.L676
.L669:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L676:
	.cfi_restore_state
	movq	%rdi, %rax
	jmp	.L644
	.p2align 4,,10
	.p2align 3
.L649:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L671
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L677
	movq	%rsi, %rax
.L644:
	cmpq	$1, %rax
	jne	.L649
.L648:
	leaq	40(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L673:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L669
	orq	$-1, %rsi
.L671:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L677:
	subq	%rax, %rdi
	movq	%rdi, %rcx
	jmp	.L648
.L672:
	movq	%rbx, %rsi
	jmp	.L671
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.assets.LoadCursor(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC27:
	.string	"wze::engine.assets.LoadCursor(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC28:
	.string	"wze::engine.assets.LoadCursor(): HotSpotX out of range\nParams: Path: %s\n"
	.align 8
.LC29:
	.string	"wze::engine.assets.LoadCursor(): HotSpotY out of range\nParams: Path: %s\n"
	.align 8
.LC30:
	.string	"wze::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10LoadCursorEPKctt
	.type	_ZN3wze6engine6assets10LoadCursorEPKctt, @function
_ZN3wze6engine6assets10LoadCursorEPKctt:
.LFB8163:
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L701
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rsi, %r13
	movl	%edx, %ebx
	movl	%ecx, %r14d
	call	IMG_Load@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L702
	movzwl	%bx, %esi
	cmpl	%esi, 16(%rax)
	jle	.L703
	movzwl	%r14w, %r14d
	cmpl	%r14d, 20(%rax)
	jle	.L682
	movq	56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L684
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L689
	.p2align 4,,10
	.p2align 3
.L685:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L684
.L689:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L685
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	64(%rbp), %rdx
	cmpq	56(%rbp), %rbx
	jnb	.L704
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L694
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	jmp	.L678
	.p2align 4,,10
	.p2align 3
.L684:
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	64(%rbp), %rdi
	movq	%rax, (%rsp)
	movq	56(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 56(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 64(%rbp)
	testq	%rax, %rax
	je	.L705
	movq	56(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L706
	cmpq	$0, (%rdx,%rcx,8)
	je	.L694
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	movq	56(%rbp), %rbx
	subq	$1, %rbx
.L678:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L707
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
.L704:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L682:
	leaq	.LC29(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L703:
	leaq	.LC28(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L702:
	leaq	.LC27(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L701:
	leaq	.LC26(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L707:
	call	__stack_chk_fail@PLT
.L694:
	leaq	.LC30(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L706:
	leaq	.LC7(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L705:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6assets10LoadCursorEPKctt, .-_ZN3wze6engine6assets10LoadCursorEPKctt
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"wze::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\nParams: ID: %lld\n"
	.align 8
.LC32:
	.string	"wze::engine.assets.UnloadCursor(): Cursor does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets12UnloadCursorEy
	.type	_ZN3wze6engine6assets12UnloadCursorEy, @function
_ZN3wze6engine6assets12UnloadCursorEy:
.LFB8164:
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
	je	.L722
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	56(%rdi), %rsi
	jnb	.L710
	movq	64(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L710
	call	SDL_FreeCursor@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L723
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L724
.L713:
	movq	0(%rbp), %rax
	cmpq	%rbx, 624(%rax)
	jne	.L718
	movq	$0, 624(%rax)
.L718:
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
.L724:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L717:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L721
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L725
	cmpq	$1, %rsi
	jne	.L717
.L716:
	leaq	56(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	jmp	.L713
	.p2align 4,,10
	.p2align 3
.L725:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L716
.L723:
	movq	%rbx, %rsi
.L721:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L710:
	leaq	.LC32(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L722:
	leaq	.LC31(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6assets12UnloadCursorEy, .-_ZN3wze6engine6assets12UnloadCursorEy
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"wze::engine.assets.PurgeCursors(): Cursor does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE
	.type	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE, @function
_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE:
.LFB8165:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
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
	movq	%rdx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	56(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L727
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L730:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L728
	cmpq	%rcx, %rdx
	jnb	.L729
	movq	64(%r13), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.L729
.L728:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L730
.L727:
	cmpq	$1, %rcx
	jbe	.L731
	movq	64(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L732:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L734
	jmp	.L735
	.p2align 4,,10
	.p2align 3
.L764:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L735
.L734:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L764
	cmpq	%rax, %rbx
	je	.L735
.L736:
	addq	$1, %rbp
	cmpq	%rcx, %rbp
	jb	.L732
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L765
.L760:
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
	.p2align 4,,10
	.p2align 3
.L735:
	.cfi_restore_state
	movq	0(%r13), %rax
	cmpq	%rbp, 624(%rax)
	jne	.L737
	movq	$0, 624(%rax)
	movq	56(%r13), %rcx
.L737:
	cmpq	%rcx, %rbp
	jnb	.L762
	movq	(%rdx,%rbp,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%r13), %rcx
	movq	64(%r13), %rdx
	cmpq	%rcx, %rbp
	jnb	.L762
	movq	$0, (%rdx,%rbp,8)
	jmp	.L736
.L765:
	movq	%rcx, %rax
	jmp	.L741
	.p2align 4,,10
	.p2align 3
.L746:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L763
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L766
	movq	%rsi, %rax
.L741:
	cmpq	$1, %rax
	jne	.L746
.L745:
	leaq	56(%r13), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
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
.L731:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L760
	orq	$-1, %rsi
.L763:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L766:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L745
.L729:
	leaq	.LC33(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L762:
	movq	%rbp, %rsi
	jmp	.L763
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE, .-_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"wze::engine.assets.PurgeCursors(): Cursor does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE:
.LFB8166:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rdx
	movq	56(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L768
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L771
	.p2align 4,,10
	.p2align 3
.L769:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L768
.L771:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L769
	cmpq	%rdi, %rcx
	jnb	.L770
	movq	64(%rbp), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	jne	.L769
.L770:
	leaq	.LC34(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L768:
	cmpq	$1, %rdi
	jbe	.L772
	movq	64(%rbp), %rsi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L776
	.p2align 4,,10
	.p2align 3
.L782:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L775
	.p2align 4,,10
	.p2align 3
.L804:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L776
.L775:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L804
	cmpq	%rax, %rdx
	je	.L776
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L781
.L805:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L782
	.p2align 4,,10
	.p2align 3
.L776:
	movq	0(%rbp), %rax
	cmpq	%rbx, 624(%rax)
	jne	.L778
	movq	$0, 624(%rax)
	movq	56(%rbp), %rdi
.L778:
	cmpq	%rdi, %rbx
	jnb	.L802
	movq	(%rsi,%rbx,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%rbp), %rdi
	movq	64(%rbp), %rsi
	cmpq	%rdi, %rbx
	jnb	.L802
	movq	$0, (%rsi,%rbx,8)
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jb	.L805
.L781:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L806
.L800:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L806:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L783
	.p2align 4,,10
	.p2align 3
.L788:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L807
	cmpq	$0, (%rsi,%rax,8)
	jne	.L808
	movq	%rax, %rcx
.L783:
	cmpq	$1, %rcx
	jne	.L788
.L787:
	leaq	56(%rbp), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L772:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L800
	orq	$-1, %rsi
.L803:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L808:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L787
.L807:
	movq	%rax, %rsi
	jmp	.L803
.L802:
	movq	%rbx, %rsi
	jmp	.L803
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE
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
