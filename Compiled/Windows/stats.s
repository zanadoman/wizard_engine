	.file	"stats.cpp"
	.text
	.section .rdata,"dr"
.LC2:
	.ascii "GameTime: 0ms\0"
.LC3:
	.ascii "RenderTime: 0ms\0"
.LC4:
	.ascii "FrameTime: 0ms\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5statsC2EPN3wze6engineEP4game
	.def	_ZN5statsC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5statsC2EPN3wze6engineEP4game
_ZN5statsC2EPN3wze6engineEP4game:
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
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	movq	16(%rbx), %rsi
	leaq	.LC3(%rip), %rdx
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rsi), %rcx
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	movq	16(%rbx), %rdx
	movq	%rax, 32(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rdx), %rcx
	leaq	.LC4(%rip), %rdx
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	movq	24(%rbx), %rcx
	movl	$20, %edx
	movq	%rax, 40(%rbx)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	24(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	subsd	.LC5(%rip), %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	movq	24(%rbx), %rax
	xorl	%edx, %edx
	movq	32(%rbx), %rcx
	movw	%dx, 16(%rax)
	movl	$20, %edx
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	16(%rbx), %rcx
	movq	32(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	32(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	movq	16(%rbx), %rcx
	movq	32(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	subsd	.LC6(%rip), %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	movq	32(%rbx), %rax
	xorl	%ecx, %ecx
	movl	$20, %edx
	movw	%cx, 16(%rax)
	movq	40(%rbx), %rcx
	movb	$0, 18(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	16(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	40(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	movq	16(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	subsd	.LC7(%rip), %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
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
	.align 2
	.p2align 4
	.globl	_ZN5statsD2Ev
	.def	_ZN5statsD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5statsD2Ev
_ZN5statsD2Ev:
.LFB6892:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	16(%rcx), %rcx
	leaq	240(%rax), %rbx
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
	.globl	_ZN5statsD1Ev
	.def	_ZN5statsD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5statsD1Ev,_ZN5statsD2Ev
	.section .rdata,"dr"
.LC8:
	.ascii "ms\0"
.LC9:
	.ascii "GameTime: \0"
.LC10:
	.ascii "RenderTime: \0"
.LC11:
	.ascii "FrameTime: \0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN5stats6UpdateEv
	.def	_ZN5stats6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5stats6UpdateEv
_ZN5stats6UpdateEv:
.LFB6894:
	pushq	%r15
	.seh_pushreg	%r15
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
	subq	$152, %rsp
	.seh_stackalloc	152
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	.seh_endprologue
	leaq	.LC8(%rip), %r15
	leaq	112(%rsp), %rdi
	movq	%rcx, %rbx
	leaq	104(%rsp), %rbp
	movq	%rdi, %rcx
.LEHB0:
	call	_ZN3neo6stringC1Ev
.LEHE0:
	movq	(%rbx), %rsi
	movq	24(%rbx), %rax
	movq	%r15, 104(%rsp)
	leaq	376(%rsi), %rcx
	movq	%rax, 40(%rsp)
.LEHB1:
	call	_ZN3wze6engine6timing11GetGameTimeEv
	movl	%eax, %esi
	leaq	88(%rsp), %r14
	leaq	96(%rsp), %r13
	movq	%rdi, %rcx
	movq	%rsi, 96(%rsp)
	leaq	.LC9(%rip), %rsi
	movq	%rsi, 88(%rsp)
	leaq	64(%rsp), %rsi
	movq	%rsi, %rdx
	movq	%r14, 64(%rsp)
	movq	$1, 72(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	leaq	48(%rsp), %r12
	movq	%rax, %rcx
	movq	%r13, 48(%rsp)
	movq	$1, 56(%rsp)
	movq	%r12, %rdx
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movq	%rbp, 64(%rsp)
	movq	$1, 72(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIPKcE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	40(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc
	movq	24(%rbx), %rax
	movq	16(%rbx), %rcx
	movq	%rax, 40(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	24(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	40(%rsp), %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	movq	(%rbx), %rdx
	movq	32(%rbx), %rax
	movq	%r15, 104(%rsp)
	leaq	376(%rdx), %rcx
	movq	%rax, 40(%rsp)
	call	_ZN3wze6engine6timing13GetRenderTimeEv
	movl	%eax, %edx
	movq	%rdi, %rcx
	movq	%r14, 64(%rsp)
	movq	%rdx, 96(%rsp)
	leaq	.LC10(%rip), %rdx
	movq	%rdx, 88(%rsp)
	movq	%rsi, %rdx
	movq	$1, 72(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%r13, 48(%rsp)
	movq	$1, 56(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movq	%rbp, 64(%rsp)
	movq	$1, 72(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIPKcE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	40(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc
	movq	32(%rbx), %rax
	movq	16(%rbx), %rcx
	movq	%rax, 40(%rsp)
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	32(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	40(%rsp), %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	movq	(%rbx), %rdx
	movq	40(%rbx), %rax
	movq	%r15, 104(%rsp)
	leaq	376(%rdx), %rcx
	movq	%rax, 40(%rsp)
	call	_ZN3wze6engine6timing12GetFrameTimeEv
	movl	%eax, %edx
	movq	%rdi, %rcx
	movq	%r14, 64(%rsp)
	movq	%rdx, 96(%rsp)
	leaq	.LC11(%rip), %rdx
	movq	%rdx, 88(%rsp)
	movq	%rsi, %rdx
	movq	$1, 72(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%r13, 48(%rsp)
	movq	$1, 56(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	movq	%rsi, %rdx
	movq	%rbp, 64(%rsp)
	movq	$1, 72(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIPKcE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	40(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc
	movq	16(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	40(%rbx), %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
.LEHE1:
	movq	%rdi, %rcx
	call	_ZN3neo6stringD1Ev
	nop
	movaps	128(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L6:
	movq	%rax, %rbx
	jmp	.L5
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6894:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6894-.LLSDACSB6894
.LLSDACSB6894:
	.uleb128 .LEHB0-.LFB6894
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6894
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6-.LFB6894
	.uleb128 0
.LLSDACSE6894:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN5stats6UpdateEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN5stats6UpdateEv.cold
	.seh_stackalloc	216
	.seh_savereg	%rbx, 152
	.seh_savereg	%rsi, 160
	.seh_savereg	%rdi, 168
	.seh_savereg	%rbp, 176
	.seh_savexmm	%xmm6, 128
	.seh_savereg	%r12, 184
	.seh_savereg	%r13, 192
	.seh_savereg	%r14, 200
	.seh_savereg	%r15, 208
	.seh_endprologue
_ZN5stats6UpdateEv.cold:
.L5:
	movq	%rdi, %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rbx, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6894:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6894-.LLSDACSBC6894
.LLSDACSBC6894:
	.uleb128 .LEHB2-.LCOLDB12
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC6894:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE12:
	.text
.LHOTE12:
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
	.def	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing11GetGameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringpLESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringpLESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9SetStringEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing13GetRenderTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
