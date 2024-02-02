	.file	"SEFlipbook(s).cpp"
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
	.def	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0:
.LFB8639:
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
	.globl	_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_
	.def	_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_
_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_:
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
	.globl	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_
	.def	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN4slay6engine6actors5actor9flipbooksC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.def	_ZN4slay6engine6actors5actor9flipbooksD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooksD2Ev
_ZN4slay6engine6actors5actor9flipbooksD2Ev:
.LFB8436:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	16(%rcx), %rax
	movq	%rcx, %rdi
	movq	24(%rcx), %rcx
	cmpq	$1, %rax
	jbe	.L34
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L37:
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L35
	movq	104(%rsi), %rcx
	addq	$1, %rbx
	call	free
	movq	%rsi, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
	cmpq	%rax, %rbx
	jb	.L37
.L34:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L35:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L37
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooksD1Ev
	.def	_ZN4slay6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooksD1Ev,_ZN4slay6engine6actors5actor9flipbooksD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "slay::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\12Params: ID: %lld\12\0"
	.align 8
.LC5:
	.ascii "slay::engine.actors[].flipbooks.Delete(): Flipbook does not exist\12Params: ID: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
	.def	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks6DeleteEy
_ZN4slay6engine6actors5actor9flipbooks6DeleteEy:
.LFB8442:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L49
	cmpq	16(%rcx), %rdx
	jnb	.L40
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L40
	movq	104(%rdi), %rcx
	call	free
	movq	%rdi, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L50
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L51
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L47:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L52
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L53
	cmpq	$1, %rdx
	jne	.L47
.L46:
	leaq	16(%rsi), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L46
.L40:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L52:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L49:
	leaq	.LC4(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L50:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "slay::engine.actors[].flipbooks.Purge(): Flipbook does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
_ZN4slay6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB8443:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	8(%rdx), %rbx
	movq	(%rdx), %rdi
	movq	16(%rcx), %r9
	movq	%rcx, %rbp
	testq	%rbx, %rbx
	je	.L55
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L56
	cmpq	%r9, %rdx
	jnb	.L57
	movq	24(%rbp), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L57
.L56:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L58
.L55:
	cmpq	$1, %r9
	jbe	.L59
	movq	24(%rbp), %rdx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L60:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L62
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L91:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L63
.L62:
	cmpq	%rsi, (%rdi,%rax,8)
	jne	.L91
	cmpq	%rax, %rbx
	je	.L63
.L64:
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jb	.L60
	cmpq	$0, -8(%rdx,%r9,8)
	leaq	-1(%r9), %r8
	je	.L92
.L90:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%rdx,%rsi,8), %r12
	leaq	0(,%rsi,8), %r13
	testq	%r12, %r12
	je	.L65
	movq	104(%r12), %rcx
	call	free
	movl	$112, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %r9
	movq	24(%rbp), %rdx
.L65:
	cmpq	%r9, %rsi
	jnb	.L93
	movq	$0, (%rdx,%r13)
	jmp	.L64
.L92:
	movq	%r9, %r10
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L73:
	leaq	-1(%r10), %rax
	cmpq	%r9, %rax
	jnb	.L94
	cmpq	$0, (%rdx,%rax,8)
	jne	.L95
	movq	%rax, %r10
.L68:
	cmpq	$1, %r10
	jne	.L73
.L72:
	leaq	16(%rbp), %rcx
	movq	%r10, %rdx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L59:
	testq	%r9, %r9
	jne	.L90
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L95:
	movq	%r9, %r8
	subq	%r10, %r8
	jmp	.L72
.L57:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L94:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L93:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "slay::engine.actors[].flipbooks.Purge(): Flipbook does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
_ZN4slay6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
.LFB8444:
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
	movq	16(%rcx), %r9
	movq	%rdx, %rdi
	movq	(%rdx), %rdx
	movq	%rcx, %rsi
	testq	%rdx, %rdx
	je	.L97
	movq	8(%rdi), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L100:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L98
	cmpq	%r9, %rcx
	jnb	.L99
	movq	24(%rsi), %r10
	cmpq	$0, (%r10,%rcx,8)
	je	.L99
