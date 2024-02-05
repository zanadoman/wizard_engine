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
	movsd	.LC1(%rip), %xmm0
	movb	$0, 24(%rdi)
	unpcklpd	%xmm0, %xmm0
	movq	%rax, 96(%rdi)
	movups	%xmm1, 32(%rdi)
	movups	%xmm0, 64(%rdi)
	movups	%xmm0, 80(%rdi)
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
.LC5:
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
	leaq	.LC5(%rip), %rdi
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
.LC6:
	.string	"wze::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC7:
	.string	"wze::engine.camera.Bind(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC8:
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
	cmpq	576(%rax), %rsi
	jnb	.L17
	movq	584(%rax), %rax
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
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L23:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L24:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6camera4BindEy, .-_ZN3wze6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC10:
	.string	"wze::engine.camera.BindX(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC11:
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
	cmpq	576(%rax), %rsi
	jnb	.L27
	movq	584(%rax), %rax
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
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L33:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L34:
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6camera5BindXEy, .-_ZN3wze6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC13:
	.string	"wze::engine.camera.BindY(): Actor does not exist\nParams: Actor: %lld\n"
	.align 8
.LC14:
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
	cmpq	576(%rax), %rsi
	jnb	.L37
	movq	584(%rax), %rax
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
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	leaq	.LC14(%rip), %rdi
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
.LC15:
	.string	"wze::engine.camera.SetMinSpeed(): MinSpeed must not be less than or equal to 0\nParams: Speed: %lf\n"
	.align 8
.LC16:
	.string	"wze::engine.camera.SetMinSpeed(): MinSpeed must not be greater than MaxSpeed\nParams: Speed: %lf\n"
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
	movsd	96(%rdi), %xmm1
	ucomisd	72(%rdi), %xmm1
	jp	.L54
	jne	.L54
	movsd	%xmm0, 96(%rdi)
