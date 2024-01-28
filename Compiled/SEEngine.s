	.file	"SEEngine.cpp"
	.text
	.section	.text._ZN4slay6engine6renderD2Ev,"axG",@progbits,_ZN4slay6engine6renderD5Ev,comdat
	.align 2
	.weak	_ZN4slay6engine6renderD2Ev
	.type	_ZN4slay6engine6renderD2Ev, @function
_ZN4slay6engine6renderD2Ev:
.LFB2198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2198:
	.size	_ZN4slay6engine6renderD2Ev, .-_ZN4slay6engine6renderD2Ev
	.weak	_ZN4slay6engine6renderD1Ev
	.set	_ZN4slay6engine6renderD1Ev,_ZN4slay6engine6renderD2Ev
	.section	.text._ZN4slay6engine6assetsD2Ev,"axG",@progbits,_ZN4slay6engine6assetsD5Ev,comdat
	.align 2
	.weak	_ZN4slay6engine6assetsD2Ev
	.type	_ZN4slay6engine6assetsD2Ev, @function
_ZN4slay6engine6assetsD2Ev:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorED1Ev
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontED1Ev
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkED1Ev
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6assetsD2Ev, .-_ZN4slay6engine6assetsD2Ev
	.weak	_ZN4slay6engine6assetsD1Ev
	.set	_ZN4slay6engine6assetsD1Ev,_ZN4slay6engine6assetsD2Ev
	.section	.rodata
.LC0:
	.string	"SlayEngine"
	.align 8
.LC1:
	.string	"slay::engine.engine(): SDL_Init() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC2:
	.string	"slay::engine.engine(): TTF_Init() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC3:
	.string	"slay::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.text
	.align 2
	.globl	_ZN4slay6engineC2EPKctth
	.type	_ZN4slay6engineC2EPKctth, @function
