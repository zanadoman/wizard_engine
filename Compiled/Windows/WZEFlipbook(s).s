	.file	"WZEFlipbook(s).cpp"
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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0:
.LFB6955:
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
	.globl	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_:
.LFB6889:
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
	.globl	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.def	_ZN3wze6engine6actors5actor9flipbooksD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooksD2Ev
_ZN3wze6engine6actors5actor9flipbooksD2Ev:
.LFB6892:
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
	movq	112(%rsi), %rcx
	addq	$1, %rbx
	call	free
	movq	%rsi, %rcx
	movl	$120, %edx
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
	.globl	_ZN3wze6engine6actors5actor9flipbooksD1Ev
	.def	_ZN3wze6engine6actors5actor9flipbooksD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooksD1Ev,_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.def	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
_ZN3wze6engine6actors5actor9flipbooks6DeleteEy:
.LFB6898:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	cmpq	16(%rcx), %rdx
	jb	.L57
.L40:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.L40
	movq	112(%rdi), %rcx
	call	free
	movq	%rdi, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L58
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L40
	cmpq	$1, %rax
	je	.L40
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L59
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L60
	cmpq	$1, %rdx
	jne	.L46
.L45:
	leaq	16(%rbx), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L60:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L45
.L59:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L58:
	leaq	.LC4(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
.LFB6899:
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
	movq	(%rdx), %rdi
	movq	8(%rdx), %rsi
	movq	16(%rcx), %rdx
	movq	%rcx, %r12
	cmpq	$1, %rdx
	jbe	.L62
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L69:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L64
.L63:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L65
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L63
.L64:
	movq	(%rcx,%rbx,8), %rbp
	leaq	0(,%rbx,8), %r13
	testq	%rbp, %rbp
	je	.L67
	movq	112(%rbp), %rcx
	call	free
	movl	$120, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	16(%r12), %rdx
	movq	24(%r12), %rcx
.L67:
	cmpq	%rdx, %rbx
	jnb	.L87
	movq	$0, (%rcx,%r13)
.L65:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L69
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L88
.L86:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L88:
	movq	%rdx, %r9
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L75:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L89
	cmpq	$0, (%rcx,%rax,8)
	jne	.L90
	movq	%rax, %r9
.L70:
	cmpq	$1, %r9
	jne	.L75
.L74:
	leaq	16(%r12), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L62:
	testq	%rdx, %rdx
	jne	.L86
	leaq	.LC4(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L90:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L74
.L89:
	leaq	.LC4(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L87:
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "wze::engine.actors[].flipbooks.Purge(): KeepFlipbookIDs must not be NULL\12Params: KeepFlipbookIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
.LFB6900:
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
	movq	%rcx, %rbp
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L92
	movq	16(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L121
	movq	24(%rbp), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L101:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L95
.L96:
	cmpq	(%r8,%rax,8), %rbx
	je	.L97
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L96
	.p2align 4,,10
	.p2align 3
.L95:
	movq	(%r9,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r12
	testq	%rdi, %rdi
	je	.L99
	movq	112(%rdi), %rcx
	call	free
	movq	%rdi, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %r9
.L99:
	cmpq	%rcx, %rbx
	jnb	.L122
	movq	$0, (%r9,%r12)
.L97:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L101
	cmpq	$0, -8(%r9,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L123
.L120:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L123:
	movq	%rcx, %rax
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L107:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L124
	cmpq	$0, (%r9,%rdx,8)
	jne	.L125
	movq	%rdx, %rax
.L102:
	cmpq	$1, %rax
	jne	.L107
.L106:
	movq	%rax, %rdx
	leaq	16(%rbp), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L121:
	testq	%rcx, %rcx
	jne	.L120
	leaq	.LC4(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L125:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L106
.L124:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L92:
	leaq	.LC5(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L122:
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "wze::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\12Params: FlipbookID: %lld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].flipbooks[]: Flipbook does not exist\12Params: FlipbookID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksixEy
	.def	_ZN3wze6engine6actors5actor9flipbooksixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooksixEy
_ZN3wze6engine6actors5actor9flipbooksixEy:
.LFB6901:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L130
	cmpq	16(%rcx), %rdx
	jnb	.L128
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L128
	addq	$40, %rsp
	ret
.L128:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L130:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE:
.LFB6903:
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
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movupd	224(%r8), %xmm1
	movq	120(%rsp), %rax
	movq	(%rax), %rbp
	movq	8(%rax), %rdi
	movl	256(%r8), %eax
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movl	%eax, 16(%rcx)
	movabsq	$283124260995072, %rax
	movq	%rax, 32(%rcx)
	movl	112(%rsp), %eax
	movq	%r8, 8(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movl	$-1, 20(%rcx)
	movq	$0x000000000, 24(%rcx)
	movq	%r9, 40(%rcx)
	movl	%eax, 80(%rcx)
	movq	$0, 88(%rcx)
	movl	$0, 96(%rcx)
	movups	%xmm1, 48(%rcx)
	movups	%xmm0, 64(%rcx)
	testq	%rdi, %rdi
	jne	.L138
.L132:
	movq	%rsi, %rcx
	movq	%rdi, 104(%rbx)
	movq	%rsi, 112(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	jmp	free
	.p2align 4,,10
	.p2align 3
.L138:
	leaq	0(,%rdi,8), %r12
	movq	%r12, %rcx
	call	malloc
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L139
	movq	%r12, %r8
	movq	%rax, %rdx
	movq	%rbp, %rcx
.LEHB0:
	call	_ZN3neo6memory6CopyToEPKvPvy
	jmp	.L132
.L139:
	movq	%rdi, %r8
	movl	$8, %edx
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
	movl	$1, %ecx
	call	exit
.L136:
	movq	%rax, %rsi
	jmp	.L134
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6903:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6903-.LLSDACSB6903
.LLSDACSB6903:
	.uleb128 .LEHB0-.LFB6903
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L136-.LFB6903
	.uleb128 0
.LLSDACSE6903:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold
	.seh_stackalloc	72
	.seh_savereg	%rbx, 32
	.seh_savereg	%rsi, 40
	.seh_savereg	%rdi, 48
	.seh_savereg	%rbp, 56
	.seh_savereg	%r12, 64
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold:
.L134:
	movq	112(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6903:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6903-.LLSDACSBC6903
.LLSDACSBC6903:
	.uleb128 .LEHB1-.LCOLDB11
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC6903:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE11:
	.text
.LHOTE11:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].flipbooks.New(): Delay must not be 0\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].flipbooks.New(): Texture does not exist\12Params: Delay: %d, TextureIDs(length): %ld\12\0"
	.align 8
.LC15:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: TextureIDs(length): %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE:
.LFB6894:
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
	movq	(%r8), %rdi
	movq	8(%r8), %rsi
	movq	%rcx, %rbp
	movl	%edx, %r12d
	testl	%edx, %edx
	je	.L164
	cmpq	$1, %rsi
	jbe	.L165
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L142:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L143
	movq	0(%rbp), %rcx
	cmpq	312(%rcx), %rdx
	jnb	.L144
	movq	320(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L144
.L143:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L142
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L145
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L146:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L145
.L149:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L146
	movl	$120, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	0(%rbp), %rdx
	movl	%r12d, 32(%rsp)
	movq	%rbx, %r9
	movq	%rax, %r13
	leaq	48(%rsp), %rax
	movq	%rdi, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	8(%rbp), %r8
	movq	%r13, %rcx
	movq	%rsi, 56(%rsp)
.LEHB3:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
.LEHE3:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L166
	movq	%r13, (%rax,%rbx,8)
	movq	%r13, %rax
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
.L145:
	movl	$120, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	movq	0(%rbp), %rdx
	movl	%r12d, 32(%rsp)
	movq	%rax, %rbx
	leaq	48(%rsp), %rax
	movq	%rdi, 48(%rsp)
	movq	%rax, 40(%rsp)
	movq	8(%rbp), %r8
	movq	%rbx, %rcx
	movq	%rsi, 56(%rsp)
	movq	16(%rbp), %r9
.LEHB5:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
.LEHE5:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rbx, 72(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rbp)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L167
	movq	16(%rbp), %rdx
	leaq	72(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB6:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L168
	movq	(%rdx,%rcx,8), %r13
	testq	%r13, %r13
	je	.L169
	movq	%r13, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L144:
	leaq	.LC14(%rip), %rcx
	movq	%rsi, %r8
	movl	%r12d, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L165:
	leaq	.LC13(%rip), %rcx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L164:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L169:
	leaq	.LC16(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L168:
	leaq	.LC4(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L167:
	leaq	.LC15(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L166:
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
.L158:
	movq	%rax, %rsi
	jmp	.L155
.L157:
	movq	%rax, %rbx
	jmp	.L154
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6894:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6894-.LLSDACSB6894
.LLSDACSB6894:
	.uleb128 .LEHB2-.LFB6894
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6894
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L157-.LFB6894
	.uleb128 0
	.uleb128 .LEHB4-.LFB6894
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB6894
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L158-.LFB6894
	.uleb128 0
	.uleb128 .LEHB6-.LFB6894
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE6894:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold
	.seh_stackalloc	136
	.seh_savereg	%rbx, 88
	.seh_savereg	%rsi, 96
	.seh_savereg	%rdi, 104
	.seh_savereg	%rbp, 112
	.seh_savereg	%r12, 120
	.seh_savereg	%r13, 128
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.L155:
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB7:
	call	_Unwind_Resume
.L154:
	movq	%r13, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6894:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6894-.LLSDACSBC6894
.LLSDACSBC6894:
	.uleb128 .LEHB7-.LCOLDB17
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC6894:
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
	.ascii "neo::array=: Arrays[%lld] must not be NULL\12Params: Arrays(type, length): %ld, %ld\12\0"
	.align 8
.LC19:
	.ascii "neo::array=: Arrays[%lld] must not be Self\12Params: Arrays(type, length): %ld, %ld\12\0"
	.align 8
.LC20:
	.ascii "neo::array=: Memory allocation failed\12Params: Arrays(type, length): %ld %ld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB21:
	.text
.LHOTB21:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE:
.LFB6906:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movl	256(%r8), %eax
	movq	120(%rsp), %rbx
	movupd	224(%r8), %xmm0
	movl	%eax, 16(%rcx)
	movq	%rcx, %rsi
	movabsq	$283124260995072, %rax
	movq	%rax, 32(%rcx)
	movl	112(%rsp), %eax
	movups	%xmm0, 48(%rcx)
	pxor	%xmm0, %xmm0
	movl	%eax, 80(%rcx)
	leaq	104(%rcx), %rax
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movl	$-1, 20(%rcx)
	movq	$0x000000000, 24(%rcx)
	movq	%r9, 40(%rcx)
	movq	$0, 88(%rcx)
	movl	$0, 96(%rcx)
	movups	%xmm0, 64(%rcx)
	testq	%rbx, %rbx
	je	.L182
	cmpq	%rbx, %rax
	je	.L183
	movq	(%rbx), %rcx
	xorl	%edx, %edx
	movq	%rcx, 104(%rsi)
	leaq	0(,%rcx,8), %r8
	testq	%rcx, %rcx
	je	.L174
	movq	%r8, %rcx
	movq	%r8, 40(%rsp)
	call	malloc
	movq	40(%rsp), %r8
	testq	%rax, %rax
	movq	%rax, 112(%rsi)
	movq	%rax, %rdx
	je	.L175
	.p2align 4,,10
	.p2align 3
.L174:
	movq	8(%rbx), %rcx
.LEHB8:
	call	_ZN3neo6memory6CopyToEPKvPvy
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L182:
	movl	$1, %r9d
	movl	$8, %r8d
	xorl	%edx, %edx
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
.L173:
	movl	$1, %ecx
	call	exit
.L183:
	movl	$1, %r9d
	movl	$8, %r8d
	xorl	%edx, %edx
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L173
.L175:
	movl	$1, %r8d
	movl	$8, %edx
	leaq	.LC20(%rip), %rcx
	call	_Z6printfPKcz
.LEHE8:
	jmp	.L173
.L179:
	movq	%rax, %rbx
	jmp	.L177
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6906-.LLSDACSB6906
.LLSDACSB6906:
	.uleb128 .LEHB8-.LFB6906
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L179-.LFB6906
	.uleb128 0
.LLSDACSE6906:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold
	.seh_stackalloc	72
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold:
.L177:
	movq	112(%rsi), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB9:
	call	_Unwind_Resume
	nop
.LEHE9:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6906-.LLSDACSBC6906
.LLSDACSBC6906:
	.uleb128 .LEHB9-.LCOLDB21
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC6906:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE21:
	.text
.LHOTE21:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.actors[].flipbooks.New(): Delay must not be 0\12Params: Delay: %d, TextureIDs: %p\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].flipbooks.New(): At least two Textures are required\12Params: Delay: %d, TextureIDs: %p\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.actors[].flipbooks.New(): Texture does not exist\12Params: Delay: %d, TextureIDs: %p\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].flipbooks.New(): Memory allocation failed\12Params: Delay: %d, TextureIDs: %p\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB26:
	.text
.LHOTB26:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, %rsi
	movl	%edx, %ebp
	movq	%r8, %rdi
	testl	%edx, %edx
	je	.L208
	movq	(%r8), %rcx
	cmpq	$1, %rcx
	jbe	.L209
	movq	8(%r8), %r9
	xorl	%eax, %eax
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L187:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L210
.L189:
	movq	(%r9,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L187
	movq	(%rsi), %r8
	cmpq	312(%r8), %rdx
	jnb	.L188
	movq	320(%r8), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L187
.L188:
	leaq	.LC24(%rip), %rcx
	movq	%rdi, %r8
	movl	%ebp, %edx
.LEHB10:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L210:
	movq	16(%rsi), %rax
	cmpq	$1, %rax
	jbe	.L190
	movq	24(%rsi), %rdx
	movl	$1, %ebx
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L191:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L190
.L194:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L191
	movl	$120, %ecx
	call	_Znwy
.LEHE10:
	movq	(%rsi), %rdx
	movq	%rdi, 40(%rsp)
	movq	%rbx, %r9
	movl	%ebp, 32(%rsp)
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB11:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
.LEHE11:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L211
	movq	%r12, (%rax,%rbx,8)
.L184:
	movq	%r12, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L190:
	movl	$120, %ecx
.LEHB12:
	call	_Znwy
.LEHE12:
	movq	(%rsi), %rdx
	movq	%rdi, 40(%rsp)
	movl	%ebp, 32(%rsp)
	movq	16(%rsi), %r9
	movq	%rax, %rcx
	movq	%rax, %rbx
	movq	8(%rsi), %r8
.LEHB13:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
.LEHE13:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 56(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L212
	movq	16(%rsi), %rdx
	leaq	56(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB14:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L213
	movq	(%rdx,%rcx,8), %r12
	testq	%r12, %r12
	jne	.L184
	leaq	.LC25(%rip), %rcx
	movq	%rdi, %r8
	movl	%ebp, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L212:
	leaq	.LC15(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L213:
	leaq	.LC4(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L209:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L208:
	leaq	.LC22(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L211:
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE14:
	movl	$1, %ecx
	call	exit
.L202:
	movq	%rax, %rsi
	jmp	.L200
.L201:
	movq	%rax, %rbx
	jmp	.L199
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6897:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6897-.LLSDACSB6897
.LLSDACSB6897:
	.uleb128 .LEHB10-.LFB6897
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB6897
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L201-.LFB6897
	.uleb128 0
	.uleb128 .LEHB12-.LFB6897
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB6897
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L202-.LFB6897
	.uleb128 0
	.uleb128 .LEHB14-.LFB6897
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE6897:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 64
	.seh_savereg	%rsi, 72
	.seh_savereg	%rdi, 80
	.seh_savereg	%rbp, 88
	.seh_savereg	%r12, 96
	.seh_endprologue
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.L200:
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB15:
	call	_Unwind_Resume
.L199:
	movq	%r12, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE15:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6897:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6897-.LLSDACSBC6897
.LLSDACSBC6897:
	.uleb128 .LEHB15-.LCOLDB26
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSEC6897:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE26:
	.text
.LHOTE26:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB6909:
	.seh_endprologue
	movq	112(%rcx), %rcx
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv:
.LFB6911:
	.seh_endprologue
	movq	40(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB6912:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "wze::engine.actors[].flipbooks[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB6913:
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
	jp	.L234
	movq	8(%rcx), %rax
	movsd	56(%rcx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm6, %xmm0
	jp	.L220
	jne	.L220
	ucomisd	%xmm3, %xmm1
	jp	.L220
	jne	.L220
	movq	$0x000000000, 64(%rcx)
.L228:
	pxor	%xmm0, %xmm0
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L220:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	56(%rbx), %xmm3
	movapd	%xmm0, %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm2, 64(%rbx)
	ucomisd	%xmm0, %xmm6
	jp	.L224
	jne	.L224
	ucomisd	%xmm3, %xmm1
	jp	.L224
	je	.L228
.L224:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
.L227:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L234:
	leaq	.LC27(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB6914:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC28:
	.ascii "wze::engine.actors[].flipbooks[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB6915:
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
	jp	.L253
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L239
	jne	.L239
	ucomisd	%xmm1, %xmm6
	jp	.L239
	jne	.L239
	movq	$0x000000000, 64(%rcx)
.L247:
	pxor	%xmm0, %xmm0
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L239:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm3, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L243
	jne	.L243
	ucomisd	%xmm1, %xmm6
	jp	.L243
	je	.L247
.L243:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
.L246:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 56(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L253:
	leaq	.LC28(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv:
.LFB6916:
	.seh_endprologue
	movsd	64(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC29:
	.ascii "wze::engine.actors[].flipbooks[].SetOffsetLength(): OffsetLength must not be NaN\12Params: OffsetLength: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd:
.LFB6917:
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
	jp	.L260
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
.L260:
	leaq	.LC29(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv:
.LFB6918:
	.seh_endprologue
	movsd	72(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "wze::engine.actors[].flipbooks[].SetOffsetAngle(): OffsetAngle must not be NaN\12Params: OffsetAngle %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd
_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd:
.LFB6919:
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
	jp	.L267
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
.L267:
	leaq	.LC30(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB6920:
	.seh_endprologue
	movl	80(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "wze::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\12Params: Delay: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB6921:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %eax
	testl	%edx, %edx
	je	.L271
	movl	%edx, 80(%rcx)
	addq	$40, %rsp
	ret
.L271:
	leaq	.LC31(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv:
.LFB6922:
	.seh_endprologue
	xorl	%eax, %eax
	cmpb	$0, 39(%rcx)
	jne	.L272
	movzbl	38(%rcx), %eax
	testb	%al, %al
	je	.L275
.L272:
	ret
	.p2align 4,,10
	.p2align 3
.L275:
	movq	104(%rcx), %rax
	subq	$1, %rax
	cmpq	88(%rcx), %rax
	setne	%al
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv:
.LFB6923:
	.seh_endprologue
	movq	88(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB6924:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 88(%rcx)
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
