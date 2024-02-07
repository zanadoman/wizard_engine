	.file	"WZECamera.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6cameraC2EPS0_
	.type	_ZN3wze6engine6cameraC2EPS0_, @function
_ZN3wze6engine6cameraC2EPS0_:
.LFB8147:
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
.LFE8147:
	.size	_ZN3wze6engine6cameraC2EPS0_, .-_ZN3wze6engine6cameraC2EPS0_
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7GetZoomEv
	.type	_ZN3wze6engine6camera7GetZoomEv, @function
_ZN3wze6engine6camera7GetZoomEv:
.LFB8149:
	.cfi_startproc
	movsd	64(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6camera7GetZoomEv, .-_ZN3wze6engine6camera7GetZoomEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"wze::engine.camera.SetZoom(): Zoom must not be NaN\nParams: Zoom: %lf\n"
	.align 8
.LC11:
	.string	"wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.type	_ZN3wze6engine6camera7SetZoomEd, @function
_ZN3wze6engine6camera7SetZoomEd:
.LFB8150:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L14
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L15
	movsd	%xmm0, 64(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L15:
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6camera7SetZoomEd, .-_ZN3wze6engine6camera7SetZoomEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.type	_ZN3wze6engine6camera9GetXActorEv, @function
_ZN3wze6engine6camera9GetXActorEv:
.LFB8151:
	.cfi_startproc
	movq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6camera9GetXActorEv, .-_ZN3wze6engine6camera9GetXActorEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.type	_ZN3wze6engine6camera9GetYActorEv, @function
_ZN3wze6engine6camera9GetYActorEv:
.LFB8152:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6camera9GetYActorEv, .-_ZN3wze6engine6camera9GetYActorEv
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC13:
	.string	"wze::engine.camera.Bind(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC14:
	.string	"wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.type	_ZN3wze6engine6camera4BindEy, @function
_ZN3wze6engine6camera4BindEy:
.LFB8153:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L26
	movq	(%rdi), %rax
	cmpq	640(%rax), %rsi
	jnb	.L20
	movq	648(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L20
	pxor	%xmm1, %xmm1
	ucomisd	264(%rax), %xmm1
	movq	%rsi, %xmm0
	punpcklqdq	%xmm0, %xmm0
	jp	.L22
	je	.L27
.L22:
	movups	%xmm0, 32(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L20:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L26:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6camera4BindEy, .-_ZN3wze6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC16:
	.string	"wze::engine.camera.BindX(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC17:
	.string	"wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.type	_ZN3wze6engine6camera5BindXEy, @function
_ZN3wze6engine6camera5BindXEy:
.LFB8154:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L36
	movq	(%rdi), %rax
	cmpq	640(%rax), %rsi
	jnb	.L30
	movq	648(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L30
	pxor	%xmm0, %xmm0
	ucomisd	264(%rax), %xmm0
	jp	.L32
	je	.L37
.L32:
	movq	%rsi, 32(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L30:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L36:
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L37:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6camera5BindXEy, .-_ZN3wze6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC19:
	.string	"wze::engine.camera.BindY(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC20:
	.string	"wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.type	_ZN3wze6engine6camera5BindYEy, @function
_ZN3wze6engine6camera5BindYEy:
.LFB8155:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L46
	movq	(%rdi), %rax
	cmpq	640(%rax), %rsi
	jnb	.L40
	movq	648(%rax), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L40
	pxor	%xmm0, %xmm0
	ucomisd	264(%rax), %xmm0
	jp	.L42
	je	.L47
.L42:
	movq	%rsi, 40(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L40:
	.cfi_restore_state
	leaq	.LC19(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L46:
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L47:
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6camera5BindYEy, .-_ZN3wze6engine6camera5BindYEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UnbindEv
	.type	_ZN3wze6engine6camera6UnbindEv, @function
_ZN3wze6engine6camera6UnbindEv:
.LFB8156:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 32(%rdi)
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6camera6UnbindEv, .-_ZN3wze6engine6camera6UnbindEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.type	_ZN3wze6engine6camera7UnbindXEv, @function
_ZN3wze6engine6camera7UnbindXEv:
.LFB8157:
	.cfi_startproc
	movq	$0, 32(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6camera7UnbindXEv, .-_ZN3wze6engine6camera7UnbindXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.type	_ZN3wze6engine6camera7UnbindYEv, @function
_ZN3wze6engine6camera7UnbindYEv:
.LFB8158:
	.cfi_startproc
	movq	$0, 40(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6camera7UnbindYEv, .-_ZN3wze6engine6camera7UnbindYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedXEv
	.type	_ZN3wze6engine6camera12GetMinSpeedXEv, @function
_ZN3wze6engine6camera12GetMinSpeedXEv:
.LFB8159:
	.cfi_startproc
	movsd	72(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6camera12GetMinSpeedXEv, .-_ZN3wze6engine6camera12GetMinSpeedXEv
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be NaN\nParams: MinSpeedX: %lf\n"
	.align 8
.LC22:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be less than or equal to 0\nParams: MinSpeedX: %lf\n"
	.align 8
.LC23:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be greater than MaxSpeedX\nParams: MinSpeedX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedXEd
	.type	_ZN3wze6engine6camera12SetMinSpeedXEd, @function
_ZN3wze6engine6camera12SetMinSpeedXEd:
.LFB8160:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L69
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L70
	comisd	88(%rdi), %xmm0
	ja	.L71
	movsd	152(%rdi), %xmm1
	ucomisd	72(%rdi), %xmm1
	jp	.L59
	jne	.L59
	movsd	%xmm0, 152(%rdi)
.L59:
	movsd	%xmm0, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L71:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	leaq	.LC22(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L69:
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6camera12SetMinSpeedXEd, .-_ZN3wze6engine6camera12SetMinSpeedXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedYEv
	.type	_ZN3wze6engine6camera12GetMinSpeedYEv, @function
_ZN3wze6engine6camera12GetMinSpeedYEv:
.LFB8161:
	.cfi_startproc
	movsd	80(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6camera12GetMinSpeedYEv, .-_ZN3wze6engine6camera12GetMinSpeedYEv
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be NaN\nParams: MinSpeedY: %lf\n"
	.align 8
.LC25:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be less than or equal to 0\nParams: MinSpeedY: %lf\n"
	.align 8
.LC26:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be greater than MaxSpeedY\nParams: MinSpeedY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedYEd
	.type	_ZN3wze6engine6camera12SetMinSpeedYEd, @function
_ZN3wze6engine6camera12SetMinSpeedYEd:
.LFB8162:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L90
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L91
	comisd	96(%rdi), %xmm0
	ja	.L92
	movsd	160(%rdi), %xmm1
	ucomisd	80(%rdi), %xmm1
	jp	.L80
	jne	.L80
	movsd	%xmm0, 160(%rdi)
.L80:
	movsd	%xmm0, 80(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L92:
	.cfi_restore_state
	leaq	.LC26(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	leaq	.LC25(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L90:
	leaq	.LC24(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6camera12SetMinSpeedYEd, .-_ZN3wze6engine6camera12SetMinSpeedYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedXEv
	.type	_ZN3wze6engine6camera12GetMaxSpeedXEv, @function
_ZN3wze6engine6camera12GetMaxSpeedXEv:
.LFB8163:
	.cfi_startproc
	movsd	88(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6camera12GetMaxSpeedXEv, .-_ZN3wze6engine6camera12GetMaxSpeedXEv
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be NaN\nParams: MaxSpeedX: %lf\n"
	.align 8
.LC28:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than or equal to 0\nParams: MaxSpeedX: %lf\n"
	.align 8
.LC29:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than MinSpeedX\nParams: MaxSpeedX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedXEd
	.type	_ZN3wze6engine6camera12SetMaxSpeedXEd, @function
_ZN3wze6engine6camera12SetMaxSpeedXEd:
.LFB8164:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L111
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L112
	movsd	72(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L113
	movsd	152(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L101
	movsd	%xmm0, 152(%rdi)
.L101:
	movsd	%xmm0, 88(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L113:
	.cfi_restore_state
	leaq	.LC29(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L112:
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L111:
	leaq	.LC27(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6camera12SetMaxSpeedXEd, .-_ZN3wze6engine6camera12SetMaxSpeedXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedYEv
	.type	_ZN3wze6engine6camera12GetMaxSpeedYEv, @function
_ZN3wze6engine6camera12GetMaxSpeedYEv:
.LFB8165:
	.cfi_startproc
	movsd	96(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6camera12GetMaxSpeedYEv, .-_ZN3wze6engine6camera12GetMaxSpeedYEv
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be NaN\nParams: MaxSpeedY: %lf\n"
	.align 8
.LC31:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than or equal to 0\nParams: MaxSpeedY: %lf\n"
	.align 8
.LC32:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than MinSpeedY\nParams: MaxSpeedY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedYEd
	.type	_ZN3wze6engine6camera12SetMaxSpeedYEd, @function
_ZN3wze6engine6camera12SetMaxSpeedYEd:
.LFB8166:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L132
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L133
	movsd	80(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L134
	movsd	160(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L122
	movsd	%xmm0, 160(%rdi)
.L122:
	movsd	%xmm0, 96(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L134:
	.cfi_restore_state
	leaq	.LC32(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L133:
	leaq	.LC31(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L132:
	leaq	.LC30(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6camera12SetMaxSpeedYEd, .-_ZN3wze6engine6camera12SetMaxSpeedYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateXEv
	.type	_ZN3wze6engine6camera20GetDecelerationRateXEv, @function
_ZN3wze6engine6camera20GetDecelerationRateXEv:
.LFB8167:
	.cfi_startproc
	movsd	104(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6camera20GetDecelerationRateXEv, .-_ZN3wze6engine6camera20GetDecelerationRateXEv
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be NaN\nParams: DecelerationRateX: %lf\n"
	.align 8
.LC34:
	.string	"wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be less than or equal to 0\nParams: DecelerationRateX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateXEd
	.type	_ZN3wze6engine6camera20SetDecelerationRateXEd, @function
_ZN3wze6engine6camera20SetDecelerationRateXEd:
.LFB8168:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L146
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L147
	movsd	%xmm0, 104(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L146:
	.cfi_restore_state
	leaq	.LC33(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L147:
	leaq	.LC34(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6camera20SetDecelerationRateXEd, .-_ZN3wze6engine6camera20SetDecelerationRateXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateYEv
	.type	_ZN3wze6engine6camera20GetDecelerationRateYEv, @function
_ZN3wze6engine6camera20GetDecelerationRateYEv:
.LFB8169:
	.cfi_startproc
	movsd	112(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6camera20GetDecelerationRateYEv, .-_ZN3wze6engine6camera20GetDecelerationRateYEv
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be NaN\nParams: DecelerationRateY: %lf\n"
	.align 8
.LC36:
	.string	"wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be less than or equal to 0\nParams: DecelerationRateY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateYEd
	.type	_ZN3wze6engine6camera20SetDecelerationRateYEd, @function
_ZN3wze6engine6camera20SetDecelerationRateYEd:
.LFB8170:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L159
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L160
	movsd	%xmm0, 112(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L159:
	.cfi_restore_state
	leaq	.LC35(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L160:
	leaq	.LC36(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6camera20SetDecelerationRateYEd, .-_ZN3wze6engine6camera20SetDecelerationRateYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateXEv
	.type	_ZN3wze6engine6camera20GetAccelerationRateXEv, @function
_ZN3wze6engine6camera20GetAccelerationRateXEv:
.LFB8171:
	.cfi_startproc
	movsd	120(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6camera20GetAccelerationRateXEv, .-_ZN3wze6engine6camera20GetAccelerationRateXEv
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be NaN\nParams: AccelerationRateX: %lf\n"
	.align 8
.LC38:
	.string	"wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be less than or equal to 0\nParams: AccelerationRateX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateXEd
	.type	_ZN3wze6engine6camera20SetAccelerationRateXEd, @function
_ZN3wze6engine6camera20SetAccelerationRateXEd:
.LFB8172:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L172
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L173
	movsd	%xmm0, 120(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L172:
	.cfi_restore_state
	leaq	.LC37(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L173:
	leaq	.LC38(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6camera20SetAccelerationRateXEd, .-_ZN3wze6engine6camera20SetAccelerationRateXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateYEv
	.type	_ZN3wze6engine6camera20GetAccelerationRateYEv, @function
_ZN3wze6engine6camera20GetAccelerationRateYEv:
.LFB8173:
	.cfi_startproc
	movsd	128(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6camera20GetAccelerationRateYEv, .-_ZN3wze6engine6camera20GetAccelerationRateYEv
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be NaN\nParams: AccelerationRateY: %lf\n"
	.align 8
.LC40:
	.string	"wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be less than or equal to 0\nParams: AccelerationRateY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateYEd
	.type	_ZN3wze6engine6camera20SetAccelerationRateYEd, @function
_ZN3wze6engine6camera20SetAccelerationRateYEd:
.LFB8174:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L185
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L186
	movsd	%xmm0, 128(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L185:
	.cfi_restore_state
	leaq	.LC39(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L186:
	leaq	.LC40(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6camera20SetAccelerationRateYEd, .-_ZN3wze6engine6camera20SetAccelerationRateYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeXEv
	.type	_ZN3wze6engine6camera17GetSlowDownRangeXEv, @function
_ZN3wze6engine6camera17GetSlowDownRangeXEv:
.LFB8175:
	.cfi_startproc
	movsd	136(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6camera17GetSlowDownRangeXEv, .-_ZN3wze6engine6camera17GetSlowDownRangeXEv
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be NaN\nParams: SlowDownRangeX: %lf\n"
	.align 8
.LC42:
	.string	"wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be less than 0\nParams: SlowDownRangeX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.type	_ZN3wze6engine6camera17SetSlowDownRangeXEd, @function
_ZN3wze6engine6camera17SetSlowDownRangeXEd:
.LFB8176:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L198
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L199
	movsd	%xmm0, 136(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L198:
	.cfi_restore_state
	leaq	.LC41(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L199:
	leaq	.LC42(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6camera17SetSlowDownRangeXEd, .-_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeYEv
	.type	_ZN3wze6engine6camera17GetSlowDownRangeYEv, @function
_ZN3wze6engine6camera17GetSlowDownRangeYEv:
.LFB8177:
	.cfi_startproc
	movsd	144(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6camera17GetSlowDownRangeYEv, .-_ZN3wze6engine6camera17GetSlowDownRangeYEv
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be NaN\nParams: SlowDownRangeY: %lf\n"
	.align 8
.LC44:
	.string	"wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be less than 0\nParams: SlowDownRangeY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.type	_ZN3wze6engine6camera17SetSlowDownRangeYEd, @function
_ZN3wze6engine6camera17SetSlowDownRangeYEd:
.LFB8178:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L211
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L212
	movsd	%xmm0, 144(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L211:
	.cfi_restore_state
	leaq	.LC43(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L212:
	leaq	.LC44(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8178:
	.size	_ZN3wze6engine6camera17SetSlowDownRangeYEd, .-_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.type	_ZN3wze6engine6camera6UpdateEv, @function
_ZN3wze6engine6camera6UpdateEv:
.LFB8179:
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
	jne	.L214
	testq	%rax, %rax
	je	.L324
	movq	(%rdi), %rbp
.L215:
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	cmpq	%rcx, %rax
	jnb	.L337
	movq	(%rdx,%rax,8), %rax
	movq	40(%rbx), %rsi
	movsd	216(%rax), %xmm0
	movsd	%xmm0, 48(%rbx)
	testq	%rsi, %rsi
	je	.L307
	xorl	%r12d, %r12d
.L232:
	cmpq	%rcx, %rsi
	jnb	.L332
	movq	(%rdx,%rsi,8), %rax
	movsd	224(%rax), %xmm0
	movsd	%xmm0, 56(%rbx)
.L262:
	testb	%r12b, %r12b
	je	.L307
.L242:
	movsd	152(%rbx), %xmm0
	comisd	72(%rbx), %xmm0
	ja	.L338
.L269:
	movsd	88(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L275
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	804(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	120(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 152(%rbx)
.L275:
	movsd	160(%rbx), %xmm0
	comisd	80(%rbx), %xmm0
	ja	.L339
.L281:
	movsd	96(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L307
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	804(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	128(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rbx)
.L307:
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
.L324:
	.cfi_restore_state
	movq	40(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L307
	movq	(%rdi), %rbp
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L214:
	movq	(%rdi), %rbp
	movsd	48(%rdi), %xmm0
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	cmpq	%rcx, %rax
	jnb	.L337
	movq	(%rdx,%rax,8), %rsi
	movsd	216(%rsi), %xmm2
	ucomisd	%xmm2, %xmm0
	jp	.L218
	jne	.L218
	movsd	72(%rdi), %xmm1
	movsd	%xmm1, 152(%rdi)
.L218:
	movq	40(%rbx), %rsi
	movsd	56(%rbx), %xmm1
	cmpq	%rcx, %rsi
	jnb	.L332
	movq	(%rdx,%rsi,8), %rdi
	movsd	224(%rdi), %xmm3
	ucomisd	%xmm3, %xmm1
	jp	.L225
	jne	.L225
	ucomisd	%xmm2, %xmm0
	movsd	80(%rbx), %xmm4
	movsd	%xmm4, 160(%rbx)
	jp	.L225
	jne	.L225
	pxor	%xmm2, %xmm2
	testq	%rax, %rax
	jne	.L234
.L291:
	testq	%rsi, %rsi
	je	.L307
	ucomisd	%xmm2, %xmm2
	movq	(%rbx), %rbp
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	setnp	%r12b
	andb	24(%rbx), %r12b
	je	.L232
.L293:
	xorl	%r12d, %r12d
.L231:
	movsd	56(%rbx), %xmm0
	cmpq	%rcx, %rsi
	jnb	.L332
	movq	(%rdx,%rsi,8), %rax
	movsd	224(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L327
	movl	804(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	688(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm1
	mulsd	160(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rbp
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	648(%rbp), %rax
	cmpq	640(%rbp), %rsi
	jnb	.L332
	movq	(%rax,%rsi,8), %rax
	movsd	224(%rax), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L242
.L330:
	movsd	%xmm1, 56(%rbx)
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L225:
	leaq	688(%rbp), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	32(%rbx), %rax
	movapd	%xmm0, %xmm2
	testq	%rax, %rax
	je	.L340
	movq	(%rbx), %rbp
	cmpb	$0, 24(%rbx)
	movq	640(%rbp), %rcx
	movq	648(%rbp), %rdx
	je	.L215
	ucomisd	%xmm0, %xmm0
	jp	.L215
	movsd	48(%rbx), %xmm0
	cmpq	%rcx, %rax
	jb	.L234
.L337:
	movq	%rax, %rsi
.L332:
	leaq	.LC45(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L340:
	movq	40(%rbx), %rsi
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L339:
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
	leaq	688(%rbp), %rdi
	movapd	%xmm0, %xmm2
	movsd	48(%rbx), %xmm0
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	144(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L283
	movsd	160(%rbx), %xmm0
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L338:
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
	leaq	688(%rbp), %rdi
	movapd	%xmm0, %xmm2
	movsd	48(%rbx), %xmm0
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	136(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L271
	movsd	152(%rbx), %xmm0
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L234:
	movq	(%rdx,%rax,8), %rax
	movsd	216(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L326
	movl	804(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	688(%rbp), %rdi
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
	jnb	.L332
	movq	(%rdx,%rsi,8), %rax
	movq	40(%rbx), %rsi
	movsd	216(%rax), %xmm1
	comisd	%xmm1, %xmm0
	ja	.L251
.L334:
	testq	%rsi, %rsi
	je	.L242
	cmpb	$0, 24(%rbx)
	jne	.L231
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L283:
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
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L271:
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
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L327:
	comisd	%xmm1, %xmm0
	jbe	.L262
	movl	804(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	688(%rbp), %rdi
	cvtsi2sdq	%rax, %xmm1
	mulsd	160(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rbp
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	648(%rbp), %rax
	cmpq	640(%rbp), %rsi
	jnb	.L332
	movq	(%rax,%rsi,8), %rax
	movsd	224(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L242
	jmp	.L330
	.p2align 4,,10
	.p2align 3
.L326:
	comisd	%xmm1, %xmm0
	ja	.L246
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.L293
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L246:
	movl	804(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	688(%rbp), %rdi
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
	jnb	.L332
	movq	(%rdx,%rsi,8), %rax
	movq	40(%rbx), %rsi
	movsd	216(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L334
.L251:
	movsd	%xmm1, 48(%rbx)
	jmp	.L334
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6camera6UpdateEv, .-_ZN3wze6engine6camera6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9TransformEddttd
	.type	_ZN3wze6engine6camera9TransformEddttd, @function
_ZN3wze6engine6camera9TransformEddttd:
.LFB8180:
	.cfi_startproc
	movapd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movq	(%rdi), %rax
	movl	%edx, %ecx
	ucomisd	%xmm0, %xmm2
	movzwl	%si, %edx
	movzwl	%cx, %esi
	movzwl	42(%rax), %ecx
	jp	.L342
	jne	.L342
	movq	.LC47(%rip), %xmm0
	movsd	.LC46(%rip), %xmm5
	movapd	%xmm3, %xmm2
	andpd	%xmm0, %xmm2
	movapd	%xmm0, %xmm4
	ucomisd	%xmm2, %xmm5
	ja	.L352
.L344:
	cvttsd2sil	%xmm3, %eax
	movl	%edx, %edi
	movapd	%xmm1, %xmm2
	sarl	%edi
	andpd	%xmm0, %xmm2
	subl	%edi, %eax
	ucomisd	%xmm2, %xmm5
	ja	.L353
.L345:
	cvttsd2sil	%xmm1, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
.L346:
	salq	$32, %rcx
	movl	%edx, %edx
	orq	%rcx, %rax
	movq	%rsi, %rcx
	salq	$32, %rcx
	orq	%rcx, %rdx
	ret
	.p2align 4,,10
	.p2align 3
.L342:
	mulsd	64(%rdi), %xmm2
	pxor	%xmm4, %xmm4
	movq	.LC47(%rip), %xmm0
	cvtsi2sdl	%edx, %xmm4
	movsd	.LC46(%rip), %xmm5
	movapd	%xmm0, %xmm7
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L354
.L347:
	cvttsd2sil	%xmm4, %edx
	pxor	%xmm4, %xmm4
	movapd	%xmm0, %xmm7
	cvtsi2sdl	%esi, %xmm4
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L355
.L348:
	cvttsd2sil	%xmm4, %esi
	movsd	8(%rdi), %xmm4
	movapd	%xmm0, %xmm6
	divsd	%xmm2, %xmm4
	addsd	48(%rdi), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	andpd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm5
	ja	.L356
.L349:
	cvttsd2sil	%xmm3, %eax
	movsd	16(%rdi), %xmm3
	movl	%edx, %r8d
	sarl	%r8d
	divsd	%xmm2, %xmm3
	subl	%r8d, %eax
	addsd	56(%rdi), %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	andpd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm5
	ja	.L357
	cvttsd2sil	%xmm2, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L357:
	cvttsd2siq	%xmm2, %rdi
	pxor	%xmm1, %xmm1
	movsd	.LC48(%rip), %xmm4
	andnpd	%xmm2, %xmm0
	cvtsi2sdq	%rdi, %xmm1
	movapd	%xmm1, %xmm3
	cmpnlesd	%xmm2, %xmm3
	andpd	%xmm4, %xmm3
	subsd	%xmm3, %xmm1
	orpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm2
	cvttsd2sil	%xmm2, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L356:
	cvttsd2siq	%xmm3, %rax
	pxor	%xmm4, %xmm4
	andnpd	%xmm3, %xmm6
	movsd	.LC48(%rip), %xmm8
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm7
	cmpnlesd	%xmm3, %xmm7
	andpd	%xmm8, %xmm7
	subsd	%xmm7, %xmm4
	movapd	%xmm4, %xmm3
	orpd	%xmm6, %xmm3
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L355:
	cvttsd2siq	%xmm4, %rax
	pxor	%xmm6, %xmm6
	andnpd	%xmm4, %xmm7
	movsd	.LC48(%rip), %xmm9
	cvtsi2sdq	%rax, %xmm6
	movapd	%xmm6, %xmm8
	cmpnlesd	%xmm4, %xmm8
	andpd	%xmm9, %xmm8
	subsd	%xmm8, %xmm6
	orpd	%xmm7, %xmm6
	movapd	%xmm6, %xmm4
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L354:
	cvttsd2siq	%xmm4, %rax
	pxor	%xmm6, %xmm6
	andnpd	%xmm4, %xmm7
	movsd	.LC48(%rip), %xmm9
	cvtsi2sdq	%rax, %xmm6
	movapd	%xmm6, %xmm8
	cmpnlesd	%xmm4, %xmm8
	andpd	%xmm9, %xmm8
	subsd	%xmm8, %xmm6
	orpd	%xmm7, %xmm6
	movapd	%xmm6, %xmm4
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L353:
	cvttsd2siq	%xmm1, %rdi
	pxor	%xmm2, %xmm2
	movsd	.LC48(%rip), %xmm4
	andnpd	%xmm1, %xmm0
	cvtsi2sdq	%rdi, %xmm2
	movapd	%xmm2, %xmm3
	cmpnlesd	%xmm1, %xmm3
	andpd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm1
	orpd	%xmm0, %xmm1
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L352:
	cvttsd2siq	%xmm3, %rax
	pxor	%xmm2, %xmm2
	movsd	.LC48(%rip), %xmm7
	andnpd	%xmm3, %xmm4
	cvtsi2sdq	%rax, %xmm2
	movapd	%xmm2, %xmm6
	cmpnlesd	%xmm3, %xmm6
	andpd	%xmm7, %xmm6
	subsd	%xmm6, %xmm2
	movapd	%xmm2, %xmm3
	orpd	%xmm4, %xmm3
	jmp	.L344
	.cfi_endproc
.LFE8180:
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
	.align 8
.LC46:
	.long	0
	.long	1127219200
	.section	.rodata.cst16
	.align 16
.LC47:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.set	.LC48,.LC0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
