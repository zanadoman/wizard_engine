	.file	"SEAssets.cpp"
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
.LFB2467:
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
.LFE2467:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0:
.LFB2468:
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
.LFE2468:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0:
.LFB2469:
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
.LFE2469:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0:
.LFB2470:
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
.LFE2470:
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
	.globl	_ZN4slay6engine6assetsC2ERS0_
	.type	_ZN4slay6engine6assetsC2ERS0_, @function
_ZN4slay6engine6assetsC2ERS0_:
.LFB2232:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2232
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
.LLSDA2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2232-.LLSDACSB2232
.LLSDACSB2232:
	.uleb128 .LEHB0-.LFB2232
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2232
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L125-.LFB2232
	.uleb128 0
	.uleb128 .LEHB2-.LFB2232
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L126-.LFB2232
	.uleb128 0
	.uleb128 .LEHB3-.LFB2232
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L127-.LFB2232
	.uleb128 0
	.uleb128 .LEHB4-.LFB2232
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L126-.LFB2232
	.uleb128 0
	.uleb128 .LEHB5-.LFB2232
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L125-.LFB2232
	.uleb128 0
	.uleb128 .LEHB6-.LFB2232
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2232:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2232
	.type	_ZN4slay6engine6assetsC2ERS0_.cold, @function
_ZN4slay6engine6assetsC2ERS0_.cold:
.LFSB2232:
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
.LFE2232:
	.section	.gcc_except_table
.LLSDAC2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2232-.LLSDACSBC2232
.LLSDACSBC2232:
	.uleb128 .LEHB7-.LCOLDB4
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC2232:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6assetsC2ERS0_, .-_ZN4slay6engine6assetsC2ERS0_
	.section	.text.unlikely
	.size	_ZN4slay6engine6assetsC2ERS0_.cold, .-_ZN4slay6engine6assetsC2ERS0_.cold
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN4slay6engine6assetsC1ERS0_
	.set	_ZN4slay6engine6assetsC1ERS0_,_ZN4slay6engine6assetsC2ERS0_
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"slay::engine.assets.LoadTexture(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC6:
	.string	"slay::engine.assets.LoadTexture(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC7:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC8:
	.string	"slay::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n"
	.align 8
.LC9:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets11LoadTextureEPKc
	.type	_ZN4slay6engine6assets11LoadTextureEPKc, @function
_ZN4slay6engine6assets11LoadTextureEPKc:
.LFB2234:
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
.LFE2234:
	.size	_ZN4slay6engine6assets11LoadTextureEPKc, .-_ZN4slay6engine6assets11LoadTextureEPKc
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"slay::engine.assets.UnloadTexture(): Illegal deletion of NULL Texture\nParams: ID: %lld\n"
	.align 8
.LC11:
	.string	"slay::engine.assets.UnloadTexture(): Texture does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets13UnloadTextureEy
	.type	_ZN4slay6engine6assets13UnloadTextureEy, @function
