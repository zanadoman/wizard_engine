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
	jne	.L27
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L30
.L33:
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
	jne	.L43
	subq	$1, -32(%rbp)
.L30:
	cmpq	$0, -32(%rbp)
	jne	.L33
	jmp	.L32
.L43:
	nop
.L32:
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
.L29:
	movq	$1, -32(%rbp)
	jmp	.L34
.L41:
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
	jne	.L44
	movq	$1, -24(%rbp)
	jmp	.L37
.L40:
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
	jne	.L45
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
	je	.L39
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
	jmp	.L39
.L45:
	nop
.L39:
	addq	$1, -24(%rbp)
.L37:
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
	jne	.L40
	jmp	.L36
.L44:
	nop
.L36:
	addq	$1, -32(%rbp)
.L34:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L41
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
	jmp	.L49
.L55:
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
	jne	.L79
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jnb	.L52
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L53
.L52:
	movl	$1, %eax
	jmp	.L54
.L53:
	movl	$0, %eax
.L54:
	testb	%al, %al
	je	.L51
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L79:
	nop
.L51:
	addq	$1, -48(%rbp)
.L49:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L55
	movq	$1, -48(%rbp)
	jmp	.L56
.L70:
	movq	$0, -40(%rbp)
	jmp	.L57
.L60:
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
	jne	.L80
	addq	$1, -40(%rbp)
.L57:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L60
	jmp	.L59
.L80:
	nop
.L59:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -40(%rbp)
	sete	%al
	testb	%al, %al
	je	.L61
	movq	$1, -32(%rbp)
	jmp	.L62
.L69:
	movq	-56(%rbp), %rax
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
	jne	.L81
	movq	$1, -24(%rbp)
	jmp	.L65
.L68:
	movq	-56(%rbp), %rax
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
	jne	.L82
	movq	-56(%rbp), %rax
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
	je	.L67
	movq	-56(%rbp), %rax
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
	jmp	.L67
.L82:
	nop
.L67:
	addq	$1, -24(%rbp)
.L65:
	movq	-56(%rbp), %rax
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
	jne	.L68
	jmp	.L64
.L81:
	nop
.L64:
	addq	$1, -32(%rbp)
.L62:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L69
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyTexture@PLT
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	$0, (%rax)
.L61:
	addq	$1, -48(%rbp)
.L56:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L70
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
	jne	.L71
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	cmpq	$1, %rax
	jbe	.L71
	movl	$1, %eax
	jmp	.L72
.L71:
	movl	$0, %eax
.L72:
	testb	%al, %al
	je	.L73
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureE6LengthEv
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.L74
.L77:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L83
	subq	$1, -48(%rbp)
.L74:
	cmpq	$0, -48(%rbp)
	jne	.L77
	jmp	.L76
.L83:
	nop
.L76:
	addq	$1, -48(%rbp)
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
.L73:
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
	jne	.L85
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L85:
	movq	$1, -56(%rbp)
	jmp	.L86
.L90:
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
	je	.L87
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
	je	.L88
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L88:
	movq	-56(%rbp), %rax
	jmp	.L89
.L87:
	addq	$1, -56(%rbp)
.L86:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L90
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
	je	.L91
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
.L89:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
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
	jne	.L94
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L95
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L96
.L95:
	movl	$1, %eax
	jmp	.L97
.L96:
	movl	$0, %eax
.L97:
	testb	%al, %al
	je	.L98
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
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
	jne	.L99
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	$1, %rax
	jbe	.L99
	movl	$1, %eax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	testb	%al, %al
	je	.L101
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L102
.L105:
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
	jne	.L107
	subq	$1, -24(%rbp)
.L102:
	cmpq	$0, -24(%rbp)
	jne	.L105
	jmp	.L104
.L107:
	nop
.L104:
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
.L101:
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
	jmp	.L109
.L115:
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
	jne	.L131
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
	jnb	.L112
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
	jne	.L113
.L112:
	movl	$1, %eax
	jmp	.L114
.L113:
	movl	$0, %eax
.L114:
	testb	%al, %al
	je	.L111
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
.L131:
	nop
.L111:
	addq	$1, -32(%rbp)
.L109:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L115
	movq	$1, -32(%rbp)
	jmp	.L116
.L122:
	movq	$0, -24(%rbp)
	jmp	.L117
.L120:
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
	jne	.L132
	addq	$1, -24(%rbp)
.L117:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L120
	jmp	.L119
.L132:
	nop
.L119:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	sete	%al
	testb	%al, %al
	je	.L121
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
.L121:
	addq	$1, -32(%rbp)
.L116:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L122
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
	jne	.L123
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	cmpq	$1, %rax
	jbe	.L123
	movl	$1, %eax
	jmp	.L124
.L123:
	movl	$0, %eax
