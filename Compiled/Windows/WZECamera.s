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
	pxor	%xmm0, %xmm0
	movq	.LC1(%rip), %rax
	pxor	%xmm1, %xmm1
	movups	%xmm0, 8(%rcx)
	movups	%xmm0, 48(%rcx)
	movsd	.LC1(%rip), %xmm0
	movq	%rdx, (%rcx)
	unpcklpd	%xmm0, %xmm0
	movb	$0, 24(%rcx)
	movq	%rax, 96(%rcx)
	movups	%xmm1, 32(%rcx)
	movups	%xmm0, 64(%rcx)
	movups	%xmm0, 80(%rcx)
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
.LC5:
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
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L10
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 64(%rcx)
	addq	$40, %rsp
	ret
.L10:
	leaq	.LC5(%rip), %rcx
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
.LC6:
	.ascii "wze::engine.camera.Bind(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.camera.Bind(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC8:
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
	je	.L20
	movq	(%rcx), %rax
	cmpq	576(%rax), %rdx
	jnb	.L15
	movq	584(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L15
	pxor	%xmm1, %xmm1
	ucomisd	216(%rax), %xmm1
	jp	.L17
	je	.L21
.L17:
	xorl	%eax, %eax
	movups	%xmm0, 32(%rcx)
	addq	$40, %rsp
	ret
.L15:
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L20:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L21:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "wze::engine.camera.BindX(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.camera.BindX(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC11:
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
	je	.L29
	movq	(%rcx), %rax
	cmpq	576(%rax), %rdx
	jnb	.L24
	movq	584(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L24
	pxor	%xmm0, %xmm0
	ucomisd	216(%rax), %xmm0
	jp	.L26
	je	.L30
.L26:
	xorl	%eax, %eax
	movq	%rdx, 32(%rcx)
	addq	$40, %rsp
	ret
.L24:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L30:
	leaq	.LC11(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.camera.BindY(): Illegal to bind to NULL Actor\12Params: Actor: %lld\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.camera.BindY(): Actor does not exist\12Params: Actor: %lld\12\0"
	.align 8
.LC14:
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
	je	.L38
	movq	(%rcx), %rax
	cmpq	576(%rax), %rdx
	jnb	.L33
	movq	584(%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L33
	pxor	%xmm0, %xmm0
	ucomisd	216(%rax), %xmm0
	jp	.L35
	je	.L39
.L35:
	xorl	%eax, %eax
	movq	%rdx, 40(%rcx)
	addq	$40, %rsp
	ret
.L33:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L38:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L39:
	leaq	.LC14(%rip), %rcx
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
	.globl	_ZN3wze6engine6camera11GetMinSpeedEv
	.def	_ZN3wze6engine6camera11GetMinSpeedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera11GetMinSpeedEv
_ZN3wze6engine6camera11GetMinSpeedEv:
.LFB8445:
	.seh_endprologue
	movsd	72(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.camera.SetMinSpeed(): MinSpeed must not be less than or equal to 0\12Params: Speed: %lf\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.camera.SetMinSpeed(): MinSpeed must not be greater than MaxSpeed\12Params: Speed: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera11SetMinSpeedEd
	.def	_ZN3wze6engine6camera11SetMinSpeedEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera11SetMinSpeedEd
_ZN3wze6engine6camera11SetMinSpeedEd:
.LFB8446:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L53
	comisd	80(%rcx), %xmm1
	ja	.L54
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 96(%rcx)
	movsd	%xmm1, 72(%rcx)
	addq	$40, %rsp
	ret
.L53:
	leaq	.LC15(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L54:
	leaq	.LC16(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera11GetMaxSpeedEv
	.def	_ZN3wze6engine6camera11GetMaxSpeedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera11GetMaxSpeedEv
_ZN3wze6engine6camera11GetMaxSpeedEv:
.LFB8447:
	.seh_endprologue
	movsd	80(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than or equal to 0\12Params: Speed: %lf\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than MinSpeed\12Params: Speed: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera11SetMaxSpeedEd
	.def	_ZN3wze6engine6camera11SetMaxSpeedEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera11SetMaxSpeedEd
_ZN3wze6engine6camera11SetMaxSpeedEd:
.LFB8448:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L68
	movsd	72(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L69
	movsd	96(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L61
	movsd	%xmm1, 96(%rcx)
.L61:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 80(%rcx)
	addq	$40, %rsp
	ret
.L69:
	leaq	.LC18(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L68:
	leaq	.LC17(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera15GetAccelerationEv
	.def	_ZN3wze6engine6camera15GetAccelerationEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera15GetAccelerationEv
_ZN3wze6engine6camera15GetAccelerationEv:
.LFB8449:
	.seh_endprologue
	movsd	88(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "wze::engine.camera.SetAcceleration(): Acceleration must not be less than or equal to 0\12Params: Acceleration: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera15SetAccelerationEd
	.def	_ZN3wze6engine6camera15SetAccelerationEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera15SetAccelerationEd
_ZN3wze6engine6camera15SetAccelerationEd:
.LFB8450:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L76
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 88(%rcx)
	addq	$40, %rsp
	ret
.L76:
	leaq	.LC19(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6camera6UpdateEv
_ZN3wze6engine6camera6UpdateEv:
.LFB8451:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	32(%rcx), %rdx
	movq	%rcx, %rbx
	testq	%rdx, %rdx
	je	.L78
	movq	(%rcx), %rax
	movzbl	24(%rcx), %esi
	movq	576(%rax), %r8
	movq	584(%rax), %r9
	testb	%sil, %sil
	je	.L79
	movsd	48(%rcx), %xmm1
	cmpq	%r8, %rdx
	jnb	.L150
	movq	(%r9,%rdx,8), %rcx
	movsd	168(%rcx), %xmm3
	movq	40(%rbx), %rcx
	comisd	%xmm1, %xmm3
	jbe	.L143
	leaq	592(%rax), %rdi
	cmpq	%r8, %rcx
	jnb	.L151
	movq	(%r9,%rcx,8), %rax
	movq	%rdi, %rcx
	movsd	176(%rax), %xmm0
	movsd	%xmm0, 32(%rsp)
	movsd	56(%rbx), %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movq	%rdi, %rcx
	movsd	48(%rbx), %xmm1
	movapd	%xmm0, %xmm3
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	96(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	(%rbx), %rax
	movq	32(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movq	576(%rax), %r8
	movq	584(%rax), %r9
	cmpq	%r8, %rdx
	jnb	.L150
	movq	(%r9,%rdx,8), %rcx
	movsd	168(%rcx), %xmm1
	movq	40(%rbx), %rcx
	comisd	%xmm1, %xmm0
	ja	.L148
.L144:
	testq	%rcx, %rcx
	jne	.L99
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L78:
	movq	40(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L102
	movq	(%rbx), %rax
	xorl	%esi, %esi
	movq	576(%rax), %r8
	movq	584(%rax), %r9
.L99:
	cmpb	$0, 24(%rbx)
	je	.L101
.L103:
	movsd	56(%rbx), %xmm2
	cmpq	%r8, %rcx
	jnb	.L151
	movq	(%r9,%rcx,8), %rcx
	movsd	176(%rcx), %xmm0
	comisd	%xmm2, %xmm0
	jbe	.L147
	leaq	592(%rax), %rsi
	cmpq	%r8, %rdx
	jnb	.L150
	movq	(%r9,%rdx,8), %rax
	movq	%rsi, %rcx
	movsd	168(%rax), %xmm3
	movsd	%xmm0, 32(%rsp)
	movsd	48(%rbx), %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movq	%rsi, %rcx
	movsd	56(%rbx), %xmm1
	movapd	%xmm0, %xmm3
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	96(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	(%rbx), %rax
	movq	40(%rbx), %rdx
	movsd	%xmm0, 56(%rbx)
	movq	584(%rax), %rcx
	cmpq	576(%rax), %rdx
	jnb	.L150
	movq	(%rcx,%rdx,8), %rdx
	movsd	176(%rdx), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L149
.L120:
	movsd	72(%rbx), %xmm2
	movsd	%xmm1, 56(%rbx)
	movsd	%xmm2, 96(%rbx)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L79:
	cmpq	%r8, %rdx
	jnb	.L150
	movq	(%r9,%rdx,8), %rdx
	movsd	168(%rdx), %xmm0
	movsd	%xmm0, 48(%rcx)
	movq	40(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L102
.L101:
	cmpq	%r8, %rcx
	jnb	.L151
	movq	(%r9,%rcx,8), %rdx
	movsd	176(%rdx), %xmm0
	movsd	%xmm0, 56(%rbx)
.L114:
	testb	%sil, %sil
	je	.L102
.L149:
	movsd	96(%rbx), %xmm2
.L90:
	movsd	80(%rbx), %xmm0
	comisd	%xmm2, %xmm0
	jbe	.L102
	movl	708(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	mulsd	88(%rbx), %xmm1
	addsd	%xmm2, %xmm1
	minsd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
.L102:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L143:
	comisd	%xmm3, %xmm1
	ja	.L153
	testq	%rcx, %rcx
	je	.L102
	xorl	%esi, %esi
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L147:
	comisd	%xmm0, %xmm2
	jbe	.L114
	leaq	592(%rax), %rsi
	cmpq	%r8, %rdx
	jnb	.L150
	movq	(%r9,%rdx,8), %rax
	movq	%rsi, %rcx
	movsd	168(%rax), %xmm3
	movsd	%xmm0, 32(%rsp)
	movsd	48(%rbx), %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movq	%rsi, %rcx
	movsd	96(%rbx), %xmm2
	xorpd	.LC21(%rip), %xmm2
	movapd	%xmm0, %xmm3
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm2
	movsd	56(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movq	(%rbx), %rax
	movq	40(%rbx), %rdx
	movsd	%xmm0, 56(%rbx)
	movq	584(%rax), %rcx
	cmpq	576(%rax), %rdx
	jnb	.L150
	movq	(%rcx,%rdx,8), %rdx
	movsd	176(%rdx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L149
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L153:
	leaq	592(%rax), %rdi
	cmpq	%r8, %rcx
	jnb	.L151
	movq	(%r9,%rcx,8), %rax
	movq	%rdi, %rcx
	movsd	176(%rax), %xmm0
	movsd	%xmm0, 32(%rsp)
	movsd	56(%rbx), %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movq	%rdi, %rcx
	movsd	48(%rbx), %xmm1
	movapd	%xmm0, %xmm3
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	96(%rbx), %xmm2
	call	_ZN3wze6engine6vector9TerminalXEddd
	movq	(%rbx), %rax
	movq	32(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movq	576(%rax), %r8
	movq	584(%rax), %r9
	cmpq	%r8, %rdx
	jnb	.L150
	movq	(%r9,%rdx,8), %rcx
	movsd	168(%rcx), %xmm1
	movq	40(%rbx), %rcx
	comisd	%xmm0, %xmm1
	jbe	.L144
.L148:
	movsd	72(%rbx), %xmm2
	movsd	%xmm1, 48(%rbx)
	movsd	%xmm2, 96(%rbx)
	testq	%rcx, %rcx
	je	.L90
	jmp	.L99
.L151:
	movq	%rcx, %rdx
.L150:
	leaq	.LC20(%rip), %rcx
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
.LFB8452:
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
	jp	.L155
	jne	.L155
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
.L157:
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
.L155:
	mulsd	64(%rsi), %xmm8
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
	addsd	48(%rsi), %xmm0
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
	addsd	56(%rsi), %xmm0
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
	jmp	.L157
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 16
.LC21:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector5AngleEdddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
