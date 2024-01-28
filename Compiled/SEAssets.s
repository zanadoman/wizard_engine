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
	.string	"slay::engine.assets.LoadTexture(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC1:
	.string	"slay::engine.assets.LoadTexture(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC2:
	.string	"slay::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets11LoadTextureEPKc
	.type	_ZN4slay6engine6assets11LoadTextureEPKc, @function
_ZN4slay6engine6assets11LoadTextureEPKc:
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
	.size	_ZN4slay6engine6assets11LoadTextureEPKc, .-_ZN4slay6engine6assets11LoadTextureEPKc
	.section	.rodata
	.align 8
.LC3:
	.string	"slay::engine.assets.UnloadTexture(): Illegal deletion of NULL Texture\nParams: ID: %lld\n"
	.align 8
.LC4:
	.string	"slay::engine.assets.UnloadTexture(): Texture does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets13UnloadTextureEy
	.type	_ZN4slay6engine6assets13UnloadTextureEy, @function
_ZN4slay6engine6assets13UnloadTextureEy:
.LFB2200:
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
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L22
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	%rax, -64(%rbp)
	jnb	.L23
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
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
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L26:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyTexture@PLT
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	$1, %rax
	jbe	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	testb	%al, %al
	je	.L29
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	movq	%rax, -48(%rbp)
	jmp	.L30
.L33:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L50
	subq	$1, -48(%rbp)
.L30:
	cmpq	$1, -48(%rbp)
	ja	.L33
	jmp	.L32
.L50:
	nop
.L32:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
.L29:
	movq	$1, -48(%rbp)
	jmp	.L34
.L48:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L51
	movq	$1, -40(%rbp)
	jmp	.L37
.L40:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L52
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	64(%rax), %rax
	cmpq	%rax, -64(%rbp)
	sete	%al
	testb	%al, %al
	je	.L39
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	$0, 64(%rax)
	jmp	.L39
.L52:
	nop
.L39:
	addq	$1, -40(%rbp)
.L37:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L40
	movq	$1, -32(%rbp)
	jmp	.L41
.L47:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L53
	movq	$0, -24(%rbp)
	jmp	.L44
.L46:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	sete	%al
	testb	%al, %al
	je	.L45
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L45:
	addq	$1, -24(%rbp)
.L44:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L46
	jmp	.L43
.L53:
	nop
.L43:
	addq	$1, -32(%rbp)
.L41:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L47
	jmp	.L36
.L51:
	nop
.L36:
	addq	$1, -48(%rbp)
.L34:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$536, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L48
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6assets13UnloadTextureEy, .-_ZN4slay6engine6assets13UnloadTextureEy
	.section	.text._ZNKSt16initializer_listIyE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIyE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE4sizeEv
	.type	_ZNKSt16initializer_listIyE4sizeEv, @function
_ZNKSt16initializer_listIyE4sizeEv:
.LFB2202:
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
.LFE2202:
	.size	_ZNKSt16initializer_listIyE4sizeEv, .-_ZNKSt16initializer_listIyE4sizeEv
	.section	.rodata
	.align 8
.LC5:
	.string	"slay::engine.assets.PurgeTextures(): Texture does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE
	.type	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE, @function
