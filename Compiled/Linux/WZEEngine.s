	.file	"WZEEngine.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Wizard Engine"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"wze::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC2:
	.string	"wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC3:
	.string	"wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.type	_ZN3wze6engineC2EPKcS2_tth, @function
_ZN3wze6engineC2EPKcS2_tth:
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
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
	call	_ZN3wze6engine6windowC1EPS0_@PLT
	leaq	32(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine6renderC1EPS0_@PLT
.LEHE0:
	leaq	80(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB1:
	call	_ZN3wze6engine6cameraC1EPS0_@PLT
	leaq	248(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine5audioC1EPS0_@PLT
	leaq	264(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine4keysC1EPS0_@PLT
	leaq	576(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine5mouseC1EPS0_@PLT
	leaq	632(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN3wze6engine6actorsC1EPS0_@PLT
.LEHE1:
	leaq	656(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZN3wze6engine9collisionC1EPS0_@PLT
.LEHE2:
	leaq	688(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB3:
	call	_ZN3wze6engine6vectorC1EPS0_@PLT
.LEHE3:
	leaq	696(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB4:
	call	_ZN3wze6engine6assetsC1EPS0_@PLT
.LEHE4:
	leaq	768(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB5:
	call	_ZN3wze6engine6timingC1EPS0_@PLT
.LEHE5:
	testq	%r13, %r13
	leaq	.LC0(%rip), %rax
	movq	$0, 808(%rbx)
	movl	$48, %edi
	movq	$0, 816(%rbx)
	cmove	%rax, %r13
.LEHB6:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L27
	call	TTF_Init@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	movzwl	%r12w, %r8d
	movzwl	%bp, %ecx
	testl	%eax, %eax
	jne	.L29
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_ZN3wze6engine6window4OpenEPKcS3_tt@PLT
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
	movb	%r14b, 776(%rbx)
	xorl	%edi, %edi
	movq	%rax, 272(%rbx)
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
.L27:
	.cfi_restore_state
	movzwl	%bp, %ecx
	movzbl	%r14b, %r9d
	movzwl	%r12w, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L8:
	movl	$1, %edi
	call	exit@PLT
.L29:
	movzbl	%r14b, %r9d
	movq	%r15, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rdi
	call	printf@PLT
	jmp	.L8
.L28:
	movzwl	%bp, %ecx
	movzbl	%r14b, %r9d
	movzwl	%r12w, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	jmp	.L8
.L19:
	movq	%rax, %rbp
	jmp	.L15
.L18:
	movq	%rax, %rbp
	jmp	.L16
.L21:
	movq	%rax, %rbp
	jmp	.L10
.L20:
	movq	%rax, %rbp
	jmp	.L11
.L23:
	movq	%rax, %rbp
	jmp	.L13
.L22:
	movq	%rax, %rbp
	jmp	.L13
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB0-.LFB8156
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8156
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L18-.LFB8156
	.uleb128 0
	.uleb128 .LEHB2-.LFB8156
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L19-.LFB8156
	.uleb128 0
	.uleb128 .LEHB3-.LFB8156
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L22-.LFB8156
	.uleb128 0
	.uleb128 .LEHB4-.LFB8156
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L23-.LFB8156
	.uleb128 0
	.uleb128 .LEHB5-.LFB8156
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L20-.LFB8156
	.uleb128 0
	.uleb128 .LEHB6-.LFB8156
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L21-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	_ZN3wze6engineC2EPKcS2_tth.cold, @function
_ZN3wze6engineC2EPKcS2_tth.cold:
.LFSB8156:
.L10:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	816(%rbx), %rdi
	call	free@PLT
.L11:
	movq	760(%rbx), %rdi
	xorl	%r12d, %r12d
	call	free@PLT
	movq	744(%rbx), %rdi
	call	free@PLT
	movq	728(%rbx), %rdi
	call	free@PLT
	movq	712(%rbx), %rdi
	call	free@PLT
.L12:
	movq	680(%rbx), %rdi
	cmpq	672(%rbx), %r12
	jb	.L14
	call	free@PLT
.L15:
	movq	8(%rsp), %rdi
	call	_ZN3wze6engine6actorsD1Ev@PLT
.L16:
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L13:
	xorl	%r12d, %r12d
	jmp	.L12
.L14:
	movq	%r12, %rax
	addq	$1, %r12
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L12
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB7-.LCOLDB4
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engineC2EPKcS2_tth, .-_ZN3wze6engineC2EPKcS2_tth
	.section	.text.unlikely
	.size	_ZN3wze6engineC2EPKcS2_tth.cold, .-_ZN3wze6engineC2EPKcS2_tth.cold
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.type	_ZN3wze6engineD2Ev, @function
_ZN3wze6engineD2Ev:
.LFB8159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8159
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movq	%rdi, %rbp
	xorl	%edx, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	696(%rdi), %rbx
	movq	%rbx, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6window5CloseEv@PLT
	call	TTF_Quit@PLT
	call	SDL_CloseAudio@PLT
	call	SDL_Quit@PLT
	movq	816(%rbp), %rdi
	call	free@PLT
	movq	760(%rbp), %rdi
	call	free@PLT
	movq	744(%rbp), %rdi
	call	free@PLT
	movq	728(%rbp), %rdi
	call	free@PLT
	movq	712(%rbp), %rdi
	call	free@PLT
	cmpq	$0, 672(%rbp)
	je	.L31
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L32:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	680(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	672(%rbp), %rbx
	jb	.L32
.L31:
	movq	680(%rbp), %rdi
	call	free@PLT
	leaq	632(%rbp), %rdi
	call	_ZN3wze6engine6actorsD1Ev@PLT
	movq	72(%rbp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8159:
	.section	.gcc_except_table
.LLSDA8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8159-.LLSDACSB8159
.LLSDACSB8159:
.LLSDACSE8159:
	.text
	.size	_ZN3wze6engineD2Ev, .-_ZN3wze6engineD2Ev
	.globl	_ZN3wze6engineD1Ev
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine15UpdateFlipbooksEv
	.type	_ZN3wze6engine15UpdateFlipbooksEv, @function
_ZN3wze6engine15UpdateFlipbooksEv:
.LFB8162:
	.cfi_startproc
	movq	640(%rdi), %r11
	cmpq	$1, %r11
	jbe	.L56
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	648(%rdi), %rbx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L38:
	movq	(%rbx,%rdi,8), %r8
	testq	%r8, %r8
	je	.L51
	cmpq	640(%r9), %rdi
	jnb	.L48
	movq	88(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L49:
	cmpq	%r10, %rsi
	jnb	.L51
.L50:
	movq	96(%r8), %rax
	movq	(%rax,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L59
	cmpb	$0, 39(%rcx)
	jne	.L59
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	800(%r9), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	640(%r9), %rdi
	jnb	.L60
	cmpq	88(%r8), %rsi
	jnb	.L61
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L62
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jb	.L50
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rdi
	cmpq	%r11, %rdi
	jne	.L38
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
.L47:
	.cfi_restore_state
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
	.p2align 4,,10
	.p2align 3
.L59:
	movq	640(%r9), %rax
.L42:
	addq	$1, %rsi
	cmpq	%rax, %rdi
	jb	.L49
.L48:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L62:
	cmpb	$0, 38(%rcx)
	je	.L47
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	640(%r9), %rax
	jmp	.L42
.L56:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
.L61:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L60:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine15UpdateFlipbooksEv, .-_ZN3wze6engine15UpdateFlipbooksEv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC7:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6UpdateEv
	.type	_ZN3wze6engine6UpdateEv, @function
_ZN3wze6engine6UpdateEv:
.LFB8161:
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	call	SDL_GetTicks@PLT
	subl	780(%rbp), %eax
	leaq	80(%rbp), %rdi
	movl	%eax, 784(%rbp)
	call	_ZN3wze6engine6camera6UpdateEv@PLT
	leaq	32(%rbp), %rdi
	call	_ZN3wze6engine6render6UpdateEv@PLT
	call	SDL_GetTicks@PLT
	subl	784(%rbp), %eax
	subl	780(%rbp), %eax
	leaq	768(%rbp), %rdi
	movl	%eax, 788(%rbp)
	call	_ZN3wze6engine6timing6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbp), %rdi
	call	SDL_GetWindowFlags@PLT
	movl	%eax, 28(%rbp)
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L66:
	cmpq	%rax, %rbx
	jnb	.L80
	leaq	0(,%rbx,8), %rax
	movdqa	(%rsp), %xmm3
	subq	%rbx, %rax
	addq	$1, %rbx
	leaq	(%rdi,%rax,8), %rax
	movups	%xmm3, (%rax)
	movdqa	16(%rsp), %xmm4
	movups	%xmm4, 16(%rax)
	movdqa	32(%rsp), %xmm5
	movups	%xmm5, 32(%rax)
	movq	48(%rsp), %rdx
	movq	%rdx, 48(%rax)
.L64:
	movq	%r12, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	je	.L81
	cmpl	$256, (%rsp)
	je	.L77
	movq	808(%rbp), %rax
	movq	816(%rbp), %rdi
	cmpq	%rax, %rbx
	jne	.L66
	leaq	11(%rbx), %r13
	movq	%r13, 808(%rbp)
	leaq	0(,%r13,8), %rsi
	subq	%r13, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 816(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L82
	movq	808(%rbp), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r13, %rdx
	jb	.L66
	leaq	0(,%rdx,8), %rcx
	leaq	-12(%rax), %rsi
	subq	%rdx, %rcx
	leaq	(%rdi,%rcx,8), %rdx
	leaq	0(,%rsi,8), %rcx
	subq	%rsi, %rcx
	leaq	(%rdi,%rcx,8), %rcx
	movdqu	(%rcx), %xmm6
	movups	%xmm6, (%rdx)
	movdqu	16(%rcx), %xmm7
	movups	%xmm7, 16(%rdx)
	movdqu	32(%rcx), %xmm6
	movups	%xmm6, 32(%rdx)
	movq	48(%rcx), %rcx
	movq	%rcx, 48(%rdx)
	leaq	-2(%rax), %rcx
	cmpq	%r13, %rcx
	jb	.L70
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L69:
	movq	816(%rbp), %rdx
	subq	$1, %rcx
	movdqu	(%rdx,%rax), %xmm0
	movdqu	16(%rdx,%rax), %xmm1
	movdqu	32(%rdx,%rax), %xmm2
	movq	48(%rdx,%rax), %rsi
	movups	%xmm0, 616(%rdx,%rax)
	movq	%rsi, 664(%rdx,%rax)
	movups	%xmm1, 632(%rdx,%rax)
	movups	%xmm2, 648(%rdx,%rax)
	subq	$56, %rax
	cmpq	%r13, %rcx
	jnb	.L69
.L70:
	movq	808(%rbp), %rax
	movq	816(%rbp), %rdi
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L81:
	movq	808(%rbp), %r12
	cmpq	%r12, %rbx
	jb	.L83
.L75:
	leaq	264(%rbp), %rdi
	call	_ZN3wze6engine4keys6UpdateEv@PLT
	leaq	576(%rbp), %rdi
	call	_ZN3wze6engine5mouse6UpdateEv@PLT
	movl	$1, %eax
.L63:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L84
	addq	$72, %rsp
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
.L77:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L83:
	movq	%rbx, 808(%rbp)
	movq	816(%rbp), %rdi
	testq	%rbx, %rbx
	je	.L85
	leaq	0(,%rbx,8), %rsi
	subq	%rbx, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 816(%rbp)
	testq	%rax, %rax
	jne	.L75
	movq	%r12, %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	subq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L85:
	call	free@PLT
	movq	$0, 816(%rbp)
	jmp	.L75
.L80:
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L82:
	leaq	.LC6(%rip), %rdi
	movl	$11, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L84:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6UpdateEv, .-_ZN3wze6engine6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.type	_ZN3wze6engine6RandomEii, @function
_ZN3wze6engine6RandomEii:
.LFB8163:
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
.LFE8163:
	.size	_ZN3wze6engine6RandomEii, .-_ZN3wze6engine6RandomEii
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
