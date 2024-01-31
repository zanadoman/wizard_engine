	.file	"SECamera.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6cameraC2ERS0_
	.type	_ZN4slay6engine6cameraC2ERS0_, @function
_ZN4slay6engine6cameraC2ERS0_:
.LFB2232:
	.cfi_startproc
	movq	.LC0(%rip), %rax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	%rsi, (%rdi)
	movups	%xmm0, 8(%rdi)
	movq	%rax, 56(%rdi)
	movups	%xmm1, 24(%rdi)
	movups	%xmm0, 40(%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN4slay6engine6cameraC2ERS0_, .-_ZN4slay6engine6cameraC2ERS0_
	.globl	_ZN4slay6engine6cameraC1ERS0_
	.set	_ZN4slay6engine6cameraC1ERS0_,_ZN4slay6engine6cameraC2ERS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7GetZoomEv
	.type	_ZN4slay6engine6camera7GetZoomEv, @function
_ZN4slay6engine6camera7GetZoomEv:
.LFB2234:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2234:
	.size	_ZN4slay6engine6camera7GetZoomEv, .-_ZN4slay6engine6camera7GetZoomEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"slay::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7SetZoomEd
	.type	_ZN4slay6engine6camera7SetZoomEd, @function
_ZN4slay6engine6camera7SetZoomEd:
.LFB2235:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L12
	movsd	%xmm0, 56(%rdi)
	ret
.L12:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2235:
	.size	_ZN4slay6engine6camera7SetZoomEd, .-_ZN4slay6engine6camera7SetZoomEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera9GetXActorEv
	.type	_ZN4slay6engine6camera9GetXActorEv, @function
_ZN4slay6engine6camera9GetXActorEv:
.LFB2236:
	.cfi_startproc
	movq	24(%rdi), %rax
	ret
	.cfi_endproc
.LFE2236:
	.size	_ZN4slay6engine6camera9GetXActorEv, .-_ZN4slay6engine6camera9GetXActorEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera9GetYActorEv
	.type	_ZN4slay6engine6camera9GetYActorEv, @function
_ZN4slay6engine6camera9GetYActorEv:
.LFB2237:
	.cfi_startproc
	movq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZN4slay6engine6camera9GetYActorEv, .-_ZN4slay6engine6camera9GetYActorEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"slay::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC6:
	.string	"slay::engine.camera.Bind(): Actor does not exists\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera4BindEy
	.type	_ZN4slay6engine6camera4BindEy, @function
_ZN4slay6engine6camera4BindEy:
.LFB2238:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L20
	movq	(%rdi), %rax
	cmpq	536(%rax), %rsi
	jnb	.L17
	movq	544(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L17
	movq	%rsi, %xmm0
	xorl	%eax, %eax
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, 24(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L17:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L20:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6camera4BindEy, .-_ZN4slay6engine6camera4BindEy
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"slay::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC8:
	.string	"slay::engine.camera.BindX(): Actor does not exists\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera5BindXEy
	.type	_ZN4slay6engine6camera5BindXEy, @function
_ZN4slay6engine6camera5BindXEy:
.LFB2239:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L26
	movq	(%rdi), %rax
	cmpq	536(%rax), %rsi
	jnb	.L23
	movq	544(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L23
	movq	%rsi, 24(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L23:
	.cfi_restore_state
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L26:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6camera5BindXEy, .-_ZN4slay6engine6camera5BindXEy
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"slay::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC10:
	.string	"slay::engine.camera.BindY(): Actor does not exists\nParams: Actor: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera5BindYEy
	.type	_ZN4slay6engine6camera5BindYEy, @function
_ZN4slay6engine6camera5BindYEy:
.LFB2240:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L32
	movq	(%rdi), %rax
	cmpq	536(%rax), %rsi
	jnb	.L29
	movq	544(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L29
	movq	%rsi, 32(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2240:
	.size	_ZN4slay6engine6camera5BindYEy, .-_ZN4slay6engine6camera5BindYEy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera6UnbindEv
	.type	_ZN4slay6engine6camera6UnbindEv, @function
_ZN4slay6engine6camera6UnbindEv:
.LFB2241:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movups	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine6camera6UnbindEv, .-_ZN4slay6engine6camera6UnbindEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7UnbindXEv
	.type	_ZN4slay6engine6camera7UnbindXEv, @function
_ZN4slay6engine6camera7UnbindXEv:
.LFB2242:
	.cfi_startproc
	movq	$0, 24(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6camera7UnbindXEv, .-_ZN4slay6engine6camera7UnbindXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera7UnbindYEv
	.type	_ZN4slay6engine6camera7UnbindYEv, @function
_ZN4slay6engine6camera7UnbindYEv:
.LFB2243:
	.cfi_startproc
	movq	$0, 32(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6camera7UnbindYEv, .-_ZN4slay6engine6camera7UnbindYEv
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera6UpdateEv
	.type	_ZN4slay6engine6camera6UpdateEv, @function
_ZN4slay6engine6camera6UpdateEv:
.LFB2244:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	24(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L49
	movq	32(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L50
.L39:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	movq	(%rdi), %rax
	movq	544(%rax), %rdx
	cmpq	536(%rax), %rsi
	jnb	.L48
	movq	(%rdx,%rsi,8), %rax
	movq	32(%rdi), %rsi
	movsd	152(%rax), %xmm0
	movsd	%xmm0, 40(%rdi)
	testq	%rsi, %rsi
	je	.L39
.L50:
	movq	(%rdi), %rax
	movq	544(%rax), %rdx
	cmpq	536(%rax), %rsi
	jnb	.L48
	movq	(%rdx,%rsi,8), %rax
	movsd	160(%rax), %xmm0
	xorl	%eax, %eax
	movsd	%xmm0, 48(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L48:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6camera6UpdateEv, .-_ZN4slay6engine6camera6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6camera9TransformEddttd
	.type	_ZN4slay6engine6camera9TransformEddttd, @function
_ZN4slay6engine6camera9TransformEddttd:
.LFB2245:
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
	jp	.L52
	jne	.L52
	movapd	%xmm3, %xmm0
	call	round@PLT
	movl	%ebx, %edx
	cvttsd2sil	%xmm0, %ebp
	sarl	%edx
	movq	%r15, %xmm0
	subl	%edx, %ebp
.L57:
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
.L52:
	.cfi_restore_state
	mulsd	56(%r14), %xmm2
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
	addsd	40(%r14), %xmm0
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
	addsd	48(%r14), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	jmp	.L57
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6camera9TransformEddttd, .-_ZN4slay6engine6camera9TransformEddttd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits