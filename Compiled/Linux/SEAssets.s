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
.LFB2474:
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
.LFE2474:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0:
.LFB2475:
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
.LFE2475:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0:
.LFB2476:
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
.LFE2476:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0:
.LFB2477:
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
.LFE2477:
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
	.globl	_ZN4slay6engine6assetsC2EPS0_
	.type	_ZN4slay6engine6assetsC2EPS0_, @function
_ZN4slay6engine6assetsC2EPS0_:
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
	.type	_ZN4slay6engine6assetsC2EPS0_.cold, @function
_ZN4slay6engine6assetsC2EPS0_.cold:
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
	.size	_ZN4slay6engine6assetsC2EPS0_, .-_ZN4slay6engine6assetsC2EPS0_
	.section	.text.unlikely
	.size	_ZN4slay6engine6assetsC2EPS0_.cold, .-_ZN4slay6engine6assetsC2EPS0_.cold
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN4slay6engine6assetsC1EPS0_
	.set	_ZN4slay6engine6assetsC1EPS0_,_ZN4slay6engine6assetsC2EPS0_
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
	.string	"slay::engine.assets.UnloadTexture(): Texture does not exist\nParams: ID: %lld\n"
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
	cmpq	96(%rdx), %rax
	jnb	.L180
	movq	104(%rdx), %rcx
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
	.string	"slay::engine.assets.PurgeTextures(): Texture does not exist\nParams: Keep(length): %ld\n"
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
	cmpq	96(%rdx), %rax
	jnb	.L233
	movq	104(%rdx), %rcx
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
	.string	"slay::engine.assets.PurgeTextures(): Texture does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6assets13PurgeTexturesEPN3neo5arrayIyEE, @function
_ZN4slay6engine6assets13PurgeTexturesEPN3neo5arrayIyEE:
.LFB2239:
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
	movq	8(%rdi), %r8
	testq	%rdx, %rdx
	je	.L289
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L292:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L290
	cmpq	%r8, %rcx
	jnb	.L291
	movq	16(%rbp), %rdi
	cmpq	$0, (%rdi,%rcx,8)
	je	.L291
.L290:
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L292
.L289:
	movl	$1, %ebx
	cmpq	$1, %r8
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
	cmpq	%r8, %rbx
	jnb	.L320
.L359:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L321
	.p2align 4,,10
	.p2align 3
