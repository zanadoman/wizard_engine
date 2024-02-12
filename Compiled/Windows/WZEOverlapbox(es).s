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
.LFB8663:
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
.LFB8664:
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
.LFB8432:
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
	call	_ZN3neo6memory6CopyToEPKvPvy
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
.LFB8435:
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
	movl	$128, %edx
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
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.def	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy:
.LFB8438:
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
	jb	.L72
.L55:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L55
	movl	$128, %edx
	call	_ZdlPvy
	movq	16(%rbx), %rax
	movq	24(%rbx), %rcx
	cmpq	%rax, %rsi
	jnb	.L73
	movq	$0, (%rcx,%rsi,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L55
	cmpq	$1, %rax
	je	.L55
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L61:
	movq	%rdx, %r9
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L74
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L75
	cmpq	$1, %rdx
	jne	.L61
.L60:
	leaq	16(%rbx), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L75:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L60
.L74:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE:
.LFB8439:
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
	jbe	.L77
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L84:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L79
.L78:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L80
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	.L78
.L79:
	movq	(%rcx,%rbx,8), %rax
	leaq	0(,%rbx,8), %r12
	testq	%rax, %rax
	je	.L82
	movl	$128, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rcx
.L82:
	cmpq	%rdx, %rbx
	jnb	.L102
	movq	$0, (%rcx,%r12)
.L80:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L84
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L103
.L101:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L103:
	movq	%rdx, %r9
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L90:
	leaq	-1(%r9), %rax
	cmpq	%rdx, %rax
	jnb	.L104
	cmpq	$0, (%rcx,%rax,8)
	jne	.L105
	movq	%rax, %r9
.L85:
	cmpq	$1, %r9
	jne	.L90
.L89:
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
.L77:
	testq	%rdx, %rdx
	jne	.L101
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L105:
	subq	%r9, %rdx
	movq	%rdx, %r8
	jmp	.L89
.L104:
	leaq	.LC6(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L102:
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
	.ascii "wze::engine.actors[].overlapboxes.Purge(): KeepOverlapboxIDs must not be NULL\12Params: KeepOverlapboxIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE:
.LFB8440:
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
	je	.L107
	movq	16(%rcx), %rcx
	cmpq	$1, %rcx
	jbe	.L136
	movq	24(%rdi), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L116:
	movq	(%rsi), %rdx
	movq	8(%rsi), %r8
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L110
.L111:
	cmpq	(%r8,%rax,8), %rbx
	je	.L112
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L111
	.p2align 4,,10
	.p2align 3
.L110:
	movq	(%r9,%rbx,8), %rax
	leaq	0(,%rbx,8), %rbp
	testq	%rax, %rax
	je	.L114
	movq	%rax, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	16(%rdi), %rcx
	movq	24(%rdi), %r9
.L114:
	cmpq	%rcx, %rbx
	jnb	.L137
	movq	$0, (%r9,%rbp)
.L112:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L116
	cmpq	$0, -8(%r9,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L138
.L135:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L138:
	movq	%rcx, %rax
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L122:
	leaq	-1(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L139
	cmpq	$0, (%r9,%rdx,8)
	jne	.L140
	movq	%rdx, %rax
.L117:
	cmpq	$1, %rax
	jne	.L122
.L121:
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
.L136:
	testq	%rcx, %rcx
	jne	.L135
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L140:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L121
.L139:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L107:
	leaq	.LC7(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L137:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\12Params: OverlapboxID: %lld\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\12Params: OverlapboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesixEy
	.def	_ZN3wze6engine6actors5actor12overlapboxesixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxesixEy
_ZN3wze6engine6actors5actor12overlapboxesixEy:
.LFB8441:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L145
	cmpq	16(%rcx), %rdx
	jnb	.L143
	movq	24(%rcx), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L143
	addq	$40, %rsp
	ret
.L143:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L145:
	leaq	.LC8(%rip), %rcx
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
.LFB8446:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv:
.LFB8448:
	.seh_endprologue
	movq	24(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv:
.LFB8449:
	.seh_endprologue
	movq	32(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv:
.LFB8450:
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	200(%rax), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv:
.LFB8451:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].overlapboxes[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd:
.LFB8452:
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
	jp	.L168
	movq	8(%rcx), %rax
	movsd	48(%rcx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm6, %xmm0
	jp	.L154
	jne	.L154
	ucomisd	%xmm3, %xmm1
	jp	.L154
	jne	.L154
	movq	$0x000000000, 72(%rcx)
.L162:
	pxor	%xmm0, %xmm0
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L154:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm3
	movapd	%xmm0, %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm2, 72(%rbx)
	ucomisd	%xmm0, %xmm6
	jp	.L158
	jne	.L158
	ucomisd	%xmm3, %xmm1
	jp	.L158
	je	.L162
.L158:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
.L161:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L168:
	leaq	.LC11(%rip), %rcx
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
.LFB8453:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.actors[].overlapboxes[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd:
.LFB8454:
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
	jp	.L187
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L173
	jne	.L173
	ucomisd	%xmm1, %xmm6
	jp	.L173
	jne	.L173
	movq	$0x000000000, 72(%rcx)
.L181:
	pxor	%xmm0, %xmm0
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L173:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm3, 72(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L177
	jne	.L177
	ucomisd	%xmm1, %xmm6
	jp	.L177
	je	.L181
.L177:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
.L180:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 48(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L187:
	leaq	.LC12(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv:
.LFB8455:
	.seh_endprologue
	movsd	72(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].overlapboxes[].SetOffsetLength(): OffsetLength must not be NaN\12Params: OffsetLength: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd:
.LFB8456:
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
	jp	.L194
	movq	8(%rcx), %rax
	movsd	80(%rcx), %xmm2
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	80(%rbx), %xmm2
	movapd	%xmm6, %xmm1
	movsd	%xmm0, 40(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	movsd	%xmm6, 72(%rbx)
	movsd	%xmm0, 48(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L194:
	leaq	.LC13(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv:
.LFB8457:
	.seh_endprologue
	movsd	80(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].overlapboxes[].SetOffsetAngle(): OffsetAngle must not be NaN\12Params: OffsetAngle %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd:
.LFB8458:
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
	jp	.L201
	movq	8(%rcx), %rax
	movapd	%xmm1, %xmm2
	movsd	72(%rcx), %xmm1
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	8(%rbx), %rax
	movsd	72(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	movsd	%xmm0, 40(%rbx)
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	movsd	%xmm6, 80(%rbx)
	movsd	%xmm0, 48(%rbx)
	movapd	%xmm6, %xmm0
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L201:
	leaq	.LC14(%rip), %rcx
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
.LFB8459:
	.seh_endprologue
	movzwl	56(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv:
.LFB8461:
	.seh_endprologue
	movzwl	58(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv:
.LFB8463:
	.seh_endprologue
	movsd	64(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv:
.LFB8465:
	.seh_endprologue
	movzwl	88(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv:
.LFB8466:
	.seh_endprologue
	movzwl	90(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Actor\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Actor does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Overlapbox\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Overlapbox does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy:
.LFB8467:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rax
	testq	%rdx, %rdx
	je	.L218
	movq	(%rcx), %rcx
	cmpq	264(%rcx), %rdx
	jnb	.L209
	movq	272(%rcx), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.L209
	testq	%r8, %r8
	je	.L219
	cmpq	152(%r9), %r8
	jnb	.L212
	movq	160(%r9), %r9
	movq	(%r9,%r8,8), %r10
	testq	%r10, %r10
	je	.L212
	movzwl	88(%rax), %r8d
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	pxor	%xmm4, %xmm4
	movsd	40(%rax), %xmm1
	pxor	%xmm3, %xmm3
	addq	$280, %rcx
	movl	%r8d, %edx
	cvtsi2sdl	%r8d, %xmm3
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	90(%rax), %edx
	movl	%edx, %r9d
	cvtsi2sdl	%edx, %xmm4
	shrw	%r9w
	movzwl	%r9w, %r9d
	subsd	%xmm0, %xmm1
	cvtsi2sdl	%r9d, %xmm2
	addsd	48(%rax), %xmm2
	movq	%r10, 40(%rsp)
	addsd	%xmm1, %xmm3
	movapd	%xmm2, %xmm0
	subsd	%xmm4, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	addq	$56, %rsp
	ret
.L209:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L212:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L218:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L219:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist(length): %ld\12\0"
	.align 8
.LC20:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_:
.LFB8468:
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
	je	.L221
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L225
	.p2align 4,,10
	.p2align 3
.L222:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L222
.L225:
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
	movq	264(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%rdi), %edx
	pxor	%xmm0, %xmm0
	movsd	40(%rdi), %xmm7
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	90(%rdi), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	(%rdi), %rax
	cvtsi2sdl	%ecx, %xmm6
	addsd	48(%rdi), %xmm6
	movq	264(%rax), %r11
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r11
	jbe	.L257
	movq	%r13, %r9
	movq	%r14, %r8
	movq	%rbp, %r13
	movq	%rsi, %rbp
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L226:
	addq	$1, %rbx
	cmpq	%r11, %rbx
	jnb	.L257
.L223:
	movq	272(%rax), %rcx
	leaq	0(,%rbx,8), %r14
	movq	(%rcx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L226
	cmpq	8(%rdi), %rdx
	je	.L226
	movq	216(%rdx), %rsi
	xorl	%edx, %edx
	testq	%r13, %r13
	je	.L226
	cmpq	(%r15,%rdx,8), %rsi
	je	.L268
.L258:
	addq	$1, %rdx
	cmpq	%rdx, %r13
	je	.L226
	cmpq	(%r15,%rdx,8), %rsi
	jne	.L258
.L268:
	xorl	%edx, %edx
	testq	%r8, %r8
	je	.L230
.L240:
	cmpq	%rbx, (%r9,%rdx,8)
	je	.L226
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L240
.L230:
	cmpq	%r11, %rbx
	jnb	.L267
	movq	%rbx, %rsi
	movq	%r13, 56(%rsp)
	movl	$1, %r12d
	salq	$4, %rsi
	movq	%r9, 64(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	88(%rsp), %rsi
	movq	%r8, 72(%rsp)
	jmp	.L238
	.p2align 4,,10
	.p2align 3
.L266:
	movq	(%rdi), %rax
	movq	264(%rax), %r11
.L233:
	movq	272(%rax), %rcx
	addq	$1, %r12
	cmpq	%r11, %rbx
	jnb	.L267
.L238:
	movq	(%rcx,%r14), %rdx
	cmpq	152(%rdx), %r12
	jnb	.L269
	movq	160(%rdx), %rdx
	movq	(%rdx,%r12,8), %rdx
	testq	%rdx, %rdx
	je	.L233
	movq	%rdx, 40(%rsp)
	leaq	280(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L266
	movq	%r12, 88(%rsp)
	movq	8(%rbp), %r8
	cmpq	0(%rbp), %rbx
	jnb	.L267
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
	je	.L270
	movq	0(%r13), %rdx
	movl	$8, %r8d
	movq	%rsi, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L257:
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
.L269:
	movq	56(%rsp), %r13
	movq	64(%rsp), %r9
	movq	72(%rsp), %r8
	jmp	.L226
.L267:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L270:
	leaq	.LC20(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L221:
	leaq	.LC19(%rip), %rcx
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
.LC21:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE:
.LFB8470:
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
	je	.L320
	testq	%r8, %r8
	je	.L273
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L277
	.p2align 4,,10
	.p2align 3
.L274:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L274
.L277:
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
	movq	264(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%rdi), %edx
	pxor	%xmm0, %xmm0
	movq	%r12, %r10
	movsd	40(%rdi), %xmm7
	movq	%rbp, %r9
	movq	%rdi, %r12
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	90(%rdi), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	(%rdi), %rax
	cvtsi2sdl	%ecx, %xmm6
	addsd	48(%rdi), %xmm6
	movq	264(%rax), %r8
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r8
	jbe	.L310
	.p2align 4,,10
	.p2align 3
.L275:
	movq	272(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L278
	cmpq	8(%r12), %rcx
	je	.L278
	movq	(%r15), %r11
	movq	216(%rcx), %rdi
	xorl	%ecx, %ecx
	movq	8(%r15), %r13
	testq	%r11, %r11
	je	.L278
.L279:
	cmpq	0(%r13,%rcx,8), %rdi
	je	.L321
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L279
	.p2align 4,,10
	.p2align 3
.L278:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L275
.L310:
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
.L321:
	xorl	%ecx, %ecx
	testq	%r9, %r9
	je	.L282
.L292:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L278
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L292
.L282:
	cmpq	%r8, %rbx
	jnb	.L319
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	leaq	72(%rsp), %r14
	movl	$1, %r13d
	movq	%r15, 240(%rsp)
	salq	$4, %rdi
	movq	%r10, 56(%rsp)
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L318:
	movq	(%r12), %rax
	movq	264(%rax), %r8
.L285:
	movq	272(%rax), %rdx
	addq	$1, %r13
	cmpq	%r8, %rbx
	jnb	.L319
.L290:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %r13
	jnb	.L322
	movq	160(%rdx), %rdx
	movq	(%rdx,%r13,8), %rdx
	testq	%rdx, %rdx
	je	.L285
	movq	%rdx, 40(%rsp)
	leaq	280(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L318
	movq	%r13, 72(%rsp)
	movq	8(%rsi), %r8
	cmpq	(%rsi), %rbx
	jnb	.L319
	leaq	(%r8,%rdi), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r15)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L323
	movq	(%r15), %rdx
	movl	$8, %r8d
	movq	%r14, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	jmp	.L318
	.p2align 4,,10
	.p2align 3
.L322:
	addq	$1, %rbx
	movq	48(%rsp), %r9
	movq	56(%rsp), %r10
	movq	240(%rsp), %r15
	cmpq	%r8, %rbx
	jb	.L275
	jmp	.L310
.L319:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L273:
	leaq	.LC22(%rip), %rcx
	movq	%rbp, %r9
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L320:
	leaq	.LC21(%rip), %rcx
	movq	%rbp, %r9
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L323:
	leaq	.LC20(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_:
.LFB8471:
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
	je	.L373
	testq	%r9, %r9
	je	.L326
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L330
	.p2align 4,,10
	.p2align 3
.L327:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L327
.L330:
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
	movq	264(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%rdi), %edx
	pxor	%xmm0, %xmm0
	movsd	40(%rdi), %xmm7
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	90(%rdi), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movq	(%rdi), %rax
	cvtsi2sdl	%ecx, %xmm6
	addsd	48(%rdi), %xmm6
	movq	264(%rax), %r8
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r8
	jbe	.L363
	movq	%r15, %r10
	movq	%r12, %r9
	movq	%rbp, %r15
	movq	%rdi, %r12
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L331:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L363
.L328:
	movq	272(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L331
	cmpq	8(%r12), %rcx
	je	.L331
	movq	216(%rcx), %r11
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L331
	cmpq	(%r9,%rcx,8), %r11
	je	.L374
.L364:
	addq	$1, %rcx
	cmpq	%rcx, %r15
	je	.L331
	cmpq	(%r9,%rcx,8), %r11
	jne	.L364
.L374:
	movq	(%r10), %r11
	movq	8(%r10), %rdi
	xorl	%ecx, %ecx
	testq	%r11, %r11
	je	.L335
.L345:
	cmpq	%rbx, (%rdi,%rcx,8)
	je	.L331
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L345
	.p2align 4,,10
	.p2align 3
.L335:
	cmpq	%r8, %rbx
	jnb	.L372
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	leaq	72(%rsp), %r14
	movl	$1, %r13d
	movq	%r10, 248(%rsp)
	salq	$4, %rdi
	movq	%r15, 56(%rsp)
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L371:
	movq	(%r12), %rax
	movq	264(%rax), %r8
.L338:
	movq	272(%rax), %rdx
	addq	$1, %r13
	cmpq	%r8, %rbx
	jnb	.L372
.L343:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %r13
	jnb	.L375
	movq	160(%rdx), %rdx
	movq	(%rdx,%r13,8), %rdx
	testq	%rdx, %rdx
	je	.L338
	movq	%rdx, 40(%rsp)
	leaq	280(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L371
	movq	%r13, 72(%rsp)
	movq	8(%rsi), %r8
	cmpq	(%rsi), %rbx
	jnb	.L372
	leaq	(%r8,%rdi), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r15)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L376
	movq	(%r15), %rdx
	movl	$8, %r8d
	movq	%r14, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	jmp	.L371
	.p2align 4,,10
	.p2align 3
.L363:
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
.L375:
	movq	248(%rsp), %r10
	movq	48(%rsp), %r9
	movq	56(%rsp), %r15
	jmp	.L331
.L372:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L326:
	leaq	.LC24(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L373:
	leaq	.LC23(%rip), %rcx
	movq	%rbp, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L376:
	leaq	.LC20(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_:
.LFB8472:
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
	je	.L427
	testq	%r8, %r8
	je	.L428
	testq	%r9, %r9
	je	.L380
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L384
	.p2align 4,,10
	.p2align 3
.L381:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rdi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rdi), %rbx
	jb	.L381
.L384:
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
	movq	264(%rax), %r8
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%rbp), %edx
	pxor	%xmm0, %xmm0
	movsd	40(%rbp), %xmm7
	leaq	56(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm8
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	movzwl	90(%rbp), %eax
	movl	%eax, %ecx
	shrw	%cx
	subsd	%xmm0, %xmm7
	movzwl	%cx, %ecx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm6
	addsd	48(%rbp), %xmm6
	cvtsi2sdl	%eax, %xmm0
	movq	0(%rbp), %rax
	addsd	%xmm7, %xmm8
	movq	264(%rax), %rcx
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %rcx
	jbe	.L418
	movq	%r9, %r13
	movq	%r14, %r9
	movq	%r12, %r14
	movq	%rbp, %r12
	.p2align 4,,10
	.p2align 3
.L382:
	movq	272(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %r8
	testq	%r8, %r8
	je	.L385
	cmpq	8(%r12), %r8
	je	.L385
	movq	(%r14), %r10
	movq	216(%r8), %r11
	xorl	%r8d, %r8d
	movq	8(%r14), %rsi
	testq	%r10, %r10
	je	.L385
.L386:
	cmpq	(%rsi,%r8,8), %r11
	je	.L429
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L386
	.p2align 4,,10
	.p2align 3
.L385:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L382
.L418:
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
.L429:
	movq	(%r9), %r10
	movq	8(%r9), %r11
	xorl	%r8d, %r8d
	testq	%r10, %r10
	je	.L389
.L399:
	cmpq	%rbx, (%r11,%r8,8)
	je	.L385
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L399
	.p2align 4,,10
	.p2align 3
.L389:
	cmpq	%rcx, %rbx
	jnb	.L426
	movq	%rbx, %r15
	movq	%r14, 224(%rsp)
	movl	$1, %esi
	movq	%r9, 232(%rsp)
	salq	$4, %r15
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L425:
	movq	(%r12), %rax
	movq	264(%rax), %rcx
.L392:
	movq	272(%rax), %rdx
	addq	$1, %rsi
	cmpq	%rcx, %rbx
	jnb	.L426
.L397:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %rsi
	jnb	.L430
	movq	160(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L392
	movq	%rdx, 40(%rsp)
	leaq	280(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L425
	movq	%rsi, 56(%rsp)
	movq	8(%rdi), %r8
	cmpq	(%rdi), %rbx
	jnb	.L426
	leaq	(%r8,%r15), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r14)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L431
	movq	(%r14), %rdx
	movl	$8, %r8d
	movq	%r13, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	jmp	.L425
	.p2align 4,,10
	.p2align 3
.L430:
	addq	$1, %rbx
	movq	224(%rsp), %r14
	movq	232(%rsp), %r9
	cmpq	%rcx, %rbx
	jb	.L382
	jmp	.L418
.L426:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L380:
	leaq	.LC27(%rip), %rcx
	xorl	%r9d, %r9d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L428:
	leaq	.LC26(%rip), %rcx
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L427:
	leaq	.LC25(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L431:
	leaq	.LC20(%rip), %rcx
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
.LFB8473:
	.seh_endprologue
	movl	120(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv:
.LFB8474:
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
	pxor	%xmm0, %xmm0
	movsd	.LC28(%rip), %xmm7
	movsd	64(%rcx), %xmm6
	movsd	104(%rcx), %xmm8
	movsd	96(%rcx), %xmm1
	addsd	%xmm6, %xmm8
	addsd	112(%rcx), %xmm6
	movq	%rcx, %rbx
	movapd	%xmm8, %xmm2
	movapd	%xmm8, %xmm9
	call	_ZN3wze6engine6vector9TerminalXEddd
	addsd	%xmm7, %xmm9
	addsd	%xmm6, %xmm7
	call	round
	movsd	96(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	cvttsd2sil	%xmm0, %edi
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movsd	96(%rbx), %xmm1
	movapd	%xmm9, %xmm2
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movsd	96(%rbx), %xmm1
	movapd	%xmm7, %xmm2
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movsd	96(%rbx), %xmm1
	movapd	%xmm8, %xmm2
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movsd	96(%rbx), %xmm1
	movapd	%xmm6, %xmm2
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movsd	96(%rbx), %xmm1
	movapd	%xmm9, %xmm2
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movsd	96(%rbx), %xmm1
	movapd	%xmm7, %xmm2
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
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
	movw	%ax, 88(%rbx)
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
	movw	%ax, 90(%rbx)
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
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy:
.LFB8443:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$257, %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movd	256(%r8), %xmm0
	movsd	264(%r8), %xmm1
	movupd	224(%r8), %xmm4
	movw	%ax, 16(%rcx)
	movq	80(%rsp), %rax
	movq	%rcx, %rbx
	movq	%rdx, (%rcx)
	pextrw	$1, %xmm0, %edx
	movq	%rax, 32(%rcx)
	pextrw	$0, %xmm0, %eax
	cvtsi2sdl	%edx, %xmm3
	cvtsi2sdl	%eax, %xmm2
	movq	%r8, 8(%rcx)
	movb	$0, 18(%rcx)
	movq	%r9, 24(%rcx)
	movq	$0x000000000, 72(%rcx)
	movq	$0x000000000, 80(%rcx)
	movsd	%xmm1, 64(%rcx)
	pxor	%xmm1, %xmm1
	movd	%xmm0, 56(%rcx)
	movd	%xmm0, 88(%rcx)
	movapd	%xmm1, %xmm0
	movups	%xmm4, 40(%rcx)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC30(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
	jp	.L435
	jne	.L435
	movsd	%xmm1, 104(%rbx)
.L437:
	pxor	%xmm0, %xmm0
.L440:
	movq	%rbx, %rcx
	movl	$0, 120(%rbx)
	movsd	%xmm0, 112(%rbx)
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	.p2align 4,,10
	.p2align 3
.L435:
	movzwl	58(%rbx), %edx
	movzwl	56(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm3
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	96(%rbx), %xmm1
	movsd	%xmm0, 104(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L438
	je	.L437
.L438:
	movzwl	58(%rbx), %eax
	movzwl	56(%rbx), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L440
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "wze::engine.actors[].overlapboxes.New(): Memory allocation failed\12Params: Type: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB32:
	.text
.LHOTB32:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
_ZN3wze6engine6actors5actor12overlapboxes3NewEy:
.LFB8437:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rbp
	cmpq	$1, %rax
	jbe	.L443
	movq	24(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L444:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L443
.L447:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L444
	movl	$128, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	(%rsi), %rdx
	movq	%rbp, 32(%rsp)
	movq	%rbx, %r9
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB1:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy
.LEHE1:
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rbx
	jnb	.L457
	movq	%rdi, (%rax,%rbx,8)
	movq	%rdi, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L443:
	movl	$128, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	(%rsi), %rdx
	movq	%rbp, 32(%rsp)
	movq	16(%rsi), %r9
	movq	8(%rsi), %r8
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB3:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy
.LEHE3:
	movq	16(%rsi), %rax
	movq	24(%rsi), %rcx
	movq	%rbx, 56(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L458
	movq	16(%rsi), %rdx
	leaq	56(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L459
	movq	(%rdx,%rcx,8), %rdi
	testq	%rdi, %rdi
	je	.L460
	movq	%rdi, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L457:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L460:
	leaq	.LC31(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L459:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L458:
	leaq	.LC20(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L454:
	movq	%rax, %rsi
	jmp	.L453
.L455:
	movq	%rax, %rbx
	jmp	.L452
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8437:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8437-.LLSDACSB8437
.LLSDACSB8437:
	.uleb128 .LEHB0-.LFB8437
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8437
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L455-.LFB8437
	.uleb128 0
	.uleb128 .LEHB2-.LFB8437
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8437
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L454-.LFB8437
	.uleb128 0
	.uleb128 .LEHB4-.LFB8437
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8437:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 72
	.seh_savereg	%rsi, 80
	.seh_savereg	%rdi, 88
	.seh_savereg	%rbp, 96
	.seh_endprologue
_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold:
.L453:
	movq	%rbx, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L452:
	movq	%rdi, %rcx
	movl	$128, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8437:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8437-.LLSDACSBC8437
.LLSDACSBC8437:
	.uleb128 .LEHB5-.LCOLDB32
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8437:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE32:
	.text
.LHOTE32:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt:
.LFB8460:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movzwl	%dx, %eax
	movq	%rcx, %rbx
	movl	%edx, %esi
	cvtsi2sdl	%eax, %xmm6
	movzwl	58(%rcx), %eax
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC30(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
	jp	.L462
	jne	.L462
	movsd	%xmm1, 104(%rbx)
.L464:
	pxor	%xmm0, %xmm0
.L467:
	movw	%si, 56(%rbx)
	movq	%rbx, %rcx
	movsd	%xmm0, 112(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movzwl	56(%rbx), %eax
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L462:
	movzwl	58(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	movapd	%xmm6, %xmm2
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	96(%rbx), %xmm1
	movsd	%xmm0, 104(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L465
	je	.L464
.L465:
	movzwl	58(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L467
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt:
.LFB8462:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movzwl	%dx, %eax
	movq	%rcx, %rbx
	movl	%edx, %esi
	cvtsi2sdl	%eax, %xmm3
	movzwl	56(%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm3, 40(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	pxor	%xmm1, %xmm1
	movsd	40(%rsp), %xmm3
	mulsd	.LC30(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
	jp	.L470
	jne	.L470
	movsd	%xmm1, 104(%rbx)
.L472:
	pxor	%xmm0, %xmm0
.L475:
	movw	%si, 58(%rbx)
	movq	%rbx, %rcx
	movsd	%xmm0, 112(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movzwl	58(%rbx), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L470:
	movzwl	56(%rbx), %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movsd	%xmm3, 40(%rsp)
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	96(%rbx), %xmm1
	movsd	40(%rsp), %xmm3
	movsd	%xmm0, 104(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L473
	je	.L472
.L473:
	movzwl	56(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L475
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\12Params: Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd:
.LFB8464:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L482
	movsd	%xmm1, 64(%rcx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movsd	64(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L482:
	leaq	.LC33(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC28:
	.long	0
	.long	1080459264
	.align 8
.LC30:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
