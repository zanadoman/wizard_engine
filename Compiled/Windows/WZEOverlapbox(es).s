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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0:
.LFB8657:
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
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_:
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
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxesD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
_ZN3wze6engine6actors5actor12overlapboxesD2Ev:
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
	movl	$120, %edx
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
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxesD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxesD1Ev,_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.actors[].overlapboxes.Delete(): Illegal deletion of NULL Overlapbox\12Params: ID: %lld\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.actors[].overlapboxes.Delete(): Overlapbox does not exist\12Params: ID: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.def	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy:
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
	je	.L49
	cmpq	16(%rcx), %rdx
	jnb	.L40
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L40
	movl	$120, %edx
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
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
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
	.ascii "wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\12Params: Keep(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE:
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
	je	.L55
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%rdi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L56
	cmpq	%rcx, %rdx
	jnb	.L57
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rdx,8)
	je	.L57
.L56:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L58
.L55:
	cmpq	$1, %rcx
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
	cmpq	%rcx, %rsi
	jb	.L60
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L92
.L90:
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
.L63:
	movq	(%rdx,%rsi,8), %rax
	leaq	0(,%rsi,8), %r12
	testq	%rax, %rax
	je	.L65
	movl	$120, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rdx
.L65:
	cmpq	%rcx, %rsi
	jnb	.L93
	movq	$0, (%rdx,%r12)
	jmp	.L64
.L92:
	movq	%rcx, %r9
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L73:
	leaq	-1(%r9), %rax
	cmpq	%rcx, %rax
	jnb	.L94
	cmpq	$0, (%rdx,%rax,8)
	jne	.L95
	movq	%rax, %r9
.L68:
	cmpq	$1, %r9
	jne	.L73
.L72:
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
.L59:
	testq	%rcx, %rcx
	jne	.L90
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L95:
	subq	%r9, %rcx
	movq	%rcx, %r8
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
	.ascii "wze::engine.actors[].overlapboxes.Purge(): Overlapbox does not exist\12Params: Keep: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE:
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
	je	.L97
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L98:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L97
.L100:
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L98
	cmpq	%r9, %rcx
	jnb	.L99
	movq	24(%rdi), %r10
	cmpq	$0, (%r10,%rcx,8)
	jne	.L98
