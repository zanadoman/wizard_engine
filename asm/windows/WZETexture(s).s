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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor12textureboxes10textureboxEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor12textureboxes10textureboxEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor12textureboxes10textureboxEE6RemoveEyy.isra.0:
.LFB6935:
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
	.globl	_ZN3wze6engine6actors5actor12textureboxesC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12textureboxesC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxesC2EPS0_PS2_
_ZN3wze6engine6actors5actor12textureboxesC2EPS0_PS2_:
.LFB6890:
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
	call	_ZN3neo6memory6CopyToEPKvPvy
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
	.globl	_ZN3wze6engine6actors5actor12textureboxesC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12textureboxesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12textureboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor12textureboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxesD2Ev
	.def	_ZN3wze6engine6actors5actor12textureboxesD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxesD2Ev
_ZN3wze6engine6actors5actor12textureboxesD2Ev:
.LFB6893:
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
	movl	$88, %edx
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
	.globl	_ZN3wze6engine6actors5actor12textureboxesD1Ev
	.def	_ZN3wze6engine6actors5actor12textureboxesD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12textureboxesD1Ev,_ZN3wze6engine6actors5actor12textureboxesD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.actors[].textureboxes.New(): Texture does not exist\12Params: TextureID: %lld\12\0"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].textureboxes.New(): Memory allocation failed\12Params: TextureID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	.def	_ZN3wze6engine6actors5actor12textureboxes3NewEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes3NewEy
_ZN3wze6engine6actors5actor12textureboxes3NewEy:
.LFB6895:
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
	cmpq	328(%rax), %rdx
	jnb	.L42
	movq	336(%rax), %rax
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
	movl	$88, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm3
	movl	$384, %r9d
	pxor	%xmm0, %xmm0
	movw	%r9w, 36(%rax)
	movl	256(%rdx), %ecx
	movupd	224(%rdx), %xmm4
	movq	%rbx, 40(%rax)
	movq	%rdi, 80(%rax)
	movq	24(%rsi), %rdx
	movl	%ecx, 16(%rax)
	movl	$4294967295, %ecx
	movq	%rcx, 20(%rax)
	movabsq	$72339069014638592, %rcx
	movq	%rcx, 28(%rax)
	movups	%xmm3, (%rax)
	movups	%xmm4, 48(%rax)
	movups	%xmm0, 64(%rax)
	cmpq	16(%rsi), %rbx
	jnb	.L53
	movq	%rax, (%rdx,%rbx,8)
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$88, %ecx
	movl	$4294967295, %ebx
	call	_Znwy
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	pxor	%xmm0, %xmm0
	movq	%rbx, 20(%rax)
	movdqu	(%rsi), %xmm1
	movabsq	$72339069014638592, %rbx
	movl	256(%rcx), %r8d
	movupd	224(%rcx), %xmm2
	movq	%rdx, 40(%rax)
	addq	$1, %rdx
	movq	%rdx, 16(%rsi)
	movq	24(%rsi), %rcx
	salq	$3, %rdx
	movl	%r8d, 16(%rax)
	movl	$384, %r8d
	movq	%rbx, 28(%rax)
	movw	%r8w, 36(%rax)
	movq	%rdi, 80(%rax)
	movups	%xmm1, (%rax)
	movups	%xmm2, 48(%rax)
	movups	%xmm0, 64(%rax)
	movq	%rax, 40(%rsp)
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L54
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L55
	movq	(%rdx,%rcx,8), %rax
	testq	%rax, %rax
	je	.L56
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
	.globl	_ZN3wze6engine6actors5actor12textureboxes6DeleteEy
	.def	_ZN3wze6engine6actors5actor12textureboxes6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes6DeleteEy
_ZN3wze6engine6actors5actor12textureboxes6DeleteEy:
.LFB6896:
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
	movl	$88, %edx
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12textureboxes10textureboxEE6RemoveEyy.isra.0
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
	.globl	_ZN3wze6engine6actors5actor12textureboxes5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor12textureboxes5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor12textureboxes5PurgeESt16initializer_listIyE:
.LFB6897:
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
	movl	$88, %edx
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12textureboxes10textureboxEE6RemoveEyy.isra.0
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
	.ascii "wze::engine.actors[].textureboxes.Purge(): KeepTextureboxIDs must not be NULL\12Params: KeepTextureboxIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor12textureboxes5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor12textureboxes5PurgeEPN3neo5arrayIyEE:
.LFB6898:
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
	movl	$88, %edx
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12textureboxes10textureboxEE6RemoveEyy.isra.0
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
	.ascii "wze::engine.actors[].textureboxes[]: Illegal access to NULL Texturebox\12Params: TextureboxID: %lld\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].textureboxes[]: Texturebox does not exist\12Params: TextureboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxesixEy
	.def	_ZN3wze6engine6actors5actor12textureboxesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxesixEy
_ZN3wze6engine6actors5actor12textureboxesixEy:
.LFB6899:
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
	.globl	_ZN3wze6engine6actors5actor12textureboxes10textureboxC2EPS0_PS2_yy
	.def	_ZN3wze6engine6actors5actor12textureboxes10textureboxC2EPS0_PS2_yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10textureboxC2EPS0_PS2_yy
