	.file	"WZEThreads.cpp"
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
	.def	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0:
.LFB6902:
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
	.globl	_ZN3wze6engine7threadsC2EPS0_
	.def	_ZN3wze6engine7threadsC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine7threadsC2EPS0_
_ZN3wze6engine7threadsC2EPS0_:
.LFB6880:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$1, 8(%rcx)
	movl	$8, %ecx
	movq	$0, 40(%rsp)
	call	malloc
	movq	%rax, 16(%rbx)
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
	.globl	_ZN3wze6engine7threadsC1EPS0_
	.def	_ZN3wze6engine7threadsC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine7threadsC1EPS0_,_ZN3wze6engine7threadsC2EPS0_
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.threads.Start(): Function must not be NULL\12Params: Function: %p, Parameter: %p\12\0"
	.align 8
.LC5:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.threads.Start(): SDL_CreateThread failed\12Params: Function: %p, Parameter: %p\12\0"
	.align 8
.LC7:
	.ascii "neo::array+=: Memory allocation failed\12Params: Elements(type, length): %ld, %ld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads5StartEPFiPvES2_
	.def	_ZN3wze6engine7threads5StartEPFiPvES2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine7threads5StartEPFiPvES2_
_ZN3wze6engine7threads5StartEPFiPvES2_:
.LFB6882:
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
	movq	%rcx, %rbp
	movq	%rdx, %rsi
	movq	%r8, %rdi
	testq	%rdx, %rdx
	je	.L34
	movq	8(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L36
	movq	16(%rcx), %rdx
	movl	$1, %ebx
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L37:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L36
.L40:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L37
	movq	__imp__endthreadex(%rip), %rax
	xorl	%edx, %edx
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	__imp__beginthreadex(%rip), %r9
	movq	%rax, 32(%rsp)
	call	SDL_CreateThread
	movq	16(%rbp), %rdx
	cmpq	8(%rbp), %rbx
	jnb	.L50
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L33
.L45:
	leaq	.LC6(%rip), %rcx
	movq	%rdi, %r8
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L36:
	movq	__imp__endthreadex(%rip), %rax
	movq	%rdi, %r8
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movq	__imp__beginthreadex(%rip), %r9
	movq	%rax, 32(%rsp)
	call	SDL_CreateThread
	movq	16(%rbp), %rcx
	movq	%rax, 56(%rsp)
	movq	8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 8(%rbp)
	salq	$3, %rdx
	call	realloc
	movq	%rax, 16(%rbp)
	testq	%rax, %rax
	je	.L51
	movq	8(%rbp), %rdx
	leaq	56(%rsp), %rcx
	movl	$8, %r8d
	leaq	-8(%rax,%rdx,8), %rdx
	call	_ZN3neo6memory6CopyToEPKvPvy
	movq	8(%rbp), %rbx
	movq	16(%rbp), %rax
	addq	$-1, %rbx
	jnc	.L52
	cmpq	$0, (%rax,%rbx,8)
	je	.L45
.L33:
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L50:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L34:
	leaq	.LC4(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L52:
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L51:
	leaq	.LC7(%rip), %rcx
	movl	$1, %r8d
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.threads.Wait(): Illegal use of NULL Thread\12Params: ThreadID: %lld\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.threads.Wait(): Thread does not exist\12Params: ThreadID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads4WaitEy
	.def	_ZN3wze6engine7threads4WaitEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine7threads4WaitEy
_ZN3wze6engine7threads4WaitEy:
.LFB6883:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L64
	cmpq	8(%rcx), %rdx
	jnb	.L55
	movq	16(%rcx), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L55
	leaq	44(%rsp), %rdx
	call	SDL_WaitThread
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	cmpq	%rax, %rbx
	jnb	.L65
	movq	$0, (%rcx,%rbx,8)
	cmpq	$0, -8(%rcx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L66
	movl	44(%rsp), %eax
	addq	$56, %rsp
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
	leaq	8(%rsi), %rcx
	call	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
	movl	44(%rsp), %eax
	addq	$56, %rsp
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
	leaq	.LC9(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L67:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L64:
	leaq	.LC8(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L65:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE
	.def	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE
_ZN3wze6engine7threads5PurgeESt16initializer_listIyE:
.LFB6884:
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
	movq	8(%rcx), %rax
	movq	(%rdx), %rdi
	movq	8(%rdx), %rbp
	movq	%rcx, %rsi
	cmpq	$1, %rax
	jbe	.L70
	movq	16(%rcx), %rdx
	movl	$1, %ebx
.L76:
	testq	%rbp, %rbp
	je	.L71
.L88:
	xorl	%eax, %eax
.L72:
	cmpq	%rbx, (%rdi,%rax,8)
	je	.L105
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L72
.L71:
	movq	(%rdx,%rbx,8), %rcx
	xorl	%edx, %edx
	call	SDL_WaitThread
	movq	8(%rsi), %rax
	movq	16(%rsi), %rdx
	cmpq	%rax, %rbx
	jnb	.L106
	movq	$0, (%rdx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L76
.L89:
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L86
	cmpq	$0, (%rdx,%r8,8)
	jne	.L94
	cmpq	$1, %rax
	jne	.L107
.L94:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L105:
	movq	8(%rsi), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L88
	jmp	.L89
.L107:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L80:
	movq	%rcx, %r9
	subq	$1, %rcx
	cmpq	%rax, %rcx
	jnb	.L108
	cmpq	$0, (%rdx,%rcx,8)
	jne	.L109
	cmpq	$1, %rcx
	jne	.L80
.L85:
	addq	$8, %rsi
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	call	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L70:
	testq	%rax, %rax
	jne	.L94
.L86:
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L109:
	subq	%r9, %rax
	movq	%r9, %rcx
	movq	%rax, %r8
	jmp	.L85
.L108:
	movq	%rcx, %rdx
	leaq	.LC5(%rip), %rcx
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
.LC10:
	.ascii "wze::engine.threads.Purge(): KeepThreadIDs must not be NULL\12Params: KeepThreadIDs: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE
	.def	_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE
_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE:
.LFB6885:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L111
	movq	8(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L147
	movq	16(%rcx), %r9
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L119:
	movq	(%rsi), %rdx
	movq	8(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L114
.L115:
	cmpq	(%rcx,%rax,8), %rbx
	je	.L148
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L115
	.p2align 4,,10
	.p2align 3
.L114:
	movq	(%r9,%rbx,8), %rcx
	xorl	%edx, %edx
	call	SDL_WaitThread
	movq	8(%rdi), %rax
	movq	16(%rdi), %r9
	cmpq	%rax, %rbx
	jnb	.L149
	movq	$0, (%r9,%rbx,8)
.L131:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L119
	movq	%rax, %r8
	addq	$-1, %r8
	jnc	.L129
	cmpq	$0, (%r9,%r8,8)
	jne	.L136
	cmpq	$1, %rax
	jne	.L150
.L136:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L148:
	movq	8(%rdi), %rax
	jmp	.L131
.L150:
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%rdx, %rcx
	subq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L151
	cmpq	$0, (%r9,%rdx,8)
	jne	.L152
	cmpq	$1, %rdx
	jne	.L123
.L128:
	leaq	8(%rdi), %rcx
	call	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L147:
	testq	%rax, %rax
	jne	.L136
.L129:
	leaq	.LC5(%rip), %rcx
	orq	$-1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L152:
	subq	%rcx, %rax
	movq	%rcx, %rdx
	movq	%rax, %r8
	jmp	.L128
.L151:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L149:
	leaq	.LC5(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L111:
	leaq	.LC10(%rip), %rcx
	xorl	%edx, %edx
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
	.def	SDL_CreateThread;	.scl	2;	.type	32;	.endef
	.def	SDL_WaitThread;	.scl	2;	.type	32;	.endef
