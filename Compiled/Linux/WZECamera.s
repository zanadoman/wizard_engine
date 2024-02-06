	.file	"WZECamera.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6cameraC2EPS0_
	.type	_ZN3wze6engine6cameraC2EPS0_, @function
_ZN3wze6engine6cameraC2EPS0_:
.LFB8145:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	.LC2(%rip), %rax
	movq	%rsi, (%rdi)
	movups	%xmm1, 32(%rdi)
	movapd	.LC0(%rip), %xmm1
	movups	%xmm0, 8(%rdi)
	movups	%xmm1, 64(%rdi)
	movapd	.LC1(%rip), %xmm1
	movups	%xmm0, 48(%rdi)
	movups	%xmm1, 80(%rdi)
	movsd	.LC4(%rip), %xmm1
	movups	%xmm0, 136(%rdi)
	movsd	.LC6(%rip), %xmm0
	unpcklpd	%xmm1, %xmm1
	movb	$0, 24(%rdi)
	unpcklpd	%xmm0, %xmm0
	movq	%rax, 96(%rdi)
	movups	%xmm1, 120(%rdi)
	movups	%xmm0, 152(%rdi)
	ret
	.cfi_endproc
.LFE8145:
	.size	_ZN3wze6engine6cameraC2EPS0_, .-_ZN3wze6engine6cameraC2EPS0_
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7GetZoomEv
	.type	_ZN3wze6engine6camera7GetZoomEv, @function