.L98:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L100
.L97:
	cmpq	$1, %r9
	jbe	.L101
	movq	24(%rsi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L105
	.p2align 4,,10
	.p2align 3
.L110:
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L132:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L105
.L104:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L132
	cmpq	%rax, %rdx
	je	.L105
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L109
.L134:
	movq	(%rdi), %rdx
	testq	%rdx, %rdx
	jne	.L110
	.p2align 4,,10
	.p2align 3
.L105:
	movq	(%r10,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r12
	testq	%rbp, %rbp
	je	.L107
	movq	104(%rbp), %rcx
	call	free
	movl	$112, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%rsi), %r9
	movq	24(%rsi), %r10
.L107:
	cmpq	%r9, %rbx
	jnb	.L133
	addq	$1, %rbx
	movq	$0, (%r10,%r12)
	cmpq	%r9, %rbx
	jb	.L134
.L109:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L135
.L131:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L135:
	movq	%r9, %rax
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L116:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L136
	cmpq	$0, (%r10,%rdx,8)
	jne	.L137
	movq	%rdx, %rax
.L111:
	cmpq	$1, %rax
	jne	.L116
.L115:
	movq	%rax, %rdx
	leaq	16(%rsi), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L101:
	testq	%r9, %r9
	jne	.L131
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L137:
	movq	%r9, %r8
	subq	%rax, %r8
	jmp	.L115
.L99:
	leaq	.LC8(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L136:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L133:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "slay::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\12Params: ID: %lld\12\0"
	.align 8
.LC10:
	.ascii "slay::engine.actors[].flipbooks[]: Flipbook does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooksixEy
	.def	_ZN4slay6engine6actors5actor9flipbooksixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooksixEy
_ZN4slay6engine6actors5actor9flipbooksixEy:
.LFB8445:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L142
	cmpq	16(%rcx), %rdx
	jnb	.L140
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L140
	addq	$40, %rsp
	ret
.L140:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L142:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\12Params: Engine: %p, Actor: %p, TextureIDs(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE:
.LFB8447:
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
	pxor	%xmm0, %xmm0
	movupd	152(%r8), %xmm1
	movq	112(%rsp), %rax
	movq	8(%rax), %rsi
	movq	(%rax), %rbp
	movl	168(%r8), %eax
	movq	%rdx, (%rcx)
	leaq	0(,%rsi,8), %rdi
	movq	%rcx, %rbx
	movl	%eax, 16(%rcx)
	movl	$4294967295, %eax
	movq	%rax, 20(%rcx)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rcx)
	movl	$384, %eax
	movq	%r8, 8(%rcx)
	movw	%ax, 36(%rcx)
	movb	$1, 38(%rcx)
	movl	%r9d, 72(%rcx)
	movq	$0, 80(%rcx)
	movl	$0, 88(%rcx)
	movq	%rsi, 96(%rcx)
	movups	%xmm1, 40(%rcx)
	movups	%xmm0, 56(%rcx)
	movq	%rdi, %rcx
	call	malloc
	movq	%rax, 104(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L144
	testq	%rsi, %rsi
	je	.L148
	movq	%rdi, %r8
	movq	%rbp, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	jmp	memcpy
	.p2align 4,,10
	.p2align 3
.L148:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L144:
	leaq	.LC11(%rip), %rcx
	movq	%rsi, %r9
	leaq	8(%rbx), %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jSt16initializer_listIyE
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "slay::engine.actors[].flipbooks.New(): Delay must not be 0\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC13:
	.ascii "slay::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC14:
	.ascii "slay::engine.actors[].flipbooks.New(): Texture does not exist\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC15:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC16:
	.ascii "slay::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: TextureIDs(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE:
.LFB8438:
	pushq	%r13
	.seh_pushreg	%r13
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
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	movq	(%r8), %rbp
	movq	8(%r8), %rsi
	movq	%rcx, %rdi
	movl	%edx, %r12d
	testl	%edx, %edx
	je	.L173
	cmpq	$1, %rsi
	jbe	.L174
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L151:
	movq	0(%rbp,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L152
	movq	(%rdi), %r8
	cmpq	568(%r8), %rcx
	jnb	.L153
	movq	576(%r8), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L153
.L152:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L151
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L154
	movq	24(%rdi), %rcx
	movl	$1, %ebx
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L155:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L154
.L158:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L155
	movl	$112, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	(%rdi), %rdx
	movl	%r12d, %r9d
	movq	%rbp, 48(%rsp)
	movq	%rax, %r13
	leaq	48(%rsp), %rax
	movq	%rsi, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rdi), %r8
	movq	%r13, %rcx
.LEHB1:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
.LEHE1:
	movq	24(%rdi), %rax
	cmpq	16(%rdi), %rbx
	jnb	.L175
	movq	%r13, (%rax,%rbx,8)
	movq	%rbx, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L154:
	movl	$112, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	(%rdi), %rdx
	movl	%r12d, %r9d
	movq	%rbp, 48(%rsp)
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rsi, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	8(%rdi), %r8
	movq	%rbx, %rcx
.LEHB3:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jSt16initializer_listIyE
.LEHE3:
	movq	16(%rdi), %rax
	movq	24(%rdi), %rcx
	movq	%rbx, 72(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rdi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rdi)
	testq	%rax, %rax
	je	.L176
	movq	16(%rdi), %rdx
	leaq	72(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L177
	cmpq	$0, (%rdx,%rax,8)
	je	.L178
	movq	%rbx, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L153:
	leaq	.LC14(%rip), %rcx
	movq	%rsi, %r8
	movl	%r12d, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L174:
	leaq	.LC13(%rip), %rcx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L173:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L178:
	leaq	.LC16(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L177:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L176:
	leaq	.LC15(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L175:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L167:
	movq	%rax, %rsi
	jmp	.L164
.L166:
	movq	%rax, %rbx
	jmp	.L163
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8438-.LLSDACSB8438
.LLSDACSB8438:
	.uleb128 .LEHB0-.LFB8438
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8438
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L166-.LFB8438
	.uleb128 0
	.uleb128 .LEHB2-.LFB8438
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L167-.LFB8438
	.uleb128 0
	.uleb128 .LEHB4-.LFB8438
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold
	.seh_stackalloc	136
	.seh_savereg	%rbx, 88
	.seh_savereg	%rsi, 96
	.seh_savereg	%rdi, 104
	.seh_savereg	%rbp, 112
	.seh_savereg	%r12, 120
	.seh_savereg	%r13, 128
	.seh_endprologue
_ZN4slay6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.L164:
	movq	%rbx, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L163:
	movq	%r13, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8438-.LLSDACSBC8438
.LLSDACSBC8438:
	.uleb128 .LEHB5-.LCOLDB17
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8438:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE17:
	.text
.LHOTE17:
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\12Params: Engine: %p, Actor: %p, TextureIDs(length): %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE:
.LFB8450:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	168(%r8), %eax
	movq	96(%rsp), %rdi
	movupd	152(%r8), %xmm0
	movq	(%rdi), %rsi
	movl	%eax, 16(%rcx)
	movl	$4294967295, %eax
	movq	%rcx, %rbx
	movq	%rax, 20(%rcx)
	movabsq	$72339069014638592, %rax
	movq	%rax, 28(%rcx)
	movl	$384, %eax
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movw	%ax, 36(%rcx)
	movb	$1, 38(%rcx)
	movl	%r9d, 72(%rcx)
	movq	$0, 80(%rcx)
	movl	$0, 88(%rcx)
	movq	%rsi, 96(%rcx)
	movups	%xmm0, 40(%rcx)
	pxor	%xmm0, %xmm0
	movups	%xmm0, 56(%rcx)
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, 104(%rbx)
	testq	%rax, %rax
	je	.L180
	testq	%rsi, %rsi
	je	.L179
	leaq	-1(%rsi), %rdx
	movq	8(%rdi), %rcx
	cmpq	$2, %rdx
	jbe	.L189
	leaq	8(%rcx), %r8
	xorl	%edx, %edx
	cmpq	%r8, %rax
	jne	.L196
	.p2align 4,,10
	.p2align 3
.L187:
	movq	(%rcx,%rdx,8), %r8
	movq	%r8, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.L187
.L179:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L196:
	movq	%rsi, %r8
	shrq	%r8
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L183:
	movdqu	(%rcx,%rdx), %xmm1
	movups	%xmm1, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r8
	jne	.L183
	movq	%rsi, %rdx
	andq	$-2, %rdx
	andl	$1, %esi
	je	.L179
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	xorl	%edx, %edx
	jmp	.L187
.L180:
	leaq	.LC18(%rip), %rcx
	movq	%rsi, %r9
	leaq	8(%rbx), %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE,_ZN4slay6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_jPN3neo5arrayIyEE
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "slay::engine.actors[].flipbooks.New(): Delay must not be 0\12Params: Delay: %d, TextureIDs(length): %lld\12\0"
	.align 8
.LC20:
	.ascii "slay::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: Delay: %d, TextureIDs(length): %lld\12\0"
	.align 8
.LC21:
	.ascii "slay::engine.actors[].flipbooks.New(): Texture does not exist\12Params: Delay: %d, TextureIDs(length): %lld\12\0"
	.align 8
.LC22:
	.ascii "slay::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: TextureIDs(length): %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB23:
	.text
.LHOTB23:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE:
.LFB8441:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	(%r8), %r11
	movq	%rcx, %rsi
	movl	%edx, %ebp
	movq	%r8, %rdi
	testl	%edx, %edx
	je	.L221
	cmpq	$1, %r11
	jbe	.L222
	movq	8(%r8), %rbx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L202:
	movq	(%rbx,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L200
	movq	(%rsi), %r10
	cmpq	568(%r10), %rcx
	jnb	.L201
	movq	576(%r10), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L201
.L200:
	addq	$1, %rax
	cmpq	%r11, %rax
	jne	.L202
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L203
	movq	24(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L204:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L203
.L207:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L204
	movl	$112, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	(%rsi), %rdx
	movq	%rdi, 32(%rsp)
	movl	%ebp, %r9d
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB7:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
.LEHE7:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L223
	movq	%r12, (%rax,%rbx,8)
.L197:
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	movl	$112, %ecx
.LEHB8:
	call	_Znwy
.LEHE8:
	movq	(%rsi), %rdx
	movq	%rdi, 32(%rsp)
	movl	%ebp, %r9d
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB9:
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_jPN3neo5arrayIyEE
.LEHE9:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 56(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L224
	movq	16(%rsi), %rdx
	leaq	56(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB10:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L225
	cmpq	$0, (%rdx,%rax,8)
	jne	.L197
	movq	(%rdi), %rdx
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L201:
	leaq	.LC21(%rip), %rcx
	movq	%r11, %r8
	movl	%ebp, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L222:
	leaq	.LC20(%rip), %rcx
	movq	%r11, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L221:
	leaq	.LC19(%rip), %rcx
	movq	%r11, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L223:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L224:
	leaq	.LC15(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L225:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
.LEHE10:
	movl	$1, %ecx
	call	exit
.L214:
	movq	%rax, %rbx
	jmp	.L212
.L215:
	movq	%rax, %rsi
	jmp	.L213
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8441-.LLSDACSB8441
.LLSDACSB8441:
	.uleb128 .LEHB6-.LFB8441
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8441
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L214-.LFB8441
	.uleb128 0
	.uleb128 .LEHB8-.LFB8441
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB8441
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L215-.LFB8441
	.uleb128 0
	.uleb128 .LEHB10-.LFB8441
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE8441:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 64
	.seh_savereg	%rsi, 72
	.seh_savereg	%rdi, 80
	.seh_savereg	%rbp, 88
	.seh_savereg	%r12, 96
	.seh_endprologue
_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.L212:
	movq	%r12, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB11:
	call	_Unwind_Resume
.L213:
	movq	%rbx, %rcx
	movl	$112, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_Unwind_Resume
	nop
.LEHE11:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8441:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8441-.LLSDACSBC8441
.LLSDACSBC8441:
	.uleb128 .LEHB11-.LCOLDB23
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8441:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE23:
	.text
.LHOTE23:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB8453:
	.seh_endprologue
	movq	104(%rcx), %rcx
	jmp	free
	.seh_endproc
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN4slay6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB8455:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd
_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB8456:
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
	call	_ZN4slay6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	72(%rsp), %xmm3
	movsd	%xmm0, 56(%rbx)
	movsd	48(%rbx), %xmm0
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm0, 32(%rsp)
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector5AngleEdddd
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
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB8457:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd
_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB8458:
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
	call	_ZN4slay6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	%xmm0, 56(%rbx)
	movsd	160(%rax), %xmm2
	movsd	152(%rax), %xmm1
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	movsd	40(%rbx), %xmm3
	leaq	552(%rax), %rcx
	call	_ZN4slay6engine6vector5AngleEdddd
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
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB8459:
	.seh_endprologue
	movl	72(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "slay::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\12Params: Delay: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj
_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB8460:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %eax
	testl	%edx, %edx
	je	.L234
	movl	%edx, 72(%rcx)
	addq	$40, %rsp
	ret
.L234:
	leaq	.LC24(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
	.def	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv
_ZN4slay6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB8461:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 80(%rcx)
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
