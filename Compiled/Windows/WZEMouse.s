	.file	"WZEMouse.cpp"
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
	.globl	_ZN3wze6engine5mouseC2EPS0_
	.def	_ZN3wze6engine5mouseC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouseC2EPS0_
_ZN3wze6engine5mouseC2EPS0_:
.LFB6880:
	.seh_endprologue
	movq	.LC0(%rip), %rax
	pxor	%xmm0, %xmm0
	movq	%rdx, (%rcx)
	movq	%rax, 8(%rcx)
	movq	$0, 16(%rcx)
	movb	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movups	%xmm0, 24(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine5mouseC1EPS0_
	.def	_ZN3wze6engine5mouseC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine5mouseC1EPS0_,_ZN3wze6engine5mouseC2EPS0_
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "engine.mouse.GetX(): Layer must not be NaN\12Params: Layer: %lf\12\0"
	.align 8
.LC4:
	.ascii "engine.mouse.GetY(): Layer must not be less than 0\12Params: Layer: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse4GetXEd
	.def	_ZN3wze6engine5mouse4GetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse4GetXEd
_ZN3wze6engine5mouse4GetXEd:
.LFB6882:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L16
	pxor	%xmm2, %xmm2
	comisd	%xmm1, %xmm2
	ja	.L17
	ucomisd	%xmm2, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rcx), %xmm0
	jp	.L13
	je	.L4
.L13:
	movq	(%rcx), %rax
	mulsd	144(%rax), %xmm1
	movsd	88(%rax), %xmm2
	divsd	%xmm1, %xmm2
	divsd	%xmm1, %xmm0
	addsd	128(%rax), %xmm0
	addsd	%xmm2, %xmm0
.L4:
	addq	$40, %rsp
	ret
