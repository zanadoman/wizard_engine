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
.LFB6917:
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
.LFB6880:
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
.LFB6883:
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
.LFB6885:
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
	cmpq	440(%rax), %rdx
	jnb	.L42
	movq	448(%rax), %rax
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
	movl	248(%rdx), %ecx
	movupd	216(%rdx), %xmm4
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
	movl	248(%rdx), %ecx
	movupd	216(%rdx), %xmm2
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
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures6DeleteEy
	.def	_ZN3wze6engine6actors5actor8textures6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures6DeleteEy
_ZN3wze6engine6actors5actor8textures6DeleteEy:
.LFB6886:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmpq	16(%rcx), %rdx
	jb	.L76
.L59:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L59
	movl	$80, %edx
	call	_ZdlPvy
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L77
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L59
	cmpq	$1, %rax
	je	.L59
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L65:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L78
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L79
	cmpq	$1, %rdx
	jne	.L65
.L64:
	leaq	16(%rbx), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor8textures7textureEE6RemoveEyy.isra.0
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L79:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L64
.L78:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L77:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor8textures5PurgeESt16initializer_listIyE:
.LFB6887:
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
	movq	(%rdx), %rdi
	movq	8(%rdx), %rsi
	movq	16(%rcx), %rdx
	movq	%rcx, %rbp
	cmpq	$1, %rdx
	jbe	.L81
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L88:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L83
.L82:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L84
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L82
.L83:
	movq	(%rcx,%rbx,8), %rax
	leaq	0(,%rbx,8), %r12
	testq	%rax, %rax
	je	.L86
	movl	$80, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rcx
.L86:
	cmpq	%rdx, %rbx
	jnb	.L106
	movq	$0, (%rcx,%r12)
.L84:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L88
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L107
.L105:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L107:
	movq	%rdx, %r9
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L94:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L108
	cmpq	$0, (%rcx,%rax,8)
	jne	.L109
	movq	%rax, %r9
.L89:
	cmpq	$1, %r9
	jne	.L94
.L93:
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
.L81:
	testq	%rdx, %rdx
	jne	.L105
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L109:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L93
.L108:
	leaq	.LC5(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L106:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.actors[].textures.Purge(): KeepTextureIDs must not be NULL\12Params: KeepTextureIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor8textures5PurgeEPN3neo5arrayIyEE:
.LFB6888:
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
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L111
	movq	16(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L140
	movq	24(%rdi), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L120:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L114
.L115:
	cmpq	(%r8,%rax,8), %rbx
	je	.L116
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L115
	.p2align 4,,10
	.p2align 3
.L114:
	movq	(%r9,%rbx,8), %rax
	leaq	0(,%rbx,8), %rbp
	testq	%rax, %rax
	je	.L118
	movq	%rax, %rcx
	movl	$80, %edx
	call	_ZdlPvy
	movq	16(%rdi), %rcx
	movq	24(%rdi), %r9
.L118:
	cmpq	%rcx, %rbx
	jnb	.L141
	movq	$0, (%r9,%rbp)
.L116:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L120
	cmpq	$0, -8(%r9,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L142
.L139:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L142:
	movq	%rcx, %rax
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L126:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L143
	cmpq	$0, (%r9,%rdx,8)
	jne	.L144
	movq	%rdx, %rax
.L121:
	cmpq	$1, %rax
	jne	.L126
.L125:
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
.L140:
	testq	%rcx, %rcx
	jne	.L139
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L144:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L125
.L143:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L111:
	leaq	.LC8(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L141:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].textures[]: Illegal access to NULL Texture\12Params: TextureID: %lld\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].textures[]: Texture does not exist\12Params: TextureID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8texturesixEy
	.def	_ZN3wze6engine6actors5actor8texturesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8texturesixEy
_ZN3wze6engine6actors5actor8texturesixEy:
.LFB6889:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L149
	cmpq	16(%rcx), %rdx
	jnb	.L147
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L147
	addq	$40, %rsp
	ret
.L147:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L149:
	leaq	.LC9(%rip), %rcx
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
.LFB6891:
	.seh_endprologue
	movupd	216(%r8), %xmm0
	movl	248(%r8), %eax
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
.LFB6893:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].textures[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4SetXEd
	.def	_ZN3wze6engine6actors5actor8textures7texture4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture4SetXEd
_ZN3wze6engine6actors5actor8textures7texture4SetXEd:
.LFB6894:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L169
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm6, %xmm1
	jp	.L155
	jne	.L155
	ucomisd	%xmm0, %xmm2
	jp	.L155
	jne	.L155
	movq	$0x000000000, 56(%rcx)
.L163:
	pxor	%xmm0, %xmm0
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L155:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movapd	%xmm0, %xmm3
	movsd	48(%rbx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm3, 56(%rbx)
	ucomisd	%xmm1, %xmm6
	jp	.L159
	jne	.L159
	ucomisd	%xmm0, %xmm2
	jp	.L159
	je	.L163
.L159:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L162:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L169:
	leaq	.LC12(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEv
	.def	_ZN3wze6engine6actors5actor8textures7texture4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture4GetYEv
_ZN3wze6engine6actors5actor8textures7texture4GetYEv:
.LFB6895:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].textures[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture4GetYEd
	.def	_ZN3wze6engine6actors5actor8textures7texture4GetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture4GetYEd
_ZN3wze6engine6actors5actor8textures7texture4GetYEd:
.LFB6896:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L188
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm3, %xmm1
	jp	.L174
	jne	.L174
	ucomisd	%xmm2, %xmm6
	jp	.L174
	jne	.L174
	movq	$0x000000000, 56(%rcx)
.L182:
	pxor	%xmm0, %xmm0
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L174:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm0, 56(%rbx)
	ucomisd	%xmm3, %xmm1
	jp	.L178
	jne	.L178
	ucomisd	%xmm2, %xmm6
	jp	.L178
	je	.L182
.L178:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L181:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L188:
	leaq	.LC13(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
	.def	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv
_ZN3wze6engine6actors5actor8textures7texture12GetTextureIDEv:
.LFB6897:
	.seh_endprologue
	movq	72(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].textures[].SetTextureID(): Texture does not exist\12Params: TextureID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
	.def	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy
_ZN3wze6engine6actors5actor8textures7texture12SetTextureIDEy:
.LFB6898:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L191
	movq	(%rcx), %rdx
	cmpq	440(%rdx), %rax
	jnb	.L192
	movq	448(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.L192
.L191:
	movq	%rax, 72(%rcx)
	addq	$40, %rsp
	ret
.L192:
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
