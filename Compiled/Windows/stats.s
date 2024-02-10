	.file	"stats.cpp"
	.text
	.section .rdata,"dr"
.LC2:
	.ascii "GameTime: \0"
.LC3:
	.ascii "RenderTime: \0"
.LC4:
	.ascii "FrameTime: \0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5statsC2EPN3wze6engineEP4game
	.def	_ZN5statsC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5statsC2EPN3wze6engineEP4game
_ZN5statsC2EPN3wze6engineEP4game:
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
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, 8(%rcx)
	movq	%rdx, %rcx
	call	_ZN3wze6engine6window9GetHeightEv
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movzwl	%ax, %eax
	movl	$0, 48(%rsp)
	movsd	.LC0(%rip), %xmm3
	leaq	240(%rsi), %rcx
	subl	$20, %eax
	movl	$0, 40(%rsp)
	movq	$0x000000000, 56(%rsp)
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	8(%rbx), %rdx
	movq	%rax, 16(%rbx)
	leaq	104(%rax), %rcx
	movzwl	16(%rdx), %r8d
	leaq	.LC2(%rip), %rdx
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	movq	16(%rbx), %rsi
	leaq	.LC3(%rip), %rdx
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rsi), %rcx
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	movq	16(%rbx), %rdx
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rdx), %rcx
	leaq	.LC4(%rip), %rdx
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	movq	24(%rbx), %rcx
	movl	$20, %edx
	movq	%rax, 40(%rbx)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	24(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	subsd	.LC5(%rip), %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	movq	24(%rbx), %rax
	xorl	%edx, %edx
	movq	32(%rbx), %rcx
	movw	%dx, 16(%rax)
	movl	$20, %edx
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	movq	16(%rbx), %rcx
	movq	32(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	32(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	movq	16(%rbx), %rcx
	movq	32(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	subsd	.LC6(%rip), %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	movq	32(%rbx), %rax
	xorl	%ecx, %ecx
	movl	$20, %edx
	movw	%cx, 16(%rax)
	movq	40(%rbx), %rcx
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	movq	16(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	40(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	movq	16(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	subsd	.LC7(%rip), %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	movq	40(%rbx), %rax
	xorl	%r8d, %r8d
	movw	%r8w, 16(%rax)
	movb	$0, 18(%rax)
	movaps	64(%rsp), %xmm6
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.globl	_ZN5statsC1EPN3wze6engineEP4game
	.def	_ZN5statsC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN5statsC1EPN3wze6engineEP4game,_ZN5statsC2EPN3wze6engineEP4game
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN5stats6UpdateEv
	.def	_ZN5stats6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5stats6UpdateEv
_ZN5stats6UpdateEv:
.LFB6882:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	.seh_endprologue
	leaq	80(%rsp), %rsi
	movq	%rcx, %rbx
	movq	%rsi, %rcx
.LEHB0:
	call	_ZN3neo6stringC1Ev
.LEHE0:
	movq	(%rbx), %rax
	movq	24(%rbx), %r14
	leaq	400(%rax), %rcx
.LEHB1:
	call	_ZN3wze6engine6timing11GetGameTimeEv
	movl	%eax, %eax
	leaq	48(%rsp), %r12
	leaq	64(%rsp), %r13
	movq	%rsi, %rcx
	movq	%rax, 72(%rsp)
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rax
	leaq	72(%rsp), %rbp
	movq	%rax, 64(%rsp)
	movq	%r13, 48(%rsp)
	movq	$1, 56(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	leaq	32(%rsp), %rdi
	movq	%rax, %rcx
	movq	%rbp, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	%rdi, %rdx
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	%r14, %rcx
	call	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	movq	16(%rbx), %rcx
	movq	24(%rbx), %r14
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	24(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	%r14, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	movq	(%rbx), %rax
	movq	32(%rbx), %r14
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing13GetRenderTimeEv
	movl	%eax, %eax
	movq	%r12, %rdx
	movq	%rsi, %rcx
	movq	%r13, 48(%rsp)
	movq	%rax, 72(%rsp)
	leaq	.LC3(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 56(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	%rax, %rcx
	movq	%rdi, %rdx
	movq	%rbp, 32(%rsp)
	movq	$1, 40(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	%r14, %rcx
	call	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	movq	16(%rbx), %rcx
	movq	32(%rbx), %r14
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	32(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	%r14, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	movq	(%rbx), %rax
	movq	40(%rbx), %r14
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetFrameTimeEv
	movl	%eax, %eax
	movq	%r12, %rdx
	movq	%rsi, %rcx
	movq	%r13, 48(%rsp)
	movq	%rax, 72(%rsp)
	leaq	.LC4(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$1, 56(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	%rax, %rcx
	movq	%rdi, %rdx
	movq	%rbp, 32(%rsp)
	movq	$1, 40(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	%r14, %rcx
	call	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	movq	16(%rbx), %rcx
	movq	40(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	40(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	%rdi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor5texts4text4SetXEd
.LEHE1:
	movq	%rsi, %rcx
	call	_ZN3neo6stringD1Ev
	nop
	movaps	96(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L5:
	movq	%rax, %rbx
	jmp	.L4
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6882:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6882-.LLSDACSB6882
.LLSDACSB6882:
	.uleb128 .LEHB0-.LFB6882
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6882
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L5-.LFB6882
	.uleb128 0
.LLSDACSE6882:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN5stats6UpdateEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5stats6UpdateEv.cold
	.seh_stackalloc	168
	.seh_savereg	%rbx, 112
	.seh_savereg	%rsi, 120
	.seh_savereg	%rdi, 128
	.seh_savereg	%rbp, 136
	.seh_savexmm	%xmm6, 96
	.seh_savereg	%r12, 144
	.seh_savereg	%r13, 152
	.seh_savereg	%r14, 160
	.seh_endprologue
_ZN5stats6UpdateEv.cold:
.L4:
	movq	%rsi, %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rbx, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6882:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6882-.LLSDACSBC6882
.LLSDACSBC6882:
	.uleb128 .LEHB2-.LCOLDB8
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC6882:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE8:
	.text
.LHOTE8:
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1077149696
	.align 8
.LC5:
	.long	0
	.long	1076101120
	.align 8
.LC6:
	.long	0
	.long	1078198272
	.align 8
.LC7:
	.long	0
	.long	1079083008
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6window9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts3NewEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing11GetGameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringpLESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing13GetRenderTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
