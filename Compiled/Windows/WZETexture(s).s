	.file	"WZETexture(s).cpp"
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
	.align 8
.LC0:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC2:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0:
.LFB8631:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rsi
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rbx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%r8, %r8
	je	.L3
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L7
	cmpq	%r8, %rsi
	jnb	.L14
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L11
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L28
.L11:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L16:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L29
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L12:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L12
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L14
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L7:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	leaq	.LC0(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L27:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "neo::array(): Memory allocation failed\12Params: Elements(size, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_:
.LFB8433:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movq	$1, 16(%rcx)
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	call	malloc
	movq	%rax, 24(%rbx)
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.L32
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	call	_ZN3neo9memCopyToEPKvPvy
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
.L32:
	leaq	.LC3(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_,_ZN3wze6engine6actors5actor8texturesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesD2Ev
	.def	_ZN3wze6engine6actors5actor8texturesD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8texturesD2Ev
_ZN3wze6engine6actors5actor8texturesD2Ev:
.LFB8436:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	16(%rcx), %rdx
	movq	24(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$1, %rdx
	jbe	.L34
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L37:
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L35
	movl	$80, %edx
	addq	$1, %rbx
	call	_ZdlPvy
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rax
	cmpq	%rdx, %rbx
	jb	.L37
.L34:
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L35:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L37
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor8texturesD1Ev
	.def	_ZN3wze6engine6actors5actor8texturesD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor8texturesD1Ev,_ZN3wze6engine6actors5actor8texturesD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.actors[].textures.New(): TextureID does not exist\12Params: TextureID: %lld\12\0"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].textures.New(): Memory allocation failed\12Params: TextureID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures3NewEy
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures3NewEy
_ZN3wze6engine6actors5actor8textures3NewEy:
.LFB8438:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	testq	%rdx, %rdx
	je	.L43
	movq	(%rcx), %rax
	cmpq	568(%rax), %rdx
	jnb	.L42
	movq	576(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L42
.L43:
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L41
	movq	24(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L44:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L41
.L47:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L44
	movl	$80, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm3
	movl	$384, %r8d
	pxor	%xmm0, %xmm0
	movw	%r8w, 36(%rax)
	movl	168(%rdx), %ecx
	movupd	152(%rdx), %xmm4
	movq	%rdi, 72(%rax)
	movq	24(%rsi), %rdx
	movups	%xmm3, (%rax)
	movl	%ecx, 16(%rax)
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	movabsq	$72339069014638592, %rcx
	movq	%rcx, 28(%rax)
	movups	%xmm4, 40(%rax)
	movups	%xmm0, 56(%rax)
	cmpq	16(%rsi), %rbx
	jnb	.L53
	movq	%rax, (%rdx,%rbx,8)
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$80, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rdi, 72(%rax)
	movl	168(%rdx), %ecx
	movupd	152(%rdx), %xmm2
	movq	%rax, 40(%rsp)
	movups	%xmm1, (%rax)
	movl	%ecx, 16(%rax)
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	movabsq	$72339069014638592, %rcx
	movq	%rcx, 28(%rax)
	movl	$384, %ecx
	movw	%cx, 36(%rax)
	movq	24(%rsi), %rcx
	movups	%xmm2, 40(%rax)
	movups	%xmm0, 56(%rax)
	movq	16(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L54
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L55
	cmpq	$0, (%rdx,%rax,8)
	je	.L56
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L53:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L42:
	leaq	.LC4(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L54:
	leaq	.LC6(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L56:
	leaq	.LC7(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L55:
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.actors[].textures.Delete(): Illegal deletion of NULL Texture\12Params: ID: %lld\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].textures.Delete(): Texture does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures6DeleteEy
	.def	_ZN3wze6engine6actors5actor8textures6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures6DeleteEy
_ZN3wze6engine6actors5actor8textures6DeleteEy:
.LFB8439:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L68
	cmpq	16(%rcx), %rdx
	jnb	.L59
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L59
	movl	$80, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L69
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L70
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L71
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L72
	cmpq	$1, %rdx
	jne	.L66
.L65:
	leaq	16(%rsi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L65
.L59:
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L71:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L68:
	leaq	.LC8(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].textures.Purge(): Texture does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE:
.LFB8440:
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	8(%rdx), %rbx
	movq	(%rdx), %rdi
	movq	%rcx, %rbp
	movq	16(%rcx), %rcx
	testq	%rbx, %rbx
	je	.L74
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L77:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L75
	cmpq	%rcx, %rdx
	jnb	.L76
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L76
.L75:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L77
.L74:
	cmpq	$1, %rcx
	jbe	.L78
	movq	24(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L79:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L81
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L110:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L82
.L81:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L110
	cmpq	%rax, %rbx
	je	.L82
.L83:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.L79
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L111
.L109:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L82:
	movq	(%rdx,%rsi,8), %rax
	leaq	0(,%rsi,8), %r12
	testq	%rax, %rax
	je	.L84
	movl	$80, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
.L84:
	cmpq	%rcx, %rsi
	jnb	.L112
	movq	$0, (%rdx,%r12)
	jmp	.L83
.L111:
	movq	%rcx, %r9
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L92:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L113
	cmpq	$0, (%rdx,%rax,8)
	jne	.L114
	movq	%rax, %r9
.L87:
	cmpq	$1, %r9
	jne	.L92
.L91:
	leaq	16(%rbp), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L78:
	testq	%rcx, %rcx
	jne	.L109
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L114:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L91
.L76:
	leaq	.LC10(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L113:
	leaq	.LC5(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L112:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].textures.Purge(): Texture does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE:
.LFB8443:
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
	movq	16(%rcx), %r9
	movq	%rdx, %rsi
	movq	(%rdx), %rdx
	movq	%rcx, %rdi
	testq	%rdx, %rdx
	je	.L116
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L117:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L116
.L119:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L117
	cmpq	%r9, %rcx
	jnb	.L118
	movq	24(%rdi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L117
.L118:
	leaq	.LC11(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L116:
	cmpq	$1, %r9
	jbe	.L120
	movq	24(%rdi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L124
	.p2align 4,,10
	.p2align 3
.L129:
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L151:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L124
.L123:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L151
	cmpq	%rax, %rdx
	je	.L124
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L128
.L153:
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.L129
	.p2align 4,,10
	.p2align 3
.L124:
	movq	(%r10,%rbx,8), %rcx
	leaq	0(,%rbx,8), %rbp
	testq	%rcx, %rcx
	je	.L126
	movl	$80, %edx
	call	_ZdlPvy
	movq	16(%rdi), %r9
	movq	24(%rdi), %r10
.L126:
	cmpq	%r9, %rbx
	jnb	.L152
	addq	$1, %rbx
	movq	$0, (%r10,%rbp)
	cmpq	%r9, %rbx
	jb	.L153
.L128:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L154
.L150:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L154:
	movq	%r9, %rax
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L135:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L155
	cmpq	$0, (%r10,%rdx,8)
	jne	.L156
	movq	%rdx, %rax
.L130:
	cmpq	$1, %rax
	jne	.L135
.L134:
	movq	%rax, %rdx
	leaq	16(%rdi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L120:
	testq	%r9, %r9
	jne	.L150
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L156:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L134
.L155:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L152:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].textures[]: Illegal access to NULL Texture\12Params: ID: %lld\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].textures[]: Texture does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesixEy
	.def	_ZN3wze6engine6actors5actor8texturesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8texturesixEy
_ZN3wze6engine6actors5actor8texturesixEy:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L161
	cmpq	16(%rcx), %rdx
	jnb	.L159
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L159
	addq	$40, %rsp
	ret
.L159:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L161:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y
_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y:
.LFB8446:
	.seh_endprologue
	movupd	152(%r8), %xmm0
	movl	168(%r8), %eax
	movl	%eax, 16(%rcx)
	movl	$4294967295, %eax
	movq	%rax, 20(%rcx)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rcx)
	movl	$384, %eax
	movups	%xmm0, 40(%rcx)
	pxor	%xmm0, %xmm0
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movw	%ax, 36(%rcx)
	movq	%r9, 72(%rcx)
	movups	%xmm0, 56(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor8textures7textureC1EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor8textures7textureC1EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor8textures7textureC1EPS0_PS2_y,_ZN3wze6engine6actors5actor8textures7textureC2EPS0_PS2_y
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetXEv
	.def	_ZN3wze6engine6actors5actor8textures7texture4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture4GetXEv
_ZN3wze6engine6actors5actor8textures7texture4GetXEv:
.LFB8448:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4SetXEd
	.def	_ZN3wze6engine6actors5actor8textures7texture4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture4SetXEd
_ZN3wze6engine6actors5actor8textures7texture4SetXEd:
.LFB8449:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	8(%rcx), %rax
	movsd	160(%rax), %xmm2
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm3
	movsd	152(%rax), %xmm1
	movq	(%rcx), %rax
	movsd	48(%rbx), %xmm0
	movsd	%xmm3, 72(%rsp)
	leaq	552(%rax), %rcx
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	72(%rsp), %xmm3
	movsd	%xmm0, 56(%rbx)
	movsd	48(%rbx), %xmm0
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm0, 32(%rsp)
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	72(%rsp), %xmm3
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 40(%rbx)
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEv
	.def	_ZN3wze6engine6actors5actor8textures7texture4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture4GetYEv
_ZN3wze6engine6actors5actor8textures7texture4GetYEv:
.LFB8450:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEd
	.def	_ZN3wze6engine6actors5actor8textures7texture4GetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture4GetYEd
_ZN3wze6engine6actors5actor8textures7texture4GetYEd:
.LFB8451:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movq	8(%rcx), %rax
	movsd	160(%rax), %xmm2
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	movsd	152(%rax), %xmm1
	movq	(%rcx), %rax
	movsd	%xmm6, 32(%rsp)
	movsd	40(%rbx), %xmm3
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	%xmm0, 56(%rbx)
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	movsd	40(%rbx), %xmm3
	leaq	552(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	%xmm6, 48(%rbx)
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm6, %xmm0
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
	.def	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv:
.LFB8452:
	.seh_endprologue
	movq	72(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].textures[].SetTextureID(): Texture does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
	.def	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy:
.LFB8453:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L169
	movq	(%rcx), %rdx
	cmpq	568(%rdx), %rax
	jnb	.L170
	movq	576(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.L170
.L169:
	movq	%rax, 72(%rcx)
	addq	$40, %rsp
	ret
.L170:
	leaq	.LC14(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
