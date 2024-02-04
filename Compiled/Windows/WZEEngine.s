	.file	"WZEEngine.cpp"
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
	.ascii "Wizard Engine\0"
	.align 8
.LC1:
	.ascii "wze::engine.engine(): SDL_Init() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC2:
	.ascii "wze::engine.engine(): TTF_Init() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC3:
	.ascii "wze::engine.engine(): Mix_OpenAudio() failed\12Params: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.def	_ZN3wze6engineC2EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth
_ZN3wze6engineC2EPKcS2_tth:
.LFB8442:
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
	movl	144(%rsp), %r12d
	movl	152(%rsp), %edi
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rcx, %rdx
	movq	%r8, %r14
	movl	%r9d, %esi
.LEHB0:
	call	_ZN3wze6engine6windowC1EPS0_
	leaq	32(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine6renderC1EPS0_
.LEHE0:
	leaq	80(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB1:
	call	_ZN3wze6engine6cameraC1EPS0_
	leaq	144(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine5audioC1EPS0_
	leaq	160(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine4keysC1EPS0_
	leaq	472(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine5mouseC1EPS0_
	leaq	528(%rbx), %rbp
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	call	_ZN3wze6engine6actorsC1EPS0_
.LEHE1:
	leaq	552(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN3wze6engine9collisionC1EPS0_
.LEHE2:
	leaq	576(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB3:
	call	_ZN3wze6engine6vectorC1EPS0_
.LEHE3:
	leaq	584(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB4:
	call	_ZN3wze6engine6assetsC1EPS0_
.LEHE4:
	leaq	656(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB5:
	call	_ZN3wze6engine6timingC1EPS0_
.LEHE5:
	testq	%r13, %r13
	leaq	.LC0(%rip), %rax
	movq	$0, 696(%rbx)
	movl	$48, %ecx
	movq	$0, 704(%rbx)
	cmove	%rax, %r13
.LEHB6:
	call	SDL_Init
	testl	%eax, %eax
	jne	.L27
	call	TTF_Init
	testl	%eax, %eax
	jne	.L28
	movl	$2048, %r9d
	movl	$2, %r8d
	movl	$32784, %edx
	movl	$44100, %ecx
	call	Mix_OpenAudio
	movl	%eax, %edx
	movzwl	%si, %r9d
	movzwl	%r12w, %eax
	testl	%edx, %edx
	jne	.L29
	movl	%eax, 32(%rsp)
	movq	%r14, %r8
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine6window4OpenEPKcS3_tt
	leal	-1(%rsi), %eax
	shrw	%si
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movw	%ax, 40(%rbx)
	leal	-1(%r12), %eax
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	movw	%ax, 42(%rbx)
	movl	%r12d, %eax
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
	movb	%dil, 664(%rbx)
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	jmp	srand
.L27:
	movzbl	%dil, %edi
	movzwl	%r12w, %eax
	movzwl	%si, %r9d
	movq	%r14, %r8
	movl	%edi, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC1(%rip), %rcx
	movl	%eax, 32(%rsp)
	call	_Z6printfPKcz
.L10:
	movl	$1, %ecx
	call	exit
.L29:
	movzbl	%dil, %edi
	movl	%eax, 32(%rsp)
	movq	%r14, %r8
	movq	%r13, %rdx
	movl	%edi, 40(%rsp)
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L10
.L28:
	movzbl	%dil, %edi
	movzwl	%r12w, %eax
	movzwl	%si, %r9d
	movq	%r14, %r8
	movl	%edi, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC2(%rip), %rcx
	movl	%eax, 32(%rsp)
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L10
.L21:
	movq	%rax, %rsi
	jmp	.L17
.L20:
	movq	%rax, %rsi
	jmp	.L18
.L23:
	movq	%rax, %rsi
	jmp	.L12
.L22:
	movq	%rax, %rsi
	jmp	.L13
.L25:
	movq	%rax, %rsi
	jmp	.L15
.L24:
	movq	%rax, %rsi
	jmp	.L15
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8442:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8442-.LLSDACSB8442
.LLSDACSB8442:
	.uleb128 .LEHB0-.LFB8442
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8442
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB8442
	.uleb128 0
	.uleb128 .LEHB2-.LFB8442
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L21-.LFB8442
	.uleb128 0
	.uleb128 .LEHB3-.LFB8442
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L24-.LFB8442
	.uleb128 0
	.uleb128 .LEHB4-.LFB8442
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L25-.LFB8442
	.uleb128 0
	.uleb128 .LEHB5-.LFB8442
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L22-.LFB8442
	.uleb128 0
	.uleb128 .LEHB6-.LFB8442
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L23-.LFB8442
	.uleb128 0
.LLSDACSE8442:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engineC2EPKcS2_tth.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 48
	.seh_savereg	%rsi, 56
	.seh_savereg	%rdi, 64
	.seh_savereg	%rbp, 72
	.seh_savereg	%r12, 80
	.seh_savereg	%r13, 88
	.seh_savereg	%r14, 96
	.seh_endprologue
_ZN3wze6engineC2EPKcS2_tth.cold:
.L12:
	movq	704(%rbx), %rcx
	call	free
.L13:
	movq	648(%rbx), %rcx
	xorl	%edi, %edi
	call	free
	movq	632(%rbx), %rcx
	call	free
	movq	616(%rbx), %rcx
	call	free
	movq	600(%rbx), %rcx
	call	free
.L14:
	movq	568(%rbx), %rcx
	cmpq	560(%rbx), %rdi
	jb	.L16
	call	free
.L17:
	movq	%rbp, %rcx
	call	_ZN3wze6engine6actorsD1Ev
.L18:
	movq	72(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L15:
	xorl	%edi, %edi
	jmp	.L14
.L16:
	movq	%rdi, %rax
	addq	$1, %rdi
	salq	$4, %rax
	movq	8(%rcx,%rax), %rcx
	call	free
	jmp	.L14
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8442:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8442-.LLSDACSBC8442
.LLSDACSBC8442:
	.uleb128 .LEHB7-.LCOLDB4
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8442:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.def	_ZN3wze6engineD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineD2Ev
_ZN3wze6engineD2Ev:
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
	leaq	584(%rcx), %rbx
	leaq	32(%rsp), %rdi
	movq	%rcx, %rsi
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE
	movq	%rsi, %rcx
	call	_ZN3wze6engine6window5CloseEv
	call	TTF_Quit
	call	SDL_CloseAudio
	call	SDL_Quit
	movq	704(%rsi), %rcx
	call	free
	movq	648(%rsi), %rcx
	call	free
	movq	632(%rsi), %rcx
	call	free
	movq	616(%rsi), %rcx
	call	free
	movq	600(%rsi), %rcx
	call	free
	cmpq	$0, 560(%rsi)
	je	.L31
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L32:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	568(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	560(%rsi), %rbx
	jb	.L32
.L31:
	movq	568(%rsi), %rcx
	call	free
	leaq	528(%rsi), %rcx
	call	_ZN3wze6engine6actorsD1Ev
	movq	72(%rsi), %rcx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8445:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8445-.LLSDACSB8445
.LLSDACSB8445:
.LLSDACSE8445:
	.text
	.seh_endproc
	.globl	_ZN3wze6engineD1Ev
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine15UpdateFlipbooksEv
	.def	_ZN3wze6engine15UpdateFlipbooksEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine15UpdateFlipbooksEv
_ZN3wze6engine15UpdateFlipbooksEv:
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
	movq	536(%rcx), %rsi
	movq	%rcx, %r10
	cmpq	$1, %rsi
	jbe	.L52
	movq	544(%rcx), %rdi
	movl	$1, %r11d
	.p2align 4,,10
	.p2align 3
.L37:
	movq	(%rdi,%r11,8), %r9
	testq	%r9, %r9
	je	.L49
	cmpq	536(%r10), %r11
	jnb	.L54
	movq	88(%r9), %rbx
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L47:
	cmpq	%rbx, %r8
	jnb	.L49
.L48:
	movq	96(%r9), %rax
	movq	(%rax,%r8,8), %rcx
	testq	%rcx, %rcx
	je	.L53
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	688(%r10), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	536(%r10), %r11
	jnb	.L54
	cmpq	88(%r9), %r8
	jnb	.L55
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L56
	addq	$1, %r8
	cmpq	%rbx, %r8
	jb	.L48
.L49:
	addq	$1, %r11
	cmpq	%rsi, %r11
	jne	.L37
.L52:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
.L53:
	movq	536(%r10), %rax
.L41:
	addq	$1, %r8
	cmpq	%rax, %r11
	jb	.L47
.L54:
	leaq	.LC5(%rip), %rcx
	movq	%r11, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L56:
	cmpb	$0, 38(%rcx)
	je	.L45
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	536(%r10), %rax
	jmp	.L41
.L55:
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
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC7:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6UpdateEv
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6UpdateEv
_ZN3wze6engine6UpdateEv:
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
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	%rcx, %rbx
	leaq	32(%rsp), %rbp
	call	SDL_GetTicks
	subl	668(%rbx), %eax
	leaq	80(%rbx), %rcx
	movl	%eax, 672(%rbx)
	call	_ZN3wze6engine6camera6UpdateEv
	leaq	32(%rbx), %rcx
	call	_ZN3wze6engine6render6UpdateEv
	call	SDL_GetTicks
	subl	672(%rbx), %eax
	subl	668(%rbx), %eax
	leaq	656(%rbx), %rcx
	movl	%eax, 676(%rbx)
	call	_ZN3wze6engine6timing6UpdateEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbx), %rcx
	call	SDL_GetWindowFlags
	movl	%eax, 28(%rbx)
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L60:
	cmpq	%rax, %rdi
	jnb	.L72
	movdqa	32(%rsp), %xmm3
	addq	$1, %rdi
	movups	%xmm3, (%rcx,%rsi)
	movdqa	48(%rsp), %xmm4
	movups	%xmm4, 16(%rcx,%rsi)
	movdqa	64(%rsp), %xmm5
	movups	%xmm5, 32(%rcx,%rsi)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rcx,%rsi)
	addq	$56, %rsi
.L58:
	movq	%rbp, %rcx
	call	SDL_PollEvent
	testl	%eax, %eax
	je	.L73
	cmpl	$256, 32(%rsp)
	je	.L70
	movq	696(%rbx), %rax
	movq	704(%rbx), %rcx
	cmpq	%rax, %rdi
	jne	.L60
	leaq	11(%rdi), %r12
	movq	%r12, 696(%rbx)
	leaq	0(,%r12,8), %rdx
	subq	%r12, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 704(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L74
	movq	696(%rbx), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r12, %rdx
	jb	.L60
	leaq	0(,%rdx,8), %r8
	leaq	-12(%rax), %r9
	subq	%rdx, %r8
	leaq	(%rcx,%r8,8), %rdx
	leaq	0(,%r9,8), %r8
	subq	%r9, %r8
	leaq	(%rcx,%r8,8), %rcx
	movdqu	(%rcx), %xmm3
	movups	%xmm3, (%rdx)
	movdqu	16(%rcx), %xmm4
	movups	%xmm4, 16(%rdx)
	movdqu	32(%rcx), %xmm5
	movups	%xmm5, 32(%rdx)
	movq	48(%rcx), %rcx
	movq	%rcx, 48(%rdx)
	leaq	-2(%rax), %rcx
	cmpq	%r12, %rcx
	jb	.L64
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L63:
	movq	704(%rbx), %rdx
	subq	$1, %rcx
	movdqu	(%rdx,%rax), %xmm0
	movdqu	16(%rdx,%rax), %xmm1
	movdqu	32(%rdx,%rax), %xmm2
	movq	48(%rdx,%rax), %r8
	movups	%xmm0, 616(%rdx,%rax)
	movq	%r8, 664(%rdx,%rax)
	movups	%xmm1, 632(%rdx,%rax)
	movups	%xmm2, 648(%rdx,%rax)
	subq	$56, %rax
	cmpq	%r12, %rcx
	jnb	.L63
.L64:
	movq	696(%rbx), %rax
	movq	704(%rbx), %rcx
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L73:
	movq	696(%rbx), %rsi
	cmpq	%rsi, %rdi
	jb	.L75
.L69:
	leaq	160(%rbx), %rcx
	call	_ZN3wze6engine4keys6UpdateEv
	leaq	472(%rbx), %rcx
	call	_ZN3wze6engine5mouse6UpdateEv
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	movq	%rdi, 696(%rbx)
	movq	704(%rbx), %rcx
	testq	%rdi, %rdi
	je	.L76
	leaq	0(,%rdi,8), %rdx
	subq	%rdi, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 704(%rbx)
	testq	%rax, %rax
	jne	.L69
	subq	%rdi, %rsi
	leaq	.LC7(%rip), %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L76:
	call	free
	movq	$0, 704(%rbx)
	jmp	.L69
.L72:
	leaq	.LC5(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L74:
	leaq	.LC6(%rip), %rcx
	movl	$11, %r8d
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.def	_ZN3wze6engine6RandomEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6RandomEii
_ZN3wze6engine6RandomEii:
.LFB8449:
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
	.def	_ZN3wze6engine6windowC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6renderC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5audioC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouseC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collisionC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vectorC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assetsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timingC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	TTF_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window4OpenEPKcS3_tt;	.scl	2;	.type	32;	.endef
	.def	SDL_GetKeyboardState;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window5CloseEv;	.scl	2;	.type	32;	.endef
	.def	TTF_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_CloseAudio;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_GetTicks;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6render6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	SDL_GetWindowFlags;	.scl	2;	.type	32;	.endef
	.def	SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keys6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
