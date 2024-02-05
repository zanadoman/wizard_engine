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
.LFB8433:
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	$0, 8(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine4keysC1EPS0_
	.def	_ZN3wze6engine4keysC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine4keysC1EPS0_,_ZN3wze6engine4keysC2EPS0_
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
.LFB8435:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpl	$295, %edx
	jg	.L6
	movslq	%edx, %rdx
	cmpb	$0, 16(%rcx,%rdx)
	setne	%al
	addq	$40, %rsp
	ret
.L6:
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
.LFB8436:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$296, %r8d
	movq	%rcx, %rbx
	leaq	16(%rcx), %rdx
	movq	8(%rcx), %rcx
	call	_ZN3neo9memCopyToEPKvPvy
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	call	SDL_GetMouseState
	movq	(%rbx), %r8
	movl	%eax, %edx
	andl	$1, %edx
	movb	%dl, 307(%rbx)
	movl	%eax, %edx
	shrl	$2, %eax
	shrl	%edx
	andl	$1, %eax
	andl	$1, %edx
	movb	%al, 309(%rbx)
	xorl	%eax, %eax
	movb	%dl, 308(%rbx)
	movq	736(%r8), %r9
	xorl	%edx, %edx
	testq	%r9, %r9
	jne	.L8
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L9:
	addq	$1, %rdx
	addq	$56, %rax
	cmpq	%r9, %rdx
	jnb	.L16
.L8:
	movq	744(%r8), %rcx
	addq	%rax, %rcx
	cmpl	$1027, (%rcx)
	jne	.L9
	movl	20(%rcx), %r10d
	testl	%r10d, %r10d
	jns	.L10
	movzwl	.LC1(%rip), %ecx
	addq	$1, %rdx
	addq	$56, %rax
	movw	%cx, 310(%rbx)
	movq	736(%r8), %r9
	cmpq	%r9, %rdx
	jb	.L8
.L16:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	je	.L11
	movl	$256, %r9d
	movw	%r9w, 310(%rbx)
	movq	736(%r8), %r9
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L11:
	xorl	%ecx, %ecx
	movw	%cx, 310(%rbx)
	movq	736(%r8), %r9
	jmp	.L9
	.seh_endproc
	.section .rdata,"dr"
	.align 2
.LC1:
	.byte	1
	.byte	0
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo9memCopyToEPKvPvy;	.scl	2;	.type	32;	.endef
	.def	SDL_GetMouseState;	.scl	2;	.type	32;	.endef
