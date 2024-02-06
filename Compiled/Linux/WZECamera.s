	.file	"WZECamera.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6cameraC2EPS0_
	.type	_ZN3wze6engine6cameraC2EPS0_, @function
_ZN3wze6engine6cameraC2EPS0_:
.LFB8145:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	movq	.LC1(%rip), %rax
	pxor	%xmm1, %xmm1
	movq	%rsi, (%rdi)
	movups	%xmm0, 8(%rdi)
	movups	%xmm0, 48(%rdi)
	movapd	.LC0(%rip), %xmm0
	movq	%rax, 80(%rdi)
	movq	.LC3(%rip), %rax
	movups	%xmm0, 64(%rdi)
	movq	.LC2(%rip), %xmm0
	movb	$0, 24(%rdi)
	movq	%rax, 112(%rdi)
	movups	%xmm1, 32(%rdi)
	movups	%xmm0, 96(%rdi)
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
.LC7:
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
	leaq	.LC7(%rip), %rdi
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
.LC8:
	.string	"wze::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC9:
	.string	"wze::engine.camera.Bind(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC10:
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
	cmpq	592(%rax), %rsi
	jnb	.L17
	movq	600(%rax), %rax
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
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L23:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L24:
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6camera4BindEy, .-_ZN3wze6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC12:
	.string	"wze::engine.camera.BindX(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC13:
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
	cmpq	592(%rax), %rsi
	jnb	.L27
	movq	600(%rax), %rax
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
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L33:
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L34:
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6camera5BindXEy, .-_ZN3wze6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC15:
	.string	"wze::engine.camera.BindY(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC16:
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
	cmpq	592(%rax), %rsi
	jnb	.L37
	movq	600(%rax), %rax
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
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	leaq	.LC16(%rip), %rdi
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
	.globl	_ZN3wze6engine6camera11GetMinSpeedEv
	.type	_ZN3wze6engine6camera11GetMinSpeedEv, @function
