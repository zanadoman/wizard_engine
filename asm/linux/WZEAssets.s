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
.LFB8398:
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
.LFE8398:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0:
.LFB8399:
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
.LFE8399:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0:
.LFB8400:
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
.LFE8400:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0:
.LFB8401:
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
.LFE8401:
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
.LFB8157:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8157
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
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
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
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
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
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
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
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
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
.LLSDA8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8157-.LLSDACSB8157
.LLSDACSB8157:
	.uleb128 .LEHB0-.LFB8157
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8157
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L125-.LFB8157
	.uleb128 0
	.uleb128 .LEHB2-.LFB8157
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L126-.LFB8157
	.uleb128 0
	.uleb128 .LEHB3-.LFB8157
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L127-.LFB8157
	.uleb128 0
	.uleb128 .LEHB4-.LFB8157
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L126-.LFB8157
	.uleb128 0
	.uleb128 .LEHB5-.LFB8157
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L125-.LFB8157
	.uleb128 0
	.uleb128 .LEHB6-.LFB8157
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8157:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8157
	.type	_ZN3wze6engine6assetsC2EPS0_.cold, @function
_ZN3wze6engine6assetsC2EPS0_.cold:
.LFSB8157:
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
.LFE8157:
	.section	.gcc_except_table
.LLSDAC8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8157-.LLSDACSBC8157
.LLSDACSBC8157:
	.uleb128 .LEHB7-.LCOLDB4
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8157:
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
	.string	"wze::engine.assets.LoadTexture(): TexturePath must not be NULL\nParams: TexturePath: %p\n"
	.align 8
.LC6:
	.string	"wze::engine.assets.LoadTexture(): IMG_Load() failed\nParams: TexturePath: %s\n"
	.align 8
.LC7:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC8:
	.string	"wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: TexturePath: %s\n"
	.align 8
.LC9:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11LoadTextureEPKc
	.type	_ZN3wze6engine6assets11LoadTextureEPKc, @function
_ZN3wze6engine6assets11LoadTextureEPKc:
.LFB8159:
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
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
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
.LFE8159:
	.size	_ZN3wze6engine6assets11LoadTextureEPKc, .-_ZN3wze6engine6assets11LoadTextureEPKc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13UnloadTextureEy
	.type	_ZN3wze6engine6assets13UnloadTextureEy, @function
_ZN3wze6engine6assets13UnloadTextureEy:
.LFB8160:
	.cfi_startproc
	cmpq	8(%rdi), %rsi
	jb	.L214
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L214:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L195
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L215
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	jne	.L166
	cmpq	$1, %rax
	je	.L166
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L170:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L216
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L217
	cmpq	$1, %rsi
	jne	.L170
.L169:
	leaq	8(%rbp), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
