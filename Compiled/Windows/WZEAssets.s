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
.LFB8672:
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
.LFB8673:
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
.LFB8674:
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
.LFB8675:
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
.LFB8433:
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
	call	_ZN3neo9memCopyToEPKvPvy
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
	call	_ZN3neo9memCopyToEPKvPvy
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
	call	_ZN3neo9memCopyToEPKvPvy
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
	call	_ZN3neo9memCopyToEPKvPvy
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
.LLSDA8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8433-.LLSDACSB8433
.LLSDACSB8433:
	.uleb128 .LEHB0-.LFB8433
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8433
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L120-.LFB8433
	.uleb128 0
	.uleb128 .LEHB2-.LFB8433
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L121-.LFB8433
	.uleb128 0
	.uleb128 .LEHB3-.LFB8433
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L122-.LFB8433
	.uleb128 0
	.uleb128 .LEHB4-.LFB8433
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8433
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L122-.LFB8433
	.uleb128 0
	.uleb128 .LEHB6-.LFB8433
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L121-.LFB8433
	.uleb128 0
	.uleb128 .LEHB7-.LFB8433
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L120-.LFB8433
	.uleb128 0
.LLSDACSE8433:
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
.LLSDAC8433:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8433-.LLSDACSBC8433
.LLSDACSBC8433:
	.uleb128 .LEHB8-.LCOLDB4
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC8433:
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
	.ascii "wze::engine.assets.LoadTexture(): Path must not be NULL\12Params: Path: %p\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.assets.LoadTexture(): IMG_Load() failed\12Params: Path: %s\12\0"
	.align 8
