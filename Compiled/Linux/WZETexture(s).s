	.file	"WZETexture(s).cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC2:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0:
.LFB8345:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%rbx, %rbx
	je	.L1
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L5
	cmpq	%rcx, %rsi
	jnb	.L12
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L9
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L28
.L9:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L14
	.p2align 4,,10
	.p2align 3
.L12:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L29
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L10:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L10
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L12
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L5:
	call	free@PLT
	movq	$0, 8(%r12)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8345:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_:
.LFB8145:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$1, 16(%rdi)
	movl	$8, %edi
	movq	$0, (%rsp)
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L34
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L35
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L34:
	leaq	.LC3(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8145:
	.size	_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_,_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesD2Ev
	.type	_ZN3wze6engine6actors5actor8texturesD2Ev, @function
_ZN3wze6engine6actors5actor8texturesD2Ev:
.LFB8148:
	.cfi_startproc
	movq	16(%rdi), %rdx
	movq	24(%rdi), %rax
	cmpq	$1, %rdx
	jbe	.L42
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$1, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L40:
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L38
	movl	$80, %esi
	addq	$1, %rbx
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	cmpq	%rdx, %rbx
	jb	.L40
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L40
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L42:
	movq	%rax, %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine6actors5actor8texturesD2Ev, .-_ZN3wze6engine6actors5actor8texturesD2Ev
	.globl	_ZN3wze6engine6actors5actor8texturesD1Ev
	.set	_ZN3wze6engine6actors5actor8texturesD1Ev,_ZN3wze6engine6actors5actor8texturesD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors[].textures.New(): TextureID does not exist\nParams: TextureID: %lld\n"
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC6:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC7:
	.string	"wze::engine.actors[].textures.New(): Memory allocation failed\nParams: TextureID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures3NewEy
	.type	_ZN3wze6engine6actors5actor8textures3NewEy, @function
_ZN3wze6engine6actors5actor8textures3NewEy:
.LFB8150:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L50
	movq	(%rdi), %rax
	cmpq	672(%rax), %rsi
	jnb	.L49
	movq	680(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L49
.L50:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L48
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L48
.L54:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L51
	movl	$80, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movdqu	0(%rbp), %xmm3
	movl	$384, %esi
	pxor	%xmm0, %xmm0
	movw	%si, 36(%rax)
	movl	200(%rdx), %ecx
	movupd	168(%rdx), %xmm4
	movq	%r12, 72(%rax)
	movq	24(%rbp), %rdx
	movups	%xmm3, (%rax)
	movl	%ecx, 16(%rax)
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	movabsq	$72339069014638592, %rcx
	movq	%rcx, 28(%rax)
	movups	%xmm4, 40(%rax)
	movups	%xmm0, 56(%rax)
	cmpq	16(%rbp), %rbx
	jnb	.L63
	movq	%rax, (%rdx,%rbx,8)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$80, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movdqu	0(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	movq	%r12, 72(%rax)
	movq	24(%rbp), %rdi
	movl	200(%rdx), %ecx
	movupd	168(%rdx), %xmm2
	movq	%rax, (%rsp)
	movups	%xmm1, (%rax)
	movl	%ecx, 16(%rax)
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	movabsq	$72339069014638592, %rcx
	movq	%rcx, 28(%rax)
	movl	$384, %ecx
	movw	%cx, 36(%rax)
	movups	%xmm2, 40(%rax)
	movups	%xmm0, 56(%rax)
	movq	16(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L64
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L65
	cmpq	$0, (%rdx,%rax,8)
	je	.L66
.L45:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L67
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	movq	%rbx, %rsi
.L62:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L64:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
	leaq	.LC4(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L67:
	call	__stack_chk_fail@PLT
.L66:
	leaq	.LC7(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L65:
	orq	$-1, %rsi
	jmp	.L62
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6actors5actor8textures3NewEy, .-_ZN3wze6engine6actors5actor8textures3NewEy
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].textures.Delete(): Illegal deletion of NULL Texture\nParams: ID: %lld\n"
	.align 8
.LC9:
	.string	"wze::engine.actors[].textures.Delete(): Texture does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures6DeleteEy
	.type	_ZN3wze6engine6actors5actor8textures6DeleteEy, @function
_ZN3wze6engine6actors5actor8textures6DeleteEy:
.LFB8151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rsi, %rsi
	je	.L81
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L70
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L70
	movl	$80, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L82
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L83
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
.L83:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L77:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L80
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L84
	cmpq	$1, %rsi
	jne	.L77
.L76:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
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
.L84:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L76
.L82:
	movq	%rbx, %rsi
.L80:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	leaq	.LC9(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6actors5actor8textures6DeleteEy, .-_ZN3wze6engine6actors5actor8textures6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.actors[].textures.Purge(): Texture does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE:
.LFB8152:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	movq	16(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L86
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L89:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L87
	cmpq	%rcx, %rdx
	jnb	.L88
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.L88
.L87:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L89
.L86:
	cmpq	$1, %rcx
	jbe	.L90
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L91:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L93
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L124:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L94
.L93:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L124
	cmpq	%rax, %rbx
	je	.L94
.L95:
	addq	$1, %rbp
	cmpq	%rcx, %rbp
	jb	.L91
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L125
.L121:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L94:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %rdi
	leaq	0(,%rbp,8), %r14
	testq	%rdi, %rdi
	je	.L96
	movl	$80, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rcx
	movq	24(%r13), %rdx
.L96:
	cmpq	%rcx, %rbp
	jnb	.L126
	movq	$0, (%rdx,%r14)
	jmp	.L95
.L125:
	movq	%rcx, %rax
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L104:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L123
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L127
	movq	%rsi, %rax
.L99:
	cmpq	$1, %rax
	jne	.L104
.L103:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L90:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L121
	orq	$-1, %rsi
.L123:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L127:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L103
.L88:
	leaq	.LC10(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L126:
	movq	%rbp, %rsi
	jmp	.L123
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.actors[].textures.Purge(): Texture does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE:
.LFB8155:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rsi), %rdx
	movq	16(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L129
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L130:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L129
.L132:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L130
	cmpq	%rdi, %rcx
	jnb	.L131
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L130
.L131:
	leaq	.LC11(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L129:
	cmpq	$1, %rdi
	jbe	.L133
	movq	24(%r12), %rsi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L137
	.p2align 4,,10
	.p2align 3
.L142:
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L166:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L137
.L136:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L166
	cmpq	%rax, %rdx
	je	.L137
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L141
.L168:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L142
	.p2align 4,,10
	.p2align 3
.L137:
	movq	(%rsi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L139
	movl	$80, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L139:
	cmpq	%rdi, %rbx
	jnb	.L167
	addq	$1, %rbx
	movq	$0, (%rsi,%r13)
	cmpq	%rdi, %rbx
	jb	.L168
.L141:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L169
.L163:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L169:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L148:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L170
	cmpq	$0, (%rsi,%rax,8)
	jne	.L171
	movq	%rax, %rcx
.L143:
	cmpq	$1, %rcx
	jne	.L148
.L147:
	leaq	16(%r12), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L133:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L163
	orq	$-1, %rsi
.L165:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L171:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L147
.L170:
	movq	%rax, %rsi
	jmp	.L165
.L167:
	movq	%rbx, %rsi
	jmp	.L165
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].textures[]: Illegal access to NULL Texture\nParams: ID: %lld\n"
	.align 8
.LC13:
	.string	"wze::engine.actors[].textures[]: Texture does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesixEy
	.type	_ZN3wze6engine6actors5actor8texturesixEy, @function
_ZN3wze6engine6actors5actor8texturesixEy:
.LFB8156:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L177
	cmpq	16(%rdi), %rsi
	jnb	.L174
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L174
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L174:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L177:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor8texturesixEy, .-_ZN3wze6engine6actors5actor8texturesixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.type	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y, @function
_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y:
.LFB8158:
	.cfi_startproc
	movl	200(%rdx), %eax
	movupd	168(%rdx), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%eax, 16(%rdi)
	movl	$4294967295, %eax
	movq	%rax, 20(%rdi)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rdi)
	movl	$384, %eax
	movw	%ax, 36(%rdi)
	movq	%rcx, 72(%rdi)
	movups	%xmm1, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y, .-_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.globl	_ZN3wze6engine6actors5actor8textures7textureC1EPS0_PS2_y
	.set	_ZN3wze6engine6actors5actor8textures7textureC1EPS0_PS2_y,_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetXEv
	.type	_ZN3wze6engine6actors5actor8textures7texture4GetXEv, @function
_ZN3wze6engine6actors5actor8textures7texture4GetXEv:
.LFB8160:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6actors5actor8textures7texture4GetXEv, .-_ZN3wze6engine6actors5actor8textures7texture4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.actors[].textures[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4SetXEd
	.type	_ZN3wze6engine6actors5actor8textures7texture4SetXEd, @function
_ZN3wze6engine6actors5actor8textures7texture4SetXEd:
.LFB8161:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L202
	movq	8(%rdi), %rax
	movq	%rdi, %rbx
	movsd	168(%rax), %xmm0
	ucomisd	%xmm2, %xmm0
	jp	.L194
	jne	.L194
	movq	$0x000000000, 56(%rdi)
.L187:
	pxor	%xmm0, %xmm0
.L191:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	.cfi_restore_state
	movsd	176(%rax), %xmm1
	movsd	48(%rbx), %xmm3
	ucomisd	%xmm3, %xmm1
	jp	.L195
	jne	.L195
	movq	$0x000000000, 56(%rbx)
.L192:
	movsd	176(%rax), %xmm1
	ucomisd	%xmm3, %xmm1
	jp	.L189
	je	.L187
.L189:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L195:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm1
	movsd	168(%rax), %xmm0
	movsd	%xmm1, 56(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L201
	je	.L187
.L201:
	movsd	48(%rbx), %xmm3
	jmp	.L192
.L202:
	leaq	.LC15(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor8textures7texture4SetXEd, .-_ZN3wze6engine6actors5actor8textures7texture4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEv
	.type	_ZN3wze6engine6actors5actor8textures7texture4GetYEv, @function
_ZN3wze6engine6actors5actor8textures7texture4GetYEv:
.LFB8162:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6actors5actor8textures7texture4GetYEv, .-_ZN3wze6engine6actors5actor8textures7texture4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.actors[].textures[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEd
	.type	_ZN3wze6engine6actors5actor8textures7texture4GetYEd, @function
_ZN3wze6engine6actors5actor8textures7texture4GetYEd:
.LFB8163:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L223
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	168(%rax), %xmm0
	ucomisd	%xmm2, %xmm0
	jp	.L218
	jne	.L218
	movq	$0x000000000, 56(%rdi)
.L211:
	pxor	%xmm0, %xmm0
.L215:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L218:
	.cfi_restore_state
	movsd	176(%rax), %xmm1
	ucomisd	%xmm3, %xmm1
	jp	.L219
	jne	.L219
	movq	$0x000000000, 56(%rbx)
.L216:
	movsd	176(%rax), %xmm1
	ucomisd	%xmm3, %xmm1
	jp	.L213
	je	.L211
.L213:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L219:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm1
	movsd	8(%rsp), %xmm3
	movsd	168(%rax), %xmm0
	movsd	%xmm1, 56(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L216
	jne	.L216
	jmp	.L211
.L223:
	leaq	.LC16(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor8textures7texture4GetYEd, .-_ZN3wze6engine6actors5actor8textures7texture4GetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
	.type	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv, @function
_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv:
.LFB8164:
	.cfi_startproc
	movq	72(%rdi), %rax
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv, .-_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.actors[].textures[].SetTextureID(): Texture does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
	.type	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy, @function
_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy:
.LFB8165:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L226
	movq	(%rdi), %rdx
	cmpq	672(%rdx), %rsi
	jnb	.L227
	movq	680(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L227
.L226:
	movq	%rax, 72(%rdi)
	ret
.L227:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy, .-_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
