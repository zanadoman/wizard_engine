	.file	"normal.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6normalC2EPN3wze6engineEP4game
	.def	_ZN6normalC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6normalC2EPN3wze6engineEP4game
_ZN6normalC2EPN3wze6engineEP4game:
.LFB6880:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	16(%rcx), %rcx
	movq	%r8, -8(%rcx)
	call	_ZN5pauseC1EPN3wze6engineEP4game
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
	movq	%rax, 96(%rbx)
	leaq	40(%rax), %rcx
	movzwl	18(%rdx), %edx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movq	%rax, 104(%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.globl	_ZN6normalC1EPN3wze6engineEP4game
	.def	_ZN6normalC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN6normalC1EPN3wze6engineEP4game,_ZN6normalC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN6normal6UpdateEv
	.def	_ZN6normal6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6normal6UpdateEv
_ZN6normal6UpdateEv:
.LFB6882:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	addq	$16, %rcx
	call	_ZN5pause6UpdateEv
	cmpl	$2, %eax
	setne	%al
	movzbl	%al, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-1717986918
	.long	1069128089
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN5pauseC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN5pause6UpdateEv;	.scl	2;	.type	32;	.endef