_ZN3wze6engine6actors5actor12textureboxes10textureboxC2EPS0_PS2_yy:
.LFB6901:
	.seh_endprologue
	movupd	224(%r8), %xmm0
	movl	256(%r8), %eax
	movl	%eax, 16(%rcx)
	movl	$4294967295, %eax
	movq	%rax, 20(%rcx)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rcx)
	movl	$384, %eax
	movw	%ax, 36(%rcx)
	movq	40(%rsp), %rax
	movups	%xmm0, 48(%rcx)
	pxor	%xmm0, %xmm0
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movq	%r9, 40(%rcx)
	movq	%rax, 80(%rcx)
	movups	%xmm0, 64(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12textureboxes10textureboxC1EPS0_PS2_yy
	.def	_ZN3wze6engine6actors5actor12textureboxes10textureboxC1EPS0_PS2_yy;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12textureboxes10textureboxC1EPS0_PS2_yy,_ZN3wze6engine6actors5actor12textureboxes10textureboxC2EPS0_PS2_yy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10textureboxD2Ev
	.def	_ZN3wze6engine6actors5actor12textureboxes10textureboxD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10textureboxD2Ev
_ZN3wze6engine6actors5actor12textureboxes10textureboxD2Ev:
.LFB6904:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12textureboxes10textureboxD1Ev
	.def	_ZN3wze6engine6actors5actor12textureboxes10textureboxD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12textureboxes10textureboxD1Ev,_ZN3wze6engine6actors5actor12textureboxes10textureboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox5GetIDEv
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox5GetIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox5GetIDEv
_ZN3wze6engine6actors5actor12textureboxes10texturebox5GetIDEv:
.LFB6906:
	.seh_endprologue
	movq	40(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetXEv
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetXEv
_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetXEv:
.LFB6907:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].textureboxes[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetXEd
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetXEd
_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetXEd:
.LFB6908:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L171
	movq	8(%rcx), %rax
	movsd	56(%rcx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm6, %xmm0
	jp	.L157
	jne	.L157
	ucomisd	%xmm3, %xmm1
	jp	.L157
	jne	.L157
	movq	$0x000000000, 64(%rcx)
.L165:
	pxor	%xmm0, %xmm0
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L157:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	56(%rbx), %xmm3
	movapd	%xmm0, %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm2, 64(%rbx)
	ucomisd	%xmm0, %xmm6
	jp	.L161
	jne	.L161
	ucomisd	%xmm3, %xmm1
	jp	.L161
	je	.L165
.L161:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
.L164:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L171:
	leaq	.LC12(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetYEv
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetYEv
_ZN3wze6engine6actors5actor12textureboxes10texturebox4GetYEv:
.LFB6909:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].textureboxes[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd
_ZN3wze6engine6actors5actor12textureboxes10texturebox4SetYEd:
.LFB6910:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L190
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L176
	jne	.L176
	ucomisd	%xmm1, %xmm6
	jp	.L176
	jne	.L176
	movq	$0x000000000, 64(%rcx)
.L184:
	pxor	%xmm0, %xmm0
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L176:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm3, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L180
	jne	.L180
	ucomisd	%xmm1, %xmm6
	jp	.L180
	je	.L184
.L180:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
.L183:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 56(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L190:
	leaq	.LC13(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox15GetOffsetLengthEv
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox15GetOffsetLengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox15GetOffsetLengthEv
_ZN3wze6engine6actors5actor12textureboxes10texturebox15GetOffsetLengthEv:
.LFB6911:
	.seh_endprologue
	movsd	64(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].textureboxes[].SetOffsetLength(): OffsetLength must not be NaN\12Params: OffsetLength: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox15SetOffsetLengthEd
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox15SetOffsetLengthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox15SetOffsetLengthEd
_ZN3wze6engine6actors5actor12textureboxes10texturebox15SetOffsetLengthEd:
.LFB6912:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L197
	movq	8(%rcx), %rax
	movsd	72(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	72(%rbx), %xmm2
	movapd	%xmm6, %xmm1
	movsd	%xmm0, 48(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	unpcklpd	%xmm6, %xmm0
	movups	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L197:
	leaq	.LC14(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox14GetOffsetAngleEv
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox14GetOffsetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox14GetOffsetAngleEv
_ZN3wze6engine6actors5actor12textureboxes10texturebox14GetOffsetAngleEv:
.LFB6913:
	.seh_endprologue
	movsd	72(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].textureboxes[].SetOffsetAngle(): OffsetAngle must not be NaN\12Params: OffsetAngle %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox14SetOffsetAngleEd
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox14SetOffsetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox14SetOffsetAngleEd
_ZN3wze6engine6actors5actor12textureboxes10texturebox14SetOffsetAngleEd:
.LFB6914:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	movapd	%xmm1, %xmm6
	jp	.L204
	movq	8(%rcx), %rax
	movapd	%xmm1, %xmm2
	movsd	64(%rcx), %xmm1
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	64(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	movsd	%xmm0, 48(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	movsd	%xmm6, 72(%rbx)
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L204:
	leaq	.LC15(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox12GetTextureIDEv
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox12GetTextureIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox12GetTextureIDEv
_ZN3wze6engine6actors5actor12textureboxes10texturebox12GetTextureIDEv:
.LFB6915:
	.seh_endprologue
	movq	80(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].textureboxes[].SetTextureID(): Texture does not exist\12Params: TextureID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12textureboxes10texturebox12SetTextureIDEy
	.def	_ZN3wze6engine6actors5actor12textureboxes10texturebox12SetTextureIDEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12textureboxes10texturebox12SetTextureIDEy
_ZN3wze6engine6actors5actor12textureboxes10texturebox12SetTextureIDEy:
.LFB6916:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L207
	movq	(%rcx), %rdx
	cmpq	328(%rdx), %rax
	jnb	.L208
	movq	336(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.L208
.L207:
	movq	%rax, 80(%rcx)
	addq	$40, %rsp
	ret
.L208:
	leaq	.LC16(%rip), %rcx
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
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