.L166:
	movq	0(%rbp), %r10
	movq	280(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L195
	movq	288(%r10), %r11
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L188:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L171
	cmpq	%rsi, %r8
	jnb	.L174
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L173:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L174
.L175:
	cmpq	%rcx, %rax
	jnb	.L218
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L173
	cmpq	%rbx, 80(%rdx)
	jne	.L173
	movq	$0, 80(%rdx)
	movq	280(%r10), %rsi
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L171:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L188
.L195:
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
.L218:
	.cfi_restore_state
	cmpq	%rsi, %r8
	jnb	.L185
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L186:
	cmpq	%rcx, %rdi
	jnb	.L171
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L178
	cmpq	%rsi, %r8
	jnb	.L179
	xorl	%eax, %eax
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L181:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L179
.L182:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L219
.L180:
	cmpq	104(%rdx), %rax
	jnb	.L178
	movq	112(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L181
	movq	$0, (%rcx)
	movq	280(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L182
.L179:
	leaq	.LC7(%rip), %rdi
	movq	%r8, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L178:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L186
.L185:
	leaq	.LC7(%rip), %rdi
	movq	%r8, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L217:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L169
.L219:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L174:
	leaq	.LC7(%rip), %rdi
	movq	%r8, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L216:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L215:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6assets13UnloadTextureEy, .-_ZN3wze6engine6assets13UnloadTextureEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	.type	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE, @function
_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE:
.LFB8161:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
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
	movq	8(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L221
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movl	$1, %ebx
.L247:
	testq	%r13, %r13
	je	.L222
.L255:
	xorl	%eax, %eax
.L223:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L279
	addq	$1, %rax
	cmpq	%r13, %rax
	jne	.L223
.L222:
	movq	0(%rbp), %r10
	movq	280(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L226
	movq	288(%r10), %r11
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L244:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L227
	cmpq	%rsi, %r8
	jnb	.L235
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L229:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L235
.L231:
	cmpq	%rcx, %rax
	jnb	.L280
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L229
	cmpq	%rbx, 80(%rdx)
	jne	.L229
	movq	$0, 80(%rdx)
	movq	280(%r10), %rsi
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L227:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L244
	movq	8(%rbp), %rdx
.L226:
	movq	16(%rbp), %rax
	cmpq	%rdx, %rbx
	jnb	.L278
	movq	(%rax,%rbx,8), %rdi
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %rdx
	movq	16(%rbp), %rax
	cmpq	%rdx, %rbx
	jnb	.L278
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L247
.L256:
	cmpq	$0, -8(%rax,%rdx,8)
	leaq	-1(%rdx), %rdi
	je	.L281
.L275:
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
.L280:
	.cfi_restore_state
	cmpq	%rsi, %r8
	jnb	.L235
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L242:
	cmpq	%rcx, %rdi
	jnb	.L227
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L234
	cmpq	%rsi, %r8
	jnb	.L235
	xorl	%eax, %eax
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L237:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L235
.L238:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L282
.L236:
	cmpq	104(%rdx), %rax
	jnb	.L234
	movq	112(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L237
	movq	$0, (%rcx)
	movq	280(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L238
.L235:
	movq	%r8, %rsi
.L277:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L234:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L242
	jmp	.L235
	.p2align 4,,10
	.p2align 3
.L279:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L255
	movq	16(%rbp), %rax
	jmp	.L256
.L281:
	movq	%rdx, %rcx
	jmp	.L248
.L253:
	leaq	-1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jnb	.L277
	cmpq	$0, (%rax,%rsi,8)
	jne	.L283
	movq	%rsi, %rcx
.L248:
	cmpq	$1, %rcx
	jne	.L253
.L252:
	addq	$8, %rbp
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rbp, %rdi
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
.L221:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L275
	orq	$-1, %rsi
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L282:
	movq	%rdi, %rsi
	jmp	.L277
.L283:
	movq	%rdx, %rdi
	subq	%rcx, %rdi
	jmp	.L252
.L278:
	movq	%rbx, %rsi
	jmp	.L277
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE, .-_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.assets.PurgeTextures(): KeepTextureIDs must not be NULL\nParams: KeepTextureIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE:
.LFB8162:
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
	testq	%rsi, %rsi
	je	.L285
	movq	8(%rdi), %rcx
	movq	%rdi, %rbp
	movq	%rsi, %r12
	movl	$1, %ebx
	cmpq	$1, %rcx
	jbe	.L344
	.p2align 4,,10
	.p2align 3
.L286:
	movq	(%r12), %rdx
	movq	8(%r12), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L288
.L289:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L290
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L289
.L288:
	movq	0(%rbp), %r10
	movq	280(%r10), %rsi
	cmpq	$1, %rsi
	jbe	.L292
	movq	288(%r10), %r11
	movl	$1, %r8d
.L310:
	movq	(%r11,%r8,8), %r9
	testq	%r9, %r9
	je	.L293
	cmpq	%rsi, %r8
	jnb	.L301
	movq	56(%r9), %rcx
	movl	$1, %eax
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L295:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L301
.L297:
	cmpq	%rcx, %rax
	jnb	.L345
	movq	64(%r9), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L295
	cmpq	%rbx, 80(%rdx)
	jne	.L295
	movq	$0, 80(%rdx)
	movq	280(%r10), %rsi
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L293:
	addq	$1, %r8
	cmpq	%rsi, %r8
	jb	.L310
	movq	8(%rbp), %rcx
.L292:
	movq	16(%rbp), %rax
	cmpq	%rcx, %rbx
	jnb	.L343
	movq	(%rax,%rbx,8), %rdi
	call	SDL_DestroyTexture@PLT
	movq	8(%rbp), %rcx
	movq	16(%rbp), %rax
	cmpq	%rcx, %rbx
	jnb	.L343
	movq	$0, (%rax,%rbx,8)
.L290:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L286
	movq	16(%rbp), %rdx
	leaq	-1(%rcx), %r8
	cmpq	$0, -8(%rdx,%rcx,8)
	je	.L346
.L340:
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
.L345:
	.cfi_restore_state
	cmpq	%rsi, %r8
	jnb	.L301
	movq	88(%r9), %rcx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L308:
	cmpq	%rcx, %rdi
	jnb	.L293
	movq	96(%r9), %rax
	movq	(%rax,%rdi,8), %rdx
	testq	%rdx, %rdx
	je	.L300
	cmpq	%rsi, %r8
	jnb	.L301
	xorl	%eax, %eax
	jmp	.L302
	.p2align 4,,10
	.p2align 3
.L303:
	addq	$1, %rax
	cmpq	%rsi, %r8
	jnb	.L301
.L304:
	movq	88(%r9), %rcx
	cmpq	%rcx, %rdi
	jnb	.L347
.L302:
	cmpq	104(%rdx), %rax
	jnb	.L300
	movq	112(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L303
	movq	$0, (%rcx)
	movq	280(%r10), %rsi
	addq	$1, %rax
	cmpq	%rsi, %r8
	jb	.L304
.L301:
	movq	%r8, %rsi
.L342:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L300:
	addq	$1, %rdi
	cmpq	%rsi, %r8
	jb	.L308
	jmp	.L301
.L346:
	movq	%rcx, %rax
	jmp	.L313
.L318:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L342
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L348
	movq	%rsi, %rax
.L313:
	cmpq	$1, %rax
	jne	.L318
.L317:
	leaq	8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
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
.L344:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L340
	orq	$-1, %rsi
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L347:
	movq	%rdi, %rsi
	jmp	.L342
.L348:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L317
.L343:
	movq	%rbx, %rsi
	jmp	.L342
.L285:
	leaq	.LC10(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.assets.LoadSound(): SoundPath must not be NULL\nParams: SoundPath: %p\n"
	.align 8
.LC12:
	.string	"wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: SoundPath: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets9LoadSoundEPKc
	.type	_ZN3wze6engine6assets9LoadSoundEPKc, @function
_ZN3wze6engine6assets9LoadSoundEPKc:
.LFB8163:
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
	je	.L350
	movq	24(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L352
	movq	32(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L353:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L352
.L356:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L353
	movq	%r12, %rdi
	call	Mix_LoadWAV@PLT
	movq	32(%rbp), %rdx
	cmpq	24(%rbp), %rbx
	jnb	.L369
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L349
.L361:
	leaq	.LC12(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L352:
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
	je	.L370
	movq	24(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	24(%rbp), %rbx
	movq	32(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L371
	cmpq	$0, (%rax,%rbx,8)
	je	.L361
.L349:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L372
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
.L369:
	.cfi_restore_state
	movq	%rbx, %rsi
.L368:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L350:
	leaq	.LC11(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L372:
	call	__stack_chk_fail@PLT
.L371:
	orq	$-1, %rsi
	jmp	.L368
.L370:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6assets9LoadSoundEPKc, .-_ZN3wze6engine6assets9LoadSoundEPKc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11UnloadSoundEy
	.type	_ZN3wze6engine6assets11UnloadSoundEy, @function
_ZN3wze6engine6assets11UnloadSoundEy:
.LFB8164:
	.cfi_startproc
	cmpq	24(%rdi), %rsi
	jb	.L396
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L396:
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
	movq	32(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L375
	call	Mix_FreeChunk@PLT
	movq	24(%rbx), %rax
	movq	32(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L397
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L375
	cmpq	$1, %rax
	je	.L375
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L381:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L398
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L399
	cmpq	$1, %rsi
	jne	.L381
.L380:
	leaq	24(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
.L375:
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
.L399:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L380
.L398:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L397:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6assets11UnloadSoundEy, .-_ZN3wze6engine6assets11UnloadSoundEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	.type	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE, @function
_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE:
.LFB8165:
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
	movq	24(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L401
	movq	32(%rdi), %rcx
	movq	%rdi, %r12
	movq	%rsi, %rbp
	movq	%rdx, %r13
	movl	$1, %ebx
.L407:
	testq	%r13, %r13
	je	.L402
.L419:
	xorl	%eax, %eax
.L403:
	cmpq	%rbx, 0(%rbp,%rax,8)
	je	.L438
	addq	$1, %rax
	cmpq	%r13, %rax
	jne	.L403
.L402:
	movq	(%rcx,%rbx,8), %rdi
	call	Mix_FreeChunk@PLT
	movq	24(%r12), %rax
	movq	32(%r12), %rcx
	cmpq	%rax, %rbx
	jnb	.L439
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L407
.L420:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L417
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L425
	cmpq	$1, %rax
	jne	.L440
.L425:
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
.L438:
	.cfi_restore_state
	movq	24(%r12), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L419
	jmp	.L420
.L440:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L411:
	movq	%rsi, %rdi
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L437
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L441
	cmpq	$1, %rsi
	jne	.L411
.L416:
	leaq	24(%r12), %rdi
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
.L401:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L425
.L417:
	orq	$-1, %rsi
.L437:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L441:
	subq	%rdi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdx
	jmp	.L416
.L439:
	movq	%rbx, %rsi
	jmp	.L437
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE, .-_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.assets.PurgeSounds(): KeepSoundIDs must not be NULL\nParams: KeepSoundIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE:
.LFB8166:
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
	testq	%rsi, %rsi
	je	.L443
	movq	24(%rdi), %rax
	movq	%rdi, %r12
	cmpq	$1, %rax
	jbe	.L481
	movq	%rsi, %rbp
	movq	32(%rdi), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L451:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L446
.L447:
	cmpq	(%rcx,%rax,8), %rbx
	je	.L482
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L447
	.p2align 4,,10
	.p2align 3
.L446:
	movq	(%rsi,%rbx,8), %rdi
	call	Mix_FreeChunk@PLT
	movq	24(%r12), %rax
	movq	32(%r12), %rsi
	cmpq	%rax, %rbx
	jnb	.L483
	movq	$0, (%rsi,%rbx,8)
.L463:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L451
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L461
	cmpq	$0, (%rsi,%rdx,8)
	jne	.L468
	cmpq	$1, %rax
	jne	.L484
.L468:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L482:
	.cfi_restore_state
	movq	24(%r12), %rax
	jmp	.L463
.L484:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L455:
	movq	%rcx, %rdi
	subq	$1, %rcx
	cmpq	%rax, %rcx
	jnb	.L485
	cmpq	$0, (%rsi,%rcx,8)
	jne	.L486
	cmpq	$1, %rcx
	jne	.L455
.L460:
	leaq	24(%r12), %rdi
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
.L481:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L468
.L461:
	orq	$-1, %rsi
	jmp	.L480
	.p2align 4,,10
	.p2align 3
.L486:
	subq	%rdi, %rax
	movq	%rdi, %rcx
	movq	%rax, %rdx
	jmp	.L460
.L485:
	movq	%rcx, %rsi
.L480:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L483:
	movq	%rbx, %rsi
	jmp	.L480
.L443:
	leaq	.LC13(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.assets.LoadFont(): FontPath must not be NULL\nParams: FontPath: %p\n"
	.align 8
.LC15:
	.string	"wze::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: FontPath: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets8LoadFontEPKch
	.type	_ZN3wze6engine6assets8LoadFontEPKch, @function
_ZN3wze6engine6assets8LoadFontEPKch:
.LFB8167:
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
	je	.L488
	movq	40(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r12
	cmpq	$1, %rax
	jbe	.L490
	movq	48(%rdi), %rcx
	movl	$1, %ebx
	jmp	.L494
	.p2align 4,,10
	.p2align 3
.L491:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L490
.L494:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L491
	movzbl	%dl, %esi
	movq	%r12, %rdi
	call	TTF_OpenFont@PLT
	movq	48(%rbp), %rdx
	cmpq	40(%rbp), %rbx
	jnb	.L507
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L487
.L499:
	leaq	.LC15(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L490:
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
	je	.L508
	movq	40(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	40(%rbp), %rbx
	movq	48(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L509
	cmpq	$0, (%rax,%rbx,8)
	je	.L499
.L487:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L510
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
.L507:
	.cfi_restore_state
	movq	%rbx, %rsi
.L506:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L488:
	leaq	.LC14(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L510:
	call	__stack_chk_fail@PLT
.L509:
	orq	$-1, %rsi
	jmp	.L506
.L508:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6assets8LoadFontEPKch, .-_ZN3wze6engine6assets8LoadFontEPKch
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10UnloadFontEy
	.type	_ZN3wze6engine6assets10UnloadFontEy, @function
_ZN3wze6engine6assets10UnloadFontEy:
.LFB8168:
	.cfi_startproc
	cmpq	40(%rdi), %rsi
	jb	.L551
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L551:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	48(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L537
	call	TTF_CloseFont@PLT
	movq	40(%r15), %rax
	movq	48(%r15), %rdx
	cmpq	%rax, %r14
	jnb	.L552
	movq	$0, (%rdx,%r14,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	jne	.L515
	cmpq	$1, %rax
	je	.L515
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L519:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L553
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L554
	cmpq	$1, %rsi
	jne	.L519
.L518:
	leaq	40(%r15), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.p2align 4,,10
	.p2align 3
.L515:
	movq	(%r15), %rcx
	movq	280(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L537
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L532:
	movq	288(%rcx), %rax
	leaq	0(,%rbp,8), %r12
	cmpq	$0, (%rax,%rbp,8)
	je	.L520
	cmpq	%rsi, %rbp
	jnb	.L530
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L521:
	movq	(%rax,%r12), %rax
	cmpq	120(%rax), %rbx
	jnb	.L520
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r13
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L550
	cmpq	%r14, 112(%rdx)
	je	.L524
.L550:
	movq	288(%rcx), %rax
	addq	$1, %rbx
	cmpq	%rsi, %rbp
	jb	.L521
.L530:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L520:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L532
.L537:
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
	.p2align 4,,10
	.p2align 3
.L524:
	.cfi_restore_state
	xorl	%esi, %esi
	movq	$0, 112(%rdx)
	movw	%si, 64(%rdx)
	cmpq	280(%rcx), %rbp
	jnb	.L555
	cmpq	120(%rax), %rbx
	jnb	.L556
	movq	128(%rdx), %rdi
	call	SDL_DestroyTexture@PLT
	movq	(%r15), %rcx
	movq	280(%rcx), %rsi
	movq	288(%rcx), %rax
	cmpq	%rsi, %rbp
	jnb	.L557
	movq	(%rax,%r12), %rdx
	movq	128(%rdx), %rdi
	cmpq	120(%rdx), %rbx
	jnb	.L558
	movq	(%rdi,%r13), %rdx
	addq	$1, %rbx
	movq	$0, 128(%rdx)
	jmp	.L521
.L554:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L518
.L556:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L557:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L558:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L555:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L553:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L552:
	leaq	.LC7(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6assets10UnloadFontEy, .-_ZN3wze6engine6assets10UnloadFontEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	.type	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE, @function
_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE:
.LFB8169:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, (%rsp)
	movq	40(%rdi), %rdx
	movq	%rsi, 8(%rsp)
	cmpq	$1, %rdx
	jbe	.L560
	movq	%rdi, %rbp
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L581:
	cmpq	$0, (%rsp)
	je	.L561
.L589:
	xorl	%eax, %eax
.L562:
	movq	8(%rsp), %rdi
	cmpq	%r12, (%rdi,%rax,8)
	je	.L609
	addq	$1, %rax
	cmpq	%rax, (%rsp)
	jne	.L562
.L561:
	movq	0(%rbp), %rcx
	movq	280(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L565
	movl	$1, %r14d
	.p2align 4,,10
	.p2align 3
.L578:
	movq	288(%rcx), %rax
	leaq	0(,%r14,8), %r15
	cmpq	$0, (%rax,%r14,8)
	je	.L566
	cmpq	%rsi, %r14
	jnb	.L606
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L567:
	movq	(%rax,%r15), %rax
	cmpq	120(%rax), %rbx
	jnb	.L566
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r13
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L603
	cmpq	%r12, 112(%rdx)
	je	.L570
.L603:
	movq	288(%rcx), %rax
	addq	$1, %rbx
	cmpq	%rsi, %r14
	jb	.L567
.L606:
	movq	%r14, %rsi
.L605:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L566:
	addq	$1, %r14
	cmpq	%rsi, %r14
	jb	.L578
	movq	40(%rbp), %rdx
.L565:
	movq	48(%rbp), %rax
	cmpq	%rdx, %r12
	jnb	.L608
	movq	(%rax,%r12,8), %rdi
	call	TTF_CloseFont@PLT
	movq	40(%rbp), %rdx
	movq	48(%rbp), %rax
	cmpq	%rdx, %r12
	jnb	.L608
	movq	$0, (%rax,%r12,8)
	addq	$1, %r12
	cmpq	%rdx, %r12
	jb	.L581
.L590:
	cmpq	$0, -8(%rax,%rdx,8)
	leaq	-1(%rdx), %rdi
	je	.L610
.L601:
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
.L570:
	.cfi_restore_state
	xorl	%esi, %esi
	movq	$0, 112(%rdx)
	movw	%si, 64(%rdx)
	cmpq	280(%rcx), %r14
	jnb	.L606
	cmpq	120(%rax), %rbx
	jnb	.L607
	movq	128(%rdx), %rdi
	call	SDL_DestroyTexture@PLT
	movq	0(%rbp), %rcx
	movq	280(%rcx), %rsi
	movq	288(%rcx), %rax
	cmpq	%rsi, %r14
	jnb	.L606
	movq	(%rax,%r15), %rdx
	movq	128(%rdx), %rdi
	cmpq	120(%rdx), %rbx
	jnb	.L607
	movq	(%rdi,%r13), %rdx
	addq	$1, %rbx
	movq	$0, 128(%rdx)
	jmp	.L567
.L609:
	addq	$1, %r12
	cmpq	%rdx, %r12
	jb	.L589
	movq	48(%rbp), %rax
	jmp	.L590
.L610:
	movq	%rdx, %rcx
	jmp	.L582
	.p2align 4,,10
	.p2align 3
.L587:
	leaq	-1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jnb	.L605
	cmpq	$0, (%rax,%rsi,8)
	jne	.L611
	movq	%rsi, %rcx
.L582:
	cmpq	$1, %rcx
	jne	.L587
.L586:
	addq	$40, %rbp
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rbp, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L601
.L560:
	testq	%rdx, %rdx
	jne	.L601
	orq	$-1, %rsi
	jmp	.L605
	.p2align 4,,10
	.p2align 3
.L611:
	movq	%rdx, %rdi
	subq	%rcx, %rdi
	jmp	.L586
.L607:
	movq	%rbx, %rsi
	jmp	.L605
.L608:
	movq	%r12, %rsi
	jmp	.L605
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE, .-_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.assets.PurgeFonts(): KeepFontIDs must not be NULL\nParams: KeepFontIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE:
.LFB8170:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, 8(%rsp)
	testq	%rsi, %rsi
	je	.L613
	movq	40(%rdi), %rdx
	movq	%rdi, %rbp
	movl	$1, %r15d
	cmpq	$1, %rdx
	jbe	.L663
	.p2align 4,,10
	.p2align 3
.L614:
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rsi
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L616
.L617:
	cmpq	(%rsi,%rax,8), %r15
	je	.L618
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L617
	.p2align 4,,10
	.p2align 3
.L616:
	movq	0(%rbp), %rcx
	movq	280(%rcx), %rsi
	cmpq	$1, %rsi
	jbe	.L620
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L633:
	movq	288(%rcx), %rax
	leaq	0(,%r13,8), %r14
	cmpq	$0, (%rax,%r13,8)
	je	.L621
	cmpq	%rsi, %r13
	jnb	.L660
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L622:
	movq	(%rax,%r14), %rax
	cmpq	120(%rax), %rbx
	jnb	.L621
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r12
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L657
	cmpq	%r15, 112(%rdx)
	je	.L625
.L657:
	movq	288(%rcx), %rax
	addq	$1, %rbx
	cmpq	%rsi, %r13
	jb	.L622
.L660:
	movq	%r13, %rsi
.L659:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L621:
	addq	$1, %r13
	cmpq	%rsi, %r13
	jb	.L633
	movq	40(%rbp), %rdx
.L620:
	movq	48(%rbp), %rax
	cmpq	%rdx, %r15
	jnb	.L662
	movq	(%rax,%r15,8), %rdi
	call	TTF_CloseFont@PLT
	movq	40(%rbp), %rdx
	movq	48(%rbp), %rax
	cmpq	%rdx, %r15
	jnb	.L662
	movq	$0, (%rax,%r15,8)
.L618:
	addq	$1, %r15
	cmpq	%rdx, %r15
	jb	.L614
	movq	48(%rbp), %rcx
	leaq	-1(%rdx), %r8
	cmpq	$0, -8(%rcx,%rdx,8)
	je	.L664
.L655:
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
.L625:
	.cfi_restore_state
	xorl	%esi, %esi
	movq	$0, 112(%rdx)
	movw	%si, 64(%rdx)
	cmpq	280(%rcx), %r13
	jnb	.L660
	cmpq	120(%rax), %rbx
	jnb	.L661
	movq	128(%rdx), %rdi
	call	SDL_DestroyTexture@PLT
	movq	0(%rbp), %rcx
	movq	280(%rcx), %rsi
	movq	288(%rcx), %rax
	cmpq	%rsi, %r13
	jnb	.L660
	movq	(%rax,%r14), %rdx
	movq	128(%rdx), %rdi
	cmpq	120(%rdx), %rbx
	jnb	.L661
	movq	(%rdi,%r12), %rdx
	addq	$1, %rbx
	movq	$0, 128(%rdx)
	jmp	.L622
.L664:
	movq	%rdx, %rax
	jmp	.L636
	.p2align 4,,10
	.p2align 3
.L641:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L659
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L665
	movq	%rsi, %rax
.L636:
	cmpq	$1, %rax
	jne	.L641
.L640:
	leaq	40(%rbp), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L655
.L663:
	testq	%rdx, %rdx
	jne	.L655
	orq	$-1, %rsi
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L665:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L640
.L661:
	movq	%rbx, %rsi
	jmp	.L659
.L613:
	leaq	.LC16(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L662:
	movq	%r15, %rsi
	jmp	.L659
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.assets.LoadCursorTexture(): CursorTexturePath must not be NULL\nParams: CursorTexturePath: %p, HotSpotX: %d, HotSpotY: %d\n"
	.align 8
.LC18:
	.string	"wze::engine.assets.LoadCursorTexture(): IMG_Load() failed\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n"
	.align 8
.LC19:
	.string	"wze::engine.assets.LoadCursorTexture(): HotSpotX out of range\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n"
	.align 8
.LC20:
	.string	"wze::engine.assets.LoadCursorTexture(): HotSpotY out of range\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n"
	.align 8
.LC21:
	.string	"wze::engine.assets.LoadCursorTexture(): SDL_CreateColorCursor() failed\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets17LoadCursorTextureEPKctt
	.type	_ZN3wze6engine6assets17LoadCursorTextureEPKctt, @function
_ZN3wze6engine6assets17LoadCursorTextureEPKctt:
.LFB8171:
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
	movzwl	%cx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movzwl	%dx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L686
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rsi, %r14
	call	IMG_Load@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	je	.L687
	cmpl	%r12d, 16(%rax)
	jle	.L688
	cmpl	%r13d, 20(%rax)
	jle	.L670
	movq	56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L672
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L677
	.p2align 4,,10
	.p2align 3
.L673:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L672
.L677:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L673
	movl	%r13d, %edx
	movl	%r12d, %esi
	movq	%r15, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	64(%rbp), %rdx
	cmpq	56(%rbp), %rbx
	jnb	.L689
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L690
	movq	%r15, %rdi
	call	SDL_FreeSurface@PLT
	jmp	.L666
	.p2align 4,,10
	.p2align 3
.L672:
	movl	%r13d, %edx
	movl	%r12d, %esi
	movq	%r15, %rdi
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
	je	.L691
	movq	56(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	56(%rbp), %rax
	movq	64(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L692
	cmpq	$0, (%rdx,%rcx,8)
	je	.L693
	movq	%r15, %rdi
	call	SDL_FreeSurface@PLT
	movq	56(%rbp), %rbx
	subq	$1, %rbx
.L666:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L694
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L690:
	leaq	.LC21(%rip), %rdi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%r14, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L670:
	leaq	.LC20(%rip), %rdi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L688:
	leaq	.LC19(%rip), %rdi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L687:
	leaq	.LC18(%rip), %rdi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L686:
	leaq	.LC17(%rip), %rdi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L694:
	call	__stack_chk_fail@PLT
.L693:
	leaq	.LC21(%rip), %rdi
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L692:
	leaq	.LC7(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L691:
	leaq	.LC9(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6assets17LoadCursorTextureEPKctt, .-_ZN3wze6engine6assets17LoadCursorTextureEPKctt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets19UnloadCursorTextureEy
	.type	_ZN3wze6engine6assets19UnloadCursorTextureEy, @function
_ZN3wze6engine6assets19UnloadCursorTextureEy:
.LFB8172:
	.cfi_startproc
	cmpq	56(%rdi), %rsi
	jb	.L719
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L719:
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
	movq	64(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L697
	call	SDL_FreeCursor@PLT
	movq	56(%rbx), %rax
	movq	64(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L720
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %rdi
	jne	.L700
	cmpq	$1, %rax
	je	.L700
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L704:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L721
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L722
	cmpq	$1, %rsi
	jne	.L704
.L703:
	leaq	56(%rbx), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.p2align 4,,10
	.p2align 3
.L700:
	movq	(%rbx), %rax
	cmpq	%rbp, 264(%rax)
	jne	.L697
	movq	$0, 264(%rax)
.L697:
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
.L722:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	jmp	.L703
.L721:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L720:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6assets19UnloadCursorTextureEy, .-_ZN3wze6engine6assets19UnloadCursorTextureEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE
	.type	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE, @function
_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE:
.LFB8173:
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
	movq	56(%rdi), %rcx
	cmpq	$1, %rcx
	jbe	.L724
	movq	%rdx, %rbp
	movq	64(%rdi), %rdx
	movq	%rdi, %r12
	movq	%rsi, %r13
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L732:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L726
.L725:
	cmpq	0(%r13,%rax,8), %rbx
	je	.L727
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L725
.L726:
	movq	(%r12), %rax
	cmpq	%rbx, 264(%rax)
	jne	.L729
	movq	$0, 264(%rax)
	movq	56(%r12), %rcx
.L729:
	cmpq	%rcx, %rbx
	jnb	.L748
	movq	(%rdx,%rbx,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%r12), %rcx
	movq	64(%r12), %rdx
	cmpq	%rcx, %rbx
	jnb	.L748
	movq	$0, (%rdx,%rbx,8)
.L727:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L732
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L750
.L746:
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
.L750:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L733
	.p2align 4,,10
	.p2align 3
.L738:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L749
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L751
	movq	%rsi, %rax
.L733:
	cmpq	$1, %rax
	jne	.L738
.L737:
	leaq	56(%r12), %rdi
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
.L724:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L746
	orq	$-1, %rsi
.L749:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L751:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L737
.L748:
	movq	%rbx, %rsi
	jmp	.L749
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE, .-_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.assets.PurgeCursorTextures(): KeepCursorTextureIDs must not be NULL\nParams: KeepCursorTextureIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE, @function
_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE:
.LFB8174:
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
	testq	%rsi, %rsi
	je	.L753
	movq	56(%rdi), %rax
	movq	%rdi, %r12
	cmpq	$1, %rax
	jbe	.L783
	movq	%rsi, %rbp
	movq	64(%rdi), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L763:
	movq	0(%rbp), %rcx
	movq	8(%rbp), %rdi
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.L756
.L757:
	cmpq	(%rdi,%rdx,8), %rbx
	je	.L758
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L757
	.p2align 4,,10
	.p2align 3
.L756:
	movq	(%r12), %rdx
	cmpq	%rbx, 264(%rdx)
	jne	.L760
	movq	$0, 264(%rdx)
	movq	56(%r12), %rax
.L760:
	cmpq	%rax, %rbx
	jnb	.L781
	movq	(%rsi,%rbx,8), %rdi
	call	SDL_FreeCursor@PLT
	movq	56(%r12), %rax
	movq	64(%r12), %rsi
	cmpq	%rax, %rbx
	jnb	.L781
	movq	$0, (%rsi,%rbx,8)
.L758:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L763
	cmpq	$0, -8(%rsi,%rax,8)
	leaq	-1(%rax), %r8
	je	.L784
.L779:
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
	movq	%rax, %rcx
	jmp	.L764
	.p2align 4,,10
	.p2align 3
.L769:
	leaq	-1(%rcx), %rdx
	cmpq	%rax, %rdx
	jnb	.L785
	cmpq	$0, (%rsi,%rdx,8)
	jne	.L786
	movq	%rdx, %rcx
.L764:
	cmpq	$1, %rcx
	jne	.L769
.L768:
	leaq	56(%r12), %rdi
	movq	%r8, %rdx
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
.L783:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L779
	orq	$-1, %rsi
	jmp	.L782
	.p2align 4,,10
	.p2align 3
.L786:
	subq	%rcx, %rax
	movq	%rax, %r8
	jmp	.L768
.L781:
	movq	%rbx, %rsi
.L782:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L785:
	movq	%rdx, %rsi
	jmp	.L782
.L753:
	leaq	.LC22(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE, .-_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE
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