.L99:
	leaq	.LC8(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L97:
	cmpq	$1, %r9
	jbe	.L101
	movq	24(%rdi), %r10
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L105
	.p2align 4,,10
	.p2align 3
.L110:
	movq	8(%rsi), %rcx
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
	movq	(%rsi), %rdx
	testq	%rdx, %rdx
	jne	.L110
	.p2align 4,,10
	.p2align 3
.L105:
	movq	(%r10,%rbx,8), %rcx
	leaq	0(,%rbx,8), %rbp
	testq	%rcx, %rcx
	je	.L107
	movl	$120, %edx
	call	_ZdlPvy
	movq	16(%rdi), %r9
	movq	24(%rdi), %r10
.L107:
	cmpq	%r9, %rbx
	jnb	.L133
	addq	$1, %rbx
	movq	$0, (%r10,%rbp)
	cmpq	%r9, %rbx
	jb	.L134
.L109:
	cmpq	$0, -8(%r10,%r9,8)
	leaq	-1(%r9), %r8
	je	.L135
.L131:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
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
	leaq	16(%rdi), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
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
	subq	%rax, %r9
	movq	%r9, %r8
	jmp	.L115
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
	.ascii "wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\12Params: ID: %lld\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesixEy
	.def	_ZN3wze6engine6actors5actor12overlapboxesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesixEy
_ZN3wze6engine6actors5actor12overlapboxesixEy:
.LFB8444:
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
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev:
.LFB8449:
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
.LFB8451:
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
.LFB8452:
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
.LFB8453:
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
.LFB8454:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].overlapboxes[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd:
.LFB8455:
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
	jp	.L165
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm6, %xmm1
	jp	.L151
	jne	.L151
	ucomisd	%xmm0, %xmm2
	jp	.L151
	jne	.L151
	movq	$0x000000000, 64(%rcx)
.L159:
	pxor	%xmm0, %xmm0
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L151:
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
	jp	.L155
	jne	.L155
	ucomisd	%xmm0, %xmm2
	jp	.L155
	je	.L159
.L155:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L158:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 32(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L165:
	leaq	.LC12(%rip), %rcx
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
.LFB8456:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].overlapboxes[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd:
.LFB8457:
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
	jp	.L184
	movq	8(%rcx), %rax
	movsd	32(%rcx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm3, %xmm1
	jp	.L170
	jne	.L170
	ucomisd	%xmm2, %xmm6
	jp	.L170
	jne	.L170
	movq	$0x000000000, 64(%rcx)
.L178:
	pxor	%xmm0, %xmm0
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L170:
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
	jp	.L174
	jne	.L174
	ucomisd	%xmm2, %xmm6
	jp	.L174
	je	.L178
.L174:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	688(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L177:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L184:
	leaq	.LC13(%rip), %rcx
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
.LFB8458:
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
.LFB8460:
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
.LFB8462:
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
.LFB8464:
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
.LFB8465:
	.seh_endprologue
	movzwl	82(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].overlapboxes[].IsCollidingWith(): Actor does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].overlapboxes[].IsCollidingWith(): Overlapbox does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15IsCollidingWithEyy
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15IsCollidingWithEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15IsCollidingWithEyy
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15IsCollidingWithEyy:
.LFB8466:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%r8, %rax
	testq	%rdx, %rdx
	je	.L190
	movq	(%rcx), %r9
	cmpq	640(%r9), %rdx
	jnb	.L192
	movq	648(%r9), %r8
	movq	(%r8,%rdx,8), %r8
	testq	%r8, %r8
	je	.L192
	testq	%rax, %rax
	jne	.L202
.L190:
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L202:
	cmpq	152(%r8), %rax
	jnb	.L194
	movq	160(%r8), %r8
	movq	(%r8,%rax,8), %r8
	testq	%r8, %r8
	je	.L194
	addq	$656, %r9
	movq	%rcx, %rdx
	movq	%r9, %rcx
	addq	$40, %rsp
	jmp	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_
.L192:
	leaq	.LC14(%rip), %rcx
	movq	%rax, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L194:
	leaq	.LC15(%rip), %rcx
	movq	%rax, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC17:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOverlapInfoEPN3neo5arrayINS6_IyEEEE
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOverlapInfoEPN3neo5arrayINS6_IyEEEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOverlapInfoEPN3neo5arrayINS6_IyEEEE
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOverlapInfoEPN3neo5arrayINS6_IyEEEE:
.LFB8467:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	movq	%rcx, %rdi
	movq	%rdx, %r12
	je	.L207
	.p2align 4,,10
	.p2align 3
.L204:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%r12), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%r12), %rbx
	jb	.L204
.L207:
	movq	$0, (%r12)
	movq	8(%r12), %rcx
	call	free
	movq	(%rdi), %rbx
	movq	(%r12), %rax
	movq	$0, 8(%r12)
	movq	640(%rbx), %rbp
	testq	%rbp, %rbp
	jne	.L241
.L237:
	xorl	%eax, %eax
	addq	$56, %rsp
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
.L241:
	leaq	0(%rbp,%rax), %r13
	movq	%r13, (%r12)
	movq	%r13, %rsi
	salq	$4, %rsi
	movq	%rsi, %rcx
	call	malloc
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L242
	subq	$1, %r13
	cmpq	%rbp, %r13
	jb	.L213
	movq	%rbp, %rcx
	leaq	(%rax,%rsi), %rdx
	salq	$4, %rcx
	leaq	(%rax,%rcx), %r8
	negq	%rcx
	.p2align 4,,10
	.p2align 3
.L212:
	movdqu	-16(%rdx,%rcx), %xmm0
	subq	$16, %rdx
	movups	%xmm0, (%rdx)
	cmpq	%rdx, %r8
	jne	.L212
.L213:
	movq	%rbp, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L211:
	movq	$0, (%rax)
	addq	$16, %rax
	movq	$0, -8(%rax)
	cmpq	%rax, %rdx
	jne	.L211
	cmpq	$1, %rbp
	je	.L237
	movq	640(%rbx), %rdx
	movl	$1, %r15d
	leaq	40(%rsp), %r14
	.p2align 4,,10
	.p2align 3
.L224:
	movq	648(%rbx), %rax
	leaq	0(,%r15,8), %rbp
	movq	(%rax,%r15,8), %rcx
	testq	%rcx, %rcx
	je	.L215
	cmpq	8(%rdi), %rcx
	je	.L215
	cmpq	%rdx, %r15
	jnb	.L240
	movq	%r15, %r13
	movl	$1, %esi
	salq	$4, %r13
	jmp	.L222
	.p2align 4,,10
	.p2align 3
.L239:
	movq	(%rdi), %rbx
	movq	640(%rbx), %rdx
.L217:
	movq	648(%rbx), %rax
	addq	$1, %rsi
	cmpq	%rdx, %r15
	jnb	.L240
.L222:
	movq	(%rax,%rbp), %rax
	cmpq	152(%rax), %rsi
	jnb	.L215
	movq	160(%rax), %rax
	movq	(%rax,%rsi,8), %r8
	testq	%r8, %r8
	je	.L217
	leaq	656(%rbx), %rcx
	movq	%rdi, %rdx
	call	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_
	testb	%al, %al
	je	.L239
	movq	%rsi, 40(%rsp)
	movq	8(%r12), %rbx
	cmpq	(%r12), %r15
	jnb	.L240
	addq	%r13, %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%rbx)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L243
	movq	(%rbx), %rdx
	movl	$8, %r8d
	movq	%r14, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L215:
	addq	$1, %r15
	cmpq	%rdx, %r15
	jb	.L224
	jmp	.L237