_ZN4slay6engineC2EPKctth:
.LFB2203:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2203
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %ecx
	movw	%dx, -36(%rbp)
	movw	%ax, -40(%rbp)
	movl	%ecx, %eax
	movb	%al, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN4slay6engine6windowC1ERS0_@PLT
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6renderC1ERS0_@PLT
.LEHE0:
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB1:
	call	_ZN4slay6engine6cameraC1ERS0_@PLT
	movq	-24(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine5audioC1ERS0_@PLT
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine4keysC1ERS0_@PLT
	movq	-24(%rbp), %rax
	leaq	464(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine5mouseC1ERS0_@PLT
	movq	-24(%rbp), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsC1ERS0_@PLT
.LEHE1:
	movq	-24(%rbp), %rax
	leaq	544(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB2:
	call	_ZN4slay6engine6vectorC1ERS0_@PLT
	movq	-24(%rbp), %rax
	leaq	552(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6assetsC1ERS0_@PLT
.LEHE2:
	movq	-24(%rbp), %rax
	leaq	624(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB3:
	call	_ZN4slay6engine6timingC1ERS0_@PLT
.LEHE3:
	movq	-24(%rbp), %rax
	addq	$664, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventEC1Ev
	cmpq	$0, -32(%rbp)
	jne	.L4
	leaq	.LC0(%rip), %rax
	movq	%rax, -32(%rbp)
.L4:
	movl	$48, %edi
.LEHB4:
	call	SDL_Init@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L5
	movzbl	-44(%rbp), %esi
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L5:
	call	TTF_Init@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L6
	movzbl	-44(%rbp), %esi
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L6:
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L7
	movzbl	-44(%rbp), %esi
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L7:
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movq	-24(%rbp), %rax
	movzwl	-40(%rbp), %ecx
	movzwl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6window4OpenEPKctt@PLT
	movzwl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movw	%dx, 56(%rax)
	movzwl	-40(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movw	%dx, 58(%rax)
	movq	-24(%rbp), %rax
	movzwl	24(%rax), %eax
	shrw	%ax
	movzwl	%ax, %eax
	negl	%eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	movq	-24(%rbp), %rax
	movzwl	26(%rax), %eax
	shrw	%ax
	movzwl	%ax, %eax
	negl	%eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	movl	$0, %edi
	call	SDL_GetKeyboardState@PLT
.LEHE4:
	movq	-24(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-24(%rbp), %rax
	movzbl	-44(%rbp), %edx
	movb	%dl, 632(%rax)
	jmp	.L16
.L15:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	addq	$664, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventED1Ev
	jmp	.L9
.L14:
	movq	%rax, %rbx
.L9:
	movq	-24(%rbp), %rax
	addq	$552, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6assetsD1Ev
	jmp	.L10
.L13:
	movq	%rax, %rbx
.L10:
	movq	-24(%rbp), %rax
	addq	$520, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actorsD1Ev@PLT
	jmp	.L11
.L12:
	movq	%rax, %rbx
.L11:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6renderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L16:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2203:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2203-.LLSDACSB2203
.LLSDACSB2203:
	.uleb128 .LEHB0-.LFB2203
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2203
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L12-.LFB2203
	.uleb128 0
	.uleb128 .LEHB2-.LFB2203
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L13-.LFB2203
	.uleb128 0
	.uleb128 .LEHB3-.LFB2203
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L14-.LFB2203
	.uleb128 0
	.uleb128 .LEHB4-.LFB2203
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L15-.LFB2203
	.uleb128 0
	.uleb128 .LEHB5-.LFB2203
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2203:
	.text
	.size	_ZN4slay6engineC2EPKctth, .-_ZN4slay6engineC2EPKctth
	.globl	_ZN4slay6engineC1EPKctth
	.set	_ZN4slay6engineC1EPKctth,_ZN4slay6engineC2EPKctth
	.align 2
	.globl	_ZN4slay6engineD2Ev
	.type	_ZN4slay6engineD2Ev, @function
_ZN4slay6engineD2Ev:
.LFB2206:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2206
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rcx
	addq	$552, %rcx
	movl	$0, %eax
	movl	$0, %edx
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE@PLT
	movq	-56(%rbp), %rax
	addq	$552, %rax
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE@PLT
	movq	-56(%rbp), %rax
	addq	$552, %rax
	movl	$0, %r14d
	movl	$0, %r15d
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE@PLT
	movq	-56(%rbp), %rax
	addq	$552, %rax
	movl	$0, %r12d
	movl	$0, %r13d
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6window5CloseEv@PLT
	call	TTF_Quit@PLT
	call	SDL_CloseAudio@PLT
	call	SDL_Quit@PLT
	movq	-56(%rbp), %rax
	addq	$664, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventED1Ev
	movq	-56(%rbp), %rax
	addq	$552, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6assetsD1Ev
	movq	-56(%rbp), %rax
	addq	$520, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actorsD1Ev@PLT
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6renderD1Ev
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.section	.gcc_except_table
.LLSDA2206:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2206-.LLSDACSB2206
.LLSDACSB2206:
.LLSDACSE2206:
	.text
	.size	_ZN4slay6engineD2Ev, .-_ZN4slay6engineD2Ev
	.globl	_ZN4slay6engineD1Ev
	.set	_ZN4slay6engineD1Ev,_ZN4slay6engineD2Ev
	.align 2
	.globl	_ZN4slay6engine6UpdateEv
	.type	_ZN4slay6engine6UpdateEv, @function
_ZN4slay6engine6UpdateEv:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	call	SDL_GetTicks@PLT
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	636(%rax), %eax
	subl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 640(%rax)
	movq	-184(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6camera6UpdateEv@PLT
	movq	-184(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render6UpdateEv@PLT
	call	SDL_GetTicks@PLT
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	636(%rax), %eax
	subl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	640(%rax), %eax
	subl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, 644(%rax)
	movq	$0, -168(%rbp)
	jmp	.L19
.L24:
	movl	-160(%rbp), %eax
	cmpl	$256, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L26
.L20:
	movq	-184(%rbp), %rax
	addq	$664, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventE6LengthEv
	cmpq	%rax, -168(%rbp)
	sete	%al
	testb	%al, %al
	je	.L22
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-184(%rbp), %rax
	addq	$664, %rax
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E
	jmp	.L23
.L22:
	movq	-184(%rbp), %rax
	leaq	664(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayI9SDL_EventEixEy
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-112(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L23:
	addq	$1, -168(%rbp)
.L19:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	jne	.L24
	movq	-184(%rbp), %rax
	addq	$664, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventE6LengthEv
	cmpq	%rax, -168(%rbp)
	setb	%al
	testb	%al, %al
	je	.L25
	movq	-184(%rbp), %rax
	leaq	664(%rax), %rbx
	movq	-184(%rbp), %rax
	addq	$664, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventE6LengthEv
	subq	-168(%rbp), %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayI9SDL_EventE6RemoveEyy
.L25:
	movq	-184(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine4keys6UpdateEv@PLT
	movq	-184(%rbp), %rax
	addq	$464, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine5mouse6UpdateEv@PLT
	movq	-184(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing6UpdateEv@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine15UpdateFlipbooksEv
	movl	$1, %eax
.L26:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L27
	call	__stack_chk_fail@PLT
.L27:
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN4slay6engine6UpdateEv, .-_ZN4slay6engine6UpdateEv
	.align 2
	.globl	_ZN4slay6engine15UpdateFlipbooksEv
	.type	_ZN4slay6engine15UpdateFlipbooksEv, @function
_ZN4slay6engine15UpdateFlipbooksEv:
.LFB2209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	$1, -32(%rbp)
	jmp	.L29
.L37:
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L39
	movq	$1, -24(%rbp)
	jmp	.L32
.L36:
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L40
	movq	-40(%rbp), %rax
	movl	656(%rax), %ebx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	80(%rax), %eax
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	movl	%ebx, %ecx
	addq	%rcx, %rdx
	movq	%rdx, 72(%rax)
	movq	-40(%rbp), %rax
	movl	656(%rax), %ebx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	80(%rax), %eax
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %ecx
	movl	%ecx, %ebx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	%ebx, 80(%rax)
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	72(%rax), %rax
	cmpq	%rbx, %rax
	setnb	%al
	testb	%al, %al
	je	.L34
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	16(%rax), %eax
	testb	%al, %al
	je	.L35
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	72(%rax), %rax
	leaq	1(%rax), %rcx
	movq	%rbx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rbx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	subq	%rbx, %rdx
	movq	%rdx, 72(%rax)
	jmp	.L34
.L35:
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	leaq	-1(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	%rbx, 72(%rax)
	jmp	.L34
.L40:
	nop
.L34:
	addq	$1, -24(%rbp)
.L32:
	movq	-40(%rbp), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L36
	jmp	.L31
.L39:
	nop
.L31:
	addq	$1, -32(%rbp)
.L29:
	movq	-40(%rbp), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L37
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine15UpdateFlipbooksEv, .-_ZN4slay6engine15UpdateFlipbooksEv
	.align 2
	.globl	_ZN4slay6engine6RandomEii
	.type	_ZN4slay6engine6RandomEii, @function
_ZN4slay6engine6RandomEii:
.LFB2210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	call	rand@PLT
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	subl	-12(%rbp), %esi
	cltd
	idivl	%esi
	movl	%edx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6RandomEii, .-_ZN4slay6engine6RandomEii
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEED2Ev,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEED2Ev
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEED2Ev, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEED2Ev:
.LFB2276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L44
.L45:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$1, -8(%rbp)
.L44:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L45
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEED2Ev, .-_ZN3neo5arrayIN4slay6engine6render5tokenEED2Ev
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEED1Ev
	.set	_ZN3neo5arrayIN4slay6engine6render5tokenEED1Ev,_ZN3neo5arrayIN4slay6engine6render5tokenEED2Ev
	.section	.text._ZN3neo5arrayIP11SDL_TextureED2Ev,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureED2Ev
	.type	_ZN3neo5arrayIP11SDL_TextureED2Ev, @function
_ZN3neo5arrayIP11SDL_TextureED2Ev:
.LFB2279:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L47
.L48:
	addq	$1, -8(%rbp)
.L47:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L48
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2279:
	.size	_ZN3neo5arrayIP11SDL_TextureED2Ev, .-_ZN3neo5arrayIP11SDL_TextureED2Ev
	.weak	_ZN3neo5arrayIP11SDL_TextureED1Ev
	.set	_ZN3neo5arrayIP11SDL_TextureED1Ev,_ZN3neo5arrayIP11SDL_TextureED2Ev
	.section	.text._ZN3neo5arrayIP9Mix_ChunkED2Ev,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.type	_ZN3neo5arrayIP9Mix_ChunkED2Ev, @function
_ZN3neo5arrayIP9Mix_ChunkED2Ev:
.LFB2282:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L50
.L51:
	addq	$1, -8(%rbp)
.L50:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L51
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2282:
	.size	_ZN3neo5arrayIP9Mix_ChunkED2Ev, .-_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.weak	_ZN3neo5arrayIP9Mix_ChunkED1Ev
	.set	_ZN3neo5arrayIP9Mix_ChunkED1Ev,_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.section	.text._ZN3neo5arrayIP9_TTF_FontED2Ev,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontED2Ev
	.type	_ZN3neo5arrayIP9_TTF_FontED2Ev, @function
_ZN3neo5arrayIP9_TTF_FontED2Ev:
.LFB2285:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L53
.L54:
	addq	$1, -8(%rbp)
.L53:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L54
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2285:
	.size	_ZN3neo5arrayIP9_TTF_FontED2Ev, .-_ZN3neo5arrayIP9_TTF_FontED2Ev
	.weak	_ZN3neo5arrayIP9_TTF_FontED1Ev
	.set	_ZN3neo5arrayIP9_TTF_FontED1Ev,_ZN3neo5arrayIP9_TTF_FontED2Ev
	.section	.text._ZN3neo5arrayIP10SDL_CursorED2Ev,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorED2Ev
	.type	_ZN3neo5arrayIP10SDL_CursorED2Ev, @function
_ZN3neo5arrayIP10SDL_CursorED2Ev:
.LFB2288:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L56
.L57:
	addq	$1, -8(%rbp)
.L56:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L57
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2288:
	.size	_ZN3neo5arrayIP10SDL_CursorED2Ev, .-_ZN3neo5arrayIP10SDL_CursorED2Ev
	.weak	_ZN3neo5arrayIP10SDL_CursorED1Ev
	.set	_ZN3neo5arrayIP10SDL_CursorED1Ev,_ZN3neo5arrayIP10SDL_CursorED2Ev
	.section	.text._ZN3neo5arrayI9SDL_EventEC2Ev,"axG",@progbits,_ZN3neo5arrayI9SDL_EventEC5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventEC2Ev
	.type	_ZN3neo5arrayI9SDL_EventEC2Ev, @function
_ZN3neo5arrayI9SDL_EventEC2Ev:
.LFB2291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZN3neo5arrayI9SDL_EventEC2Ev, .-_ZN3neo5arrayI9SDL_EventEC2Ev
	.weak	_ZN3neo5arrayI9SDL_EventEC1Ev
	.set	_ZN3neo5arrayI9SDL_EventEC1Ev,_ZN3neo5arrayI9SDL_EventEC2Ev
	.section	.text._ZN3neo5arrayI9SDL_EventED2Ev,"axG",@progbits,_ZN3neo5arrayI9SDL_EventED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventED2Ev
	.type	_ZN3neo5arrayI9SDL_EventED2Ev, @function
_ZN3neo5arrayI9SDL_EventED2Ev:
.LFB2294:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L60
.L61:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	$1, -8(%rbp)
.L60:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L61
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZN3neo5arrayI9SDL_EventED2Ev, .-_ZN3neo5arrayI9SDL_EventED2Ev
	.weak	_ZN3neo5arrayI9SDL_EventED1Ev
	.set	_ZN3neo5arrayI9SDL_EventED1Ev,_ZN3neo5arrayI9SDL_EventED2Ev
	.section	.text._ZN3neo5arrayI9SDL_EventE6LengthEv,"axG",@progbits,_ZN3neo5arrayI9SDL_EventE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventE6LengthEv
	.type	_ZN3neo5arrayI9SDL_EventE6LengthEv, @function
_ZN3neo5arrayI9SDL_EventE6LengthEv:
.LFB2296:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2296:
	.size	_ZN3neo5arrayI9SDL_EventE6LengthEv, .-_ZN3neo5arrayI9SDL_EventE6LengthEv
	.section	.text._ZNKSt16initializer_listI9SDL_EventE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listI9SDL_EventE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listI9SDL_EventE4sizeEv
	.type	_ZNKSt16initializer_listI9SDL_EventE4sizeEv, @function
_ZNKSt16initializer_listI9SDL_EventE4sizeEv:
.LFB2298:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2298:
	.size	_ZNKSt16initializer_listI9SDL_EventE4sizeEv, .-_ZNKSt16initializer_listI9SDL_EventE4sizeEv
	.section	.rodata
	.align 8
.LC4:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E,"axG",@progbits,_ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E
	.type	_ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E, @function
_ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E:
.LFB2297:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listI9SDL_EventE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L67
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listI9SDL_EventE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L68
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listI9SDL_EventE4sizeEv
	movq	%rax, %rdx
	movl	$56, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L68:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listI9SDL_EventE4sizeEv
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %r13
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r12
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listI9SDL_EventE4sizeEv
	movq	%r12, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listI9SDL_EventE5beginEv
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L67:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2297:
	.size	_ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E, .-_ZN3neo5arrayI9SDL_EventEpLESt16initializer_listIS1_E
	.section	.rodata
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayI9SDL_EventEixEy,"axG",@progbits,_ZN3neo5arrayI9SDL_EventEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventEixEy
	.type	_ZN3neo5arrayI9SDL_EventEixEy, @function
_ZN3neo5arrayI9SDL_EventEixEy:
.LFB2299:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L71
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L71:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2299:
	.size	_ZN3neo5arrayI9SDL_EventEixEy, .-_ZN3neo5arrayI9SDL_EventEixEy
	.section	.rodata
	.align 8
.LC6:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC7:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC8:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayI9SDL_EventE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayI9SDL_EventE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventE6RemoveEyy
	.type	_ZN3neo5arrayI9SDL_EventE6RemoveEyy, @function
_ZN3neo5arrayI9SDL_EventE6RemoveEyy:
.LFB2300:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L74
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L75
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	cmpq	$0, -56(%rbp)
	je	.L76
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L77
.L78:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	$1, -32(%rbp)
.L77:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L78
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L79
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L76
.L79:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L80
.L81:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	subq	%rcx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	addq	$1, -24(%rbp)
.L80:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L81
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L76
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L76:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2300:
	.size	_ZN3neo5arrayI9SDL_EventE6RemoveEyy, .-_ZN3neo5arrayI9SDL_EventE6RemoveEyy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2301:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2301:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2302:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L86
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L86:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2302:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv:
.LFB2303:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2303:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy:
.LFB2304:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2304:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.section	.text._ZNKSt16initializer_listI9SDL_EventE5beginEv,"axG",@progbits,_ZNKSt16initializer_listI9SDL_EventE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listI9SDL_EventE5beginEv
	.type	_ZNKSt16initializer_listI9SDL_EventE5beginEv, @function
_ZNKSt16initializer_listI9SDL_EventE5beginEv:
.LFB2355:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2355:
	.size	_ZNKSt16initializer_listI9SDL_EventE5beginEv, .-_ZNKSt16initializer_listI9SDL_EventE5beginEv
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
