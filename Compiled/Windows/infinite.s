	.file	"infinite.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8infiniteC2EPN3wze6engineEP4game
	.def	_ZN8infiniteC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8infiniteC2EPN3wze6engineEP4game
_ZN8infiniteC2EPN3wze6engineEP4game:
.LFB6880:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
	movq	%r8, 8(%rcx)
	leaq	16(%rcx), %rcx
	call	_ZN5pauseC1EPN3wze6engineEP4game
	leaq	96(%rbx), %rcx
	movq	%rdi, %r8
	movq	%rsi, %rdx
	call	_ZN5statsC1EPN3wze6engineEP4game
	movq	(%rbx), %rax
	pxor	%xmm3, %xmm3
	xorl	%r8d, %r8d
	movl	$10800, 48(%rsp)
	xorl	%edx, %edx
	leaq	240(%rax), %rcx
	movq	.LC0(%rip), %rax
	movl	$19200, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movq	%rax, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	8(%rbx), %rdx
	movq	%rax, 144(%rbx)
	leaq	40(%rax), %rcx
	movzwl	18(%rdx), %edx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movq	%rax, 152(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.globl	_ZN8infiniteC1EPN3wze6engineEP4game
	.def	_ZN8infiniteC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN8infiniteC1EPN3wze6engineEP4game,_ZN8infiniteC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN8infinite6UpdateEv
	.def	_ZN8infinite6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8infinite6UpdateEv
_ZN8infinite6UpdateEv:
.LFB6882:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	leaq	16(%rcx), %rcx
	call	_ZN5pause6UpdateEv
	testl	%eax, %eax
	je	.L6
	cmpl	$2, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	leaq	96(%rbx), %rcx
	call	_ZN5stats6UpdateEv
	movl	$2, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-1717986918
	.long	1069128089
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN5pauseC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN5statsC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN5pause6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5stats6UpdateEv;	.scl	2;	.type	32;	.endef
