	.file	"WZETiming.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timingC2EPS0_
	.def	_ZN3wze6engine6timingC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timingC2EPS0_
_ZN3wze6engine6timingC2EPS0_:
.LFB6890:
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
	.globl	_ZN3wze6engine6timing18GetTargetFrameTimeEv
	.def	_ZN3wze6engine6timing18GetTargetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing18GetTargetFrameTimeEv
_ZN3wze6engine6timing18GetTargetFrameTimeEv:
.LFB6892:
	.seh_endprologue
	movzbl	8(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "wze::engine.timing.SetTargetFrameTime(): TargetFrameTime must not be equal to 0\12Params: TargetFrameTime: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing18SetTargetFrameTimeEh
	.def	_ZN3wze6engine6timing18SetTargetFrameTimeEh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing18SetTargetFrameTimeEh
_ZN3wze6engine6timing18SetTargetFrameTimeEh:
.LFB6893:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %eax
	testb	%dl, %dl
	je	.L7
	movb	%dl, 8(%rcx)
	addq	$40, %rsp
	ret
.L7:
	leaq	.LC0(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing14GetCurrentTickEv
	.def	_ZN3wze6engine6timing14GetCurrentTickEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6timing14GetCurrentTickEv
_ZN3wze6engine6timing14GetCurrentTickEv:
.LFB6894:
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
.LFB6895:
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
.LFB6896:
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
.LFB6897:
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
.LFB6898:
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
.LFB6899:
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
.LFB6900:
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
.LFB6901:
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
	jle	.L16
	call	SDL_Delay
.L16:
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
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	SDL_GetTicks;	.scl	2;	.type	32;	.endef
	.def	SDL_Delay;	.scl	2;	.type	32;	.endef
