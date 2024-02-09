	.file	"background.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "assets/background/back.png\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN10backgroundC2EPN3wze6engineE
	.def	_ZN10backgroundC2EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10backgroundC2EPN3wze6engineE
_ZN10backgroundC2EPN3wze6engineE:
.LFB6880:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	328(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	pxor	%xmm3, %xmm3
	xorl	%r8d, %r8d
	movq	%rbx, %rdx
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	movl	$1080, 48(%rsp)
	leaq	240(%rax), %rcx
	movq	.LC1(%rip), %rax
	movl	$1920, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movq	%rax, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	movq	(%rbx), %rax
	leaq	240(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	24(%rbx), %rdx
	leaq	40(%rax), %rcx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movq	%rax, 16(%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.globl	_ZN10backgroundC1EPN3wze6engineE
	.def	_ZN10backgroundC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.set	_ZN10backgroundC1EPN3wze6engineE,_ZN10backgroundC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN10backgroundD2Ev
	.def	_ZN10backgroundD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10backgroundD2Ev
_ZN10backgroundD2Ev:
.LFB6883:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rcx, %rbx
	leaq	328(%rax), %rcx
	call	_ZN3wze6engine6assets13UnloadTextureEy
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	addq	$240, %rcx
	call	_ZN3wze6engine6actors6DeleteEy
	nop
	addq	$32, %rsp
	popq	%rbx
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6883:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6883-.LLSDACSB6883
.LLSDACSB6883:
.LLSDACSE6883:
	.text
	.seh_endproc
	.globl	_ZN10backgroundD1Ev
	.def	_ZN10backgroundD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN10backgroundD1Ev,_ZN10backgroundD2Ev
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	-1717986918
	.long	1072273817
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
