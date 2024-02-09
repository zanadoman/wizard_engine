	.file	"WZECamera.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6cameraC2EPS0_
	.type	_ZN3wze6engine6cameraC2EPS0_, @function
_ZN3wze6engine6cameraC2EPS0_:
.LFB8147:
	.cfi_startproc
	movsd	.LC4(%rip), %xmm2
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movups	%xmm1, 40(%rdi)
	movsd	.LC2(%rip), %xmm1
	movq	.LC0(%rip), %rax
	unpcklpd	%xmm2, %xmm2
	movb	$0, 8(%rdi)
	movups	%xmm2, 88(%rdi)
	movsd	.LC6(%rip), %xmm2
	unpcklpd	%xmm1, %xmm1
	movq	%rax, 32(%rdi)
	unpcklpd	%xmm2, %xmm2
	movups	%xmm0, 16(%rdi)
	movups	%xmm0, 56(%rdi)
	movups	%xmm1, 72(%rdi)
	movups	%xmm2, 104(%rdi)
	movups	%xmm2, 120(%rdi)
	movups	%xmm0, 136(%rdi)
	movups	%xmm1, 152(%rdi)
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6cameraC2EPS0_, .-_ZN3wze6engine6cameraC2EPS0_
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetXEv
	.type	_ZN3wze6engine6camera10GetOffsetXEv, @function
_ZN3wze6engine6camera10GetOffsetXEv:
.LFB8149:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6camera10GetOffsetXEv, .-_ZN3wze6engine6camera10GetOffsetXEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\nParams: OffsetX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetXEd
	.type	_ZN3wze6engine6camera10SetOffsetXEd, @function
_ZN3wze6engine6camera10SetOffsetXEd:
.LFB8150:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	jp	.L12
	movsd	%xmm0, 16(%rdi)
	ret
.L12:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6camera10SetOffsetXEd, .-_ZN3wze6engine6camera10SetOffsetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetYEv
	.type	_ZN3wze6engine6camera10GetOffsetYEv, @function