.LC7:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\12Params: Path: %s\12\0"
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
.LFB8435:
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
	call	_ZN3neo9memCopyToEPKvPvy
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
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.assets.UnloadTexture(): Illegal deletion of NULL Texture\12Params: ID: %lld\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.assets.UnloadTexture(): Texture does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13UnloadTextureEy
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets13UnloadTextureEy
_ZN3wze6engine6assets13UnloadTextureEy:
.LFB8436:
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
	testq	%rdx, %rdx
	je	.L194
	cmpq	8(%rcx), %rdx
	jnb	.L153
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L153
	call	SDL_DestroyTexture
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L195
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L196
.L156:
	movq	(%rsi), %rsi
	movq	640(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L192
	movq	648(%rsi), %rdi
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L179:
	movq	(%rdi,%r10,8), %r11
	testq	%r11, %r11
	je	.L162
	cmpq	%r8, %r10
	jnb	.L165
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L164:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L165
.L166:
	cmpq	%rcx, %rax
	jnb	.L197
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L164
	cmpq	%rbx, 72(%rdx)
	jne	.L164
	movq	$0, 72(%rdx)
	movq	640(%rsi), %r8
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L162:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L179
.L192:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L197:
	cmpq	%r8, %r10
	jnb	.L165
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L177:
	cmpq	%rcx, %r9
	jnb	.L162
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L169
	cmpq	%r8, %r10
	jnb	.L165
	xorl	%eax, %eax
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L172:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L165
.L173:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L198
.L171:
	cmpq	96(%rdx), %rax
	jnb	.L169
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L172
	movq	$0, (%rcx)
	movq	640(%rsi), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L173
.L165:
	movq	%r10, %rdx
.L193:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L169:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L177
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L196:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L160:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L193
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L199
	cmpq	$1, %rdx
	jne	.L160
.L159:
	leaq	8(%rsi), %rcx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	jmp	.L156
.L199:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L159
.L198:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L194:
	leaq	.LC10(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L195:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L153:
	leaq	.LC11(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.assets.PurgeTextures(): Texture does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	.def	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE:
.LFB8437:
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
	movq	8(%rdx), %rsi
	movq	(%rdx), %rbp
	movq	8(%rcx), %r9
	movq	%rcx, %rdi
	testq	%rsi, %rsi
	je	.L201
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L204:
	movq	0(%rbp,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L202
	cmpq	%r9, %rdx
	jnb	.L203
	movq	16(%rdi), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L203
.L202:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L204
.L201:
	movl	$1, %ebx
	cmpq	$1, %r9
	jbe	.L267
.L205:
	testq	%rsi, %rsi
	je	.L209
.L210:
	xorl	%eax, %eax
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L268:
	addq	$1, %rax
	cmpq	%rax, %rsi
	je	.L209
.L208:
	cmpq	%rbx, 0(%rbp,%rax,8)
	jne	.L268
	cmpq	%rax, %rsi
	je	.L209
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L210
	movq	16(%rdi), %rcx
.L211:
	cmpq	$0, -8(%rcx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L269
.L265:
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
.L209:
	movq	(%rdi), %r12
	movq	640(%r12), %r8
	cmpq	$1, %r8
	jbe	.L212
	movq	648(%r12), %r13
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L230:
	movq	0(%r13,%r10,8), %r11
	testq	%r11, %r11
	je	.L213
	cmpq	%r8, %r10
	jnb	.L221
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L215:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L221
.L217:
	cmpq	%rcx, %rax
	jnb	.L270
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L215
	cmpq	%rbx, 72(%rdx)
	jne	.L215
	movq	$0, 72(%rdx)
	movq	640(%r12), %r8
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L213:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L230
	movq	8(%rdi), %r9
.L212:
	movq	16(%rdi), %rax
	cmpq	%r9, %rbx
	jnb	.L266
	movq	(%rax,%rbx,8), %rcx
	call	SDL_DestroyTexture
	movq	8(%rdi), %r9
	movq	16(%rdi), %rcx
	cmpq	%r9, %rbx
	jnb	.L266
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L205
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L270:
	cmpq	%r8, %r10
	jnb	.L221
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L228:
	cmpq	%rcx, %r9
	jnb	.L213
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L220
	cmpq	%r8, %r10
	jnb	.L221
	xorl	%eax, %eax
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L223:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L221
.L224:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L271
.L222:
	cmpq	96(%rdx), %rax
	jnb	.L220
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L223
	movq	$0, (%rcx)
	movq	640(%r12), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L224
.L221:
	leaq	.LC7(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L220:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L228
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L269:
	movq	%r9, %rax
	jmp	.L233
.L238:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L272
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L273
	movq	%rdx, %rax
.L233:
	cmpq	$1, %rax
	jne	.L238
.L237:
	movq	%rax, %rdx
	leaq	8(%rdi), %rcx
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
.L267:
	testq	%r9, %r9
	jne	.L265
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L273:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L237
.L271:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L203:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L266:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L272:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.assets.PurgeTextures(): Texture does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE
_ZN3wze6engine6assets13PurgeTexturesEPN3neo5arrayIyEE:
.LFB8440:
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
	movq	8(%rcx), %r9
	movq	%rdx, %rdi
	movq	(%rdx), %rdx
	movq	%rcx, %rsi
	testq	%rdx, %rdx
	je	.L275
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L276:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L275
.L278:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L276
	cmpq	%r9, %rcx
	jnb	.L277
	movq	16(%rsi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L276
.L277:
	leaq	.LC13(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L275:
	movl	$1, %ebx
	cmpq	$1, %r9
	jbe	.L340
	testq	%rdx, %rdx
	je	.L283
	.p2align 4,,10
	.p2align 3
.L307:
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L341:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L283
.L282:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L341
	cmpq	%rdx, %rax
	je	.L283
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L306
.L343:
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L307
	.p2align 4,,10
	.p2align 3
.L283:
	movq	(%rsi), %rbp
	movq	640(%rbp), %r8
	cmpq	$1, %r8
	jbe	.L285
	movq	648(%rbp), %r12
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L303:
	movq	(%r12,%r10,8), %r11
	testq	%r11, %r11
	je	.L286
	cmpq	%r8, %r10
	jnb	.L294
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L288:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L294
.L290:
	cmpq	%rcx, %rax
	jnb	.L342
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L288
	cmpq	%rbx, 72(%rdx)
	jne	.L288
	movq	$0, 72(%rdx)
	movq	640(%rbp), %r8
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L286:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L303
	movq	8(%rsi), %r9
.L285:
	movq	16(%rsi), %rax
	cmpq	%r9, %rbx
	jnb	.L339
	movq	(%rax,%rbx,8), %rcx
	call	SDL_DestroyTexture
	movq	8(%rsi), %r9
	movq	16(%rsi), %rax
	cmpq	%r9, %rbx
	jnb	.L339
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L343
.L306:
	movq	16(%rsi), %rcx
	leaq	-1(%r9), %r8
	cmpq	$0, -8(%rcx,%r9,8)
	je	.L344
.L338:
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
.L342:
	cmpq	%r8, %r10
	jnb	.L294
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L301:
	cmpq	%rcx, %r9
	jnb	.L286
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L293
	cmpq	%r8, %r10
	jnb	.L294
	xorl	%eax, %eax
	jmp	.L295
	.p2align 4,,10
	.p2align 3
.L296:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L294
.L297:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L345
.L295:
	cmpq	96(%rdx), %rax
	jnb	.L293
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L296
	movq	$0, (%rcx)
	movq	640(%rbp), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L297
.L294:
	leaq	.LC7(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L293:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L301
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L344:
	movq	%r9, %rax
	jmp	.L308
.L313:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L346
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L347
	movq	%rdx, %rax
.L308:
	cmpq	$1, %rax
	jne	.L313
.L312:
	movq	%rax, %rdx
	leaq	8(%rsi), %rcx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L340:
	testq	%r9, %r9
	jne	.L338
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L347:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L312
.L345:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L339:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L346:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.assets.LoadSound(): Path must not be NULL\12Params: Path: %p\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\12Params: Path: %s\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets9LoadSoundEPKc
	.def	_ZN3wze6engine6assets9LoadSoundEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets9LoadSoundEPKc
_ZN3wze6engine6assets9LoadSoundEPKc:
.LFB8441:
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
	je	.L349
	movq	24(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L351
	movq	32(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L352:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L351
.L355:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L352
	movq	%rdi, %rcx
	call	Mix_LoadWAV
	movq	32(%rsi), %rdx
	cmpq	24(%rsi), %rbx
	jnb	.L365
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L348
.L360:
	leaq	.LC15(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L351:
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
	je	.L366
	movq	24(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	24(%rsi), %rbx
	movq	32(%rsi), %rax
	addq	$-1, %rbx
	jnc	.L367
	cmpq	$0, (%rax,%rbx,8)
	je	.L360
.L348:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L365:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L349:
	leaq	.LC14(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L367:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L366:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.assets.UnloadSound(): Illegal deletion of NULL Sound\12Params: ID: %lld\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.assets.UnloadSound(): Sound does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11UnloadSoundEy
	.def	_ZN3wze6engine6assets11UnloadSoundEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets11UnloadSoundEy
_ZN3wze6engine6assets11UnloadSoundEy:
.LFB8442:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L379
	cmpq	24(%rcx), %rdx
	jnb	.L370
	movq	32(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L370
	call	Mix_FreeChunk
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L380
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L381
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L381:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L377:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L382
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L383
	cmpq	$1, %rdx
	jne	.L377
.L376:
	leaq	24(%rsi), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L383:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L376
.L370:
	leaq	.LC17(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L382:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L379:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L380:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::assets.PurgeSounds(): Sound does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	.def	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE:
.LFB8443:
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
	movq	8(%rdx), %rbx
	movq	(%rdx), %rdi
	movq	24(%rcx), %r8
	movq	%rcx, %rbp
	testq	%rbx, %rbx
	je	.L385
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L388:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L386
	cmpq	%r8, %rdx
	jnb	.L387
	movq	32(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L387
.L386:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L388
.L385:
	cmpq	$1, %r8
	jbe	.L389
	movq	32(%rbp), %rcx
	movl	$1, %esi
.L390:
	testq	%rbx, %rbx
	je	.L393
.L394:
	xorl	%eax, %eax
	jmp	.L392
	.p2align 4,,10
	.p2align 3
.L427:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L393
.L392:
	cmpq	(%rdi,%rax,8), %rsi
	jne	.L427
	cmpq	%rax, %rbx
	je	.L393
	movq	24(%rbp), %rax
	addq	$1, %rsi
	cmpq	%rax, %rsi
	jb	.L394
.L395:
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L406
	cmpq	$0, (%rcx,%r8,8)
	jne	.L413
	cmpq	$1, %rax
	jne	.L428
.L413:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L393:
	movq	(%rcx,%rsi,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rbp), %rax
	movq	32(%rbp), %rcx
	cmpq	%rax, %rsi
	jnb	.L429
	movq	$0, (%rcx,%rsi,8)
	addq	$1, %rsi
	cmpq	%rax, %rsi
	jb	.L390
	jmp	.L395
.L428:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L400:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L430
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L431
	cmpq	$1, %rdx
	jne	.L400
.L405:
	leaq	24(%rbp), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L389:
	testq	%r8, %r8
	jne	.L413
.L406:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L431:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L405
.L387:
	leaq	.LC18(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L430:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L429:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "wze::assets.PurgeSounds(): Sound does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE
_ZN3wze6engine6assets11PurgeSoundsEPN3neo5arrayIyEE:
.LFB8444:
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
	movq	(%rdx), %rcx
	movq	%rdx, %rdi
	movq	24(%rsi), %r10
	testq	%rcx, %rcx
	je	.L433
	movq	8(%rdx), %r9
	xorl	%eax, %eax
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L434:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L433
.L436:
	movq	(%r9,%rax,8), %r8
	testq	%r8, %r8
	je	.L434
	cmpq	%r10, %r8
	jnb	.L435
	movq	32(%rsi), %rdx
	cmpq	$0, (%rdx,%r8,8)
	jne	.L434
.L435:
	leaq	.LC19(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L433:
	cmpq	$1, %r10
	jbe	.L437
	movq	32(%rsi), %r9
	movl	$1, %ebx
	testq	%rcx, %rcx
	je	.L441
	.p2align 4,,10
	.p2align 3
.L445:
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	jmp	.L440
	.p2align 4,,10
	.p2align 3
.L474:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L441
.L440:
	cmpq	%rbx, (%r8,%rax,8)
	jne	.L474
	cmpq	%rax, %rcx
	je	.L441
	movq	24(%rsi), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L444
.L476:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	jne	.L445
	.p2align 4,,10
	.p2align 3
.L441:
	movq	(%r9,%rbx,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rsi), %rax
	movq	32(%rsi), %r9
	cmpq	%rax, %rbx
	jnb	.L475
	movq	$0, (%r9,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L476
.L444:
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L455
	cmpq	$0, (%r9,%r8,8)
	jne	.L462
	cmpq	$1, %rax
	jne	.L477
.L462:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L477:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L449:
	movq	%rdx, %rcx
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L478
	cmpq	$0, (%r9,%rdx,8)
	jne	.L479
	cmpq	$1, %rdx
	jne	.L449
.L454:
	leaq	24(%rsi), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L437:
	testq	%r10, %r10
	jne	.L462
.L455:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L479:
	subq	%rcx, %rax
	movq	%rcx, %rdx
	movq	%rax, %r8
	jmp	.L454
.L478:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L475:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.assets.LoadFont(): Path must not be NULL\12Params: Path: %p\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.assets.LoadFont(): TTF_OpenFont() failed\12Params: Path: %s\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets8LoadFontEPKch
	.def	_ZN3wze6engine6assets8LoadFontEPKch;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets8LoadFontEPKch
_ZN3wze6engine6assets8LoadFontEPKch:
.LFB8445:
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
	je	.L481
	movq	40(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L483
	movq	48(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L487
	.p2align 4,,10
	.p2align 3
.L484:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L483
.L487:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L484
	movzbl	%r8b, %edx
	movq	%rdi, %rcx
	call	TTF_OpenFont
	movq	48(%rsi), %rdx
	cmpq	40(%rsi), %rbx
	jnb	.L497
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L480
.L492:
	leaq	.LC21(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L483:
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
	je	.L498
	movq	40(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	40(%rsi), %rbx
	movq	48(%rsi), %rax
	addq	$-1, %rbx
	jnc	.L499
	cmpq	$0, (%rax,%rbx,8)
	je	.L492
.L480:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L497:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L481:
	leaq	.LC20(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L499:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L498:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.assets.UnloadFont(): Illegal deletion of NULL Font\12Params: ID: %lld\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.assets.UnloadFont(): Font does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10UnloadFontEy
	.def	_ZN3wze6engine6assets10UnloadFontEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets10UnloadFontEy
_ZN3wze6engine6assets10UnloadFontEy:
.LFB8446:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L527
	cmpq	40(%rcx), %rdx
	jnb	.L502
	movq	48(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L502
	call	TTF_CloseFont
	movq	40(%rsi), %rax
	movq	48(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L528
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L529
.L505:
	movq	(%rsi), %r10
	movq	640(%r10), %r11
	cmpq	$1, %r11
	jbe	.L525
	movq	648(%r10), %rsi
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L512:
	movq	(%rsi,%rcx,8), %r8
	testq	%r8, %r8
	je	.L519
	cmpq	640(%r10), %rcx
	jnb	.L516
	movq	120(%r8), %r9
	movl	$1, %eax
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L515:
	addq	$1, %rax
	cmpq	640(%r10), %rcx
	jnb	.L516
.L517:
	cmpq	%r9, %rax
	jnb	.L519
	movq	128(%r8), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L515
	cmpq	%rbx, 104(%rdx)
	jne	.L515
	movq	$0, 104(%rdx)
	jmp	.L515
	.p2align 4,,10
	.p2align 3
.L519:
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L512
.L525:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L529:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L509:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L526
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L530
	cmpq	$1, %rdx
	jne	.L509
.L508:
	leaq	40(%rsi), %rcx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L505
.L530:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L508
.L516:
	movq	%rcx, %rdx
.L526:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L527:
	leaq	.LC22(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L528:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L502:
	leaq	.LC23(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "wze::engine.assets.PurgeFonts(): Font does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	.def	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE:
.LFB8447:
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
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	40(%rcx), %r9
	movq	%rcx, %rbp
	testq	%rsi, %rsi
	je	.L532
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L535:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L533
	cmpq	%r9, %rdx
	jnb	.L534
	movq	48(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L534
.L533:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L535
.L532:
	movl	$1, %ebx
	cmpq	$1, %r9
	jbe	.L585
.L536:
	testq	%rsi, %rsi
	je	.L540
.L541:
	xorl	%eax, %eax
	jmp	.L539
	.p2align 4,,10
	.p2align 3
.L586:
	addq	$1, %rax
	cmpq	%rax, %rsi
	je	.L540
.L539:
	cmpq	%rbx, (%rdi,%rax,8)
	jne	.L586
	cmpq	%rax, %rsi
	je	.L540
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L541
	movq	48(%rbp), %rcx
	leaq	-1(%r9), %r8
	cmpq	$0, -8(%rcx,%r9,8)
	je	.L587
.L582:
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
.L540:
	movq	0(%rbp), %r10
	movq	640(%r10), %r11
	cmpq	$1, %r11
	jbe	.L543
	movq	648(%r10), %r12
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L545:
	movq	(%r12,%rcx,8), %r8
	testq	%r8, %r8
	je	.L552
	cmpq	640(%r10), %rcx
	jnb	.L549
	movq	120(%r8), %r9
	movl	$1, %eax
	jmp	.L550
	.p2align 4,,10
	.p2align 3
.L548:
	addq	$1, %rax
	cmpq	640(%r10), %rcx
	jnb	.L549
.L550:
	cmpq	%r9, %rax
	jnb	.L552
	movq	128(%r8), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L548
	cmpq	%rbx, 104(%rdx)
	jne	.L548
	movq	$0, 104(%rdx)
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L552:
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L545
	movq	40(%rbp), %r9
.L543:
	movq	48(%rbp), %rax
	cmpq	%r9, %rbx
	jnb	.L583
	movq	(%rax,%rbx,8), %rcx
	call	TTF_CloseFont
	movq	40(%rbp), %r9
	movq	48(%rbp), %rcx
	cmpq	%r9, %rbx
	jnb	.L583
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L536
	cmpq	$0, -8(%rcx,%r9,8)
	leaq	-1(%r9), %r8
	jne	.L582
.L587:
	movq	%r9, %rax
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L560:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L588
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L589
	movq	%rdx, %rax
.L555:
	cmpq	$1, %rax
	jne	.L560
.L559:
	movq	%rax, %rdx
	leaq	40(%rbp), %rcx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L585:
	testq	%r9, %r9
	jne	.L582
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L589:
	movq	%r9, %r8
	subq	%rax, %r8
	jmp	.L559
.L549:
	movq	%rcx, %rdx
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L534:
	leaq	.LC24(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L583:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L588:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "wze::engine.assets.PurgeFonts(): Font does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE
_ZN3wze6engine6assets10PurgeFontsEPN3neo5arrayIyEE:
.LFB8448:
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
	movq	40(%rcx), %r9
	movq	%rdx, %rdi
	movq	(%rdx), %rdx
	movq	%rcx, %rsi
	testq	%rdx, %rdx
	je	.L591
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	jmp	.L594
	.p2align 4,,10
	.p2align 3
.L592:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L591
.L594:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L592
	cmpq	%r9, %rcx
	jnb	.L593
	movq	48(%rsi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L592
.L593:
	leaq	.LC25(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L591:
	movl	$1, %ebx
	cmpq	$1, %r9
	jbe	.L642
	testq	%rdx, %rdx
	je	.L599
	.p2align 4,,10
	.p2align 3
.L614:
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	jmp	.L598
	.p2align 4,,10
	.p2align 3
.L643:
	addq	$1, %rax
	cmpq	%rdx, %rax
	je	.L599
.L598:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L643
	cmpq	%rdx, %rax
	je	.L599
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L613
.L644:
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L614
	.p2align 4,,10
	.p2align 3
.L599:
	movq	(%rsi), %r10
	movq	640(%r10), %r11
	cmpq	$1, %r11
	jbe	.L601
	movq	648(%r10), %rbp
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L603:
	movq	0(%rbp,%rcx,8), %r8
	testq	%r8, %r8
	je	.L610
	cmpq	640(%r10), %rcx
	jnb	.L607
	movq	120(%r8), %r9
	movl	$1, %eax
	jmp	.L608
	.p2align 4,,10
	.p2align 3
.L606:
	addq	$1, %rax
	cmpq	640(%r10), %rcx
	jnb	.L607
.L608:
	cmpq	%r9, %rax
	jnb	.L610
	movq	128(%r8), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L606
	cmpq	%rbx, 104(%rdx)
	jne	.L606
	movq	$0, 104(%rdx)
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L610:
	addq	$1, %rcx
	cmpq	%r11, %rcx
	jne	.L603
	movq	40(%rsi), %r9
.L601:
	movq	48(%rsi), %rax
	cmpq	%r9, %rbx
	jnb	.L641
	movq	(%rax,%rbx,8), %rcx
	call	TTF_CloseFont
	movq	40(%rsi), %r9
	movq	48(%rsi), %rax
	cmpq	%r9, %rbx
	jnb	.L641
	movq	$0, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L644
	.p2align 4,,10
	.p2align 3
.L613:
	movq	48(%rsi), %rcx
	leaq	-1(%r9), %r8
	cmpq	$0, -8(%rcx,%r9,8)
	je	.L645
.L640:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L645:
	movq	%r9, %rax
	jmp	.L615
	.p2align 4,,10
	.p2align 3
.L620:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L646
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L647
	movq	%rdx, %rax
.L615:
	cmpq	$1, %rax
	jne	.L620
.L619:
	movq	%rax, %rdx
	leaq	40(%rsi), %rcx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L642:
	testq	%r9, %r9
	jne	.L640
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L647:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L619
.L607:
	movq	%rcx, %rdx
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L641:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L646:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "wze::engine.assets.LoadCursor(): Path must not be NULL\12Params: Path: %p\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.assets.LoadCursor(): IMG_Load() failed\12Params: Path: %s\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.assets.LoadCursor(): HotSpotX out of range\12Params: Path: %s\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.assets.LoadCursor(): HotSpotY out of range\12Params: Path: %s\12\0"
	.align 8
.LC30:
	.ascii "wze::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\12Params: Path: %s\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets10LoadCursorEPKctt
	.def	_ZN3wze6engine6assets10LoadCursorEPKctt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets10LoadCursorEPKctt
_ZN3wze6engine6assets10LoadCursorEPKctt:
.LFB8449:
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
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	movl	%r8d, %ebx
	movl	%r9d, %r12d
	testq	%rdx, %rdx
	je	.L669
	movq	%rdx, %rcx
	call	IMG_Load
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L670
	movzwl	%bx, %ecx
	cmpl	%ecx, 16(%rax)
	jle	.L671
	movzwl	%r12w, %r8d
	cmpl	%r8d, 20(%rax)
	jle	.L652
	movq	56(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L654
	movq	64(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L659
	.p2align 4,,10
	.p2align 3
.L655:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L654
.L659:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L655
	movl	%ecx, %edx
	movq	%rdi, %rcx
	call	SDL_CreateColorCursor
	movq	64(%rsi), %rdx
	cmpq	56(%rsi), %rbx
	jnb	.L672
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L664
	movq	%rdi, %rcx
	call	SDL_FreeSurface
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L654:
	movl	%ecx, %edx
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
	je	.L673
	movq	56(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	56(%rsi), %rax
	movq	64(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L674
	cmpq	$0, (%rdx,%rcx,8)
	je	.L664
	movq	%rdi, %rcx
	call	SDL_FreeSurface
	movq	56(%rsi), %rbx
	subq	$1, %rbx
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L672:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L652:
	leaq	.LC29(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L671:
	leaq	.LC28(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L670:
	leaq	.LC27(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L669:
	leaq	.LC26(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L664:
	leaq	.LC30(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L674:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L673:
	leaq	.LC9(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "wze::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\12Params: ID: %lld\12\0"
	.align 8
.LC32:
	.ascii "wze::engine.assets.UnloadCursor(): Cursor does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets12UnloadCursorEy
	.def	_ZN3wze6engine6assets12UnloadCursorEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets12UnloadCursorEy
_ZN3wze6engine6assets12UnloadCursorEy:
.LFB8450:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L687
	cmpq	56(%rcx), %rdx
	jnb	.L677
	movq	64(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L677
	call	SDL_FreeCursor
	movq	56(%rsi), %rax
	movq	64(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L688
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L689
.L680:
	movq	(%rsi), %rax
	cmpq	%rbx, 624(%rax)
	jne	.L685
	movq	$0, 624(%rax)
.L685:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L689:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L684:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L690
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L691
	cmpq	$1, %rdx
	jne	.L684
.L683:
	leaq	56(%rsi), %rcx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	jmp	.L680
	.p2align 4,,10
	.p2align 3
.L691:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L683
.L677:
	leaq	.LC32(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L690:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L687:
	leaq	.LC31(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L688:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "wze::engine.assets.PurgeCursors(): Cursor does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE
	.def	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE
_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE:
.LFB8451:
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
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %rbp
	movq	56(%rcx), %rcx
	testq	%rsi, %rsi
	je	.L693
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L696:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L694
	cmpq	%rcx, %rdx
	jnb	.L695
	movq	64(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L695
.L694:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L696
.L693:
	cmpq	$1, %rcx
	jbe	.L697
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L698:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jne	.L700
	jmp	.L701
	.p2align 4,,10
	.p2align 3
.L728:
	addq	$1, %rax
	cmpq	%rax, %rsi
	je	.L701
.L700:
	cmpq	%rbx, (%rdi,%rax,8)
	jne	.L728
	cmpq	%rax, %rsi
	je	.L701
.L702:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L698
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L729
.L726:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L701:
	movq	0(%rbp), %rax
	cmpq	%rbx, 624(%rax)
	jne	.L703
	movq	$0, 624(%rax)
	movq	56(%rbp), %rcx
.L703:
	cmpq	%rcx, %rbx
	jnb	.L727
	movq	(%rdx,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rbp), %rcx
	movq	64(%rbp), %rdx
	cmpq	%rcx, %rbx
	jnb	.L727
	movq	$0, (%rdx,%rbx,8)
	jmp	.L702
.L729:
	movq	%rcx, %r9
	jmp	.L707
	.p2align 4,,10
	.p2align 3
.L712:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L730
	cmpq	$0, (%rdx,%rax,8)
	jne	.L731
	movq	%rax, %r9
.L707:
	cmpq	$1, %r9
	jne	.L712
.L711:
	leaq	56(%rbp), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L697:
	testq	%rcx, %rcx
	jne	.L726
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L731:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L711
.L695:
	leaq	.LC33(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L730:
	leaq	.LC7(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L727:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC34:
	.ascii "wze::engine.assets.PurgeCursors(): Cursor does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE
_ZN3wze6engine6assets12PurgeCursorsEPN3neo5arrayIyEE:
.LFB8452:
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
	movq	(%rdx), %rcx
	movq	%rdx, %rdi
	movq	56(%rsi), %r9
	testq	%rcx, %rcx
	je	.L733
	movq	8(%rdx), %r10
	xorl	%eax, %eax
	jmp	.L736
	.p2align 4,,10
	.p2align 3
.L734:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L733
.L736:
	movq	(%r10,%rax,8), %r8
	testq	%r8, %r8
	je	.L734
	cmpq	%r9, %r8
	jnb	.L735
	movq	64(%rsi), %rdx
	cmpq	$0, (%rdx,%r8,8)
	jne	.L734
.L735:
	leaq	.LC34(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L733:
	cmpq	$1, %r9
	jbe	.L737
	movq	64(%rsi), %rdx
	movl	$1, %ebx
	testq	%rcx, %rcx
	je	.L741
	.p2align 4,,10
	.p2align 3
.L747:
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	jmp	.L740
	.p2align 4,,10
	.p2align 3
.L767:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L741
.L740:
	cmpq	%rbx, (%r8,%rax,8)
	jne	.L767
	cmpq	%rax, %rcx
	je	.L741
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L746
.L768:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	jne	.L747
	.p2align 4,,10
	.p2align 3
.L741:
	movq	(%rsi), %rax
	cmpq	%rbx, 624(%rax)
	jne	.L743
	movq	$0, 624(%rax)
	movq	56(%rsi), %r9
.L743:
	cmpq	%r9, %rbx
	jnb	.L766
	movq	(%rdx,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rsi), %r9
	movq	64(%rsi), %rdx
	cmpq	%r9, %rbx
	jnb	.L766
	movq	$0, (%rdx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L768
.L746:
	cmpq	$0, -8(%rdx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L769
.L765:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L769:
	movq	%r9, %r10
	jmp	.L748
	.p2align 4,,10
	.p2align 3
.L753:
	leaq	-1(%r10), %rax
	cmpq	%r9, %rax
	jnb	.L770
	cmpq	$0, (%rdx,%rax,8)
	jne	.L771
	movq	%rax, %r10
.L748:
	cmpq	$1, %r10
	jne	.L753
.L752:
	leaq	56(%rsi), %rcx
	movq	%r10, %rdx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L737:
	testq	%r9, %r9
	jne	.L765
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L771:
	subq	%r10, %r9
	movq	%r9, %r8
	jmp	.L752
.L770:
	leaq	.LC7(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L766:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
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
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	IMG_Load;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTextureFromSurface;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	SDL_DestroyTexture;	.scl	2;	.type	32;	.endef
	.def	Mix_LoadWAV;	.scl	2;	.type	32;	.endef
	.def	Mix_FreeChunk;	.scl	2;	.type	32;	.endef
	.def	TTF_OpenFont;	.scl	2;	.type	32;	.endef
	.def	TTF_CloseFont;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateColorCursor;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeCursor;	.scl	2;	.type	32;	.endef
