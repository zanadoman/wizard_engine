	.file	"SEEngine.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"SlayEngine"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"slay::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC2:
	.string	"slay::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC3:
	.string	"slay::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engineC2EPKcS2_tth
	.type	_ZN4slay6engineC2EPKcS2_tth, @function
_ZN4slay6engineC2EPKcS2_tth:
.LFB2235:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2235
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r9d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	movq	%rdi, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%ecx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.LEHB0:
	call	_ZN4slay6engine6windowC1EPS0_@PLT
	leaq	32(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	call	_ZN4slay6engine6renderC1EPS0_@PLT
.LEHE0:
	leaq	80(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB1:
	call	_ZN4slay6engine6cameraC1EPS0_@PLT
	leaq	144(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN4slay6engine5audioC1EPS0_@PLT
	leaq	160(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN4slay6engine4keysC1EPS0_@PLT
	leaq	472(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN4slay6engine5mouseC1EPS0_@PLT
	leaq	528(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN4slay6engine6actorsC1EPS0_@PLT
.LEHE1:
	leaq	552(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZN4slay6engine6vectorC1EPS0_@PLT
	leaq	560(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN4slay6engine6assetsC1EPS0_@PLT
.LEHE2:
	leaq	632(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB3:
	call	_ZN4slay6engine6timingC1EPS0_@PLT
.LEHE3:
	testq	%r13, %r13
	leaq	.LC0(%rip), %rax
	movq	$0, 672(%rbx)
	movl	$48, %edi
	movq	$0, 680(%rbx)
	cmove	%rax, %r13
.LEHB4:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L18
	call	TTF_Init@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	movzwl	%r12w, %r8d
	movzwl	%bp, %ecx
	testl	%eax, %eax
	jne	.L20
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_ZN4slay6engine6window4OpenEPKcS3_tt@PLT
	leal	-1(%rbp), %eax
	shrw	%bp
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	movw	%ax, 40(%rbx)
	leal	-1(%r12), %eax
	shrw	%r12w
	movzwl	%bp, %ebp
	movzwl	%r12w, %r12d
	negl	%ebp
	pxor	%xmm1, %xmm1
	movw	%ax, 42(%rbx)
	negl	%r12d
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%r12d, %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 88(%rbx)
	call	SDL_GetKeyboardState@PLT
	movb	%r14b, 640(%rbx)
	xorl	%edi, %edi
	movq	%rax, 168(%rbx)
	call	time@PLT
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movl	%eax, %edi
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
	jmp	srand@PLT
.L18:
	.cfi_restore_state
	movzwl	%bp, %ecx
	movzbl	%r14b, %r9d
	movzwl	%r12w, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L5:
	movl	$1, %edi
	call	exit@PLT
.L20:
	movzbl	%r14b, %r9d
	movq	%r15, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rdi
	call	printf@PLT
	jmp	.L5
.L19:
	movzwl	%bp, %ecx
	movzbl	%r14b, %r9d
	movzwl	%r12w, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
	jmp	.L5
.L15:
	movq	%rax, %rbp
	jmp	.L7
.L14:
	movq	%rax, %rbp
	jmp	.L8
.L13:
	movq	%rax, %rbx
	jmp	.L9
.L12:
	movq	%rax, %rbx
	jmp	.L10
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2235-.LLSDACSB2235
.LLSDACSB2235:
	.uleb128 .LEHB0-.LFB2235
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2235
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L12-.LFB2235
	.uleb128 0
	.uleb128 .LEHB2-.LFB2235
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L13-.LFB2235
	.uleb128 0
	.uleb128 .LEHB3-.LFB2235
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L14-.LFB2235
	.uleb128 0
	.uleb128 .LEHB4-.LFB2235
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L15-.LFB2235
	.uleb128 0
.LLSDACSE2235:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2235
	.type	_ZN4slay6engineC2EPKcS2_tth.cold, @function
_ZN4slay6engineC2EPKcS2_tth.cold:
.LFSB2235:
.L7:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	680(%rbx), %rdi
	call	free@PLT
.L8:
	movq	624(%rbx), %rdi
	call	free@PLT
	movq	608(%rbx), %rdi
	call	free@PLT
	movq	592(%rbx), %rdi
	call	free@PLT
	movq	576(%rbx), %rdi
	movq	%rbp, %rbx
	call	free@PLT
.L9:
	movq	8(%rsp), %rdi
	call	_ZN4slay6engine6actorsD1Ev@PLT
.L10:
	movq	(%rsp), %rdi
	call	_ZN4slay6engine6renderD1Ev@PLT
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE2235:
	.section	.gcc_except_table
.LLSDAC2235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2235-.LLSDACSBC2235
.LLSDACSBC2235:
	.uleb128 .LEHB5-.LCOLDB4
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2235:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engineC2EPKcS2_tth, .-_ZN4slay6engineC2EPKcS2_tth
	.section	.text.unlikely
	.size	_ZN4slay6engineC2EPKcS2_tth.cold, .-_ZN4slay6engineC2EPKcS2_tth.cold
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN4slay6engineC1EPKcS2_tth
	.set	_ZN4slay6engineC1EPKcS2_tth,_ZN4slay6engineC2EPKcS2_tth
	.align 2
	.p2align 4
	.globl	_ZN4slay6engineD2Ev
	.type	_ZN4slay6engineD2Ev, @function
_ZN4slay6engineD2Ev:
.LFB2238:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2238
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	560(%rdi), %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movq	%rbp, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE@PLT
	movq	%rbp, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	call	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE@PLT
	movq	%rbp, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	call	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	call	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE@PLT
	movq	%rbx, %rdi
	call	_ZN4slay6engine6window5CloseEv@PLT
	call	TTF_Quit@PLT
	call	SDL_CloseAudio@PLT
	call	SDL_Quit@PLT
	movq	680(%rbx), %rdi
	call	free@PLT
	movq	624(%rbx), %rdi
	call	free@PLT
	movq	608(%rbx), %rdi
	call	free@PLT
	movq	592(%rbx), %rdi
	call	free@PLT
	movq	576(%rbx), %rdi
	call	free@PLT
	leaq	528(%rbx), %rdi
	call	_ZN4slay6engine6actorsD1Ev@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	32(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZN4slay6engine6renderD1Ev@PLT
	.cfi_endproc
.LFE2238:
	.section	.gcc_except_table
.LLSDA2238:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2238-.LLSDACSB2238
.LLSDACSB2238:
.LLSDACSE2238:
	.text
	.size	_ZN4slay6engineD2Ev, .-_ZN4slay6engineD2Ev
	.globl	_ZN4slay6engineD1Ev
	.set	_ZN4slay6engineD1Ev,_ZN4slay6engineD2Ev
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine15UpdateFlipbooksEv
	.type	_ZN4slay6engine15UpdateFlipbooksEv, @function
_ZN4slay6engine15UpdateFlipbooksEv:
.LFB2241:
	.cfi_startproc
	movq	536(%rdi), %r11
	cmpq	$1, %r11
	jbe	.L43
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r8
	movl	$1, %r9d
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	544(%rdi), %rbx
	.p2align 4,,10
	.p2align 3
.L26:
	movq	(%rbx,%r9,8), %rdi
	testq	%rdi, %rdi
	je	.L38
	cmpq	536(%r8), %r9
	jnb	.L35
	movq	88(%rdi), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L36:
	cmpq	%r10, %rsi
	jnb	.L38
.L37:
	movq	96(%rdi), %rax
	movq	(%rax,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L46
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	664(%r8), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	536(%r8), %r9
	jnb	.L47
	cmpq	88(%rdi), %rsi
	jnb	.L48
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L49
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jb	.L37
.L38:
	addq	$1, %r9
	cmpq	%r11, %r9
	jne	.L26
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
.L34:
	.cfi_restore_state
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
.L46:
	movq	536(%r8), %rax
.L30:
	addq	$1, %rsi
	cmpq	%rax, %r9
	jb	.L36
.L35:
	leaq	.LC5(%rip), %rdi
	movq	%r9, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L49:
	cmpb	$0, 38(%rcx)
	je	.L34
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	536(%r8), %rax
	jmp	.L30
.L43:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
.L48:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L47:
	leaq	.LC5(%rip), %rdi
	movq	%r9, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine15UpdateFlipbooksEv, .-_ZN4slay6engine15UpdateFlipbooksEv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC7:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6UpdateEv
	.type	_ZN4slay6engine6UpdateEv, @function
_ZN4slay6engine6UpdateEv:
.LFB2240:
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$136, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	leaq	64(%rsp), %r13
	call	SDL_GetTicks@PLT
	subl	644(%rbp), %eax
	leaq	80(%rbp), %rdi
	movl	%eax, 648(%rbp)
	call	_ZN4slay6engine6camera6UpdateEv@PLT
	leaq	32(%rbp), %rdi
	call	_ZN4slay6engine6render6UpdateEv@PLT
	call	SDL_GetTicks@PLT
	subl	648(%rbp), %eax
	subl	644(%rbp), %eax
	leaq	632(%rbp), %rdi
	movl	%eax, 652(%rbp)
	call	_ZN4slay6engine6timing6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN4slay6engine15UpdateFlipbooksEv
	movq	8(%rbp), %rdi
	call	SDL_GetWindowFlags@PLT
	movl	%eax, 28(%rbp)
.L51:
	movq	%r12, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	je	.L64
.L57:
	cmpl	$256, (%rsp)
	je	.L62
	movq	680(%rbp), %rdi
	cmpq	672(%rbp), %rbx
	je	.L65
	jnb	.L66
	leaq	0(,%rbx,8), %rax
	movdqa	(%rsp), %xmm0
	subq	%rbx, %rax
	addq	$1, %rbx
	leaq	(%rdi,%rax,8), %rax
	movq	%r12, %rdi
	movups	%xmm0, (%rax)
	movdqa	16(%rsp), %xmm1
	movups	%xmm1, 16(%rax)
	movdqa	32(%rsp), %xmm2
	movups	%xmm2, 32(%rax)
	movq	48(%rsp), %rdx
	movq	%rdx, 48(%rax)
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	jne	.L57
.L64:
	movq	672(%rbp), %r12
	cmpq	%r12, %rbx
	jb	.L67
.L60:
	leaq	160(%rbp), %rdi
	call	_ZN4slay6engine4keys6UpdateEv@PLT
	leaq	472(%rbp), %rdi
	call	_ZN4slay6engine5mouse6UpdateEv@PLT
	movl	$1, %eax
.L50:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L68
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
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
.L65:
	.cfi_restore_state
	addq	$1, %rbx
	movdqa	(%rsp), %xmm3
	movq	48(%rsp), %rax
	movq	%rbx, 672(%rbp)
	leaq	0(,%rbx,8), %rsi
	movdqa	16(%rsp), %xmm4
	movdqa	32(%rsp), %xmm5
	subq	%rbx, %rsi
	movq	%rax, 112(%rsp)
	salq	$3, %rsi
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm4, 80(%rsp)
	movaps	%xmm5, 96(%rsp)
	call	realloc@PLT
	movq	%rax, 680(%rbp)
	testq	%rax, %rax
	je	.L69
	movq	672(%rbp), %rcx
	movq	%r13, %rdi
	leaq	-1(%rcx), %rdx
	leaq	0(,%rdx,8), %rcx
	subq	%rdx, %rcx
	movl	$56, %edx
	leaq	(%rax,%rcx,8), %rsi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L62:
	xorl	%eax, %eax
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L67:
	movq	%rbx, 672(%rbp)
	movq	680(%rbp), %rdi
	testq	%rbx, %rbx
	je	.L70
	leaq	0(,%rbx,8), %rsi
	subq	%rbx, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 680(%rbp)
	testq	%rax, %rax
	jne	.L60
	movq	%r12, %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	subq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L70:
	call	free@PLT
	movq	$0, 680(%rbp)
	jmp	.L60
.L66:
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L68:
	call	__stack_chk_fail@PLT
.L69:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$56, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2240:
	.size	_ZN4slay6engine6UpdateEv, .-_ZN4slay6engine6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6RandomEii
	.type	_ZN4slay6engine6RandomEii, @function
_ZN4slay6engine6RandomEii:
.LFB2242:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	rand@PLT
	movl	%ebx, %ecx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	subl	%ebp, %ecx
	cltd
	popq	%rbx
	.cfi_def_cfa_offset 16
	idivl	%ecx
	leal	(%rdx,%rbp), %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6RandomEii, .-_ZN4slay6engine6RandomEii
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
