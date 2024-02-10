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
.LFB8351:
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
.LFE8351:
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
.LFB8147:
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
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
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
.LFE8147:
	.size	_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_,_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesD2Ev
	.type	_ZN3wze6engine6actors5actor8texturesD2Ev, @function
_ZN3wze6engine6actors5actor8texturesD2Ev:
.LFB8150:
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
	movl	$88, %esi
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
.LFE8150:
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
.LFB8152:
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
	cmpq	336(%rax), %rsi
	jnb	.L49
	movq	344(%rax), %rax
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
	movl	$88, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movdqu	0(%rbp), %xmm3
	movl	$384, %esi
	pxor	%xmm0, %xmm0
	movw	%si, 36(%rax)
	movl	256(%rdx), %ecx
	movupd	224(%rdx), %xmm4
	movq	%rbx, 40(%rax)
	movq	%r12, 80(%rax)
	movq	24(%rbp), %rdx
	movl	%ecx, 16(%rax)
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	movabsq	$72339069014638592, %rcx
	movq	%rcx, 28(%rax)
	movups	%xmm3, (%rax)
	movups	%xmm4, 48(%rax)
	movups	%xmm0, 64(%rax)
	cmpq	16(%rbp), %rbx
	jnb	.L62
	movq	%rax, (%rdx,%rbx,8)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$88, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movq	16(%rbp), %rsi
	pxor	%xmm0, %xmm0
	movdqu	0(%rbp), %xmm1
	movq	24(%rbp), %rdi
	movq	%r12, 80(%rax)
	movl	256(%rdx), %ecx
	movupd	224(%rdx), %xmm2
	movq	%rsi, 40(%rax)
	addq	$1, %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	movl	%ecx, 16(%rax)
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	movabsq	$72339069014638592, %rcx
	movq	%rcx, 28(%rax)
	movl	$384, %ecx
	movw	%cx, 36(%rax)
	movups	%xmm1, (%rax)
	movups	%xmm2, 48(%rax)
	movups	%xmm0, 64(%rax)
	movq	%rax, (%rsp)
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L63
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L64
	movq	(%rdx,%rcx,8), %rax
	testq	%rax, %rax
	je	.L65
.L45:
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L66
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L62:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
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
.L66:
	call	__stack_chk_fail@PLT
