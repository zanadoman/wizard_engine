	.file	"crate.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "assets/crate.png\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5crateC2EPN3wze6engineEddtt
	.def	_ZN5crateC2EPN3wze6engineEddtt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5crateC2EPN3wze6engineEddtt
_ZN5crateC2EPN3wze6engineEddtt:
.LFB8435:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movl	160(%rsp), %esi
	movl	168(%rsp), %edi
	movzwl	%si, %esi
	movzwl	%di, %edi
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movapd	%xmm2, %xmm6
	movapd	%xmm3, %xmm7
	leaq	696(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movapd	%xmm6, %xmm3
	movl	$2, %r8d
	movq	%rbx, %rdx
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rax
	movl	%edi, 48(%rsp)
	leaq	632(%rax), %rcx
	movq	.LC1(%rip), %rax
	movl	%esi, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	movq	%rax, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	%rax, 8(%rbx)
	movq	%rax, %rdx
	movq	(%rbx), %rax
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	24(%rbx), %rdx
	leaq	40(%rax), %rcx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movq	8(%rbx), %rdx
	movq	%rax, 16(%rbx)
	movq	(%rbx), %rax
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	8(%rbx), %rdx
	movq	$50, 184(%rax)
	movq	(%rbx), %rax
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movsd	.LC2(%rip), %xmm1
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8SetDepthEd
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	addq	$632, %rcx
	call	_ZN3wze6engine6actorsixEy
	nop
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	xorl	%edx, %edx
	leaq	136(%rax), %rcx
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.seh_endproc
	.globl	_ZN5crateC1EPN3wze6engineEddtt
	.def	_ZN5crateC1EPN3wze6engineEddtt;	.scl	2;	.type	32;	.endef
	.set	_ZN5crateC1EPN3wze6engineEddtt,_ZN5crateC2EPN3wze6engineEddtt
	.align 2
	.p2align 4
	.globl	_ZN5crateD2Ev
	.def	_ZN5crateD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5crateD2Ev
_ZN5crateD2Ev:
.LFB8438:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rcx, %rbx
	leaq	696(%rax), %rcx
	call	_ZN3wze6engine6assets13UnloadTextureEy
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	addq	$632, %rcx
	call	_ZN3wze6engine6actors6DeleteEy
	nop
	addq	$32, %rsp
	popq	%rbx
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8438-.LLSDACSB8438
.LLSDACSB8438:
.LLSDACSE8438:
	.text
	.seh_endproc
	.globl	_ZN5crateD1Ev
	.def	_ZN5crateD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5crateD1Ev,_ZN5crateD2Ev
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	-1717986918
	.long	1068079513
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
