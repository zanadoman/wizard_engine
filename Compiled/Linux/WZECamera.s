	.file	"WZECamera.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6cameraC2EPS0_
	.type	_ZN3wze6engine6cameraC2EPS0_, @function
_ZN3wze6engine6cameraC2EPS0_:
.LFB8147:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	movq	.LC0(%rip), %rax
	movq	%rsi, (%rdi)
	movups	%xmm0, 8(%rdi)
	movups	%xmm0, 24(%rdi)
	pxor	%xmm0, %xmm0
	movq	%rax, 40(%rdi)
	movups	%xmm0, 48(%rdi)
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6cameraC2EPS0_, .-_ZN3wze6engine6cameraC2EPS0_
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetXEv
	.type	_ZN3wze6engine6camera4GetXEv, @function
_ZN3wze6engine6camera4GetXEv:
.LFB8149:
	.cfi_startproc
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6camera4GetXEv, .-_ZN3wze6engine6camera4GetXEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"wze::engine.camera.SetX(): X must not be NaN\nParams: X: %lf\n"
	.align 8
.LC4:
	.string	"wze::engine.camera.SetX(): Illegal to modify X while X is bound to an Actor\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4SetXEd
	.type	_ZN3wze6engine6camera4SetXEd, @function
_ZN3wze6engine6camera4SetXEd:
.LFB8150:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L11
	cmpq	$0, 48(%rdi)
	jne	.L12
	movsd	%xmm0, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L12:
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6camera4SetXEd, .-_ZN3wze6engine6camera4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4GetYEv
	.type	_ZN3wze6engine6camera4GetYEv, @function
_ZN3wze6engine6camera4GetYEv:
.LFB8151:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6camera4GetYEv, .-_ZN3wze6engine6camera4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.camera.SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.camera.SetY(): Illegal to modify Y while Y is bound to an Actor\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4SetYEd
	.type	_ZN3wze6engine6camera4SetYEd, @function
