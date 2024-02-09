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
.LFB8646:
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
.LFB8647:
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
	movl	$120, %edx
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
	movl	$120, %edx
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
.LFB8430:
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
	movl	$120, %edx
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
.LFB8431:
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
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv:
.LFB8435:
	.seh_endprologue
	movq	24(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox12GetActorDataEv:
.LFB8436:
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
.LFB8437:
	.seh_endprologue
	movq	8(%rcx), %rax
	movq	208(%rax), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv:
.LFB8438:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
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
.LFB8439:
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
	jp	.L167
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm6, %xmm1
	jp	.L153
	jne	.L153
	ucomisd	%xmm0, %xmm2
	jp	.L153
	jne	.L153
	movq	$0x000000000, 64(%rcx)
.L161:
	pxor	%xmm0, %xmm0
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L153:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movapd	%xmm0, %xmm3
	movsd	40(%rbx), %xmm0
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm3, 64(%rbx)
	ucomisd	%xmm1, %xmm6
	jp	.L157
	jne	.L157
	ucomisd	%xmm0, %xmm2
	jp	.L157
	je	.L161
.L157:
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L160:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 32(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L167:
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
.LFB8440:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
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
.LFB8441:
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
	jp	.L186
	movq	8(%rcx), %rax
	movsd	32(%rcx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	ucomisd	%xmm3, %xmm1
	jp	.L172
	jne	.L172
	ucomisd	%xmm2, %xmm6
	jp	.L172
	jne	.L172
	movq	$0x000000000, 64(%rcx)
.L180:
	pxor	%xmm0, %xmm0
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L172:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	32(%rbx), %xmm3
	movsd	216(%rax), %xmm1
	movsd	224(%rax), %xmm2
	movsd	%xmm0, 64(%rbx)
	ucomisd	%xmm3, %xmm1
	jp	.L176
	jne	.L176
	ucomisd	%xmm2, %xmm6
	jp	.L176
	je	.L180
.L176:
	movq	(%rbx), %rax
	movsd	%xmm6, 32(%rsp)
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
.L179:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	48(%rsp), %xmm6
	addq	$64, %rsp
	popq	%rbx
	ret
.L186:
	leaq	.LC12(%rip), %rcx
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
.LFB8442:
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
.LFB8444:
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
.LFB8446:
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
.LFB8448:
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
.LFB8449:
	.seh_endprologue
	movzwl	82(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Actor\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Actor does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Overlapbox\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Overlapbox does not exist\12Params: ActorID: %lld, OverlapboxID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy:
.LFB8450:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rax
	testq	%rdx, %rdx
	je	.L203
	movq	(%rcx), %rcx
	cmpq	352(%rcx), %rdx
	jnb	.L194
	movq	360(%rcx), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.L194
	testq	%r8, %r8
	je	.L204
	cmpq	152(%r9), %r8
	jnb	.L197
	movq	160(%r9), %r9
	movq	(%r9,%r8,8), %r10
	testq	%r10, %r10
	je	.L197
	movzwl	80(%rax), %r8d
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	pxor	%xmm4, %xmm4
	movsd	32(%rax), %xmm1
	pxor	%xmm3, %xmm3
	addq	$368, %rcx
	movl	%r8d, %edx
	cvtsi2sdl	%r8d, %xmm3
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	movzwl	82(%rax), %edx
	movl	%edx, %r9d
	cvtsi2sdl	%edx, %xmm4
	shrw	%r9w
	movzwl	%r9w, %r9d
	subsd	%xmm0, %xmm1
	cvtsi2sdl	%r9d, %xmm2
	addsd	40(%rax), %xmm2
	movq	%r10, 40(%rsp)
	addsd	%xmm1, %xmm3
	movapd	%xmm2, %xmm0
	subsd	%xmm4, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	addq	$56, %rsp
	ret
.L194:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L197:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L203:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L204:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist(length): %ld\12\0"
	.align 8
.LC18:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_:
.LFB8451:
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
	je	.L206
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L210
	.p2align 4,,10
	.p2align 3
.L207:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L207
.L210:
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
	movq	352(%rax), %r8
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
	movq	352(%rax), %r11
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r11
	jbe	.L242
	movq	%r13, %r9
	movq	%r14, %r8
	movq	%rbp, %r13
	movq	%rsi, %rbp
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L211:
	addq	$1, %rbx
	cmpq	%r11, %rbx
	jnb	.L242
.L208:
	movq	360(%rax), %rcx
	leaq	0(,%rbx,8), %r14
	movq	(%rcx,%rbx,8), %rdx
	testq	%rdx, %rdx
	je	.L211
	cmpq	8(%rdi), %rdx
	je	.L211
	movq	208(%rdx), %rsi
	xorl	%edx, %edx
	testq	%r13, %r13
	je	.L211
	cmpq	(%r15,%rdx,8), %rsi
	je	.L253
.L243:
	addq	$1, %rdx
	cmpq	%rdx, %r13
	je	.L211
	cmpq	(%r15,%rdx,8), %rsi
	jne	.L243
.L253:
	xorl	%edx, %edx
	testq	%r8, %r8
	je	.L215
.L225:
	cmpq	%rbx, (%r9,%rdx,8)
	je	.L211
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.L225
.L215:
	cmpq	%r11, %rbx
	jnb	.L252
	movq	%rbx, %rsi
	movq	%r13, 56(%rsp)
	movl	$1, %r12d
	salq	$4, %rsi
	movq	%r9, 64(%rsp)
	movq	%rsi, 48(%rsp)
	leaq	88(%rsp), %rsi
	movq	%r8, 72(%rsp)
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L251:
	movq	(%rdi), %rax
	movq	352(%rax), %r11
.L218:
	movq	360(%rax), %rcx
	addq	$1, %r12
	cmpq	%r11, %rbx
	jnb	.L252
.L223:
	movq	(%rcx,%r14), %rdx
	cmpq	152(%rdx), %r12
	jnb	.L254
	movq	160(%rdx), %rdx
	movq	(%rdx,%r12,8), %rdx
	testq	%rdx, %rdx
	je	.L218
	movq	%rdx, 40(%rsp)
	leaq	368(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L251
	movq	%r12, 88(%rsp)
	movq	8(%rbp), %r8
	cmpq	0(%rbp), %rbx
	jnb	.L252
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
	je	.L255
	movq	0(%r13), %rdx
	movl	$8, %r8d
	movq	%rsi, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L242:
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
.L254:
	movq	56(%rsp), %r13
	movq	64(%rsp), %r9
	movq	72(%rsp), %r8
	jmp	.L211
.L252:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L255:
	leaq	.LC18(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L206:
	leaq	.LC17(%rip), %rcx
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
.LC19:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\12\0"
	.align 8
.LC20:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE:
.LFB8453:
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
	je	.L305
	testq	%r8, %r8
	je	.L258
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L262
	.p2align 4,,10
	.p2align 3
.L259:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L259
.L262:
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
	movq	352(%rax), %r8
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
	movq	352(%rax), %r8
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r8
	jbe	.L295
	.p2align 4,,10
	.p2align 3
.L260:
	movq	360(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L263
	cmpq	8(%r12), %rcx
	je	.L263
	movq	(%r15), %r11
	movq	208(%rcx), %rdi
	xorl	%ecx, %ecx
	movq	8(%r15), %r13
	testq	%r11, %r11
	je	.L263
.L264:
	cmpq	0(%r13,%rcx,8), %rdi
	je	.L306
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L264
	.p2align 4,,10
	.p2align 3
.L263:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jb	.L260
.L295:
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
.L306:
	xorl	%ecx, %ecx
	testq	%r9, %r9
	je	.L267
.L277:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L263
	addq	$1, %rcx
	cmpq	%rcx, %r9
	jne	.L277
.L267:
	cmpq	%r8, %rbx
	jnb	.L304
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	leaq	72(%rsp), %r14
	movl	$1, %r13d
	movq	%r15, 240(%rsp)
	salq	$4, %rdi
	movq	%r10, 56(%rsp)
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L303:
	movq	(%r12), %rax
	movq	352(%rax), %r8
.L270:
	movq	360(%rax), %rdx
	addq	$1, %r13
	cmpq	%r8, %rbx
	jnb	.L304
.L275:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %r13
	jnb	.L307
	movq	160(%rdx), %rdx
	movq	(%rdx,%r13,8), %rdx
	testq	%rdx, %rdx
	je	.L270
	movq	%rdx, 40(%rsp)
	leaq	368(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L303
	movq	%r13, 72(%rsp)
	movq	8(%rsi), %r8
	cmpq	(%rsi), %rbx
	jnb	.L304
	leaq	(%r8,%rdi), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r15)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L308
	movq	(%r15), %rdx
	movl	$8, %r8d
	movq	%r14, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L307:
	addq	$1, %rbx
	movq	48(%rsp), %r9
	movq	56(%rsp), %r10
	movq	240(%rsp), %r15
	cmpq	%r8, %rbx
	jb	.L260
	jmp	.L295
.L304:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L258:
	leaq	.LC20(%rip), %rcx
	movq	%rbp, %r9
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L305:
	leaq	.LC19(%rip), %rcx
	movq	%rbp, %r9
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L308:
	leaq	.LC18(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_:
.LFB8454:
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
	je	.L358
	testq	%r9, %r9
	je	.L311
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L315
	.p2align 4,,10
	.p2align 3
.L312:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rsi), %rbx
	jb	.L312
.L315:
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
	movq	352(%rax), %r8
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
	movq	352(%rax), %r8
	addsd	%xmm7, %xmm8
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %r8
	jbe	.L348
	movq	%r15, %r10
	movq	%r12, %r9
	movq	%rbp, %r15
	movq	%rdi, %r12
	jmp	.L313
	.p2align 4,,10
	.p2align 3
.L316:
	addq	$1, %rbx
	cmpq	%r8, %rbx
	jnb	.L348
.L313:
	movq	360(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L316
	cmpq	8(%r12), %rcx
	je	.L316
	movq	208(%rcx), %r11
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L316
	cmpq	(%r9,%rcx,8), %r11
	je	.L359
.L349:
	addq	$1, %rcx
	cmpq	%rcx, %r15
	je	.L316
	cmpq	(%r9,%rcx,8), %r11
	jne	.L349
.L359:
	movq	(%r10), %r11
	movq	8(%r10), %rdi
	xorl	%ecx, %ecx
	testq	%r11, %r11
	je	.L320
.L330:
	cmpq	%rbx, (%rdi,%rcx,8)
	je	.L316
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L330
	.p2align 4,,10
	.p2align 3
.L320:
	cmpq	%r8, %rbx
	jnb	.L357
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	leaq	72(%rsp), %r14
	movl	$1, %r13d
	movq	%r10, 248(%rsp)
	salq	$4, %rdi
	movq	%r15, 56(%rsp)
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L356:
	movq	(%r12), %rax
	movq	352(%rax), %r8
.L323:
	movq	360(%rax), %rdx
	addq	$1, %r13
	cmpq	%r8, %rbx
	jnb	.L357
.L328:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %r13
	jnb	.L360
	movq	160(%rdx), %rdx
	movq	(%rdx,%r13,8), %rdx
	testq	%rdx, %rdx
	je	.L323
	movq	%rdx, 40(%rsp)
	leaq	368(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L356
	movq	%r13, 72(%rsp)
	movq	8(%rsi), %r8
	cmpq	(%rsi), %rbx
	jnb	.L357
	leaq	(%r8,%rdi), %r15
	movq	(%r15), %rax
	movq	8(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r15)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	je	.L361
	movq	(%r15), %rdx
	movl	$8, %r8d
	movq	%r14, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L348:
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
.L360:
	movq	248(%rsp), %r10
	movq	48(%rsp), %r9
	movq	56(%rsp), %r15
	jmp	.L316
.L357:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L311:
	leaq	.LC22(%rip), %rcx
	xorl	%r9d, %r9d
	movq	%rbp, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L358:
	leaq	.LC21(%rip), %rcx
	movq	%rbp, %r8
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L361:
	leaq	.LC18(%rip), %rcx
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
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\12Params: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_:
.LFB8455:
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
	je	.L412
	testq	%r8, %r8
	je	.L413
	testq	%r9, %r9
	je	.L365
	xorl	%ebx, %ebx
	cmpq	$0, (%rdx)
	je	.L369
	.p2align 4,,10
	.p2align 3
.L366:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rdi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	(%rdi), %rbx
	jb	.L366
.L369:
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
	movq	352(%rax), %r8
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
	movq	352(%rax), %rcx
	movapd	%xmm6, %xmm9
	subsd	%xmm0, %xmm9
	cmpq	$1, %rcx
	jbe	.L403
	movq	%r9, %r13
	movq	%r14, %r9
	movq	%r12, %r14
	movq	%rbp, %r12
	.p2align 4,,10
	.p2align 3
.L367:
	movq	360(%rax), %rdx
	leaq	0(,%rbx,8), %rbp
	movq	(%rdx,%rbx,8), %r8
	testq	%r8, %r8
	je	.L370
	cmpq	8(%r12), %r8
	je	.L370
	movq	(%r14), %r10
	movq	208(%r8), %r11
	xorl	%r8d, %r8d
	movq	8(%r14), %rsi
	testq	%r10, %r10
	je	.L370
.L371:
	cmpq	(%rsi,%r8,8), %r11
	je	.L414
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L371
	.p2align 4,,10
	.p2align 3
.L370:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L367
.L403:
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
.L414:
	movq	(%r9), %r10
	movq	8(%r9), %r11
	xorl	%r8d, %r8d
	testq	%r10, %r10
	je	.L374
.L384:
	cmpq	%rbx, (%r11,%r8,8)
	je	.L370
	addq	$1, %r8
	cmpq	%r8, %r10
	jne	.L384
	.p2align 4,,10
	.p2align 3
.L374:
	cmpq	%rcx, %rbx
	jnb	.L411
	movq	%rbx, %r15
	movq	%r14, 224(%rsp)
	movl	$1, %esi
	movq	%r9, 232(%rsp)
	salq	$4, %r15
	jmp	.L382
	.p2align 4,,10
	.p2align 3
.L410:
	movq	(%r12), %rax
	movq	352(%rax), %rcx
.L377:
	movq	360(%rax), %rdx
	addq	$1, %rsi
	cmpq	%rcx, %rbx
	jnb	.L411
.L382:
	movq	(%rdx,%rbp), %rdx
	cmpq	152(%rdx), %rsi
	jnb	.L415
	movq	160(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L377
	movq	%rdx, 40(%rsp)
	leaq	368(%rax), %rcx
	movapd	%xmm8, %xmm3
	movapd	%xmm6, %xmm2
	movsd	%xmm9, 32(%rsp)
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE
	testb	%al, %al
	je	.L410
	movq	%rsi, 56(%rsp)
	movq	8(%rdi), %r8
	cmpq	(%rdi), %rbx
	jnb	.L411
	leaq	(%r8,%r15), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%r14)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L416
	movq	(%r14), %rdx
	movl	$8, %r8d
	movq	%r13, %rcx
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo9memCopyToEPKvPvy
	jmp	.L410
	.p2align 4,,10
	.p2align 3
.L415:
	addq	$1, %rbx
	movq	224(%rsp), %r14
	movq	232(%rsp), %r9
	cmpq	%rcx, %rbx
	jb	.L367
	jmp	.L403
.L411:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L365:
	leaq	.LC25(%rip), %rcx
	xorl	%r9d, %r9d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L413:
	leaq	.LC24(%rip), %rcx
	xorl	%r8d, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L412:
	leaq	.LC23(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L416:
	leaq	.LC18(%rip), %rcx
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
.LFB8456:
	.seh_endprologue
	movl	112(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv:
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
	movsd	.LC26(%rip), %xmm7
	movsd	56(%rcx), %xmm6
	movsd	96(%rcx), %xmm8
	movq	(%rcx), %rax
	addsd	%xmm6, %xmm8
	addsd	104(%rcx), %xmm6
	movq	%rcx, %rbx
	leaq	400(%rax), %rcx
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
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm2
	movapd	%xmm9, %xmm3
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r15d
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm2
	cvttsd2sil	%xmm0, %r14d
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalXEddd
	call	round
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm2
	movapd	%xmm8, %xmm3
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r13d
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm6, %xmm3
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm2
	cvttsd2sil	%xmm0, %esi
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movsd	88(%rbx), %xmm2
	movapd	%xmm9, %xmm3
	pxor	%xmm1, %xmm1
	cvttsd2sil	%xmm0, %r12d
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6vector9TerminalYEddd
	call	round
	movq	(%rbx), %rax
	movapd	%xmm7, %xmm3
	pxor	%xmm1, %xmm1
	movsd	88(%rbx), %xmm2
	cvttsd2sil	%xmm0, %ebp
	leaq	400(%rax), %rcx
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
.LFB8433:
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
	leaq	400(%rdx), %rcx
	pextrw	$1, %xmm0, %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC28(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L420
	jne	.L420
	movsd	%xmm1, 96(%rbx)
.L422:
	pxor	%xmm0, %xmm0
.L425:
	movq	%rbx, %rcx
	movsd	%xmm0, 104(%rbx)
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	.p2align 4,,10
	.p2align 3
.L420:
	movzwl	50(%rbx), %edx
	movzwl	48(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	addq	$400, %rcx
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L423
	je	.L422
.L423:
	movq	(%rbx), %rdx
	movzwl	48(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm1
	leaq	400(%rdx), %rcx
	movzwl	50(%rbx), %edx
	movapd	%xmm3, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L425
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_y,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_y
	.section .rdata,"dr"
	.align 8
.LC29:
	.ascii "wze::engine.actors[].overlapboxes.New(): Memory allocation failed\12Params: Type: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB30:
	.text
.LHOTB30:
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
	jbe	.L428
	movq	24(%rcx), %rcx
	movl	$1, %ebx
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L429:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L428
.L432:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L429
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
	jnb	.L442
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
.L428:
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
	je	.L443
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
	jnc	.L444
	cmpq	$0, (%rdx,%rax,8)
	je	.L445
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L442:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L445:
	leaq	.LC29(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L444:
	leaq	.LC6(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L443:
	leaq	.LC18(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
.LEHE4:
	movl	$1, %ecx
	call	exit
.L439:
	movq	%rax, %rsi
	jmp	.L438
.L440:
	movq	%rax, %rbx
	jmp	.L437
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
	.uleb128 .L440-.LFB8427
	.uleb128 0
	.uleb128 .LEHB2-.LFB8427
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8427
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L439-.LFB8427
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
.L438:
	movq	%rbx, %rcx
	movl	$120, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L437:
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
	.uleb128 .LEHB5-.LCOLDB30
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8427:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE30:
	.text
.LHOTE30:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt:
.LFB8443:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movzwl	%dx, %eax
	movq	%rcx, %rbx
	movl	%edx, %esi
	cvtsi2sdl	%eax, %xmm6
	movq	(%rcx), %rax
	leaq	400(%rax), %rcx
	movzwl	50(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm6, %xmm3
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC28(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L447
	jne	.L447
	movsd	%xmm1, 96(%rbx)
.L449:
	pxor	%xmm0, %xmm0
.L452:
	movw	%si, 48(%rbx)
	movq	%rbx, %rcx
	movsd	%xmm0, 104(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movzwl	48(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L447:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	movapd	%xmm2, %xmm1
	leaq	400(%rax), %rcx
	movzwl	50(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L450
	je	.L449
.L450:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movapd	%xmm6, %xmm1
	movapd	%xmm3, %xmm2
	leaq	400(%rax), %rcx
	movzwl	50(%rbx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L452
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt:
.LFB8445:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	pxor	%xmm6, %xmm6
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movzwl	%dx, %eax
	movl	%edx, %esi
	movq	(%rcx), %rdx
	movq	%rcx, %rbx
	cvtsi2sdl	%eax, %xmm6
	movzwl	48(%rcx), %eax
	leaq	400(%rdx), %rcx
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm6, 32(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd
	mulsd	.LC28(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rbx)
	jp	.L455
	jne	.L455
	movsd	%xmm1, 96(%rbx)
.L457:
	pxor	%xmm0, %xmm0
.L460:
	movw	%si, 50(%rbx)
	movq	%rbx, %rcx
	movsd	%xmm0, 104(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movzwl	50(%rbx), %eax
	movaps	48(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L455:
	movzwl	48(%rbx), %eax
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rdx
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm6, 32(%rsp)
	cvtsi2sdl	%eax, %xmm3
	leaq	400(%rdx), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	movsd	88(%rbx), %xmm1
	movsd	%xmm0, 96(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L458
	je	.L457
.L458:
	movzwl	48(%rbx), %eax
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rdx
	pxor	%xmm3, %xmm3
	movsd	%xmm6, 32(%rsp)
	movapd	%xmm3, %xmm2
	cvtsi2sdl	%eax, %xmm1
	leaq	400(%rdx), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	jmp	.L460
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\12Params: Angle: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd:
.LFB8447:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rbx
	jp	.L467
	movsd	%xmm1, 56(%rcx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movsd	56(%rbx), %xmm0
	addq	$32, %rsp
	popq	%rbx
	ret
.L467:
	leaq	.LC31(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.long	0
	.long	1080459264
	.align 8
.LC28:
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
