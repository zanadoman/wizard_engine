	.file	"WZECamera.cpp"
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
	.globl	_ZN3wze6engine6cameraC2EPS0_
	.def	_ZN3wze6engine6cameraC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6cameraC2EPS0_
_ZN3wze6engine6cameraC2EPS0_:
.LFB8422:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movq	.LC0(%rip), %rax
	movups	%xmm0, 8(%rcx)
	movups	%xmm0, 24(%rcx)
	pxor	%xmm0, %xmm0
	movq	%rdx, (%rcx)
	movq	%rax, 40(%rcx)
	movups	%xmm0, 48(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.def	_ZN3wze6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetXEv
	.def	_ZN3wze6engine6camera4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4GetXEv
_ZN3wze6engine6camera4GetXEv:
.LFB8424:
	.seh_endprologue
	movsd	8(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetYEv
	.def	_ZN3wze6engine6camera4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4GetYEv
_ZN3wze6engine6camera4GetYEv:
.LFB8425:
	.seh_endprologue
	movsd	16(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetXEv
	.def	_ZN3wze6engine6camera10GetOffsetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10GetOffsetXEv
_ZN3wze6engine6camera10GetOffsetXEv:
.LFB8426:
	.seh_endprologue
	movsd	24(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\12Params: OffsetX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetXEd
	.def	_ZN3wze6engine6camera10SetOffsetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOffsetXEd
_ZN3wze6engine6camera10SetOffsetXEd:
.LFB8427:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	jp	.L12
	movsd	%xmm1, 24(%rcx)
	addq	$40, %rsp
	ret
.L12:
	leaq	.LC3(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetYEv
	.def	_ZN3wze6engine6camera10GetOffsetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10GetOffsetYEv
_ZN3wze6engine6camera10GetOffsetYEv:
.LFB8428:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\12Params: OffsetY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetYEd
	.def	_ZN3wze6engine6camera10SetOffsetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOffsetYEd
_ZN3wze6engine6camera10SetOffsetYEd:
.LFB8429:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	jp	.L19
	movsd	%xmm1, 32(%rcx)
	addq	$40, %rsp
	ret
.L19:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7GetZoomEv
	.def	_ZN3wze6engine6camera7GetZoomEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7GetZoomEv
_ZN3wze6engine6camera7GetZoomEv:
.LFB8430:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be NaN\12Params: Zoom: %lf\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\12Params: Zoom: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.def	_ZN3wze6engine6camera7SetZoomEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7SetZoomEd
_ZN3wze6engine6camera7SetZoomEd:
.LFB8431:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L30
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L31
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 40(%rcx)
	addq	$40, %rsp
	ret
.L30:
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L31:
	leaq	.LC7(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.camera.Bind(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.camera.Bind(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4BindEy
_ZN3wze6engine6camera4BindEy:
.LFB8432:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L40
	movq	(%rcx), %rdx
	cmpq	248(%rdx), %rax
	jnb	.L35
	movq	256(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L35
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	jp	.L37
	je	.L41
.L37:
	movq	%rax, %xmm0
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, 48(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	pxor	%xmm0, %xmm0
	movups	%xmm0, 8(%rcx)
	addq	$40, %rsp
	ret
.L35:
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L41:
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.camera.BindX(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.camera.BindX(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.def	_ZN3wze6engine6camera5BindXEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindXEy
_ZN3wze6engine6camera5BindXEy:
.LFB8433:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L47
	movq	(%rcx), %rdx
	cmpq	248(%rdx), %rax
	jnb	.L44
	movq	256(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L44
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	movq	%rax, %rdx
	jp	.L43
	jne	.L43
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L47:
	xorl	%edx, %edx
.L43:
	movq	%rdx, 48(%rcx)
	addq	$40, %rsp
	ret
.L44:
	leaq	.LC10(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.camera.BindY(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.camera.BindY(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.def	_ZN3wze6engine6camera5BindYEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindYEy
_ZN3wze6engine6camera5BindYEy:
.LFB8434:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L55
	movq	(%rcx), %rdx
	cmpq	248(%rdx), %rax
	jnb	.L52
	movq	256(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L52
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	movq	%rax, %rdx
	jp	.L51
	jne	.L51
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L55:
	xorl	%edx, %edx
.L51:
	movq	%rdx, 56(%rcx)
	addq	$40, %rsp
	ret
.L52:
	leaq	.LC12(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UnbindEv
	.def	_ZN3wze6engine6camera6UnbindEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera6UnbindEv
_ZN3wze6engine6camera6UnbindEv:
.LFB8435:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 48(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.def	_ZN3wze6engine6camera7UnbindXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindXEv
_ZN3wze6engine6camera7UnbindXEv:
.LFB8436:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 48(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.def	_ZN3wze6engine6camera7UnbindYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindYEv
_ZN3wze6engine6camera7UnbindYEv:
.LFB8437:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 56(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.def	_ZN3wze6engine6camera9GetXActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetXActorEv
_ZN3wze6engine6camera9GetXActorEv:
.LFB8438:
	.seh_endprologue
	movq	48(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.def	_ZN3wze6engine6camera9GetYActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetYActorEv
_ZN3wze6engine6camera9GetYActorEv:
.LFB8439:
	.seh_endprologue
	movq	56(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera6UpdateEv
_ZN3wze6engine6camera6UpdateEv:
.LFB8440:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	48(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L75
	movq	56(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L76
.L66:
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	movq	(%rcx), %rax
	movq	256(%rax), %r8
	cmpq	248(%rax), %rdx
	jnb	.L74
	movq	(%r8,%rdx,8), %rax
	movq	56(%rcx), %rdx
	movsd	216(%rax), %xmm0
	movsd	%xmm0, 8(%rcx)
	testq	%rdx, %rdx
	je	.L66
.L76:
	movq	(%rcx), %rax
	movq	256(%rax), %r8
	cmpq	248(%rax), %rdx
	jnb	.L74
	movq	(%r8,%rdx,8), %rax
	movsd	224(%rax), %xmm0
	xorl	%eax, %eax
	movsd	%xmm0, 16(%rcx)
	addq	$40, %rsp
	ret
.L74:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9TransformEddttd
	.def	_ZN3wze6engine6camera9TransformEddttd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9TransformEddttd
_ZN3wze6engine6camera9TransformEddttd:
.LFB8441:
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
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movsd	192(%rsp), %xmm7
	movq	(%rdx), %rax
	movzwl	176(%rsp), %ebp
	movzwl	184(%rsp), %r12d
	ucomisd	%xmm0, %xmm7
	movzwl	42(%rax), %edi
	movq	%rcx, %rbx
	movapd	%xmm2, %xmm8
	movapd	%xmm3, %xmm6
	movq	%rdx, %rsi
	jp	.L78
	jne	.L78
	movapd	%xmm2, %xmm0
	movl	%ebp, 8(%rcx)
	sarl	%ebp
	movl	%r12d, 12(%rcx)
	sarl	%r12d
	call	floor
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm6, %xmm0
	subl	%ebp, %eax
	movl	%eax, (%rbx)
	call	floor
	cvttsd2sil	%xmm0, %eax
	subl	%eax, %edi
	subl	%r12d, %edi
.L80:
	movl	%edi, 4(%rbx)
	movaps	32(%rsp), %xmm6
	movq	%rbx, %rax
	movaps	48(%rsp), %xmm7
	movaps	64(%rsp), %xmm8
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	mulsd	40(%rsi), %xmm7
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm7, %xmm0
	call	floor
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	movl	%r13d, 8(%rbx)
	mulsd	%xmm7, %xmm0
	call	floor
	cvttsd2sil	%xmm0, %ebp
	movsd	24(%rsi), %xmm0
	divsd	%xmm7, %xmm0
	movl	%ebp, 12(%rbx)
	addsd	8(%rsi), %xmm0
	subsd	%xmm0, %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm7, %xmm0
	call	floor
	movl	%r13d, %edx
	cvttsd2sil	%xmm0, %ecx
	movsd	32(%rsi), %xmm0
	sarl	%edx
	divsd	%xmm7, %xmm0
	subl	%edx, %ecx
	movl	%ecx, (%rbx)
	addsd	16(%rsi), %xmm0
	subsd	%xmm0, %xmm6
	mulsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm0
	call	floor
	cvttsd2sil	%xmm0, %eax
	subl	%eax, %edi
	movl	%ebp, %eax
	sarl	%eax
	subl	%eax, %edi
	jmp	.L80
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	floor;	.scl	2;	.type	32;	.endef
