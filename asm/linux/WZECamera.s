	.file	"WZECamera.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6cameraC2EPS0_
	.type	_ZN3wze6engine6cameraC2EPS0_, @function
_ZN3wze6engine6cameraC2EPS0_:
.LFB8163:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	movq	.LC0(%rip), %rax
	movq	%rsi, (%rdi)
	movups	%xmm0, 8(%rdi)
	movups	%xmm0, 24(%rdi)
	movups	%xmm0, 40(%rdi)
	pxor	%xmm0, %xmm0
	movq	%rax, 56(%rdi)
	movups	%xmm0, 64(%rdi)
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6cameraC2EPS0_, .-_ZN3wze6engine6cameraC2EPS0_
	.globl	_ZN3wze6engine6cameraC1EPS0_
	.set	_ZN3wze6engine6cameraC1EPS0_,_ZN3wze6engine6cameraC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOriginXEv
	.type	_ZN3wze6engine6camera10GetOriginXEv, @function
_ZN3wze6engine6camera10GetOriginXEv:
.LFB8165:
	.cfi_startproc
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6camera10GetOriginXEv, .-_ZN3wze6engine6camera10GetOriginXEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"wze::engine.camera.SetOriginX(): OriginX must not be NaN\nParams: OriginX: %lf\n"
	.align 8
.LC4:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOriginXEd
	.type	_ZN3wze6engine6camera10SetOriginXEd, @function
