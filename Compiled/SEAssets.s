	.file	"SEAssets.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6assetsC2ERS0_
	.type	_ZN4slay6engine6assetsC2ERS0_, @function
_ZN4slay6engine6assetsC2ERS0_:
.LFB2197:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2197
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
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rcx
	movq	%rcx, -56(%rbp)
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	%rsi, (%rcx)
	movq	-72(%rbp), %rcx
	addq	$8, %rcx
	movq	$0, -64(%rbp)
	leaq	-64(%rbp), %rsi
	movq	%rsi, %rax
	movl	$1, %edx
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movq	%rdi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
.LEHB0:
	call	_ZN3neo5arrayIP11SDL_TextureEC1ESt16initializer_listIS2_E
.LEHE0:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	$0, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	$1, -88(%rbp)
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZN3neo5arrayIP9Mix_ChunkEC1ESt16initializer_listIS2_E
.LEHE1:
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	$0, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	%rdx, %r14
	movl	$1, %r15d
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZN3neo5arrayIP9_TTF_FontEC1ESt16initializer_listIS2_E
.LEHE2:
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	$0, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	%rdx, %r12
	movl	$1, %r13d
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN3neo5arrayIP10SDL_CursorEC1ESt16initializer_listIS2_E
.LEHE3:
	nop
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	je	.L6
	jmp	.L10
.L9:
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontED1Ev
	jmp	.L3
.L8:
	movq	%rax, %rbx
.L3:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkED1Ev
	jmp	.L4
.L7:
	movq	%rax, %rbx
.L4:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureED1Ev
	movq	%rbx, %rax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L10:
	call	__stack_chk_fail@PLT
.L6:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2197-.LLSDACSB2197
.LLSDACSB2197:
	.uleb128 .LEHB0-.LFB2197
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2197
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB2197
	.uleb128 0
	.uleb128 .LEHB2-.LFB2197
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L8-.LFB2197
	.uleb128 0
	.uleb128 .LEHB3-.LFB2197
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L9-.LFB2197
	.uleb128 0
	.uleb128 .LEHB4-.LFB2197
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2197:
	.text
	.size	_ZN4slay6engine6assetsC2ERS0_, .-_ZN4slay6engine6assetsC2ERS0_
	.globl	_ZN4slay6engine6assetsC1ERS0_
	.set	_ZN4slay6engine6assetsC1ERS0_,_ZN4slay6engine6assetsC2ERS0_
	.section	.rodata
	.align 8
.LC0:
	.string	"slay::engine.assets.LoadPNG(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC1:
	.string	"slay::engine.assets.LoadPNG(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC2:
	.string	"slay::engine.assets.LoadPNG(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets7LoadPNGEPKc
	.type	_ZN4slay6engine6assets7LoadPNGEPKc, @function
_ZN4slay6engine6assets7LoadPNGEPKc:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -80(%rbp)
	jne	.L12
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L12:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	IMG_Load@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	sete	%al
	testb	%al, %al
	je	.L13
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L13:
	movq	$1, -64(%rbp)
	jmp	.L14
