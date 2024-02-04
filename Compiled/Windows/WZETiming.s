	.file	"WZETiming.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timingC2EPS0_
	.def	_ZN3wze6engine6timingC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timingC2EPS0_
_ZN3wze6engine6timingC2EPS0_:
.LFB8433:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movq	%rdx, (%rcx)
	movb	$0, 8(%rcx)
	movw	%ax, 28(%rcx)
	movq	$0, 32(%rcx)
	movups	%xmm0, 12(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6timingC1EPS0_
	.def	_ZN3wze6engine6timingC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6timingC1EPS0_,_ZN3wze6engine6timingC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetPrevTickEv
	.def	_ZN3wze6engine6timing11GetPrevTickEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing11GetPrevTickEv
_ZN3wze6engine6timing11GetPrevTickEv:
.LFB8435:
	.seh_endprologue
	movl	12(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetGameTimeEv
	.def	_ZN3wze6engine6timing11GetGameTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing11GetGameTimeEv
_ZN3wze6engine6timing11GetGameTimeEv:
.LFB8436:
	.seh_endprologue
	movl	16(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing13GetRenderTimeEv
	.def	_ZN3wze6engine6timing13GetRenderTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing13GetRenderTimeEv
_ZN3wze6engine6timing13GetRenderTimeEv:
.LFB8437:
	.seh_endprologue
	movl	20(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing14GetWorkingTimeEv
	.def	_ZN3wze6engine6timing14GetWorkingTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing14GetWorkingTimeEv
_ZN3wze6engine6timing14GetWorkingTimeEv:
.LFB8438:
	.seh_endprologue
	movl	24(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetIdleTimeEv
	.def	_ZN3wze6engine6timing11GetIdleTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing11GetIdleTimeEv
_ZN3wze6engine6timing11GetIdleTimeEv:
.LFB8439:
	.seh_endprologue
	movzwl	28(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing12GetFrameTimeEv
	.def	_ZN3wze6engine6timing12GetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing12GetFrameTimeEv
_ZN3wze6engine6timing12GetFrameTimeEv:
.LFB8440:
	.seh_endprologue
	movl	32(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing12GetDeltaTimeEv
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing12GetDeltaTimeEv
_ZN3wze6engine6timing12GetDeltaTimeEv:
.LFB8441:
	.seh_endprologue
	movl	36(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing6UpdateEv
	.def	_ZN3wze6engine6timing6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing6UpdateEv
_ZN3wze6engine6timing6UpdateEv:
.LFB8442:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	call	SDL_GetTicks
	movl	12(%rbx), %edx
	movzbl	8(%rbx), %ecx
	subl	%edx, %eax
	leal	(%rcx,%rdx), %esi
	movl	%eax, 24(%rbx)
	call	SDL_GetTicks
	subl	%eax, %esi
	movzwl	%si, %ecx
	movw	%cx, 28(%rbx)
	testw	%cx, %cx
	jle	.L11
	call	SDL_Delay
.L11:
	call	SDL_GetTicks
	subl	12(%rbx), %eax
	movl	%eax, 32(%rbx)
	call	SDL_GetTicks
	movl	$40, %edx
	movl	%eax, 12(%rbx)
	movl	32(%rbx), %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 36(%rbx)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	SDL_GetTicks;	.scl	2;	.type	32;	.endef
	.def	SDL_Delay;	.scl	2;	.type	32;	.endef
