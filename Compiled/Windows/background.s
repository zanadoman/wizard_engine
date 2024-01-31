	.file	"background.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "assets/background/back.png\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN10backgroundC2ERN4slay6engineE
	.def	_ZN10backgroundC2ERN4slay6engineE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10backgroundC2ERN4slay6engineE
_ZN10backgroundC2ERN4slay6engineE:
.LFB8433:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	560(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
	call	_ZN4slay6engine6assets11LoadTextureEPKc
	xorl	%edx, %edx
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	leaq	528(%rax), %rcx
	call	_ZN4slay6engine6actors3NewEy
	movq	%rax, %rdx
	movq	%rax, 8(%rbx)
	movq	(%rbx), %rax
	leaq	528(%rax), %rcx
	call	_ZN4slay6engine6actorsixEy
	leaq	40(%rax), %rcx
	call	_ZN4slay6engine6actors5actor8textures3NewEv
	movq	8(%rbx), %rdx
	movq	%rax, 16(%rbx)
	movq	(%rbx), %rax
	leaq	528(%rax), %rcx
	call	_ZN4slay6engine6actorsixEy
	movsd	.LC1(%rip), %xmm1
	movq	%rax, %rcx
	call	_ZN4slay6engine6actors5actor8SetLayerEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	528(%rax), %rcx
	call	_ZN4slay6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	40(%rax), %rcx
	call	_ZN4slay6engine6actors5actor8texturesixEy
	movl	$1280, %edx
	movw	%dx, 18(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	528(%rax), %rcx
	call	_ZN4slay6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	40(%rax), %rcx
	call	_ZN4slay6engine6actors5actor8texturesixEy
	movl	$720, %ecx
	movq	8(%rbx), %rdx
	movw	%cx, 20(%rax)
	movq	(%rbx), %rax
	leaq	528(%rax), %rcx
	call	_ZN4slay6engine6actorsixEy
	movq	16(%rbx), %rdx
	leaq	40(%rax), %rcx
	call	_ZN4slay6engine6actors5actor8texturesixEy
	movq	24(%rbx), %rdx
	movq	%rax, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy
	.seh_endproc
	.globl	_ZN10backgroundC1ERN4slay6engineE
	.def	_ZN10backgroundC1ERN4slay6engineE;	.scl	2;	.type	32;	.endef
	.set	_ZN10backgroundC1ERN4slay6engineE,_ZN10backgroundC2ERN4slay6engineE
	.align 2
	.p2align 4
	.globl	_ZN10backgroundD2Ev
	.def	_ZN10backgroundD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10backgroundD2Ev
_ZN10backgroundD2Ev:
.LFB8436:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rcx, %rbx
	leaq	560(%rax), %rcx
	call	_ZN4slay6engine6assets13UnloadTextureEy
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	addq	$528, %rcx
	call	_ZN4slay6engine6actors6DeleteEy
	nop
	addq	$32, %rsp
	popq	%rbx
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8436:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8436-.LLSDACSB8436
.LLSDACSB8436:
.LLSDACSE8436:
	.text
	.seh_endproc
	.globl	_ZN10backgroundD1Ev
	.def	_ZN10backgroundD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN10backgroundD1Ev,_ZN10backgroundD2Ev
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN4slay6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8textures3NewEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8SetLayerEd;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8texturesixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
