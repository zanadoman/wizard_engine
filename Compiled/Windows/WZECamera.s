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
	pxor	%xmm1, %xmm1
	movq	.LC0(%rip), %rax
	pxor	%xmm0, %xmm0
	movsd	.LC4(%rip), %xmm2
	unpcklpd	%xmm2, %xmm2
	movups	%xmm1, 40(%rcx)
	movsd	.LC2(%rip), %xmm1
	movups	%xmm2, 88(%rcx)
	movsd	.LC6(%rip), %xmm2
	unpcklpd	%xmm1, %xmm1
	movq	%rdx, (%rcx)
	unpcklpd	%xmm2, %xmm2
	movb	$0, 8(%rcx)
	movq	%rax, 32(%rcx)
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, 56(%rcx)
	movups	%xmm1, 72(%rcx)
	movups	%xmm2, 104(%rcx)
	movups	%xmm2, 120(%rcx)
	movups	%xmm0, 136(%rcx)
	movups	%xmm1, 152(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.def	_ZN3wze6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetXEv
	.def	_ZN3wze6engine6camera10GetOffsetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10GetOffsetXEv
_ZN3wze6engine6camera10GetOffsetXEv:
.LFB8424:
	.seh_endprologue
	movsd	16(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\12Params: OffsetX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetXEd
	.def	_ZN3wze6engine6camera10SetOffsetXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOffsetXEd
_ZN3wze6engine6camera10SetOffsetXEd:
.LFB8425:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	jp	.L10
	movsd	%xmm1, 16(%rcx)
	addq	$40, %rsp
	ret
.L10:
	leaq	.LC9(%rip), %rcx
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
.LFB8426:
	.seh_endprologue
	movsd	24(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\12Params: OffsetY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetYEd
	.def	_ZN3wze6engine6camera10SetOffsetYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera10SetOffsetYEd
_ZN3wze6engine6camera10SetOffsetYEd:
.LFB8427:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	jp	.L17
	movsd	%xmm1, 24(%rcx)
	addq	$40, %rsp
	ret
.L17:
	leaq	.LC10(%rip), %rcx
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
.LFB8428:
	.seh_endprologue
	movsd	32(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be NaN\12Params: Zoom: %lf\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\12Params: Zoom: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.def	_ZN3wze6engine6camera7SetZoomEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7SetZoomEd
_ZN3wze6engine6camera7SetZoomEd:
.LFB8429:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L28
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L29
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 32(%rcx)
	addq	$40, %rsp
	ret
.L28:
	leaq	.LC11(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	leaq	.LC13(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.camera.Bind(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.camera.Bind(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4BindEy
_ZN3wze6engine6camera4BindEy:
.LFB8430:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L38
	movq	(%rcx), %rdx
	cmpq	352(%rdx), %rax
	jnb	.L33
	movq	360(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L33
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	jp	.L35
	je	.L39
.L35:
	movq	%rax, %xmm0
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, 40(%rcx)
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	pxor	%xmm0, %xmm0
	movups	%xmm0, 56(%rcx)
	addq	$40, %rsp
	ret
.L33:
	leaq	.LC14(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L39:
	leaq	.LC15(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.camera.BindX(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.camera.BindX(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.def	_ZN3wze6engine6camera5BindXEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindXEy
_ZN3wze6engine6camera5BindXEy:
.LFB8431:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L45
	movq	(%rcx), %rdx
	cmpq	352(%rdx), %rax
	jnb	.L42
	movq	360(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L42
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	movq	%rax, %rdx
	jp	.L41
	jne	.L41
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L45:
	xorl	%edx, %edx
.L41:
	movq	%rdx, 40(%rcx)
	addq	$40, %rsp
	ret
.L42:
	leaq	.LC16(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::engine.camera.BindY(): Actor does not exist\12Params: ActorID: %lld\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.camera.BindY(): Actor must not be in Layer 0\12Params: ActorID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.def	_ZN3wze6engine6camera5BindYEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindYEy
_ZN3wze6engine6camera5BindYEy:
.LFB8432:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %rax
	testq	%rdx, %rdx
	je	.L53
	movq	(%rcx), %rdx
	cmpq	352(%rdx), %rax
	jnb	.L50
	movq	360(%rdx), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L50
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	movq	%rax, %rdx
	jp	.L49
	jne	.L49
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L53:
	xorl	%edx, %edx
.L49:
	movq	%rdx, 48(%rcx)
	addq	$40, %rsp
	ret
.L50:
	leaq	.LC18(%rip), %rcx
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
.LFB8433:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 40(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.def	_ZN3wze6engine6camera7UnbindXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindXEv
_ZN3wze6engine6camera7UnbindXEv:
.LFB8434:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 40(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.def	_ZN3wze6engine6camera7UnbindYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindYEv
_ZN3wze6engine6camera7UnbindYEv:
.LFB8435:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 48(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.def	_ZN3wze6engine6camera9GetXActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetXActorEv
_ZN3wze6engine6camera9GetXActorEv:
.LFB8436:
	.seh_endprologue
	movq	40(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.def	_ZN3wze6engine6camera9GetYActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetYActorEv
_ZN3wze6engine6camera9GetYActorEv:
.LFB8437:
	.seh_endprologue
	movq	48(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetXEv
	.def	_ZN3wze6engine6camera4GetXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4GetXEv
_ZN3wze6engine6camera4GetXEv:
.LFB8438:
	.seh_endprologue
	movsd	56(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetYEv
	.def	_ZN3wze6engine6camera4GetYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4GetYEv
_ZN3wze6engine6camera4GetYEv:
.LFB8439:
	.seh_endprologue
	movsd	64(%rcx), %xmm0
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedXEv
	.def	_ZN3wze6engine6camera12GetMinSpeedXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12GetMinSpeedXEv
_ZN3wze6engine6camera12GetMinSpeedXEv:
.LFB8440:
	.seh_endprologue
	movsd	72(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be NaN\12Params: MinSpeedX: %lf\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be less than or equal to 0\12Params: MinSpeedX: %lf\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be greater than MaxSpeedX\12Params: MinSpeedX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedXEd
	.def	_ZN3wze6engine6camera12SetMinSpeedXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMinSpeedXEd
_ZN3wze6engine6camera12SetMinSpeedXEd:
.LFB8441:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L80
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L81
	comisd	88(%rcx), %xmm1
	ja	.L82
	movsd	152(%rcx), %xmm0
	ucomisd	72(%rcx), %xmm0
	jp	.L71
	jne	.L71
	movsd	%xmm1, 152(%rcx)
.L71:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 72(%rcx)
	addq	$40, %rsp
	ret
.L82:
	leaq	.LC22(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L81:
	leaq	.LC21(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L80:
	leaq	.LC20(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedYEv
	.def	_ZN3wze6engine6camera12GetMinSpeedYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12GetMinSpeedYEv
_ZN3wze6engine6camera12GetMinSpeedYEv:
.LFB8442:
	.seh_endprologue
	movsd	80(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be NaN\12Params: MinSpeedY: %lf\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be less than or equal to 0\12Params: MinSpeedY: %lf\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be greater than MaxSpeedY\12Params: MinSpeedY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedYEd
	.def	_ZN3wze6engine6camera12SetMinSpeedYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMinSpeedYEd
_ZN3wze6engine6camera12SetMinSpeedYEd:
.LFB8443:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L100
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L101
	comisd	96(%rcx), %xmm1
	ja	.L102
	movsd	160(%rcx), %xmm0
	ucomisd	80(%rcx), %xmm0
	jp	.L91
	jne	.L91
	movsd	%xmm1, 160(%rcx)
.L91:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 80(%rcx)
	addq	$40, %rsp
	ret
.L102:
	leaq	.LC25(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L101:
	leaq	.LC24(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L100:
	leaq	.LC23(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedXEv
	.def	_ZN3wze6engine6camera12GetMaxSpeedXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12GetMaxSpeedXEv
_ZN3wze6engine6camera12GetMaxSpeedXEv:
.LFB8444:
	.seh_endprologue
	movsd	88(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be NaN\12Params: MaxSpeedX: %lf\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than or equal to 0\12Params: MaxSpeedX: %lf\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than MinSpeedX\12Params: MaxSpeedX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedXEd
	.def	_ZN3wze6engine6camera12SetMaxSpeedXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMaxSpeedXEd
_ZN3wze6engine6camera12SetMaxSpeedXEd:
.LFB8445:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L120
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L121
	movsd	72(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L122
	movsd	152(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L111
	movsd	%xmm1, 152(%rcx)
.L111:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 88(%rcx)
	addq	$40, %rsp
	ret
.L122:
	leaq	.LC28(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L121:
	leaq	.LC27(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L120:
	leaq	.LC26(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedYEv
	.def	_ZN3wze6engine6camera12GetMaxSpeedYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12GetMaxSpeedYEv
_ZN3wze6engine6camera12GetMaxSpeedYEv:
.LFB8446:
	.seh_endprologue
	movsd	96(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC29:
	.ascii "wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be NaN\12Params: MaxSpeedY: %lf\12\0"
	.align 8
.LC30:
	.ascii "wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than or equal to 0\12Params: MaxSpeedY: %lf\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than MinSpeedY\12Params: MaxSpeedY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedYEd
	.def	_ZN3wze6engine6camera12SetMaxSpeedYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMaxSpeedYEd
_ZN3wze6engine6camera12SetMaxSpeedYEd:
.LFB8447:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L140
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L141
	movsd	80(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L142
	movsd	160(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L131
	movsd	%xmm1, 160(%rcx)
.L131:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 96(%rcx)
	addq	$40, %rsp
	ret
.L142:
	leaq	.LC31(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L141:
	leaq	.LC30(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L140:
	leaq	.LC29(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateXEv
	.def	_ZN3wze6engine6camera20GetDecelerationRateXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20GetDecelerationRateXEv
_ZN3wze6engine6camera20GetDecelerationRateXEv:
.LFB8448:
	.seh_endprologue
	movsd	104(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC32:
	.ascii "wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be NaN\12Params: DecelerationRateX: %lf\12\0"
	.align 8
.LC33:
	.ascii "wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be less than or equal to 0\12Params: DecelerationRateX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateXEd
	.def	_ZN3wze6engine6camera20SetDecelerationRateXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetDecelerationRateXEd
_ZN3wze6engine6camera20SetDecelerationRateXEd:
.LFB8449:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L153
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L154
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 104(%rcx)
	addq	$40, %rsp
	ret
.L153:
	leaq	.LC32(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L154:
	leaq	.LC33(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateYEv
	.def	_ZN3wze6engine6camera20GetDecelerationRateYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20GetDecelerationRateYEv
_ZN3wze6engine6camera20GetDecelerationRateYEv:
.LFB8450:
	.seh_endprologue
	movsd	112(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC34:
	.ascii "wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be NaN\12Params: DecelerationRateY: %lf\12\0"
	.align 8
.LC35:
	.ascii "wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be less than or equal to 0\12Params: DecelerationRateY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateYEd
	.def	_ZN3wze6engine6camera20SetDecelerationRateYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetDecelerationRateYEd
_ZN3wze6engine6camera20SetDecelerationRateYEd:
.LFB8451:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L165
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L166
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 112(%rcx)
	addq	$40, %rsp
	ret
.L165:
	leaq	.LC34(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L166:
	leaq	.LC35(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateXEv
	.def	_ZN3wze6engine6camera20GetAccelerationRateXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20GetAccelerationRateXEv
_ZN3wze6engine6camera20GetAccelerationRateXEv:
.LFB8452:
	.seh_endprologue
	movsd	120(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC36:
	.ascii "wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be NaN\12Params: AccelerationRateX: %lf\12\0"
	.align 8
.LC37:
	.ascii "wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be less than or equal to 0\12Params: AccelerationRateX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateXEd
	.def	_ZN3wze6engine6camera20SetAccelerationRateXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetAccelerationRateXEd
_ZN3wze6engine6camera20SetAccelerationRateXEd:
.LFB8453:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L177
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L178
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 120(%rcx)
	addq	$40, %rsp
	ret
.L177:
	leaq	.LC36(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L178:
	leaq	.LC37(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateYEv
	.def	_ZN3wze6engine6camera20GetAccelerationRateYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20GetAccelerationRateYEv
_ZN3wze6engine6camera20GetAccelerationRateYEv:
.LFB8454:
	.seh_endprologue
	movsd	128(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC38:
	.ascii "wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be NaN\12Params: AccelerationRateY: %lf\12\0"
	.align 8
.LC39:
	.ascii "wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be less than or equal to 0\12Params: AccelerationRateY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateYEd
	.def	_ZN3wze6engine6camera20SetAccelerationRateYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetAccelerationRateYEd
_ZN3wze6engine6camera20SetAccelerationRateYEd:
.LFB8455:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L189
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L190
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 128(%rcx)
	addq	$40, %rsp
	ret
.L189:
	leaq	.LC38(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L190:
	leaq	.LC39(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeXEv
	.def	_ZN3wze6engine6camera17GetSlowDownRangeXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera17GetSlowDownRangeXEv
_ZN3wze6engine6camera17GetSlowDownRangeXEv:
.LFB8456:
	.seh_endprologue
	movsd	136(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC40:
	.ascii "wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be NaN\12Params: SlowDownRangeX: %lf\12\0"
	.align 8
.LC41:
	.ascii "wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be less than 0\12Params: SlowDownRangeX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.def	_ZN3wze6engine6camera17SetSlowDownRangeXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera17SetSlowDownRangeXEd
_ZN3wze6engine6camera17SetSlowDownRangeXEd:
.LFB8457:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L201
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L202
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 136(%rcx)
	addq	$40, %rsp
	ret
.L201:
	leaq	.LC40(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L202:
	leaq	.LC41(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeYEv
	.def	_ZN3wze6engine6camera17GetSlowDownRangeYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera17GetSlowDownRangeYEv
_ZN3wze6engine6camera17GetSlowDownRangeYEv:
.LFB8458:
	.seh_endprologue
	movsd	144(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC42:
	.ascii "wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be NaN\12Params: SlowDownRangeY: %lf\12\0"
	.align 8
.LC43:
	.ascii "wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be less than 0\12Params: SlowDownRangeY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.def	_ZN3wze6engine6camera17SetSlowDownRangeYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera17SetSlowDownRangeYEd
_ZN3wze6engine6camera17SetSlowDownRangeYEd:
.LFB8459:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L213
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L214
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 144(%rcx)
	addq	$40, %rsp
	ret
.L213:
	leaq	.LC42(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L214:
	leaq	.LC43(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC44:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera6UpdateEv
_ZN3wze6engine6camera6UpdateEv:
.LFB8460:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	cmpb	$0, 8(%rcx)
	movq	40(%rcx), %rax
	movq	%rcx, %rbx
	jne	.L216
	testq	%rax, %rax
	je	.L362
	movq	(%rcx), %rcx
	pxor	%xmm6, %xmm6
.L217:
	movq	360(%rcx), %rdx
	cmpq	352(%rcx), %rax
	jnb	.L351
	movq	(%rdx,%rax,8), %rax
	movq	48(%rbx), %rdx
	movsd	216(%rax), %xmm0
	movsd	%xmm0, 56(%rbx)
.L246:
	testq	%rdx, %rdx
	je	.L307
	ucomisd	%xmm6, %xmm6
	movq	(%rbx), %r10
	movq	352(%r10), %r9
	movq	360(%r10), %r8
	jnp	.L363
.L260:
	cmpq	%r9, %rdx
	jnb	.L350
	movq	(%r8,%rdx,8), %rax
	movsd	224(%rax), %xmm0
	movsd	%xmm0, 64(%rbx)
.L307:
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L362:
	movq	48(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L307
	movq	(%rcx), %rax
	movq	352(%rax), %r9
	movq	360(%rax), %r8
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L216:
	movsd	56(%rcx), %xmm1
	movq	(%rcx), %rcx
	movq	352(%rcx), %r9
	movq	360(%rcx), %r8
	movq	%rcx, %r10
	cmpq	%r9, %rax
	jnb	.L351
	movq	(%r8,%rax,8), %rdx
	movsd	216(%rdx), %xmm3
	ucomisd	%xmm3, %xmm1
	jp	.L220
	jne	.L220
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, 152(%rbx)
.L220:
	movq	48(%rbx), %rdx
	movsd	64(%rbx), %xmm0
	cmpq	%r9, %rdx
	jnb	.L350
	movq	(%r8,%rdx,8), %r11
	movsd	224(%r11), %xmm2
	ucomisd	%xmm2, %xmm0
	jp	.L227
	jne	.L227
	ucomisd	%xmm3, %xmm1
	movsd	80(%rbx), %xmm4
	movsd	%xmm4, 160(%rbx)
	jp	.L227
	jne	.L227
	testq	%rax, %rax
	jne	.L364
	testq	%rdx, %rdx
	je	.L307
	movq	352(%rcx), %r9
	movq	360(%rcx), %r8
	movq	%rcx, %r10
	pxor	%xmm6, %xmm6
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L227:
	movsd	%xmm2, 32(%rsp)
	addq	$400, %rcx
	movapd	%xmm0, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	40(%rbx), %rax
	movapd	%xmm0, %xmm6
	testq	%rax, %rax
	je	.L365
	movq	(%rbx), %rcx
	cmpb	$0, 8(%rbx)
	movq	352(%rcx), %r9
	movq	360(%rcx), %r8
	movq	%rcx, %r10
	je	.L217
	ucomisd	%xmm0, %xmm0
	jp	.L217
	movsd	56(%rbx), %xmm1
	cmpq	%r9, %rax
	jnb	.L351
.L231:
	movq	(%r8,%rax,8), %rax
	movsd	216(%rax), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L340
	movl	540(%rcx), %eax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	addq	$400, %rcx
	cvtsi2sdq	%rax, %xmm2
	mulsd	152(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	(%rbx), %rcx
	movq	40(%rbx), %rax
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 56(%rbx)
	movq	352(%rcx), %r8
	movq	360(%rcx), %r9
	cmpq	%r8, %rax
	jnb	.L351
	movq	(%r9,%rax,8), %rdx
	movsd	216(%rdx), %xmm3
	comisd	%xmm3, %xmm0
	ja	.L346
.L237:
	movsd	152(%rbx), %xmm0
	comisd	72(%rbx), %xmm0
	movq	48(%rbx), %rdx
	ja	.L366
.L247:
	movsd	88(%rbx), %xmm2
	comisd	%xmm0, %xmm2
	jbe	.L367
	movq	(%rbx), %r10
	pxor	%xmm1, %xmm1
	movl	540(%r10), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	120(%rbx), %xmm1
	addsd	%xmm1, %xmm0
	comisd	%xmm2, %xmm0
	movsd	%xmm0, 152(%rbx)
	jbe	.L360
	movsd	%xmm2, 152(%rbx)
.L360:
	testq	%rdx, %rdx
	je	.L307
.L357:
	cmpb	$0, 8(%rbx)
	movq	352(%r10), %r9
	movq	360(%r10), %r8
	je	.L260
.L347:
	movsd	64(%rbx), %xmm0
.L259:
	cmpq	%r9, %rdx
	jnb	.L350
	movq	(%r8,%rdx,8), %rax
	movsd	224(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L343
	movl	540(%r10), %eax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	movapd	%xmm0, %xmm1
	leaq	400(%r10), %rcx
	cvtsi2sdq	%rax, %xmm2
	mulsd	160(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	(%rbx), %rcx
	movq	48(%rbx), %r8
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 64(%rbx)
	movq	352(%rcx), %rax
	movq	360(%rcx), %rdx
	cmpq	%rax, %r8
	jnb	.L288
	movq	(%rdx,%r8,8), %r8
	movsd	224(%r8), %xmm1
	comisd	%xmm1, %xmm0
	ja	.L348
.L272:
	movsd	160(%rbx), %xmm0
	comisd	80(%rbx), %xmm0
	ja	.L368
.L291:
	movsd	96(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L307
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	540(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	128(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rbx)
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L363:
	cmpb	$0, 8(%rbx)
	je	.L260
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L365:
	movq	48(%rbx), %rdx
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L343:
	comisd	%xmm1, %xmm0
	jbe	.L307
	movl	540(%r10), %eax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	movapd	%xmm0, %xmm1
	leaq	400(%r10), %rcx
	cvtsi2sdq	%rax, %xmm2
	mulsd	160(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	(%rbx), %rcx
	movq	48(%rbx), %r8
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 64(%rbx)
	movq	352(%rcx), %rax
	movq	360(%rcx), %rdx
	cmpq	%rax, %r8
	jnb	.L288
	movq	(%rdx,%r8,8), %r8
	movsd	224(%r8), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L272
.L348:
	movsd	%xmm1, 64(%rbx)
	movapd	%xmm1, %xmm2
	jmp	.L272
	.p2align 4,,10
	.p2align 3
.L368:
	movq	40(%rbx), %r8
	addq	$400, %rcx
	cmpq	%rax, %r8
	jnb	.L288
	movq	(%rdx,%r8,8), %rax
	movsd	216(%rax), %xmm3
	movsd	%xmm1, 32(%rsp)
	movsd	56(%rbx), %xmm1
	call	_ZN3wze6engine6vector6LengthEdddd
	movsd	144(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L280
	movsd	160(%rbx), %xmm0
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L340:
	comisd	%xmm0, %xmm1
	ja	.L369
	movq	48(%rbx), %rdx
	testq	%rdx, %rdx
	je	.L307
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L367:
	testq	%rdx, %rdx
	je	.L307
	movq	(%rbx), %r10
	jmp	.L357
	.p2align 4,,10
	.p2align 3
.L369:
	movl	540(%rcx), %eax
	pxor	%xmm2, %xmm2
	movapd	%xmm6, %xmm3
	addq	$400, %rcx
	cvtsi2sdq	%rax, %xmm2
	mulsd	152(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	(%rbx), %rcx
	movq	40(%rbx), %rax
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 56(%rbx)
	movq	352(%rcx), %r8
	movq	360(%rcx), %r9
	cmpq	%r8, %rax
	jnb	.L351
	movq	(%r9,%rax,8), %rdx
	movsd	216(%rdx), %xmm3
	comisd	%xmm0, %xmm3
	jbe	.L237
.L346:
	movsd	%xmm3, 56(%rbx)
	movapd	%xmm3, %xmm1
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L366:
	addq	$400, %rcx
	cmpq	%r8, %rdx
	jnb	.L350
	movq	(%r9,%rdx,8), %rdx
	movsd	224(%rdx), %xmm0
	cmpq	%r8, %rax
	jnb	.L351
	movsd	%xmm0, 32(%rsp)
	movsd	64(%rbx), %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd
	movsd	136(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L251
	movsd	152(%rbx), %xmm0
	movq	48(%rbx), %rdx
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L280:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movsd	160(%rbx), %xmm1
	movl	540(%rax), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	112(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	movsd	80(%rbx), %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 160(%rbx)
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L251:
	movq	(%rbx), %r10
	pxor	%xmm1, %xmm1
	movsd	152(%rbx), %xmm0
	movq	48(%rbx), %rdx
	movl	540(%r10), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	104(%rbx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	72(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	movsd	%xmm0, 152(%rbx)
	jbe	.L360
	movsd	%xmm1, 152(%rbx)
	testq	%rdx, %rdx
	je	.L307
	jmp	.L357
.L364:
	pxor	%xmm6, %xmm6
	jmp	.L231
.L288:
	movq	%r8, %rdx
.L350:
	leaq	.LC44(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L351:
	leaq	.LC44(%rip), %rcx
	movq	%rax, %rdx
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
.LFB8461:
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
	jp	.L371
	jne	.L371
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
.L373:
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
.L371:
	mulsd	32(%rsi), %xmm7
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
	movsd	16(%rsi), %xmm0
	divsd	%xmm7, %xmm0
	movl	%ebp, 12(%rbx)
	addsd	56(%rsi), %xmm0
	subsd	%xmm0, %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm7, %xmm0
	call	floor
	movl	%r13d, %edx
	cvttsd2sil	%xmm0, %ecx
	movsd	24(%rsi), %xmm0
	sarl	%edx
	divsd	%xmm7, %xmm0
	subl	%edx, %ecx
	movl	%ecx, (%rbx)
	addsd	64(%rsi), %xmm0
	subsd	%xmm0, %xmm6
	mulsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm0
	call	floor
	cvttsd2sil	%xmm0, %eax
	subl	%eax, %edi
	movl	%ebp, %eax
	sarl	%eax
	subl	%eax, %edi
	jmp	.L373
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1070596096
	.align 8
.LC4:
	.long	0
	.long	1072168960
	.align 8
.LC6:
	.long	-755914244
	.long	1062232653
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	floor;	.scl	2;	.type	32;	.endef