.L240:
	leaq	.LC6(%rip), %rcx
	movq	%r15, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L243:
	leaq	.LC17(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L242:
	leaq	.LC16(%rip), %rcx
	movq	%rbp, %r8
	xorl	%edx, %edx
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
.LFB8468:
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
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movzwl	80(%rcx), %esi
	movq	(%rcx), %rdx
	movsd	32(%rcx), %xmm7
	movsd	40(%rcx), %xmm8
	movl	%esi, %eax
	movzwl	82(%rcx), %edi
	shrw	%ax
	movzwl	%ax, %eax
	movq	%rcx, %rbx
	cvtsi2sdl	%eax, %xmm0
	movq	8(%rcx), %rax
	leaq	576(%rdx), %rcx
	movsd	264(%rax), %xmm1
	subsd	%xmm0, %xmm7
	call	_ZN3wze6engine5mouse4GetXEd
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movapd	%xmm0, %xmm6
	movsd	264(%rax), %xmm1
	leaq	576(%rdx), %rcx
	call	_ZN3wze6engine5mouse4GetYEd
	comisd	%xmm7, %xmm6
	jb	.L268
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	%xmm7, %xmm1
	comisd	%xmm6, %xmm1
	jnb	.L269
.L268:
	xorl	%eax, %eax
.L245:
	movl	%eax, 112(%rbx)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L269:
	movl	%edi, %eax
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	shrw	%ax
	cvtsi2sdl	%edi, %xmm3
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm8, %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm3, %xmm2
	comisd	%xmm2, %xmm0
	jb	.L268
	comisd	%xmm0, %xmm1
	jb	.L268
	movq	(%rbx), %rax
	movl	$291, %edx
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L258
	movl	112(%rbx), %eax
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%esi, %esi
	andl	$-4, %esi
	addl	$13, %esi
	cmpl	$1, %eax
	sbbl	%ebp, %ebp
	andl	$-4, %ebp
	addl	$21, %ebp
	cmpl	$1, %eax
	sbbl	%edi, %edi
	andl	$-4, %edi
	addl	$5, %edi
.L250:
	movq	(%rbx), %rax
	movl	$292, %edx
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	jne	.L251
	testb	$8, 112(%rbx)
	cmovne	%ebp, %edi
	movl	%edi, %esi
.L251:
	movq	(%rbx), %rax
	movl	$293, %edx
	leaq	264(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L252
	orl	$32, %esi
	movzwl	%si, %eax
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L258:
	movl	$11, %esi
	movl	$19, %ebp
	movl	$3, %edi
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L252:
	movzwl	%si, %edx
	orl	$64, %esi
	testb	$32, 112(%rbx)
	movzwl	%si, %eax
	cmove	%edx, %eax
	jmp	.L245
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv:
.LFB8469:
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
	movsd	.LC18(%rip), %xmm7
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
.LFB8446:
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
	mulsd	.LC20(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L272
	jne	.L272
	movsd	%xmm1, 96(%rbx)
.L274:
	pxor	%xmm0, %xmm0
.L277:
	movq	%rbx, %rcx
	movsd	%xmm0, 104(%rbx)
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	.p2align 4,,10
	.p2align 3
.L272:
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
	jp	.L275
	je	.L274
.L275:
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
	jmp	.L277
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].overlapboxes.New(): Memory allocation failed\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB22:
	.text
.LHOTB22:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
_ZN3wze6engine6actors5actor12overlapboxes3NewEy:
.LFB8438:
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
	jbe	.L280
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L284
	.p2align 4,,10
	.p2align 3
.L281:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L280
.L284:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L281
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
	jnb	.L294
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
.L280:
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
	je	.L295
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
	jnc	.L296
	cmpq	$0, (%rdx,%rax,8)
	je	.L297
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L294:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L297:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L296:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L295:
	leaq	.LC17(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L291:
	movq	%rax, %rsi
	jmp	.L290
.L292:
	movq	%rax, %rbx
	jmp	.L289
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
	.uleb128 .L292-.LFB8438
	.uleb128 0
	.uleb128 .LEHB2-.LFB8438
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8438
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L291-.LFB8438
	.uleb128 0
	.uleb128 .LEHB4-.LFB8438
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
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
.L290:
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L289:
	movq	%rbp, %rcx
	movl	$120, %edx
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
	.uleb128 .LEHB5-.LCOLDB22
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8438:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE22:
	.text
.LHOTE22:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt:
.LFB8459:
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
	mulsd	.LC20(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L299
	jne	.L299
	movsd	%xmm1, 96(%rbx)
.L301:
	pxor	%xmm0, %xmm0
.L304:
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
.L299:
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
	jp	.L302
	je	.L301
.L302:
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
	jmp	.L304
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt:
.LFB8461:
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
	mulsd	.LC20(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L307
	jne	.L307
	movsd	%xmm1, 96(%rbx)
.L309:
	pxor	%xmm0, %xmm0
.L312:
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
.L307:
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
	jp	.L310
	je	.L309
.L310:
	movzwl	48(%rbx), %eax
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rcx
	pxor	%xmm3, %xmm3
	movsd	%xmm6, 32(%rsp)
	movapd	%xmm3, %xmm2
	cvtsi2sdl	%eax, %xmm1
	addq	$688, %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L312
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\12Params: Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd:
.LFB8463:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L319
	movsd	%xmm1, 56(%rcx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox21UpdateOverlapboxScaleEv
	movsd	56(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L319:
	leaq	.LC23(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.long	0
	.long	1080459264
	.align 8
.LC20:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collision12CheckOverlapEPNS0_6actors5actor12overlapboxes10overlapboxES6_;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
