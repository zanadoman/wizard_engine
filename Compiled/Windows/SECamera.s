	.file	"SECamera.cpp"
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
	.globl	_ZN4slay6engine6cameraC2EPS0_
	.def	_ZN4slay6engine6cameraC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6cameraC2EPS0_
_ZN4slay6engine6cameraC2EPS0_:
.LFB8433:
	.seh_endprologue
	movq	.LC0(%rip), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	%rdx, (%rcx)
	movq	%rax, 56(%rcx)
	movups	%xmm0, 8(%rcx)
	movups	%xmm1, 24(%rcx)
	movups	%xmm0, 40(%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6cameraC1EPS0_
	.def	_ZN4slay6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6cameraC1EPS0_,_ZN4slay6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7GetZoomEv
	.def	_ZN4slay6engine6camera7GetZoomEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera7GetZoomEv
_ZN4slay6engine6camera7GetZoomEv:
.LFB8435:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "slay::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\12Params: Zoom: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7SetZoomEd
	.def	_ZN4slay6engine6camera7SetZoomEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera7SetZoomEd
_ZN4slay6engine6camera7SetZoomEd:
.LFB8436:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L10
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 56(%rcx)
	addq	$40, %rsp
	ret
.L10:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera9GetXActorEv
	.def	_ZN4slay6engine6camera9GetXActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera9GetXActorEv
_ZN4slay6engine6camera9GetXActorEv:
.LFB8437:
	.seh_endprologue
	movq	24(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera9GetYActorEv
	.def	_ZN4slay6engine6camera9GetYActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera9GetYActorEv
_ZN4slay6engine6camera9GetYActorEv:
.LFB8438:
	.seh_endprologue
	movq	32(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "slay::engine.camera.Bind(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC6:
	.ascii "slay::engine.camera.Bind(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC7:
	.ascii "slay::engine.camera.Bind(): Actor must not be in Layer 0\12Params: Actor: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera4BindEy
	.def	_ZN4slay6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera4BindEy
_ZN4slay6engine6camera4BindEy:
.LFB8439:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %xmm0
	punpcklqdq	%xmm0, %xmm0
	testq	%rdx, %rdx
	je	.L20
	movq	(%rcx), %rax
	cmpq	536(%rax), %rdx
	jnb	.L15
	movq	544(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L15
	pxor	%xmm1, %xmm1
	ucomisd	184(%rax), %xmm1
	jp	.L17
	je	.L21
.L17:
	xorl	%eax, %eax
	movups	%xmm0, 24(%rcx)
	addq	$40, %rsp
	ret
.L15:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L20:
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L21:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "slay::engine.camera.BindX(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC9:
	.ascii "slay::engine.camera.BindX(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC10:
	.ascii "slay::engine.camera.BindX(): Actor must not be in Layer 0\12Params: Actor: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera5BindXEy
	.def	_ZN4slay6engine6camera5BindXEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera5BindXEy
_ZN4slay6engine6camera5BindXEy:
.LFB8440:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L29
	movq	(%rcx), %rax
	cmpq	536(%rax), %rdx
	jnb	.L24
	movq	544(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L24
	pxor	%xmm0, %xmm0
	ucomisd	184(%rax), %xmm0
	jp	.L26
	je	.L30
.L26:
	xorl	%eax, %eax
	movq	%rdx, 24(%rcx)
	addq	$40, %rsp
	ret
.L24:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L30:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "slay::engine.camera.BindY(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC12:
	.ascii "slay::engine.camera.BindY(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC13:
	.ascii "slay::engine.camera.BindY(): Actor must not be in Layer 0\12Params: Actor: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera5BindYEy
	.def	_ZN4slay6engine6camera5BindYEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera5BindYEy
_ZN4slay6engine6camera5BindYEy:
.LFB8441:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L38
	movq	(%rcx), %rax
	cmpq	536(%rax), %rdx
	jnb	.L33
	movq	544(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L33
	pxor	%xmm0, %xmm0
	ucomisd	184(%rax), %xmm0
	jp	.L35
	je	.L39
.L35:
	xorl	%eax, %eax
	movq	%rdx, 32(%rcx)
	addq	$40, %rsp
	ret
.L33:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L38:
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L39:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera6UnbindEv
	.def	_ZN4slay6engine6camera6UnbindEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera6UnbindEv
_ZN4slay6engine6camera6UnbindEv:
.LFB8442:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 24(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7UnbindXEv
	.def	_ZN4slay6engine6camera7UnbindXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera7UnbindXEv
_ZN4slay6engine6camera7UnbindXEv:
.LFB8443:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 24(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7UnbindYEv
	.def	_ZN4slay6engine6camera7UnbindYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera7UnbindYEv
_ZN4slay6engine6camera7UnbindYEv:
.LFB8444:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 32(%rcx)
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera6UpdateEv
	.def	_ZN4slay6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera6UpdateEv
_ZN4slay6engine6camera6UpdateEv:
.LFB8445:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	24(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L55
	movq	32(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L56
.L46:
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	movq	(%rcx), %rax
	movq	544(%rax), %r8
	cmpq	536(%rax), %rdx
	jnb	.L54
	movq	(%r8,%rdx,8), %rax
	movq	32(%rcx), %rdx
	movsd	152(%rax), %xmm0
	movsd	%xmm0, 40(%rcx)
	testq	%rdx, %rdx
	je	.L46
.L56:
	movq	(%rcx), %rax
	movq	544(%rax), %r8
	cmpq	536(%rax), %rdx
	jnb	.L54
	movq	(%r8,%rdx,8), %rax
	movsd	160(%rax), %xmm0
	xorl	%eax, %eax
	movsd	%xmm0, 48(%rcx)
	addq	$40, %rsp
	ret
.L54:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera9TransformEddttd
	.def	_ZN4slay6engine6camera9TransformEddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6camera9TransformEddttd
_ZN4slay6engine6camera9TransformEddttd:
.LFB8446:
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
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movsd	192(%rsp), %xmm8
	movq	(%rdx), %rax
	movzwl	176(%rsp), %r12d
	movzwl	184(%rsp), %ebp
	ucomisd	%xmm0, %xmm8
	movzwl	42(%rax), %edi
	movq	%rcx, %rbx
	movapd	%xmm2, %xmm9
	movapd	%xmm3, %xmm7
	movq	%rdx, %rsi
	jp	.L58
	jne	.L58
	movapd	%xmm2, %xmm0
	movl	%r12d, 8(%rcx)
	sarl	%r12d
	movl	%ebp, 12(%rcx)
	sarl	%ebp
	call	round
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm7, %xmm0
	subl	%r12d, %eax
	movl	%eax, (%rbx)
	call	round
	movl	%edi, %eax
	cvttsd2sil	%xmm0, %edx
	subl	%edx, %eax
	subl	%ebp, %eax
.L60:
	movl	%eax, 4(%rbx)
	movaps	32(%rsp), %xmm6
	movq	%rbx, %rax
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	movaps	80(%rsp), %xmm9
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	mulsd	56(%rsi), %xmm8
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	mulsd	%xmm8, %xmm0
	call	round
	movapd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm8, %xmm0
	call	round
	unpcklpd	%xmm0, %xmm6
	movsd	8(%rsi), %xmm0
	cvttpd2dq	%xmm6, %xmm6
	movq	%xmm6, 8(%rbx)
	divsd	%xmm8, %xmm0
	addsd	40(%rsi), %xmm0
	subsd	%xmm0, %xmm9
	movapd	%xmm9, %xmm0
	mulsd	%xmm8, %xmm0
	call	round
	movd	%xmm6, %edx
	cvttsd2sil	%xmm0, %eax
	movsd	16(%rsi), %xmm0
	sarl	%edx
	divsd	%xmm8, %xmm0
	subl	%edx, %eax
	movl	%eax, (%rbx)
	addsd	48(%rsi), %xmm0
	subsd	%xmm0, %xmm7
	mulsd	%xmm8, %xmm7
	movapd	%xmm7, %xmm0
	call	round
	movl	%edi, %eax
	pshufd	$0xe5, %xmm6, %xmm1
	cvttsd2sil	%xmm0, %edx
	subl	%edx, %eax
	movd	%xmm1, %edx
	sarl	%edx
	subl	%edx, %eax
	jmp	.L60
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