_ZN3wze6engine6camera11GetMinSpeedEv:
.LFB8157:
	.cfi_startproc
	movsd	72(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6camera11GetMinSpeedEv, .-_ZN3wze6engine6camera11GetMinSpeedEv
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.camera.SetMinSpeed(): MinSpeed must not be less than or equal to 0\nParams: MinSpeed: %lf\n"
	.align 8
.LC18:
	.string	"wze::engine.camera.SetMinSpeed(): MinSpeed must not be greater than MaxSpeed\nParams: MinSpeed: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera11SetMinSpeedEd
	.type	_ZN3wze6engine6camera11SetMinSpeedEd, @function
_ZN3wze6engine6camera11SetMinSpeedEd:
.LFB8158:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	jnb	.L62
	comisd	80(%rdi), %xmm0
	ja	.L63
	movsd	112(%rdi), %xmm1
	ucomisd	72(%rdi), %xmm1
	jp	.L54
	jne	.L54
	movsd	%xmm0, 112(%rdi)
.L54:
	movsd	%xmm0, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L62:
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6camera11SetMinSpeedEd, .-_ZN3wze6engine6camera11SetMinSpeedEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera11GetMaxSpeedEv
	.type	_ZN3wze6engine6camera11GetMaxSpeedEv, @function
_ZN3wze6engine6camera11GetMaxSpeedEv:
.LFB8159:
	.cfi_startproc
	movsd	80(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6camera11GetMaxSpeedEv, .-_ZN3wze6engine6camera11GetMaxSpeedEv
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than or equal to 0\nParams: MaxSpeed: %lf\n"
	.align 8
.LC20:
	.string	"wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than MinSpeed\nParams: MaxSpeed: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera11SetMaxSpeedEd
	.type	_ZN3wze6engine6camera11SetMaxSpeedEd, @function
_ZN3wze6engine6camera11SetMaxSpeedEd:
.LFB8160:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	jnb	.L78
	movsd	72(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L79
	movsd	112(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L70
	movsd	%xmm0, 112(%rdi)
.L70:
	movsd	%xmm0, 80(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L79:
	.cfi_restore_state
	leaq	.LC20(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L78:
	leaq	.LC19(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6camera11SetMaxSpeedEd, .-_ZN3wze6engine6camera11SetMaxSpeedEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera19GetDecelerationRateEv
	.type	_ZN3wze6engine6camera19GetDecelerationRateEv, @function
_ZN3wze6engine6camera19GetDecelerationRateEv:
.LFB8161:
	.cfi_startproc
	movsd	88(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6camera19GetDecelerationRateEv, .-_ZN3wze6engine6camera19GetDecelerationRateEv
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wze::engine.camera.SetDecelerationRate(): DecelerationRate must not be less than or equal to 0\nParams: DecelerationRate: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera19SetDecelerationRateEd
	.type	_ZN3wze6engine6camera19SetDecelerationRateEd, @function
_ZN3wze6engine6camera19SetDecelerationRateEd:
.LFB8162:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L89
	movsd	%xmm0, 88(%rdi)
	ret
.L89:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6camera19SetDecelerationRateEd, .-_ZN3wze6engine6camera19SetDecelerationRateEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera19GetAccelerationRateEv
	.type	_ZN3wze6engine6camera19GetAccelerationRateEv, @function
_ZN3wze6engine6camera19GetAccelerationRateEv:
.LFB8163:
	.cfi_startproc
	movsd	96(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6camera19GetAccelerationRateEv, .-_ZN3wze6engine6camera19GetAccelerationRateEv
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.camera.SetAccelerationRate(): AccelerationRate must not be less than or equal to 0\nParams: AccelerationRate: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera19SetAccelerationRateEd
	.type	_ZN3wze6engine6camera19SetAccelerationRateEd, @function
_ZN3wze6engine6camera19SetAccelerationRateEd:
.LFB8164:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L99
	movsd	%xmm0, 96(%rdi)
	ret
.L99:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC22(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6camera19SetAccelerationRateEd, .-_ZN3wze6engine6camera19SetAccelerationRateEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera16GetSlowDownRangeEv
	.type	_ZN3wze6engine6camera16GetSlowDownRangeEv, @function
_ZN3wze6engine6camera16GetSlowDownRangeEv:
.LFB8165:
	.cfi_startproc
	movsd	104(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6camera16GetSlowDownRangeEv, .-_ZN3wze6engine6camera16GetSlowDownRangeEv
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"wze::engine.camera.SetSlowDownRange(): SlowDownRange must not be less than or equal to 0\nParams: SlowDownRange: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera16SetSlowDownRangeEd
	.type	_ZN3wze6engine6camera16SetSlowDownRangeEd, @function
_ZN3wze6engine6camera16SetSlowDownRangeEd:
.LFB8166:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L109
	movsd	%xmm0, 104(%rdi)
	ret
.L109:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6camera16SetSlowDownRangeEd, .-_ZN3wze6engine6camera16SetSlowDownRangeEd
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.type	_ZN3wze6engine6camera6UpdateEv, @function
_ZN3wze6engine6camera6UpdateEv:
.LFB8167:
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
	jne	.L111
	testq	%rax, %rax
	je	.L219
	movq	(%rdi), %rbp
.L112:
	movq	592(%rbp), %rcx
	movq	600(%rbp), %rdx
	cmpq	%rcx, %rax
	jnb	.L234
	movq	(%rdx,%rax,8), %rax
	movq	40(%rbx), %rsi
	movsd	168(%rax), %xmm0
	movsd	%xmm0, 48(%rbx)
	testq	%rsi, %rsi
	je	.L187
	xorl	%r12d, %r12d
.L139:
	cmpq	%rcx, %rsi
	jnb	.L229
	movq	(%rdx,%rsi,8), %rax
	movsd	176(%rax), %xmm0
	movsd	%xmm0, 56(%rbx)
.L156:
	testb	%r12b, %r12b
	je	.L187
.L134:
	movsd	112(%rbx), %xmm0
	comisd	72(%rbx), %xmm0
	ja	.L239
.L163:
	movsd	80(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L187
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movl	724(%rax), %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	96(%rbx), %xmm2
	addsd	%xmm2, %xmm0
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rbx)
.L187:
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
.L219:
	.cfi_restore_state
	movq	40(%rdi), %rsi
	testq	%rsi, %rsi
	je	.L187
	movq	(%rdi), %rbp
	movq	592(%rbp), %rcx
	movq	600(%rbp), %rdx
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L111:
	movq	(%rdi), %rbp
	movsd	48(%rdi), %xmm0
	movq	592(%rbp), %rcx
	movq	600(%rbp), %rdx
	cmpq	%rcx, %rax
	jnb	.L234
	movq	(%rdx,%rax,8), %rsi
	movsd	168(%rsi), %xmm2
	movq	40(%rdi), %rsi
	ucomisd	%xmm2, %xmm0
	jp	.L115
	jne	.L115
	movsd	56(%rdi), %xmm4
	cmpq	%rcx, %rsi
	jnb	.L229
	movq	(%rdx,%rsi,8), %rdi
	movsd	176(%rdi), %xmm3
	ucomisd	%xmm3, %xmm4
	jp	.L118
	jne	.L118
	movsd	72(%rbx), %xmm1
	movsd	%xmm1, 112(%rbx)
	testq	%rax, %rax
	je	.L240
	pxor	%xmm2, %xmm2
.L120:
	movq	(%rdx,%rax,8), %rax
	movsd	168(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L221
	movl	724(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	608(%rbp), %rdi
	movsd	%xmm2, 8(%rsp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	112(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rbp
	movq	32(%rbx), %rsi
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 48(%rbx)
	movq	592(%rbp), %rcx
	movq	600(%rbp), %rdx
	cmpq	%rcx, %rsi
	jnb	.L229
	movq	(%rdx,%rsi,8), %rax
	movq	40(%rbx), %rsi
	movsd	168(%rax), %xmm1
	comisd	%xmm1, %xmm0
	ja	.L145
.L236:
	testq	%rsi, %rsi
	je	.L134
	movzbl	24(%rbx), %eax
	testb	%al, %al
	je	.L139
	movsd	56(%rbx), %xmm4
	movl	%eax, %r12d
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L115:
	leaq	608(%rbp), %rdi
	cmpq	%rcx, %rsi
	jnb	.L229
	movq	(%rdx,%rsi,8), %rax
	movsd	56(%rbx), %xmm4
	movsd	176(%rax), %xmm3
.L173:
	movapd	%xmm4, %xmm1
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	32(%rbx), %rax
	movapd	%xmm0, %xmm2
	testq	%rax, %rax
	jne	.L123
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L187
	ucomisd	%xmm0, %xmm0
	movq	(%rbx), %rbp
	movq	592(%rbp), %rcx
	movq	600(%rbp), %rdx
	setnp	%r12b
	andb	24(%rbx), %r12b
	je	.L139
.L225:
	movsd	56(%rbx), %xmm4
	xorl	%r12d, %r12d
.L136:
	cmpq	%rcx, %rsi
	jnb	.L229
.L148:
	movq	(%rdx,%rsi,8), %rax
	movsd	176(%rax), %xmm0
	comisd	%xmm4, %xmm0
	jbe	.L222
	movl	724(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	608(%rbp), %rdi
	movapd	%xmm4, %xmm0
	cvtsi2sdq	%rax, %xmm1
	mulsd	112(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rbp
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	600(%rbp), %rax
	cmpq	592(%rbp), %rsi
	jnb	.L229
	movq	(%rax,%rsi,8), %rax
	movsd	176(%rax), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L134
.L227:
	movsd	%xmm1, 56(%rbx)
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L239:
	leaq	584(%rbp), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	(%rbx), %rax
	movq	32(%rbx), %rsi
	movsd	%xmm0, 8(%rsp)
	leaq	584(%rax), %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movsd	56(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	leaq	608(%rbp), %rdi
	movapd	%xmm0, %xmm2
	movsd	48(%rbx), %xmm0
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movsd	104(%rbx), %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L165
	movsd	112(%rbx), %xmm0
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L123:
	movq	(%rbx), %rbp
	cmpb	$0, 24(%rbx)
	movq	592(%rbp), %rcx
	movq	600(%rbp), %rdx
	je	.L112
	ucomisd	%xmm0, %xmm0
	jp	.L112
	movsd	48(%rbx), %xmm0
	cmpq	%rcx, %rax
	jb	.L120
.L234:
	movq	%rax, %rsi
.L229:
	leaq	.LC24(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L165:
	movq	(%rbx), %rax
	pxor	%xmm0, %xmm0
	movsd	112(%rbx), %xmm1
	movl	724(%rax), %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	88(%rbx), %xmm0
	subsd	%xmm0, %xmm1
	movsd	72(%rbx), %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%rbx)
	jmp	.L187
	.p2align 4,,10
	.p2align 3
.L118:
	leaq	608(%rbp), %rdi
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L222:
	comisd	%xmm0, %xmm4
	jbe	.L156
	movl	724(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	608(%rbp), %rdi
	movapd	%xmm4, %xmm0
	cvtsi2sdq	%rax, %xmm1
	mulsd	112(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rbp
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	600(%rbp), %rax
	cmpq	592(%rbp), %rsi
	jnb	.L229
	movq	(%rax,%rsi,8), %rax
	movsd	176(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L134
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L240:
	testq	%rsi, %rsi
	je	.L187
	xorl	%r12d, %r12d
	pxor	%xmm2, %xmm2
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L221:
	comisd	%xmm1, %xmm0
	ja	.L140
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L187
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L140:
	movl	724(%rbp), %eax
	pxor	%xmm1, %xmm1
	leaq	608(%rbp), %rdi
	movsd	%xmm2, 8(%rsp)
	cvtsi2sdq	%rax, %xmm1
	mulsd	112(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rbp
	movq	32(%rbx), %rsi
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 48(%rbx)
	movq	592(%rbp), %rcx
	movq	600(%rbp), %rdx
	cmpq	%rcx, %rsi
	jnb	.L229
	movq	(%rdx,%rsi,8), %rax
	movq	40(%rbx), %rsi
	movsd	168(%rax), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L236
.L145:
	movsd	%xmm1, 48(%rbx)
	jmp	.L236
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6camera6UpdateEv, .-_ZN3wze6engine6camera6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9TransformEddttd
	.type	_ZN3wze6engine6camera9TransformEddttd, @function
_ZN3wze6engine6camera9TransformEddttd:
.LFB8168:
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
	jp	.L242
	jne	.L242
	movapd	%xmm3, %xmm0
	call	round@PLT
	movl	%ebx, %edx
	cvttsd2sil	%xmm0, %ebp
	sarl	%edx
	movq	%r15, %xmm0
	subl	%edx, %ebp
.L247:
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
.L242:
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
	jmp	.L247
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6camera9TransformEddttd, .-_ZN3wze6engine6camera9TransformEddttd
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1072693248
	.long	0
	.long	1070596096
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072168960
	.section	.rodata.cst16
	.align 16
.LC2:
	.long	-755914244
	.long	1062232653
	.long	0
	.long	0
	.set	.LC3,.LC0+8
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