.L54:
	movsd	%xmm0, 72(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L62:
	leaq	.LC15(%rip), %rdi
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
.LC17:
	.string	"wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than or equal to 0\nParams: Speed: %lf\n"
	.align 8
.LC18:
	.string	"wze::engine.camera.SetMaxSpeed(): MaxSpeed must not be less than MinSpeed\nParams: Speed: %lf\n"
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
	movsd	96(%rdi), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L70
	movsd	%xmm0, 96(%rdi)
.L70:
	movsd	%xmm0, 80(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L79:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L78:
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6camera11SetMaxSpeedEd, .-_ZN3wze6engine6camera11SetMaxSpeedEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera15GetAccelerationEv
	.type	_ZN3wze6engine6camera15GetAccelerationEv, @function
_ZN3wze6engine6camera15GetAccelerationEv:
.LFB8161:
	.cfi_startproc
	movsd	88(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6camera15GetAccelerationEv, .-_ZN3wze6engine6camera15GetAccelerationEv
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"wze::engine.camera.SetAcceleration(): Acceleration must not be less than or equal to 0\nParams: Acceleration: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera15SetAccelerationEd
	.type	_ZN3wze6engine6camera15SetAccelerationEd, @function
_ZN3wze6engine6camera15SetAccelerationEd:
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
	leaq	.LC19(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6camera15SetAccelerationEd, .-_ZN3wze6engine6camera15SetAccelerationEd
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.type	_ZN3wze6engine6camera6UpdateEv, @function
_ZN3wze6engine6camera6UpdateEv:
.LFB8163:
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
	movzbl	24(%rdi), %ebp
	movq	%rdi, %rbx
	movq	32(%rdi), %rsi
	testb	%bpl, %bpl
	jne	.L91
	testq	%rsi, %rsi
	je	.L180
	movq	(%rdi), %rax
	movq	576(%rax), %rcx
	movq	584(%rax), %rdi
	cmpq	%rcx, %rsi
	jnb	.L178
	movq	(%rdi,%rsi,8), %rdx
	movsd	168(%rdx), %xmm0
	movq	40(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	testq	%rdx, %rdx
	je	.L158
.L126:
	cmpq	%rcx, %rdx
	jnb	.L179
	movq	(%rdi,%rdx,8), %rdx
	movsd	176(%rdx), %xmm0
	movsd	%xmm0, 56(%rbx)
.L135:
	testb	%bpl, %bpl
	je	.L158
.L115:
	movsd	96(%rbx), %xmm2
	movsd	80(%rbx), %xmm0
	comisd	%xmm2, %xmm0
	jbe	.L158
	movl	708(%rax), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	mulsd	88(%rbx), %xmm1
	addsd	%xmm2, %xmm1
	minsd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
.L158:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	.cfi_restore_state
	movq	40(%rdi), %rdx
	testq	%rdx, %rdx
	je	.L158
	movq	(%rdi), %rax
	movq	576(%rax), %rcx
	movq	584(%rax), %rdi
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L91:
	movq	(%rdi), %rax
	movsd	48(%rdi), %xmm0
	movq	576(%rax), %rcx
	movq	584(%rax), %rdi
	cmpq	%rcx, %rsi
	jnb	.L178
	movq	(%rdi,%rsi,8), %rdx
	movsd	168(%rdx), %xmm2
	movq	40(%rbx), %rdx
	ucomisd	%xmm2, %xmm0
	jp	.L150
	je	.L95
.L150:
	testq	%rsi, %rsi
	je	.L148
	comisd	%xmm0, %xmm2
	jbe	.L169
	leaq	592(%rax), %r12
	cmpq	%rcx, %rdx
	jnb	.L179
	movq	(%rdi,%rdx,8), %rax
	movsd	56(%rbx), %xmm1
	movq	%r12, %rdi
	movsd	176(%rax), %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movq	%r12, %rdi
	movapd	%xmm0, %xmm2
	movsd	48(%rbx), %xmm0
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	96(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rax
	movq	32(%rbx), %rsi
	movsd	%xmm0, 48(%rbx)
	movq	576(%rax), %rcx
	movq	584(%rax), %rdi
	cmpq	%rcx, %rsi
	jnb	.L178
	movq	(%rdi,%rsi,8), %rdx
	movsd	168(%rdx), %xmm1
	movq	40(%rbx), %rdx
	comisd	%xmm1, %xmm0
	ja	.L122
.L175:
	testq	%rdx, %rdx
	je	.L115
	movzbl	24(%rbx), %r8d
	testb	%r8b, %r8b
	jne	.L147
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L95:
	movsd	56(%rbx), %xmm0
	cmpq	%rcx, %rdx
	jnb	.L179
	movq	(%rdi,%rdx,8), %r8
	ucomisd	176(%r8), %xmm0
	jp	.L148
	jne	.L148
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, 96(%rbx)
.L148:
	testq	%rdx, %rdx
	je	.L158
	xorl	%r8d, %r8d
.L147:
	movsd	56(%rbx), %xmm1
	cmpq	%rcx, %rdx
	jnb	.L179
	movq	(%rdi,%rdx,8), %rdx
	movsd	176(%rdx), %xmm3
	comisd	%xmm1, %xmm3
	jbe	.L170
	leaq	592(%rax), %rbp
	cmpq	%rcx, %rsi
	jnb	.L178
	movq	(%rdi,%rsi,8), %rax
	movsd	48(%rbx), %xmm0
	movq	%rbp, %rdi
	movsd	168(%rax), %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movq	%rbp, %rdi
	movapd	%xmm0, %xmm2
	movsd	56(%rbx), %xmm0
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	96(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rax
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	584(%rax), %rdx
	cmpq	576(%rax), %rsi
	jnb	.L178
	movq	(%rdx,%rsi,8), %rdx
	movsd	176(%rdx), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L115
.L177:
	movsd	%xmm1, 56(%rbx)
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L170:
	comisd	%xmm3, %xmm1
	movl	%r8d, %ebp
	jbe	.L135
	leaq	592(%rax), %rbp
	cmpq	%rcx, %rsi
	jnb	.L178
	movq	(%rdi,%rsi,8), %rax
	movsd	48(%rbx), %xmm0
	movq	%rbp, %rdi
	movsd	168(%rax), %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movq	%rbp, %rdi
	movapd	%xmm0, %xmm2
	movsd	56(%rbx), %xmm0
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	96(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rax
	movq	40(%rbx), %rsi
	movsd	%xmm0, 56(%rbx)
	movq	584(%rax), %rdx
	cmpq	576(%rax), %rsi
	jnb	.L178
	movq	(%rdx,%rsi,8), %rdx
	movsd	176(%rdx), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L115
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L169:
	comisd	%xmm2, %xmm0
	jbe	.L148
	leaq	592(%rax), %r12
	cmpq	%rcx, %rdx
	jnb	.L179
	movq	(%rdi,%rdx,8), %rax
	movsd	56(%rbx), %xmm1
	movq	%r12, %rdi
	movsd	176(%rax), %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movq	%r12, %rdi
	movapd	%xmm0, %xmm2
	movsd	48(%rbx), %xmm0
	movl	708(%rax), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	96(%rbx), %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rax
	movq	32(%rbx), %rsi
	movsd	%xmm0, 48(%rbx)
	movq	576(%rax), %rcx
	movq	584(%rax), %rdi
	cmpq	%rcx, %rsi
	jnb	.L178
	movq	(%rdi,%rsi,8), %rdx
	movsd	168(%rdx), %xmm1
	movq	40(%rbx), %rdx
	comisd	%xmm0, %xmm1
	jbe	.L175
.L122:
	movsd	%xmm1, 48(%rbx)
	jmp	.L175
.L179:
	movq	%rdx, %rsi
.L178:
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6camera6UpdateEv, .-_ZN3wze6engine6camera6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9TransformEddttd
	.type	_ZN3wze6engine6camera9TransformEddttd, @function
_ZN3wze6engine6camera9TransformEddttd:
.LFB8164:
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
	jp	.L182
	jne	.L182
	movapd	%xmm3, %xmm0
	call	round@PLT
	movl	%ebx, %edx
	cvttsd2sil	%xmm0, %ebp
	sarl	%edx
	movq	%r15, %xmm0
	subl	%edx, %ebp
.L187:
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
.L182:
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
	jmp	.L187
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6camera9TransformEddttd, .-_ZN3wze6engine6camera9TransformEddttd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
