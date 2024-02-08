	.file	"WZEOverlapbox(es).cpp"
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
	.ascii "neo::array.Insert(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0:
.LFB8651:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%r8, %rsi
	cmpq	%rbx, %rdx
	jb	.L15
	testq	%r8, %r8
	jne	.L16
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	addq	%r8, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L17
	movq	(%rdi), %rdx
	leaq	(%rbx,%rsi), %r9
	leaq	-1(%rdx), %rcx
	cmpq	%r9, %rcx
	jb	.L7
	negq	%rsi
	salq	$4, %rdx
	movq	%rsi, %r8
	addq	%rax, %rdx
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L8:
	movdqu	-16(%rdx,%r8), %xmm0
	subq	$1, %rcx
	subq	$16, %rdx
	movups	%xmm0, (%rdx)
	cmpq	%r9, %rcx
	jnb	.L8
.L7:
	cmpq	%r9, %rbx
	jnb	.L3
	salq	$4, %rbx
	salq	$4, %r9
	leaq	(%rax,%rbx), %rdx
	addq	%r9, %rax
	.p2align 4,,10
	.p2align 3
.L9:
	movq	$0, (%rdx)
	addq	$16, %rdx
	movq	$0, -8(%rdx)
	cmpq	%rdx, %rax
	jne	.L9
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L15:
	leaq	.LC0(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L17:
	leaq	.LC1(%rip), %rcx
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC3:
	.ascii "neo::array.Remove(): Length out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC4:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0:
.LFB8652:
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
	jnb	.L41
	leaq	(%rsi,%r8), %rax
	cmpq	%rax, %rdx
	jb	.L42
	testq	%r8, %r8
	je	.L18
	movq	%rdx, %r8
	subq	%rbx, %r8
	movq	%r8, (%rcx)
	movq	8(%rcx), %rcx
	je	.L22
	cmpq	%r8, %rsi
	jnb	.L29
	movq	%r8, %r10
	subq	%rsi, %r10
	leaq	-1(%r10), %r9
	cmpq	$2, %r9
	jbe	.L26
	leaq	0(,%rsi,8), %r9
	leaq	8(,%rax,8), %r11
	cmpq	%r9, %r11
	jne	.L43
.L26:
	movq	%rbx, %r9
	leaq	(%rcx,%rax,8), %rax
	leaq	(%rcx,%rdx,8), %r10
	negq	%r9
	salq	$3, %r9
	.p2align 4,,10
	.p2align 3
.L31:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%r9)
	cmpq	%rax, %r10
	jne	.L31
	.p2align 4,,10
	.p2align 3
