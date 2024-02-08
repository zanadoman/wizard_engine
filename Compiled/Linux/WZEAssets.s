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
.LFE8390:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0:
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
.LFE8391:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0:
.LFB8392:
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
.LFE8392:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0:
.LFB8393:
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
.LFE8393:
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
	movq	584(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L203
	movq	592(%r10), %r11
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
	movq	584(%r10), %rsi
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
	movq	584(%r10), %rsi
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
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdx, %rbp
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
	movq	0(%r13,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L215
	cmpq	%rdi, %rdx
	jnb	.L216
	movq	16(%r12), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L216
.L215:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L217
.L214:
	movl	$1, %ebx
	cmpq	$1, %rdi
	jbe	.L285
.L218:
	testq	%rbp, %rbp
	je	.L220
.L253:
	xorl	%eax, %eax
.L245:
	cmpq	%rbx, 0(%r13,%rax,8)
	je	.L286
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L245
.L220:
	movq	(%r12), %r10
	movq	584(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L223
	movq	592(%r10), %r11
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L241:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L224
	cmpq	%rsi, %r8
	jnb	.L232
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L228
	.p2align 4,,10
	.p2align 3
.L226:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L232
.L228:
	cmpq	%rcx, %rax
	jnb	.L287
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L226
	cmpq	%rbx, 72(%rdx)
	jne	.L226
	movq	$0, 72(%rdx)
	movq	584(%r10), %rsi
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L224:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L241
	movq	8(%r12), %rdi
.L223:
	movq	16(%r12), %rax
	cmpq	%rdi, %rbx
	jnb	.L284
	movq	(%rax,%rbx,8), %rdi
	call	SDL_DestroyTexture@PLT
	movq	8(%r12), %rdi
	movq	16(%r12), %rcx
	cmpq	%rdi, %rbx
	jnb	.L284
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jb	.L218
.L244:
	cmpq	$0, -8(%rcx,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L288
.L281:
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
.L287:
	.cfi_restore_state
	cmpq	%rsi, %r8
	jnb	.L232
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L239:
	cmpq	%rcx, %rdi
	jnb	.L224
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L231
	cmpq	%rsi, %r8
	jnb	.L232
	xorl	%eax, %eax
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L234:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L232
.L235:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L289
.L233:
	cmpq	96(%rdx), %rax
	jnb	.L231
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L234
	movq	$0, (%rcx)
	movq	584(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L235
.L232:
	movq	%r8, %rsi
.L283:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L231:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L239
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L286:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jb	.L253
	movq	16(%r12), %rcx
	jmp	.L244
.L285:
	testq	%rdi, %rdi
	jne	.L281
	orq	$-1, %rsi
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L288:
	movq	%rdi, %rax
	jmp	.L246
.L251:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L283
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L290
	movq	%rsi, %rax
.L246:
	cmpq	$1, %rax
	jne	.L251
.L250:
	leaq	8(%r12), %rdi
	movq	%rax, %rsi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	jmp	.L281
.L289:
	movq	%rdi, %rsi
	jmp	.L283
.L290:
	subq	%rax, %rdi
	movq	%rdi, %rdx
	jmp	.L250
.L216:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L284:
	movq	%rbx, %rsi
	jmp	.L283
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
	movq	(%rsi), %rcx
	movq	8(%rdi), %rdi
	testq	%rcx, %rcx
	je	.L292
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L293:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L292
.L295:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L293
	cmpq	%rdi, %rdx
	jnb	.L294
	movq	16(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L293
.L294:
	leaq	.LC13(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L292:
	cmpq	$1, %rdi
	jbe	.L296
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L323:
	movq	8(%r12), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L297
.L298:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L299
	addq	$1, %rax
	cmpq	%rcx, %rax
	jne	.L298
.L297:
	movq	0(%rbp), %r10
	movq	584(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L301
	movq	592(%r10), %r11
	movl	$1, %r8d
.L319:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L302
	cmpq	%rsi, %r8
	jnb	.L310
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L306
	.p2align 4,,10
	.p2align 3
.L304:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L310
.L306:
	cmpq	%rcx, %rax
	jnb	.L358
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L304
	cmpq	%rbx, 72(%rdx)
	jne	.L304
	movq	$0, 72(%rdx)
	movq	584(%r10), %rsi
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L302:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L319
	movq	8(%rbp), %rdi
.L301:
	movq	16(%rbp), %rax
	cmpq	%rdi, %rbx
	jnb	.L357
	movq	(%rax,%rbx,8), %rdi
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %rdi
	movq	16(%rbp), %rax
	cmpq	%rdi, %rbx
	jnb	.L357
	movq	$0, (%rax,%rbx,8)
.L299:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L322
	movq	(%r12), %rcx
	jmp	.L323
	.p2align 4,,10
	.p2align 3
.L358:
	cmpq	%rsi, %r8
	jnb	.L310
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L317:
	cmpq	%rcx, %rdi
	jnb	.L302
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L309
	cmpq	%rsi, %r8
	jnb	.L310
	xorl	%eax, %eax
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L312:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L310
.L313:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L359
.L311:
	cmpq	96(%rdx), %rax
	jnb	.L309
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L312
	movq	$0, (%rcx)
	movq	584(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L313
.L310:
	movq	%r8, %rsi
.L356:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L309:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L317
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L322:
	movq	16(%rbp), %rdx
	leaq	-1(%rdi), %rcx
	cmpq	$0, -8(%rdx,%rdi,8)
	je	.L360
.L354:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L296:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L354
	orq	$-1, %rsi
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L360:
	movq	%rdi, %rax
	jmp	.L324
.L329:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L356
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L361
	movq	%rsi, %rax
.L324:
	cmpq	$1, %rax
	jne	.L329
.L328:
	leaq	8(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	jmp	.L354
.L359:
	movq	%rdi, %rsi
	jmp	.L356
.L361:
	subq	%rax, %rdi
	movq	%rdi, %rcx
	jmp	.L328
.L357:
	movq	%rbx, %rsi
	jmp	.L356
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
	je	.L363
	movq	24(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L365
	movq	32(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L369
	.p2align 4,,10
	.p2align 3
.L366:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L365
.L369:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L366
	movq	%r12, %rdi
	call	Mix_LoadWAV@PLT
	movq	32(%rbp), %rdx
	cmpq	24(%rbp), %rbx
	jnb	.L382
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L362
.L374:
	leaq	.LC15(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L365:
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
	je	.L383
	movq	24(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	24(%rbp), %rbx
	movq	32(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L384
	cmpq	$0, (%rax,%rbx,8)
	je	.L374
.L362:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L385
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
.L382:
	.cfi_restore_state
	movq	%rbx, %rsi
.L381:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L363:
	leaq	.LC14(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L385:
	call	__stack_chk_fail@PLT
.L384:
	orq	$-1, %rsi
	jmp	.L381
.L383:
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
	je	.L399
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	24(%rdi), %rsi
	jnb	.L388
	movq	32(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L388
	call	Mix_FreeChunk@PLT
	movq	24(%rbp), %rax
	movq	32(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L400
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L401
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
.L401:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L395:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L398
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L402
	cmpq	$1, %rsi
	jne	.L395
.L394:
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
.L402:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L394
.L400:
	movq	%rbx, %rsi
.L398:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L388:
	leaq	.LC17(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L399:
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
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	24(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L404
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L407:
	movq	0(%rbp,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L405
	cmpq	%rsi, %rcx
	jnb	.L406
	movq	32(%r13), %rdx
	cmpq	$0, (%rdx,%rcx,8)
	je	.L406
.L405:
	addq	$1, %rax
	cmpq	%rax, %r12
	jne	.L407
.L404:
	cmpq	$1, %rsi
	jbe	.L408
	movq	32(%r13), %rcx
	movl	$1, %ebx
.L409:
	testq	%r12, %r12
	je	.L410
.L427:
	xorl	%eax, %eax
.L415:
	cmpq	%rbx, 0(%rbp,%rax,8)
	je	.L451
	addq	$1, %rax
	cmpq	%rax, %r12
	jne	.L415
.L410:
	movq	(%rcx,%rbx,8), %rdi
	call	Mix_FreeChunk@PLT
	movq	24(%r13), %rax
	movq	32(%r13), %rcx
	cmpq	%rax, %rbx
	jnb	.L452
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L409
.L414:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L425
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L434
	cmpq	$1, %rax
	jne	.L453
.L434:
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
.L451:
	.cfi_restore_state
	movq	24(%r13), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L427
	jmp	.L414
.L453:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L419:
	movq	%rsi, %rdi
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L450
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L454
	cmpq	$1, %rsi
	jne	.L419
.L424:
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
.L408:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L434
.L425:
	orq	$-1, %rsi
.L450:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L454:
	subq	%rdi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdx
	jmp	.L424
.L406:
	leaq	.LC18(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L452:
	movq	%rbx, %rsi
	jmp	.L450
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
	movq	(%rsi), %rcx
	movq	24(%rdi), %r8
	testq	%rcx, %rcx
	je	.L456
	movq	8(%rsi), %rdi
	xorl	%eax, %eax
	jmp	.L459
	.p2align 4,,10
	.p2align 3
.L457:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L456
.L459:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L457
	cmpq	%r8, %rdx
	jnb	.L458
	movq	32(%rbp), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	jne	.L457
.L458:
	leaq	.LC19(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L456:
	cmpq	$1, %r8
	jbe	.L460
	movq	32(%rbp), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L467:
	movq	8(%r12), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L461
.L462:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L502
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L462
	.p2align 4,,10
	.p2align 3
.L461:
	movq	(%rsi,%rbx,8), %rdi
	call	Mix_FreeChunk@PLT
	movq	24(%rbp), %rax
	movq	32(%rbp), %rsi
	cmpq	%rax, %rbx
	jnb	.L503
	movq	$0, (%rsi,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L466
.L504:
	movq	(%r12), %rcx
	jmp	.L467
.L502:
	movq	24(%rbp), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L504
.L466:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L477
	cmpq	$0, (%rsi,%rdx,8)
	jne	.L486
	cmpq	$1, %rax
	jne	.L505
.L486:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L505:
	.cfi_restore_state
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L471:
	movq	%rcx, %rdi
	subq	$1, %rcx
	cmpq	%rax, %rcx
	jnb	.L506
	cmpq	$0, (%rsi,%rcx,8)
	jne	.L507
	cmpq	$1, %rcx
	jne	.L471
.L476:
	leaq	24(%rbp), %rdi
	movq	%rcx, %rsi
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
.L460:
	.cfi_restore_state
	testq	%r8, %r8
	jne	.L486
.L477:
	orq	$-1, %rsi
	jmp	.L501
	.p2align 4,,10
	.p2align 3
.L507:
	subq	%rdi, %rax
	movq	%rdi, %rcx
	movq	%rax, %rdx
	jmp	.L476
.L506:
	movq	%rcx, %rsi
.L501:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L503:
	movq	%rbx, %rsi
	jmp	.L501
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
	je	.L509
	movq	40(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L511
	movq	48(%rdi), %rcx
	movl	$1, %ebx
	jmp	.L515
	.p2align 4,,10
	.p2align 3
.L512:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L511
.L515:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L512
	movzbl	%dl, %esi
	movq	%r12, %rdi
	call	TTF_OpenFont@PLT
	movq	48(%rbp), %rdx
	cmpq	40(%rbp), %rbx
	jnb	.L528
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L508
.L520:
	leaq	.LC21(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L511:
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
	je	.L529
	movq	40(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	40(%rbp), %rbx
	movq	48(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L530
	cmpq	$0, (%rax,%rbx,8)
	je	.L520
.L508:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L531
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
.L528:
	.cfi_restore_state
	movq	%rbx, %rsi
.L527:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L509:
	leaq	.LC20(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L531:
	call	__stack_chk_fail@PLT
.L530:
	orq	$-1, %rsi
	jmp	.L527
.L529:
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
	je	.L560
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	40(%rdi), %rsi
	jnb	.L534
	movq	48(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L534
	call	TTF_CloseFont@PLT
	movq	40(%rbp), %rax
	movq	48(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L561
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L562
.L537:
	movq	0(%rbp), %r8
	movq	584(%r8), %r9
	cmpq	$1, %r9
	jbe	.L557
	movq	592(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L544:
	movq	(%r10,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L551
	cmpq	584(%r8), %rsi
	jnb	.L548
	movq	120(%rcx), %rdi
	movl	$1, %eax
	jmp	.L549
	.p2align 4,,10
	.p2align 3
.L547:
	addq	$1, %rax
	cmpq	584(%r8), %rsi
	jnb	.L548
.L549:
	cmpq	%rdi, %rax
	jnb	.L551
	movq	128(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L547
	cmpq	%rbx, 104(%rdx)
	jne	.L547
	movq	$0, 104(%rdx)
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L551:
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.L544
.L557:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L562:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L541:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L548
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L563
	cmpq	$1, %rsi
	jne	.L541
.L540:
	leaq	40(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L537
.L563:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L540
.L561:
	movq	%rbx, %rsi
.L548:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L534:
	leaq	.LC23(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L560:
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r8
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	40(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L565
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L568:
	movq	(%r15,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L566
	cmpq	%rdi, %rdx
	jnb	.L567
	movq	48(%r14), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L567
.L566:
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L568
.L565:
	movl	$1, %r13d
	cmpq	$1, %rdi
	jbe	.L627
	.p2align 4,,10
	.p2align 3
.L569:
	testq	%r8, %r8
	je	.L571
.L599:
	xorl	%eax, %eax
.L591:
	cmpq	%r13, (%r15,%rax,8)
	je	.L628
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L591
.L571:
	movq	(%r14), %rcx
	movq	584(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L574
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L587:
	movq	592(%rcx), %rax
	leaq	0(,%rbp,8), %r12
	cmpq	$0, (%rax,%rbp,8)
	je	.L575
	cmpq	%rsi, %rbp
	jnb	.L624
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L576:
	movq	(%rax,%r12), %rax
	cmpq	120(%rax), %rbx
	jnb	.L575
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r9
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L621
	cmpq	%r13, 104(%rdx)
	je	.L579
.L621:
	movq	592(%rcx), %rax
	addq	$1, %rbx
	cmpq	%rsi, %rbp
	jb	.L576
.L624:
	movq	%rbp, %rsi
.L623:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L575:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L587
	movq	40(%r14), %rdi
.L574:
	movq	48(%r14), %rax
	cmpq	%rdi, %r13
	jnb	.L626
	movq	(%rax,%r13,8), %rdi
	movq	%r8, (%rsp)
	call	TTF_CloseFont@PLT
	movq	40(%r14), %rdi
	movq	48(%r14), %rcx
	movq	(%rsp), %r8
	cmpq	%rdi, %r13
	jnb	.L626
	movq	$0, (%rcx,%r13,8)
	addq	$1, %r13
	cmpq	%rdi, %r13
	jb	.L569
.L590:
	cmpq	$0, -8(%rcx,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L629
.L619:
	addq	$24, %rsp
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
.L579:
	.cfi_restore_state
	movq	$0, 104(%rdx)
	cmpq	584(%rcx), %rbp
	jnb	.L624
	cmpq	120(%rax), %rbx
	jnb	.L625
	movq	112(%rdx), %rdi
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	call	SDL_DestroyTexture@PLT
	movq	(%r14), %rcx
	movq	(%rsp), %r9
	movq	8(%rsp), %r8
	movq	584(%rcx), %rsi
	movq	592(%rcx), %rax
	cmpq	%rsi, %rbp
	jnb	.L624
	movq	(%rax,%r12), %rdx
	movq	128(%rdx), %rdi
	cmpq	120(%rdx), %rbx
	jnb	.L625
	movq	(%rdi,%r9), %rdx
	addq	$1, %rbx
	movq	$0, 112(%rdx)
	jmp	.L576
.L628:
	addq	$1, %r13
	cmpq	%rdi, %r13
	jb	.L599
	movq	48(%r14), %rcx
	jmp	.L590
.L629:
	movq	%rdi, %rax
	jmp	.L592
	.p2align 4,,10
	.p2align 3
.L597:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L623
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L630
	movq	%rsi, %rax
.L592:
	cmpq	$1, %rax
	jne	.L597
.L596:
	leaq	40(%r14), %rdi
	movq	%rax, %rsi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L619
.L627:
	testq	%rdi, %rdi
	jne	.L619
	orq	$-1, %rsi
	jmp	.L623
	.p2align 4,,10
	.p2align 3
.L630:
	subq	%rax, %rdi
	movq	%rdi, %rdx
	jmp	.L596
.L625:
	movq	%rbx, %rsi
	jmp	.L623
.L567:
	leaq	.LC24(%rip), %rdi
	movq	%r8, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L626:
	movq	%r13, %rsi
	jmp	.L623
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	(%rsi), %rcx
	movq	40(%rdi), %rdi
	movq	%rsi, 8(%rsp)
	testq	%rcx, %rcx
	je	.L632
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L635
	.p2align 4,,10
	.p2align 3
.L633:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L632
.L635:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L633
	cmpq	%rdi, %rdx
	jnb	.L634
	movq	48(%r15), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L633
.L634:
	movq	8(%rsp), %rsi
	leaq	.LC25(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L632:
	cmpq	$1, %rdi
	jbe	.L636
	movq	8(%rsp), %rax
	movl	$1, %r14d
	.p2align 4,,10
	.p2align 3
.L658:
	movq	8(%rax), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L637
.L638:
	cmpq	%r14, (%rdx,%rax,8)
	je	.L639
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L638
	.p2align 4,,10
	.p2align 3
.L637:
	movq	(%r15), %rcx
	movq	584(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L641
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L654:
	movq	592(%rcx), %rax
	leaq	0(,%rbp,8), %r13
	cmpq	$0, (%rax,%rbp,8)
	je	.L642
	cmpq	%rsi, %rbp
	jnb	.L686
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L643:
	movq	(%rax,%r13), %rax
	cmpq	120(%rax), %rbx
	jnb	.L642
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r12
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L683
	cmpq	%r14, 104(%rdx)
	je	.L646
.L683:
	movq	592(%rcx), %rax
	addq	$1, %rbx
	cmpq	%rsi, %rbp
	jb	.L643
.L686:
	movq	%rbp, %rsi
.L685:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L642:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L654
	movq	40(%r15), %rdi
.L641:
	movq	48(%r15), %rax
	cmpq	%rdi, %r14
	jnb	.L688
	movq	(%rax,%r14,8), %rdi
	call	TTF_CloseFont@PLT
	movq	40(%r15), %rdi
	movq	48(%r15), %rax
	cmpq	%rdi, %r14
	jnb	.L688
	movq	$0, (%rax,%r14,8)
.L639:
	addq	$1, %r14
	cmpq	%rdi, %r14
	jnb	.L657
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	jmp	.L658
	.p2align 4,,10
	.p2align 3
.L646:
	movq	$0, 104(%rdx)
	cmpq	584(%rcx), %rbp
	jnb	.L686
	cmpq	120(%rax), %rbx
	jnb	.L687
	movq	112(%rdx), %rdi
	call	SDL_DestroyTexture@PLT
	movq	(%r15), %rcx
	movq	584(%rcx), %rsi
	movq	592(%rcx), %rax
	cmpq	%rsi, %rbp
	jnb	.L686
	movq	(%rax,%r13), %rdx
	movq	128(%rdx), %rdi
	cmpq	120(%rdx), %rbx
	jnb	.L687
	movq	(%rdi,%r12), %rdx
	addq	$1, %rbx
	movq	$0, 112(%rdx)
	jmp	.L643
.L657:
	movq	48(%r15), %rdx
	leaq	-1(%rdi), %rcx
	cmpq	$0, -8(%rdx,%rdi,8)
	je	.L689
.L681:
	addq	$24, %rsp
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
.L689:
	.cfi_restore_state
	movq	%rdi, %rax
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L664:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L685
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L690
	movq	%rsi, %rax
.L659:
	cmpq	$1, %rax
	jne	.L664
.L663:
	leaq	40(%r15), %rdi
	movq	%rcx, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L681
.L636:
	testq	%rdi, %rdi
	jne	.L681
	orq	$-1, %rsi
	jmp	.L685
	.p2align 4,,10
	.p2align 3
.L690:
	subq	%rax, %rdi
	movq	%rdi, %rcx
	jmp	.L663
.L687:
	movq	%rbx, %rsi
	jmp	.L685
.L688:
	movq	%r14, %rsi
	jmp	.L685
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
	je	.L714
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rsi, %r13
	movl	%edx, %ebx
	movl	%ecx, %r14d
	call	IMG_Load@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L715
	movzwl	%bx, %esi
	cmpl	%esi, 16(%rax)
	jle	.L716
	movzwl	%r14w, %r14d
	cmpl	%r14d, 20(%rax)
	jle	.L695
	movq	56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L697
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L702
	.p2align 4,,10
	.p2align 3
.L698:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L697
.L702:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L698
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	64(%rbp), %rdx
	cmpq	56(%rbp), %rbx
	jnb	.L717
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L707
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	jmp	.L691
	.p2align 4,,10
	.p2align 3
.L697:
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
	je	.L718
	movq	56(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L719
	cmpq	$0, (%rdx,%rcx,8)
	je	.L707
	movq	%r12, %rdi
	call	SDL_FreeSurface@PLT
	movq	56(%rbp), %rbx
	subq	$1, %rbx
.L691:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L720
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
.L717:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L695:
	leaq	.LC29(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L716:
	leaq	.LC28(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L715:
	leaq	.LC27(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L714:
	leaq	.LC26(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L720:
	call	__stack_chk_fail@PLT
.L707:
	leaq	.LC30(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L719:
	leaq	.LC7(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L718:
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
	je	.L735
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	56(%rdi), %rsi
	jnb	.L723
	movq	64(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L723
	call	SDL_FreeCursor@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L736
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	je	.L737
.L726:
	movq	0(%rbp), %rax
	cmpq	%rbx, 568(%rax)
	jne	.L731
	movq	$0, 568(%rax)
.L731:
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
.L737:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L730:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L734
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L738
	cmpq	$1, %rsi
	jne	.L730
.L729:
	leaq	56(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	jmp	.L726
	.p2align 4,,10
	.p2align 3
.L738:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L729
.L736:
	movq	%rbx, %rsi
.L734:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L723:
	leaq	.LC32(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L735:
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
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	56(%rdi), %rdx
	testq	%rbp, %rbp
	je	.L740
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L743:
	movq	(%r12,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L741
	cmpq	%rdx, %rcx
	jnb	.L742
	movq	64(%r13), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.L742
.L741:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L743
.L740:
	cmpq	$1, %rdx
	jbe	.L744
	movq	64(%r13), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L745:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L746
.L753:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L747
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L753
.L746:
	movq	0(%r13), %rax
	cmpq	%rbx, 568(%rax)
	jne	.L749
	movq	$0, 568(%rax)
	movq	56(%r13), %rdx
.L749:
	cmpq	%rdx, %rbx
	jnb	.L775
	movq	(%rcx,%rbx,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%r13), %rdx
	movq	64(%r13), %rcx
	cmpq	%rdx, %rbx
	jnb	.L775
	movq	$0, (%rcx,%rbx,8)
.L747:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L745
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L777
.L773:
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
.L777:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L754
	.p2align 4,,10
	.p2align 3
.L759:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L776
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L778
	movq	%rsi, %rax
.L754:
	cmpq	$1, %rax
	jne	.L759
.L758:
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
.L744:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L773
	orq	$-1, %rsi
.L776:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L778:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L758
.L742:
	leaq	.LC33(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L775:
	movq	%rbx, %rsi
	jmp	.L776
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
	movq	(%rsi), %rcx
	movq	56(%rdi), %rdi
	testq	%rcx, %rcx
	je	.L780
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L783
	.p2align 4,,10
	.p2align 3
.L781:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L780
.L783:
	movq	(%r8,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L781
	cmpq	%rdi, %rdx
	jnb	.L782
	movq	64(%rbp), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	jne	.L781
.L782:
	leaq	.LC34(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L780:
	cmpq	$1, %rdi
	jbe	.L784
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L793:
	movq	8(%r12), %rsi
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L785
.L786:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L787
	addq	$1, %rax
	cmpq	%rcx, %rax
	jne	.L786
	.p2align 4,,10
	.p2align 3
.L785:
	movq	0(%rbp), %rax
	cmpq	%rbx, 568(%rax)
	jne	.L789
	movq	$0, 568(%rax)
	movq	56(%rbp), %rdi
.L789:
	cmpq	%rdi, %rbx
	jnb	.L816
	movq	(%rdx,%rbx,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%rbp), %rdi
	movq	64(%rbp), %rdx
	cmpq	%rdi, %rbx
	jnb	.L816
	movq	$0, (%rdx,%rbx,8)
.L787:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L792
	movq	(%r12), %rcx
	jmp	.L793
	.p2align 4,,10
	.p2align 3
.L792:
	cmpq	$0, -8(%rdx,%rdi,8)
	leaq	-1(%rdi), %rcx
	je	.L818
.L814:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L818:
	.cfi_restore_state
	movq	%rdi, %rax
	jmp	.L794
	.p2align 4,,10
	.p2align 3
.L799:
	leaq	-1(%rax), %rsi
	cmpq	%rdi, %rsi
	jnb	.L817
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L819
	movq	%rsi, %rax
.L794:
	cmpq	$1, %rax
	jne	.L799
.L798:
	leaq	56(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
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
.L784:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L814
	orq	$-1, %rsi
	jmp	.L817
	.p2align 4,,10
	.p2align 3
.L819:
	movq	%rdi, %rcx
	subq	%rax, %rcx
	jmp	.L798
.L816:
	movq	%rbx, %rsi
.L817:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
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
