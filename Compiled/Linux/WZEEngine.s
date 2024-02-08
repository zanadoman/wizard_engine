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
	.string	"wze::engine.engine(): Mix_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC3:
	.string	"wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC4:
	.string	"wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.type	_ZN3wze6engineC2EPKcS2_tth, @function
_ZN3wze6engineC2EPKcS2_tth:
.LFB8159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8159
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
	leaq	520(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine5mouseC1EPS0_@PLT
	leaq	576(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	_ZN3wze6engine6actorsC1EPS0_@PLT
.LEHE1:
	leaq	600(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZN3wze6engine9collisionC1EPS0_@PLT
.LEHE2:
	leaq	632(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB3:
	call	_ZN3wze6engine6vectorC1EPS0_@PLT
.LEHE3:
	leaq	640(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB4:
	call	_ZN3wze6engine7threadsC1EPS0_@PLT
.LEHE4:
	leaq	664(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB5:
	call	_ZN3wze6engine6assetsC1EPS0_@PLT
.LEHE5:
	leaq	736(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB6:
	call	_ZN3wze6engine6timingC1EPS0_@PLT
.LEHE6:
	testq	%r13, %r13
	leaq	.LC0(%rip), %rax
	movq	$0, 776(%rbx)
	movl	$62001, %edi
	movq	$0, 784(%rbx)
	cmove	%rax, %r13
.LEHB7:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$251, %edi
	call	Mix_Init@PLT
	testl	%eax, %eax
	je	.L31
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	testl	%eax, %eax
	jne	.L32
	call	TTF_Init@PLT
	movzwl	%r12w, %r8d
	movzwl	%bp, %ecx
	testl	%eax, %eax
	jne	.L33
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
	movb	%r14b, 744(%rbx)
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
.L30:
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
.L33:
	movzbl	%r14b, %r9d
	movq	%r15, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rdi
	call	printf@PLT
	jmp	.L8
.L32:
	movzwl	%bp, %ecx
	movzbl	%r14b, %r9d
	movzwl	%r12w, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L8
.L31:
	movzwl	%bp, %ecx
	movzbl	%r14b, %r9d
	movzwl	%r12w, %r8d
	movq	%r15, %rdx
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	call	printf@PLT
.LEHE7:
	jmp	.L8
.L20:
	movq	%rax, %rbp
	jmp	.L18
.L24:
	movq	%rax, %rbp
	jmp	.L11
.L23:
	movq	%rax, %rbp
	jmp	.L12
.L22:
	movq	%rax, %rbp
	jmp	.L13
.L25:
	movq	%rax, %rbp
	jmp	.L15
.L21:
	movq	%rax, %rbp
	jmp	.L17
.L26:
	movq	%rax, %rbp
	jmp	.L15
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8159-.LLSDACSB8159
.LLSDACSB8159:
	.uleb128 .LEHB0-.LFB8159
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8159
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB8159
	.uleb128 0
	.uleb128 .LEHB2-.LFB8159
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L21-.LFB8159
	.uleb128 0
	.uleb128 .LEHB3-.LFB8159
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L25-.LFB8159
	.uleb128 0
	.uleb128 .LEHB4-.LFB8159
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L26-.LFB8159
	.uleb128 0
	.uleb128 .LEHB5-.LFB8159
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L22-.LFB8159
	.uleb128 0
	.uleb128 .LEHB6-.LFB8159
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L23-.LFB8159
	.uleb128 0
	.uleb128 .LEHB7-.LFB8159
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L24-.LFB8159
	.uleb128 0
.LLSDACSE8159:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8159
	.type	_ZN3wze6engineC2EPKcS2_tth.cold, @function
_ZN3wze6engineC2EPKcS2_tth.cold:
.LFSB8159:
.L11:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	784(%rbx), %rdi
	call	free@PLT
.L12:
	movq	728(%rbx), %rdi
	call	free@PLT
	movq	712(%rbx), %rdi
	call	free@PLT
	movq	696(%rbx), %rdi
	call	free@PLT
	movq	680(%rbx), %rdi
	call	free@PLT
.L13:
	movq	656(%rbx), %rdi
	xorl	%r12d, %r12d
	call	free@PLT
.L14:
	movq	624(%rbx), %rdi
	cmpq	616(%rbx), %r12
	jb	.L16
	call	free@PLT
.L17:
	movq	8(%rsp), %rdi
	call	_ZN3wze6engine6actorsD1Ev@PLT
.L18:
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L15:
	xorl	%r12d, %r12d
	jmp	.L14
.L16:
	movq	%r12, %rax
	addq	$1, %r12
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L14
	.cfi_endproc
.LFE8159:
	.section	.gcc_except_table
.LLSDAC8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8159-.LLSDACSBC8159
.LLSDACSBC8159:
	.uleb128 .LEHB8-.LCOLDB5
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC8159:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engineC2EPKcS2_tth, .-_ZN3wze6engineC2EPKcS2_tth
	.section	.text.unlikely
	.size	_ZN3wze6engineC2EPKcS2_tth.cold, .-_ZN3wze6engineC2EPKcS2_tth.cold
.LCOLDE5:
	.text
.LHOTE5:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.type	_ZN3wze6engineD2Ev, @function
_ZN3wze6engineD2Ev:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	xorl	%esi, %esi
	addq	$640, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%edx, %edx
	leaq	664(%rbp), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
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
	call	Mix_CloseAudio@PLT
	call	Mix_Quit@PLT
	call	SDL_Quit@PLT
	movq	784(%rbp), %rdi
	call	free@PLT
	movq	728(%rbp), %rdi
	call	free@PLT
	movq	712(%rbp), %rdi
	call	free@PLT
	movq	696(%rbp), %rdi
	call	free@PLT
	movq	680(%rbp), %rdi
	call	free@PLT
	movq	656(%rbp), %rdi
	call	free@PLT
	cmpq	$0, 616(%rbp)
	je	.L35
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L36:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	624(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	616(%rbp), %rbx
	jb	.L36
.L35:
	movq	624(%rbp), %rdi
	call	free@PLT
	leaq	576(%rbp), %rdi
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
.LFE8162:
	.section	.gcc_except_table
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
.LLSDACSE8162:
	.text
	.size	_ZN3wze6engineD2Ev, .-_ZN3wze6engineD2Ev
	.globl	_ZN3wze6engineD1Ev
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.type	_ZN3wze6engine6RandomEii, @function
_ZN3wze6engine6RandomEii:
.LFB8165:
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
.LFE8165:
	.size	_ZN3wze6engine6RandomEii, .-_ZN3wze6engine6RandomEii
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine15UpdateFlipbooksEv
	.type	_ZN3wze6engine15UpdateFlipbooksEv, @function
_ZN3wze6engine15UpdateFlipbooksEv:
.LFB8166:
	.cfi_startproc
	movq	584(%rdi), %r11
	cmpq	$1, %r11
	jbe	.L62
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	592(%rdi), %rbx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L44:
	movq	(%rbx,%rdi,8), %r8
	testq	%r8, %r8
	je	.L57
	cmpq	584(%r9), %rdi
	jnb	.L54
	movq	88(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L55:
	cmpq	%r10, %rsi
	jnb	.L57
.L56:
	movq	96(%r8), %rax
	movq	(%rax,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L65
	cmpb	$0, 39(%rcx)
	jne	.L65
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	768(%r9), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	584(%r9), %rdi
	jnb	.L66
	cmpq	88(%r8), %rsi
	jnb	.L67
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L68
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jb	.L56
	.p2align 4,,10
	.p2align 3
.L57:
	addq	$1, %rdi
	cmpq	%r11, %rdi
	jne	.L44
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
.L53:
	.cfi_restore_state
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
	.p2align 4,,10
	.p2align 3
.L65:
	movq	584(%r9), %rax
.L48:
	addq	$1, %rsi
	cmpq	%rax, %rdi
	jb	.L55
.L54:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC6(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L68:
	cmpb	$0, 38(%rcx)
	je	.L53
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	584(%r9), %rax
	jmp	.L48
.L62:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
.L67:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L66:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC6(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine15UpdateFlipbooksEv, .-_ZN3wze6engine15UpdateFlipbooksEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine18UpdateOverlapboxesEv
	.type	_ZN3wze6engine18UpdateOverlapboxesEv, @function
_ZN3wze6engine18UpdateOverlapboxesEv:
.LFB8167:
	.cfi_startproc
	movq	584(%rdi), %rcx
	cmpq	$1, %rcx
	jbe	.L122
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	520(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	592(%rdi), %r8
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L71:
	addq	$1, %r14
	cmpq	%rcx, %r14
	jnb	.L126
.L70:
	movq	(%r8,%r14,8), %rax
	leaq	0(,%r14,8), %rbp
	testq	%rax, %rax
	je	.L71
	cmpq	$1, 152(%rax)
	ja	.L127
	cmpq	%rcx, %r14
	jnb	.L95
	addq	$1, %r14
	cmpq	%rcx, %r14
	jb	.L70
.L126:
	addq	$88, %rsp
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
.L127:
	.cfi_restore_state
	movsd	264(%rax), %xmm0
	movq	%r13, %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	592(%r15), %rax
	cmpq	584(%r15), %r14
	jnb	.L128
	movq	(%rax,%rbp), %rax
	movsd	%xmm0, 8(%rsp)
	movq	%r13, %rdi
	movsd	264(%rax), %xmm0
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	584(%r15), %rcx
	movq	592(%r15), %r8
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	cmpq	%rcx, %r14
	jnb	.L95
	movq	%r13, 8(%rsp)
	movl	$1, %ebx
	movq	%r14, %r13
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L96:
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r14
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L76
	movzwl	80(%rax), %edi
	pxor	%xmm1, %xmm1
	movsd	32(%rax), %xmm0
	movsd	40(%rax), %xmm3
	movzwl	82(%rax), %eax
	movl	%edi, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm0, %xmm2
	jb	.L120
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	addsd	%xmm1, %xmm0
	comisd	%xmm2, %xmm0
	jb	.L120
	movl	%eax, %esi
	pxor	%xmm0, %xmm0
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm0
	addsd	%xmm3, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	comisd	%xmm1, %xmm4
	jb	.L120
	comisd	%xmm4, %xmm0
	jnb	.L129
	.p2align 4,,10
	.p2align 3
.L120:
	xorl	%r12d, %r12d
.L77:
	cmpq	%rcx, %r13
	jnb	.L130
	movq	(%r8,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L131
.L94:
	movq	(%rsi,%r14), %rax
	movl	%r12d, 112(%rax)
.L76:
	addq	$1, %rbx
	cmpq	%rcx, %r13
	jnb	.L132
.L74:
	movq	(%r8,%rbp), %rax
	cmpq	152(%rax), %rbx
	jb	.L96
	movq	%r13, %r14
	movq	8(%rsp), %r13
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L129:
	leaq	264(%r15), %rax
	movl	$232, %esi
	movsd	%xmm4, 32(%rsp)
	movq	%rax, %rdi
	movsd	%xmm2, 24(%rsp)
	movq	%rax, 16(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm4
	testb	%al, %al
	je	.L133
	movl	$11, 76(%rsp)
	movl	$43, %r12d
	movl	$35, %r8d
	movl	$3, %r11d
	movl	$67, %r10d
	movl	$51, %r9d
	movl	$19, %edx
	movl	$75, 72(%rsp)
	movl	$83, %ecx
.L82:
	movq	16(%rsp), %rdi
	movl	$233, %esi
	movl	%r8d, 68(%rsp)
	movl	%r11d, 64(%rsp)
	movl	%ecx, 60(%rsp)
	movl	%r9d, 56(%rsp)
	movl	%r10d, 52(%rsp)
	movl	%edx, 24(%rsp)
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm2, 32(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movl	24(%rsp), %edx
	movsd	32(%rsp), %xmm2
	testb	%al, %al
	movsd	40(%rsp), %xmm4
	movl	52(%rsp), %r10d
	movl	56(%rsp), %r9d
	movl	60(%rsp), %ecx
	movl	64(%rsp), %r11d
	movl	68(%rsp), %r8d
	je	.L134
.L85:
	movq	16(%rsp), %rdi
	movl	$234, %esi
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm2, 24(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movq	584(%r15), %rcx
	movq	592(%r15), %r8
	testb	%al, %al
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm4
	jne	.L77
	cmpq	%rcx, %r13
	jnb	.L135
	movq	(%r8,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L136
	movq	(%rsi,%r14), %rax
	movl	76(%rsp), %r12d
	testb	$32, 112(%rax)
	cmovne	72(%rsp), %r12d
	jmp	.L94
.L133:
	movq	592(%r15), %rax
	cmpq	584(%r15), %r13
	jnb	.L137
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rcx
	cmpq	152(%rax), %rbx
	jnb	.L138
	movq	(%rcx,%r14), %rax
	movl	112(%rax), %eax
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%r12d, %r12d
	andl	$-4, %r12d
	addl	$45, %r12d
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$13, %edx
	cmpl	$1, %eax
	movl	%edx, 76(%rsp)
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$77, %edx
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	movl	%edx, 72(%rsp)
	andl	$-4, %r8d
	addl	$37, %r8d
	cmpl	$1, %eax
	sbbl	%r11d, %r11d
	andl	$-4, %r11d
	addl	$5, %r11d
	cmpl	$1, %eax
	sbbl	%r10d, %r10d
	andl	$-4, %r10d
	addl	$69, %r10d
	cmpl	$1, %eax
	sbbl	%r9d, %r9d
	andl	$-4, %r9d
	addl	$53, %r9d
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$21, %edx
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$85, %ecx
	jmp	.L82
.L134:
	movq	592(%r15), %rax
	cmpq	584(%r15), %r13
	jnb	.L139
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L140
	movq	(%rsi,%r14), %rax
	testb	$8, 112(%rax)
	je	.L141
	movl	%edx, 76(%rsp)
	movl	%r9d, %r12d
	movl	%ecx, 72(%rsp)
	jmp	.L85
.L141:
	movl	%r11d, 76(%rsp)
	movl	%r8d, %r12d
	movl	%r10d, 72(%rsp)
	jmp	.L85
.L122:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	xorl	%eax, %eax
	ret
.L132:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %r14
.L95:
	leaq	.LC6(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L131:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L130:
	leaq	.LC6(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L128:
	leaq	.LC6(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L137:
	leaq	.LC6(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L138:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L139:
	leaq	.LC6(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L140:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L135:
	leaq	.LC6(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L136:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine18UpdateOverlapboxesEv, .-_ZN3wze6engine18UpdateOverlapboxesEv
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC8:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6UpdateEv
	.type	_ZN3wze6engine6UpdateEv, @function
_ZN3wze6engine6UpdateEv:
.LFB8164:
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
	subl	748(%rbp), %eax
	leaq	80(%rbp), %rdi
	movl	%eax, 752(%rbp)
	call	_ZN3wze6engine6camera6UpdateEv@PLT
	leaq	32(%rbp), %rdi
	call	_ZN3wze6engine6render6UpdateEv@PLT
	call	SDL_GetTicks@PLT
	subl	752(%rbp), %eax
	subl	748(%rbp), %eax
	leaq	736(%rbp), %rdi
	movl	%eax, 756(%rbp)
	call	_ZN3wze6engine6timing6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbp), %rdi
	call	SDL_GetWindowFlags@PLT
	movl	%eax, 28(%rbp)
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L145:
	cmpq	%rax, %rbx
	jnb	.L159
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
.L143:
	movq	%r12, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	je	.L160
	cmpl	$256, (%rsp)
	je	.L156
	movq	776(%rbp), %rax
	movq	784(%rbp), %rdi
	cmpq	%rax, %rbx
	jne	.L145
	leaq	11(%rbx), %r13
	movq	%r13, 776(%rbp)
	leaq	0(,%r13,8), %rsi
	subq	%r13, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 784(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L161
	movq	776(%rbp), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r13, %rdx
	jb	.L145
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
	jb	.L149
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L148:
	movq	784(%rbp), %rdx
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
	jnb	.L148
.L149:
	movq	776(%rbp), %rax
	movq	784(%rbp), %rdi
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L160:
	movq	776(%rbp), %r12
	cmpq	%r12, %rbx
	jb	.L162
.L154:
	leaq	264(%rbp), %rdi
	call	_ZN3wze6engine4keys6UpdateEv@PLT
	leaq	520(%rbp), %rdi
	call	_ZN3wze6engine5mouse6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine18UpdateOverlapboxesEv
	movl	$1, %eax
.L142:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L163
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
.L156:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L162:
	movq	%rbx, 776(%rbp)
	movq	784(%rbp), %rdi
	testq	%rbx, %rbx
	je	.L164
	leaq	0(,%rbx,8), %rsi
	subq	%rbx, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 784(%rbp)
	testq	%rax, %rax
	jne	.L154
	movq	%r12, %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rbx, %rsi
	subq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L164:
	call	free@PLT
	movq	$0, 784(%rbp)
	jmp	.L154
.L159:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L161:
	leaq	.LC7(%rip), %rdi
	movl	$11, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L163:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6UpdateEv, .-_ZN3wze6engine6UpdateEv
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
