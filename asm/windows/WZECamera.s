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
.LFB8432:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movq	.LC0(%rip), %rax
	movups	%xmm0, 8(%rcx)
	movups	%xmm0, 24(%rcx)
	movups	%xmm0, 40(%rcx)
	pxor	%xmm0, %xmm0
	movq	%rdx, (%rcx)
	movq	%rax, 56(%rcx)
	movups	%xmm0, 64(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.def	_ZN3wze6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOriginXEv
	.def	_ZN3wze6engine6camera10GetOriginXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10GetOriginXEv
_ZN3wze6engine6camera10GetOriginXEv:
.LFB8434:
	.seh_endprologue
	movsd	8(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "wze::engine.camera.SetOriginX(): OriginX must not be NaN\12Params: OriginX: %lf\12\0"
	.align 8
.LC4:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOriginXEd
	.def	_ZN3wze6engine6camera10SetOriginXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOriginXEd
_ZN3wze6engine6camera10SetOriginXEd:
.LFB8435:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L15
	movq	64(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L16
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	movq	(%rcx), %rax
	movq	272(%rax), %r8
	cmpq	264(%rax), %rdx
	jnb	.L17
	movq	(%r8,%rdx,8), %rax
	movapd	%xmm1, %xmm0
	subsd	224(%rax), %xmm0
	subsd	24(%rcx), %xmm0
	movsd	%xmm1, 8(%rcx)
	movsd	%xmm0, 32(%rcx)
	movapd	%xmm1, %xmm0
	addq	$40, %rsp
	ret
.L15:
	leaq	.LC3(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L17:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOriginYEv
	.def	_ZN3wze6engine6camera10GetOriginYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10GetOriginYEv
_ZN3wze6engine6camera10GetOriginYEv:
.LFB8436:
	.seh_endprologue
	movsd	16(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "wze::engine.camera.SetOriginY(): OriginY must not be NaN\12Params: OriginY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOriginYEd
	.def	_ZN3wze6engine6camera10SetOriginYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOriginYEd
_ZN3wze6engine6camera10SetOriginYEd:
.LFB8437:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L29
	movq	72(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L30
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L30:
	movq	(%rcx), %rax
	movq	272(%rax), %r8
	cmpq	264(%rax), %rdx
	jnb	.L31
	movq	(%r8,%rdx,8), %rax
	movapd	%xmm1, %xmm0
	subsd	232(%rax), %xmm0
	subsd	40(%rcx), %xmm0
	movsd	%xmm1, 16(%rcx)
	movsd	%xmm0, 48(%rcx)
	movapd	%xmm1, %xmm0
	addq	$40, %rsp
	ret
.L29:
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L31:
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetXEv
	.def	_ZN3wze6engine6camera10GetOffsetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10GetOffsetXEv
_ZN3wze6engine6camera10GetOffsetXEv:
.LFB8438:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\12Params: OffsetX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetXEd
	.def	_ZN3wze6engine6camera10SetOffsetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOffsetXEd
_ZN3wze6engine6camera10SetOffsetXEd:
.LFB8439:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L38
	movapd	%xmm1, %xmm0
	subsd	24(%rcx), %xmm0
	movsd	%xmm0, 32(%rcx)
	movapd	%xmm1, %xmm0
	addq	$40, %rsp
	ret
.L38:
	leaq	.LC6(%rip), %rcx
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
.LFB8440:
	.seh_endprologue
	movsd	48(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\12Params: OffsetY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetYEd
	.def	_ZN3wze6engine6camera10SetOffsetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOffsetYEd
_ZN3wze6engine6camera10SetOffsetYEd:
.LFB8441:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L45
	movapd	%xmm1, %xmm0
	subsd	40(%rcx), %xmm0
	movsd	%xmm0, 48(%rcx)
	movapd	%xmm1, %xmm0
	addq	$40, %rsp
	ret
.L45:
	leaq	.LC7(%rip), %rcx
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
.LFB8442:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be NaN\12Params: Zoom: %lf\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\12Params: Zoom: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.def	_ZN3wze6engine6camera7SetZoomEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7SetZoomEd
_ZN3wze6engine6camera7SetZoomEd:
.LFB8443:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L56
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L57
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 56(%rcx)
	addq	$40, %rsp
	ret
.L56:
	leaq	.LC8(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L57:
	leaq	.LC10(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.camera.Bind(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC12:
	.ascii "wze::engine.camera.Bind(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4BindEy
_ZN3wze6engine6camera4BindEy:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L63
	movq	(%rcx), %rdx
	cmpq	264(%rdx), %rax
	jnb	.L60
	movq	272(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L60
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	movq	%rax, %rdx
	jp	.L59
	je	.L66
.L59:
	movq	%rdx, 64(%rcx)
	movq	%rdx, 72(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	xorl	%edx, %edx
	movq	%rdx, 64(%rcx)
	movq	%rdx, 72(%rcx)
	addq	$40, %rsp
	ret
.L60:
	leaq	.LC11(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L66:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "wze::engine.camera.BindX(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.camera.BindX(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.def	_ZN3wze6engine6camera5BindXEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindXEy
_ZN3wze6engine6camera5BindXEy:
.LFB8445:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L72
	movq	(%rcx), %rdx
	cmpq	264(%rdx), %rax
	jnb	.L69
	movq	272(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L69
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	movq	%rax, %rdx
	jp	.L68
	jne	.L68
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L72:
	xorl	%edx, %edx
.L68:
	movq	%rdx, 64(%rcx)
	addq	$40, %rsp
	ret
.L69:
	leaq	.LC13(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.camera.BindY(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.camera.BindY(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.def	_ZN3wze6engine6camera5BindYEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindYEy
_ZN3wze6engine6camera5BindYEy:
.LFB8446:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L80
	movq	(%rcx), %rdx
	cmpq	264(%rdx), %rax
	jnb	.L77
	movq	272(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L77
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	movq	%rax, %rdx
	jp	.L76
	jne	.L76
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L80:
	xorl	%edx, %edx
.L76:
	movq	%rdx, 72(%rcx)
	addq	$40, %rsp
	ret
.L77:
	leaq	.LC15(%rip), %rcx
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
.LFB8447:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 64(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.def	_ZN3wze6engine6camera7UnbindXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindXEv
_ZN3wze6engine6camera7UnbindXEv:
.LFB8448:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 64(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.def	_ZN3wze6engine6camera7UnbindYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindYEv
_ZN3wze6engine6camera7UnbindYEv:
.LFB8449:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 72(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.def	_ZN3wze6engine6camera9GetXActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetXActorEv
_ZN3wze6engine6camera9GetXActorEv:
.LFB8450:
	.seh_endprologue
	movq	64(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.def	_ZN3wze6engine6camera9GetYActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetYActorEv
_ZN3wze6engine6camera9GetYActorEv:
.LFB8451:
	.seh_endprologue
	movq	72(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera6UpdateEv
_ZN3wze6engine6camera6UpdateEv:
.LFB8452:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	64(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L100
	movq	72(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L101
.L91:
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L100:
	movq	(%rcx), %rax
	movq	272(%rax), %r8
	cmpq	264(%rax), %rdx
	jnb	.L99
	movq	(%r8,%rdx,8), %rax
	movq	72(%rcx), %rdx
	movsd	224(%rax), %xmm0
	movsd	%xmm0, 8(%rcx)
	testq	%rdx, %rdx
	je	.L91
.L101:
	movq	(%rcx), %rax
	movq	272(%rax), %r8
	cmpq	264(%rax), %rdx
	jnb	.L99
	movq	(%r8,%rdx,8), %rax
	movsd	232(%rax), %xmm0
	xorl	%eax, %eax
	movsd	%xmm0, 16(%rcx)
	addq	$40, %rsp
	ret
.L99:
	leaq	.LC4(%rip), %rcx
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
.LFB8453:
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
	jp	.L103
	jne	.L103
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
.L105:
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
.L103:
	mulsd	56(%rsi), %xmm7
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
	movsd	32(%rsi), %xmm0
	divsd	%xmm7, %xmm0
	movl	%ebp, 12(%rbx)
	addsd	8(%rsi), %xmm0
	subsd	%xmm0, %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm7, %xmm0
	call	floor
	movl	%r13d, %edx
	cvttsd2sil	%xmm0, %ecx
	movsd	48(%rsi), %xmm0
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
	jmp	.L105
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
