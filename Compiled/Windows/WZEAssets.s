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
	movq	248(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L184
	movq	256(%rsi), %rdi
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
	cmpq	%rbx, 72(%rdx)
	jne	.L162
	movq	$0, 72(%rdx)
	movq	248(%rsi), %r8
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
	cmpq	96(%rdx), %rax
	jnb	.L167
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L170
	movq	$0, (%rcx)
	movq	248(%rsi), %r8
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
	movq	(%rdx), %r12
	movq	8(%rdx), %rdi
	movq	8(%rcx), %rdx
	movq	%rcx, %rbp
	cmpq	$1, %rdx
	jbe	.L206
	movl	$1, %ebx
.L232:
	testq	%rdi, %rdi
	je	.L207
.L240:
	xorl	%eax, %eax
.L208:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L262
	addq	$1, %rax
	cmpq	%rdi, %rax
	jne	.L208
.L207:
	movq	0(%rbp), %rsi
	movq	248(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L211
	movq	256(%rsi), %r13
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
	cmpq	%rbx, 72(%rdx)
	jne	.L214
	movq	$0, 72(%rdx)
	movq	248(%rsi), %r8
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
	cmpq	96(%rdx), %rax
	jnb	.L219
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L222
	movq	$0, (%rcx)
	movq	248(%rsi), %r8
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
	jmp	.L260
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
.LFB6885:
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
	movq	248(%rsi), %r8
	cmpq	$1, %r8
	jbe	.L276
	movq	256(%rsi), %r12
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
	cmpq	%rbx, 72(%rdx)
	jne	.L279
	movq	$0, 72(%rdx)
	movq	248(%rsi), %r8
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
	cmpq	96(%rdx), %rax
	jnb	.L284
	movq	104(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rcx
	cmpq	%rbx, (%rcx)
	jne	.L287
	movq	$0, (%rcx)
	movq	248(%rsi), %r8
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
	leaq	8(%rdi), %rcx
	movq	%rax, %rdx
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy.isra.0
	jmp	.L324
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
.LFB6886:
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
.LFB6887:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmpq	24(%rcx), %rdx
	jb	.L371
.L354:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	movq	32(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L354
	call	Mix_FreeChunk
	movq	24(%rbx), %rax
	movq	32(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L372
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L354
	cmpq	$1, %rax
	je	.L354
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L360:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L373
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L374
	cmpq	$1, %rdx
	jne	.L360
.L359:
	leaq	24(%rbx), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L374:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L359
.L373:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L372:
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
.LFB6888:
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
	movq	24(%rcx), %rax
	movq	(%rdx), %rdi
	movq	8(%rdx), %rbp
	movq	%rcx, %rsi
	cmpq	$1, %rax
	jbe	.L376
	movq	32(%rcx), %rdx
	movl	$1, %ebx
.L382:
	testq	%rbp, %rbp
	je	.L377
.L394:
	xorl	%eax, %eax
.L378:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L411
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L378
.L377:
	movq	(%rdx,%rbx,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rsi), %rax
	movq	32(%rsi), %rdx
	cmpq	%rax, %rbx
	jnb	.L412
	movq	$0, (%rdx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L382
.L395:
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L392
	cmpq	$0, (%rdx,%r8,8)
	jne	.L400
	cmpq	$1, %rax
	jne	.L413
.L400:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L411:
	movq	24(%rsi), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L394
	jmp	.L395
.L413:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L386:
	movq	%rcx, %r9
	subq	$1, %rcx
	cmpq	%rax, %rcx
	jnb	.L414
	cmpq	$0, (%rdx,%rcx,8)
	jne	.L415
	cmpq	$1, %rcx
	jne	.L386
.L391:
	addq	$24, %rsi
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L376:
	testq	%rax, %rax
	jne	.L400
.L392:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L415:
	subq	%r9, %rax
	movq	%r9, %rcx
	movq	%rax, %r8
	jmp	.L391
.L414:
	movq	%rcx, %rdx
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L412:
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
.LFB6889:
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
	je	.L417
	movq	24(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L453
	movq	32(%rcx), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L425:
	movq	(%rsi), %rdx
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L420
.L421:
	cmpq	(%rcx,%rax,8), %rbx
	je	.L454
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L421
	.p2align 4,,10
	.p2align 3
.L420:
	movq	(%r9,%rbx,8), %rcx
	call	Mix_FreeChunk
	movq	24(%rdi), %rax
	movq	32(%rdi), %r9
	cmpq	%rax, %rbx
	jnb	.L455
	movq	$0, (%r9,%rbx,8)
.L437:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L425
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L435
	cmpq	$0, (%r9,%r8,8)
	jne	.L442
	cmpq	$1, %rax
	jne	.L456
.L442:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L454:
	movq	24(%rdi), %rax
	jmp	.L437
.L456:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L429:
	movq	%rdx, %rcx
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L457
	cmpq	$0, (%r9,%rdx,8)
	jne	.L458
	cmpq	$1, %rdx
	jne	.L429
.L434:
	leaq	24(%rdi), %rcx
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L453:
	testq	%rax, %rax
	jne	.L442
.L435:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L458:
	subq	%rcx, %rax
	movq	%rcx, %rdx
	movq	%rax, %r8
	jmp	.L434
.L457:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L455:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L417:
	leaq	.LC13(%rip), %rcx
	xorl	%edx, %edx
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
.LFB6890:
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
	je	.L460
	movq	40(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L462
	movq	48(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L463:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L462
.L466:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L463
	movzbl	%r8b, %edx
	movq	%rdi, %rcx
	call	TTF_OpenFont
	movq	48(%rsi), %rdx
	cmpq	40(%rsi), %rbx
	jnb	.L476
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L459
.L471:
	leaq	.LC15(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L462:
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
	je	.L477
	movq	40(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	40(%rsi), %rbx
	movq	48(%rsi), %rax
	addq	$-1, %rbx
	jnc	.L478
	cmpq	$0, (%rax,%rbx,8)
	je	.L471
.L459:
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L476:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L460:
	leaq	.LC14(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L478:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L477:
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
.LFB6891:
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
	jb	.L517
.L505:
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
.L517:
	movq	48(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L505
	call	TTF_CloseFont
	movq	40(%r13), %rax
	movq	48(%r13), %rcx
	cmpq	%rax, %r12
	jnb	.L518
	movq	$0, (%rcx,%r12,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L483
	cmpq	$1, %rax
	je	.L483
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L487:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L515
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L519
	cmpq	$1, %rdx
	jne	.L487
.L486:
	leaq	40(%r13), %rcx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	.p2align 4,,10
	.p2align 3
.L483:
	movq	0(%r13), %rcx
	movq	248(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L505
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L500:
	movq	256(%rcx), %rax
	leaq	0(,%rsi,8), %rdi
	cmpq	$0, (%rax,%rsi,8)
	je	.L488
	cmpq	%r8, %rsi
	jnb	.L498
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L489:
	movq	(%rax,%rdi), %rax
	cmpq	120(%rax), %rbx
	jnb	.L488
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L514
	cmpq	%r12, 104(%rdx)
	je	.L492
.L514:
	movq	256(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L489
.L498:
	movq	%rsi, %rdx
.L515:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L488:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L500
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
.L492:
	xorl	%r8d, %r8d
	movq	$0, 104(%rdx)
	movw	%r8w, 56(%rdx)
	cmpq	248(%rcx), %rsi
	jnb	.L498
	cmpq	120(%rax), %rbx
	jnb	.L516
	movq	120(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	0(%r13), %rcx
	movq	248(%rcx), %r8
	movq	256(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L498
	movq	(%rax,%rdi), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L516
	movq	(%r9,%rbp), %rdx
	addq	$1, %rbx
	movq	$0, 120(%rdx)
	jmp	.L489
.L519:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L486
.L516:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L518:
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
.LFB6892:
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
	jbe	.L521
	movl	$1, %r14d
	.p2align 4,,10
	.p2align 3
.L542:
	testq	%rbp, %rbp
	je	.L522
.L550:
	xorl	%eax, %eax
.L523:
	cmpq	%r14, (%r12,%rax,8)
	je	.L568
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L523
.L522:
	movq	(%rdi), %rcx
	movq	248(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L526
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L539:
	movq	256(%rcx), %rax
	leaq	0(,%rsi,8), %r13
	cmpq	$0, (%rax,%rsi,8)
	je	.L527
	cmpq	%r8, %rsi
	jnb	.L565
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L528:
	movq	(%rax,%r13), %rax
	cmpq	120(%rax), %rbx
	jnb	.L527
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r15
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L563
	cmpq	%r14, 104(%rdx)
	je	.L531
.L563:
	movq	256(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L528
.L565:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L527:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L539
	movq	40(%rdi), %rdx
.L526:
	movq	48(%rdi), %rax
	cmpq	%rdx, %r14
	jnb	.L567
	movq	(%rax,%r14,8), %rcx
	call	TTF_CloseFont
	movq	40(%rdi), %rdx
	movq	48(%rdi), %rax
	cmpq	%rdx, %r14
	jnb	.L567
	movq	$0, (%rax,%r14,8)
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	.L542
.L551:
	cmpq	$0, -8(%rax,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L569
.L562:
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
.L531:
	xorl	%r8d, %r8d
	movq	$0, 104(%rdx)
	movw	%r8w, 56(%rdx)
	cmpq	248(%rcx), %rsi
	jnb	.L565
	cmpq	120(%rax), %rbx
	jnb	.L566
	movq	120(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	(%rdi), %rcx
	movq	248(%rcx), %r8
	movq	256(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L565
	movq	(%rax,%r13), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L566
	movq	(%r9,%r15), %rdx
	addq	$1, %rbx
	movq	$0, 120(%rdx)
	jmp	.L528
.L568:
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	.L550
	movq	48(%rdi), %rax
	jmp	.L551
.L569:
	movq	%rdx, %r9
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L548:
	leaq	-1(%r9), %rcx
	cmpq	%rdx, %rcx
	jnb	.L570
	cmpq	$0, (%rax,%rcx,8)
	jne	.L571
	movq	%rcx, %r9
.L543:
	cmpq	$1, %r9
	jne	.L548
.L547:
	leaq	40(%rdi), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L562
.L521:
	testq	%rdx, %rdx
	jne	.L562
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L571:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L547
.L566:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L567:
	leaq	.LC7(%rip), %rcx
	movq	%r14, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L570:
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
.LFB6893:
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
	je	.L573
	movq	40(%rcx), %rdx
	movl	$1, %r13d
	cmpq	$1, %rdx
	jbe	.L621
	.p2align 4,,10
	.p2align 3
.L574:
	movq	0(%rbp), %rcx
	movq	8(%rbp), %r8
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L576
.L577:
	cmpq	(%r8,%rax,8), %r13
	je	.L578
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L577
	.p2align 4,,10
	.p2align 3
.L576:
	movq	(%rdi), %rcx
	movq	248(%rcx), %r8
	cmpq	$1, %r8
	jbe	.L580
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L593:
	movq	256(%rcx), %rax
	leaq	0(,%rsi,8), %r12
	cmpq	$0, (%rax,%rsi,8)
	je	.L581
	cmpq	%r8, %rsi
	jnb	.L618
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L582:
	movq	(%rax,%r12), %rax
	cmpq	120(%rax), %rbx
	jnb	.L581
	movq	128(%rax), %rdx
	leaq	0(,%rbx,8), %r14
	movq	(%rdx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L616
	cmpq	%r13, 104(%rdx)
	je	.L585
.L616:
	movq	256(%rcx), %rax
	addq	$1, %rbx
	cmpq	%r8, %rsi
	jb	.L582
.L618:
	leaq	.LC7(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L581:
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.L593
	movq	40(%rdi), %rdx
.L580:
	movq	48(%rdi), %rax
	cmpq	%rdx, %r13
	jnb	.L620
	movq	(%rax,%r13,8), %rcx
	call	TTF_CloseFont
	movq	40(%rdi), %rdx
	movq	48(%rdi), %rax
	cmpq	%rdx, %r13
	jnb	.L620
	movq	$0, (%rax,%r13,8)
.L578:
	addq	$1, %r13
	cmpq	%rdx, %r13
	jb	.L574
	movq	48(%rdi), %rcx
	leaq	-1(%rdx), %r8
	cmpq	$0, -8(%rcx,%rdx,8)
	je	.L622
.L615:
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
.L585:
	xorl	%r8d, %r8d
	movq	$0, 104(%rdx)
	movw	%r8w, 56(%rdx)
	cmpq	248(%rcx), %rsi
	jnb	.L618
	cmpq	120(%rax), %rbx
	jnb	.L619
	movq	120(%rdx), %rcx
	call	SDL_DestroyTexture
	movq	(%rdi), %rcx
	movq	248(%rcx), %r8
	movq	256(%rcx), %rax
	cmpq	%r8, %rsi
	jnb	.L618
	movq	(%rax,%r12), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rbx
	jnb	.L619
	movq	(%r9,%r14), %rdx
	addq	$1, %rbx
	movq	$0, 120(%rdx)
	jmp	.L582
.L622:
	movq	%rdx, %r9
	jmp	.L596
	.p2align 4,,10
	.p2align 3
.L601:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L623
	cmpq	$0, (%rcx,%rax,8)
	jne	.L624
	movq	%rax, %r9
.L596:
	cmpq	$1, %r9
	jne	.L601
.L600:
	leaq	40(%rdi), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy.isra.0
	jmp	.L615
.L621:
	testq	%rdx, %rdx
	jne	.L615
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L624:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L600
.L619:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L620:
	leaq	.LC7(%rip), %rcx
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L573:
	leaq	.LC16(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L623:
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
.LFB6894:
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
	je	.L644
	movq	%rdx, %rcx
	call	IMG_Load
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L645
	cmpl	%ebp, 16(%rax)
	jle	.L646
	cmpl	%r12d, 20(%rax)
	jle	.L629
	movq	56(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L631
	movq	64(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L636
	.p2align 4,,10
	.p2align 3
.L632:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L631
.L636:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L632
	movl	%ebp, %edx
	movl	%r12d, %r8d
	movq	%rdi, %rcx
	call	SDL_CreateColorCursor
	movq	64(%rsi), %rdx
	cmpq	56(%rsi), %rbx
	jnb	.L647
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	je	.L643
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
.L631:
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
	je	.L648
	movq	56(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	56(%rsi), %rax
	movq	64(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L649
	cmpq	$0, (%rdx,%rcx,8)
	je	.L643
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
.L647:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L629:
	leaq	.LC20(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L646:
	leaq	.LC19(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L645:
	leaq	.LC18(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L644:
	leaq	.LC17(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L643:
	leaq	.LC21(%rip), %rcx
	movl	%r12d, %r9d
	movl	%ebp, %r8d
	movq	%r13, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L649:
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L648:
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
.LFB6895:
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
	jb	.L670
.L652:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L670:
	movq	64(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L652
	call	SDL_FreeCursor
	movq	56(%rbx), %rax
	movq	64(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L671
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L655
	cmpq	$1, %rax
	je	.L655
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L659:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L672
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L673
	cmpq	$1, %rdx
	jne	.L659
.L658:
	leaq	56(%rbx), %rcx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	.p2align 4,,10
	.p2align 3
.L655:
	movq	(%rbx), %rax
	cmpq	%rsi, 232(%rax)
	jne	.L652
	movq	$0, 232(%rax)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L673:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L658
.L672:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L671:
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
.LFB6896:
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
	jbe	.L675
	movq	64(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L683:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.L677
.L676:
	cmpq	0(%rbp,%rax,8), %rbx
	je	.L678
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L676
.L677:
	movq	(%rsi), %rax
	cmpq	%rbx, 232(%rax)
	jne	.L680
	movq	$0, 232(%rax)
	movq	56(%rsi), %rdx
.L680:
	cmpq	%rdx, %rbx
	jnb	.L698
	movq	(%rcx,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rsi), %rdx
	movq	64(%rsi), %rcx
	cmpq	%rdx, %rbx
	jnb	.L698
	movq	$0, (%rcx,%rbx,8)
.L678:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L683
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L699
.L697:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L699:
	movq	%rdx, %r9
	jmp	.L684
	.p2align 4,,10
	.p2align 3
.L689:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L700
	cmpq	$0, (%rcx,%rax,8)
	jne	.L701
	movq	%rax, %r9
.L684:
	cmpq	$1, %r9
	jne	.L689
.L688:
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
.L675:
	testq	%rdx, %rdx
	jne	.L697
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L701:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L688
.L700:
	leaq	.LC7(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L698:
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
.LFB6897:
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
	je	.L703
	movq	56(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L731
	movq	64(%rcx), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L713:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	je	.L706
.L707:
	cmpq	(%r8,%rcx,8), %rbx
	je	.L708
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.L707
	.p2align 4,,10
	.p2align 3
.L706:
	movq	(%rdi), %rdx
	cmpq	%rbx, 232(%rdx)
	jne	.L710
	movq	$0, 232(%rdx)
	movq	56(%rdi), %rax
.L710:
	cmpq	%rax, %rbx
	jnb	.L730
	movq	(%r9,%rbx,8), %rcx
	call	SDL_FreeCursor
	movq	56(%rdi), %rax
	movq	64(%rdi), %r9
	cmpq	%rax, %rbx
	jnb	.L730
	movq	$0, (%r9,%rbx,8)
.L708:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L713
	cmpq	$0, -8(%r9,%rax,8)
	leaq	-1(%rax), %r8
	je	.L732
.L729:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L732:
	movq	%rax, %r10
	jmp	.L714
	.p2align 4,,10
	.p2align 3
.L719:
	leaq	-1(%r10), %rdx
	cmpq	%rax, %rdx
	jnb	.L733
	cmpq	$0, (%r9,%rdx,8)
	jne	.L734
	movq	%rdx, %r10
.L714:
	cmpq	$1, %r10
	jne	.L719
.L718:
	leaq	56(%rdi), %rcx
	movq	%r10, %rdx
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L731:
	testq	%rax, %rax
	jne	.L729
	leaq	.LC7(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L734:
	subq	%r10, %rax
	movq	%rax, %r8
	jmp	.L718
.L730:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L733:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L703:
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
	.def	TTF_OpenFont;	.scl	2;	.type	32;	.endef
	.def	TTF_CloseFont;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateColorCursor;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeCursor;	.scl	2;	.type	32;	.endef