.L297:
	movq	0(%rbp), %r10
	movq	536(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L299
	movq	544(%r10), %r11
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
	cmpq	%rbx, 64(%rdx)
	jne	.L302
	movq	$0, 64(%rdx)
	movq	536(%r10), %rsi
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L300:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L317
	movq	8(%rbp), %r8
.L299:
	movq	16(%rbp), %rax
	cmpq	%r8, %rbx
	jnb	.L355
	movq	(%rax,%rbx,8), %rdi
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %r8
	movq	16(%rbp), %rax
	cmpq	%r8, %rbx
	jnb	.L355
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L359
.L320:
	movq	16(%rbp), %rdx
	leaq	-1(%r8), %rcx
	cmpq	$0, -8(%rdx,%r8,8)
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
	movq	536(%r10), %rsi
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
	movq	%r8, %rax
	jmp	.L322
.L327:
	leaq	-1(%rax), %rsi
	cmpq	%r8, %rsi
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
	testq	%r8, %r8
	jne	.L352
	orq	$-1, %rsi
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L362:
	movq	%r8, %rcx
	subq	%rax, %rcx
	jmp	.L326
.L361:
	movq	%rdi, %rsi
	jmp	.L354
.L291:
	leaq	.LC13(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L355:
	movq	%rbx, %rsi
	jmp	.L354
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6assets13PurgeTexturesEPN3neo5arrayIyEE, .-_ZN4slay6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"slay::engine.assets.LoadSound(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC15:
	.string	"slay::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets9LoadSoundEPKc
	.type	_ZN4slay6engine6assets9LoadSoundEPKc, @function
_ZN4slay6engine6assets9LoadSoundEPKc:
.LFB2240:
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
.LFE2240:
	.size	_ZN4slay6engine6assets9LoadSoundEPKc, .-_ZN4slay6engine6assets9LoadSoundEPKc
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"slay::engine.assets.UnloadSound(): Illegal deletion of NULL Sound\nParams: ID: %lld\n"
	.align 8
.LC17:
	.string	"slay::engine.assets.UnloadSound(): Sound does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets11UnloadSoundEy
	.type	_ZN4slay6engine6assets11UnloadSoundEy, @function
_ZN4slay6engine6assets11UnloadSoundEy:
.LFB2241:
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
.LFE2241:
	.size	_ZN4slay6engine6assets11UnloadSoundEy, .-_ZN4slay6engine6assets11UnloadSoundEy
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"slay::assets.PurgeSounds(): Sound does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE, @function
_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE:
.LFB2242:
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
.LFE2242:
	.size	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE, .-_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"slay::assets.PurgeSounds(): Sound does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6assets11PurgeSoundsEPN3neo5arrayIyEE, @function
_ZN4slay6engine6assets11PurgeSoundsEPN3neo5arrayIyEE:
.LFB2243:
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
	movq	24(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L454
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L457:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L455
	cmpq	%rsi, %rcx
	jnb	.L456
	movq	32(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L456
.L455:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L457
.L454:
	cmpq	$1, %rsi
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
	testq	%rsi, %rsi
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
.L456:
	leaq	.LC19(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L498:
	movq	%rbx, %rsi
	jmp	.L496
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6assets11PurgeSoundsEPN3neo5arrayIyEE, .-_ZN4slay6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"slay::engine.assets.LoadFont(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC21:
	.string	"slay::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets8LoadFontEPKch
	.type	_ZN4slay6engine6assets8LoadFontEPKch, @function
_ZN4slay6engine6assets8LoadFontEPKch:
.LFB2244:
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
.LFE2244:
	.size	_ZN4slay6engine6assets8LoadFontEPKch, .-_ZN4slay6engine6assets8LoadFontEPKch
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"slay::engine.assets.UnloadFont(): Illegal deletion of NULL Font\nParams: ID: %lld\n"
	.align 8
.LC23:
	.string	"slay::engine.assets.UnloadFont(): Font does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets10UnloadFontEy
	.type	_ZN4slay6engine6assets10UnloadFontEy, @function
_ZN4slay6engine6assets10UnloadFontEy:
.LFB2245:
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
	movq	536(%r8), %r9
	cmpq	$1, %r9
	jbe	.L551
	movq	544(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L538:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L545
	cmpq	536(%r8), %rsi
	jnb	.L542
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L541:
	addq	$1, %rax
	cmpq	536(%r8), %rsi
	jnb	.L542
.L543:
	cmpq	%rdi, %rax
	jnb	.L545
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L541
	cmpq	%rbx, 96(%rdx)
	jne	.L541
	movq	$0, 96(%rdx)
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
.LFE2245:
	.size	_ZN4slay6engine6assets10UnloadFontEy, .-_ZN4slay6engine6assets10UnloadFontEy
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"slay::engine.assets.PurgeFonts(): Font does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE, @function
_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE:
.LFB2246:
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
	movq	536(%r8), %r9
	cmpq	$1, %r9
	jbe	.L570
	movq	544(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L572:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L579
	cmpq	536(%r8), %rsi
	jnb	.L611
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L577
	.p2align 4,,10
	.p2align 3
.L575:
	addq	$1, %rax
	cmpq	536(%r8), %rsi
	jnb	.L611
.L577:
	cmpq	%rdi, %rax
	jnb	.L579
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L575
	cmpq	%rbx, 96(%rdx)
	jne	.L575
	movq	$0, 96(%rdx)
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
.LFE2246:
	.size	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE, .-_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"slay::engine.assets.PurgeFonts(): Font does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6assets10PurgeFontsEPN3neo5arrayIyEE, @function
_ZN4slay6engine6assets10PurgeFontsEPN3neo5arrayIyEE:
.LFB2247:
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
	movq	40(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L620
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L623:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L621
	cmpq	%rsi, %rcx
	jnb	.L622
	movq	48(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L622
.L621:
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L623
.L620:
	movl	$1, %ebx
	cmpq	$1, %rsi
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
	cmpq	%rsi, %rbx
	jnb	.L642
.L675:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L643
	.p2align 4,,10
	.p2align 3
.L628:
	movq	0(%rbp), %r8
	movq	536(%r8), %r9
	cmpq	$1, %r9
	jbe	.L630
	movq	544(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L632:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L639
	cmpq	536(%r8), %rsi
	jnb	.L671
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L637
	.p2align 4,,10
	.p2align 3
.L635:
	addq	$1, %rax
	cmpq	536(%r8), %rsi
	jnb	.L671
.L637:
	cmpq	%rdi, %rax
	jnb	.L639
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L635
	cmpq	%rbx, 96(%rdx)
	jne	.L635
	movq	$0, 96(%rdx)
	jmp	.L635
	.p2align 4,,10
	.p2align 3
.L639:
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jne	.L632
	movq	40(%rbp), %rsi
.L630:
	movq	48(%rbp), %rax
	cmpq	%rsi, %rbx
	jnb	.L672
	movq	(%rax,%rbx,8), %rdi
	call	TTF_CloseFont@PLT
	movq	40(%rbp), %rsi
	movq	48(%rbp), %rax
	cmpq	%rsi, %rbx
	jnb	.L672
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L675
	.p2align 4,,10
	.p2align 3
.L642:
	movq	48(%rbp), %rdx
	leaq	-1(%rsi), %r8
	cmpq	$0, -8(%rdx,%rsi,8)
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
	movq	%rsi, %rcx
	jmp	.L644
	.p2align 4,,10
	.p2align 3
.L649:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L677
	cmpq	$0, (%rdx,%rax,8)
	jne	.L678
	movq	%rax, %rcx
.L644:
	cmpq	$1, %rcx
	jne	.L649
.L648:
	leaq	40(%rbp), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
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
	testq	%rsi, %rsi
	jne	.L669
	orq	$-1, %rsi
.L671:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L678:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L648
.L622:
	leaq	.LC25(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L672:
	movq	%rbx, %rsi
	jmp	.L671
.L677:
	movq	%rax, %rsi
	jmp	.L671
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6assets10PurgeFontsEPN3neo5arrayIyEE, .-_ZN4slay6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"slay::engine.assets.LoadCursor(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC27:
	.string	"slay::engine.assets.LoadCursor(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC28:
	.string	"slay::engine.assets.LoadCursor(): HotSpotX out of range\nParams: Path: %s\n"
	.align 8
.LC29:
	.string	"slay::engine.assets.LoadCursor(): HotSpotY out of range\nParams: Path: %s\n"
	.align 8
.LC30:
	.string	"slay::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets10LoadCursorEPKctt
	.type	_ZN4slay6engine6assets10LoadCursorEPKctt, @function
_ZN4slay6engine6assets10LoadCursorEPKctt:
.LFB2248:
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
	je	.L702
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rsi, %r13
	movl	%edx, %ebx
	movl	%ecx, %r14d
	call	IMG_Load@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L703
	movzwl	%bx, %esi
	cmpl	%esi, 16(%rax)
	jle	.L704
	movzwl	%r14w, %r14d
	cmpl	%r14d, 20(%rax)
	jle	.L683
	movq	56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L685
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L690
	.p2align 4,,10
	.p2align 3
.L686:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L685
.L690:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L686
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	64(%rbp), %rdx
	cmpq	56(%rbp), %rbx
	jnb	.L705
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L695
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	jmp	.L679
	.p2align 4,,10
	.p2align 3
.L685:
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
	je	.L706
	movq	56(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L707
	cmpq	$0, (%rdx,%rcx,8)
	je	.L695
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	movq	56(%rbp), %rbx
	subq	$1, %rbx
.L679:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L708
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
.L705:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L683:
	leaq	.LC29(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L704:
	leaq	.LC28(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L703:
	leaq	.LC27(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L702:
	leaq	.LC26(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L708:
	call	__stack_chk_fail@PLT
.L695:
	leaq	.LC30(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L707:
	leaq	.LC7(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L706:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6assets10LoadCursorEPKctt, .-_ZN4slay6engine6assets10LoadCursorEPKctt
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"slay::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\nParams: ID: %lld\n"
	.align 8
.LC32:
	.string	"slay::engine.assets.UnloadCursor(): Cursor does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets12UnloadCursorEy
	.type	_ZN4slay6engine6assets12UnloadCursorEy, @function
_ZN4slay6engine6assets12UnloadCursorEy:
.LFB2249:
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
	je	.L723
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	56(%rdi), %rsi
	jnb	.L711
	movq	64(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L711
	call	SDL_FreeCursor@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L724
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L725
.L714:
	movq	0(%rbp), %rax
	cmpq	%rbx, 520(%rax)
	jne	.L719
	movq	$0, 520(%rax)
.L719:
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
.L725:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L718:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L722
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L726
	cmpq	$1, %rsi
	jne	.L718
.L717:
	leaq	56(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	jmp	.L714
	.p2align 4,,10
	.p2align 3
.L726:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L717
.L724:
	movq	%rbx, %rsi
.L722:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L711:
	leaq	.LC32(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L723:
	leaq	.LC31(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6assets12UnloadCursorEy, .-_ZN4slay6engine6assets12UnloadCursorEy
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"slay::engine.assets.PurgeCursors(): Cursor does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE, @function
_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE:
.LFB2250:
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
	je	.L728
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L731:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L729
	cmpq	56(%r13), %rdx
	jnb	.L730
	movq	64(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L730
.L729:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L731
.L728:
	movq	0(%r13), %rax
	movq	$0, 520(%rax)
	movq	56(%r13), %rax
	cmpq	$1, %rax
	jbe	.L732
	movq	64(%r13), %rcx
	movl	$1, %ebp
.L733:
	testq	%rbx, %rbx
	je	.L736
.L737:
	xorl	%eax, %eax
	jmp	.L735
	.p2align 4,,10
	.p2align 3
.L772:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L736
.L735:
	cmpq	(%r12,%rax,8), %rbp
	jne	.L772
	cmpq	%rax, %rbx
	je	.L736
	movq	56(%r13), %rax
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L737
.L738:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L749
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L756
	cmpq	$1, %rax
	jne	.L773
.L756:
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
.L736:
	.cfi_restore_state
	movq	(%rcx,%rbp,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%r13), %rax
	movq	64(%r13), %rcx
	cmpq	%rax, %rbp
	jnb	.L774
	movq	$0, (%rcx,%rbp,8)
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.L733
	jmp	.L738
.L773:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L743:
	movq	%rsi, %rdi
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L771
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L775
	cmpq	$1, %rsi
	jne	.L743
.L748:
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
.L732:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L756
.L749:
	orq	$-1, %rsi
.L771:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L775:
	subq	%rdi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdx
	jmp	.L748
.L730:
	leaq	.LC33(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L774:
	movq	%rbp, %rsi
	jmp	.L771
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE, .-_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"slay::engine.assets.PurgeCursors(): Cursor does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6assets12PurgeCursorsEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6assets12PurgeCursorsEPN3neo5arrayIyEE, @function
_ZN4slay6engine6assets12PurgeCursorsEPN3neo5arrayIyEE:
.LFB2251:
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
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.L777
	movq	56(%rdi), %r8
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L780:
	movq	(%rdi,%rax,8), %rdx
	cmpq	%r8, %rdx
	jnb	.L778
	movq	64(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L778
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L780
.L777:
	movq	0(%rbp), %rax
	movq	$0, 520(%rax)
	movq	56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L781
	movq	64(%rbp), %rdi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L782:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	je	.L785
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L784
	.p2align 4,,10
	.p2align 3
.L817:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L785
.L784:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L817
	cmpq	%rax, %rdx
	je	.L785
	movq	56(%rbp), %rax
.L786:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L782
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L799
	cmpq	$0, (%rdi,%rdx,8)
	jne	.L805
	cmpq	$1, %rax
	jne	.L818
.L805:
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
.L785:
	.cfi_restore_state
	movq	(%rdi,%rbx,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdi
	cmpq	%rax, %rbx
	jnb	.L819
	movq	$0, (%rdi,%rbx,8)
	jmp	.L786
.L818:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L793:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L816
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L820
	cmpq	$1, %rsi
	jne	.L793
.L798:
	leaq	56(%rbp), %rdi
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
.L781:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L805
.L799:
	orq	$-1, %rsi
.L816:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L820:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmp	.L798
.L778:
	leaq	.LC34(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L819:
	movq	%rbx, %rsi
	jmp	.L816
	.cfi_endproc
.LFE2251:
	.size	_ZN4slay6engine6assets12PurgeCursorsEPN3neo5arrayIyEE, .-_ZN4slay6engine6assets12PurgeCursorsEPN3neo5arrayIyEE
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