.L18:
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L15
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	%rbx, (%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L16
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L16:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-64(%rbp), %rax
	jmp	.L17
.L15:
	addq	$1, -64(%rbp)
.L14:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	%rax, -64(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L18
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L19
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L19:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
.L17:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine6assets7LoadPNGEPKc, .-_ZN4slay6engine6assets7LoadPNGEPKc
	.section	.rodata
	.align 8
.LC3:
	.string	"slay::engine.assets.UnloadPNG(): Illegal deletion of NULL PNG\nParams: ID: %lld\n"
	.align 8
.LC4:
	.string	"slay::engine.assets.UnloadPNG(): PNG does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets9UnloadPNGEy
	.type	_ZN4slay6engine6assets9UnloadPNGEy, @function
_ZN4slay6engine6assets9UnloadPNGEy:
.LFB2200:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L22
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L23
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L24
.L23:
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	testb	%al, %al
	je	.L26
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L26:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyTexture@PLT
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L27
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L28
.L31:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L41
	subq	$1, -32(%rbp)
.L28:
	cmpq	$0, -32(%rbp)
	jne	.L31
	jmp	.L30
.L41:
	nop
.L30:
	addq	$1, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
.L27:
	movq	$1, -32(%rbp)
	jmp	.L32
.L39:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L42
	movq	$1, -24(%rbp)
	jmp	.L35
.L38:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L43
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	64(%rax), %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L37
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	$0, 64(%rax)
	jmp	.L37
.L43:
	nop
.L37:
	addq	$1, -24(%rbp)
.L35:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L38
	jmp	.L34
.L42:
	nop
.L34:
	addq	$1, -32(%rbp)
.L32:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L39
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6assets9UnloadPNGEy, .-_ZN4slay6engine6assets9UnloadPNGEy
	.align 2
	.globl	_ZN4slay6engine6assets9PurgePNGsEv
	.type	_ZN4slay6engine6assets9PurgePNGsEv, @function
_ZN4slay6engine6assets9PurgePNGsEv:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$1, -40(%rbp)
	jmp	.L45
.L52:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L57
	movq	$1, -32(%rbp)
	jmp	.L48
.L51:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L58
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	$0, 64(%rax)
	jmp	.L50
.L58:
	nop
.L50:
	addq	$1, -32(%rbp)
.L48:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L51
	jmp	.L47
.L57:
	nop
.L47:
	addq	$1, -40(%rbp)
.L45:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L52
	movq	$1, -24(%rbp)
	jmp	.L53
.L54:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyTexture@PLT
	addq	$1, -24(%rbp)
.L53:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L54
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	$1, %rax
	seta	%al
	testb	%al, %al
	je	.L55
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
.L55:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6assets9PurgePNGsEv, .-_ZN4slay6engine6assets9PurgePNGsEv
	.section	.rodata
	.align 8
.LC5:
	.string	"slay::engine.assets.LoadWAV(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC6:
	.string	"slay::engine.assets.LoadWAV(): Mix_LoadWAV() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets7LoadWAVEPKc
	.type	_ZN4slay6engine6assets7LoadWAVEPKc, @function
_ZN4slay6engine6assets7LoadWAVEPKc:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -80(%rbp)
	jne	.L60
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L60:
	movq	$1, -56(%rbp)
	jmp	.L61
.L65:
	movq	-72(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L62
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	Mix_LoadWAV@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	%rbx, (%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L63
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	movq	-56(%rbp), %rax
	jmp	.L64
.L62:
	addq	$1, -56(%rbp)
.L61:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L65
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	Mix_LoadWAV@PLT
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L66
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L66:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
.L64:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L67
	call	__stack_chk_fail@PLT
.L67:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine6assets7LoadWAVEPKc, .-_ZN4slay6engine6assets7LoadWAVEPKc
	.section	.rodata
	.align 8
.LC7:
	.string	"slay::engine.assets.UnloadWAV(): Illegal deletion of NULL WAV\nParams: ID: %lld\n"
	.align 8
.LC8:
	.string	"slay::engine.assets.UnloadWAV(): WAV does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets9UnloadWAVEy
	.type	_ZN4slay6engine6assets9UnloadWAVEy, @function
_ZN4slay6engine6assets9UnloadWAVEy:
.LFB2203:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L69
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L69:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L70
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L71
.L70:
	movl	$1, %eax
	jmp	.L72
.L71:
	movl	$0, %eax
.L72:
	testb	%al, %al
	je	.L73
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L73:
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Mix_FreeChunk@PLT
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L74
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L75
.L78:
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L80
	subq	$1, -24(%rbp)
.L75:
	cmpq	$0, -24(%rbp)
	jne	.L78
	jmp	.L77
.L80:
	nop
.L77:
	addq	$1, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
.L74:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6assets9UnloadWAVEy, .-_ZN4slay6engine6assets9UnloadWAVEy
	.align 2
	.globl	_ZN4slay6engine6assets9PurgeWAVsEv
	.type	_ZN4slay6engine6assets9PurgeWAVsEv, @function
_ZN4slay6engine6assets9PurgeWAVsEv:
.LFB2204:
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
	movq	$1, -24(%rbp)
	jmp	.L82
.L83:
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Mix_FreeChunk@PLT
	addq	$1, -24(%rbp)
.L82:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L83
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	$1, %rax
	seta	%al
	testb	%al, %al
	je	.L84
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
.L84:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6assets9PurgeWAVsEv, .-_ZN4slay6engine6assets9PurgeWAVsEv
	.section	.rodata
	.align 8
.LC9:
	.string	"slay::engine.assets.LoadTTF(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC10:
	.string	"slay::engine.assets.LoadTTF(): TTF_OpenFont() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets7LoadTTFEPKch
	.type	_ZN4slay6engine6assets7LoadTTFEPKch, @function
_ZN4slay6engine6assets7LoadTTFEPKch:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, %eax
	movb	%al, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -80(%rbp)
	jne	.L87
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L87:
	movq	$1, -56(%rbp)
	jmp	.L88
.L92:
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L89
	movzbl	-84(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	TTF_OpenFont@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	%rbx, (%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L90
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L90:
	movq	-56(%rbp), %rax
	jmp	.L91
.L89:
	addq	$1, -56(%rbp)
.L88:
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L92
	movzbl	-84(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	TTF_OpenFont@PLT
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L93
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L93:
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
.L91:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L94
	call	__stack_chk_fail@PLT
.L94:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine6assets7LoadTTFEPKch, .-_ZN4slay6engine6assets7LoadTTFEPKch
	.section	.rodata
	.align 8
.LC11:
	.string	"slay::engine.assets.UnloadTTF(): Illegal deletion of NULL TTF\nParams: ID: %lld\n"
	.align 8
.LC12:
	.string	"slay::engine.assets.UnloadTTF(): TTF does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets9UnloadTTFEy
	.type	_ZN4slay6engine6assets9UnloadTTFEy, @function
_ZN4slay6engine6assets9UnloadTTFEy:
.LFB2206:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L96
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L96:
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L97
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L98
.L97:
	movl	$1, %eax
	jmp	.L99
.L98:
	movl	$0, %eax
.L99:
	testb	%al, %al
	je	.L100
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L100:
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	TTF_CloseFont@PLT
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L101
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L102
.L105:
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L115
	subq	$1, -32(%rbp)
.L102:
	cmpq	$0, -32(%rbp)
	jne	.L105
	jmp	.L104
.L115:
	nop
.L104:
	addq	$1, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
.L101:
	movq	$1, -32(%rbp)
	jmp	.L106
.L113:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L116
	movq	$1, -24(%rbp)
	jmp	.L109
.L112:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L117
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L111
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	$0, 88(%rax)
	jmp	.L111
.L117:
	nop
.L111:
	addq	$1, -24(%rbp)
.L109:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L112
	jmp	.L108
.L116:
	nop
.L108:
	addq	$1, -32(%rbp)
.L106:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L113
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6assets9UnloadTTFEy, .-_ZN4slay6engine6assets9UnloadTTFEy
	.align 2
	.globl	_ZN4slay6engine6assets9PurgeTTFsEv
	.type	_ZN4slay6engine6assets9PurgeTTFsEv, @function
_ZN4slay6engine6assets9PurgeTTFsEv:
.LFB2207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$1, -40(%rbp)
	jmp	.L119
.L126:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L131
	movq	$1, -32(%rbp)
	jmp	.L122
.L125:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L132
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	$0, 88(%rax)
	jmp	.L124
.L132:
	nop
.L124:
	addq	$1, -32(%rbp)
.L122:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L125
	jmp	.L121
.L131:
	nop
.L121:
	addq	$1, -40(%rbp)
.L119:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L126
	movq	$1, -24(%rbp)
	jmp	.L127
.L128:
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	TTF_CloseFont@PLT
	addq	$1, -24(%rbp)
.L127:
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L128
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	$1, %rax
	seta	%al
	testb	%al, %al
	je	.L129
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
.L129:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2207:
	.size	_ZN4slay6engine6assets9PurgeTTFsEv, .-_ZN4slay6engine6assets9PurgeTTFsEv
	.section	.rodata
	.align 8
.LC13:
	.string	"slay::engine.assets.LoadCursor(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC14:
	.string	"slay::engine.assets.LoadCursor(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC15:
	.string	"slay::engine.assets.LoadCursor(): HotSpotX out of range\nParams: Path: %s\n"
	.align 8
.LC16:
	.string	"slay::engine.assets.LoadCursor(): HotSpotY out of range\nParams: Path: %s\n"
	.align 8
.LC17:
	.string	"slay::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets10LoadCursorEPKctt
	.type	_ZN4slay6engine6assets10LoadCursorEPKctt, @function
_ZN4slay6engine6assets10LoadCursorEPKctt:
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
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%ecx, %eax
	movw	%dx, -84(%rbp)
	movw	%ax, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -80(%rbp)
	jne	.L134
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L134:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	IMG_Load@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	sete	%al
	testb	%al, %al
	je	.L135
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L135:
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movzwl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L136
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L136:
	movq	-56(%rbp), %rax
	movl	20(%rax), %edx
	movzwl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L137
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L137:
	movq	$1, -64(%rbp)
	jmp	.L138
.L142:
	movq	-72(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L139
	movzwl	-88(%rbp), %edx
	movzwl	-84(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	%rbx, (%rax)
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L140
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L140:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-64(%rbp), %rax
	jmp	.L141
.L139:
	addq	$1, -64(%rbp)
.L138:
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -64(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L142
	movzwl	-88(%rbp), %edx
	movzwl	-84(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SDL_CreateColorCursor@PLT
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L143
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L143:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
.L141:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L144
	call	__stack_chk_fail@PLT
.L144:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN4slay6engine6assets10LoadCursorEPKctt, .-_ZN4slay6engine6assets10LoadCursorEPKctt
	.section	.rodata
	.align 8
.LC18:
	.string	"slay::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\nParams: ID: %lld\n"
	.align 8
.LC19:
	.string	"slay::engine.assets.UnloadCursor(): Cursor does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets12UnloadCursorEy
	.type	_ZN4slay6engine6assets12UnloadCursorEy, @function
_ZN4slay6engine6assets12UnloadCursorEy:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L146
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L146:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L147
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L148
.L147:
	movl	$1, %eax
	jmp	.L149
.L148:
	movl	$0, %eax
.L149:
	testb	%al, %al
	je	.L150
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L150:
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_FreeCursor@PLT
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L151
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L152
.L155:
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L158
	subq	$1, -24(%rbp)
.L152:
	cmpq	$0, -24(%rbp)
	jne	.L155
	jmp	.L154
.L158:
	nop
.L154:
	addq	$1, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
.L151:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	512(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L156
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 512(%rax)
.L156:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine6assets12UnloadCursorEy, .-_ZN4slay6engine6assets12UnloadCursorEy
	.align 2
	.globl	_ZN4slay6engine6assets12PurgeCursorsEv
	.type	_ZN4slay6engine6assets12PurgeCursorsEv, @function
_ZN4slay6engine6assets12PurgeCursorsEv:
.LFB2210:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 512(%rax)
	movq	$1, -24(%rbp)
	jmp	.L160
.L161:
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_FreeCursor@PLT
	addq	$1, -24(%rbp)
.L160:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L161
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	$1, %rax
	seta	%al
	testb	%al, %al
	je	.L162
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
.L162:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6assets12PurgeCursorsEv, .-_ZN4slay6engine6assets12PurgeCursorsEv
	.section	.text._ZNKSt16initializer_listIP11SDL_TextureE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	.type	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv, @function
_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv:
.LFB2276:
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
.LFE2276:
	.size	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv, .-_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	.section	.rodata
	.align 8
.LC20:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E:
.LFB2277:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L167
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L170
.L167:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L169
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L169:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L170:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2277:
	.size	_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP11SDL_TextureEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP11SDL_TextureEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP11SDL_TextureED2Ev,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureED2Ev
	.type	_ZN3neo5arrayIP11SDL_TextureED2Ev, @function
_ZN3neo5arrayIP11SDL_TextureED2Ev:
.LFB2280:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L172
.L173:
	addq	$1, -8(%rbp)
.L172:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L173
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2280:
	.size	_ZN3neo5arrayIP11SDL_TextureED2Ev, .-_ZN3neo5arrayIP11SDL_TextureED2Ev
	.weak	_ZN3neo5arrayIP11SDL_TextureED1Ev
	.set	_ZN3neo5arrayIP11SDL_TextureED1Ev,_ZN3neo5arrayIP11SDL_TextureED2Ev
	.section	.text._ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	.type	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv, @function
_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv:
.LFB2283:
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
.LFE2283:
	.size	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv, .-_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E:
.LFB2284:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L177
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L180
.L177:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L179
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L179:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L180:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.size	_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP9Mix_ChunkEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP9Mix_ChunkEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9Mix_ChunkED2Ev,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.type	_ZN3neo5arrayIP9Mix_ChunkED2Ev, @function
_ZN3neo5arrayIP9Mix_ChunkED2Ev:
.LFB2287:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L182
.L183:
	addq	$1, -8(%rbp)
.L182:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L183
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2287:
	.size	_ZN3neo5arrayIP9Mix_ChunkED2Ev, .-_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.weak	_ZN3neo5arrayIP9Mix_ChunkED1Ev
	.set	_ZN3neo5arrayIP9Mix_ChunkED1Ev,_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.section	.text._ZNKSt16initializer_listIP9_TTF_FontE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	.type	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv, @function
_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv:
.LFB2290:
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
.LFE2290:
	.size	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv, .-_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	.section	.text._ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E:
.LFB2291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L187
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L190
.L187:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L189
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L189:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L190:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP9_TTF_FontEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP9_TTF_FontEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9_TTF_FontED2Ev,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontED2Ev
	.type	_ZN3neo5arrayIP9_TTF_FontED2Ev, @function
_ZN3neo5arrayIP9_TTF_FontED2Ev:
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
	jmp	.L192
.L193:
	addq	$1, -8(%rbp)
.L192:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L193
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
	.size	_ZN3neo5arrayIP9_TTF_FontED2Ev, .-_ZN3neo5arrayIP9_TTF_FontED2Ev
	.weak	_ZN3neo5arrayIP9_TTF_FontED1Ev
	.set	_ZN3neo5arrayIP9_TTF_FontED1Ev,_ZN3neo5arrayIP9_TTF_FontED2Ev
	.section	.text._ZNKSt16initializer_listIP10SDL_CursorE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	.type	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv, @function
_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv:
.LFB2297:
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
.LFE2297:
	.size	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv, .-_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	.section	.text._ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E:
.LFB2298:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L197
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L200
.L197:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L199
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L199:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L200:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2298:
	.size	_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP10SDL_CursorEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP10SDL_CursorEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP11SDL_TextureE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	.type	_ZN3neo5arrayIP11SDL_TextureE6LengthEv, @function
_ZN3neo5arrayIP11SDL_TextureE6LengthEv:
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
	.size	_ZN3neo5arrayIP11SDL_TextureE6LengthEv, .-_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	.section	.rodata
	.align 8
.LC21:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureEixEy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEixEy
	.type	_ZN3neo5arrayIP11SDL_TextureEixEy, @function
_ZN3neo5arrayIP11SDL_TextureEixEy:
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
	jb	.L204
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L204:
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
	.size	_ZN3neo5arrayIP11SDL_TextureEixEy, .-_ZN3neo5arrayIP11SDL_TextureEixEy
	.section	.rodata
	.align 8
.LC22:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E:
.LFB2305:
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
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L207
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
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
	je	.L208
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L208:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L207:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2305:
	.size	_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E
	.section	.rodata
	.align 8
.LC23:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC24:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC25:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
	.type	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy, @function
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy:
.LFB2306:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L211
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L211:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L212
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L212:
	cmpq	$0, -40(%rbp)
	je	.L213
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L214
.L215:
	addq	$1, -16(%rbp)
.L214:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L215
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L216
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L213
.L216:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L217
.L218:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L217:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L218
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L213
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L213:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2306:
	.size	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy, .-_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2307:
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
.LFE2307:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2308:
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
	jb	.L223
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L223:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2308:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv:
.LFB2309:
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
.LFE2309:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy:
.LFB2310:
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
	jb	.L228
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L228:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2310:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.section	.text._ZN3neo5arrayIP9Mix_ChunkE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.type	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, @function
_ZN3neo5arrayIP9Mix_ChunkE6LengthEv:
.LFB2311:
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
.LFE2311:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, .-_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEixEy,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEixEy
	.type	_ZN3neo5arrayIP9Mix_ChunkEixEy, @function
_ZN3neo5arrayIP9Mix_ChunkEixEy:
.LFB2312:
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
	jb	.L233
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L233:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2312:
	.size	_ZN3neo5arrayIP9Mix_ChunkEixEy, .-_ZN3neo5arrayIP9Mix_ChunkEixEy
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E:
.LFB2313:
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
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L236
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
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
	je	.L237
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L237:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L236:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2313:
	.size	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy:
.LFB2314:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L240
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L240:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L241
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L241:
	cmpq	$0, -40(%rbp)
	je	.L242
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L243
.L244:
	addq	$1, -16(%rbp)
.L243:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L244
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L245
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L242
.L245:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L246
.L247:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L246:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L247
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L242
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L242:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2314:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
	.section	.text._ZN3neo5arrayIP9_TTF_FontE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.type	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, @function
_ZN3neo5arrayIP9_TTF_FontE6LengthEv:
.LFB2315:
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
.LFE2315:
	.size	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, .-_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.section	.text._ZN3neo5arrayIP9_TTF_FontEixEy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEixEy
	.type	_ZN3neo5arrayIP9_TTF_FontEixEy, @function
_ZN3neo5arrayIP9_TTF_FontEixEy:
.LFB2316:
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
	jb	.L252
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L252:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2316:
	.size	_ZN3neo5arrayIP9_TTF_FontEixEy, .-_ZN3neo5arrayIP9_TTF_FontEixEy
	.section	.text._ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E:
.LFB2317:
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
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L255
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
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
	je	.L256
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L256:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L255:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2317:
	.size	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9_TTF_FontE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy:
.LFB2318:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L259
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L259:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L260
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L260:
	cmpq	$0, -40(%rbp)
	je	.L261
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L262
.L263:
	addq	$1, -16(%rbp)
.L262:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L263
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L264
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L261
.L264:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L265
.L266:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L265:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L266
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L261
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L261:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2318:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv:
.LFB2319:
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
.LFE2319:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy:
.LFB2320:
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
	jb	.L271
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L271:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2320:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.section	.text._ZN3neo5arrayIP10SDL_CursorE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	.type	_ZN3neo5arrayIP10SDL_CursorE6LengthEv, @function
_ZN3neo5arrayIP10SDL_CursorE6LengthEv:
.LFB2321:
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
.LFE2321:
	.size	_ZN3neo5arrayIP10SDL_CursorE6LengthEv, .-_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	.section	.text._ZN3neo5arrayIP10SDL_CursorEixEy,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEixEy
	.type	_ZN3neo5arrayIP10SDL_CursorEixEy, @function
_ZN3neo5arrayIP10SDL_CursorEixEy:
.LFB2322:
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
	jb	.L276
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L276:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2322:
	.size	_ZN3neo5arrayIP10SDL_CursorEixEy, .-_ZN3neo5arrayIP10SDL_CursorEixEy
	.section	.text._ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E:
.LFB2323:
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
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L279
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
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
	je	.L280
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L280:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r13
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	movq	%r13, %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L279:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2323:
	.size	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP10SDL_CursorE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
	.type	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy, @function
_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy:
.LFB2324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L283
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L283:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L284
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L284:
	cmpq	$0, -40(%rbp)
	je	.L285
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L286
.L287:
	addq	$1, -16(%rbp)
.L286:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L287
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L288
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L285
.L288:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L289
.L290:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addq	$1, -8(%rbp)
.L289:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L290
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L285
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L285:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2324:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
	.section	.text._ZNKSt16initializer_listIP11SDL_TextureE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP11SDL_TextureE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	.type	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv, @function
_ZNKSt16initializer_listIP11SDL_TextureE5beginEv:
.LFB2375:
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
.LFE2375:
	.size	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv, .-_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	.section	.text._ZNKSt16initializer_listIP9Mix_ChunkE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	.type	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv, @function
_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv:
.LFB2376:
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
.LFE2376:
	.size	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv, .-_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	.section	.text._ZNKSt16initializer_listIP9_TTF_FontE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP9_TTF_FontE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	.type	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv, @function
_ZNKSt16initializer_listIP9_TTF_FontE5beginEv:
.LFB2377:
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
.LFE2377:
	.size	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv, .-_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	.section	.text._ZNKSt16initializer_listIP10SDL_CursorE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP10SDL_CursorE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv
	.type	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv, @function
_ZNKSt16initializer_listIP10SDL_CursorE5beginEv:
.LFB2378:
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
.LFE2378:
	.size	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv, .-_ZNKSt16initializer_listIP10SDL_CursorE5beginEv
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