_ZN3wze6engine6camera7GetZoomEv:
.LFB8147:
	.cfi_startproc
	movsd	64(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6camera7GetZoomEv, .-_ZN3wze6engine6camera7GetZoomEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.type	_ZN3wze6engine6camera7SetZoomEd, @function
_ZN3wze6engine6camera7SetZoomEd:
.LFB8148:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L12
	movsd	%xmm0, 64(%rdi)
	ret
.L12:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine6camera7SetZoomEd, .-_ZN3wze6engine6camera7SetZoomEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.type	_ZN3wze6engine6camera9GetXActorEv, @function
_ZN3wze6engine6camera9GetXActorEv:
.LFB8149:
	.cfi_startproc
	movq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6camera9GetXActorEv, .-_ZN3wze6engine6camera9GetXActorEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.type	_ZN3wze6engine6camera9GetYActorEv, @function
_ZN3wze6engine6camera9GetYActorEv:
.LFB8150:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6camera9GetYActorEv, .-_ZN3wze6engine6camera9GetYActorEv
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC12:
	.string	"wze::engine.camera.Bind(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC13:
	.string	"wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.type	_ZN3wze6engine6camera4BindEy, @function
_ZN3wze6engine6camera4BindEy:
.LFB8151:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L23
	movq	(%rdi), %rax
	cmpq	640(%rax), %rsi
	jnb	.L17
	movq	648(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L17
	pxor	%xmm1, %xmm1
	ucomisd	216(%rax), %xmm1
	movq	%rsi, %xmm0
	punpcklqdq	%xmm0, %xmm0
	jp	.L19
	je	.L24
.L19:
	movups	%xmm0, 32(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L23:
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L24:
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6camera4BindEy, .-_ZN3wze6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC15:
	.string	"wze::engine.camera.BindX(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC16:
	.string	"wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.type	_ZN3wze6engine6camera5BindXEy, @function
_ZN3wze6engine6camera5BindXEy:
.LFB8152:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L33
	movq	(%rdi), %rax
	cmpq	640(%rax), %rsi
	jnb	.L27
	movq	648(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L27
	pxor	%xmm0, %xmm0
	ucomisd	216(%rax), %xmm0
	jp	.L29
	je	.L34
.L29:
	movq	%rsi, 32(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L33:
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L34:
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6camera5BindXEy, .-_ZN3wze6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC18:
	.string	"wze::engine.camera.BindY(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC19:
	.string	"wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.type	_ZN3wze6engine6camera5BindYEy, @function
_ZN3wze6engine6camera5BindYEy:
.LFB8153:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L43
	movq	(%rdi), %rax
	cmpq	640(%rax), %rsi
	jnb	.L37
	movq	648(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L37
	pxor	%xmm0, %xmm0
	ucomisd	216(%rax), %xmm0
	jp	.L39
	je	.L44
.L39:
	movq	%rsi, 40(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L37:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	leaq	.LC19(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6camera5BindYEy, .-_ZN3wze6engine6camera5BindYEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UnbindEv
	.type	_ZN3wze6engine6camera6UnbindEv, @function
_ZN3wze6engine6camera6UnbindEv:
.LFB8154:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 32(%rdi)
	ret
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6camera6UnbindEv, .-_ZN3wze6engine6camera6UnbindEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.type	_ZN3wze6engine6camera7UnbindXEv, @function
_ZN3wze6engine6camera7UnbindXEv:
.LFB8155:
	.cfi_startproc
	movq	$0, 32(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6camera7UnbindXEv, .-_ZN3wze6engine6camera7UnbindXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.type	_ZN3wze6engine6camera7UnbindYEv, @function
_ZN3wze6engine6camera7UnbindYEv:
.LFB8156:
	.cfi_startproc
	movq	$0, 40(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6camera7UnbindYEv, .-_ZN3wze6engine6camera7UnbindYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedXEv
	.type	_ZN3wze6engine6camera12GetMinSpeedXEv, @function
_ZN3wze6engine6camera12GetMinSpeedXEv:
.LFB8157:
	.cfi_startproc
	movsd	72(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6camera12GetMinSpeedXEv, .-_ZN3wze6engine6camera12GetMinSpeedXEv
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be less than or equal to 0\nParams: MinSpeedX: %lf\n"
	.align 8
.LC21:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be greater than MaxSpeedX\nParams: MinSpeedX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedXEd
	.type	_ZN3wze6engine6camera12SetMinSpeedXEd, @function
_ZN3wze6engine6camera12SetMinSpeedXEd:
.LFB8158:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	jnb	.L62
	comisd	88(%rdi), %xmm0
	ja	.L63
	movsd	152(%rdi), %xmm1
	ucomisd	72(%rdi), %xmm1
	jp	.L54
	jne	.L54
	movsd	%xmm0, 152(%rdi)
.L54:
	movsd	%xmm0, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L62:
	leaq	.LC20(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6camera12SetMinSpeedXEd, .-_ZN3wze6engine6camera12SetMinSpeedXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedYEv
	.type	_ZN3wze6engine6camera12GetMinSpeedYEv, @function
_ZN3wze6engine6camera12GetMinSpeedYEv:
.LFB8159:
	.cfi_startproc
	movsd	80(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6camera12GetMinSpeedYEv, .-_ZN3wze6engine6camera12GetMinSpeedYEv
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be less than or equal to 0\nParams: MinSpeedY: %lf\n"
	.align 8
.LC23:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be greater than MaxSpeedY\nParams: MinSpeedY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedYEd
	.type	_ZN3wze6engine6camera12SetMinSpeedYEd, @function
_ZN3wze6engine6camera12SetMinSpeedYEd:
.LFB8160:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	jnb	.L78
	comisd	96(%rdi), %xmm0
	ja	.L79
	movsd	160(%rdi), %xmm1
	ucomisd	80(%rdi), %xmm1
	jp	.L70
	jne	.L70
	movsd	%xmm0, 160(%rdi)
.L70:
	movsd	%xmm0, 80(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L79:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L78:
	leaq	.LC22(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6camera12SetMinSpeedYEd, .-_ZN3wze6engine6camera12SetMinSpeedYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedXEv
	.type	_ZN3wze6engine6camera12GetMaxSpeedXEv, @function
_ZN3wze6engine6camera12GetMaxSpeedXEv:
.LFB8161:
	.cfi_startproc
	movsd	88(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6camera12GetMaxSpeedXEv, .-_ZN3wze6engine6camera12GetMaxSpeedXEv
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than or equal to 0\nParams: MaxSpeedX: %lf\n"
	.align 8
.LC25:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than MinSpeedX\nParams: MaxSpeedX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedXEd
	.type	_ZN3wze6engine6camera12SetMaxSpeedXEd, @function
_ZN3wze6engine6camera12SetMaxSpeedXEd:
.LFB8162:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	jnb	.L94
	movsd	72(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L95
	movsd	152(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L86
	movsd	%xmm0, 152(%rdi)
.L86:
	movsd	%xmm0, 88(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L95:
	.cfi_restore_state
	leaq	.LC25(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	leaq	.LC24(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6camera12SetMaxSpeedXEd, .-_ZN3wze6engine6camera12SetMaxSpeedXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedYEv
	.type	_ZN3wze6engine6camera12GetMaxSpeedYEv, @function
_ZN3wze6engine6camera12GetMaxSpeedYEv:
.LFB8163:
	.cfi_startproc
	movsd	96(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6camera12GetMaxSpeedYEv, .-_ZN3wze6engine6camera12GetMaxSpeedYEv
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than or equal to 0\nParams: MaxSpeedY: %lf\n"
	.align 8
.LC27:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than MinSpeedY\nParams: MaxSpeedY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedYEd
	.type	_ZN3wze6engine6camera12SetMaxSpeedYEd, @function
_ZN3wze6engine6camera12SetMaxSpeedYEd:
.LFB8164:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	jnb	.L110
	movsd	80(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L111
	movsd	160(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L102
	movsd	%xmm0, 160(%rdi)
.L102:
	movsd	%xmm0, 96(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L111:
	.cfi_restore_state
	leaq	.LC27(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L110:
	leaq	.LC26(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6camera12SetMaxSpeedYEd, .-_ZN3wze6engine6camera12SetMaxSpeedYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateXEv
	.type	_ZN3wze6engine6camera20GetDecelerationRateXEv, @function
_ZN3wze6engine6camera20GetDecelerationRateXEv:
.LFB8165:
	.cfi_startproc
	movsd	104(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6camera20GetDecelerationRateXEv, .-_ZN3wze6engine6camera20GetDecelerationRateXEv
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be less than or equal to 0\nParams: DecelerationRateX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateXEd
	.type	_ZN3wze6engine6camera20SetDecelerationRateXEd, @function
_ZN3wze6engine6camera20SetDecelerationRateXEd:
.LFB8166:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L121
	movsd	%xmm0, 104(%rdi)
	ret
.L121:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6camera20SetDecelerationRateXEd, .-_ZN3wze6engine6camera20SetDecelerationRateXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateYEv
	.type	_ZN3wze6engine6camera20GetDecelerationRateYEv, @function
_ZN3wze6engine6camera20GetDecelerationRateYEv:
.LFB8167:
	.cfi_startproc
	movsd	112(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6camera20GetDecelerationRateYEv, .-_ZN3wze6engine6camera20GetDecelerationRateYEv
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be less than or equal to 0\nParams: DecelerationRateY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateYEd
	.type	_ZN3wze6engine6camera20SetDecelerationRateYEd, @function
_ZN3wze6engine6camera20SetDecelerationRateYEd:
.LFB8168:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L131
	movsd	%xmm0, 112(%rdi)
	ret
.L131:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC29(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6camera20SetDecelerationRateYEd, .-_ZN3wze6engine6camera20SetDecelerationRateYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateXEv
	.type	_ZN3wze6engine6camera20GetAccelerationRateXEv, @function
_ZN3wze6engine6camera20GetAccelerationRateXEv:
.LFB8169:
	.cfi_startproc
	movsd	120(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6camera20GetAccelerationRateXEv, .-_ZN3wze6engine6camera20GetAccelerationRateXEv
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be less than or equal to 0\nParams: AccelerationRateX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateXEd
	.type	_ZN3wze6engine6camera20SetAccelerationRateXEd, @function
_ZN3wze6engine6camera20SetAccelerationRateXEd:
.LFB8170:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L141
	movsd	%xmm0, 120(%rdi)
	ret
.L141:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC30(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6camera20SetAccelerationRateXEd, .-_ZN3wze6engine6camera20SetAccelerationRateXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateYEv
	.type	_ZN3wze6engine6camera20GetAccelerationRateYEv, @function
_ZN3wze6engine6camera20GetAccelerationRateYEv:
.LFB8171:
	.cfi_startproc
	movsd	128(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6camera20GetAccelerationRateYEv, .-_ZN3wze6engine6camera20GetAccelerationRateYEv
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be less than or equal to 0\nParams: AccelerationRateY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateYEd
	.type	_ZN3wze6engine6camera20SetAccelerationRateYEd, @function
_ZN3wze6engine6camera20SetAccelerationRateYEd:
.LFB8172:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L151
	movsd	%xmm0, 128(%rdi)
	ret
.L151:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC31(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6camera20SetAccelerationRateYEd, .-_ZN3wze6engine6camera20SetAccelerationRateYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeXEv
	.type	_ZN3wze6engine6camera17GetSlowDownRangeXEv, @function
_ZN3wze6engine6camera17GetSlowDownRangeXEv:
.LFB8173:
	.cfi_startproc
	movsd	136(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6camera17GetSlowDownRangeXEv, .-_ZN3wze6engine6camera17GetSlowDownRangeXEv
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be less than 0\nParams: SlowDownRangeX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.type	_ZN3wze6engine6camera17SetSlowDownRangeXEd, @function
_ZN3wze6engine6camera17SetSlowDownRangeXEd:
.LFB8174:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L161
	movsd	%xmm0, 136(%rdi)
	ret
.L161:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC32(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6camera17SetSlowDownRangeXEd, .-_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeYEv
	.type	_ZN3wze6engine6camera17GetSlowDownRangeYEv, @function
_ZN3wze6engine6camera17GetSlowDownRangeYEv:
.LFB8175:
	.cfi_startproc
	movsd	144(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6camera17GetSlowDownRangeYEv, .-_ZN3wze6engine6camera17GetSlowDownRangeYEv
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be less than 0\nParams: SlowDownRangeY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.type	_ZN3wze6engine6camera17SetSlowDownRangeYEd, @function
_ZN3wze6engine6camera17SetSlowDownRangeYEd:
.LFB8176:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L171
	movsd	%xmm0, 144(%rdi)
	ret
.L171:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC33(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6camera17SetSlowDownRangeYEd, .-_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.type	_ZN3wze6engine6camera6UpdateEv, @function
_ZN3wze6engine6camera6UpdateEv:
.LFB8177:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movzbl	24(%rdi), %r12d
	movq	32(%rdi), %rax
	testb	%r12b, %r12b
	jne	.L173
	testq	%rax, %rax
	je	.L283
	movq	(%rdi), %rbp
.L174:
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	cmpq	%rcx, %rax
	jnb	.L296
	movq	(%rdx,%rax,8), %rax
	movq	40(%rbx), %rsi
	movsd	168(%rax), %xmm0
	movsd	%xmm0, 48(%rbx)
	testq	%rsi, %rsi
	je	.L266
	xorl	%r12d, %r12d
.L191:
	cmpq	%rcx, %rsi
	jnb	.L291
	movq	(%rdx,%rsi,8), %rax
	movsd	176(%rax), %xmm0
	movsd	%xmm0, 56(%rbx)
.L221:
	testb	%r12b, %r12b
	je	.L266
.L201:
	movsd	152(%rbx), %xmm0
	comisd	72(%rbx), %xmm0
	ja	.L297
.L228:
	movsd	88(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L234
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	772(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	120(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 152(%rbx)
.L234:
	movsd	160(%rbx), %xmm0
	comisd	80(%rbx), %xmm0
	ja	.L298
.L240:
	movsd	96(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L266
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	772(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	128(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rbx)
.L266:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L283:
	.cfi_restore_state
	movq	40(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L266
	movq	(%rdi), %rbp
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L173:
	movq	(%rdi), %rbp
	movsd	48(%rdi), %xmm0
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	cmpq	%rcx, %rax
	jnb	.L296
	movq	(%rdx,%rax,8), %rsi
	movsd	168(%rsi), %xmm2
	ucomisd	%xmm2, %xmm0
	jp	.L177
	jne	.L177
	movsd	72(%rdi), %xmm1
	movsd	%xmm1, 152(%rdi)
.L177:
	movq	40(%rbx), %rsi
	movsd	56(%rbx), %xmm1
	cmpq	%rcx, %rsi
	jnb	.L291
	movq	(%rdx,%rsi,8), %rdi
	movsd	176(%rdi), %xmm3
	ucomisd	%xmm3, %xmm1
	jp	.L184
	jne	.L184
	ucomisd	%xmm2, %xmm0
	movsd	80(%rbx), %xmm4
	movsd	%xmm4, 160(%rbx)
	jp	.L184
	jne	.L184
	pxor	%xmm2, %xmm2
	testq	%rax, %rax
	jne	.L193
.L250:
	testq	%rsi, %rsi
	je	.L266
	ucomisd	%xmm2, %xmm2
	movq	(%rbx), %rbp
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	setnp	%r12b
	andb	24(%rbx), %r12b
	je	.L191
.L252:
	xorl	%r12d, %r12d
.L190:
	movsd	56(%rbx), %xmm0
	cmpq	%rcx, %rsi
	jnb	.L291
	movq	(%rdx,%rsi,8), %rax
	movsd	176(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L286
	movl	772(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	656(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm1
	mulsd	160(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rbp
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	648(%rbp), %rax
	cmpq	640(%rbp), %rsi
	jnb	.L291
	movq	(%rax,%rsi,8), %rax
	movsd	176(%rax), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L201
.L289:
	movsd	%xmm1, 56(%rbx)
	jmp	.L201
	.p2align 4,,10
	.p2align 3
.L184:
	leaq	656(%rbp), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	32(%rbx), %rax
	movapd	%xmm0, %xmm2
	testq	%rax, %rax
	je	.L299
	movq	(%rbx), %rbp
	cmpb	$0, 24(%rbx)
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	je	.L174
	ucomisd	%xmm0, %xmm0
	jp	.L174
	movsd	48(%rbx), %xmm0
	cmpq	%rcx, %rax
	jb	.L193
.L296:
	movq	%rax, %rsi
.L291:
	leaq	.LC34(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L299:
	movq	40(%rbx), %rsi
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L298:
	movq	(%rbx), %rbp
	movq	40(%rbx), %rsi
	leaq	632(%rbp), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rax
	movq	32(%rbx), %rsi
	movsd	%xmm0, 8(%rsp)
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	56(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	leaq	656(%rbp), %rdi
	movapd	%xmm0, %xmm2
	movsd	48(%rbx), %xmm0
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	144(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L242
	movsd	160(%rbx), %xmm0
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L297:
	leaq	632(%rbp), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rax
	movq	32(%rbx), %rsi
	movsd	%xmm0, 8(%rsp)
	leaq	632(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	56(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	leaq	656(%rbp), %rdi
	movapd	%xmm0, %xmm2
	movsd	48(%rbx), %xmm0
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	136(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L230
	movsd	152(%rbx), %xmm0
	jmp	.L228
	.p2align 4,,10
	.p2align 3
.L193:
	movq	(%rdx,%rax,8), %rax
	movsd	168(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L285
	movl	772(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	656(%rbp), %rdi
	movsd	%xmm2, 8(%rsp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	152(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rbp
	movq	32(%rbx), %rsi
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 48(%rbx)
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	cmpq	%rcx, %rsi
	jnb	.L291
	movq	(%rdx,%rsi,8), %rax
	movq	40(%rbx), %rsi
	movsd	168(%rax), %xmm1
	comisd	%xmm1, %xmm0
	ja	.L210
.L293:
	testq	%rsi, %rsi
	je	.L201
	cmpb	$0, 24(%rbx)
	jne	.L190
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L242:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movsd	160(%rbx), %xmm1
	movl	772(%rax), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	112(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	movsd	80(%rbx), %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 160(%rbx)
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L230:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movsd	152(%rbx), %xmm1
	movl	772(%rax), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	104(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	movsd	72(%rbx), %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 152(%rbx)
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L286:
	comisd	%xmm1, %xmm0
	jbe	.L221
	movl	772(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	656(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm1
	mulsd	160(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rbp
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	648(%rbp), %rax
	cmpq	640(%rbp), %rsi
	jnb	.L291
	movq	(%rax,%rsi,8), %rax
	movsd	176(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L201
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L285:
	comisd	%xmm1, %xmm0
	ja	.L205
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.L252
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L205:
	movl	772(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	656(%rbp), %rdi
	movsd	%xmm2, 8(%rsp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	152(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rbp
	movq	32(%rbx), %rsi
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 48(%rbx)
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	cmpq	%rcx, %rsi
	jnb	.L291
	movq	(%rdx,%rsi,8), %rax
	movq	40(%rbx), %rsi
	movsd	168(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L293
.L210:
	movsd	%xmm1, 48(%rbx)
	jmp	.L293
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6camera6UpdateEv, .-_ZN3wze6engine6camera6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9TransformEddttd
	.type	_ZN3wze6engine6camera9TransformEddttd, @function
_ZN3wze6engine6camera9TransformEddttd:
.LFB8178:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movapd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movq	%xmm1, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movzwl	%dx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movzwl	%si, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	ucomisd	%xmm0, %xmm2
	movq	(%rdi), %rax
	movzwl	42(%rax), %r13d
	jp	.L301
	jne	.L301
	movapd	%xmm3, %xmm0
	call	round@PLT
	movl	%ebx, %edx
	cvttsd2sil	%xmm0, %ebp
	sarl	%edx
	movq	%r15, %xmm0
	subl	%edx, %ebp
.L306:
	call	round@PLT
	movl	%r13d, %edx
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	cvttsd2sil	%xmm0, %eax
	subl	%eax, %edx
	movl	%r12d, %eax
	salq	$32, %r12
	sarl	%eax
	subl	%eax, %edx
	movl	%ebp, %eax
	salq	$32, %rdx
	orq	%rdx, %rax
	movl	%ebx, %edx
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	orq	%r12, %rdx
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L301:
	.cfi_restore_state
	mulsd	64(%r14), %xmm2
	pxor	%xmm0, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%ebx, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm2, (%rsp)
	call	round@PLT
	movsd	(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	mulsd	%xmm2, %xmm0
	call	round@PLT
	movsd	(%rsp), %xmm2
	movsd	8(%rsp), %xmm3
	cvttsd2sil	%xmm0, %r12d
	movsd	8(%r14), %xmm0
	divsd	%xmm2, %xmm0
	addsd	48(%r14), %xmm0
	subsd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm0
	call	round@PLT
	movsd	(%rsp), %xmm2
	movsd	16(%r14), %xmm1
	movl	%ebx, %edx
	cvttsd2sil	%xmm0, %ebp
	movq	%r15, %xmm0
	sarl	%edx
	divsd	%xmm2, %xmm1
	subl	%edx, %ebp
	addsd	56(%r14), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	jmp	.L306
	.cfi_endproc
.LFE8178:
	.size	_ZN3wze6engine6camera9TransformEddttd, .-_ZN3wze6engine6camera9TransformEddttd
	.section	.rodata.cst16,"aM",@progbits,16
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	-755914244
	.long	1062232653
	.set	.LC6,.LC0+8
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
