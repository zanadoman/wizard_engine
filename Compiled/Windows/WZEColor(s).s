	.file	"WZEColor(s).cpp"
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
	.def	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0:
.LFB6913:
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
	.globl	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_:
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
	.globl	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_,_ZN3wze6engine6actors5actor6colorsC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsD2Ev
	.def	_ZN3wze6engine6actors5actor6colorsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colorsD2Ev
_ZN3wze6engine6actors5actor6colorsD2Ev:
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
	movl	$64, %edx
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
	.globl	_ZN3wze6engine6actors5actor6colorsD1Ev
	.def	_ZN3wze6engine6actors5actor6colorsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor6colorsD1Ev,_ZN3wze6engine6actors5actor6colorsD2Ev
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC6:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.actors[].colors.New(): Memory allocation failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors3NewEv
	.def	_ZN3wze6engine6actors5actor6colors3NewEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors3NewEv
_ZN3wze6engine6actors5actor6colors3NewEv:
.LFB6885:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	16(%rcx), %rax
	movq	%rcx, %rsi
	cmpq	$1, %rax
	jbe	.L39
	movq	24(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L40:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L39
.L43:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L40
	movl	$64, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm3
	movl	$-32767, %r8d
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movl	248(%rdx), %ecx
	movupd	216(%rdx), %xmm4
	movw	%r8w, 24(%rax)
	movb	$1, 26(%rax)
	movq	24(%rsi), %rdx
	movl	%ecx, 16(%rax)
	movups	%xmm3, (%rax)
	movups	%xmm4, 32(%rax)
	movups	%xmm0, 48(%rax)
	cmpq	16(%rsi), %rbx
	jnb	.L49
	movq	%rax, (%rdx,%rbx,8)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movl	$64, %ecx
	call	_Znwy
	movq	8(%rsi), %rdx
	movdqu	(%rsi), %xmm1
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movl	248(%rdx), %ecx
	movupd	216(%rdx), %xmm2
	movb	$1, 26(%rax)
	movq	%rax, 40(%rsp)
	movl	%ecx, 16(%rax)
	movl	$-32767, %ecx
	movw	%cx, 24(%rax)
	movq	24(%rsi), %rcx
	movups	%xmm1, (%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm0, 48(%rax)
	movq	16(%rsi), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rsi)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L50
	movq	16(%rsi), %rdx
	leaq	40(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L51
	cmpq	$0, (%rdx,%rax,8)
	je	.L52
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L49:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L52:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L51:
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L50:
	leaq	.LC6(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors6DeleteEy
	.def	_ZN3wze6engine6actors5actor6colors6DeleteEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors6DeleteEy
_ZN3wze6engine6actors5actor6colors6DeleteEy:
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
	movl	$64, %edx
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L75:
	subq	%r9, %rax
	movq	%r9, %rdx
	movq	%rax, %r8
	jmp	.L60
.L74:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	leaq	.LC5(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE
_ZN3wze6engine6actors5actor6colors5PurgeESt16initializer_listIyE:
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
	movl	$64, %edx
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
	leaq	.LC5(%rip), %rcx
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
	leaq	.LC5(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L102:
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
	.ascii "wze::engine.actors[].colors.Purge(): KeepColorIDs must not be NULL\12Params: KeepColorIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine6actors5actor6colors5PurgeEPN3neo5arrayIyEE:
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
	movl	$64, %edx
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
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor6colors5colorEE6RemoveEyy.isra.0
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
	leaq	.LC5(%rip), %rcx
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
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L107:
	leaq	.LC9(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L137:
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
	.ascii "wze::engine.actors[].colors[]: Illegal access to NULL Color\12Params: ColorID: %lld\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.actors[].colors[]: Color does not exist\12Params: ColorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colorsixEy
	.def	_ZN3wze6engine6actors5actor6colorsixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colorsixEy
_ZN3wze6engine6actors5actor6colorsixEy:
.LFB6889:
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
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L145:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_:
.LFB6891:
	.seh_endprologue
	movupd	216(%r8), %xmm0
	movl	248(%r8), %eax
	movups	%xmm0, 32(%rcx)
	pxor	%xmm0, %xmm0
	movl	%eax, 16(%rcx)
	movl	$-32767, %eax
	movq	%rdx, (%rcx)
	movq	%r8, 8(%rcx)
	movl	$-1, 20(%rcx)
	movw	%ax, 24(%rcx)
	movb	$1, 26(%rcx)
	movups	%xmm0, 48(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_
	.def	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6actors5actor6colors5colorC1EPS0_PS2_,_ZN3wze6engine6actors5actor6colors5colorC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetXEv
	.def	_ZN3wze6engine6actors5actor6colors5color4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4GetXEv
_ZN3wze6engine6actors5actor6colors5color4GetXEv:
.LFB6893:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.actors[].colors[].SetX(): X must not be NaN\12Params: X: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetXEd
	.def	_ZN3wze6engine6actors5actor6colors5color4SetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4SetXEd
_ZN3wze6engine6actors5actor6colors5color4SetXEd:
.LFB6894:
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
	jp	.L165
	movq	8(%rcx), %rax
	movsd	40(%rcx), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm6, %xmm0
	jp	.L151
	jne	.L151
	ucomisd	%xmm3, %xmm1
	jp	.L151
	jne	.L151
	movq	$0x000000000, 48(%rcx)
.L159:
	pxor	%xmm0, %xmm0
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L151:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm3
	movapd	%xmm0, %xmm2
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm2, 48(%rbx)
	ucomisd	%xmm0, %xmm6
	jp	.L155
	jne	.L155
	ucomisd	%xmm3, %xmm1
	jp	.L155
	je	.L159
.L155:
	movapd	%xmm6, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
.L158:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 32(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L165:
	leaq	.LC13(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4GetYEv
	.def	_ZN3wze6engine6actors5actor6colors5color4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4GetYEv
_ZN3wze6engine6actors5actor6colors5color4GetYEv:
.LFB6895:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.actors[].colors[].SetY(): Y must not be NaN\12Params: Y: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor6colors5color4SetYEd
	.def	_ZN3wze6engine6actors5actor6colors5color4SetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6actors5actor6colors5color4SetYEd
_ZN3wze6engine6actors5actor6colors5color4SetYEd:
.LFB6896:
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
	jp	.L184
	movq	8(%rcx), %rax
	movsd	32(%rcx), %xmm2
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L170
	jne	.L170
	ucomisd	%xmm1, %xmm6
	jp	.L170
	jne	.L170
	movq	$0x000000000, 48(%rcx)
.L178:
	pxor	%xmm0, %xmm0
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L170:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector6LengthEdddd
	movq	8(%rbx), %rax
	movsd	32(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm3, 48(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L174
	jne	.L174
	ucomisd	%xmm1, %xmm6
	jp	.L174
	je	.L178
.L174:
	movapd	%xmm6, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd
.L177:
	movsd	%xmm0, 56(%rbx)
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 40(%rbx)
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	ret
.L184:
	leaq	.LC14(%rip), %rcx
	movq	%xmm1, %rdx
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