_ZN3wze6engine6camera4SetYEd:
.LFB8152:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L21
	cmpq	$0, 56(%rdi)
	jne	.L22
	movsd	%xmm0, 16(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6camera4SetYEd, .-_ZN3wze6engine6camera4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetXEv
	.type	_ZN3wze6engine6camera10GetOffsetXEv, @function
_ZN3wze6engine6camera10GetOffsetXEv:
.LFB8153:
	.cfi_startproc
	movsd	24(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6camera10GetOffsetXEv, .-_ZN3wze6engine6camera10GetOffsetXEv
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\nParams: OffsetX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetXEd
	.type	_ZN3wze6engine6camera10SetOffsetXEd, @function
_ZN3wze6engine6camera10SetOffsetXEd:
.LFB8154:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	jp	.L32
	movsd	%xmm0, 24(%rdi)
	ret
.L32:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6camera10SetOffsetXEd, .-_ZN3wze6engine6camera10SetOffsetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetYEv
	.type	_ZN3wze6engine6camera10GetOffsetYEv, @function
_ZN3wze6engine6camera10GetOffsetYEv:
.LFB8155:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6camera10GetOffsetYEv, .-_ZN3wze6engine6camera10GetOffsetYEv
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\nParams: OffsetY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetYEd
	.type	_ZN3wze6engine6camera10SetOffsetYEd, @function
_ZN3wze6engine6camera10SetOffsetYEd:
.LFB8156:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	jp	.L42
	movsd	%xmm0, 32(%rdi)
	ret
.L42:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6camera10SetOffsetYEd, .-_ZN3wze6engine6camera10SetOffsetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7GetZoomEv
	.type	_ZN3wze6engine6camera7GetZoomEv, @function
_ZN3wze6engine6camera7GetZoomEv:
.LFB8157:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6camera7GetZoomEv, .-_ZN3wze6engine6camera7GetZoomEv
	.section	.rodata.str1.8
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
.LFB8158:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L54
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L55
	movsd	%xmm0, 40(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L54:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L55:
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6camera7SetZoomEd, .-_ZN3wze6engine6camera7SetZoomEd
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.camera.Bind(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC13:
	.string	"wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.type	_ZN3wze6engine6camera4BindEy, @function
_ZN3wze6engine6camera4BindEy:
.LFB8159:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L67
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	248(%rdx), %rsi
	jnb	.L59
	movq	256(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L59
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	jp	.L61
	je	.L68
.L61:
	movq	%rax, %xmm0
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, 48(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	pxor	%xmm0, %xmm0
	movups	%xmm0, 8(%rdi)
	ret
.L59:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L68:
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6camera4BindEy, .-_ZN3wze6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.camera.BindX(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC15:
	.string	"wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.type	_ZN3wze6engine6camera5BindXEy, @function
_ZN3wze6engine6camera5BindXEy:
.LFB8160:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L74
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	248(%rdx), %rsi
	jnb	.L71
	movq	256(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L71
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	jp	.L75
	je	.L81
.L75:
	movq	%rax, 48(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L74:
	xorl	%edx, %edx
	movq	%rdx, 48(%rdi)
	ret
.L71:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6camera5BindXEy, .-_ZN3wze6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.camera.BindY(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC17:
	.string	"wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.type	_ZN3wze6engine6camera5BindYEy, @function
_ZN3wze6engine6camera5BindYEy:
.LFB8161:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L87
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	248(%rdx), %rsi
	jnb	.L84
	movq	256(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L84
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	jp	.L88
	je	.L94
.L88:
	movq	%rax, 56(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L87:
	xorl	%edx, %edx
	movq	%rdx, 56(%rdi)
	ret
.L84:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6camera5BindYEy, .-_ZN3wze6engine6camera5BindYEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UnbindEv
	.type	_ZN3wze6engine6camera6UnbindEv, @function
_ZN3wze6engine6camera6UnbindEv:
.LFB8162:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 48(%rdi)
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6camera6UnbindEv, .-_ZN3wze6engine6camera6UnbindEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.type	_ZN3wze6engine6camera7UnbindXEv, @function
_ZN3wze6engine6camera7UnbindXEv:
.LFB8163:
	.cfi_startproc
	movq	$0, 48(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6camera7UnbindXEv, .-_ZN3wze6engine6camera7UnbindXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.type	_ZN3wze6engine6camera7UnbindYEv, @function
_ZN3wze6engine6camera7UnbindYEv:
.LFB8164:
	.cfi_startproc
	movq	$0, 56(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6camera7UnbindYEv, .-_ZN3wze6engine6camera7UnbindYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.type	_ZN3wze6engine6camera9GetXActorEv, @function
_ZN3wze6engine6camera9GetXActorEv:
.LFB8165:
	.cfi_startproc
	movq	48(%rdi), %rax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6camera9GetXActorEv, .-_ZN3wze6engine6camera9GetXActorEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.type	_ZN3wze6engine6camera9GetYActorEv, @function
_ZN3wze6engine6camera9GetYActorEv:
.LFB8166:
	.cfi_startproc
	movq	56(%rdi), %rax
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6camera9GetYActorEv, .-_ZN3wze6engine6camera9GetYActorEv
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.type	_ZN3wze6engine6camera6UpdateEv, @function
_ZN3wze6engine6camera6UpdateEv:
.LFB8167:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	48(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L113
	movq	56(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L114
.L103:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L113:
	.cfi_restore_state
	movq	(%rdi), %rax
	movq	256(%rax), %rdx
	cmpq	248(%rax), %rsi
	jnb	.L112
	movq	(%rdx,%rsi,8), %rax
	movq	56(%rdi), %rsi
	movsd	224(%rax), %xmm0
	movsd	%xmm0, 8(%rdi)
	testq	%rsi, %rsi
	je	.L103
.L114:
	movq	(%rdi), %rax
	movq	256(%rax), %rdx
	cmpq	248(%rax), %rsi
	jnb	.L112
	movq	(%rdx,%rsi,8), %rax
	movsd	232(%rax), %xmm0
	xorl	%eax, %eax
	movsd	%xmm0, 16(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L112:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
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
	movapd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movq	(%rdi), %rax
	movl	%edx, %ecx
	ucomisd	%xmm0, %xmm2
	movzwl	%si, %edx
	movzwl	%cx, %esi
	movzwl	42(%rax), %ecx
	jp	.L116
	jne	.L116
	movq	.LC20(%rip), %xmm0
	movsd	.LC19(%rip), %xmm5
	movapd	%xmm3, %xmm2
	andpd	%xmm0, %xmm2
	movapd	%xmm0, %xmm4
	ucomisd	%xmm2, %xmm5
	ja	.L126
.L118:
	cvttsd2sil	%xmm3, %eax
	movl	%edx, %edi
	movapd	%xmm1, %xmm2
	sarl	%edi
	andpd	%xmm0, %xmm2
	subl	%edi, %eax
	ucomisd	%xmm2, %xmm5
	ja	.L127
.L119:
	cvttsd2sil	%xmm1, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
.L120:
	salq	$32, %rcx
	movl	%edx, %edx
	orq	%rcx, %rax
	movq	%rsi, %rcx
	salq	$32, %rcx
	orq	%rcx, %rdx
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	mulsd	40(%rdi), %xmm2
	pxor	%xmm4, %xmm4
	movq	.LC20(%rip), %xmm0
	cvtsi2sdl	%edx, %xmm4
	movsd	.LC19(%rip), %xmm5
	movapd	%xmm0, %xmm7
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L128
.L121:
	cvttsd2sil	%xmm4, %edx
	pxor	%xmm4, %xmm4
	movapd	%xmm0, %xmm7
	cvtsi2sdl	%esi, %xmm4
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L129
.L122:
	cvttsd2sil	%xmm4, %esi
	movsd	24(%rdi), %xmm4
	movapd	%xmm0, %xmm6
	divsd	%xmm2, %xmm4
	addsd	8(%rdi), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	andpd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm5
	ja	.L130
.L123:
	cvttsd2sil	%xmm3, %eax
	movsd	32(%rdi), %xmm3
	movl	%edx, %r8d
	sarl	%r8d
	divsd	%xmm2, %xmm3
	subl	%r8d, %eax
	addsd	16(%rdi), %xmm3
	subsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	andpd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm5
	ja	.L131
	cvttsd2sil	%xmm2, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L131:
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
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L130:
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
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L129:
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
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L128:
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
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L127:
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
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L126:
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
	jmp	.L118
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6camera9TransformEddttd, .-_ZN3wze6engine6camera9TransformEddttd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC19:
	.long	0
	.long	1127219200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC20:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
