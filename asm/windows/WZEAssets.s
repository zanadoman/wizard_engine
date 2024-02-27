	.file	"WZEAssets.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC2:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0:
.LFB6976:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rbx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%r8, %r8
	je	.L3
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L7
	cmpq	%r8, %rsi
	jnb	.L14
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L11
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L28
.L11:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L16:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L29
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L12:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L12
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L14
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L7:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	leaq	.LC0(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L27:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0:
.LFB6977:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rbx
	cmpq	%rdx, %rsi
	jnb	.L53
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L54
	testq	%r8, %r8
	je	.L30
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L34
	cmpq	%r8, %rsi
	jnb	.L41
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L38
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L55
.L38:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L43:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L43
	.p2align 4,,10
	.p2align 3
.L41:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L56
.L30:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L39:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L39
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L41
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L34:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L53:
	leaq	.LC0(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L54:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L56:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0:
.LFB6978:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rbx
	cmpq	%rdx, %rsi
	jnb	.L80
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L81
	testq	%r8, %r8
	je	.L57
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L61
	cmpq	%r8, %rsi
	jnb	.L68
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L65
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L82
.L65:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L70:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L70
	.p2align 4,,10
	.p2align 3
.L68:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L83
.L57:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L66:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L66
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L68
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L61:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L80:
	leaq	.LC0(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L81:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L83:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0:
.LFB6979:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rbx
	cmpq	%rdx, %rsi
	jnb	.L107
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L108
	testq	%r8, %r8
	je	.L84
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L88
	cmpq	%r8, %rsi
	jnb	.L95
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L92
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L109
.L92:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L97:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L97
	.p2align 4,,10
	.p2align 3
.L95:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L110
.L84:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L93:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L93
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L95
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L88:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L107:
	leaq	.LC0(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L108:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L110:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "neo::array(): Memory allocation failed\12Params: Elements(size, length): %ld, %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assetsC2EPS0_
	.def	_ZN3wze6engine6assetsC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assetsC2EPS0_
_ZN3wze6engine6assetsC2EPS0_:
.LFB6896:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$1, 8(%rcx)
	movl	$8, %ecx
	movq	$0, 56(%rsp)
	call	malloc
	movq	%rax, 16(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L124
	leaq	56(%rsp), %rsi
	movl	$8, %r8d
	movq	%rsi, %rcx
.LEHB0:
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE0:
	movq	$1, 24(%rbx)
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	call	malloc
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	je	.L125
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
.LEHB1:
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE1:
	movq	$1, 40(%rbx)
	movl	$8, %ecx
	movq	$0, 48(%rsp)
	call	malloc
	movq	%rax, 48(%rbx)
	testq	%rax, %rax
	je	.L126
	leaq	48(%rsp), %rcx
	movl	$8, %r8d
	movq	%rax, %rdx
.LEHB2:
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE2:
	movq	$1, 56(%rbx)
	movl	$8, %ecx
	movq	$0, 56(%rsp)
	call	malloc
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.L127
	movl	$8, %r8d
	movq	%rax, %rdx
	movq	%rsi, %rcx
.LEHB3:
	call	_ZN3neo6memory6CopyToEPKvPvy
.LEHE3:
	nop
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L124:
	leaq	.LC3(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
.LEHB4:
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L127:
	movl	$1, %r8d
	movl	$8, %edx
	leaq	.LC3(%rip), %rcx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
.L115:
	movl	$1, %ecx
	call	exit
.L126:
	movl	$1, %r8d
	movl	$8, %edx
	leaq	.LC3(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L115
.L125:
	movl	$1, %r8d
	movl	$8, %edx
	leaq	.LC3(%rip), %rcx
.LEHB7:
	call	_Z6printfPKcz
.LEHE7:
	jmp	.L115
.L120:
	movq	%rax, %rsi
	jmp	.L119
.L122:
	movq	%rax, %rsi
	jmp	.L117
.L121:
	movq	%rax, %rsi
	jmp	.L118
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6896:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6896-.LLSDACSB6896
.LLSDACSB6896:
	.uleb128 .LEHB0-.LFB6896
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6896
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L120-.LFB6896
	.uleb128 0
	.uleb128 .LEHB2-.LFB6896
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L121-.LFB6896
	.uleb128 0
	.uleb128 .LEHB3-.LFB6896
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L122-.LFB6896
	.uleb128 0
	.uleb128 .LEHB4-.LFB6896
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB6896
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L122-.LFB6896
	.uleb128 0
	.uleb128 .LEHB6-.LFB6896
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L121-.LFB6896
	.uleb128 0
	.uleb128 .LEHB7-.LFB6896
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L120-.LFB6896
	.uleb128 0
.LLSDACSE6896:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6assetsC2EPS0_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assetsC2EPS0_.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 72
	.seh_savereg	%rsi, 80
	.seh_endprologue
_ZN3wze6engine6assetsC2EPS0_.cold:
.L117:
	movq	48(%rbx), %rcx
	call	free
.L118:
	movq	32(%rbx), %rcx
	call	free
.L119:
	movq	16(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6896:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6896-.LLSDACSBC6896
.LLSDACSBC6896:
	.uleb128 .LEHB8-.LCOLDB4
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC6896:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN3wze6engine6assetsC1EPS0_
	.def	_ZN3wze6engine6assetsC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6assetsC1EPS0_,_ZN3wze6engine6assetsC2EPS0_
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "wze::engine.assets.LoadTexture(): TexturePath must not be NULL\12Params: TexturePath: %p\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.assets.LoadTexture(): IMG_Load() failed\12Params: TexturePath: %s\12\0"
	.align 8
.LC7:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\12Params: TexturePath: %s\12\0"
	.align 8
.LC9:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11LoadTextureEPKc
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets11LoadTextureEPKc
_ZN3wze6engine6assets11LoadTextureEPKc:
.LFB6898:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	testq	%rdx, %rdx
	je	.L147
	movq	%rdx, %rcx
	call	IMG_Load
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L130
	movq	8(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L132
	movq	16(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L133:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L132
.L137:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L133
	movq	(%rsi), %rax
	movq	%rdi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	16(%rsi), %rdx
	cmpq	8(%rsi), %rbx
	jnb	.L148
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L142
	movq	%rdi, %rcx
	call	SDL_FreeSurface
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	movq	(%rsi), %rax
	movq	%rdi, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	16(%rsi), %rcx
	movq	%rax, 40(%rsp)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 16(%rsi)
	testq	%rax, %rax
	je	.L149
	movq	8(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rsi), %rax
	movq	16(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L150
	cmpq	$0, (%rdx,%rcx,8)
	je	.L142
	movq	%rdi, %rcx
	call	SDL_FreeSurface
	movq	8(%rsi), %rbx
	subq	$1, %rbx
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L148:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L130:
	leaq	.LC6(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L147:
	leaq	.LC5(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L142:
	leaq	.LC8(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L150:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L149:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13UnloadTextureEy
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets13UnloadTextureEy
_ZN3wze6engine6assets13UnloadTextureEy:
.LFB6899:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	cmpq	8(%rcx), %rdx
	jb	.L200
.L184:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L200:
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L184
	call	SDL_DestroyTexture
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L201
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L155
	cmpq	$1, %rax
	je	.L155
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L159:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L199
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L202
	cmpq	$1, %rdx
	jne	.L159
.L158:
	leaq	8(%rsi), %rcx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
.L155:
	movq	(%rsi), %rsi
	movq	280(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L184
	movq	288(%rsi), %rdi
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L177:
	movq	(%rdi,%r10,8), %r11
	testq	%r11, %r11
	je	.L160
	cmpq	%r8, %r10
	jnb	.L163
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L162:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L163
.L164:
	cmpq	%rcx, %rax
	jnb	.L203
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L162
	cmpq	%rbx, 80(%rdx)
	jne	.L162
	movq	$0, 80(%rdx)
	movq	280(%rsi), %r8
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L160:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L177
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	cmpq	%r8, %r10
	jnb	.L163
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L175:
	cmpq	%rcx, %r9
	jnb	.L160
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L167
	cmpq	%r8, %r10
	jnb	.L163
	xorl	%eax, %eax
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L170:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L163
.L171:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L204
.L169:
	cmpq	104(%rdx), %rax
	jnb	.L167
	movq	112(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L170
	movq	$0, (%rcx)
	movq	280(%rsi), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L171
.L163:
	movq	%r10, %rdx
.L199:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L167:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L175
	jmp	.L163
.L202:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L158
.L204:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L201:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	.def	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE:
.LFB6900:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rdx), %rdi
	movq	8(%rdx), %r12
	movq	8(%rcx), %rdx
	movq	%rcx, %rbp
	cmpq	$1, %rdx
	jbe	.L206
	movl	$1, %ebx
.L232:
	testq	%r12, %r12
	je	.L207
.L240:
	xorl	%eax, %eax
.L208:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L262
	addq	$1, %rax
	cmpq	%r12, %rax
	jne	.L208
.L207:
	movq	0(%rbp), %rsi
	movq	280(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L211
	movq	288(%rsi), %r13
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L229:
	movq	0(%r13,%r10,8), %r11
	testq	%r11, %r11
	je	.L212
	cmpq	%r8, %r10
	jnb	.L220
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L216
	.p2align 4,,10
	.p2align 3
.L214:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L220
.L216:
	cmpq	%rcx, %rax
	jnb	.L263
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L214
	cmpq	%rbx, 80(%rdx)
	jne	.L214
	movq	$0, 80(%rdx)
	movq	280(%rsi), %r8
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L212:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L229
	movq	8(%rbp), %rdx
.L211:
	movq	16(%rbp), %rax
	cmpq	%rdx, %rbx
	jnb	.L261
	movq	(%rax,%rbx,8), %rcx
	call	SDL_DestroyTexture
	movq	8(%rbp), %rdx
	movq	16(%rbp), %rax
	cmpq	%rdx, %rbx
	jnb	.L261
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L232
.L241:
	cmpq	$0, -8(%rax,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L264
.L260:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L263:
	cmpq	%r8, %r10
	jnb	.L220
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L227:
	cmpq	%rcx, %r9
	jnb	.L212
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L219
	cmpq	%r8, %r10
	jnb	.L220
	xorl	%eax, %eax
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L222:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L220
.L223:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L265
.L221:
	cmpq	104(%rdx), %rax
	jnb	.L219
	movq	112(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L222
	movq	$0, (%rcx)
	movq	280(%rsi), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L223
.L220:
	leaq	.LC7(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L219:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L227
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L262:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L240
	movq	16(%rbp), %rax
	jmp	.L241
.L264:
	movq	%rdx, %r9
	jmp	.L233
.L238:
	leaq	-1(%r9), %rcx
	cmpq	%rdx, %rcx
	jnb	.L266
	cmpq	$0, (%rax,%rcx,8)
	jne	.L267
	movq	%rcx, %r9
.L233:
	cmpq	$1, %r9
	jne	.L238
.L237:
	leaq	8(%rbp), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L206:
	testq	%rdx, %rdx
	jne	.L260
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L265:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L267:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L237
.L266:
	movq	%rcx, %rdx
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L261:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.assets.PurgeTextures(): KeepTextureIDs must not be NULL\12Params: KeepTextureIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE:
.LFB6901:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	testq	%rdx, %rdx
	je	.L269
	movq	8(%rcx), %rcx
	movl	$1, %ebx
	cmpq	$1, %rcx
	jbe	.L326
	.p2align 4,,10
	.p2align 3
.L270:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L272
.L273:
	cmpq	(%r8,%rax,8), %rbx
	je	.L274
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L273
.L272:
	movq	(%rdi), %rsi
	movq	280(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L276
	movq	288(%rsi), %r12
	movl	$1, %r10d
.L294:
	movq	(%r12,%r10,8), %r11
	testq	%r11, %r11
	je	.L277
	cmpq	%r8, %r10
	jnb	.L285
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L279:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L285
.L281:
	cmpq	%rcx, %rax
	jnb	.L327
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L279
	cmpq	%rbx, 80(%rdx)
	jne	.L279
	movq	$0, 80(%rdx)
	movq	280(%rsi), %r8
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L277:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L294
	movq	8(%rdi), %rcx
.L276:
	movq	16(%rdi), %rax
	cmpq	%rcx, %rbx
	jnb	.L325
	movq	(%rax,%rbx,8), %rcx
	call	SDL_DestroyTexture
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rax
	cmpq	%rcx, %rbx
	jnb	.L325
	movq	$0, (%rax,%rbx,8)
.L274:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L270
	movq	16(%rdi), %r9
	leaq	-1(%rcx), %r8
	cmpq	$0, -8(%r9,%rcx,8)
	je	.L328
.L324:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L327:
	cmpq	%r8, %r10
	jnb	.L285
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L292:
	cmpq	%rcx, %r9
	jnb	.L277
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L284
	cmpq	%r8, %r10
	jnb	.L285
	xorl	%eax, %eax
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L287:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L285
.L288:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L329
.L286:
	cmpq	104(%rdx), %rax
	jnb	.L284
	movq	112(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L287
	movq	$0, (%rcx)
	movq	280(%rsi), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L288
.L285:
	leaq	.LC7(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L284:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L292
	jmp	.L285
.L328:
	movq	%rcx, %rax
	jmp	.L297
.L302:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L330
	cmpq	$0, (%r9,%rdx,8)
	jne	.L331
	movq	%rdx, %rax
.L297:
	cmpq	$1, %rax
	jne	.L302
.L301:
	movq	%rax, %rdx
	leaq	8(%rdi), %rcx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L326:
	testq	%rcx, %rcx
	jne	.L324
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L329:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L331:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L301
.L330:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L325:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L269:
	leaq	.LC10(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.assets.LoadSound(): SoundPath must not be NULL\12Params: SoundPath: %p\12\0"
	.align 8
.LC12:
	.ascii "wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\12Params: SoundPath: %s\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets9LoadSoundEPKc
	.def	_ZN3wze6engine6assets9LoadSoundEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets9LoadSoundEPKc
_ZN3wze6engine6assets9LoadSoundEPKc:
.LFB6902:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	testq	%rdx, %rdx
	je	.L333
	movq	24(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L335
	movq	32(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L336:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L335
.L339:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L336
	movq	%rdi, %rcx
	call	Mix_LoadWAV
	movq	32(%rsi), %rdx
	cmpq	24(%rsi), %rbx
	jnb	.L349
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L332
.L344:
	leaq	.LC12(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L335:
	movq	%rdi, %rcx
	call	Mix_LoadWAV
	movq	32(%rsi), %rcx
	movq	%rax, 40(%rsp)
	movq	24(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 24(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 32(%rsi)
	testq	%rax, %rax
	je	.L350
	movq	24(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	24(%rsi), %rbx
	movq	32(%rsi), %rax
	addq	$-1, %rbx
	jnc	.L351
	cmpq	$0, (%rax,%rbx,8)
	je	.L344
.L332:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L349:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L333:
	leaq	.LC11(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L351:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L350:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11UnloadSoundEy
	.def	_ZN3wze6engine6assets11UnloadSoundEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets11UnloadSoundEy
_ZN3wze6engine6assets11UnloadSoundEy:
.LFB6903:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	cmpq	24(%rcx), %rdx
	jb	.L381
.L368:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L381:
	movq	32(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L368
	call	Mix_FreeChunk
	movq	24(%rdi), %rax
	movq	32(%rdi), %rcx
	cmpq	%rax, %rsi
	jnb	.L382
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L356
	cmpq	$1, %rax
	je	.L356
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L360:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L383
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L384
	cmpq	$1, %rdx
	jne	.L360
.L359:
	leaq	24(%rdi), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	.p2align 4,,10
	.p2align 3
.L356:
	movq	(%rdi), %rcx
	movq	176(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L368
	xorl	%ebx, %ebx
	xorl	%eax, %eax
.L379:
	movq	184(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	%rsi, 32(%rax)
	je	.L385
.L361:
	addl	$1, %ebx
	movzwl	%bx, %eax
	cmpq	%rdx, %rax
	jnb	.L368
	movq	(%rcx,%rax,8), %rax
	cmpq	%rsi, 32(%rax)
	jne	.L361
.L385:
	movq	$0, 32(%rax)
	movzwl	%bx, %ecx
	addl	$1, %ebx
	call	Mix_HaltChannel
	movq	(%rdi), %rcx
	movzwl	%bx, %eax
	movq	176(%rcx), %rdx
	cmpq	%rdx, %rax
	jb	.L379
	jmp	.L368
.L384:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L359
.L383:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L382:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	.def	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE:
.LFB6904:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rdx), %r12
	movq	8(%rdx), %rbp
	movq	%rcx, %rdi
	movq	24(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L387
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L399:
	testq	%rbp, %rbp
	je	.L388
.L407:
	xorl	%eax, %eax
.L389:
	cmpq	(%r12,%rax,8), %rbx
	je	.L424
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L389
.L388:
	movq	(%rdi), %r8
	movq	176(%r8), %rdx
	testq	%rdx, %rdx
	je	.L392
	xorl	%esi, %esi
	xorl	%eax, %eax
.L422:
	movq	184(%r8), %rcx
.L396:
	movq	(%rcx,%rax,8), %rax
	cmpq	%rbx, 32(%rax)
	je	.L425
	addl	$1, %esi
	movzwl	%si, %eax
	cmpq	%rdx, %rax
	jb	.L396
.L395:
	movq	24(%rdi), %rcx
.L392:
	movq	32(%rdi), %rax
	cmpq	%rcx, %rbx
	jnb	.L423
	movq	(%rax,%rbx,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rdi), %rcx
	movq	32(%rdi), %rax
	cmpq	%rcx, %rbx
	jnb	.L423
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L399
.L408:
	cmpq	$0, -8(%rax,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L426
.L421:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L425:
	movq	$0, 32(%rax)
	movzwl	%si, %ecx
	addl	$1, %esi
	call	Mix_HaltChannel
	movq	(%rdi), %r8
	movzwl	%si, %eax
	movq	176(%r8), %rdx
	cmpq	%rdx, %rax
	jb	.L422
	jmp	.L395
.L424:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L407
	movq	32(%rdi), %rax
	jmp	.L408
.L426:
	movq	%rcx, %r9
	jmp	.L400
	.p2align 4,,10
	.p2align 3
.L405:
	leaq	-1(%r9), %rdx
	cmpq	%rcx, %rdx
	jnb	.L427
	cmpq	$0, (%rax,%rdx,8)
	jne	.L428
	movq	%rdx, %r9
.L400:
	cmpq	$1, %r9
	jne	.L405
.L404:
	leaq	24(%rdi), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L387:
	testq	%rcx, %rcx
	jne	.L421
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L428:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L404
.L427:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L423:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.assets.PurgeSounds(): KeepSoundIDs must not be NULL\12Params: KeepSoundIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE:
.LFB6905:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	testq	%rdx, %rdx
	je	.L430
	movq	24(%rcx), %rcx
	movl	$1, %esi
	cmpq	$1, %rcx
	jbe	.L468
	.p2align 4,,10
	.p2align 3
.L431:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L433
.L434:
	cmpq	(%r8,%rax,8), %rsi
	je	.L435
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L434
	.p2align 4,,10
	.p2align 3
.L433:
	movq	(%rdi), %r8
	movq	176(%r8), %rdx
	testq	%rdx, %rdx
	je	.L437
	xorl	%ebx, %ebx
	xorl	%eax, %eax
.L466:
	movq	184(%r8), %rcx
.L441:
	movq	(%rcx,%rax,8), %rax
	cmpq	%rsi, 32(%rax)
	je	.L469
	addl	$1, %ebx
	movzwl	%bx, %eax
	cmpq	%rdx, %rax
	jb	.L441
.L440:
	movq	24(%rdi), %rcx
.L437:
	movq	32(%rdi), %rax
	cmpq	%rcx, %rsi
	jnb	.L467
	movq	(%rax,%rsi,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rdi), %rcx
	movq	32(%rdi), %rax
	cmpq	%rcx, %rsi
	jnb	.L467
	movq	$0, (%rax,%rsi,8)
.L435:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L431
	movq	32(%rdi), %r9
	leaq	-1(%rcx), %r8
	cmpq	$0, -8(%r9,%rcx,8)
	je	.L470
.L465:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L469:
	movq	$0, 32(%rax)
	movzwl	%bx, %ecx
	addl	$1, %ebx
	call	Mix_HaltChannel
	movq	(%rdi), %r8
	movzwl	%bx, %eax
	movq	176(%r8), %rdx
	cmpq	%rdx, %rax
	jb	.L466
	jmp	.L440
.L470:
	movq	%rcx, %rax
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L449:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L471
	cmpq	$0, (%r9,%rdx,8)
	jne	.L472
	movq	%rdx, %rax
.L444:
	cmpq	$1, %rax
	jne	.L449
.L448:
	movq	%rax, %rdx
	leaq	24(%rdi), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L468:
	testq	%rcx, %rcx
	jne	.L465
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L472:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L448
.L471:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L430:
	leaq	.LC13(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L467:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.assets.LoadFont(): FontPath must not be NULL\12Params: FontPath: %p\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.assets.LoadFont(): TTF_OpenFont() failed\12Params: FontPath: %s\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets8LoadFontEPKch
	.def	_ZN3wze6engine6assets8LoadFontEPKch;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets8LoadFontEPKch
_ZN3wze6engine6assets8LoadFontEPKch:
.LFB6906:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	testq	%rdx, %rdx
	je	.L474
	movq	40(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L476
	movq	48(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L480
	.p2align 4,,10
	.p2align 3
.L477:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L476
.L480:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L477
	movzbl	%r8b, %edx
	movq	%rdi, %rcx
	call	TTF_OpenFont
	movq	48(%rsi), %rdx
	cmpq	40(%rsi), %rbx
	jnb	.L490
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L473
.L485:
	leaq	.LC15(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L476:
	movzbl	%r8b, %edx
	movq	%rdi, %rcx
	call	TTF_OpenFont
	movq	48(%rsi), %rcx
	movq	%rax, 40(%rsp)
	movq	40(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 48(%rsi)
	testq	%rax, %rax
	je	.L491
	movq	40(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	40(%rsi), %rbx
	movq	48(%rsi), %rax
	addq	$-1, %rbx
	jnc	.L492
	cmpq	$0, (%rax,%rbx,8)
	je	.L485
.L473:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L490:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L474:
	leaq	.LC14(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L492:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L491:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10UnloadFontEy
	.def	_ZN3wze6engine6assets10UnloadFontEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets10UnloadFontEy
_ZN3wze6engine6assets10UnloadFontEy:
.LFB6907:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r13
	movq	%rdx, %r12
	cmpq	40(%rcx), %rdx
	jb	.L531
.L519:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L531:
	movq	48(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L519
	call	TTF_CloseFont
	movq	40(%r13), %rax
	movq	48(%r13), %rcx
	cmpq	%rax, %r12
	jnb	.L532
	movq	$0, (%rcx,%r12,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L497
	cmpq	$1, %rax
	je	.L497
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L501:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L529
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L533
	cmpq	$1, %rdx
	jne	.L501
.L500:
	leaq	40(%r13), %rcx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.p2align 4,,10
	.p2align 3
.L497:
	movq	0(%r13), %rcx
	movq	280(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L519
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L514:
	movq	288(%rcx), %rax
	leaq	0(,%rsi,8), %rdi
	cmpq	$0, (%rax,%rsi,8)
	je	.L502
	cmpq	%r8, %rsi
	jnb	.L512
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L503:
	movq	(%rax,%rdi), %rax
	cmpq	120(%rax), %rbx
	jnb	.L502
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L528
	cmpq	%r12, 112(%rdx)
	je	.L506
.L528:
	movq	288(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L503
.L512:
	movq	%rsi, %rdx
.L529:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L502:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L514
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L506:
	xorl	%r8d, %r8d
	movq	$0, 112(%rdx)
	movw	%r8w, 64(%rdx)
	cmpq	280(%rcx), %rsi
	jnb	.L512
	cmpq	120(%rax), %rbx
	jnb	.L530
	movq	128(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	0(%r13), %rcx
	movq	280(%rcx), %r8
	movq	288(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L512
	movq	(%rax,%rdi), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L530
	movq	(%r9,%rbp), %rdx
	addq	$1, %rbx
	movq	$0, 128(%rdx)
	jmp	.L503
.L533:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L500
.L530:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L532:
	leaq	.LC7(%rip), %rcx
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	.def	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE:
.LFB6908:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rdx), %r12
	movq	8(%rdx), %rbp
	movq	40(%rcx), %rdx
	movq	%rcx, %rdi
	cmpq	$1, %rdx
	jbe	.L535
	movl	$1, %r14d
	.p2align 4,,10
	.p2align 3
.L556:
	testq	%rbp, %rbp
	je	.L536
.L564:
	xorl	%eax, %eax
.L537:
	cmpq	%r14, (%r12,%rax,8)
	je	.L582
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L537
.L536:
	movq	(%rdi), %rcx
	movq	280(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L540
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L553:
	movq	288(%rcx), %rax
	leaq	0(,%rsi,8), %r13
	cmpq	$0, (%rax,%rsi,8)
	je	.L541
	cmpq	%r8, %rsi
	jnb	.L579
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L542:
	movq	(%rax,%r13), %rax
	cmpq	120(%rax), %rbx
	jnb	.L541
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r15
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L577
	cmpq	%r14, 112(%rdx)
	je	.L545
.L577:
	movq	288(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L542
.L579:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L541:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L553
	movq	40(%rdi), %rdx
.L540:
	movq	48(%rdi), %rax
	cmpq	%rdx, %r14
	jnb	.L581
	movq	(%rax,%r14,8), %rcx
	call	TTF_CloseFont
	movq	40(%rdi), %rdx
	movq	48(%rdi), %rax
	cmpq	%rdx, %r14
	jnb	.L581
	movq	$0, (%rax,%r14,8)
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	.L556
.L565:
	cmpq	$0, -8(%rax,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L583
.L576:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L545:
	xorl	%r8d, %r8d
	movq	$0, 112(%rdx)
	movw	%r8w, 64(%rdx)
	cmpq	280(%rcx), %rsi
	jnb	.L579
	cmpq	120(%rax), %rbx
	jnb	.L580
	movq	128(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	(%rdi), %rcx
	movq	280(%rcx), %r8
	movq	288(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L579
	movq	(%rax,%r13), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L580
	movq	(%r9,%r15), %rdx
	addq	$1, %rbx
	movq	$0, 128(%rdx)
	jmp	.L542
.L582:
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	.L564
	movq	48(%rdi), %rax
	jmp	.L565
.L583:
	movq	%rdx, %r9
	jmp	.L557
	.p2align 4,,10
	.p2align 3
.L562:
	leaq	-1(%r9), %rcx
	cmpq	%rdx, %rcx
	jnb	.L584
	cmpq	$0, (%rax,%rcx,8)
	jne	.L585
	movq	%rcx, %r9
.L557:
	cmpq	$1, %r9
	jne	.L562
.L561:
	leaq	40(%rdi), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L576
.L535:
	testq	%rdx, %rdx
	jne	.L576
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L585:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L561
.L580:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L581:
	leaq	.LC7(%rip), %rcx
	movq	%r14, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L584:
	movq	%rcx, %rdx
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.assets.PurgeFonts(): KeepFontIDs must not be NULL\12Params: KeepFontIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE:
.LFB6909:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rbp
	testq	%rdx, %rdx
	je	.L587
	movq	40(%rcx), %rdx
	movl	$1, %r13d
	cmpq	$1, %rdx
	jbe	.L635
	.p2align 4,,10
	.p2align 3
.L588:
	movq	0(%rbp), %rcx
	movq	8(%rbp), %r8
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L590
.L591:
	cmpq	(%r8,%rax,8), %r13
	je	.L592
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L591
	.p2align 4,,10
	.p2align 3
.L590:
	movq	(%rdi), %rcx
	movq	280(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L594
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L607:
	movq	288(%rcx), %rax
	leaq	0(,%rsi,8), %r12
	cmpq	$0, (%rax,%rsi,8)
	je	.L595
	cmpq	%r8, %rsi
	jnb	.L632
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L596:
	movq	(%rax,%r12), %rax
	cmpq	120(%rax), %rbx
	jnb	.L595
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r14
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L630
	cmpq	%r13, 112(%rdx)
	je	.L599
.L630:
	movq	288(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L596
.L632:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L595:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L607
	movq	40(%rdi), %rdx
.L594:
	movq	48(%rdi), %rax
	cmpq	%rdx, %r13
	jnb	.L634
	movq	(%rax,%r13,8), %rcx
	call	TTF_CloseFont
	movq	40(%rdi), %rdx
	movq	48(%rdi), %rax
	cmpq	%rdx, %r13
	jnb	.L634
	movq	$0, (%rax,%r13,8)
.L592:
	addq	$1, %r13
	cmpq	%rdx, %r13
	jb	.L588
	movq	48(%rdi), %rcx
	leaq	-1(%rdx), %r8
	cmpq	$0, -8(%rcx,%rdx,8)
	je	.L636
.L629:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L599:
	xorl	%r8d, %r8d
	movq	$0, 112(%rdx)
	movw	%r8w, 64(%rdx)
	cmpq	280(%rcx), %rsi
	jnb	.L632
	cmpq	120(%rax), %rbx
	jnb	.L633
	movq	128(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	(%rdi), %rcx
	movq	280(%rcx), %r8
	movq	288(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L632
	movq	(%rax,%r12), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L633
	movq	(%r9,%r14), %rdx
	addq	$1, %rbx
	movq	$0, 128(%rdx)
	jmp	.L596
.L636:
	movq	%rdx, %r9
	jmp	.L610
	.p2align 4,,10
	.p2align 3
.L615:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L637
	cmpq	$0, (%rcx,%rax,8)
	jne	.L638
	movq	%rax, %r9
.L610:
	cmpq	$1, %r9
	jne	.L615
.L614:
	leaq	40(%rdi), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L629
.L635:
	testq	%rdx, %rdx
	jne	.L629
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L638:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L614
.L633:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L634:
	leaq	.LC7(%rip), %rcx
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L587:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L637:
	leaq	.LC7(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.assets.LoadCursorTexture(): CursorTexturePath must not be NULL\12Params: CursorTexturePath: %p, HotSpotX: %d, HotSpotY: %d\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.assets.LoadCursorTexture(): IMG_Load() failed\12Params: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.assets.LoadCursorTexture(): HotSpotX out of range\12Params: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\12\0"
	.align 8
.LC20:
	.ascii "wze::engine.assets.LoadCursorTexture(): HotSpotY out of range\12Params: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.assets.LoadCursorTexture(): SDL_CreateColorCursor() failed\12Params: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets17LoadCursorTextureEPKctt
	.def	_ZN3wze6engine6assets17LoadCursorTextureEPKctt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets17LoadCursorTextureEPKctt
_ZN3wze6engine6assets17LoadCursorTextureEPKctt:
.LFB6910:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %r13
	movzwl	%r8w, %ebp
	movzwl	%r9w, %r12d
	testq	%rdx, %rdx
	je	.L658
	movq	%rdx, %rcx
	call	IMG_Load
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L659
	cmpl	%ebp, 16(%rax)
	jle	.L660
	cmpl	%r12d, 20(%rax)
	jle	.L643
	movq	56(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L645
	movq	64(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L650
	.p2align 4,,10
	.p2align 3
.L646:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L645
.L650:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L646
	movl	%ebp, %edx
	movl	%r12d, %r8d
	movq	%rdi, %rcx
	call	SDL_CreateColorCursor
	movq	64(%rsi), %rdx
	cmpq	56(%rsi), %rbx
	jnb	.L661
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L657
	movq	%rdi, %rcx
	call	SDL_FreeSurface
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L645:
	movl	%r12d, %r8d
	movl	%ebp, %edx
	movq	%rdi, %rcx
	call	SDL_CreateColorCursor
	movq	64(%rsi), %rcx
	movq	%rax, 40(%rsp)
	movq	56(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 56(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 64(%rsi)
	testq	%rax, %rax
	je	.L662
	movq	56(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	56(%rsi), %rax
	movq	64(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L663
	cmpq	$0, (%rdx,%rcx,8)
	je	.L657
	movq	%rdi, %rcx
	call	SDL_FreeSurface
	movq	56(%rsi), %rbx
	subq	$1, %rbx
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L661:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L643:
	leaq	.LC20(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L660:
	leaq	.LC19(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L659:
	leaq	.LC18(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L658:
	leaq	.LC17(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L657:
	leaq	.LC21(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L663:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L662:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets19UnloadCursorTextureEy
	.def	_ZN3wze6engine6assets19UnloadCursorTextureEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets19UnloadCursorTextureEy
_ZN3wze6engine6assets19UnloadCursorTextureEy:
.LFB6911:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmpq	56(%rcx), %rdx
	jb	.L684
.L666:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L684:
	movq	64(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L666
	call	SDL_FreeCursor
	movq	56(%rbx), %rax
	movq	64(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L685
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L669
	cmpq	$1, %rax
	je	.L669
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L673:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L686
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L687
	cmpq	$1, %rdx
	jne	.L673
.L672:
	leaq	56(%rbx), %rcx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.p2align 4,,10
	.p2align 3
.L669:
	movq	(%rbx), %rax
	cmpq	%rsi, 264(%rax)
	jne	.L666
	movq	$0, 264(%rax)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L687:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L672
.L686:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L685:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE
	.def	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE
_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE:
.LFB6912:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	(%rdx), %rbp
	movq	8(%rdx), %rdi
	movq	56(%rcx), %rdx
	movq	%rcx, %rsi
	cmpq	$1, %rdx
	jbe	.L689
	movq	64(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L697:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L691
.L690:
	cmpq	0(%rbp,%rax,8), %rbx
	je	.L692
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L690
.L691:
	movq	(%rsi), %rax
	cmpq	%rbx, 264(%rax)
	jne	.L694
	movq	$0, 264(%rax)
	movq	56(%rsi), %rdx
.L694:
	cmpq	%rdx, %rbx
	jnb	.L712
	movq	(%rcx,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rsi), %rdx
	movq	64(%rsi), %rcx
	cmpq	%rdx, %rbx
	jnb	.L712
	movq	$0, (%rcx,%rbx,8)
.L692:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L697
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L713
.L711:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L713:
	movq	%rdx, %r9
	jmp	.L698
	.p2align 4,,10
	.p2align 3
.L703:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L714
	cmpq	$0, (%rcx,%rax,8)
	jne	.L715
	movq	%rax, %r9
.L698:
	cmpq	$1, %r9
	jne	.L703
.L702:
	leaq	56(%rsi), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L689:
	testq	%rdx, %rdx
	jne	.L711
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L715:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L702
.L714:
	leaq	.LC7(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L712:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.assets.PurgeCursorTextures(): KeepCursorTextureIDs must not be NULL\12Params: KeepCursorTextureIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE
_ZN3wze6engine6assets19PurgeCursorTexturesEPN3neo5arrayIyEE:
.LFB6913:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L717
	movq	56(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L745
	movq	64(%rcx), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L727:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	je	.L720
.L721:
	cmpq	(%r8,%rcx,8), %rbx
	je	.L722
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.L721
	.p2align 4,,10
	.p2align 3
.L720:
	movq	(%rdi), %rdx
	cmpq	%rbx, 264(%rdx)
	jne	.L724
	movq	$0, 264(%rdx)
	movq	56(%rdi), %rax
.L724:
	cmpq	%rax, %rbx
	jnb	.L744
	movq	(%r9,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rdi), %rax
	movq	64(%rdi), %r9
	cmpq	%rax, %rbx
	jnb	.L744
	movq	$0, (%r9,%rbx,8)
.L722:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L727
	cmpq	$0, -8(%r9,%rax,8)
	leaq	-1(%rax), %r8
	je	.L746
.L743:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L746:
	movq	%rax, %r10
	jmp	.L728
	.p2align 4,,10
	.p2align 3
.L733:
	leaq	-1(%r10), %rdx
	cmpq	%rax, %rdx
	jnb	.L747
	cmpq	$0, (%r9,%rdx,8)
	jne	.L748
	movq	%rdx, %r10
.L728:
	cmpq	$1, %r10
	jne	.L733
.L732:
	leaq	56(%rdi), %rcx
	movq	%r10, %rdx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L745:
	testq	%rax, %rax
	jne	.L743
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L748:
	subq	%r10, %rax
	movq	%rax, %r8
	jmp	.L732
.L744:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L747:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L717:
	leaq	.LC22(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	IMG_Load;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTextureFromSurface;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyTexture;	.scl	2;	.type	32;	.endef
	.def	Mix_LoadWAV;	.scl	2;	.type	32;	.endef
	.def	Mix_FreeChunk;	.scl	2;	.type	32;	.endef
	.def	Mix_HaltChannel;	.scl	2;	.type	32;	.endef
	.def	TTF_OpenFont;	.scl	2;	.type	32;	.endef
	.def	TTF_CloseFont;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateColorCursor;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeCursor;	.scl	2;	.type	32;	.endef
