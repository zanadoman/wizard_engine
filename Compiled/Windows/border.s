	.file	"border.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN6borderC2EPN3wze6engineEP4gameddttdh
	.def	_ZN6borderC2EPN3wze6engineEP4gameddttdh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6borderC2EPN3wze6engineEP4gameddttdh
_ZN6borderC2EPN3wze6engineEP4gameddttdh:
.LFB6889:
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
	movl	$5, %r8d
	leaq	256(%rdx), %rcx
	movq	%rbx, %rdx
	movl	%eax, 48(%rsp)
	movzwl	152(%rsp), %eax
	movsd	%xmm0, 56(%rsp)
	movsd	144(%rsp), %xmm0
	movl	%eax, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movl	$5, %edx
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	16(%rbx), %rcx
	movzbl	%sil, %edx
	movq	%rax, 24(%rbx)
	movq	$1000, 184(%rcx)
	call	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor8GetWidthEv
	pxor	%xmm0, %xmm0
	movsd	.LC0(%rip), %xmm6
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
	.globl	_ZN6borderC1EPN3wze6engineEP4gameddttdh
	.def	_ZN6borderC1EPN3wze6engineEP4gameddttdh;	.scl	2;	.type	32;	.endef
	.set	_ZN6borderC1EPN3wze6engineEP4gameddttdh,_ZN6borderC2EPN3wze6engineEP4gameddttdh
	.align 2
	.p2align 4
	.globl	_ZN6borderD2Ev
	.def	_ZN6borderD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6borderD2Ev
_ZN6borderD2Ev:
.LFB6892:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	16(%rcx), %rcx
	leaq	256(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movq	%rbx, %rcx
	movq	%rax, %rdx
	call	_ZN3wze6engine6actors6DeleteEy
	nop
	addq	$32, %rsp
	popq	%rbx
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6892:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6892-.LLSDACSB6892
.LLSDACSB6892:
.LLSDACSE6892:
	.text
	.seh_endproc
	.globl	_ZN6borderD1Ev
	.def	_ZN6borderD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6borderD1Ev,_ZN6borderD2Ev
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-350469331
	.long	1059731170
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor17SetCollisionLayerEh;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