.L124:
	testb	%al, %al
	je	.L125
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L126
.L129:
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9Mix_ChunkEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L133
	subq	$1, -32(%rbp)
.L126:
	cmpq	$0, -32(%rbp)
	jne	.L129
	jmp	.L128
.L133:
	nop
.L128:
	addq	$1, -32(%rbp)
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
.L125:
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
	jne	.L135
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L135:
	movq	$1, -56(%rbp)
	jmp	.L136
.L140:
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
	je	.L137
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
	je	.L138
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L138:
	movq	-56(%rbp), %rax
	jmp	.L139
.L137:
	addq	$1, -56(%rbp)
.L136:
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -56(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L140
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
	je	.L141
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L141:
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
.L139:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L142
	call	__stack_chk_fail@PLT
.L142:
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
	jne	.L144
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L144:
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L145
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L146
.L145:
	movl	$1, %eax
	jmp	.L147
.L146:
	movl	$0, %eax
.L147:
	testb	%al, %al
	je	.L148
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L148:
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
	jne	.L149
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	$1, %rax
	jbe	.L149
	movl	$1, %eax
	jmp	.L150
.L149:
	movl	$0, %eax
.L150:
	testb	%al, %al
	je	.L151
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L152
.L155:
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
	jne	.L165
	subq	$1, -32(%rbp)
.L152:
	cmpq	$0, -32(%rbp)
	jne	.L155
	jmp	.L154
.L165:
	nop
.L154:
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
.L151:
	movq	$1, -32(%rbp)
	jmp	.L156
.L163:
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
	jne	.L166
	movq	$1, -24(%rbp)
	jmp	.L159
.L162:
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
	jne	.L167
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
	je	.L161
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
	jmp	.L161
.L167:
	nop
.L161:
	addq	$1, -24(%rbp)
.L159:
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
	jne	.L162
	jmp	.L158
.L166:
	nop
.L158:
	addq	$1, -32(%rbp)
.L156:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L163
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
	jmp	.L169
.L175:
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
	jne	.L199
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
	jnb	.L172
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
	jne	.L173
.L172:
	movl	$1, %eax
	jmp	.L174
.L173:
	movl	$0, %eax
.L174:
	testb	%al, %al
	je	.L171
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
.L199:
	nop
.L171:
	addq	$1, -48(%rbp)
.L169:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L175
	movq	$1, -48(%rbp)
	jmp	.L176
.L190:
	movq	$0, -40(%rbp)
	jmp	.L177
.L180:
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
	jne	.L200
	addq	$1, -40(%rbp)
.L177:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L180
	jmp	.L179
.L200:
	nop
.L179:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -40(%rbp)
	sete	%al
	testb	%al, %al
	je	.L181
	movq	$1, -32(%rbp)
	jmp	.L182
.L189:
	movq	-56(%rbp), %rax
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
	jne	.L201
	movq	$1, -24(%rbp)
	jmp	.L185
.L188:
	movq	-56(%rbp), %rax
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
	jne	.L202
	movq	-56(%rbp), %rax
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
	je	.L187
	movq	-56(%rbp), %rax
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
	jmp	.L187
.L202:
	nop
.L187:
	addq	$1, -24(%rbp)
.L185:
	movq	-56(%rbp), %rax
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
	jne	.L188
	jmp	.L184
.L201:
	nop
.L184:
	addq	$1, -32(%rbp)
.L182:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L189
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
.L181:
	addq	$1, -48(%rbp)
.L176:
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	%rax, -48(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L190
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
	jne	.L191
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	cmpq	$1, %rax
	jbe	.L191
	movl	$1, %eax
	jmp	.L192
.L191:
	movl	$0, %eax
.L192:
	testb	%al, %al
	je	.L193
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.L194
.L197:
	movq	-56(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L203
	subq	$1, -48(%rbp)
.L194:
	cmpq	$0, -48(%rbp)
	jne	.L197
	jmp	.L196
.L203:
	nop
.L196:
	addq	$1, -48(%rbp)
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
.L193:
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
	jne	.L205
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L205:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	IMG_Load@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	sete	%al
	testb	%al, %al
	je	.L206
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L206:
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movzwl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L207
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L207:
	movq	-56(%rbp), %rax
	movl	20(%rax), %edx
	movzwl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L208
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L208:
	movq	$1, -64(%rbp)
	jmp	.L209
.L213:
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
	je	.L210
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
	je	.L211
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L211:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-64(%rbp), %rax
	jmp	.L212
.L210:
	addq	$1, -64(%rbp)
.L209:
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -64(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L213
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
	je	.L214
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L214:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
	movq	-72(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
.L212:
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L215
	call	__stack_chk_fail@PLT
.L215:
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
	jne	.L217
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L217:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -48(%rbp)
	jnb	.L218
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L219
.L218:
	movl	$1, %eax
	jmp	.L220
.L219:
	movl	$0, %eax
.L220:
	testb	%al, %al
	je	.L221
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L221:
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
	jne	.L222
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	$1, %rax
	jbe	.L222
	movl	$1, %eax
	jmp	.L223
.L222:
	movl	$0, %eax
.L223:
	testb	%al, %al
	je	.L224
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L225
.L228:
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
	jne	.L231
	subq	$1, -24(%rbp)
.L225:
	cmpq	$0, -24(%rbp)
	jne	.L228
	jmp	.L227
.L231:
	nop
.L227:
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
.L224:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	512(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L229
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 512(%rax)
.L229:
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
	jmp	.L233
.L239:
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
	jne	.L255
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
	jnb	.L236
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
	jne	.L237
.L236:
	movl	$1, %eax
	jmp	.L238
.L237:
	movl	$0, %eax
.L238:
	testb	%al, %al
	je	.L235
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
.L255:
	nop
.L235:
	addq	$1, -32(%rbp)
.L233:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L239
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 512(%rax)
	movq	$1, -32(%rbp)
	jmp	.L240
.L246:
	movq	$0, -24(%rbp)
	jmp	.L241
.L244:
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
	jne	.L256
	addq	$1, -24(%rbp)
.L241:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L244
	jmp	.L243
.L256:
	nop
.L243:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, -24(%rbp)
	sete	%al
	testb	%al, %al
	je	.L245
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
.L245:
	addq	$1, -32(%rbp)
.L240:
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L246
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
	jne	.L247
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	cmpq	$1, %rax
	jbe	.L247
	movl	$1, %eax
	jmp	.L248
.L247:
	movl	$0, %eax
.L248:
	testb	%al, %al
	je	.L249
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L250
.L253:
	movq	-40(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP10SDL_CursorEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L257
	subq	$1, -32(%rbp)
.L250:
	cmpq	$0, -32(%rbp)
	jne	.L253
	jmp	.L252
.L257:
	nop
.L252:
	addq	$1, -32(%rbp)
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
.L249:
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
	je	.L261
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L264
.L261:
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
	je	.L263
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
.L263:
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
.L264:
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
	jmp	.L266
.L267:
	addq	$1, -8(%rbp)
.L266:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L267
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
	je	.L271
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L274
.L271:
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
	je	.L273
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
.L273:
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
.L274:
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
	jmp	.L276
.L277:
	addq	$1, -8(%rbp)
.L276:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L277
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
	je	.L281
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L284
.L281:
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
	je	.L283
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
.L283:
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
.L284:
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
	jmp	.L286
.L287:
	addq	$1, -8(%rbp)
.L286:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L287
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
	je	.L291
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L294
.L291:
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
	je	.L293
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
.L293:
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
.L294:
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
	jb	.L298
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L298:
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
	je	.L301
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
	je	.L302
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
.L302:
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
.L301:
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
	jb	.L305
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L305:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L306
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L306:
	cmpq	$0, -40(%rbp)
	je	.L307
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L308
.L309:
	addq	$1, -16(%rbp)
.L308:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L309
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
	je	.L310
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L307
.L310:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L311
.L312:
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
.L311:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L312
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
	je	.L307
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L307:
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
	jb	.L317
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L317:
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
	jb	.L322
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L322:
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
	.section	.text._ZNKSt16initializer_listIyE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIyE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE5beginEv
	.type	_ZNKSt16initializer_listIyE5beginEv, @function
_ZNKSt16initializer_listIyE5beginEv:
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
	.size	_ZNKSt16initializer_listIyE5beginEv, .-_ZNKSt16initializer_listIyE5beginEv
	.section	.text._ZN3neo5arrayIP9Mix_ChunkE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.type	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, @function
_ZN3neo5arrayIP9Mix_ChunkE6LengthEv:
.LFB2313:
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
.LFE2313:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6LengthEv, .-_ZN3neo5arrayIP9Mix_ChunkE6LengthEv
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEixEy,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEixEy
	.type	_ZN3neo5arrayIP9Mix_ChunkEixEy, @function
_ZN3neo5arrayIP9Mix_ChunkEixEy:
.LFB2314:
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
	jb	.L329
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L329:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2314:
	.size	_ZN3neo5arrayIP9Mix_ChunkEixEy, .-_ZN3neo5arrayIP9Mix_ChunkEixEy
	.section	.text._ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E:
.LFB2315:
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
	je	.L332
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
	je	.L333
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
.L333:
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
.L332:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2315:
	.size	_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9Mix_ChunkEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
	.type	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy, @function
_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy:
.LFB2316:
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
	jb	.L336
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L336:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L337
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L337:
	cmpq	$0, -40(%rbp)
	je	.L338
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L339
.L340:
	addq	$1, -16(%rbp)
.L339:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L340
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
	je	.L341
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L338
.L341:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L342
.L343:
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
.L342:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L343
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
	je	.L338
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L338:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2316:
	.size	_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy, .-_ZN3neo5arrayIP9Mix_ChunkE6RemoveEyy
	.section	.text._ZN3neo5arrayIP9_TTF_FontE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.type	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, @function
_ZN3neo5arrayIP9_TTF_FontE6LengthEv:
.LFB2317:
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
.LFE2317:
	.size	_ZN3neo5arrayIP9_TTF_FontE6LengthEv, .-_ZN3neo5arrayIP9_TTF_FontE6LengthEv
	.section	.text._ZN3neo5arrayIP9_TTF_FontEixEy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEixEy
	.type	_ZN3neo5arrayIP9_TTF_FontEixEy, @function
_ZN3neo5arrayIP9_TTF_FontEixEy:
.LFB2318:
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
	jb	.L348
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L348:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2318:
	.size	_ZN3neo5arrayIP9_TTF_FontEixEy, .-_ZN3neo5arrayIP9_TTF_FontEixEy
	.section	.text._ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E:
.LFB2319:
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
	je	.L351
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
	je	.L352
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
.L352:
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
.L351:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2319:
	.size	_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP9_TTF_FontEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP9_TTF_FontE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
	.type	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy, @function
_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy:
.LFB2320:
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
	jb	.L355
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L355:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L356
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L356:
	cmpq	$0, -40(%rbp)
	je	.L357
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L358
.L359:
	addq	$1, -16(%rbp)
.L358:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L359
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
	je	.L360
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L357
.L360:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L361
.L362:
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
.L361:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L362
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
	je	.L357
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L357:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2320:
	.size	_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy, .-_ZN3neo5arrayIP9_TTF_FontE6RemoveEyy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy:
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
	jb	.L367
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L367:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.section	.text._ZN3neo5arrayIP10SDL_CursorE6LengthEv,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	.type	_ZN3neo5arrayIP10SDL_CursorE6LengthEv, @function
_ZN3neo5arrayIP10SDL_CursorE6LengthEv:
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
	.size	_ZN3neo5arrayIP10SDL_CursorE6LengthEv, .-_ZN3neo5arrayIP10SDL_CursorE6LengthEv
	.section	.text._ZN3neo5arrayIP10SDL_CursorEixEy,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEixEy
	.type	_ZN3neo5arrayIP10SDL_CursorEixEy, @function
_ZN3neo5arrayIP10SDL_CursorEixEy:
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
	jb	.L372
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L372:
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
	.size	_ZN3neo5arrayIP10SDL_CursorEixEy, .-_ZN3neo5arrayIP10SDL_CursorEixEy
	.section	.text._ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E
	.type	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E, @function
_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E:
.LFB2325:
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
	je	.L375
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
	je	.L376
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
.L376:
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
.L375:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2325:
	.size	_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E, .-_ZN3neo5arrayIP10SDL_CursorEpLESt16initializer_listIS2_E
	.section	.text._ZN3neo5arrayIP10SDL_CursorE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
	.type	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy, @function
_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy:
.LFB2326:
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
	jb	.L379
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L379:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L380
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L380:
	cmpq	$0, -40(%rbp)
	je	.L381
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L382
.L383:
	addq	$1, -16(%rbp)
.L382:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L383
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
	je	.L384
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L381
.L384:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L385
.L386:
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
.L385:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L386
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
	je	.L381
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L381:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2326:
	.size	_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy, .-_ZN3neo5arrayIP10SDL_CursorE6RemoveEyy
	.section	.text._ZNKSt16initializer_listIP11SDL_TextureE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP11SDL_TextureE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	.type	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv, @function
_ZNKSt16initializer_listIP11SDL_TextureE5beginEv:
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
	.size	_ZNKSt16initializer_listIP11SDL_TextureE5beginEv, .-_ZNKSt16initializer_listIP11SDL_TextureE5beginEv
	.section	.text._ZNKSt16initializer_listIP9Mix_ChunkE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	.type	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv, @function
_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv:
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
	.size	_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv, .-_ZNKSt16initializer_listIP9Mix_ChunkE5beginEv
	.section	.text._ZNKSt16initializer_listIP9_TTF_FontE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP9_TTF_FontE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	.type	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv, @function
_ZNKSt16initializer_listIP9_TTF_FontE5beginEv:
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
	.size	_ZNKSt16initializer_listIP9_TTF_FontE5beginEv, .-_ZNKSt16initializer_listIP9_TTF_FontE5beginEv
	.section	.text._ZNKSt16initializer_listIP10SDL_CursorE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIP10SDL_CursorE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv
	.type	_ZNKSt16initializer_listIP10SDL_CursorE5beginEv, @function
_ZNKSt16initializer_listIP10SDL_CursorE5beginEv:
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
