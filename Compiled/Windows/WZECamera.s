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
.LFB8433:
	.seh_endprologue
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	.LC2(%rip), %rax
	movups	%xmm1, 32(%rcx)
	movapd	.LC0(%rip), %xmm1
	movups	%xmm0, 8(%rcx)
	movups	%xmm1, 64(%rcx)
	movapd	.LC1(%rip), %xmm1
	movups	%xmm0, 48(%rcx)
	movups	%xmm1, 80(%rcx)
	movsd	.LC4(%rip), %xmm1
	movups	%xmm0, 136(%rcx)
	movsd	.LC6(%rip), %xmm0
	unpcklpd	%xmm1, %xmm1
	movq	%rdx, (%rcx)
	unpcklpd	%xmm0, %xmm0
	movb	$0, 24(%rcx)
	movq	%rax, 96(%rcx)
	movups	%xmm1, 120(%rcx)
	movups	%xmm0, 152(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.def	_ZN3wze6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7GetZoomEv
	.def	_ZN3wze6engine6camera7GetZoomEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7GetZoomEv
_ZN3wze6engine6camera7GetZoomEv:
.LFB8435:
	.seh_endprologue
	movsd	64(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be NaN\12Params: Zoom: %lf\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\12Params: Zoom: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.def	_ZN3wze6engine6camera7SetZoomEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7SetZoomEd
_ZN3wze6engine6camera7SetZoomEd:
.LFB8436:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L14
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L15
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 64(%rcx)
	addq	$40, %rsp
	ret
.L14:
	leaq	.LC9(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L15:
	leaq	.LC11(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.def	_ZN3wze6engine6camera9GetXActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetXActorEv
_ZN3wze6engine6camera9GetXActorEv:
.LFB8437:
	.seh_endprologue
	movq	32(%rcx), %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.def	_ZN3wze6engine6camera9GetYActorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera9GetYActorEv
_ZN3wze6engine6camera9GetYActorEv:
.LFB8438:
	.seh_endprologue
	movq	40(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.camera.Bind(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.camera.Bind(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC14:
	.ascii "wze::engine.camera.Bind(): Actor must not be in Layer 0\12Params: Actor: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera4BindEy
_ZN3wze6engine6camera4BindEy:
.LFB8439:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rdx, %xmm0
	punpcklqdq	%xmm0, %xmm0
	testq	%rdx, %rdx
	je	.L25
	movq	(%rcx), %rax
	cmpq	640(%rax), %rdx
	jnb	.L20
	movq	648(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L20
	pxor	%xmm1, %xmm1
	ucomisd	256(%rax), %xmm1
	jp	.L22
	je	.L26
.L22:
	xorl	%eax, %eax
	movups	%xmm0, 32(%rcx)
	addq	$40, %rsp
	ret
.L20:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L25:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L26:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.camera.BindX(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.camera.BindX(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.camera.BindX(): Actor must not be in Layer 0\12Params: Actor: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.def	_ZN3wze6engine6camera5BindXEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindXEy
_ZN3wze6engine6camera5BindXEy:
.LFB8440:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L34
	movq	(%rcx), %rax
	cmpq	640(%rax), %rdx
	jnb	.L29
	movq	648(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L29
	pxor	%xmm0, %xmm0
	ucomisd	256(%rax), %xmm0
	jp	.L31
	je	.L35
.L31:
	xorl	%eax, %eax
	movq	%rdx, 32(%rcx)
	addq	$40, %rsp
	ret
.L29:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L34:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L35:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::engine.camera.BindY(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.camera.BindY(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC20:
	.ascii "wze::engine.camera.BindY(): Actor must not be in Layer 0\12Params: Actor: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.def	_ZN3wze6engine6camera5BindYEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera5BindYEy
_ZN3wze6engine6camera5BindYEy:
.LFB8441:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L43
	movq	(%rcx), %rax
	cmpq	640(%rax), %rdx
	jnb	.L38
	movq	648(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L38
	pxor	%xmm0, %xmm0
	ucomisd	256(%rax), %xmm0
	jp	.L40
	je	.L44
.L40:
	xorl	%eax, %eax
	movq	%rdx, 40(%rcx)
	addq	$40, %rsp
	ret
.L38:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L43:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L44:
	leaq	.LC20(%rip), %rcx
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
.LFB8442:
	.seh_endprologue
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 32(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.def	_ZN3wze6engine6camera7UnbindXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindXEv
_ZN3wze6engine6camera7UnbindXEv:
.LFB8443:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 32(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.def	_ZN3wze6engine6camera7UnbindYEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera7UnbindYEv
_ZN3wze6engine6camera7UnbindYEv:
.LFB8444:
	.seh_endprologue
	xorl	%eax, %eax
	movq	$0, 40(%rcx)
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedXEv
	.def	_ZN3wze6engine6camera12GetMinSpeedXEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12GetMinSpeedXEv
_ZN3wze6engine6camera12GetMinSpeedXEv:
.LFB8445:
	.seh_endprologue
	movsd	72(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be NaN\12Params: MinSpeedX: %lf\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be less than or equal to 0\12Params: MinSpeedX: %lf\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be greater than MaxSpeedX\12Params: MinSpeedX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedXEd
	.def	_ZN3wze6engine6camera12SetMinSpeedXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMinSpeedXEd
_ZN3wze6engine6camera12SetMinSpeedXEd:
.LFB8446:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L65
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L66
	comisd	88(%rcx), %xmm1
	ja	.L67
	movsd	152(%rcx), %xmm0
	ucomisd	72(%rcx), %xmm0
	jp	.L56
	jne	.L56
	movsd	%xmm1, 152(%rcx)
.L56:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 72(%rcx)
	addq	$40, %rsp
	ret
.L67:
	leaq	.LC23(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L66:
	leaq	.LC22(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L65:
	leaq	.LC21(%rip), %rcx
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
.LFB8447:
	.seh_endprologue
	movsd	80(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be NaN\12Params: MinSpeedY: %lf\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be less than or equal to 0\12Params: MinSpeedY: %lf\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be greater than MaxSpeedY\12Params: MinSpeedY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedYEd
	.def	_ZN3wze6engine6camera12SetMinSpeedYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMinSpeedYEd
_ZN3wze6engine6camera12SetMinSpeedYEd:
.LFB8448:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L85
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L86
	comisd	96(%rcx), %xmm1
	ja	.L87
	movsd	160(%rcx), %xmm0
	ucomisd	80(%rcx), %xmm0
	jp	.L76
	jne	.L76
	movsd	%xmm1, 160(%rcx)
.L76:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 80(%rcx)
	addq	$40, %rsp
	ret
.L87:
	leaq	.LC26(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L86:
	leaq	.LC25(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L85:
	leaq	.LC24(%rip), %rcx
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
.LFB8449:
	.seh_endprologue
	movsd	88(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be NaN\12Params: MaxSpeedX: %lf\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than or equal to 0\12Params: MaxSpeedX: %lf\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than MinSpeedX\12Params: MaxSpeedX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedXEd
	.def	_ZN3wze6engine6camera12SetMaxSpeedXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMaxSpeedXEd
_ZN3wze6engine6camera12SetMaxSpeedXEd:
.LFB8450:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L105
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L106
	movsd	72(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L107
	movsd	152(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L96
	movsd	%xmm1, 152(%rcx)
.L96:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 88(%rcx)
	addq	$40, %rsp
	ret
.L107:
	leaq	.LC29(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L106:
	leaq	.LC28(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L105:
	leaq	.LC27(%rip), %rcx
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
.LFB8451:
	.seh_endprologue
	movsd	96(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be NaN\12Params: MaxSpeedY: %lf\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than or equal to 0\12Params: MaxSpeedY: %lf\12\0"
	.align 8
.LC32:
	.ascii "wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than MinSpeedY\12Params: MaxSpeedY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedYEd
	.def	_ZN3wze6engine6camera12SetMaxSpeedYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera12SetMaxSpeedYEd
_ZN3wze6engine6camera12SetMaxSpeedYEd:
.LFB8452:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L125
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L126
	movsd	80(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L127
	movsd	160(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L116
	movsd	%xmm1, 160(%rcx)
.L116:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 96(%rcx)
	addq	$40, %rsp
	ret
.L127:
	leaq	.LC32(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L126:
	leaq	.LC31(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L125:
	leaq	.LC30(%rip), %rcx
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
.LFB8453:
	.seh_endprologue
	movsd	104(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be NaN\12Params: DecelerationRateX: %lf\12\0"
	.align 8
.LC34:
	.ascii "wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be less than or equal to 0\12Params: DecelerationRateX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateXEd
	.def	_ZN3wze6engine6camera20SetDecelerationRateXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetDecelerationRateXEd
_ZN3wze6engine6camera20SetDecelerationRateXEd:
.LFB8454:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L138
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L139
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 104(%rcx)
	addq	$40, %rsp
	ret
.L138:
	leaq	.LC33(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L139:
	leaq	.LC34(%rip), %rcx
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
.LFB8455:
	.seh_endprologue
	movsd	112(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC35:
	.ascii "wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be NaN\12Params: DecelerationRateY: %lf\12\0"
	.align 8
.LC36:
	.ascii "wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be less than or equal to 0\12Params: DecelerationRateY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateYEd
	.def	_ZN3wze6engine6camera20SetDecelerationRateYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetDecelerationRateYEd
_ZN3wze6engine6camera20SetDecelerationRateYEd:
.LFB8456:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L150
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L151
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 112(%rcx)
	addq	$40, %rsp
	ret
.L150:
	leaq	.LC35(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L151:
	leaq	.LC36(%rip), %rcx
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
.LFB8457:
	.seh_endprologue
	movsd	120(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC37:
	.ascii "wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be NaN\12Params: AccelerationRateX: %lf\12\0"
	.align 8
.LC38:
	.ascii "wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be less than or equal to 0\12Params: AccelerationRateX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateXEd
	.def	_ZN3wze6engine6camera20SetAccelerationRateXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetAccelerationRateXEd
_ZN3wze6engine6camera20SetAccelerationRateXEd:
.LFB8458:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L162
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L163
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 120(%rcx)
	addq	$40, %rsp
	ret
.L162:
	leaq	.LC37(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L163:
	leaq	.LC38(%rip), %rcx
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
.LFB8459:
	.seh_endprologue
	movsd	128(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC39:
	.ascii "wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be NaN\12Params: AccelerationRateY: %lf\12\0"
	.align 8
.LC40:
	.ascii "wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be less than or equal to 0\12Params: AccelerationRateY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateYEd
	.def	_ZN3wze6engine6camera20SetAccelerationRateYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera20SetAccelerationRateYEd
_ZN3wze6engine6camera20SetAccelerationRateYEd:
.LFB8460:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L174
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L175
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 128(%rcx)
	addq	$40, %rsp
	ret
.L174:
	leaq	.LC39(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L175:
	leaq	.LC40(%rip), %rcx
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
.LFB8461:
	.seh_endprologue
	movsd	136(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC41:
	.ascii "wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be NaN\12Params: SlowDownRangeX: %lf\12\0"
	.align 8
.LC42:
	.ascii "wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be less than 0\12Params: SlowDownRangeX: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.def	_ZN3wze6engine6camera17SetSlowDownRangeXEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera17SetSlowDownRangeXEd
_ZN3wze6engine6camera17SetSlowDownRangeXEd:
.LFB8462:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L186
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L187
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 136(%rcx)
	addq	$40, %rsp
	ret
.L186:
	leaq	.LC41(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L187:
	leaq	.LC42(%rip), %rcx
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
.LFB8463:
	.seh_endprologue
	movsd	144(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC43:
	.ascii "wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be NaN\12Params: SlowDownRangeY: %lf\12\0"
	.align 8
.LC44:
	.ascii "wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be less than 0\12Params: SlowDownRangeY: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.def	_ZN3wze6engine6camera17SetSlowDownRangeYEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera17SetSlowDownRangeYEd
_ZN3wze6engine6camera17SetSlowDownRangeYEd:
.LFB8464:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L198
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L199
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 144(%rcx)
	addq	$40, %rsp
	ret
.L198:
	leaq	.LC43(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L199:
	leaq	.LC44(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC45:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera6UpdateEv
_ZN3wze6engine6camera6UpdateEv:
.LFB8465:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	movzbl	24(%rcx), %edi
	movq	32(%rcx), %rax
	movq	%rcx, %rbx
	testb	%dil, %dil
	jne	.L201
	testq	%rax, %rax
	je	.L311
	movq	(%rcx), %rsi
.L202:
	movq	640(%rsi), %r8
	movq	648(%rsi), %rcx
	cmpq	%r8, %rax
	jnb	.L319
	movq	(%rcx,%rax,8), %rax
	movq	40(%rbx), %rdx
	movsd	208(%rax), %xmm0
	movsd	%xmm0, 48(%rbx)
	testq	%rdx, %rdx
	je	.L294
	xorl	%edi, %edi
.L219:
	cmpq	%r8, %rdx
	jnb	.L318
	movq	(%rcx,%rdx,8), %rax
	movsd	216(%rax), %xmm0
	movsd	%xmm0, 56(%rbx)
.L249:
	testb	%dil, %dil
	je	.L294
.L229:
	movsd	152(%rbx), %xmm0
	comisd	72(%rbx), %xmm0
	ja	.L324
.L256:
	movsd	88(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L262
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	804(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	120(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 152(%rbx)
.L262:
	movsd	160(%rbx), %xmm0
	comisd	80(%rbx), %xmm0
	ja	.L325
.L268:
	movsd	96(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L294
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	804(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	128(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rbx)
.L294:
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L311:
	movq	40(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L294
	movq	(%rcx), %rsi
	movq	640(%rsi), %r8
	movq	648(%rsi), %rcx
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L201:
	movq	(%rcx), %rsi
	movsd	48(%rcx), %xmm1
	movq	640(%rsi), %r8
	movq	648(%rsi), %rcx
	cmpq	%r8, %rax
	jnb	.L319
	movq	(%rcx,%rax,8), %rdx
	movsd	208(%rdx), %xmm3
	ucomisd	%xmm3, %xmm1
	jp	.L205
	jne	.L205
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, 152(%rbx)
.L205:
	movq	40(%rbx), %rdx
	movsd	56(%rbx), %xmm2
	cmpq	%r8, %rdx
	jnb	.L318
	movq	(%rcx,%rdx,8), %r9
	movsd	216(%r9), %xmm0
	ucomisd	%xmm0, %xmm2
	jp	.L212
	jne	.L212
	ucomisd	%xmm3, %xmm1
	movsd	80(%rbx), %xmm4
	movsd	%xmm4, 160(%rbx)
	jp	.L212
	jne	.L212
	pxor	%xmm6, %xmm6
	testq	%rax, %rax
	jne	.L221
.L278:
	testq	%rdx, %rdx
	je	.L294
	ucomisd	%xmm6, %xmm6
	movq	(%rbx), %rsi
	movq	640(%rsi), %r8
	movq	648(%rsi), %rcx
	setnp	%dil
	andb	24(%rbx), %dil
	je	.L219
.L280:
	xorl	%edi, %edi
.L218:
	movsd	56(%rbx), %xmm1
	cmpq	%r8, %rdx
	jnb	.L318
	movq	(%rcx,%rdx,8), %rax
	movsd	216(%rax), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L314
	movl	804(%rsi), %eax
	pxor	%xmm2, %xmm2
	leaq	688(%rsi), %rcx
	movapd	%xmm6, %xmm3
	cvtsi2sdq	%rax, %xmm2
	mulsd	160(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	(%rbx), %rsi
	movq	40(%rbx), %rdx
	movsd	%xmm0, 56(%rbx)
	movq	648(%rsi), %rax
	cmpq	640(%rsi), %rdx
	jnb	.L318
	movq	(%rax,%rdx,8), %rax
	movsd	216(%rax), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L229
.L316:
	movsd	%xmm1, 56(%rbx)
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L212:
	leaq	688(%rsi), %rcx
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	32(%rbx), %rax
	movapd	%xmm0, %xmm6
	testq	%rax, %rax
	je	.L326
	movq	(%rbx), %rsi
	cmpb	$0, 24(%rbx)
	movq	640(%rsi), %r8
	movq	648(%rsi), %rcx
	je	.L202
	ucomisd	%xmm0, %xmm0
	jp	.L202
	movsd	48(%rbx), %xmm1
	cmpq	%r8, %rax
	jb	.L221
.L319:
	leaq	.LC45(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L326:
	movq	40(%rbx), %rdx
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L325:
	movq	(%rbx), %rsi
	movq	40(%rbx), %rdx
	leaq	632(%rsi), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	(%rbx), %rax
	movq	32(%rbx), %rdx
	movapd	%xmm0, %xmm6
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	%xmm6, 32(%rsp)
	movsd	48(%rbx), %xmm1
	movsd	56(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	leaq	688(%rsi), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movsd	144(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L270
	movsd	160(%rbx), %xmm0
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L324:
	leaq	632(%rsi), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	(%rbx), %rax
	movq	32(%rbx), %rdx
	movapd	%xmm0, %xmm6
	leaq	632(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movsd	%xmm6, 32(%rsp)
	movsd	48(%rbx), %xmm1
	movsd	56(%rbx), %xmm2
	movapd	%xmm0, %xmm3
	leaq	688(%rsi), %rcx
	call	_ZN3wze6engine6vector6LengthEdddd
	movsd	136(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L258
	movsd	152(%rbx), %xmm0
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L221:
	movq	(%rcx,%rax,8), %rax
	movsd	208(%rax), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L313
	movl	804(%rsi), %eax
	pxor	%xmm2, %xmm2
	leaq	688(%rsi), %rcx
	movapd	%xmm6, %xmm3
	cvtsi2sdq	%rax, %xmm2
	mulsd	152(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	(%rbx), %rsi
	movq	32(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movq	640(%rsi), %r8
	movq	648(%rsi), %rcx
	cmpq	%r8, %rdx
	jnb	.L318
	movq	(%rcx,%rdx,8), %rax
	movq	40(%rbx), %rdx
	movsd	208(%rax), %xmm1
	comisd	%xmm1, %xmm0
	ja	.L238
.L321:
	testq	%rdx, %rdx
	je	.L229
	cmpb	$0, 24(%rbx)
	jne	.L218
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L270:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movsd	160(%rbx), %xmm1
	movl	804(%rax), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	112(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	movsd	80(%rbx), %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 160(%rbx)
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L258:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movsd	152(%rbx), %xmm1
	movl	804(%rax), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	104(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	movsd	72(%rbx), %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 152(%rbx)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L313:
	comisd	%xmm0, %xmm1
	ja	.L233
	movq	40(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L280
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L314:
	comisd	%xmm0, %xmm1
	jbe	.L249
	movl	804(%rsi), %eax
	pxor	%xmm2, %xmm2
	leaq	688(%rsi), %rcx
	movapd	%xmm6, %xmm3
	cvtsi2sdq	%rax, %xmm2
	mulsd	160(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	(%rbx), %rsi
	movq	40(%rbx), %rdx
	movsd	%xmm0, 56(%rbx)
	movq	648(%rsi), %rax
	cmpq	640(%rsi), %rdx
	jnb	.L318
	movq	(%rax,%rdx,8), %rax
	movsd	216(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L229
	jmp	.L316
	.p2align 4,,10
	.p2align 3
.L233:
	movl	804(%rsi), %eax
	pxor	%xmm2, %xmm2
	leaq	688(%rsi), %rcx
	movapd	%xmm6, %xmm3
	cvtsi2sdq	%rax, %xmm2
	mulsd	152(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	(%rbx), %rsi
	movq	32(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movq	640(%rsi), %r8
	movq	648(%rsi), %rcx
	cmpq	%r8, %rdx
	jnb	.L318
	movq	(%rcx,%rdx,8), %rax
	movq	40(%rbx), %rdx
	movsd	208(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L321
.L238:
	movsd	%xmm1, 48(%rbx)
	jmp	.L321
.L318:
	leaq	.LC45(%rip), %rcx
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
.LFB8466:
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
	jp	.L328
	jne	.L328
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
.L330:
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
.L328:
	mulsd	64(%rsi), %xmm7
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
	movsd	8(%rsi), %xmm0
	divsd	%xmm7, %xmm0
	movl	%ebp, 12(%rbx)
	addsd	48(%rsi), %xmm0
	subsd	%xmm0, %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm7, %xmm0
	call	floor
	movl	%r13d, %edx
	cvttsd2sil	%xmm0, %ecx
	movsd	16(%rsi), %xmm0
	sarl	%edx
	divsd	%xmm7, %xmm0
	subl	%edx, %ecx
	movl	%ecx, (%rbx)
	addsd	56(%rsi), %xmm0
	subsd	%xmm0, %xmm6
	mulsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm0
	call	floor
	cvttsd2sil	%xmm0, %eax
	subl	%eax, %edi
	movl	%ebp, %eax
	sarl	%eax
	subl	%eax, %edi
	jmp	.L330
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	0
	.long	1072693248
	.long	0
	.long	1070596096
	.align 16
.LC1:
	.long	0
	.long	1070596096
	.long	0
	.long	1072168960
	.set	.LC2,.LC1+8
	.align 8
.LC4:
	.long	-755914244
	.long	1062232653
	.set	.LC6,.LC0+8
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector6LengthEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	floor;	.scl	2;	.type	32;	.endef