_ZN3wze6engine6camera10SetOriginXEd:
.LFB8166:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L15
	movq	64(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L16
	movsd	%xmm0, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
	movq	(%rdi), %rax
	movq	288(%rax), %rdx
	cmpq	280(%rax), %rsi
	jnb	.L17
	movq	(%rdx,%rsi,8), %rax
	movapd	%xmm0, %xmm1
	subsd	224(%rax), %xmm1
	subsd	24(%rdi), %xmm1
	movsd	%xmm0, 8(%rdi)
	movsd	%xmm1, 32(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L17:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6camera10SetOriginXEd, .-_ZN3wze6engine6camera10SetOriginXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOriginYEv
	.type	_ZN3wze6engine6camera10GetOriginYEv, @function
_ZN3wze6engine6camera10GetOriginYEv:
.LFB8167:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6camera10GetOriginYEv, .-_ZN3wze6engine6camera10GetOriginYEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.camera.SetOriginY(): OriginY must not be NaN\nParams: OriginY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOriginYEd
	.type	_ZN3wze6engine6camera10SetOriginYEd, @function
_ZN3wze6engine6camera10SetOriginYEd:
.LFB8168:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L30
	movq	72(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L31
	movsd	%xmm0, 16(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	movq	(%rdi), %rax
	movq	288(%rax), %rdx
	cmpq	280(%rax), %rsi
	jnb	.L32
	movq	(%rdx,%rsi,8), %rax
	movapd	%xmm0, %xmm1
	subsd	232(%rax), %xmm1
	subsd	40(%rdi), %xmm1
	movsd	%xmm0, 16(%rdi)
	movsd	%xmm1, 48(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L30:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6camera10SetOriginYEd, .-_ZN3wze6engine6camera10SetOriginYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetXEv
	.type	_ZN3wze6engine6camera10GetOffsetXEv, @function
_ZN3wze6engine6camera10GetOffsetXEv:
.LFB8169:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	addsd	24(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6camera10GetOffsetXEv, .-_ZN3wze6engine6camera10GetOffsetXEv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\nParams: OffsetX: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetXEd
	.type	_ZN3wze6engine6camera10SetOffsetXEd, @function
_ZN3wze6engine6camera10SetOffsetXEd:
.LFB8170:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	jp	.L42
	movapd	%xmm0, %xmm1
	subsd	24(%rdi), %xmm1
	movsd	%xmm1, 32(%rdi)
	ret
.L42:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6camera10SetOffsetXEd, .-_ZN3wze6engine6camera10SetOffsetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10GetOffsetYEv
	.type	_ZN3wze6engine6camera10GetOffsetYEv, @function
_ZN3wze6engine6camera10GetOffsetYEv:
.LFB8171:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	addsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6camera10GetOffsetYEv, .-_ZN3wze6engine6camera10GetOffsetYEv
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\nParams: OffsetY: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera10SetOffsetYEd
	.type	_ZN3wze6engine6camera10SetOffsetYEd, @function
_ZN3wze6engine6camera10SetOffsetYEd:
.LFB8172:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	jp	.L52
	movapd	%xmm0, %xmm1
	subsd	40(%rdi), %xmm1
	movsd	%xmm1, 48(%rdi)
	ret
.L52:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6camera10SetOffsetYEd, .-_ZN3wze6engine6camera10SetOffsetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7GetZoomEv
	.type	_ZN3wze6engine6camera7GetZoomEv, @function
_ZN3wze6engine6camera7GetZoomEv:
.LFB8173:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6camera7GetZoomEv, .-_ZN3wze6engine6camera7GetZoomEv
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.camera.SetZoom(): Zoom must not be NaN\nParams: Zoom: %lf\n"
	.align 8
.LC10:
	.string	"wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7SetZoomEd
	.type	_ZN3wze6engine6camera7SetZoomEd, @function
_ZN3wze6engine6camera7SetZoomEd:
.LFB8174:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L64
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L65
	movsd	%xmm0, 56(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L64:
	.cfi_restore_state
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L65:
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6camera7SetZoomEd, .-_ZN3wze6engine6camera7SetZoomEd
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.camera.Bind(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC12:
	.string	"wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera4BindEy
	.type	_ZN3wze6engine6camera4BindEy, @function
_ZN3wze6engine6camera4BindEy:
.LFB8175:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L71
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	280(%rdx), %rsi
	jnb	.L68
	movq	288(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L68
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	jp	.L72
	je	.L78
.L72:
	movq	%rax, 64(%rdi)
	movq	%rax, 72(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	xorl	%edx, %edx
	movq	%rdx, 64(%rdi)
	movq	%rdx, 72(%rdi)
	ret
.L68:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L78:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6camera4BindEy, .-_ZN3wze6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.camera.BindX(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC14:
	.string	"wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindXEy
	.type	_ZN3wze6engine6camera5BindXEy, @function
_ZN3wze6engine6camera5BindXEy:
.LFB8176:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L84
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	280(%rdx), %rsi
	jnb	.L81
	movq	288(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L81
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	jp	.L85
	je	.L91
.L85:
	movq	%rax, 64(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L84:
	xorl	%edx, %edx
	movq	%rdx, 64(%rdi)
	ret
.L81:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6camera5BindXEy, .-_ZN3wze6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.camera.BindY(): Actor does not exist\nParams: ActorID: %lld\n"
	.align 8
.LC16:
	.string	"wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera5BindYEy
	.type	_ZN3wze6engine6camera5BindYEy, @function
_ZN3wze6engine6camera5BindYEy:
.LFB8177:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L97
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdx
	cmpq	280(%rdx), %rsi
	jnb	.L94
	movq	288(%rdx), %rdx
	movq	(%rdx,%rsi,8), %rdx
	testq	%rdx, %rdx
	je	.L94
	pxor	%xmm0, %xmm0
	ucomisd	272(%rdx), %xmm0
	jp	.L98
	je	.L104
.L98:
	movq	%rax, 72(%rdi)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	xorl	%edx, %edx
	movq	%rdx, 72(%rdi)
	ret
.L94:
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L104:
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6camera5BindYEy, .-_ZN3wze6engine6camera5BindYEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UnbindEv
	.type	_ZN3wze6engine6camera6UnbindEv, @function
_ZN3wze6engine6camera6UnbindEv:
.LFB8178:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 64(%rdi)
	ret
	.cfi_endproc
.LFE8178:
	.size	_ZN3wze6engine6camera6UnbindEv, .-_ZN3wze6engine6camera6UnbindEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindXEv
	.type	_ZN3wze6engine6camera7UnbindXEv, @function
_ZN3wze6engine6camera7UnbindXEv:
.LFB8179:
	.cfi_startproc
	movq	$0, 64(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6camera7UnbindXEv, .-_ZN3wze6engine6camera7UnbindXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera7UnbindYEv
	.type	_ZN3wze6engine6camera7UnbindYEv, @function
_ZN3wze6engine6camera7UnbindYEv:
.LFB8180:
	.cfi_startproc
	movq	$0, 72(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine6camera7UnbindYEv, .-_ZN3wze6engine6camera7UnbindYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetXActorEv
	.type	_ZN3wze6engine6camera9GetXActorEv, @function
_ZN3wze6engine6camera9GetXActorEv:
.LFB8181:
	.cfi_startproc
	movq	64(%rdi), %rax
	ret
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine6camera9GetXActorEv, .-_ZN3wze6engine6camera9GetXActorEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9GetYActorEv
	.type	_ZN3wze6engine6camera9GetYActorEv, @function
_ZN3wze6engine6camera9GetYActorEv:
.LFB8182:
	.cfi_startproc
	movq	72(%rdi), %rax
	ret
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine6camera9GetYActorEv, .-_ZN3wze6engine6camera9GetYActorEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera6UpdateEv
	.type	_ZN3wze6engine6camera6UpdateEv, @function
_ZN3wze6engine6camera6UpdateEv:
.LFB8183:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	64(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L123
	movq	72(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L124
.L113:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L123:
	.cfi_restore_state
	movq	(%rdi), %rax
	movq	288(%rax), %rdx
	cmpq	280(%rax), %rsi
	jnb	.L122
	movq	(%rdx,%rsi,8), %rax
	movq	72(%rdi), %rsi
	movsd	224(%rax), %xmm0
	movsd	%xmm0, 8(%rdi)
	testq	%rsi, %rsi
	je	.L113
.L124:
	movq	(%rdi), %rax
	movq	288(%rax), %rdx
	cmpq	280(%rax), %rsi
	jnb	.L122
	movq	(%rdx,%rsi,8), %rax
	movsd	232(%rax), %xmm0
	xorl	%eax, %eax
	movsd	%xmm0, 16(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L122:
	.cfi_restore_state
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine6camera6UpdateEv, .-_ZN3wze6engine6camera6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6camera9TransformEddttd
	.type	_ZN3wze6engine6camera9TransformEddttd, @function
_ZN3wze6engine6camera9TransformEddttd:
.LFB8184:
	.cfi_startproc
	movapd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movq	(%rdi), %rax
	movl	%edx, %ecx
	ucomisd	%xmm0, %xmm2
	movzwl	%si, %edx
	movzwl	%cx, %esi
	movzwl	42(%rax), %ecx
	jp	.L126
	jne	.L126
	movq	.LC18(%rip), %xmm0
	movsd	.LC17(%rip), %xmm5
	movapd	%xmm3, %xmm2
	andpd	%xmm0, %xmm2
	movapd	%xmm0, %xmm4
	ucomisd	%xmm2, %xmm5
	ja	.L136
.L128:
	cvttsd2sil	%xmm3, %eax
	movl	%edx, %edi
	movapd	%xmm1, %xmm2
	sarl	%edi
	andpd	%xmm0, %xmm2
	subl	%edi, %eax
	ucomisd	%xmm2, %xmm5
	ja	.L137
.L129:
	cvttsd2sil	%xmm1, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
.L130:
	salq	$32, %rcx
	movl	%edx, %edx
	orq	%rcx, %rax
	movq	%rsi, %rcx
	salq	$32, %rcx
	orq	%rcx, %rdx
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	mulsd	56(%rdi), %xmm2
	pxor	%xmm4, %xmm4
	movq	.LC18(%rip), %xmm0
	cvtsi2sdl	%edx, %xmm4
	movsd	.LC17(%rip), %xmm5
	movapd	%xmm0, %xmm7
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L138
.L131:
	cvttsd2sil	%xmm4, %edx
	pxor	%xmm4, %xmm4
	movapd	%xmm0, %xmm7
	cvtsi2sdl	%esi, %xmm4
	mulsd	%xmm2, %xmm4
	movapd	%xmm4, %xmm6
	andpd	%xmm0, %xmm6
	ucomisd	%xmm6, %xmm5
	ja	.L139
.L132:
	cvttsd2sil	%xmm4, %esi
	movsd	32(%rdi), %xmm4
	movapd	%xmm0, %xmm6
	divsd	%xmm2, %xmm4
	addsd	8(%rdi), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm4
	andpd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm5
	ja	.L140
.L133:
	cvttsd2sil	%xmm3, %eax
	movsd	48(%rdi), %xmm3
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
	ja	.L141
	cvttsd2sil	%xmm2, %edi
	subl	%edi, %ecx
	movl	%esi, %edi
	sarl	%edi
	subl	%edi, %ecx
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L141:
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
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L140:
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
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L139:
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
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L138:
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
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L137:
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
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L136:
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
	jmp	.L128
	.cfi_endproc
.LFE8184:
	.size	_ZN3wze6engine6camera9TransformEddttd, .-_ZN3wze6engine6camera9TransformEddttd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC17:
	.long	0
	.long	1127219200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC18:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
