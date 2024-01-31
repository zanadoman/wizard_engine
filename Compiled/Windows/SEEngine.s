	.file	"SEEngine.cpp"
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
.LC0:
	.ascii "SlayEngine\0"
	.align 8
.LC1:
	.ascii "slay::engine.engine(): SDL_Init() failed\12Params: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC2:
	.ascii "slay::engine.engine(): TTF_Init() failed\12Params: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC3:
	.ascii "slay::engine.engine(): Mix_OpenAudio() failed\12Params: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engineC2EPKctth
	.def	_ZN4slay6engineC2EPKctth;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engineC2EPKctth
_ZN4slay6engineC2EPKctth:
.LFB8436:
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
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	144(%rsp), %esi
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rcx, %rdx
	movl	%r8d, %r14d
	leaq	32(%rbx), %rdi
	movl	%r9d, %r13d
.LEHB0:
	call	_ZN4slay6engine6windowC1ERS0_
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN4slay6engine6renderC1ERS0_
.LEHE0:
	leaq	80(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB1:
	call	_ZN4slay6engine6cameraC1ERS0_
	leaq	144(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine5audioC1ERS0_
	leaq	160(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine4keysC1ERS0_
	leaq	472(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine5mouseC1ERS0_
	leaq	528(%rbx), %rbp
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZN4slay6engine6actorsC1ERS0_
.LEHE1:
	leaq	552(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN4slay6engine6vectorC1ERS0_
	leaq	560(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine6assetsC1ERS0_
.LEHE2:
	leaq	632(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB3:
	call	_ZN4slay6engine6timingC1ERS0_
.LEHE3:
	testq	%r12, %r12
	leaq	.LC0(%rip), %rax
	movq	$0, 672(%rbx)
	movl	$48, %ecx
	movq	$0, 680(%rbx)
	cmove	%rax, %r12
.LEHB4:
	call	SDL_Init
	testl	%eax, %eax
	jne	.L19
	call	TTF_Init
	testl	%eax, %eax
	jne	.L20
	movl	$2048, %r9d
	movl	$2, %r8d
	movl	$32784, %edx
	movl	$44100, %ecx
	call	Mix_OpenAudio
	testl	%eax, %eax
	jne	.L21
	xorl	%ecx, %ecx
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	call	srand
	movzwl	%r13w, %r9d
	movzwl	%r14w, %r8d
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZN4slay6engine6window4OpenEPKctt
	movzwl	24(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	subl	$1, %r14d
	subl	$1, %r13d
	movw	%r14w, 40(%rbx)
	xorl	%ecx, %ecx
	shrw	%ax
	movw	%r13w, 42(%rbx)
	movzwl	%ax, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	26(%rbx), %eax
	shrw	%ax
	movzwl	%ax, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 88(%rbx)
	call	SDL_GetKeyboardState
	movq	%rax, 168(%rbx)
	movb	%sil, 640(%rbx)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L19:
	movzbl	%sil, %esi
	movzwl	%r13w, %r9d
	movzwl	%r14w, %r8d
	movq	%r12, %rdx
	movl	%esi, 32(%rsp)
	leaq	.LC1(%rip), %rcx
	call	_Z6printfPKcz
.L7:
	movl	$1, %ecx
	call	exit
.L21:
	movzbl	%sil, %esi
	movzwl	%r13w, %r9d
	movzwl	%r14w, %r8d
	movq	%r12, %rdx
	movl	%esi, 32(%rsp)
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L7
.L20:
	movzbl	%sil, %esi
	movzwl	%r13w, %r9d
	movzwl	%r14w, %r8d
	movq	%r12, %rdx
	movl	%esi, 32(%rsp)
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L7
.L17:
	movq	%rax, %rsi
	jmp	.L9
.L16:
	movq	%rax, %rsi
	jmp	.L10
.L15:
	movq	%rax, %rbx
	jmp	.L11
.L14:
	movq	%rax, %rbx
	jmp	.L12
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8436-.LLSDACSB8436
.LLSDACSB8436:
	.uleb128 .LEHB0-.LFB8436
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8436
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L14-.LFB8436
	.uleb128 0
	.uleb128 .LEHB2-.LFB8436
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB8436
	.uleb128 0
	.uleb128 .LEHB3-.LFB8436
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L16-.LFB8436
	.uleb128 0
	.uleb128 .LEHB4-.LFB8436
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L17-.LFB8436
	.uleb128 0
.LLSDACSE8436:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engineC2EPKctth.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engineC2EPKctth.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 48
	.seh_savereg	%rsi, 56
	.seh_savereg	%rdi, 64
	.seh_savereg	%rbp, 72
	.seh_savereg	%r12, 80
	.seh_savereg	%r13, 88
	.seh_savereg	%r14, 96
	.seh_endprologue
_ZN4slay6engineC2EPKctth.cold:
.L9:
	movq	680(%rbx), %rcx
	call	free
.L10:
	movq	624(%rbx), %rcx
	call	free
	movq	608(%rbx), %rcx
	call	free
	movq	592(%rbx), %rcx
	call	free
	movq	576(%rbx), %rcx
	movq	%rsi, %rbx
	call	free
.L11:
	movq	%rbp, %rcx
	call	_ZN4slay6engine6actorsD1Ev
.L12:
	movq	%rdi, %rcx
	call	_ZN4slay6engine6renderD1Ev
	movq	%rbx, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8436-.LLSDACSBC8436
.LLSDACSBC8436:
	.uleb128 .LEHB5-.LCOLDB4
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8436:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN4slay6engineC1EPKctth
	.def	_ZN4slay6engineC1EPKctth;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engineC1EPKctth,_ZN4slay6engineC2EPKctth
	.align 2
	.p2align 4
	.globl	_ZN4slay6engineD2Ev
	.def	_ZN4slay6engineD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engineD2Ev
_ZN4slay6engineD2Ev:
.LFB8439:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	560(%rcx), %rsi
	leaq	32(%rsp), %rdi
	movq	%rcx, %rbx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE
	movq	%rbx, %rcx
	call	_ZN4slay6engine6window5CloseEv
	call	TTF_Quit
	call	SDL_CloseAudio
	call	SDL_Quit
	movq	680(%rbx), %rcx
	call	free
	movq	624(%rbx), %rcx
	call	free
	movq	608(%rbx), %rcx
	call	free
	movq	592(%rbx), %rcx
	call	free
	movq	576(%rbx), %rcx
	call	free
	leaq	528(%rbx), %rcx
	call	_ZN4slay6engine6actorsD1Ev
	leaq	32(%rbx), %rcx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN4slay6engine6renderD1Ev
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8439:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8439-.LLSDACSB8439
.LLSDACSB8439:
.LLSDACSE8439:
	.text
	.seh_endproc
	.globl	_ZN4slay6engineD1Ev
	.def	_ZN4slay6engineD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engineD1Ev,_ZN4slay6engineD2Ev
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine15UpdateFlipbooksEv
	.def	_ZN4slay6engine15UpdateFlipbooksEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine15UpdateFlipbooksEv
_ZN4slay6engine15UpdateFlipbooksEv:
.LFB8442:
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
	movq	536(%rcx), %rdi
	movq	%rcx, %r11
	cmpq	$1, %rdi
	jbe	.L41
	movq	544(%rcx), %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L26:
	movq	0(%rbp,%rbx,8), %r10
	testq	%r10, %r10
	je	.L38
	cmpq	536(%r11), %rbx
	jnb	.L43
	movq	88(%r10), %rsi
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L36:
	cmpq	%rsi, %r9
	jnb	.L38
.L37:
	movq	96(%r10), %rax
	movq	(%rax,%r9,8), %r8
	testq	%r8, %r8
	je	.L42
	movl	80(%r8), %eax
	xorl	%edx, %edx
	addl	664(%r11), %eax
	divl	44(%r8)
	addq	72(%r8), %rax
	movq	%rax, 72(%r8)
	movq	%rax, %rcx
	cmpq	536(%r11), %rbx
	jnb	.L43
	cmpq	88(%r10), %r9
	jnb	.L44
	movq	88(%r8), %rax
	movl	%edx, 80(%r8)
	cmpq	%rax, %rcx
	jnb	.L45
	addq	$1, %r9
	cmpq	%rsi, %r9
	jb	.L37
.L38:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jne	.L26
.L41:
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
.L34:
	subq	$1, %rax
	movq	%rax, 72(%r8)
.L42:
	movq	536(%r11), %rax
.L30:
	addq	$1, %r9
	cmpq	%rax, %rbx
	jb	.L36
.L43:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L45:
	cmpb	$0, 34(%r8)
	je	.L34
	leaq	1(%rcx), %r12
	xorl	%edx, %edx
	divq	%r12
	subq	%rdx, %rcx
	movq	%rcx, 72(%r8)
	movq	536(%r11), %rax
	jmp	.L30
.L44:
	leaq	.LC5(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC7:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6UpdateEv
	.def	_ZN4slay6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6UpdateEv
_ZN4slay6engine6UpdateEv:
.LFB8441:
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
	subq	$160, %rsp
	.seh_stackalloc	160
	.seh_endprologue
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movq	%rcx, %rdi
	leaq	32(%rsp), %rbp
	leaq	96(%rsp), %r12
	call	SDL_GetTicks
	subl	644(%rdi), %eax
	leaq	80(%rdi), %rcx
	movl	%eax, 648(%rdi)
	call	_ZN4slay6engine6camera6UpdateEv
	leaq	32(%rdi), %rcx
	call	_ZN4slay6engine6render6UpdateEv
	call	SDL_GetTicks
	subl	648(%rdi), %eax
	subl	644(%rdi), %eax
	movl	%eax, 652(%rdi)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L49:
	jnb	.L58
	movdqa	32(%rsp), %xmm0
	addq	$1, %rbx
	movups	%xmm0, (%rcx,%rsi)
	movdqa	48(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rsi)
	movdqa	64(%rsp), %xmm2
	movups	%xmm2, 32(%rcx,%rsi)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rcx,%rsi)
.L51:
	addq	$56, %rsi
.L47:
	movq	%rbp, %rcx
	call	SDL_PollEvent
	testl	%eax, %eax
	je	.L59
	cmpl	$256, 32(%rsp)
	je	.L57
	movq	680(%rdi), %rcx
	cmpq	672(%rdi), %rbx
	jne	.L49
	addq	$1, %rbx
	movdqa	32(%rsp), %xmm3
	movq	80(%rsp), %rax
	movq	%rbx, 672(%rdi)
	leaq	0(,%rbx,8), %rdx
	movdqa	48(%rsp), %xmm4
	movdqa	64(%rsp), %xmm5
	subq	%rbx, %rdx
	movaps	%xmm3, 96(%rsp)
	salq	$3, %rdx
	movq	%rax, 144(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	call	realloc
	movq	%rax, 680(%rdi)
	testq	%rax, %rax
	je	.L60
	movq	672(%rdi), %rdx
	movl	$56, %r8d
	subq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	subq	%rdx, %rcx
	leaq	(%rax,%rcx,8), %rdx
	movq	%r12, %rcx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L59:
	movq	672(%rdi), %rsi
	cmpq	%rsi, %rbx
	jb	.L61
.L56:
	leaq	160(%rdi), %rcx
	call	_ZN4slay6engine4keys6UpdateEv
	leaq	472(%rdi), %rcx
	call	_ZN4slay6engine5mouse6UpdateEv
	leaq	632(%rdi), %rcx
	call	_ZN4slay6engine6timing6UpdateEv
	movq	%rdi, %rcx
	call	_ZN4slay6engine15UpdateFlipbooksEv
	movl	$1, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	movq	%rbx, 672(%rdi)
	movq	680(%rdi), %rcx
	testq	%rbx, %rbx
	je	.L62
	leaq	0(,%rbx,8), %rdx
	subq	%rbx, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 680(%rdi)
	testq	%rax, %rax
	jne	.L56
	subq	%rbx, %rsi
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L62:
	call	free
	movq	$0, 680(%rdi)
	jmp	.L56
.L58:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L60:
	leaq	.LC6(%rip), %rcx
	movl	$1, %r8d
	movl	$56, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6RandomEii
	.def	_ZN4slay6engine6RandomEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6RandomEii
_ZN4slay6engine6RandomEii:
.LFB8443:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %esi
	movl	%r8d, %ebx
	call	rand
	subl	%esi, %ebx
	cltd
	idivl	%ebx
	leal	(%rdx,%rsi), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6windowC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6renderC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6cameraC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine5audioC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine4keysC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine5mouseC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actorsC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vectorC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assetsC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timingC1ERS0_;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	TTF_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6window4OpenEPKctt;	.scl	2;	.type	32;	.endef
	.def	SDL_GetKeyboardState;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6renderD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6window5CloseEv;	.scl	2;	.type	32;	.endef
	.def	TTF_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_CloseAudio;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_GetTicks;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6render6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine4keys6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine5mouse6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timing6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