_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L57
.L63:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L94
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L60
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-64(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L61
.L60:
	movl	$1, %eax
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	testb	%al, %al
	je	.L59
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	nop
.L59:
	addq	$1, -64(%rbp)
.L57:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -64(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L63
	movq	$1, -64(%rbp)
	jmp	.L64
.L85:
	movq	$0, -56(%rbp)
	jmp	.L65
.L68:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-56(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L95
	addq	$1, -56(%rbp)
.L65:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L68
	jmp	.L67
.L95:
	nop
.L67:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -56(%rbp)
	sete	%al
	testb	%al, %al
	je	.L69
	movq	$1, -48(%rbp)
	jmp	.L70
.L84:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L96
	movq	$1, -40(%rbp)
	jmp	.L73
.L76:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	64(%rax), %rax
	cmpq	%rax, -64(%rbp)
	sete	%al
	testb	%al, %al
	je	.L75
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	$0, 64(%rax)
	jmp	.L75
.L97:
	nop
.L75:
	addq	$1, -40(%rbp)
.L73:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L76
	movq	$1, -32(%rbp)
	jmp	.L77
.L83:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L98
	movq	$0, -24(%rbp)
	jmp	.L80
.L82:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	sete	%al
	testb	%al, %al
	je	.L81
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L81:
	addq	$1, -24(%rbp)
.L80:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L82
	jmp	.L79
.L98:
	nop
.L79:
	addq	$1, -32(%rbp)
.L77:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L83
	jmp	.L72
.L96:
	nop
.L72:
	addq	$1, -48(%rbp)
.L70:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	addq	$536, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L84
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyTexture@PLT
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	$0, (%rax)
.L69:
	addq	$1, -64(%rbp)
.L64:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	%rax, -64(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L85
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rbx
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
	jne	.L86
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	$1, %rax
	jbe	.L86
	movl	$1, %eax
	jmp	.L87
.L86:
	movl	$0, %eax
.L87:
	testb	%al, %al
	je	.L88
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	movq	%rax, -64(%rbp)
	jmp	.L89
.L92:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	-64(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L99
	subq	$1, -64(%rbp)
.L89:
	cmpq	$1, -64(%rbp)
	ja	.L92
	jmp	.L91
.L99:
	nop
.L91:
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
.L88:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE, .-_ZN4slay6engine6assets13PurgeTexturesESt16initializer_listIyE
	.section	.rodata
	.align 8
.LC6:
	.string	"slay::engine.assets.LoadSound(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC7:
	.string	"slay::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets9LoadSoundEPKc
	.type	_ZN4slay6engine6assets9LoadSoundEPKc, @function
_ZN4slay6engine6assets9LoadSoundEPKc:
.LFB2203:
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
	jne	.L101
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L101:
	movq	$1, -56(%rbp)
	jmp	.L102
.L106:
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
	je	.L103
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
	je	.L104
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L104:
	movq	-56(%rbp), %rax
	jmp	.L105
.L103:
	addq	$1, -56(%rbp)
.L102:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L106
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
	je	.L107
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L107:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
.L105:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6assets9LoadSoundEPKc, .-_ZN4slay6engine6assets9LoadSoundEPKc
	.section	.rodata
	.align 8
.LC8:
	.string	"slay::engine.assets.UnloadSound(): Illegal deletion of NULL Sound\nParams: ID: %lld\n"
	.align 8
.LC9:
	.string	"slay::engine.assets.UnloadSound(): Sound does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets11UnloadSoundEy
	.type	_ZN4slay6engine6assets11UnloadSoundEy, @function
_ZN4slay6engine6assets11UnloadSoundEy:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L110
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L110:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L111
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L112
.L111:
	movl	$1, %eax
	jmp	.L113
.L112:
	movl	$0, %eax
.L113:
	testb	%al, %al
	je	.L114
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L114:
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
	leaq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	$1, %rax
	jbe	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movl	$0, %eax
.L116:
	testb	%al, %al
	je	.L117
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	movq	%rax, -24(%rbp)
	jmp	.L118
.L121:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L123
	subq	$1, -24(%rbp)
.L118:
	cmpq	$1, -24(%rbp)
	ja	.L121
	jmp	.L120
.L123:
	nop
.L120:
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
.L117:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6assets11UnloadSoundEy, .-_ZN4slay6engine6assets11UnloadSoundEy
	.section	.rodata
	.align 8
.LC10:
	.string	"slay::assets.PurgeSounds(): Sound does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE, @function
_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE:
.LFB2205:
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
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L125
.L131:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L147
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L128
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L129
.L128:
	movl	$1, %eax
	jmp	.L130
.L129:
	movl	$0, %eax
.L130:
	testb	%al, %al
	je	.L127
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L147:
	nop
.L127:
	addq	$1, -32(%rbp)
.L125:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L131
	movq	$1, -32(%rbp)
	jmp	.L132
.L138:
	movq	$0, -24(%rbp)
	jmp	.L133
.L136:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L148
	addq	$1, -24(%rbp)
.L133:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L136
	jmp	.L135
.L148:
	nop
.L135:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	sete	%al
	testb	%al, %al
	je	.L137
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	Mix_FreeChunk@PLT
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	$0, (%rax)
.L137:
	addq	$1, -32(%rbp)
.L132:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L138
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L139
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	$1, %rax
	jbe	.L139
	movl	$1, %eax
	jmp	.L140
.L139:
	movl	$0, %eax
.L140:
	testb	%al, %al
	je	.L141
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	movq	%rax, -32(%rbp)
	jmp	.L142
.L145:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L149
	subq	$1, -32(%rbp)
.L142:
	cmpq	$1, -32(%rbp)
	ja	.L145
	jmp	.L144
.L149:
	nop
.L144:
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
.L141:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE, .-_ZN4slay6engine6assets11PurgeSoundsESt16initializer_listIyE
	.section	.rodata
	.align 8
.LC11:
	.string	"slay::engine.assets.LoadFont(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC12:
	.string	"slay::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets8LoadFontEPKch
	.type	_ZN4slay6engine6assets8LoadFontEPKch, @function
_ZN4slay6engine6assets8LoadFontEPKch:
.LFB2206:
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
	jne	.L151
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L151:
	movq	$1, -56(%rbp)
	jmp	.L152
.L156:
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
	je	.L153
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
	je	.L154
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L154:
	movq	-56(%rbp), %rax
	jmp	.L155
.L153:
	addq	$1, -56(%rbp)
.L152:
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L156
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
	je	.L157
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L157:
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
.L155:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6assets8LoadFontEPKch, .-_ZN4slay6engine6assets8LoadFontEPKch
	.section	.rodata
	.align 8
.LC13:
	.string	"slay::engine.assets.UnloadFont(): Illegal deletion of NULL Font\nParams: ID: %lld\n"
	.align 8
.LC14:
	.string	"slay::engine.assets.UnloadFont(): Font does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets10UnloadFontEy
	.type	_ZN4slay6engine6assets10UnloadFontEy, @function
_ZN4slay6engine6assets10UnloadFontEy:
.LFB2207:
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
	jne	.L160
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L160:
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L161
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L162
.L161:
	movl	$1, %eax
	jmp	.L163
.L162:
	movl	$0, %eax
.L163:
	testb	%al, %al
	je	.L164
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L164:
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
	leaq	40(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L165
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	$1, %rax
	jbe	.L165
	movl	$1, %eax
	jmp	.L166
.L165:
	movl	$0, %eax
.L166:
	testb	%al, %al
	je	.L167
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	movq	%rax, -32(%rbp)
	jmp	.L168
.L171:
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L181
	subq	$1, -32(%rbp)
.L168:
	cmpq	$1, -32(%rbp)
	ja	.L171
	jmp	.L170
.L181:
	nop
.L170:
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
.L167:
	movq	$1, -32(%rbp)
	jmp	.L172
.L179:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L182
	movq	$1, -24(%rbp)
	jmp	.L175
.L178:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L183
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L177
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	$0, 88(%rax)
	jmp	.L177
.L183:
	nop
.L177:
	addq	$1, -24(%rbp)
.L175:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L178
	jmp	.L174
.L182:
	nop
.L174:
	addq	$1, -32(%rbp)
.L172:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$536, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L179
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2207:
	.size	_ZN4slay6engine6assets10UnloadFontEy, .-_ZN4slay6engine6assets10UnloadFontEy
	.section	.rodata
	.align 8
.LC15:
	.string	"slay::engine.assets.PurgeFonts(): Font does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE, @function
_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L185
.L191:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L215
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L188
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L189
.L188:
	movl	$1, %eax
	jmp	.L190
.L189:
	movl	$0, %eax
.L190:
	testb	%al, %al
	je	.L187
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L215:
	nop
.L187:
	addq	$1, -48(%rbp)
.L185:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L191
	movq	$1, -48(%rbp)
	jmp	.L192
.L206:
	movq	$0, -40(%rbp)
	jmp	.L193
.L196:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L216
	addq	$1, -40(%rbp)
.L193:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L196
	jmp	.L195
.L216:
	nop
.L195:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -40(%rbp)
	sete	%al
	testb	%al, %al
	je	.L197
	movq	$1, -32(%rbp)
	jmp	.L198
.L205:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L217
	movq	$1, -24(%rbp)
	jmp	.L201
.L204:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L218
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	cmpq	%rax, -48(%rbp)
	sete	%al
	testb	%al, %al
	je	.L203
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	$0, 88(%rax)
	jmp	.L203
.L218:
	nop
.L203:
	addq	$1, -24(%rbp)
.L201:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L204
	jmp	.L200
.L217:
	nop
.L200:
	addq	$1, -32(%rbp)
.L198:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$536, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L205
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	TTF_CloseFont@PLT
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	$0, (%rax)
.L197:
	addq	$1, -48(%rbp)
.L192:
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L206
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L207
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	$1, %rax
	jbe	.L207
	movl	$1, %eax
	jmp	.L208
.L207:
	movl	$0, %eax
.L208:
	testb	%al, %al
	je	.L209
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	movq	%rax, -48(%rbp)
	jmp	.L210
.L213:
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	-48(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L219
	subq	$1, -48(%rbp)
.L210:
	cmpq	$1, -48(%rbp)
	ja	.L213
	jmp	.L212
.L219:
	nop
.L212:
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rbx
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
.L209:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE, .-_ZN4slay6engine6assets10PurgeFontsESt16initializer_listIyE
	.section	.rodata
	.align 8
.LC16:
	.string	"slay::engine.assets.LoadCursor(): Path must not be NULL\nParams: Path: %p\n"
	.align 8
.LC17:
	.string	"slay::engine.assets.LoadCursor(): IMG_Load() failed\nParams: Path: %s\n"
	.align 8
.LC18:
	.string	"slay::engine.assets.LoadCursor(): HotSpotX out of range\nParams: Path: %s\n"
	.align 8
.LC19:
	.string	"slay::engine.assets.LoadCursor(): HotSpotY out of range\nParams: Path: %s\n"
	.align 8
.LC20:
	.string	"slay::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets10LoadCursorEPKctt
	.type	_ZN4slay6engine6assets10LoadCursorEPKctt, @function
_ZN4slay6engine6assets10LoadCursorEPKctt:
.LFB2209:
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
	jne	.L221
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L221:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	IMG_Load@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	sete	%al
	testb	%al, %al
	je	.L222
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L222:
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movzwl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L223
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L223:
	movq	-56(%rbp), %rax
	movl	20(%rax), %edx
	movzwl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L224
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L224:
	movq	$1, -64(%rbp)
	jmp	.L225
.L229:
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
	je	.L226
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
	je	.L227
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L227:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-64(%rbp), %rax
	jmp	.L228
.L226:
	addq	$1, -64(%rbp)
.L225:
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -64(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L229
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
	je	.L230
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L230:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
.L228:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L231
	call	__stack_chk_fail@PLT
.L231:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine6assets10LoadCursorEPKctt, .-_ZN4slay6engine6assets10LoadCursorEPKctt
	.section	.rodata
	.align 8
.LC21:
	.string	"slay::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\nParams: ID: %lld\n"
	.align 8
.LC22:
	.string	"slay::engine.assets.UnloadCursor(): Cursor does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets12UnloadCursorEy
	.type	_ZN4slay6engine6assets12UnloadCursorEy, @function
_ZN4slay6engine6assets12UnloadCursorEy:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L233
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L233:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L234
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L235
.L234:
	movl	$1, %eax
	jmp	.L236
.L235:
	movl	$0, %eax
.L236:
	testb	%al, %al
	je	.L237
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L237:
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
	leaq	56(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L238
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	$1, %rax
	jbe	.L238
	movl	$1, %eax
	jmp	.L239
.L238:
	movl	$0, %eax
.L239:
	testb	%al, %al
	je	.L240
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	movq	%rax, -24(%rbp)
	jmp	.L241
.L244:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L247
	subq	$1, -24(%rbp)
.L241:
	cmpq	$1, -24(%rbp)
	ja	.L244
	jmp	.L243
.L247:
	nop
.L243:
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
.L240:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	520(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L245
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 520(%rax)
.L245:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6assets12UnloadCursorEy, .-_ZN4slay6engine6assets12UnloadCursorEy
	.section	.rodata
	.align 8
.LC23:
	.string	"slay::engine.assets.PurgeCursors(): Cursor does not exists\nParams: Keep(length) %ld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE
	.type	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE, @function
_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE:
.LFB2211:
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
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L249
.L255:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L271
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L252
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L253
.L252:
	movl	$1, %eax
	jmp	.L254
.L253:
	movl	$0, %eax
.L254:
	testb	%al, %al
	je	.L251
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L271:
	nop
.L251:
	addq	$1, -32(%rbp)
.L249:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L255
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 520(%rax)
	movq	$1, -32(%rbp)
	jmp	.L256
.L262:
	movq	$0, -24(%rbp)
	jmp	.L257
.L260:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L272
	addq	$1, -24(%rbp)
.L257:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L260
	jmp	.L259
.L272:
	nop
.L259:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	sete	%al
	testb	%al, %al
	je	.L261
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_FreeCursor@PLT
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	$0, (%rax)
.L261:
	addq	$1, -32(%rbp)
.L256:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L262
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L263
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	$1, %rax
	jbe	.L263
	movl	$1, %eax
	jmp	.L264
.L263:
	movl	$0, %eax
.L264:
	testb	%al, %al
	je	.L265
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	movq	%rax, -32(%rbp)
	jmp	.L266
.L269:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L273
	subq	$1, -32(%rbp)
.L266:
	cmpq	$1, -32(%rbp)
	ja	.L269
	jmp	.L268
.L273:
	nop
.L268:
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
.L265:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE, .-_ZN4slay6engine6assets12PurgeCursorsESt16initializer_listIyE
	.section	.text._ZNKSt16initializer_listIP11SDL_TextureE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	.type	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv, @function
_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv:
.LFB2277:
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
.LFE2277:
	.size	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv, .-_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	.section	.rodata
	.align 8
.LC24:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E:
.LFB2278:
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
	je	.L277
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L280
.L277:
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
	je	.L279
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L279:
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
.L280:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2278:
	.size	_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP11SDL_TextureEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP11SDL_TextureEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP11SDL_TextureEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP11SDL_TextureED2Ev,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureED2Ev
	.type	_ZN3neo5arrayIP11SDL_TextureED2Ev, @function
_ZN3neo5arrayIP11SDL_TextureED2Ev:
.LFB2281:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L282
.L283:
	addq	$1, -8(%rbp)
.L282:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L283
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2281:
	.size	_ZN3neo5arrayIP11SDL_TextureED2Ev, .-_ZN3neo5arrayIP11SDL_TextureED2Ev
	.weak	_ZN3neo5arrayIP11SDL_TextureED1Ev
	.set	_ZN3neo5arrayIP11SDL_TextureED1Ev,_ZN3neo5arrayIP11SDL_TextureED2Ev
	.section	.text._ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	.type	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv, @function
_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv:
.LFB2284:
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
.LFE2284:
	.size	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv, .-_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E:
.LFB2285:
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
	je	.L287
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L290
.L287:
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
	je	.L289
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L289:
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
.L290:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2285:
	.size	_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP9Mix_ChunkEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP9Mix_ChunkEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP9Mix_ChunkEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9Mix_ChunkED2Ev,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.type	_ZN3neo5arrayIP9Mix_ChunkED2Ev, @function
_ZN3neo5arrayIP9Mix_ChunkED2Ev:
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
	jmp	.L292
.L293:
	addq	$1, -8(%rbp)
.L292:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L293
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
	.size	_ZN3neo5arrayIP9Mix_ChunkED2Ev, .-_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.weak	_ZN3neo5arrayIP9Mix_ChunkED1Ev
	.set	_ZN3neo5arrayIP9Mix_ChunkED1Ev,_ZN3neo5arrayIP9Mix_ChunkED2Ev
	.section	.text._ZNKSt16initializer_listIP9_TTF_FontE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	.type	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv, @function
_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv:
.LFB2291:
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
.LFE2291:
	.size	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv, .-_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	.section	.text._ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E:
.LFB2292:
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
	je	.L297
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L300
.L297:
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
	je	.L299
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L299:
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
.L300:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP9_TTF_FontEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP9_TTF_FontEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP9_TTF_FontEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9_TTF_FontED2Ev,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontED2Ev
	.type	_ZN3neo5arrayIP9_TTF_FontED2Ev, @function
_ZN3neo5arrayIP9_TTF_FontED2Ev:
.LFB2295:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L302
.L303:
	addq	$1, -8(%rbp)
.L302:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L303
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2295:
	.size	_ZN3neo5arrayIP9_TTF_FontED2Ev, .-_ZN3neo5arrayIP9_TTF_FontED2Ev
	.weak	_ZN3neo5arrayIP9_TTF_FontED1Ev
	.set	_ZN3neo5arrayIP9_TTF_FontED1Ev,_ZN3neo5arrayIP9_TTF_FontED2Ev
	.section	.text._ZNKSt16initializer_listIP10SDL_CursorE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	.type	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv, @function
_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv:
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
	.size	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv, .-_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	.section	.text._ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEC5ESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E:
.LFB2299:
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
	je	.L307
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L310
.L307:
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
	je	.L309
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L309:
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
.L310:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2299:
	.size	_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E, .-_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E
	.weak	_ZN3neo5arrayIP10SDL_CursorEC1ESt16initializer_listIS2_E
	.set	_ZN3neo5arrayIP10SDL_CursorEC1ESt16initializer_listIS2_E,_ZN3neo5arrayIP10SDL_CursorEC2ESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP11SDL_TextureE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	.type	_ZN3neo5arrayIP11SDL_TextureE6LengthEv, @function
_ZN3neo5arrayIP11SDL_TextureE6LengthEv:
.LFB2304:
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
.LFE2304:
	.size	_ZN3neo5arrayIP11SDL_TextureE6LengthEv, .-_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	.section	.rodata
	.align 8
.LC25:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureEixEy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEixEy
	.type	_ZN3neo5arrayIP11SDL_TextureEixEy, @function
_ZN3neo5arrayIP11SDL_TextureEixEy:
.LFB2305:
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
	jb	.L314
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L314:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2305:
	.size	_ZN3neo5arrayIP11SDL_TextureEixEy, .-_ZN3neo5arrayIP11SDL_TextureEixEy
	.section	.rodata
	.align 8
.LC26:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E:
.LFB2306:
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
	je	.L317
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
	je	.L318
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP11SDL_TextureE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L318:
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
.L317:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2306:
	.size	_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP11SDL_TextureEpLESt16initializer_listIS2_E
	.section	.rodata
	.align 8
.LC27:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC28:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC29:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayIP11SDL_TextureE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
	.type	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy, @function
_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy:
.LFB2307:
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
	jb	.L321
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L321:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L322
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L322:
	cmpq	$0, -40(%rbp)
	je	.L323
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L324
.L325:
	addq	$1, -16(%rbp)
.L324:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L325
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
	je	.L326
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L323
.L326:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L327
.L328:
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
.L327:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L328
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
	je	.L323
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L323:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2307:
	.size	_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy, .-_ZN3neo5arrayIP11SDL_TextureE6RemoveEyy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2308:
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
.LFE2308:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2309:
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
	jb	.L333
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L333:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2309:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv:
.LFB2310:
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
.LFE2310:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy:
.LFB2311:
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
	jb	.L338
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L338:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2311:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv:
.LFB2312:
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
.LFE2312:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy:
.LFB2313:
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
	jb	.L343
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L343:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2313:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.section	.text._ZNKSt16initializer_listIyE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIyE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE5beginEv
	.type	_ZNKSt16initializer_listIyE5beginEv, @function
_ZNKSt16initializer_listIyE5beginEv:
.LFB2314:
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
.LFE2314:
	.size	_ZNKSt16initializer_listIyE5beginEv, .-_ZNKSt16initializer_listIyE5beginEv
	.section	.text._ZN3neo5arrayIP9Mix_ChunkE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.type	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, @function
_ZN3neo5arrayIP9Mix_ChunkE6LengthEv:
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
	.size	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, .-_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEixEy,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEixEy
	.type	_ZN3neo5arrayIP9Mix_ChunkEixEy, @function
_ZN3neo5arrayIP9Mix_ChunkEixEy:
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
	jb	.L350
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L350:
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
	.size	_ZN3neo5arrayIP9Mix_ChunkEixEy, .-_ZN3neo5arrayIP9Mix_ChunkEixEy
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E:
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
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L353
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
	je	.L354
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9Mix_ChunkE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L354:
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
.L353:
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
	.size	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy:
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
	jb	.L357
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L357:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L358
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L358:
	cmpq	$0, -40(%rbp)
	je	.L359
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L360
.L361:
	addq	$1, -16(%rbp)
.L360:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L361
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
	je	.L362
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L359
.L362:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L363
.L364:
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
.L363:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L364
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
	je	.L359
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L359:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2318:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
	.section	.text._ZN3neo5arrayIP9_TTF_FontE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.type	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, @function
_ZN3neo5arrayIP9_TTF_FontE6LengthEv:
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
	.size	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, .-_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.section	.text._ZN3neo5arrayIP9_TTF_FontEixEy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEixEy
	.type	_ZN3neo5arrayIP9_TTF_FontEixEy, @function
_ZN3neo5arrayIP9_TTF_FontEixEy:
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
	jb	.L369
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L369:
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
	.size	_ZN3neo5arrayIP9_TTF_FontEixEy, .-_ZN3neo5arrayIP9_TTF_FontEixEy
	.section	.text._ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E:
.LFB2321:
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
	je	.L372
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
	je	.L373
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP9_TTF_FontE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L373:
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
.L372:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2321:
	.size	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9_TTF_FontE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy:
.LFB2322:
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
	jb	.L376
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L376:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L377
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L377:
	cmpq	$0, -40(%rbp)
	je	.L378
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L379
.L380:
	addq	$1, -16(%rbp)
.L379:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L380
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
	je	.L381
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L378
.L381:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L382
.L383:
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
.L382:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L383
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
	je	.L378
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L378:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2322:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv:
.LFB2323:
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
.LFE2323:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy:
.LFB2324:
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
	jb	.L388
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L388:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2324:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.section	.text._ZN3neo5arrayIP10SDL_CursorE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	.type	_ZN3neo5arrayIP10SDL_CursorE6LengthEv, @function
_ZN3neo5arrayIP10SDL_CursorE6LengthEv:
.LFB2325:
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
.LFE2325:
	.size	_ZN3neo5arrayIP10SDL_CursorE6LengthEv, .-_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	.section	.text._ZN3neo5arrayIP10SDL_CursorEixEy,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEixEy
	.type	_ZN3neo5arrayIP10SDL_CursorEixEy, @function
_ZN3neo5arrayIP10SDL_CursorEixEy:
.LFB2326:
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
	jb	.L393
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L393:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2326:
	.size	_ZN3neo5arrayIP10SDL_CursorEixEy, .-_ZN3neo5arrayIP10SDL_CursorEixEy
	.section	.text._ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E:
.LFB2327:
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
	je	.L396
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
	je	.L397
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIP10SDL_CursorE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L397:
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
.L396:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2327:
	.size	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP10SDL_CursorE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
	.type	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy, @function
_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy:
.LFB2328:
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
	jb	.L400
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L400:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L401
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L401:
	cmpq	$0, -40(%rbp)
	je	.L402
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L403
.L404:
	addq	$1, -16(%rbp)
.L403:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L404
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
	je	.L405
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L402
.L405:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L406
.L407:
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
.L406:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L407
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
	je	.L402
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L402:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2328:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
	.section	.text._ZNKSt16initializer_listIP11SDL_TextureE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP11SDL_TextureE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	.type	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv, @function
_ZNKSt16initializer_listIP11SDL_TextureE5beginEv:
.LFB2379:
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
.LFE2379:
	.size	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv, .-_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	.section	.text._ZNKSt16initializer_listIP9Mix_ChunkE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	.type	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv, @function
_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv:
.LFB2380:
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
.LFE2380:
	.size	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv, .-_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	.section	.text._ZNKSt16initializer_listIP9_TTF_FontE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP9_TTF_FontE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	.type	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv, @function
_ZNKSt16initializer_listIP9_TTF_FontE5beginEv:
.LFB2381:
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
.LFE2381:
	.size	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv, .-_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	.section	.text._ZNKSt16initializer_listIP10SDL_CursorE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP10SDL_CursorE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv
	.type	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv, @function
_ZNKSt16initializer_listIP10SDL_CursorE5beginEv:
.LFB2382:
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
.LFE2382:
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
