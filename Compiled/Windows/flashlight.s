	.file	"flashlight.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "assets/flashlight.png\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN10flashlightC2EPN3wze6engineE
	.def	_ZN10flashlightC2EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10flashlightC2EPN3wze6engineE
_ZN10flashlightC2EPN3wze6engineE:
.LFB8435:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	696(%rdx), %rcx
	leaq	.LC0(%rip), %rdx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	pxor	%xmm3, %xmm3
	movl	$3, %r8d
	movq	%rbx, %rdx
	movq	%rax, 32(%rbx)
	movq	(%rbx), %rax
	movq	$0x000000000, 56(%rsp)
	movl	$3000, 48(%rsp)
	leaq	632(%rax), %rcx
	movl	$3000, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	%rax, %rdx
	movq	%rax, 16(%rbx)
	movq	(%rbx), %rax
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	call	_ZN3wze6engine6window8GetWidthEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	(%rbx), %rax
	movq	16(%rbx), %rdx
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	call	_ZN3wze6engine6window9GetHeightEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZN3wze6engine6actors5actor4SetYEd
	.seh_endproc
	.globl	_ZN10flashlightC1EPN3wze6engineE
	.def	_ZN10flashlightC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.set	_ZN10flashlightC1EPN3wze6engineE,_ZN10flashlightC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN10flashlightD2Ev
	.def	_ZN10flashlightD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10flashlightD2Ev
_ZN10flashlightD2Ev:
.LFB8438:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	32(%rcx), %rdx
	movq	%rcx, %rbx
	leaq	696(%rax), %rcx
	call	_ZN3wze6engine6assets13UnloadTextureEy
	movq	(%rbx), %rcx
	movq	16(%rbx), %rdx
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
	.globl	_ZN10flashlightD1Ev
	.def	_ZN10flashlightD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN10flashlightD1Ev,_ZN10flashlightD2Ev
	.align 2
	.p2align 4
	.globl	_ZN10flashlight6UpdateEv
	.def	_ZN10flashlight6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10flashlight6UpdateEv
_ZN10flashlight6UpdateEv:
.LFB8440:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	pxor	%xmm1, %xmm1
	movq	(%rcx), %rsi
	movq	%rcx, %rbx
	leaq	576(%rsi), %rcx
	call	_ZN3wze6engine5mouse4GetYEd
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm6
	leaq	576(%rax), %rcx
	call	_ZN3wze6engine5mouse4GetXEd
	movq	(%rbx), %rax
	movq	16(%rbx), %rdx
	movsd	%xmm0, 56(%rsp)
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	(%rbx), %rax
	movq	16(%rbx), %rdx
	movsd	%xmm0, 48(%rsp)
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	56(%rsp), %xmm3
	movsd	48(%rsp), %xmm2
	movsd	%xmm6, 32(%rsp)
	movapd	%xmm0, %xmm1
	leaq	688(%rsi), %rcx
	call	_ZN3wze6engine6vector5AngleEdddd
	ucomisd	%xmm0, %xmm0
	movapd	%xmm0, %xmm6
	jnp	.L8
	movaps	64(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	movq	(%rbx), %rcx
	movq	16(%rbx), %rdx
	addq	$632, %rcx
	call	_ZN3wze6engine6actorsixEy
	movapd	%xmm6, %xmm1
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	nop
	movaps	64(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
