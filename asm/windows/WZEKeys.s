	.file	"WZEKeys.cpp"
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
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keysC2EPS0_
	.def	_ZN3wze6engine4keysC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4keysC2EPS0_
_ZN3wze6engine4keysC2EPS0_:
.LFB6890:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$0, 8(%rcx)
	movl	$237, %ecx
	call	_Znay
	movq	%rax, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.globl	_ZN3wze6engine4keysC1EPS0_
	.def	_ZN3wze6engine4keysC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine4keysC1EPS0_,_ZN3wze6engine4keysC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keysD2Ev
	.def	_ZN3wze6engine4keysD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4keysD2Ev
_ZN3wze6engine4keysD2Ev:
.LFB6893:
	.seh_endprologue
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L4
	jmp	_ZdaPv
	.p2align 4,,10
	.p2align 3
.L4:
	ret
	.seh_endproc
	.globl	_ZN3wze6engine4keysD1Ev
	.def	_ZN3wze6engine4keysD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine4keysD1Ev,_ZN3wze6engine4keysD2Ev
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "wze::engine.keys[]: Key does not exist\12Params: Key: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keysixENS_3keyE
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4keysixENS_3keyE
_ZN3wze6engine4keysixENS_3keyE:
.LFB6895:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpl	$236, %edx
	jg	.L8
	movq	16(%rcx), %rax
	movslq	%edx, %rdx
	cmpb	$0, (%rax,%rdx)
	setne	%al
	addq	$40, %rsp
	ret
.L8:
	leaq	.LC0(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keys6UpdateEv
	.def	_ZN3wze6engine4keys6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine4keys6UpdateEv
_ZN3wze6engine4keys6UpdateEv:
.LFB6896:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$237, %r8d
	movq	16(%rcx), %rdx
	movq	%rcx, %rbx
	movq	8(%rcx), %rcx
	call	_ZN3neo6memory6CopyToEPKvPvy
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	SDL_GetMouseState
	movq	16(%rbx), %rdx
	testb	$1, %al
	je	.L10
	movb	$1, 232(%rdx)
.L11:
	movl	%eax, %edx
	movq	16(%rbx), %rcx
	shrl	$2, %eax
	shrl	%edx
	andl	$1, %eax
	andl	$1, %edx
	movb	%dl, 233(%rcx)
	movq	16(%rbx), %rdx
	movb	%al, 234(%rdx)
	movq	(%rbx), %r8
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	448(%r8), %r9
	testq	%r9, %r9
	jne	.L12
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L13:
	addq	$1, %rdx
	addq	$56, %rax
	cmpq	%r9, %rdx
	jnb	.L20
.L12:
	movq	456(%r8), %rcx
	addq	%rax, %rcx
	cmpl	$1027, (%rcx)
	jne	.L13
	movl	20(%rcx), %ecx
	movq	16(%rbx), %r8
	testl	%ecx, %ecx
	jns	.L14
	movb	$1, 235(%r8)
	movq	16(%rbx), %rcx
	addq	$1, %rdx
	addq	$56, %rax
	movb	$0, 236(%rcx)
	movq	(%rbx), %r8
	movq	448(%r8), %r9
	cmpq	%r9, %rdx
	jb	.L12
.L20:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	movb	$0, 235(%r8)
	movq	16(%rbx), %rcx
	je	.L15
	movb	$1, 236(%rcx)
	movq	(%rbx), %r8
	movq	448(%r8), %r9
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L10:
	movb	$0, 232(%rdx)
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L15:
	movb	$0, 236(%rcx)
	movq	(%rbx), %r8
	movq	448(%r8), %r9
	jmp	.L13
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6memory6CopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	SDL_GetMouseState;	.scl	2;	.type	32;	.endef