.L29:
	leaq	0(,%r8,8), %rdx
	call	realloc
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	je	.L44
.L18:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	leaq	(%rcx,%r9), %rdx
	movq	%r10, %r9
	leaq	-8(%rcx,%r11), %r11
	xorl	%eax, %eax
	shrq	%r9
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L27:
	movdqu	(%r11,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%r9, %rax
	jne	.L27
	movq	%r10, %rax
	andq	$-2, %rax
	addq	%rsi, %rax
	andl	$1, %r10d
	je	.L29
	leaq	(%rbx,%rax), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L22:
	call	free
	movq	$0, 8(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L41:
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L42:
	leaq	.LC3(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L44:
	leaq	.LC4(%rip), %rcx
	movq	%rbx, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array(): Memory allocation failed\12Params: Elements(size, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_:
.LFB8422:
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
	je	.L47
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	call	_ZN3neo9memCopyToEPKvPvy
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
.L47:
	leaq	.LC5(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxesD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
_ZN3wze6engine6actors5actor12overlapboxesD2Ev:
.LFB8425:
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
	jbe	.L49
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L52:
	movq	(%rax,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L50
	movl	$120, %edx
	addq	$1, %rbx
	call	_ZdlPvy
	movq	16(%rsi), %rdx
	movq	24(%rsi), %rax
	cmpq	%rdx, %rbx
	jb	.L52
.L49:
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L50:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L52
	movq	%rax, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxesD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxesD1Ev,_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "wze::engine.actors[].overlapboxes.Delete(): Illegal deletion of NULL Overlapbox\12Params: ID: %lld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].overlapboxes.Delete(): Overlapbox does not exist\12Params: ID: %lld\12\0"
	.align 8
.LC8:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.def	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy:
.LFB8428:
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
	je	.L64
	cmpq	16(%rcx), %rdx
	jnb	.L55
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L55
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L65
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L66
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L62:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L67
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L68
	cmpq	$1, %rdx
	jne	.L62
.L61:
	leaq	16(%rsi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L61
.L55:
	leaq	.LC7(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L67:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L64:
	leaq	.LC6(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L65:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE:
.LFB8429:
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
	movq	8(%rdx), %rsi
	movq	(%rdx), %rdi
	movq	%rcx, %rbp
	movq	16(%rcx), %rcx
	testq	%rsi, %rsi
	je	.L70
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L73:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L71
	cmpq	%rcx, %rdx
	jnb	.L72
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L72
.L71:
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L73
.L70:
	cmpq	$1, %rcx
	jbe	.L74
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L75:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L76
.L82:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L77
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.L82
.L76:
	movq	(%rdx,%rbx,8), %rax
	leaq	0(,%rbx,8), %r12
	testq	%rax, %rax
	je	.L79
	movl	$120, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
.L79:
	cmpq	%rcx, %rbx
	jnb	.L106
	movq	$0, (%rdx,%r12)
.L77:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L75
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
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
	movq	%rcx, %r9
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L88:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L108
	cmpq	$0, (%rdx,%rax,8)
	jne	.L109
	movq	%rax, %r9
.L83:
	cmpq	$1, %r9
	jne	.L88
.L87:
	leaq	16(%rbp), %rcx
	movq	%r9, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L74:
	testq	%rcx, %rcx
	jne	.L105
	leaq	.LC8(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L109:
	subq	%r9, %rcx
	movq	%rcx, %r8
	jmp	.L87
.L72:
	leaq	.LC9(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L108:
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L106:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE:
.LFB8432:
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
	movq	(%rdx), %rcx
	movq	%rdx, %rsi
	movq	16(%rdi), %r9
	testq	%rcx, %rcx
	je	.L111
	movq	8(%rdx), %r8
	xorl	%eax, %eax
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L111
.L114:
	movq	(%r8,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L112
	cmpq	%r9, %rdx
	jnb	.L113
	movq	24(%rdi), %r10
	cmpq	$0, (%r10,%rdx,8)
	jne	.L112
.L113:
	leaq	.LC10(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L111:
	cmpq	$1, %r9
	jbe	.L115
	movq	24(%rdi), %r10
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L123:
	movq	8(%rsi), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L116
.L117:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L118
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L117
	.p2align 4,,10
	.p2align 3
.L116:
	movq	(%r10,%rbx,8), %rcx
	leaq	0(,%rbx,8), %rbp
	testq	%rcx, %rcx
	je	.L120
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rdi), %r9
	movq	24(%rdi), %r10
.L120:
	cmpq	%r9, %rbx
	jnb	.L148
	movq	$0, (%r10,%rbp)
.L118:
	addq	$1, %rbx
	cmpq	%r9, %rbx
	jnb	.L122
	movq	(%rsi), %rcx
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L122:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L149
.L147:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L149:
	movq	%r9, %rax
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L129:
	leaq	-1(%rax), %rdx
	cmpq	%r9, %rdx
	jnb	.L150
	cmpq	$0, (%r10,%rdx,8)
	jne	.L151
	movq	%rdx, %rax
.L124:
	cmpq	$1, %rax
	jne	.L129
.L128:
	movq	%rax, %rdx
	leaq	16(%rdi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L115:
	testq	%r9, %r9
	jne	.L147
	leaq	.LC8(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L151:
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L128
.L148:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L150:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\12Params: ID: %lld\12\0"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesixEy
	.def	_ZN3wze6engine6actors5actor12overlapboxesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesixEy
_ZN3wze6engine6actors5actor12overlapboxesixEy:
.LFB8433:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L156
	cmpq	16(%rcx), %rdx
	jnb	.L154
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L154
	addq	$40, %rsp
	ret
.L154:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L156:
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev:
.LFB8438:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv:
.LFB8440:
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	200(%rax), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorTypeEv:
.LFB8441:
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	208(%rax), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv:
.LFB8442:
	.seh_endprologue
	movq	24(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv:
.LFB8443:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].overlapboxes[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd:
.LFB8444:
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
	jp	.L179
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm6, %xmm1
	jp	.L165
	jne	.L165
	ucomisd	%xmm0, %xmm2
	jp	.L165
	jne	.L165
	movq	$0x000000000, 64(%rcx)
.L173:
	pxor	%xmm0, %xmm0
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L165:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movapd	%xmm0, %xmm3
	movsd	40(%rbx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm3, 64(%rbx)
	ucomisd	%xmm1, %xmm6
	jp	.L169
	jne	.L169
	ucomisd	%xmm0, %xmm2
	jp	.L169
	je	.L173
.L169:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L172:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 32(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L179:
	leaq	.LC14(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv:
.LFB8445:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].overlapboxes[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd:
.LFB8446:
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
	jp	.L198
	movq	8(%rcx), %rax
	movsd	32(%rcx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm3, %xmm1
	jp	.L184
	jne	.L184
	ucomisd	%xmm2, %xmm6
	jp	.L184
	jne	.L184
	movq	$0x000000000, 64(%rcx)
.L192:
	pxor	%xmm0, %xmm0
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L184:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	32(%rbx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm0, 64(%rbx)
	ucomisd	%xmm3, %xmm1
	jp	.L188
	jne	.L188
	ucomisd	%xmm2, %xmm6
	jp	.L188
	je	.L192
.L188:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L191:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L198:
	leaq	.LC15(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv:
.LFB8447:
	.seh_endprologue
	movzwl	48(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv:
.LFB8449:
	.seh_endprologue
	movzwl	50(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv:
.LFB8451:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv:
.LFB8453:
	.seh_endprologue
	movzwl	80(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv:
.LFB8454:
	.seh_endprologue
	movzwl	82(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Actor does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Overlapbox does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy:
.LFB8455:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %r9
	testq	%rdx, %rdx
	je	.L209
	movq	(%rcx), %rcx
	cmpq	640(%rcx), %rdx
	jnb	.L206
	movq	648(%rcx), %rax
	movq	(%rax,%rdx,8), %r10
	testq	%r10, %r10
	je	.L206
	xorl	%eax, %eax
	testq	%r8, %r8
	jne	.L215
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	cmpq	152(%r10), %r8
	jnb	.L208
	movq	160(%r10), %rax
	movq	(%rax,%r8,8), %r10
	testq	%r10, %r10
	je	.L208
	movzwl	80(%r9), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	pxor	%xmm4, %xmm4
	movsd	32(%r9), %xmm1
	pxor	%xmm3, %xmm3
	movq	%r10, 40(%rsp)
	addq	$656, %rcx
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm3
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	82(%r9), %eax
	movl	%eax, %r8d
	cvtsi2sdl	%eax, %xmm4
	shrw	%r8w
	movzwl	%r8w, %r8d
	subsd	%xmm0, %xmm1
	cvtsi2sdl	%r8d, %xmm2
	addsd	40(%r9), %xmm2
	addsd	%xmm1, %xmm3
	movapd	%xmm2, %xmm0
	subsd	%xmm4, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	addq	$56, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	xorl	%eax, %eax
	addq	$56, %rsp
	ret
.L206:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L208:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist(length): %ld\12\0"
	.align 8
.LC19:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_:
.LFB8456:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
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
	subq	$168, %rsp
	.seh_stackalloc	168
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)
	.seh_savexmm	%xmm9, 144
	.seh_endprologue
	movq	(%r8), %r15
	movq	8(%r8), %rbp
	movq	(%r9), %r13
	movq	8(%r9), %r14
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L217
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L221
	.p2align 4,,10
	.p2align 3
.L218:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L218
.L221:
	movq	$0, (%rsi)
	movq	8(%rsi), %rcx
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	movl	$1, %ebx
	call	free
	movq	(%rdi), %rax
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movq	$0, 8(%rsi)
	movq	640(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%rdi), %edx
	pxor	%xmm0, %xmm0
	movsd	32(%rdi), %xmm7
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	82(%rdi), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	(%rdi), %rax
	cvtsi2sdl	%ecx, %xmm6
	addsd	40(%rdi), %xmm6
	movq	640(%rax), %r11
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r11
	jbe	.L253
	movq	%r13, %r9
	movq	%r14, %r8
	movq	%rbp, %r13
	movq	%rsi, %rbp
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L222:
	addq	$1, %rbx
	cmpq	%r11, %rbx
	jnb	.L253
.L219:
	movq	648(%rax), %rcx
	leaq	0(,%rbx,8), %r14
	movq	(%rcx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L222
	cmpq	8(%rdi), %rdx
	je	.L222
	movq	208(%rdx), %rsi
	xorl	%edx, %edx
	testq	%r13, %r13
	je	.L222
	cmpq	(%r15,%rdx,8), %rsi
	je	.L264
.L254:
	addq	$1, %rdx
	cmpq	%rdx, %r13
	je	.L222
	cmpq	(%r15,%rdx,8), %rsi
	jne	.L254
.L264:
	xorl	%edx, %edx
	testq	%r8, %r8
	je	.L226
.L236:
	cmpq	%rbx, (%r9,%rdx,8)
	je	.L222
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L236
.L226:
	cmpq	%r11, %rbx
	jnb	.L263
	movq	%rbx, %rsi
	movq	%r13, 56(%rsp)
	movl	$1, %r12d
	salq	$4, %rsi
	movq	%r9, 64(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	88(%rsp), %rsi
	movq	%r8, 72(%rsp)
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L262:
	movq	(%rdi), %rax
	movq	640(%rax), %r11
.L229:
	movq	648(%rax), %rcx
	addq	$1, %r12
	cmpq	%r11, %rbx
	jnb	.L263
.L234:
	movq	(%rcx,%r14), %rdx
	cmpq	152(%rdx), %r12
	jnb	.L265
	movq	160(%rdx), %rdx
	movq	(%rdx,%r12,8), %rdx
	testq	%rdx, %rdx
	je	.L229
	movq	%rdx, 40(%rsp)
	leaq	656(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L262
	movq	%r12, 88(%rsp)
	movq	8(%rbp), %r8
	cmpq	0(%rbp), %rbx
	jnb	.L263
	movq	48(%rsp), %rax
	leaq	(%r8,%rax), %r13
	movq	0(%r13), %rax
	movq	8(%r13), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 0(%r13)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.L266
	movq	0(%r13), %rdx
	movl	$8, %r8d
	movq	%rsi, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L253:
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L265:
	movq	56(%rsp), %r13
	movq	64(%rsp), %r9
	movq	72(%rsp), %r8
	jmp	.L222
.L263:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L266:
	leaq	.LC19(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L217:
	leaq	.LC18(%rip), %rcx
	movq	%r14, %r9
	movq	%rbp, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE:
.LFB8457:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
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
	subq	$152, %rsp
	.seh_stackalloc	152
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	.seh_endprologue
	movq	(%r9), %r12
	movq	8(%r9), %rbp
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %r15
	testq	%rdx, %rdx
	je	.L316
	testq	%r8, %r8
	je	.L269
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L273
	.p2align 4,,10
	.p2align 3
.L270:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L270
.L273:
	movq	$0, (%rsi)
	movq	8(%rsi), %rcx
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	movl	$1, %ebx
	call	free
	movq	(%rdi), %rax
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movq	$0, 8(%rsi)
	movq	640(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%rdi), %edx
	pxor	%xmm0, %xmm0
	movq	%r12, %r10
	movsd	32(%rdi), %xmm7
	movq	%rbp, %r9
	movq	%rdi, %r12
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	82(%rdi), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	(%rdi), %rax
	cvtsi2sdl	%ecx, %xmm6
	addsd	40(%rdi), %xmm6
	movq	640(%rax), %r8
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r8
	jbe	.L306
	.p2align 4,,10
	.p2align 3
.L271:
	movq	648(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L274
	cmpq	8(%r12), %rcx
	je	.L274
	movq	(%r15), %r11
	movq	208(%rcx), %rdi
	xorl	%ecx, %ecx
	movq	8(%r15), %r13
	testq	%r11, %r11
	je	.L274
.L275:
	cmpq	0(%r13,%rcx,8), %rdi
	je	.L317
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L275
	.p2align 4,,10
	.p2align 3
.L274:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L271
.L306:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	128(%rsp), %xmm9
	movaps	112(%rsp), %xmm8
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L317:
	xorl	%ecx, %ecx
	testq	%r9, %r9
	je	.L278
.L288:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L274
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L288
.L278:
	cmpq	%r8, %rbx
	jnb	.L315
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	leaq	72(%rsp), %r14
	movl	$1, %r13d
	movq	%r15, 240(%rsp)
	salq	$4, %rdi
	movq	%r10, 56(%rsp)
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L314:
	movq	(%r12), %rax
	movq	640(%rax), %r8
.L281:
	movq	648(%rax), %rdx
	addq	$1, %r13
	cmpq	%r8, %rbx
	jnb	.L315
.L286:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %r13
	jnb	.L318
	movq	160(%rdx), %rdx
	movq	(%rdx,%r13,8), %rdx
	testq	%rdx, %rdx
	je	.L281
	movq	%rdx, 40(%rsp)
	leaq	656(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L314
	movq	%r13, 72(%rsp)
	movq	8(%rsi), %r8
	cmpq	(%rsi), %rbx
	jnb	.L315
	leaq	(%r8,%rdi), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r15)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L319
	movq	(%r15), %rdx
	movl	$8, %r8d
	movq	%r14, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L318:
	addq	$1, %rbx
	movq	48(%rsp), %r9
	movq	56(%rsp), %r10
	movq	240(%rsp), %r15
	cmpq	%r8, %rbx
	jb	.L271
	jmp	.L306
.L315:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L269:
	leaq	.LC21(%rip), %rcx
	movq	%rbp, %r9
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L316:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %r9
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L319:
	leaq	.LC19(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): AActorIDBlacklist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_:
.LFB8458:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
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
	subq	$152, %rsp
	.seh_stackalloc	152
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	movaps	%xmm9, 128(%rsp)
	.seh_savexmm	%xmm9, 128
	.seh_endprologue
	movq	(%r8), %r12
	movq	8(%r8), %rbp
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r9, %r15
	testq	%rdx, %rdx
	je	.L369
	testq	%r9, %r9
	je	.L322
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L326
	.p2align 4,,10
	.p2align 3
.L323:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L323
.L326:
	movq	$0, (%rsi)
	movq	8(%rsi), %rcx
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	movl	$1, %ebx
	call	free
	movq	(%rdi), %rax
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movq	$0, 8(%rsi)
	movq	640(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%rdi), %edx
	pxor	%xmm0, %xmm0
	movsd	32(%rdi), %xmm7
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	82(%rdi), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	(%rdi), %rax
	cvtsi2sdl	%ecx, %xmm6
	addsd	40(%rdi), %xmm6
	movq	640(%rax), %r8
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r8
	jbe	.L359
	movq	%r15, %r10
	movq	%r12, %r9
	movq	%rbp, %r15
	movq	%rdi, %r12
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L327:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L359
.L324:
	movq	648(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L327
	cmpq	8(%r12), %rcx
	je	.L327
	movq	208(%rcx), %r11
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L327
	cmpq	(%r9,%rcx,8), %r11
	je	.L370
.L360:
	addq	$1, %rcx
	cmpq	%rcx, %r15
	je	.L327
	cmpq	(%r9,%rcx,8), %r11
	jne	.L360
.L370:
	movq	(%r10), %r11
	movq	8(%r10), %rdi
	xorl	%ecx, %ecx
	testq	%r11, %r11
	je	.L331
.L341:
	cmpq	%rbx, (%rdi,%rcx,8)
	je	.L327
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L341
	.p2align 4,,10
	.p2align 3
.L331:
	cmpq	%r8, %rbx
	jnb	.L368
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	leaq	72(%rsp), %r14
	movl	$1, %r13d
	movq	%r10, 248(%rsp)
	salq	$4, %rdi
	movq	%r15, 56(%rsp)
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L367:
	movq	(%r12), %rax
	movq	640(%rax), %r8
.L334:
	movq	648(%rax), %rdx
	addq	$1, %r13
	cmpq	%r8, %rbx
	jnb	.L368
.L339:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %r13
	jnb	.L371
	movq	160(%rdx), %rdx
	movq	(%rdx,%r13,8), %rdx
	testq	%rdx, %rdx
	je	.L334
	movq	%rdx, 40(%rsp)
	leaq	656(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L367
	movq	%r13, 72(%rsp)
	movq	8(%rsi), %r8
	cmpq	(%rsi), %rbx
	jnb	.L368
	leaq	(%r8,%rdi), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r15)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L372
	movq	(%r15), %rdx
	movl	$8, %r8d
	movq	%r14, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L359:
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	128(%rsp), %xmm9
	movaps	112(%rsp), %xmm8
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	movq	248(%rsp), %r10
	movq	48(%rsp), %r9
	movq	56(%rsp), %r15
	jmp	.L327
.L368:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L322:
	leaq	.LC23(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L369:
	leaq	.LC22(%rip), %rcx
	movq	%rbp, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L372:
	leaq	.LC19(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %p, ActorIDBlacklist: %p\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %p, ActorIDBlacklist: %p\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): AActorIDBlacklist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %p, ActorIDBlacklist: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_:
.LFB8459:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
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
	subq	$136, %rsp
	.seh_stackalloc	136
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	movaps	%xmm9, 112(%rsp)
	.seh_savexmm	%xmm9, 112
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%rdx, %rdi
	movq	%r8, %r12
	movq	%r9, %r14
	testq	%rdx, %rdx
	je	.L423
	testq	%r8, %r8
	je	.L424
	testq	%r9, %r9
	je	.L376
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L380
	.p2align 4,,10
	.p2align 3
.L377:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rdi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rdi), %rbx
	jb	.L377
.L380:
	movq	$0, (%rdi)
	movq	8(%rdi), %rcx
	pxor	%xmm6, %xmm6
	pxor	%xmm8, %xmm8
	movl	$1, %ebx
	call	free
	movq	0(%rbp), %rax
	xorl	%edx, %edx
	movq	%rdi, %rcx
	movq	$0, 8(%rdi)
	movq	640(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	80(%rbp), %edx
	pxor	%xmm0, %xmm0
	movsd	32(%rbp), %xmm7
	leaq	56(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	82(%rbp), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm6
	addsd	40(%rbp), %xmm6
	cvtsi2sdl	%eax, %xmm0
	movq	0(%rbp), %rax
	addsd	%xmm7, %xmm8
	movq	640(%rax), %rcx
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %rcx
	jbe	.L414
	movq	%r9, %r13
	movq	%r14, %r9
	movq	%r12, %r14
	movq	%rbp, %r12
	.p2align 4,,10
	.p2align 3
.L378:
	movq	648(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %r8
	testq	%r8, %r8
	je	.L381
	cmpq	8(%r12), %r8
	je	.L381
	movq	(%r14), %r10
	movq	208(%r8), %r11
	xorl	%r8d, %r8d
	movq	8(%r14), %rsi
	testq	%r10, %r10
	je	.L381
.L382:
	cmpq	(%rsi,%r8,8), %r11
	je	.L425
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L382
	.p2align 4,,10
	.p2align 3
.L381:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L378
.L414:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	96(%rsp), %xmm8
	movaps	112(%rsp), %xmm9
	addq	$136, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L425:
	movq	(%r9), %r10
	movq	8(%r9), %r11
	xorl	%r8d, %r8d
	testq	%r10, %r10
	je	.L385
.L395:
	cmpq	%rbx, (%r11,%r8,8)
	je	.L381
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L395
	.p2align 4,,10
	.p2align 3
.L385:
	cmpq	%rcx, %rbx
	jnb	.L422
	movq	%rbx, %r15
	movq	%r14, 224(%rsp)
	movl	$1, %esi
	movq	%r9, 232(%rsp)
	salq	$4, %r15
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L421:
	movq	(%r12), %rax
	movq	640(%rax), %rcx
.L388:
	movq	648(%rax), %rdx
	addq	$1, %rsi
	cmpq	%rcx, %rbx
	jnb	.L422
.L393:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %rsi
	jnb	.L426
	movq	160(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L388
	movq	%rdx, 40(%rsp)
	leaq	656(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L421
	movq	%rsi, 56(%rsp)
	movq	8(%rdi), %r8
	cmpq	(%rdi), %rbx
	jnb	.L422
	leaq	(%r8,%r15), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r14)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L427
	movq	(%r14), %rdx
	movl	$8, %r8d
	movq	%r13, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L426:
	addq	$1, %rbx
	movq	224(%rsp), %r14
	movq	232(%rsp), %r9
	cmpq	%rcx, %rbx
	jb	.L378
	jmp	.L414
.L422:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L376:
	leaq	.LC26(%rip), %rcx
	xorl	%r9d, %r9d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L424:
	leaq	.LC25(%rip), %rcx
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L423:
	leaq	.LC24(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L427:
	leaq	.LC19(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv:
.LFB8460:
	.seh_endprologue
	movl	112(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv:
.LFB8461:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
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
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	pxor	%xmm1, %xmm1
	movsd	.LC27(%rip), %xmm7
	movsd	56(%rcx), %xmm6
	movsd	96(%rcx), %xmm8
	movq	(%rcx), %rax
	addsd	%xmm6, %xmm8
	addsd	104(%rcx), %xmm6
	movq	%rcx, %rbx
	leaq	688(%rax), %rcx
	movsd	88(%rbx), %xmm2
	movapd	%xmm8, %xmm3
	movapd	%xmm8, %xmm9
	addsd	%xmm7, %xmm9
	addsd	%xmm6, %xmm7
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm2
	cvttsd2sil	%xmm0, %edi
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm2
	movapd	%xmm9, %xmm3
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r15d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm2
	cvttsd2sil	%xmm0, %r14d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm2
	movapd	%xmm8, %xmm3
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r13d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm2
	cvttsd2sil	%xmm0, %esi
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm2
	movapd	%xmm9, %xmm3
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r12d
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm2
	cvttsd2sil	%xmm0, %ebp
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	cmpl	%r15d, %edi
	movl	%r15d, %eax
	cmovge	%edi, %eax
	cvttsd2sil	%xmm0, %edx
	cmpl	%r14d, %eax
	cmovl	%r14d, %eax
	cmpl	%r13d, %eax
	cmovl	%r13d, %eax
	cmpl	%r15d, %edi
	cmovg	%r15d, %edi
	cmpl	%r14d, %edi
	cmovg	%r14d, %edi
	cmpl	%r13d, %edi
	cmovg	%r13d, %edi
	subl	%edi, %eax
	cmpl	%r12d, %esi
	movw	%ax, 80(%rbx)
	movl	%r12d, %eax
	cmovge	%esi, %eax
	cmpl	%ebp, %eax
	cmovl	%ebp, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%r12d, %esi
	cmovg	%r12d, %esi
	cmpl	%ebp, %esi
	cmovg	%ebp, %esi
	cmpl	%edx, %esi
	cmovg	%edx, %esi
	subl	%esi, %eax
	movw	%ax, 82(%rbx)
	movaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y:
.LFB8435:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$257, %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movd	248(%r8), %xmm0
	movsd	256(%r8), %xmm1
	movupd	216(%r8), %xmm4
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movw	%ax, 16(%rcx)
	pextrw	$0, %xmm0, %eax
	movd	%xmm0, 48(%rcx)
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm1, 56(%rcx)
	movapd	%xmm2, %xmm1
	movd	%xmm0, 80(%rcx)
	movq	%r8, 8(%rcx)
	movb	$0, 18(%rcx)
	movq	%r9, 24(%rcx)
	movq	$0x000000000, 64(%rcx)
	movq	$0x000000000, 72(%rcx)
	movups	%xmm4, 32(%rcx)
	leaq	688(%rdx), %rcx
	pextrw	$1, %xmm0, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC29(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L431
	jne	.L431
	movsd	%xmm1, 96(%rbx)
.L433:
	pxor	%xmm0, %xmm0
.L436:
	movq	%rbx, %rcx
	movsd	%xmm0, 104(%rbx)
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.p2align 4,,10
	.p2align 3
.L431:
	movzwl	50(%rbx), %edx
	movzwl	48(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	addq	$688, %rcx
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L434
	je	.L433
.L434:
	movq	(%rbx), %rdx
	movzwl	48(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm1
	leaq	688(%rdx), %rcx
	movzwl	50(%rbx), %edx
	movapd	%xmm3, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L436
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "wze::engine.actors[].overlapboxes.New(): Memory allocation failed\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB31:
	.text
.LHOTB31:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
_ZN3wze6engine6actors5actor12overlapboxes3NewEy:
.LFB8427:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	cmpq	$1, %rax
	jbe	.L439
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L440:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L439
.L443:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L440
	movl	$120, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	movq	%rdi, %r9
	movq	%rax, %rcx
	movq	%rax, %rbp
.LEHB1:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
.LEHE1:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L453
	movq	%rbp, (%rax,%rbx,8)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L439:
	movl	$120, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	movq	%rdi, %r9
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB3:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
.LEHE3:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 40(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L454
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L455
	cmpq	$0, (%rdx,%rax,8)
	je	.L456
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L453:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L456:
	leaq	.LC30(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L455:
	leaq	.LC8(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L454:
	leaq	.LC19(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L450:
	movq	%rax, %rsi
	jmp	.L449
.L451:
	movq	%rax, %rbx
	jmp	.L448
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8427-.LLSDACSB8427
.LLSDACSB8427:
	.uleb128 .LEHB0-.LFB8427
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8427
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L451-.LFB8427
	.uleb128 0
	.uleb128 .LEHB2-.LFB8427
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8427
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L450-.LFB8427
	.uleb128 0
	.uleb128 .LEHB4-.LFB8427
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8427:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold
	.seh_stackalloc	88
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_savereg	%rdi, 72
	.seh_savereg	%rbp, 80
	.seh_endprologue
_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold:
.L449:
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L448:
	movq	%rbp, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8427:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8427-.LLSDACSBC8427
.LLSDACSBC8427:
	.uleb128 .LEHB5-.LCOLDB31
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8427:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE31:
	.text
.LHOTE31:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt:
.LFB8448:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movq	(%rcx), %rax
	movq	%rcx, %rbx
	movw	%dx, 48(%rcx)
	leaq	688(%rax), %rcx
	movzwl	%dx, %edx
	movzwl	50(%rbx), %eax
	cvtsi2sdl	%edx, %xmm6
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC29(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L458
	jne	.L458
	movsd	%xmm1, 96(%rbx)
.L460:
	pxor	%xmm0, %xmm0
.L463:
	movsd	%xmm0, 104(%rbx)
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movzwl	48(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L458:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	movapd	%xmm2, %xmm1
	leaq	688(%rax), %rcx
	movzwl	50(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L461
	je	.L460
.L461:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movapd	%xmm6, %xmm1
	movapd	%xmm3, %xmm2
	leaq	688(%rax), %rcx
	movzwl	50(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L463
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt:
.LFB8450:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movzwl	48(%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	movw	%dx, 50(%rcx)
	movzwl	%dx, %edx
	movq	%rcx, %rbx
	cvtsi2sdl	%edx, %xmm6
	movq	(%rcx), %rdx
	leaq	688(%rdx), %rcx
	movsd	%xmm6, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC29(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L466
	jne	.L466
	movsd	%xmm1, 96(%rbx)
.L468:
	pxor	%xmm0, %xmm0
.L471:
	movsd	%xmm0, 104(%rbx)
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movzwl	50(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L466:
	movzwl	48(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm6, 32(%rsp)
	cvtsi2sdl	%eax, %xmm3
	addq	$688, %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L469
	je	.L468
.L469:
	movzwl	48(%rbx), %eax
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rcx
	pxor	%xmm3, %xmm3
	movsd	%xmm6, 32(%rsp)
	movapd	%xmm3, %xmm2
	cvtsi2sdl	%eax, %xmm1
	addq	$688, %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L471
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC32:
	.ascii "wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\12Params: Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd:
.LFB8452:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L478
	movsd	%xmm1, 56(%rcx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movsd	56(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L478:
	leaq	.LC32(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.long	0
	.long	1080459264
	.align 8
.LC29:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