.L16:
	leaq	.LC2(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L17:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "engine.mouse.GetY(): Layer must not be NaN\12Params: Layer: %lf\12\0"
	.align 8
.LC6:
	.ascii "engine.mouse.GetX(): Layer must not be less than 0\12Params: Layer: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse4GetYEd
	.def	_ZN3wze6engine5mouse4GetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse4GetYEd
_ZN3wze6engine5mouse4GetYEd:
.LFB6883:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L30
	pxor	%xmm2, %xmm2
	comisd	%xmm1, %xmm2
	ja	.L31
	ucomisd	%xmm2, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	20(%rcx), %xmm0
	jp	.L27
	je	.L18
.L27:
	movq	(%rcx), %rax
	mulsd	144(%rax), %xmm1
	movsd	96(%rax), %xmm2
	divsd	%xmm1, %xmm2
	divsd	%xmm1, %xmm0
	addsd	136(%rax), %xmm0
	addsd	%xmm2, %xmm0
.L18:
	addq	$40, %rsp
	ret
.L30:
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L31:
	leaq	.LC6(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10GetMotionXEv
	.def	_ZN3wze6engine5mouse10GetMotionXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse10GetMotionXEv
_ZN3wze6engine5mouse10GetMotionXEv:
.LFB6884:
	.seh_endprologue
	movsd	24(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10GetMotionYEv
	.def	_ZN3wze6engine5mouse10GetMotionYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse10GetMotionYEv
_ZN3wze6engine5mouse10GetMotionYEv:
.LFB6885:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10IsAbsoluteEv
	.def	_ZN3wze6engine5mouse10IsAbsoluteEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse10IsAbsoluteEv
_ZN3wze6engine5mouse10IsAbsoluteEv:
.LFB6886:
	.seh_endprologue
	movzbl	40(%rcx), %eax
	xorl	$1, %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse11SetAbsoluteEv
	.def	_ZN3wze6engine5mouse11SetAbsoluteEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse11SetAbsoluteEv
_ZN3wze6engine5mouse11SetAbsoluteEv:
.LFB6887:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	xorl	%ecx, %ecx
	call	SDL_SetRelativeMouseMode
	xorl	%eax, %eax
	movb	$0, 40(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10IsRelativeEv
	.def	_ZN3wze6engine5mouse10IsRelativeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse10IsRelativeEv
_ZN3wze6engine5mouse10IsRelativeEv:
.LFB6888:
	.seh_endprologue
	movzbl	40(%rcx), %eax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse11SetRelativeEv
	.def	_ZN3wze6engine5mouse11SetRelativeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse11SetRelativeEv
_ZN3wze6engine5mouse11SetRelativeEv:
.LFB6889:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movl	$1, %ecx
	call	SDL_SetRelativeMouseMode
	movl	$1, %eax
	movb	$1, 40(%rbx)
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse9GetCursorEv
	.def	_ZN3wze6engine5mouse9GetCursorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse9GetCursorEv
_ZN3wze6engine5mouse9GetCursorEv:
.LFB6890:
	.seh_endprologue
	movq	48(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "wze::engine.mouse.SetCursor(): Illegal use of NULL cursor\12Params: ID: %lld\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.mouse.SetCursor(): Cursor does not exist\12Params: ID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse9SetCursorEy
	.def	_ZN3wze6engine5mouse9SetCursorEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse9SetCursorEy
_ZN3wze6engine5mouse9SetCursorEy:
.LFB6891:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L43
	movq	(%rcx), %rax
	cmpq	776(%rax), %rdx
	jnb	.L41
	movq	784(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L41
	call	SDL_SetCursor
	movq	%rbx, %rax
	movq	%rbx, 48(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L41:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L43:
	leaq	.LC7(%rip), %rcx
	xorl	%edx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse6UpdateEv
	.def	_ZN3wze6engine5mouse6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5mouse6UpdateEv
_ZN3wze6engine5mouse6UpdateEv:
.LFB6892:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rbx
	leaq	44(%rsp), %rdx
	leaq	40(%rsp), %rcx
	call	SDL_GetRelativeMouseState
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	(%rbx), %r8
	cvtsi2sdl	40(%rsp), %xmm0
	movsd	8(%rbx), %xmm2
	cvtsi2sdl	44(%rsp), %xmm1
	movq	832(%r8), %rdx
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	xorpd	.LC9(%rip), %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 24(%rbx)
	testq	%rdx, %rdx
	je	.L45
	movq	840(%r8), %rax
	leaq	0(,%rdx,8), %rcx
	subq	%rdx, %rcx
	leaq	(%rax,%rcx,8), %rcx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L47:
	addq	$56, %rax
	cmpq	%rax, %rcx
	je	.L45
.L52:
	cmpl	$1024, (%rax)
	jne	.L47
	movl	20(%rax), %edx
	movl	%edx, 16(%rbx)
	testl	%edx, %edx
	js	.L57
	movzwl	24(%r8), %r9d
	cmpl	%r9d, %edx
	jge	.L58
.L49:
	movzwl	42(%r8), %edx
	subl	24(%rax), %edx
	movl	%edx, 20(%rbx)
	js	.L59
.L50:
	movzwl	26(%r8), %r9d
	cmpl	%r9d, %edx
	jl	.L47
	subl	$1, %r9d
	addq	$56, %rax
	movl	%r9d, 20(%rbx)
	cmpq	%rax, %rcx
	jne	.L52
.L45:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	movzwl	42(%r8), %edx
	movl	$0, 16(%rbx)
	subl	24(%rax), %edx
	movl	%edx, 20(%rbx)
	jns	.L50
.L59:
	movl	$0, 20(%rbx)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L58:
	subl	$1, %r9d
	movl	%r9d, 16(%rbx)
	jmp	.L49
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 16
.LC9:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	SDL_SetRelativeMouseMode;	.scl	2;	.type	32;	.endef
	.def	SDL_SetCursor;	.scl	2;	.type	32;	.endef
	.def	SDL_GetRelativeMouseState;	.scl	2;	.type	32;	.endef