_ZN3wze6engine6camera10GetOffsetYEv:
.LFB8151:
	.cfi_startproc
	movsd	24(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6camera10GetOffsetYEv, .-_ZN3wze6engine6camera10GetOffsetYEv
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\nParams: OffsetY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetYEd
	.type	_ZN3wze6engine6camera10SetOffsetYEd, @function
_ZN3wze6engine6camera10SetOffsetYEd:
.LFB8152:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	jp	.L22
	movsd	%xmm0, 24(%rdi)
	ret
.L22:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6camera10SetOffsetYEd, .-_ZN3wze6engine6camera10SetOffsetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7GetZoomEv
	.type	_ZN3wze6engine6camera7GetZoomEv, @function
_ZN3wze6engine6camera7GetZoomEv:
.LFB8153:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6camera7GetZoomEv, .-_ZN3wze6engine6camera7GetZoomEv
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.camera.SetZoom(): Zoom must not be NaN\nParams: Zoom: %lf\n"
	.align 8
.LC13:
	.string	"wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.type	_ZN3wze6engine6camera7SetZoomEd, @function
_ZN3wze6engine6camera7SetZoomEd:
.LFB8154:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L34
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L35
	movsd	%xmm0, 32(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L34:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L35:
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6camera7SetZoomEd, .-_ZN3wze6engine6camera7SetZoomEd
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.camera.Bind(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC15:
	.string	"wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.type	_ZN3wze6engine6camera4BindEy, @function
_ZN3wze6engine6camera4BindEy:
.LFB8155:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L47
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	352(%rdx), %rsi
	jnb	.L39
	movq	360(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L39
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	jp	.L41
	je	.L48
.L41:
	movq	%rax, %xmm0
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, 40(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	pxor	%xmm0, %xmm0
	movups	%xmm0, 56(%rdi)
	ret
.L39:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L48:
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6camera4BindEy, .-_ZN3wze6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.camera.BindX(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC17:
	.string	"wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.type	_ZN3wze6engine6camera5BindXEy, @function
_ZN3wze6engine6camera5BindXEy:
.LFB8156:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L54
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	352(%rdx), %rsi
	jnb	.L51
	movq	360(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L51
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	jp	.L55
	je	.L61
.L55:
	movq	%rax, 40(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	xorl	%edx, %edx
	movq	%rdx, 40(%rdi)
	ret
.L51:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L61:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6camera5BindXEy, .-_ZN3wze6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.camera.BindY(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC19:
	.string	"wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.type	_ZN3wze6engine6camera5BindYEy, @function
_ZN3wze6engine6camera5BindYEy:
.LFB8157:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L67
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	352(%rdx), %rsi
	jnb	.L64
	movq	360(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L64
	pxor	%xmm0, %xmm0
	ucomisd	264(%rdx), %xmm0
	jp	.L68
	je	.L74
.L68:
	movq	%rax, 48(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	xorl	%edx, %edx
	movq	%rdx, 48(%rdi)
	ret
.L64:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	leaq	.LC19(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6camera5BindYEy, .-_ZN3wze6engine6camera5BindYEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UnbindEv
	.type	_ZN3wze6engine6camera6UnbindEv, @function
_ZN3wze6engine6camera6UnbindEv:
.LFB8158:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 40(%rdi)
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6camera6UnbindEv, .-_ZN3wze6engine6camera6UnbindEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.type	_ZN3wze6engine6camera7UnbindXEv, @function
_ZN3wze6engine6camera7UnbindXEv:
.LFB8159:
	.cfi_startproc
	movq	$0, 40(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6camera7UnbindXEv, .-_ZN3wze6engine6camera7UnbindXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.type	_ZN3wze6engine6camera7UnbindYEv, @function
_ZN3wze6engine6camera7UnbindYEv:
.LFB8160:
	.cfi_startproc
	movq	$0, 48(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6camera7UnbindYEv, .-_ZN3wze6engine6camera7UnbindYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.type	_ZN3wze6engine6camera9GetXActorEv, @function
_ZN3wze6engine6camera9GetXActorEv:
.LFB8161:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6camera9GetXActorEv, .-_ZN3wze6engine6camera9GetXActorEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.type	_ZN3wze6engine6camera9GetYActorEv, @function
_ZN3wze6engine6camera9GetYActorEv:
.LFB8162:
	.cfi_startproc
	movq	48(%rdi), %rax
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6camera9GetYActorEv, .-_ZN3wze6engine6camera9GetYActorEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetXEv
	.type	_ZN3wze6engine6camera4GetXEv, @function
_ZN3wze6engine6camera4GetXEv:
.LFB8163:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6camera4GetXEv, .-_ZN3wze6engine6camera4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetYEv
	.type	_ZN3wze6engine6camera4GetYEv, @function
_ZN3wze6engine6camera4GetYEv:
.LFB8164:
	.cfi_startproc
	movsd	64(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6camera4GetYEv, .-_ZN3wze6engine6camera4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedXEv
	.type	_ZN3wze6engine6camera12GetMinSpeedXEv, @function
_ZN3wze6engine6camera12GetMinSpeedXEv:
.LFB8165:
	.cfi_startproc
	movsd	72(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6camera12GetMinSpeedXEv, .-_ZN3wze6engine6camera12GetMinSpeedXEv
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be NaN\nParams: MinSpeedX: %lf\n"
	.align 8
.LC21:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be less than or equal to 0\nParams: MinSpeedX: %lf\n"
	.align 8
.LC22:
	.string	"wze::engine.camera.SetMinSpeedX(): MinSpeedX must not be greater than MaxSpeedX\nParams: MinSpeedX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedXEd
	.type	_ZN3wze6engine6camera12SetMinSpeedXEd, @function
_ZN3wze6engine6camera12SetMinSpeedXEd:
.LFB8166:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L100
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L101
	comisd	88(%rdi), %xmm0
	ja	.L102
	movsd	152(%rdi), %xmm1
	ucomisd	72(%rdi), %xmm1
	jp	.L90
	jne	.L90
	movsd	%xmm0, 152(%rdi)
.L90:
	movsd	%xmm0, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L102:
	.cfi_restore_state
	leaq	.LC22(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L101:
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L100:
	leaq	.LC20(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6camera12SetMinSpeedXEd, .-_ZN3wze6engine6camera12SetMinSpeedXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMinSpeedYEv
	.type	_ZN3wze6engine6camera12GetMinSpeedYEv, @function
_ZN3wze6engine6camera12GetMinSpeedYEv:
.LFB8167:
	.cfi_startproc
	movsd	80(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6camera12GetMinSpeedYEv, .-_ZN3wze6engine6camera12GetMinSpeedYEv
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be NaN\nParams: MinSpeedY: %lf\n"
	.align 8
.LC24:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be less than or equal to 0\nParams: MinSpeedY: %lf\n"
	.align 8
.LC25:
	.string	"wze::engine.camera.SetMinSpeedY(): MinSpeedY must not be greater than MaxSpeedY\nParams: MinSpeedY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMinSpeedYEd
	.type	_ZN3wze6engine6camera12SetMinSpeedYEd, @function
_ZN3wze6engine6camera12SetMinSpeedYEd:
.LFB8168:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L121
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L122
	comisd	96(%rdi), %xmm0
	ja	.L123
	movsd	160(%rdi), %xmm1
	ucomisd	80(%rdi), %xmm1
	jp	.L111
	jne	.L111
	movsd	%xmm0, 160(%rdi)
.L111:
	movsd	%xmm0, 80(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L123:
	.cfi_restore_state
	leaq	.LC25(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L122:
	leaq	.LC24(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L121:
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6camera12SetMinSpeedYEd, .-_ZN3wze6engine6camera12SetMinSpeedYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedXEv
	.type	_ZN3wze6engine6camera12GetMaxSpeedXEv, @function
_ZN3wze6engine6camera12GetMaxSpeedXEv:
.LFB8169:
	.cfi_startproc
	movsd	88(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6camera12GetMaxSpeedXEv, .-_ZN3wze6engine6camera12GetMaxSpeedXEv
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be NaN\nParams: MaxSpeedX: %lf\n"
	.align 8
.LC27:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than or equal to 0\nParams: MaxSpeedX: %lf\n"
	.align 8
.LC28:
	.string	"wze::engine.camera.SetMaxSpeedX(): MaxSpeedX must not be less than MinSpeedX\nParams: MaxSpeedX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedXEd
	.type	_ZN3wze6engine6camera12SetMaxSpeedXEd, @function
_ZN3wze6engine6camera12SetMaxSpeedXEd:
.LFB8170:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L142
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L143
	movsd	72(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L144
	movsd	152(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L132
	movsd	%xmm0, 152(%rdi)
.L132:
	movsd	%xmm0, 88(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L144:
	.cfi_restore_state
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L143:
	leaq	.LC27(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L142:
	leaq	.LC26(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6camera12SetMaxSpeedXEd, .-_ZN3wze6engine6camera12SetMaxSpeedXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12GetMaxSpeedYEv
	.type	_ZN3wze6engine6camera12GetMaxSpeedYEv, @function
_ZN3wze6engine6camera12GetMaxSpeedYEv:
.LFB8171:
	.cfi_startproc
	movsd	96(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6camera12GetMaxSpeedYEv, .-_ZN3wze6engine6camera12GetMaxSpeedYEv
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be NaN\nParams: MaxSpeedY: %lf\n"
	.align 8
.LC30:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than or equal to 0\nParams: MaxSpeedY: %lf\n"
	.align 8
.LC31:
	.string	"wze::engine.camera.SetMaxSpeedY(): MaxSpeedY must not be less than MinSpeedY\nParams: MaxSpeedY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera12SetMaxSpeedYEd
	.type	_ZN3wze6engine6camera12SetMaxSpeedYEd, @function
_ZN3wze6engine6camera12SetMaxSpeedYEd:
.LFB8172:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L163
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L164
	movsd	80(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L165
	movsd	160(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L153
	movsd	%xmm0, 160(%rdi)
.L153:
	movsd	%xmm0, 96(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L165:
	.cfi_restore_state
	leaq	.LC31(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L164:
	leaq	.LC30(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L163:
	leaq	.LC29(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6camera12SetMaxSpeedYEd, .-_ZN3wze6engine6camera12SetMaxSpeedYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateXEv
	.type	_ZN3wze6engine6camera20GetDecelerationRateXEv, @function
_ZN3wze6engine6camera20GetDecelerationRateXEv:
.LFB8173:
	.cfi_startproc
	movsd	104(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6camera20GetDecelerationRateXEv, .-_ZN3wze6engine6camera20GetDecelerationRateXEv
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be NaN\nParams: DecelerationRateX: %lf\n"
	.align 8
.LC33:
	.string	"wze::engine.camera.SetDecelerationRateX(): DecelerationRateX must not be less than or equal to 0\nParams: DecelerationRateX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateXEd
	.type	_ZN3wze6engine6camera20SetDecelerationRateXEd, @function
_ZN3wze6engine6camera20SetDecelerationRateXEd:
.LFB8174:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L177
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L178
	movsd	%xmm0, 104(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L177:
	.cfi_restore_state
	leaq	.LC32(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L178:
	leaq	.LC33(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6camera20SetDecelerationRateXEd, .-_ZN3wze6engine6camera20SetDecelerationRateXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetDecelerationRateYEv
	.type	_ZN3wze6engine6camera20GetDecelerationRateYEv, @function
_ZN3wze6engine6camera20GetDecelerationRateYEv:
.LFB8175:
	.cfi_startproc
	movsd	112(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6camera20GetDecelerationRateYEv, .-_ZN3wze6engine6camera20GetDecelerationRateYEv
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be NaN\nParams: DecelerationRateY: %lf\n"
	.align 8
.LC35:
	.string	"wze::engine.camera.SetDecelerationRateY(): DecelerationRateY must not be less than or equal to 0\nParams: DecelerationRateY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetDecelerationRateYEd
	.type	_ZN3wze6engine6camera20SetDecelerationRateYEd, @function
_ZN3wze6engine6camera20SetDecelerationRateYEd:
.LFB8176:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L190
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L191
	movsd	%xmm0, 112(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L190:
	.cfi_restore_state
	leaq	.LC34(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L191:
	leaq	.LC35(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6camera20SetDecelerationRateYEd, .-_ZN3wze6engine6camera20SetDecelerationRateYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateXEv
	.type	_ZN3wze6engine6camera20GetAccelerationRateXEv, @function
_ZN3wze6engine6camera20GetAccelerationRateXEv:
.LFB8177:
	.cfi_startproc
	movsd	120(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6camera20GetAccelerationRateXEv, .-_ZN3wze6engine6camera20GetAccelerationRateXEv
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be NaN\nParams: AccelerationRateX: %lf\n"
	.align 8
.LC37:
	.string	"wze::engine.camera.SetAccelerationRateX(): AccelerationRateX must not be less than or equal to 0\nParams: AccelerationRateX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateXEd
	.type	_ZN3wze6engine6camera20SetAccelerationRateXEd, @function
_ZN3wze6engine6camera20SetAccelerationRateXEd:
.LFB8178:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L203
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L204
	movsd	%xmm0, 120(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L203:
	.cfi_restore_state
	leaq	.LC36(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L204:
	leaq	.LC37(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8178:
	.size	_ZN3wze6engine6camera20SetAccelerationRateXEd, .-_ZN3wze6engine6camera20SetAccelerationRateXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20GetAccelerationRateYEv
	.type	_ZN3wze6engine6camera20GetAccelerationRateYEv, @function
_ZN3wze6engine6camera20GetAccelerationRateYEv:
.LFB8179:
	.cfi_startproc
	movsd	128(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6camera20GetAccelerationRateYEv, .-_ZN3wze6engine6camera20GetAccelerationRateYEv
	.section	.rodata.str1.8
	.align 8
.LC38:
	.string	"wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be NaN\nParams: AccelerationRateY: %lf\n"
	.align 8
.LC39:
	.string	"wze::engine.camera.SetAccelerationRateY(): AccelerationRateY must not be less than or equal to 0\nParams: AccelerationRateY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera20SetAccelerationRateYEd
	.type	_ZN3wze6engine6camera20SetAccelerationRateYEd, @function
_ZN3wze6engine6camera20SetAccelerationRateYEd:
.LFB8180:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L216
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L217
	movsd	%xmm0, 128(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L216:
	.cfi_restore_state
	leaq	.LC38(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L217:
	leaq	.LC39(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine6camera20SetAccelerationRateYEd, .-_ZN3wze6engine6camera20SetAccelerationRateYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeXEv
	.type	_ZN3wze6engine6camera17GetSlowDownRangeXEv, @function
_ZN3wze6engine6camera17GetSlowDownRangeXEv:
.LFB8181:
	.cfi_startproc
	movsd	136(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine6camera17GetSlowDownRangeXEv, .-_ZN3wze6engine6camera17GetSlowDownRangeXEv
	.section	.rodata.str1.8
	.align 8
.LC40:
	.string	"wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be NaN\nParams: SlowDownRangeX: %lf\n"
	.align 8
.LC41:
	.string	"wze::engine.camera.SetSlowDownRangeX(): SlowDownRangeX must not be less than 0\nParams: SlowDownRangeX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.type	_ZN3wze6engine6camera17SetSlowDownRangeXEd, @function
_ZN3wze6engine6camera17SetSlowDownRangeXEd:
.LFB8182:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L229
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L230
	movsd	%xmm0, 136(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L229:
	.cfi_restore_state
	leaq	.LC40(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L230:
	leaq	.LC41(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine6camera17SetSlowDownRangeXEd, .-_ZN3wze6engine6camera17SetSlowDownRangeXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17GetSlowDownRangeYEv
	.type	_ZN3wze6engine6camera17GetSlowDownRangeYEv, @function
_ZN3wze6engine6camera17GetSlowDownRangeYEv:
.LFB8183:
	.cfi_startproc
	movsd	144(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine6camera17GetSlowDownRangeYEv, .-_ZN3wze6engine6camera17GetSlowDownRangeYEv
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be NaN\nParams: SlowDownRangeY: %lf\n"
	.align 8
.LC43:
	.string	"wze::engine.camera.SetSlowDownRangeY(): SlowDownRangeY must not be less than 0\nParams: SlowDownRangeY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.type	_ZN3wze6engine6camera17SetSlowDownRangeYEd, @function
_ZN3wze6engine6camera17SetSlowDownRangeYEd:
.LFB8184:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L242
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L243
	movsd	%xmm0, 144(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L242:
	.cfi_restore_state
	leaq	.LC42(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L243:
	leaq	.LC43(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8184:
	.size	_ZN3wze6engine6camera17SetSlowDownRangeYEd, .-_ZN3wze6engine6camera17SetSlowDownRangeYEd
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.type	_ZN3wze6engine6camera6UpdateEv, @function
_ZN3wze6engine6camera6UpdateEv:
.LFB8185:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	cmpb	$0, 8(%rdi)
	movq	40(%rdi), %rax
	jne	.L245
	testq	%rax, %rax
	je	.L391
	movq	(%rdi), %rdi
	pxor	%xmm4, %xmm4
.L246:
	movq	360(%rdi), %rdx
	cmpq	352(%rdi), %rax
	jnb	.L387
	movq	(%rdx,%rax,8), %rax
	movq	48(%rbx), %rsi
	movsd	216(%rax), %xmm0
	movsd	%xmm0, 56(%rbx)
.L275:
	testq	%rsi, %rsi
	je	.L336
	ucomisd	%xmm4, %xmm4
	movq	(%rbx), %r8
	movq	352(%r8), %rcx
	movq	360(%r8), %rdx
	jnp	.L392
.L289:
	cmpq	%rcx, %rsi
	jnb	.L317
	movq	(%rdx,%rsi,8), %rax
	movsd	224(%rax), %xmm0
	movsd	%xmm0, 64(%rbx)
.L336:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L391:
	.cfi_restore_state
	movq	48(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L336
	movq	(%rdi), %rax
	movq	352(%rax), %rcx
	movq	360(%rax), %rdx
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L245:
	movsd	56(%rdi), %xmm0
	movq	(%rdi), %rdi
	movq	352(%rdi), %rcx
	movq	360(%rdi), %rdx
	movq	%rdi, %r8
	cmpq	%rcx, %rax
	jnb	.L387
	movq	(%rdx,%rax,8), %rsi
	movsd	216(%rsi), %xmm2
	ucomisd	%xmm2, %xmm0
	jp	.L249
	jne	.L249
	movsd	72(%rbx), %xmm1
	movsd	%xmm1, 152(%rbx)
.L249:
	movq	48(%rbx), %rsi
	movsd	64(%rbx), %xmm5
	cmpq	%rcx, %rsi
	jnb	.L317
	movq	(%rdx,%rsi,8), %r9
	movsd	224(%r9), %xmm3
	ucomisd	%xmm3, %xmm5
	jp	.L256
	jne	.L256
	ucomisd	%xmm2, %xmm0
	movsd	80(%rbx), %xmm1
	movsd	%xmm1, 160(%rbx)
	jp	.L256
	jne	.L256
	testq	%rax, %rax
	jne	.L393
	testq	%rsi, %rsi
	je	.L336
	movq	352(%rdi), %rcx
	movq	360(%rdi), %rdx
	movq	%rdi, %r8
	pxor	%xmm4, %xmm4
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L256:
	addq	$400, %rdi
	movapd	%xmm5, %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	40(%rbx), %rax
	movapd	%xmm0, %xmm4
	testq	%rax, %rax
	je	.L394
	movq	(%rbx), %rdi
	cmpb	$0, 8(%rbx)
	movq	352(%rdi), %rcx
	movq	360(%rdi), %rdx
	movq	%rdi, %r8
	je	.L246
	ucomisd	%xmm0, %xmm0
	jp	.L246
	movsd	56(%rbx), %xmm0
	cmpq	%rcx, %rax
	jnb	.L387
.L260:
	movq	(%rdx,%rax,8), %rax
	movsd	216(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L369
	movl	540(%rdi), %eax
	pxor	%xmm1, %xmm1
	movapd	%xmm4, %xmm2
	addq	$400, %rdi
	movsd	%xmm4, 8(%rsp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	152(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rdi
	movq	40(%rbx), %rax
	movsd	8(%rsp), %xmm4
	movsd	%xmm0, 56(%rbx)
	movq	352(%rdi), %rdx
	movq	360(%rdi), %rcx
	cmpq	%rdx, %rax
	jnb	.L387
	movq	(%rcx,%rax,8), %rsi
	movsd	216(%rsi), %xmm2
	comisd	%xmm2, %xmm0
	ja	.L376
.L266:
	movsd	152(%rbx), %xmm1
	comisd	72(%rbx), %xmm1
	movq	48(%rbx), %rsi
	ja	.L395
.L276:
	movsd	88(%rbx), %xmm2
	comisd	%xmm1, %xmm2
	jbe	.L396
	movq	(%rbx), %r8
	pxor	%xmm0, %xmm0
	movl	540(%r8), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	120(%rbx), %xmm0
	addsd	%xmm1, %xmm0
	comisd	%xmm2, %xmm0
	movsd	%xmm0, 152(%rbx)
	jbe	.L389
	movsd	%xmm2, 152(%rbx)
.L389:
	testq	%rsi, %rsi
	je	.L336
.L385:
	cmpb	$0, 8(%rbx)
	movq	352(%r8), %rcx
	movq	360(%r8), %rdx
	je	.L289
.L377:
	movsd	64(%rbx), %xmm5
.L288:
	cmpq	%rcx, %rsi
	jnb	.L317
	movq	(%rdx,%rsi,8), %rax
	movsd	224(%rax), %xmm0
	comisd	%xmm5, %xmm0
	jbe	.L372
	movl	540(%r8), %eax
	pxor	%xmm1, %xmm1
	movapd	%xmm4, %xmm2
	movapd	%xmm5, %xmm0
	leaq	400(%r8), %rdi
	cvtsi2sdq	%rax, %xmm1
	mulsd	160(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rdi
	movq	48(%rbx), %rsi
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 64(%rbx)
	movq	352(%rdi), %rax
	movq	360(%rdi), %rdx
	cmpq	%rax, %rsi
	jnb	.L317
	movq	(%rdx,%rsi,8), %rcx
	movsd	224(%rcx), %xmm3
	comisd	%xmm3, %xmm0
	ja	.L378
.L301:
	movsd	160(%rbx), %xmm0
	comisd	80(%rbx), %xmm0
	ja	.L397
.L320:
	movsd	96(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L336
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	540(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	128(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rbx)
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L392:
	cmpb	$0, 8(%rbx)
	je	.L289
	jmp	.L377
	.p2align 4,,10
	.p2align 3
.L394:
	movq	48(%rbx), %rsi
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L372:
	comisd	%xmm0, %xmm5
	jbe	.L336
	movl	540(%r8), %eax
	pxor	%xmm1, %xmm1
	movapd	%xmm4, %xmm2
	movapd	%xmm5, %xmm0
	leaq	400(%r8), %rdi
	cvtsi2sdq	%rax, %xmm1
	mulsd	160(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rdi
	movq	48(%rbx), %rsi
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 64(%rbx)
	movq	352(%rdi), %rax
	movq	360(%rdi), %rdx
	cmpq	%rax, %rsi
	jnb	.L317
	movq	(%rdx,%rsi,8), %rcx
	movsd	224(%rcx), %xmm3
	comisd	%xmm0, %xmm3
	jbe	.L301
.L378:
	movsd	%xmm3, 64(%rbx)
	movapd	%xmm3, %xmm1
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L397:
	movq	40(%rbx), %rsi
	addq	$400, %rdi
	cmpq	%rax, %rsi
	jnb	.L317
	movq	(%rdx,%rsi,8), %rax
	movsd	56(%rbx), %xmm0
	movsd	216(%rax), %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	144(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L309
	movsd	160(%rbx), %xmm0
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L369:
	comisd	%xmm1, %xmm0
	ja	.L398
	movq	48(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L336
	jmp	.L377
	.p2align 4,,10
	.p2align 3
.L396:
	testq	%rsi, %rsi
	je	.L336
	movq	(%rbx), %r8
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L395:
	addq	$400, %rdi
	cmpq	%rdx, %rsi
	jnb	.L317
	movq	(%rcx,%rsi,8), %rcx
	movsd	224(%rcx), %xmm3
	cmpq	%rdx, %rax
	jnb	.L387
	movsd	64(%rbx), %xmm1
	movsd	%xmm4, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	136(%rbx), %xmm1
	movsd	8(%rsp), %xmm4
	comisd	%xmm0, %xmm1
	jnb	.L280
	movsd	152(%rbx), %xmm1
	movq	48(%rbx), %rsi
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L398:
	movl	540(%rdi), %eax
	pxor	%xmm1, %xmm1
	movapd	%xmm4, %xmm2
	addq	$400, %rdi
	movsd	%xmm4, 8(%rsp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	152(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rdi
	movq	40(%rbx), %rax
	movsd	8(%rsp), %xmm4
	movsd	%xmm0, 56(%rbx)
	movq	352(%rdi), %rdx
	movq	360(%rdi), %rcx
	cmpq	%rdx, %rax
	jnb	.L387
	movq	(%rcx,%rax,8), %rsi
	movsd	216(%rsi), %xmm2
	comisd	%xmm0, %xmm2
	jbe	.L266
.L376:
	movsd	%xmm2, 56(%rbx)
	movapd	%xmm2, %xmm0
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L309:
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
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L280:
	movq	(%rbx), %r8
	pxor	%xmm1, %xmm1
	movsd	152(%rbx), %xmm0
	movq	48(%rbx), %rsi
	movl	540(%r8), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	104(%rbx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	72(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	movsd	%xmm0, 152(%rbx)
	jbe	.L389
	movsd	%xmm1, 152(%rbx)
	testq	%rsi, %rsi
	je	.L336
	jmp	.L385
.L393:
	pxor	%xmm4, %xmm4
	jmp	.L260
.L387:
	movq	%rax, %rsi
.L317:
	leaq	.LC44(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8185:
	.size	_ZN3wze6engine6camera6UpdateEv, .-_ZN3wze6engine6camera6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9TransformEddttd
	.type	_ZN3wze6engine6camera9TransformEddttd, @function
_ZN3wze6engine6camera9TransformEddttd:
.LFB8186:
	.cfi_startproc
	movapd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movq	(%rdi), %rax
	movl	%edx, %ecx
	ucomisd	%xmm0, %xmm2
	movzwl	%si, %edx
	movzwl	%cx, %esi
	movzwl	42(%rax), %ecx
	jp	.L400
	jne	.L400
	movq	.LC46(%rip), %xmm0
	movsd	.LC45(%rip), %xmm5
	movapd	%xmm3, %xmm2
	andpd	%xmm0, %xmm2
	movapd	%xmm0, %xmm4
	ucomisd	%xmm2, %xmm5
	ja	.L410
.L402:
	cvttsd2sil	%xmm3, %eax
	movl	%edx, %edi
	movapd	%xmm1, %xmm2
	sarl	%edi
	andpd	%xmm0, %xmm2
	subl	%edi, %eax
	ucomisd	%xmm2, %xmm5
	ja	.L411
.L403:
	cvttsd2sil	%xmm1, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
.L404:
	salq	$32, %rcx
	movl	%edx, %edx
	orq	%rcx, %rax
	movq	%rsi, %rcx
	salq	$32, %rcx
	orq	%rcx, %rdx
	ret
	.p2align 4,,10
	.p2align 3
.L400:
	mulsd	32(%rdi), %xmm2
	pxor	%xmm4, %xmm4
	movq	.LC46(%rip), %xmm0
	cvtsi2sdl	%edx, %xmm4
	movsd	.LC45(%rip), %xmm5
	movapd	%xmm0, %xmm7
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L412
.L405:
	cvttsd2sil	%xmm4, %edx
	pxor	%xmm4, %xmm4
	movapd	%xmm0, %xmm7
	cvtsi2sdl	%esi, %xmm4
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L413
.L406:
	cvttsd2sil	%xmm4, %esi
	movsd	16(%rdi), %xmm4
	movapd	%xmm0, %xmm6
	divsd	%xmm2, %xmm4
	addsd	56(%rdi), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	andpd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm5
	ja	.L414
.L407:
	cvttsd2sil	%xmm3, %eax
	movsd	24(%rdi), %xmm3
	movl	%edx, %r8d
	sarl	%r8d
	divsd	%xmm2, %xmm3
	subl	%r8d, %eax
	addsd	64(%rdi), %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	andpd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm5
	ja	.L415
	cvttsd2sil	%xmm2, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
	jmp	.L404
	.p2align 4,,10
	.p2align 3
.L415:
	cvttsd2siq	%xmm2, %rdi
	pxor	%xmm1, %xmm1
	movsd	.LC0(%rip), %xmm4
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
	jmp	.L404
	.p2align 4,,10
	.p2align 3
.L414:
	cvttsd2siq	%xmm3, %rax
	pxor	%xmm4, %xmm4
	andnpd	%xmm3, %xmm6
	movsd	.LC0(%rip), %xmm8
	cvtsi2sdq	%rax, %xmm4
	movapd	%xmm4, %xmm7
	cmpnlesd	%xmm3, %xmm7
	andpd	%xmm8, %xmm7
	subsd	%xmm7, %xmm4
	movapd	%xmm4, %xmm3
	orpd	%xmm6, %xmm3
	jmp	.L407
	.p2align 4,,10
	.p2align 3
.L413:
	cvttsd2siq	%xmm4, %rax
	pxor	%xmm6, %xmm6
	andnpd	%xmm4, %xmm7
	movsd	.LC0(%rip), %xmm9
	cvtsi2sdq	%rax, %xmm6
	movapd	%xmm6, %xmm8
	cmpnlesd	%xmm4, %xmm8
	andpd	%xmm9, %xmm8
	subsd	%xmm8, %xmm6
	orpd	%xmm7, %xmm6
	movapd	%xmm6, %xmm4
	jmp	.L406
	.p2align 4,,10
	.p2align 3
.L412:
	cvttsd2siq	%xmm4, %rax
	pxor	%xmm6, %xmm6
	andnpd	%xmm4, %xmm7
	movsd	.LC0(%rip), %xmm9
	cvtsi2sdq	%rax, %xmm6
	movapd	%xmm6, %xmm8
	cmpnlesd	%xmm4, %xmm8
	andpd	%xmm9, %xmm8
	subsd	%xmm8, %xmm6
	orpd	%xmm7, %xmm6
	movapd	%xmm6, %xmm4
	jmp	.L405
	.p2align 4,,10
	.p2align 3
.L411:
	cvttsd2siq	%xmm1, %rdi
	pxor	%xmm2, %xmm2
	movsd	.LC0(%rip), %xmm4
	andnpd	%xmm1, %xmm0
	cvtsi2sdq	%rdi, %xmm2
	movapd	%xmm2, %xmm3
	cmpnlesd	%xmm1, %xmm3
	andpd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm1
	orpd	%xmm0, %xmm1
	jmp	.L403
	.p2align 4,,10
	.p2align 3
.L410:
	cvttsd2siq	%xmm3, %rax
	pxor	%xmm2, %xmm2
	movsd	.LC0(%rip), %xmm7
	andnpd	%xmm3, %xmm4
	cvtsi2sdq	%rax, %xmm2
	movapd	%xmm2, %xmm6
	cmpnlesd	%xmm3, %xmm6
	andpd	%xmm7, %xmm6
	subsd	%xmm6, %xmm2
	movapd	%xmm2, %xmm3
	orpd	%xmm4, %xmm3
	jmp	.L402
	.cfi_endproc
.LFE8186:
	.size	_ZN3wze6engine6camera9TransformEddttd, .-_ZN3wze6engine6camera9TransformEddttd
	.section	.rodata.cst8,"aM",@progbits,8
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
	.align 8
.LC45:
	.long	0
	.long	1127219200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC46:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