.L65:
	leaq	.LC7(%rip), %rdi
	movq	%r12, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L64:
	leaq	.LC5(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor8textures3NewEy, .-_ZN3wze6engine6actors5actor8textures3NewEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures6DeleteEy
	.type	_ZN3wze6engine6actors5actor8textures6DeleteEy, @function
_ZN3wze6engine6actors5actor8textures6DeleteEy:
.LFB8153:
	.cfi_startproc
	cmpq	16(%rdi), %rsi
	jb	.L90
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L69
	movl	$88, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L91
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L69
	cmpq	$1, %rax
	je	.L69
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L75:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L92
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L93
	cmpq	$1, %rsi
	jne	.L75
.L74:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
.L69:
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
.L93:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L74
.L92:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	leaq	.LC5(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor8textures6DeleteEy, .-_ZN3wze6engine6actors5actor8textures6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE:
.LFB8154:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	16(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L95
	movq	24(%rdi), %rcx
	movq	%rdi, %r13
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L102:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L97
.L96:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L98
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L96
.L97:
	movq	(%rcx,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r14
	testq	%rdi, %rdi
	je	.L100
	movl	$88, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L100:
	cmpq	%rdx, %rbx
	jnb	.L122
	movq	$0, (%rcx,%r14)
.L98:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L102
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L123
.L119:
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
.L123:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L108:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L121
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L124
	movq	%rsi, %rax
.L103:
	cmpq	$1, %rax
	jne	.L108
.L107:
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
.L95:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L119
	orq	$-1, %rsi
.L121:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L124:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L107
.L122:
	movq	%rbx, %rsi
	jmp	.L121
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].textures.Purge(): KeepTextureIDs must not be NULL\nParams: KeepTextureIDs: %p\n"
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
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	je	.L126
	movq	16(%rdi), %rcx
	movq	%rdi, %r12
	cmpq	$1, %rcx
	jbe	.L157
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L135:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L129
.L130:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L131
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L130
	.p2align 4,,10
	.p2align 3
.L129:
	movq	(%rdi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L133
	movq	%rax, %rdi
	movl	$88, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rcx
	movq	24(%r12), %rdi
.L133:
	cmpq	%rcx, %rbx
	jnb	.L158
	movq	$0, (%rdi,%r13)
.L131:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L135
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L159
.L154:
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
.L159:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L141:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L156
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L160
	movq	%rsi, %rax
.L136:
	cmpq	$1, %rax
	jne	.L141
.L140:
	leaq	16(%r12), %rdi
	movq	%rax, %rsi
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
.L157:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L154
	orq	$-1, %rsi
.L156:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L160:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L140
.L126:
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L158:
	movq	%rbx, %rsi
	jmp	.L156
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].textures[]: Illegal access to NULL Texture\nParams: TextureID: %lld\n"
	.align 8
.LC10:
	.string	"wze::engine.actors[].textures[]: Texture does not exist\nParams: TextureID: %lld\n"
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
	je	.L166
	cmpq	16(%rdi), %rsi
	jnb	.L163
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L163
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L163:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L166:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor8texturesixEy, .-_ZN3wze6engine6actors5actor8texturesixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_yy
	.type	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_yy, @function
_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_yy:
.LFB8158:
	.cfi_startproc
	movl	256(%rdx), %eax
	movupd	224(%rdx), %xmm1
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
	movq	%rcx, 40(%rdi)
	movq	%r8, 80(%rdi)
	movups	%xmm1, 48(%rdi)
	movups	%xmm0, 64(%rdi)
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_yy, .-_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_yy
	.globl	_ZN3wze6engine6actors5actor8textures7textureC1EPS0_PS2_yy
	.set	_ZN3wze6engine6actors5actor8textures7textureC1EPS0_PS2_yy,_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_yy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7textureD2Ev
	.type	_ZN3wze6engine6actors5actor8textures7textureD2Ev, @function
_ZN3wze6engine6actors5actor8textures7textureD2Ev:
.LFB8161:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor8textures7textureD2Ev, .-_ZN3wze6engine6actors5actor8textures7textureD2Ev
	.globl	_ZN3wze6engine6actors5actor8textures7textureD1Ev
	.set	_ZN3wze6engine6actors5actor8textures7textureD1Ev,_ZN3wze6engine6actors5actor8textures7textureD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture5GetIDEv
	.type	_ZN3wze6engine6actors5actor8textures7texture5GetIDEv, @function
_ZN3wze6engine6actors5actor8textures7texture5GetIDEv:
.LFB8163:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor8textures7texture5GetIDEv, .-_ZN3wze6engine6actors5actor8textures7texture5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetXEv
	.type	_ZN3wze6engine6actors5actor8textures7texture4GetXEv, @function
_ZN3wze6engine6actors5actor8textures7texture4GetXEv:
.LFB8164:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor8textures7texture4GetXEv, .-_ZN3wze6engine6actors5actor8textures7texture4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].textures[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4SetXEd
	.type	_ZN3wze6engine6actors5actor8textures7texture4SetXEd, @function
_ZN3wze6engine6actors5actor8textures7texture4SetXEd:
.LFB8165:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L189
	movq	8(%rdi), %rax
	movsd	56(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L174
	jne	.L174
	ucomisd	%xmm3, %xmm1
	jp	.L174
	jne	.L174
	movq	$0x000000000, 64(%rdi)
.L182:
	pxor	%xmm0, %xmm0
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L174:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	56(%rbx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L178
	jne	.L178
	ucomisd	%xmm3, %xmm1
	jp	.L178
	je	.L182
.L178:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L181:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L189:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor8textures7texture4SetXEd, .-_ZN3wze6engine6actors5actor8textures7texture4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEv
	.type	_ZN3wze6engine6actors5actor8textures7texture4GetYEv, @function
_ZN3wze6engine6actors5actor8textures7texture4GetYEv:
.LFB8166:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor8textures7texture4GetYEv, .-_ZN3wze6engine6actors5actor8textures7texture4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors[].textures[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEd
	.type	_ZN3wze6engine6actors5actor8textures7texture4GetYEd, @function
_ZN3wze6engine6actors5actor8textures7texture4GetYEd:
.LFB8167:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L209
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L194
	jne	.L194
	ucomisd	%xmm1, %xmm3
	jp	.L194
	jne	.L194
	movq	$0x000000000, 64(%rdi)
.L202:
	pxor	%xmm0, %xmm0
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L194:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L198
	jne	.L198
	ucomisd	%xmm1, %xmm3
	jp	.L198
	je	.L202
.L198:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L201:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 56(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L209:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor8textures7texture4GetYEd, .-_ZN3wze6engine6actors5actor8textures7texture4GetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
	.type	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv, @function
_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv:
.LFB8168:
	.cfi_startproc
	movq	80(%rdi), %rax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv, .-_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].textures[].SetTextureID(): Texture does not exist\nParams: TextureID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
	.type	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy, @function
_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy:
.LFB8169:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L212
	movq	(%rdi), %rdx
	cmpq	336(%rdx), %rsi
	jnb	.L213
	movq	344(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L213
.L212:
	movq	%rax, 80(%rdi)
	ret
.L213:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy, .-_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
