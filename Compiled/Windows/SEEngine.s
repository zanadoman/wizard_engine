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
	.ascii "slay::engine.engine(): SDL_Init() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC2:
	.ascii "slay::engine.engine(): TTF_Init() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC3:
	.ascii "slay::engine.engine(): Mix_OpenAudio() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engineC2EPKcS2_tth
	.def	_ZN4slay6engineC2EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engineC2EPKcS2_tth
_ZN4slay6engineC2EPKcS2_tth:
.LFB8436:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	160(%rsp), %r13d
	movl	168(%rsp), %edi
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rcx, %rdx
	movq	%r8, %r15
	leaq	32(%rbx), %rbp
	movl	%r9d, %esi
.LEHB0:
	call	_ZN4slay6engine6windowC1EPS0_
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZN4slay6engine6renderC1EPS0_
.LEHE0:
	leaq	80(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB1:
	call	_ZN4slay6engine6cameraC1EPS0_
	leaq	144(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine5audioC1EPS0_
	leaq	160(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine4keysC1EPS0_
	leaq	472(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine5mouseC1EPS0_
	leaq	528(%rbx), %r12
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZN4slay6engine6actorsC1EPS0_
.LEHE1:
	leaq	552(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN4slay6engine6vectorC1EPS0_
	leaq	560(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN4slay6engine6assetsC1EPS0_
.LEHE2:
	leaq	632(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB3:
	call	_ZN4slay6engine6timingC1EPS0_
.LEHE3:
	testq	%r14, %r14
	leaq	.LC0(%rip), %rax
	movq	$0, 672(%rbx)
	movl	$48, %ecx
	movq	$0, 680(%rbx)
	cmove	%rax, %r14
.LEHB4:
	call	SDL_Init
	testl	%eax, %eax
	jne	.L18
	call	TTF_Init
	testl	%eax, %eax
	jne	.L19
	movl	$2048, %r9d
	movl	$2, %r8d
	movl	$32784, %edx
	movl	$44100, %ecx
	call	Mix_OpenAudio
	movl	%eax, %edx
	movzwl	%si, %r9d
	movzwl	%r13w, %eax
	testl	%edx, %edx
	jne	.L20
	movl	%eax, 32(%rsp)
	movq	%r15, %r8
	movq	%r14, %rdx
	movq	%rbx, %rcx
	call	_ZN4slay6engine6window4OpenEPKcS3_tt
	leal	-1(%rsi), %eax
	shrw	%si
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movw	%ax, 40(%rbx)
	leal	-1(%r13), %eax
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	movw	%ax, 42(%rbx)
	movl	%r13d, %eax
	negl	%esi
	shrw	%ax
	cvtsi2sdl	%esi, %xmm0
	movzwl	%ax, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 88(%rbx)
	call	SDL_GetKeyboardState
	movq	%rax, 168(%rbx)
	xorl	%ecx, %ecx
	movb	%dil, 640(%rbx)
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	srand
.L18:
	movzbl	%dil, %edi
	movzwl	%r13w, %eax
	movzwl	%si, %r9d
	movq	%r15, %r8
	movl	%edi, 40(%rsp)
	movq	%r14, %rdx
	leaq	.LC1(%rip), %rcx
	movl	%eax, 32(%rsp)
	call	_Z6printfPKcz
.L7:
	movl	$1, %ecx
	call	exit
.L20:
	movzbl	%dil, %edi
	movl	%eax, 32(%rsp)
	movq	%r15, %r8
	movq	%r14, %rdx
	movl	%edi, 40(%rsp)
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L7
.L19:
	movzbl	%dil, %edi
	movzwl	%r13w, %eax
	movzwl	%si, %r9d
	movq	%r15, %r8
	movl	%edi, 40(%rsp)
	movq	%r14, %rdx
	leaq	.LC2(%rip), %rcx
	movl	%eax, 32(%rsp)
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
	.def	_ZN4slay6engineC2EPKcS2_tth.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engineC2EPKcS2_tth.cold
	.seh_stackalloc	120
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_savereg	%rdi, 72
	.seh_savereg	%rbp, 80
	.seh_savereg	%r12, 88
	.seh_savereg	%r13, 96
	.seh_savereg	%r14, 104
	.seh_savereg	%r15, 112
	.seh_endprologue
_ZN4slay6engineC2EPKcS2_tth.cold:
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
	movq	%r12, %rcx
	call	_ZN4slay6engine6actorsD1Ev
.L12:
	movq	%rbp, %rcx
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
	.globl	_ZN4slay6engineC1EPKcS2_tth
	.def	_ZN4slay6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engineC1EPKcS2_tth,_ZN4slay6engineC2EPKcS2_tth
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
	call	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
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
	movq	536(%rcx), %rsi
	movq	%rcx, %r10
	cmpq	$1, %rsi
	jbe	.L40
	movq	544(%rcx), %rdi
	movl	$1, %r11d
	.p2align 4,,10
	.p2align 3
.L25:
	movq	(%rdi,%r11,8), %r9
	testq	%r9, %r9
	je	.L37
	cmpq	536(%r10), %r11
	jnb	.L42
	movq	88(%r9), %rbx
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L35:
	cmpq	%rbx, %r8
	jnb	.L37
.L36:
	movq	96(%r9), %rax
	movq	(%rax,%r8,8), %rcx
	testq	%rcx, %rcx
	je	.L41
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	664(%r10), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	536(%r10), %r11
	jnb	.L42
	cmpq	88(%r9), %r8
	jnb	.L43
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L44
	addq	$1, %r8
	cmpq	%rbx, %r8
	jb	.L36
.L37:
	addq	$1, %r11
	cmpq	%rsi, %r11
	jne	.L25
.L40:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
.L41:
	movq	536(%r10), %rax
.L29:
	addq	$1, %r8
	cmpq	%rax, %r11
	jb	.L35
.L42:
	leaq	.LC5(%rip), %rcx
	movq	%r11, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L44:
	cmpb	$0, 38(%rcx)
	je	.L33
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	536(%r10), %rax
	jmp	.L29
.L43:
	leaq	.LC5(%rip), %rcx
	movq	%r8, %rdx
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
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movq	%rcx, %rsi
	leaq	32(%rsp), %rbp
	leaq	96(%rsp), %r12
	call	SDL_GetTicks
	subl	644(%rsi), %eax
	leaq	80(%rsi), %rcx
	movl	%eax, 648(%rsi)
	call	_ZN4slay6engine6camera6UpdateEv
	leaq	32(%rsi), %rcx
	call	_ZN4slay6engine6render6UpdateEv
	call	SDL_GetTicks
	subl	648(%rsi), %eax
	subl	644(%rsi), %eax
	leaq	632(%rsi), %rcx
	movl	%eax, 652(%rsi)
	call	_ZN4slay6engine6timing6UpdateEv
	movq	%rsi, %rcx
	call	_ZN4slay6engine15UpdateFlipbooksEv
	movq	8(%rsi), %rcx
	call	SDL_GetWindowFlags
	movl	%eax, 28(%rsi)
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L48:
	jnb	.L57
	movdqa	32(%rsp), %xmm0
	addq	$1, %rbx
	movups	%xmm0, (%rcx,%rdi)
	movdqa	48(%rsp), %xmm1
	movups	%xmm1, 16(%rcx,%rdi)
	movdqa	64(%rsp), %xmm2
	movups	%xmm2, 32(%rcx,%rdi)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rcx,%rdi)
.L50:
	addq	$56, %rdi
.L46:
	movq	%rbp, %rcx
	call	SDL_PollEvent
	testl	%eax, %eax
	je	.L58
	cmpl	$256, 32(%rsp)
	je	.L56
	movq	680(%rsi), %rcx
	cmpq	672(%rsi), %rbx
	jne	.L48
	addq	$1, %rbx
	movdqa	32(%rsp), %xmm3
	movq	80(%rsp), %rax
	movq	%rbx, 672(%rsi)
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
	movq	%rax, 680(%rsi)
	testq	%rax, %rax
	je	.L59
	movq	672(%rsi), %rdx
	movl	$56, %r8d
	subq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	subq	%rdx, %rcx
	leaq	(%rax,%rcx,8), %rdx
	movq	%r12, %rcx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L58:
	movq	672(%rsi), %rdi
	cmpq	%rdi, %rbx
	jb	.L60
.L55:
	leaq	160(%rsi), %rcx
	call	_ZN4slay6engine4keys6UpdateEv
	leaq	472(%rsi), %rcx
	call	_ZN4slay6engine5mouse6UpdateEv
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
.L56:
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
.L60:
	movq	%rbx, 672(%rsi)
	movq	680(%rsi), %rcx
	testq	%rbx, %rbx
	je	.L61
	leaq	0(,%rbx,8), %rdx
	subq	%rbx, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 680(%rsi)
	testq	%rax, %rax
	jne	.L55
	subq	%rbx, %rdi
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	movq	%rdi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L61:
	call	free
	movq	$0, 680(%rsi)
	jmp	.L55
.L57:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L59:
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
	.def	_ZN4slay6engine6windowC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6renderC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine5audioC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine4keysC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine5mouseC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actorsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vectorC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assetsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timingC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	TTF_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6window4OpenEPKcS3_tt;	.scl	2;	.type	32;	.endef
	.def	SDL_GetKeyboardState;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6renderD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6window5CloseEv;	.scl	2;	.type	32;	.endef
	.def	TTF_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_CloseAudio;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_GetTicks;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6render6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timing6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	SDL_GetWindowFlags;	.scl	2;	.type	32;	.endef
	.def	SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine4keys6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine5mouse6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
