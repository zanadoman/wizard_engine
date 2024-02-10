	.file	"platform.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN8platformC2EPN3wze6engineEP4gameddttdh
	.def	_ZN8platformC2EPN3wze6engineEP4gameddttdh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8platformC2EPN3wze6engineEP4gameddttdh
_ZN8platformC2EPN3wze6engineEP4gameddttdh:
.LFB6880:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movzwl	160(%rsp), %eax
	movl	176(%rsp), %esi
	movsd	168(%rsp), %xmm0
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movl	$2, %r8d
	leaq	240(%rdx), %rcx
	movq	%rbx, %rdx
	movl	%eax, 48(%rsp)
	movzwl	152(%rsp), %eax
	movsd	%xmm0, 56(%rsp)
	movsd	144(%rsp), %xmm0
	movl	%eax, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	8(%rbx), %rdx
	movq	%rax, 16(%rbx)
	leaq	40(%rax), %rcx
	movzwl	26(%rdx), %edx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movl	$2, %edx
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movsd	.LC0(%rip), %xmm1
	movq	16(%rbx), %rcx
	movq	%rax, 24(%rbx)
	call	_ZN3wze6engine6actors5actor8SetDepthEd
	movq	16(%rbx), %rcx
	movzbl	%sil, %edx
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor8GetWidthEv
	pxor	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm6
	movq	%rsi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm6, %xmm0
	cvttsd2sil	%xmm0, %edx
	movzwl	%dx, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor9GetHeightEv
	pxor	%xmm0, %xmm0
	movq	%rsi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm6, %xmm0
	movaps	64(%rsp), %xmm6
	cvttsd2sil	%xmm0, %edx
	movzwl	%dx, %edx
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.seh_endproc
	.globl	_ZN8platformC1EPN3wze6engineEP4gameddttdh
	.def	_ZN8platformC1EPN3wze6engineEP4gameddttdh;	.scl	2;	.type	32;	.endef
	.set	_ZN8platformC1EPN3wze6engineEP4gameddttdh,_ZN8platformC2EPN3wze6engineEP4gameddttdh
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-1717986918
	.long	1068079513
	.align 8
.LC1:
	.long	-350469331
	.long	1059731170
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