_ZN4slay6engine6assets13UnloadTextureEy:
.LFB2235:
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
	movq	536(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L203
	movq	544(%r10), %r11
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
	cmpq	%rbx, 64(%rdx)
	jne	.L175
	movq	$0, 64(%rdx)
	movq	536(%r10), %rsi
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
	cmpq	88(%rdx), %rax
	jnb	.L180
	movq	96(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L183
	movq	$0, (%rcx)
	movq	536(%r10), %rsi
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
.LFE2235:
	.size	_ZN4slay6engine6assets13UnloadTextureEy, .-_ZN4slay6engine6assets13UnloadTextureEy
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"slay::engine.assets.PurgeTextures(): Texture does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE
	.type	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE, @function
_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE:
.LFB2236:
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
	movq	536(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L225
	movq	544(%r10), %r11
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
	cmpq	%rbx, 64(%rdx)
	jne	.L228
	movq	$0, 64(%rdx)
	movq	536(%r10), %rsi
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
	cmpq	88(%rdx), %rax
	jnb	.L233
	movq	96(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L236
	movq	$0, (%rcx)
	movq	536(%r10), %rsi
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
.LFE2236:
	.size	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE, .-_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"slay::engine.assets.LoadSound(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC14:
	.string	"slay::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets9LoadSoundEPKc
	.type	_ZN4slay6engine6assets9LoadSoundEPKc, @function
_ZN4slay6engine6assets9LoadSoundEPKc:
.LFB2239:
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
	je	.L289
	movq	24(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L291
	movq	32(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L292:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L291
.L295:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L292
	movq	%r12, %rdi
	call	Mix_LoadWAV@PLT
	movq	32(%rbp), %rdx
	cmpq	24(%rbp), %rbx
	jnb	.L308
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L288
.L300:
	leaq	.LC14(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L291:
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
	je	.L309
	movq	24(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	24(%rbp), %rbx
	movq	32(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L310
	cmpq	$0, (%rax,%rbx,8)
	je	.L300
.L288:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L311
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
.L308:
	.cfi_restore_state
	movq	%rbx, %rsi
.L307:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L289:
	leaq	.LC13(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L311:
	call	__stack_chk_fail@PLT
.L310:
	orq	$-1, %rsi
	jmp	.L307
.L309:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6assets9LoadSoundEPKc, .-_ZN4slay6engine6assets9LoadSoundEPKc
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"slay::engine.assets.UnloadSound(): Illegal deletion of NULL Sound\nParams: ID: %lld\n"
	.align 8
.LC16:
	.string	"slay::engine.assets.UnloadSound(): Sound does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets11UnloadSoundEy
	.type	_ZN4slay6engine6assets11UnloadSoundEy, @function
_ZN4slay6engine6assets11UnloadSoundEy:
.LFB2240:
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
	je	.L325
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	24(%rdi), %rsi
	jnb	.L314
	movq	32(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L314
	call	Mix_FreeChunk@PLT
	movq	24(%rbp), %rax
	movq	32(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L326
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L327
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
.L327:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L321:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L324
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L328
	cmpq	$1, %rsi
	jne	.L321
.L320:
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
.L328:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L320
.L326:
	movq	%rbx, %rsi
.L324:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L314:
	leaq	.LC16(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L325:
	leaq	.LC15(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2240:
	.size	_ZN4slay6engine6assets11UnloadSoundEy, .-_ZN4slay6engine6assets11UnloadSoundEy
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"slay::assets.PurgeSounds(): Sound does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE, @function
_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE:
.LFB2241:
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
	je	.L330
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L333:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L331
	cmpq	%rsi, %rdx
	jnb	.L332
	movq	32(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L332
.L331:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L333
.L330:
	cmpq	$1, %rsi
	jbe	.L334
	movq	32(%r13), %rcx
	movl	$1, %ebp
.L335:
	testq	%rbx, %rbx
	je	.L338
.L339:
	xorl	%eax, %eax
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L374:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L338
.L337:
	cmpq	(%r12,%rax,8), %rbp
	jne	.L374
	cmpq	%rax, %rbx
	je	.L338
	movq	24(%r13), %rax
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L339
.L340:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L351
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L358
	cmpq	$1, %rax
	jne	.L375
.L358:
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
.L338:
	.cfi_restore_state
	movq	(%rcx,%rbp,8), %rdi
	call	Mix_FreeChunk@PLT
	movq	24(%r13), %rax
	movq	32(%r13), %rcx
	cmpq	%rax, %rbp
	jnb	.L376
	movq	$0, (%rcx,%rbp,8)
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L335
	jmp	.L340
.L375:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L345:
	movq	%rsi, %rdi
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L373
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L377
	cmpq	$1, %rsi
	jne	.L345
.L350:
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
.L334:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L358
.L351:
	orq	$-1, %rsi
.L373:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L377:
	subq	%rdi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdx
	jmp	.L350
.L332:
	leaq	.LC17(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L376:
	movq	%rbp, %rsi
	jmp	.L373
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE, .-_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"slay::engine.assets.LoadFont(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC19:
	.string	"slay::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets8LoadFontEPKch
	.type	_ZN4slay6engine6assets8LoadFontEPKch, @function
_ZN4slay6engine6assets8LoadFontEPKch:
.LFB2242:
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
	je	.L379
	movq	40(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L381
	movq	48(%rdi), %rcx
	movl	$1, %ebx
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L382:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L381
.L385:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L382
	movzbl	%dl, %esi
	movq	%r12, %rdi
	call	TTF_OpenFont@PLT
	movq	48(%rbp), %rdx
	cmpq	40(%rbp), %rbx
	jnb	.L398
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L378
.L390:
	leaq	.LC19(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L381:
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
	je	.L399
	movq	40(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	40(%rbp), %rbx
	movq	48(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L400
	cmpq	$0, (%rax,%rbx,8)
	je	.L390
.L378:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L401
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
.L398:
	.cfi_restore_state
	movq	%rbx, %rsi
.L397:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L379:
	leaq	.LC18(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L401:
	call	__stack_chk_fail@PLT
.L400:
	orq	$-1, %rsi
	jmp	.L397
.L399:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6assets8LoadFontEPKch, .-_ZN4slay6engine6assets8LoadFontEPKch
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"slay::engine.assets.UnloadFont(): Illegal deletion of NULL Font\nParams: ID: %lld\n"
	.align 8
.LC21:
	.string	"slay::engine.assets.UnloadFont(): Font does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets10UnloadFontEy
	.type	_ZN4slay6engine6assets10UnloadFontEy, @function
_ZN4slay6engine6assets10UnloadFontEy:
.LFB2243:
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
	je	.L430
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	40(%rdi), %rsi
	jnb	.L404
	movq	48(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L404
	call	TTF_CloseFont@PLT
	movq	40(%rbp), %rax
	movq	48(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L431
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L432
.L407:
	movq	0(%rbp), %r8
	movq	536(%r8), %r9
	cmpq	$1, %r9
	jbe	.L427
	movq	544(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L414:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L421
	cmpq	536(%r8), %rsi
	jnb	.L418
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L417:
	addq	$1, %rax
	cmpq	536(%r8), %rsi
	jnb	.L418
.L419:
	cmpq	%rdi, %rax
	jnb	.L421
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L417
	cmpq	%rbx, 88(%rdx)
	jne	.L417
	movq	$0, 88(%rdx)
	jmp	.L417
	.p2align 4,,10
	.p2align 3
.L421:
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.L414
.L427:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L432:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L411:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L418
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L433
	cmpq	$1, %rsi
	jne	.L411
.L410:
	leaq	40(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L407
.L433:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L410
.L431:
	movq	%rbx, %rsi
.L418:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L404:
	leaq	.LC21(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L430:
	leaq	.LC20(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6assets10UnloadFontEy, .-_ZN4slay6engine6assets10UnloadFontEy
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"slay::engine.assets.PurgeFonts(): Font does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE, @function
_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE:
.LFB2244:
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
	je	.L435
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L438:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L436
	cmpq	%rsi, %rdx
	jnb	.L437
	movq	48(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L437
.L436:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L438
.L435:
	movl	$1, %ebx
	cmpq	$1, %rsi
	jbe	.L490
.L439:
	testq	%rbp, %rbp
	je	.L443
.L444:
	xorl	%eax, %eax
	jmp	.L442
	.p2align 4,,10
	.p2align 3
.L491:
	addq	$1, %rax
	cmpq	%rax, %rbp
	je	.L443
.L442:
	cmpq	%rbx, (%r12,%rax,8)
	jne	.L491
	cmpq	%rax, %rbp
	je	.L443
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L444
	movq	48(%r13), %rcx
	leaq	-1(%rsi), %rdx
	cmpq	$0, -8(%rcx,%rsi,8)
	je	.L492
.L485:
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
.L443:
	.cfi_restore_state
	movq	0(%r13), %r8
	movq	536(%r8), %r9
	cmpq	$1, %r9
	jbe	.L446
	movq	544(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L448:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L455
	cmpq	536(%r8), %rsi
	jnb	.L487
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L453
	.p2align 4,,10
	.p2align 3
.L451:
	addq	$1, %rax
	cmpq	536(%r8), %rsi
	jnb	.L487
.L453:
	cmpq	%rdi, %rax
	jnb	.L455
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L451
	cmpq	%rbx, 88(%rdx)
	jne	.L451
	movq	$0, 88(%rdx)
	jmp	.L451
	.p2align 4,,10
	.p2align 3
.L455:
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.L448
	movq	40(%r13), %rsi
.L446:
	movq	48(%r13), %rax
	cmpq	%rsi, %rbx
	jnb	.L488
	movq	(%rax,%rbx,8), %rdi
	call	TTF_CloseFont@PLT
	movq	40(%r13), %rsi
	movq	48(%r13), %rcx
	cmpq	%rsi, %rbx
	jnb	.L488
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L439
	cmpq	$0, -8(%rcx,%rsi,8)
	leaq	-1(%rsi), %rdx
	jne	.L485
.L492:
	movq	%rsi, %r8
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L463:
	leaq	-1(%r8), %rax
	cmpq	%rsi, %rax
	jnb	.L493
	cmpq	$0, (%rcx,%rax,8)
	jne	.L494
	movq	%rax, %r8
.L458:
	cmpq	$1, %r8
	jne	.L463
.L462:
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
.L490:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L485
	orq	$-1, %rsi
.L487:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L494:
	subq	%r8, %rsi
	movq	%rsi, %rdx
	jmp	.L462
.L437:
	leaq	.LC22(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L488:
	movq	%rbx, %rsi
	jmp	.L487
.L493:
	movq	%rax, %rsi
	jmp	.L487
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE, .-_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"slay::engine.assets.LoadCursor(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC24:
	.string	"slay::engine.assets.LoadCursor(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC25:
	.string	"slay::engine.assets.LoadCursor(): HotSpotX out of range\nParams: Path: %s\n"
	.align 8
.LC26:
	.string	"slay::engine.assets.LoadCursor(): HotSpotY out of range\nParams: Path: %s\n"
	.align 8
.LC27:
	.string	"slay::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets10LoadCursorEPKctt
	.type	_ZN4slay6engine6assets10LoadCursorEPKctt, @function
_ZN4slay6engine6assets10LoadCursorEPKctt:
.LFB2245:
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
	je	.L518
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rsi, %r13
	movl	%edx, %ebx
	movl	%ecx, %r14d
	call	IMG_Load@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L519
	movzwl	%bx, %esi
	cmpl	%esi, 16(%rax)
	jle	.L520
	movzwl	%r14w, %r14d
	cmpl	%r14d, 20(%rax)
	jle	.L499
	movq	56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L501
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L502:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L501
.L506:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L502
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	64(%rbp), %rdx
	cmpq	56(%rbp), %rbx
	jnb	.L521
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L511
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L501:
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
	je	.L522
	movq	56(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L523
	cmpq	$0, (%rdx,%rcx,8)
	je	.L511
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	movq	56(%rbp), %rbx
	subq	$1, %rbx
.L495:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L524
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
.L521:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L499:
	leaq	.LC26(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L520:
	leaq	.LC25(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L519:
	leaq	.LC24(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L518:
	leaq	.LC23(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L524:
	call	__stack_chk_fail@PLT
.L511:
	leaq	.LC27(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L523:
	leaq	.LC7(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L522:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6assets10LoadCursorEPKctt, .-_ZN4slay6engine6assets10LoadCursorEPKctt
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"slay::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\nParams: ID: %lld\n"
	.align 8
.LC29:
	.string	"slay::engine.assets.UnloadCursor(): Cursor does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets12UnloadCursorEy
	.type	_ZN4slay6engine6assets12UnloadCursorEy, @function
_ZN4slay6engine6assets12UnloadCursorEy:
.LFB2246:
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
	je	.L539
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	56(%rdi), %rsi
	jnb	.L527
	movq	64(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L527
	call	SDL_FreeCursor@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L540
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L541
.L530:
	movq	0(%rbp), %rax
	cmpq	%rbx, 520(%rax)
	jne	.L535
	movq	$0, 520(%rax)
.L535:
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
.L541:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L534:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L538
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L542
	cmpq	$1, %rsi
	jne	.L534
.L533:
	leaq	56(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L542:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L533
.L540:
	movq	%rbx, %rsi
.L538:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L527:
	leaq	.LC29(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L539:
	leaq	.LC28(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6assets12UnloadCursorEy, .-_ZN4slay6engine6assets12UnloadCursorEy
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"slay::engine.assets.PurgeCursors(): Cursor does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE, @function
_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE:
.LFB2247:
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
	testq	%rdx, %rdx
	je	.L544
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L547:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L545
	cmpq	56(%r13), %rdx
	jnb	.L546
	movq	64(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L546
.L545:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L547
.L544:
	movq	0(%r13), %rax
	movq	$0, 520(%rax)
	movq	56(%r13), %rax
	cmpq	$1, %rax
	jbe	.L548
	movq	64(%r13), %rcx
	movl	$1, %ebp
.L549:
	testq	%rbx, %rbx
	je	.L552
.L553:
	xorl	%eax, %eax
	jmp	.L551
	.p2align 4,,10
	.p2align 3
.L588:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L552
.L551:
	cmpq	(%r12,%rax,8), %rbp
	jne	.L588
	cmpq	%rax, %rbx
	je	.L552
	movq	56(%r13), %rax
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L553
.L554:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L565
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L572
	cmpq	$1, %rax
	jne	.L589
.L572:
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
.L552:
	.cfi_restore_state
	movq	(%rcx,%rbp,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%r13), %rax
	movq	64(%r13), %rcx
	cmpq	%rax, %rbp
	jnb	.L590
	movq	$0, (%rcx,%rbp,8)
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L549
	jmp	.L554
.L589:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L559:
	movq	%rsi, %rdi
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L587
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L591
	cmpq	$1, %rsi
	jne	.L559
.L564:
	leaq	56(%r13), %rdi
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
.L548:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L572
.L565:
	orq	$-1, %rsi
.L587:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L591:
	subq	%rdi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdx
	jmp	.L564
.L546:
	leaq	.LC30(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L590:
	movq	%rbp, %rsi
	jmp	.L587
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE, .-_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE
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
