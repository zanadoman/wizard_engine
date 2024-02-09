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
.LFB6960:
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
.LFB6961:
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
.LFB6962:
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
.LFB6963:
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
.LFB6880:
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
.LLSDA6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6880-.LLSDACSB6880
.LLSDACSB6880:
	.uleb128 .LEHB0-.LFB6880
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6880
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L120-.LFB6880
	.uleb128 0
	.uleb128 .LEHB2-.LFB6880
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L121-.LFB6880
	.uleb128 0
	.uleb128 .LEHB3-.LFB6880
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L122-.LFB6880
	.uleb128 0
	.uleb128 .LEHB4-.LFB6880
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB6880
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L122-.LFB6880
	.uleb128 0
	.uleb128 .LEHB6-.LFB6880
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L121-.LFB6880
	.uleb128 0
	.uleb128 .LEHB7-.LFB6880
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L120-.LFB6880
	.uleb128 0
.LLSDACSE6880:
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
.LLSDAC6880:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6880-.LLSDACSBC6880
.LLSDACSBC6880:
	.uleb128 .LEHB8-.LCOLDB4
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC6880:
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
.LFB6882:
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
.LFB6883:
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
	movq	352(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L192
	movq	360(%rsi), %rdi
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
	movq	352(%rsi), %r8
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
	movq	352(%rsi), %r8
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
.LFB6884:
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
	movq	8(%rdx), %rdi
	movq	(%rdx), %r12
	movq	8(%rcx), %r9
	movq	%rcx, %rbp
	testq	%rdi, %rdi
	je	.L201
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L204:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L202
	cmpq	%r9, %rdx
	jnb	.L203
	movq	16(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L203
.L202:
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L204
.L201:
	movl	$1, %ebx
	cmpq	$1, %r9
	jbe	.L270
.L205:
	testq	%rdi, %rdi
	je	.L207
.L240:
	xorl	%eax, %eax
.L232:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L271
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L232
.L207:
	movq	0(%rbp), %rsi
	movq	352(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L210
	movq	360(%rsi), %r13
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L228:
	movq	0(%r13,%r10,8), %r11
	testq	%r11, %r11
	je	.L211
	cmpq	%r8, %r10
	jnb	.L219
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L213:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L219
.L215:
	cmpq	%rcx, %rax
	jnb	.L272
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L213
	cmpq	%rbx, 72(%rdx)
	jne	.L213
	movq	$0, 72(%rdx)
	movq	352(%rsi), %r8
	jmp	.L213
	.p2align 4,,10
	.p2align 3
.L211:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L228
	movq	8(%rbp), %r9
.L210:
	movq	16(%rbp), %rax
	cmpq	%r9, %rbx
	jnb	.L269
	movq	(%rax,%rbx,8), %rcx
	call	SDL_DestroyTexture
	movq	8(%rbp), %r9
	movq	16(%rbp), %rcx
	cmpq	%r9, %rbx
	jnb	.L269
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L205
.L231:
	cmpq	$0, -8(%rcx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L273
.L268:
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
.L272:
	cmpq	%r8, %r10
	jnb	.L219
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L226:
	cmpq	%rcx, %r9
	jnb	.L211
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L218
	cmpq	%r8, %r10
	jnb	.L219
	xorl	%eax, %eax
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L221:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L219
.L222:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L274
.L220:
	cmpq	96(%rdx), %rax
	jnb	.L218
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L221
	movq	$0, (%rcx)
	movq	352(%rsi), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L222
.L219:
	leaq	.LC7(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L218:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L226
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L271:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jb	.L240
	movq	16(%rbp), %rcx
	jmp	.L231
.L270:
	testq	%r9, %r9
	jne	.L268
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L273:
	movq	%r9, %rax
	jmp	.L233
.L238:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L275
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L276
	movq	%rdx, %rax
.L233:
	cmpq	$1, %rax
	jne	.L238
.L237:
	leaq	8(%rbp), %rcx
	movq	%rax, %rdx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	jmp	.L268
.L274:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L276:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L237
.L203:
	leaq	.LC12(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L269:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L275:
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
.LFB6887:
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
	movq	%rcx, %rsi
	movq	(%rdx), %rcx
	movq	%rdx, %rdi
	movq	8(%rsi), %r9
	testq	%rcx, %rcx
	je	.L278
	movq	8(%rdx), %r8
	xorl	%eax, %eax
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L279:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L278
.L281:
	movq	(%r8,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L279
	cmpq	%r9, %rdx
	jnb	.L280
	movq	16(%rsi), %r10
	cmpq	$0, (%r10,%rdx,8)
	jne	.L279
.L280:
	leaq	.LC13(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L278:
	cmpq	$1, %r9
	jbe	.L282
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L309:
	movq	8(%rdi), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L283
.L284:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L285
	addq	$1, %rax
	cmpq	%rcx, %rax
	jne	.L284
.L283:
	movq	(%rsi), %rbp
	movq	352(%rbp), %r8
	cmpq	$1, %r8
	jbe	.L287
	movq	360(%rbp), %r12
	movl	$1, %r10d
.L305:
	movq	(%r12,%r10,8), %r11
	testq	%r11, %r11
	je	.L288
	cmpq	%r8, %r10
	jnb	.L296
	movq	56(%r11), %rcx
	movl	$1, %eax
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L290:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L296
.L292:
	cmpq	%rcx, %rax
	jnb	.L342
	movq	64(%r11), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L290
	cmpq	%rbx, 72(%rdx)
	jne	.L290
	movq	$0, 72(%rdx)
	movq	352(%rbp), %r8
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L288:
	addq	$1, %r10
	cmpq	%r8, %r10
	jb	.L305
	movq	8(%rsi), %r9
.L287:
	movq	16(%rsi), %rax
	cmpq	%r9, %rbx
	jnb	.L341
	movq	(%rax,%rbx,8), %rcx
	call	SDL_DestroyTexture
	movq	8(%rsi), %r9
	movq	16(%rsi), %rax
	cmpq	%r9, %rbx
	jnb	.L341
	movq	$0, (%rax,%rbx,8)
.L285:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L308
	movq	(%rdi), %rcx
	jmp	.L309
	.p2align 4,,10
	.p2align 3
.L342:
	cmpq	%r8, %r10
	jnb	.L296
	movq	88(%r11), %rcx
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L303:
	cmpq	%rcx, %r9
	jnb	.L288
	movq	96(%r11), %rax
	movq	(%rax,%r9,8), %rdx
	testq	%rdx, %rdx
	je	.L295
	cmpq	%r8, %r10
	jnb	.L296
	xorl	%eax, %eax
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L298:
	addq	$1, %rax
	cmpq	%r8, %r10
	jnb	.L296
.L299:
	movq	88(%r11), %rcx
	cmpq	%rcx, %r9
	jnb	.L343
.L297:
	cmpq	96(%rdx), %rax
	jnb	.L295
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L298
	movq	$0, (%rcx)
	movq	352(%rbp), %r8
	addq	$1, %rax
	cmpq	%r8, %r10
	jb	.L299
.L296:
	leaq	.LC7(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L295:
	addq	$1, %r9
	cmpq	%r8, %r10
	jb	.L303
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L308:
	movq	16(%rsi), %rcx
	leaq	-1(%r9), %r8
	cmpq	$0, -8(%rcx,%r9,8)
	je	.L344
.L340:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L282:
	testq	%r9, %r9
	jne	.L340
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L344:
	movq	%r9, %rax
	jmp	.L310
.L315:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L345
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L346
	movq	%rdx, %rax
.L310:
	cmpq	$1, %rax
	jne	.L315
.L314:
	leaq	8(%rsi), %rcx
	movq	%rax, %rdx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	jmp	.L340
.L343:
	leaq	.LC7(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L346:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L314
.L345:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L341:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
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
.LFB6888:
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
	je	.L348
	movq	24(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L350
	movq	32(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L351:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L350
.L354:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L351
	movq	%rdi, %rcx
	call	Mix_LoadWAV
	movq	32(%rsi), %rdx
	cmpq	24(%rsi), %rbx
	jnb	.L364
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L347
.L359:
	leaq	.LC15(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L350:
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
	je	.L365
	movq	24(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	24(%rsi), %rbx
	movq	32(%rsi), %rax
	addq	$-1, %rbx
	jnc	.L366
	cmpq	$0, (%rax,%rbx,8)
	je	.L359
.L347:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L364:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L348:
	leaq	.LC14(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L366:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L365:
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
.LFB6889:
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
	je	.L378
	cmpq	24(%rcx), %rdx
	jnb	.L369
	movq	32(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L369
	call	Mix_FreeChunk
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L379
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L380
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L380:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L376:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L381
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L382
	cmpq	$1, %rdx
	jne	.L376
.L375:
	leaq	24(%rsi), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L382:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L375
.L369:
	leaq	.LC17(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L381:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L378:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L379:
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
.LFB6890:
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
	movq	8(%rdx), %rdi
	movq	(%rdx), %rsi
	movq	24(%rcx), %r8
	movq	%rcx, %rbp
	testq	%rdi, %rdi
	je	.L384
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L387:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L385
	cmpq	%r8, %rdx
	jnb	.L386
	movq	32(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L386
.L385:
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L387
.L384:
	cmpq	$1, %r8
	jbe	.L388
	movq	32(%rbp), %rdx
	movl	$1, %ebx
.L389:
	testq	%rdi, %rdi
	je	.L390
.L407:
	xorl	%eax, %eax
.L395:
	cmpq	%rbx, (%rsi,%rax,8)
	je	.L429
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L395
.L390:
	movq	(%rdx,%rbx,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rbp), %rax
	movq	32(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L430
	movq	$0, (%rdx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L389
.L394:
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L405
	cmpq	$0, (%rdx,%r8,8)
	jne	.L414
	cmpq	$1, %rax
	jne	.L431
.L414:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L429:
	movq	24(%rbp), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L407
	jmp	.L394
.L431:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L399:
	movq	%rcx, %r9
	subq	$1, %rcx
	cmpq	%rax, %rcx
	jnb	.L432
	cmpq	$0, (%rdx,%rcx,8)
	jne	.L433
	cmpq	$1, %rcx
	jne	.L399
.L404:
	addq	$24, %rbp
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L388:
	testq	%r8, %r8
	jne	.L414
.L405:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L433:
	subq	%r9, %rax
	movq	%r9, %rcx
	movq	%rax, %r8
	jmp	.L404
.L386:
	leaq	.LC18(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L432:
	movq	%rcx, %rdx
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L430:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
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
.LFB6891:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rdx), %r8
	movq	24(%rcx), %r10
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	testq	%r8, %r8
	je	.L435
	movq	8(%rdx), %r9
	xorl	%eax, %eax
	jmp	.L438
	.p2align 4,,10
	.p2align 3
.L436:
	addq	$1, %rax
	cmpq	%rax, %r8
	je	.L435
.L438:
	movq	(%r9,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L436
	cmpq	%r10, %rcx
	jnb	.L437
	movq	32(%rsi), %rdx
	cmpq	$0, (%rdx,%rcx,8)
	jne	.L436
.L437:
	leaq	.LC19(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L435:
	cmpq	$1, %r10
	jbe	.L439
	movq	32(%rsi), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L446:
	movq	8(%rdi), %rdx
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.L440
.L441:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L479
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L441
	.p2align 4,,10
	.p2align 3
.L440:
	movq	(%rcx,%rbx,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L480
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L445
.L481:
	movq	(%rdi), %r8
	jmp	.L446
.L479:
	movq	24(%rsi), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L481
.L445:
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L456
	cmpq	$0, (%rcx,%r8,8)
	jne	.L465
	cmpq	$1, %rax
	jne	.L482
.L465:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L482:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L450:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L483
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L484
	cmpq	$1, %rdx
	jne	.L450
.L455:
	leaq	24(%rsi), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L439:
	testq	%r10, %r10
	jne	.L465
.L456:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L484:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L455
.L483:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L480:
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
.LFB6892:
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
	je	.L486
	movq	40(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L488
	movq	48(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L489:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L488
.L492:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L489
	movzbl	%r8b, %edx
	movq	%rdi, %rcx
	call	TTF_OpenFont
	movq	48(%rsi), %rdx
	cmpq	40(%rsi), %rbx
	jnb	.L502
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L485
.L497:
	leaq	.LC21(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L488:
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
	je	.L503
	movq	40(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	40(%rsi), %rbx
	movq	48(%rsi), %rax
	addq	$-1, %rbx
	jnc	.L504
	cmpq	$0, (%rax,%rbx,8)
	je	.L497
.L485:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L502:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L486:
	leaq	.LC20(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L504:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L503:
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
.LFB6893:
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
	je	.L532
	cmpq	40(%rcx), %rdx
	jnb	.L507
	movq	48(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L507
	call	TTF_CloseFont
	movq	40(%rsi), %rax
	movq	48(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L533
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L534
.L510:
	movq	(%rsi), %r10
	movq	352(%r10), %r11
	cmpq	$1, %r11
	jbe	.L530
	movq	360(%r10), %rsi
	movl	$1, %ecx
	.p2align 4,,10
	.p2align 3
.L517:
	movq	(%rsi,%rcx,8), %r8
	testq	%r8, %r8
	je	.L524
	cmpq	352(%r10), %rcx
	jnb	.L521
	movq	120(%r8), %r9
	movl	$1, %eax
	jmp	.L522
	.p2align 4,,10
	.p2align 3
.L520:
	addq	$1, %rax
	cmpq	352(%r10), %rcx
	jnb	.L521
.L522:
	cmpq	%r9, %rax
	jnb	.L524
	movq	128(%r8), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L520
	cmpq	%rbx, 104(%rdx)
	jne	.L520
	movq	$0, 104(%rdx)
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L524:
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L517
.L530:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L534:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L514:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L531
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L535
	cmpq	$1, %rdx
	jne	.L514
.L513:
	leaq	40(%rsi), %rcx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L510
.L535:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L513
.L521:
	movq	%rcx, %rdx
.L531:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L532:
	leaq	.LC22(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L533:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L507:
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
.LFB6894:
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
	movq	8(%rdx), %r12
	movq	(%rdx), %r14
	movq	40(%rcx), %r9
	movq	%rcx, %r13
	testq	%r12, %r12
	je	.L537
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L540:
	movq	(%r14,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L538
	cmpq	%r9, %rdx
	jnb	.L539
	movq	48(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L539
.L538:
	addq	$1, %rax
	cmpq	%rax, %r12
	jne	.L540
.L537:
	movl	$1, %ebp
	cmpq	$1, %r9
	jbe	.L597
	.p2align 4,,10
	.p2align 3
.L541:
	testq	%r12, %r12
	je	.L543
.L571:
	xorl	%eax, %eax
.L563:
	cmpq	%rbp, (%r14,%rax,8)
	je	.L598
	addq	$1, %rax
	cmpq	%rax, %r12
	jne	.L563
.L543:
	movq	0(%r13), %rcx
	movq	352(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L546
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L559:
	movq	360(%rcx), %rax
	leaq	0(,%rsi,8), %rdi
	cmpq	$0, (%rax,%rsi,8)
	je	.L547
	cmpq	%r8, %rsi
	jnb	.L594
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L548:
	movq	(%rax,%rdi), %rax
	cmpq	120(%rax), %rbx
	jnb	.L547
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r15
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L592
	cmpq	%rbp, 104(%rdx)
	je	.L551
.L592:
	movq	360(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L548
.L594:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L547:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L559
	movq	40(%r13), %r9
.L546:
	movq	48(%r13), %rax
	cmpq	%r9, %rbp
	jnb	.L596
	movq	(%rax,%rbp,8), %rcx
	call	TTF_CloseFont
	movq	40(%r13), %r9
	movq	48(%r13), %rcx
	cmpq	%r9, %rbp
	jnb	.L596
	movq	$0, (%rcx,%rbp,8)
	addq	$1, %rbp
	cmpq	%r9, %rbp
	jb	.L541
.L562:
	cmpq	$0, -8(%rcx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L599
.L591:
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
.L551:
	movq	$0, 104(%rdx)
	cmpq	352(%rcx), %rsi
	jnb	.L594
	cmpq	120(%rax), %rbx
	jnb	.L595
	movq	120(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	0(%r13), %rcx
	movq	352(%rcx), %r8
	movq	360(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L594
	movq	(%rax,%rdi), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L595
	movq	(%r9,%r15), %rdx
	addq	$1, %rbx
	movq	$0, 120(%rdx)
	jmp	.L548
.L598:
	addq	$1, %rbp
	cmpq	%r9, %rbp
	jb	.L571
	movq	48(%r13), %rcx
	jmp	.L562
.L599:
	movq	%r9, %rax
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L569:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L600
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L601
	movq	%rdx, %rax
.L564:
	cmpq	$1, %rax
	jne	.L569
.L568:
	leaq	40(%r13), %rcx
	movq	%rax, %rdx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L591
.L597:
	testq	%r9, %r9
	jne	.L591
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L601:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L568
.L595:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L539:
	leaq	.LC24(%rip), %rcx
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L596:
	leaq	.LC7(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L600:
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
.LFB6895:
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
	movq	%rcx, %r13
	movq	(%rdx), %rcx
	movq	%rdx, %rdi
	movq	40(%r13), %r9
	testq	%rcx, %rcx
	je	.L603
	movq	8(%rdx), %r8
	xorl	%eax, %eax
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L604:
	addq	$1, %rax
	cmpq	%rcx, %rax
	je	.L603
.L606:
	movq	(%r8,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L604
	cmpq	%r9, %rdx
	jnb	.L605
	movq	48(%r13), %r10
	cmpq	$0, (%r10,%rdx,8)
	jne	.L604
.L605:
	leaq	.LC25(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L603:
	cmpq	$1, %r9
	jbe	.L607
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L629:
	movq	8(%rdi), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L608
.L609:
	cmpq	%r12, (%rdx,%rax,8)
	je	.L610
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L609
	.p2align 4,,10
	.p2align 3
.L608:
	movq	0(%r13), %rcx
	movq	352(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L612
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L625:
	movq	360(%rcx), %rax
	leaq	0(,%rsi,8), %rbp
	cmpq	$0, (%rax,%rsi,8)
	je	.L613
	cmpq	%r8, %rsi
	jnb	.L655
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L614:
	movq	(%rax,%rbp), %rax
	cmpq	120(%rax), %rbx
	jnb	.L613
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r14
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L653
	cmpq	%r12, 104(%rdx)
	je	.L617
.L653:
	movq	360(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L614
.L655:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L613:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L625
	movq	40(%r13), %r9
.L612:
	movq	48(%r13), %rax
	cmpq	%r9, %r12
	jnb	.L657
	movq	(%rax,%r12,8), %rcx
	call	TTF_CloseFont
	movq	40(%r13), %r9
	movq	48(%r13), %rax
	cmpq	%r9, %r12
	jnb	.L657
	movq	$0, (%rax,%r12,8)
.L610:
	addq	$1, %r12
	cmpq	%r9, %r12
	jnb	.L628
	movq	(%rdi), %rcx
	jmp	.L629
	.p2align 4,,10
	.p2align 3
.L617:
	movq	$0, 104(%rdx)
	cmpq	352(%rcx), %rsi
	jnb	.L655
	cmpq	120(%rax), %rbx
	jnb	.L656
	movq	120(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	0(%r13), %rcx
	movq	352(%rcx), %r8
	movq	360(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L655
	movq	(%rax,%rbp), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L656
	movq	(%r9,%r14), %rdx
	addq	$1, %rbx
	movq	$0, 120(%rdx)
	jmp	.L614
.L628:
	movq	48(%r13), %rcx
	leaq	-1(%r9), %r8
	cmpq	$0, -8(%rcx,%r9,8)
	je	.L658
.L652:
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
.L658:
	movq	%r9, %rax
	jmp	.L630
	.p2align 4,,10
	.p2align 3
.L635:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L659
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L660
	movq	%rdx, %rax
.L630:
	cmpq	$1, %rax
	jne	.L635
.L634:
	leaq	40(%r13), %rcx
	movq	%rax, %rdx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L652
.L607:
	testq	%r9, %r9
	jne	.L652
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L660:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L634
.L656:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L657:
	leaq	.LC7(%rip), %rcx
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L659:
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
.LFB6896:
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
	je	.L682
	movq	%rdx, %rcx
	call	IMG_Load
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L683
	movzwl	%bx, %ecx
	cmpl	%ecx, 16(%rax)
	jle	.L684
	movzwl	%r12w, %r8d
	cmpl	%r8d, 20(%rax)
	jle	.L665
	movq	56(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L667
	movq	64(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L672
	.p2align 4,,10
	.p2align 3
.L668:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L667
.L672:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L668
	movl	%ecx, %edx
	movq	%rdi, %rcx
	call	SDL_CreateColorCursor
	movq	64(%rsi), %rdx
	cmpq	56(%rsi), %rbx
	jnb	.L685
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L677
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
.L667:
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
	je	.L686
	movq	56(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	56(%rsi), %rax
	movq	64(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L687
	cmpq	$0, (%rdx,%rcx,8)
	je	.L677
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
.L685:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L665:
	leaq	.LC29(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L684:
	leaq	.LC28(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L683:
	leaq	.LC27(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L682:
	leaq	.LC26(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L677:
	leaq	.LC30(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L687:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L686:
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
.LFB6897:
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
	je	.L700
	cmpq	56(%rcx), %rdx
	jnb	.L690
	movq	64(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L690
	call	SDL_FreeCursor
	movq	56(%rsi), %rax
	movq	64(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L701
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L702
.L693:
	movq	(%rsi), %rax
	cmpq	%rbx, 336(%rax)
	jne	.L698
	movq	$0, 336(%rax)
.L698:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L702:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L697:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L703
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L704
	cmpq	$1, %rdx
	jne	.L697
.L696:
	leaq	56(%rsi), %rcx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	jmp	.L693
	.p2align 4,,10
	.p2align 3
.L704:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L696
.L690:
	leaq	.LC32(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L703:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L700:
	leaq	.LC31(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L701:
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
.LFB6898:
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
	je	.L706
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L709:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L707
	cmpq	%rcx, %rdx
	jnb	.L708
	movq	64(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L708
.L707:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L709
.L706:
	cmpq	$1, %rcx
	jbe	.L710
	movq	64(%rbp), %rdx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L711:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L712
.L719:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L713
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L719
.L712:
	movq	0(%rbp), %rax
	cmpq	%rbx, 336(%rax)
	jne	.L715
	movq	$0, 336(%rax)
	movq	56(%rbp), %rcx
.L715:
	cmpq	%rcx, %rbx
	jnb	.L740
	movq	(%rdx,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rbp), %rcx
	movq	64(%rbp), %rdx
	cmpq	%rcx, %rbx
	jnb	.L740
	movq	$0, (%rdx,%rbx,8)
.L713:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L711
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L741
.L739:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L741:
	movq	%rcx, %r9
	jmp	.L720
	.p2align 4,,10
	.p2align 3
.L725:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L742
	cmpq	$0, (%rdx,%rax,8)
	jne	.L743
	movq	%rax, %r9
.L720:
	cmpq	$1, %r9
	jne	.L725
.L724:
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
.L710:
	testq	%rcx, %rcx
	jne	.L739
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L743:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L724
.L708:
	leaq	.LC33(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L742:
	leaq	.LC7(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L740:
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
	movq	(%rdx), %r8
	movq	56(%rcx), %r9
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	testq	%r8, %r8
	je	.L745
	movq	8(%rdx), %r10
	xorl	%eax, %eax
	jmp	.L748
	.p2align 4,,10
	.p2align 3
.L746:
	addq	$1, %rax
	cmpq	%rax, %r8
	je	.L745
.L748:
	movq	(%r10,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L746
	cmpq	%r9, %rcx
	jnb	.L747
	movq	64(%rsi), %rdx
	cmpq	$0, (%rdx,%rcx,8)
	jne	.L746
.L747:
	leaq	.LC34(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L745:
	cmpq	$1, %r9
	jbe	.L749
	movq	64(%rsi), %rdx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L758:
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.L750
.L751:
	cmpq	(%rcx,%rax,8), %rbx
	je	.L752
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L751
	.p2align 4,,10
	.p2align 3
.L750:
	movq	(%rsi), %rax
	cmpq	%rbx, 336(%rax)
	jne	.L754
	movq	$0, 336(%rax)
	movq	56(%rsi), %r9
.L754:
	cmpq	%r9, %rbx
	jnb	.L780
	movq	(%rdx,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rsi), %r9
	movq	64(%rsi), %rdx
	cmpq	%r9, %rbx
	jnb	.L780
	movq	$0, (%rdx,%rbx,8)
.L752:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L757
	movq	(%rdi), %r8
	jmp	.L758
	.p2align 4,,10
	.p2align 3
.L757:
	cmpq	$0, -8(%rdx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L781
.L779:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L781:
	movq	%r9, %r10
	jmp	.L759
	.p2align 4,,10
	.p2align 3
.L764:
	leaq	-1(%r10), %rax
	cmpq	%r9, %rax
	jnb	.L782
	cmpq	$0, (%rdx,%rax,8)
	jne	.L783
	movq	%rax, %r10
.L759:
	cmpq	$1, %r10
	jne	.L764
.L763:
	leaq	56(%rsi), %rcx
	movq	%r10, %rdx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L749:
	testq	%r9, %r9
	jne	.L779
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L783:
	subq	%r10, %r9
	movq	%r9, %r8
	jmp	.L763
.L780:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L782:
	leaq	.LC7(%rip), %rcx
	movq	%rax, %rdx
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
