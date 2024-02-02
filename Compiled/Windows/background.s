	.file	"background.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "assets/background/back.png\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN10backgroundC2EPN4slay6engineE
	.def	_ZN10backgroundC2EPN4slay6engineE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10backgroundC2EPN4slay6engineE
_ZN10backgroundC2EPN4slay6engineE:
.LFB8433:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	560(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
	call	_ZN4slay6engine6assets11LoadTextureEPKc
	pxor	%xmm3, %xmm3
	xorl	%edx, %edx
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	movapd	%xmm3, %xmm2
	movl	$720, 40(%rsp)
	leaq	528(%rax), %rcx
	movq	.LC1(%rip), %rax
	movl	$1280, 32(%rsp)
	movq	%rax, 48(%rsp)
	call	_ZN4slay6engine6actors3NewEyddttd
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	movq	(%rbx), %rax
	leaq	528(%rax), %rcx
	call	_ZN4slay6engine6actorsixEy
	movq	24(%rbx), %rdx
	leaq	40(%rax), %rcx
	call	_ZN4slay6engine6actors5actor8textures3NewEy
	movq	%rax, 16(%rbx)
	addq	$64, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.globl	_ZN10backgroundC1EPN4slay6engineE
	.def	_ZN10backgroundC1EPN4slay6engineE;	.scl	2;	.type	32;	.endef
	.set	_ZN10backgroundC1EPN4slay6engineE,_ZN10backgroundC2EPN4slay6engineE
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
	.def	_ZN4slay6engine6actors3NewEyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
