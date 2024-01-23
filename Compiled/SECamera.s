	.file	"SECamera.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6cameraC2ERS0_
	.type	_ZN4slay6engine6cameraC2ERS0_, @function
_ZN4slay6engine6cameraC2ERS0_:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 40(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 48(%rax)
	movq	-8(%rbp), %rax
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 56(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6cameraC2ERS0_, .-_ZN4slay6engine6cameraC2ERS0_
	.globl	_ZN4slay6engine6cameraC1ERS0_
	.set	_ZN4slay6engine6cameraC1ERS0_,_ZN4slay6engine6cameraC2ERS0_
	.align 2
	.globl	_ZN4slay6engine6camera7GetZoomEv
	.type	_ZN4slay6engine6camera7GetZoomEv, @function
_ZN4slay6engine6camera7GetZoomEv:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine6camera7GetZoomEv, .-_ZN4slay6engine6camera7GetZoomEv
	.section	.rodata
	.align 8
.LC2:
	.string	"slay::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6camera7SetZoomEd
	.type	_ZN4slay6engine6camera7SetZoomEd, @function
_ZN4slay6engine6camera7SetZoomEd:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-16(%rbp), %xmm0
	jb	.L9
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L9:
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, 56(%rax)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6camera7SetZoomEd, .-_ZN4slay6engine6camera7SetZoomEd
	.align 2
	.globl	_ZN4slay6engine6camera9GetXActorEv
	.type	_ZN4slay6engine6camera9GetXActorEv, @function
_ZN4slay6engine6camera9GetXActorEv:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6camera9GetXActorEv, .-_ZN4slay6engine6camera9GetXActorEv
	.align 2
	.globl	_ZN4slay6engine6camera9GetYActorEv
	.type	_ZN4slay6engine6camera9GetYActorEv, @function
_ZN4slay6engine6camera9GetYActorEv:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine6camera9GetYActorEv, .-_ZN4slay6engine6camera9GetYActorEv
	.section	.rodata
	.align 8
.LC3:
	.string	"slay::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC4:
	.string	"slay::engine.camera.Bind(): Actor does not exists\nParams: Actor: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6camera4BindEy
	.type	_ZN4slay6engine6camera4BindEy, @function
_ZN4slay6engine6camera4BindEy:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L15
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L15:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$520, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -16(%rbp)
	jnb	.L16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L17
.L16:
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	testb	%al, %al
	je	.L19
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L19:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6camera4BindEy, .-_ZN4slay6engine6camera4BindEy
	.section	.rodata
	.align 8
.LC5:
	.string	"slay::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC6:
	.string	"slay::engine.camera.BindX(): Actor does not exists\nParams: Actor: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6camera5BindXEy
	.type	_ZN4slay6engine6camera5BindXEy, @function
_ZN4slay6engine6camera5BindXEy:
.LFB2204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L22
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L22:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$520, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -16(%rbp)
	jnb	.L23
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L24
.L23:
	movl	$1, %eax
	jmp	.L25
.L24:
	movl	$0, %eax
.L25:
	testb	%al, %al
	je	.L26
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L26:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6camera5BindXEy, .-_ZN4slay6engine6camera5BindXEy
	.section	.rodata
	.align 8
.LC7:
	.string	"slay::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n"
	.align 8
.LC8:
	.string	"slay::engine.camera.BindY(): Actor does not exists\nParams: Actor: %lld\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6camera5BindYEy
	.type	_ZN4slay6engine6camera5BindYEy, @function
_ZN4slay6engine6camera5BindYEy:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L29
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$520, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -16(%rbp)
	jnb	.L30
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
.L30:
	movl	$1, %eax
	jmp	.L32
.L31:
	movl	$0, %eax
.L32:
	testb	%al, %al
	je	.L33
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L33:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine6camera5BindYEy, .-_ZN4slay6engine6camera5BindYEy
	.align 2
	.globl	_ZN4slay6engine6camera6UnbindEv
	.type	_ZN4slay6engine6camera6UnbindEv, @function
_ZN4slay6engine6camera6UnbindEv:
.LFB2206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6camera6UnbindEv, .-_ZN4slay6engine6camera6UnbindEv
	.align 2
	.globl	_ZN4slay6engine6camera7UnbindXEv
	.type	_ZN4slay6engine6camera7UnbindXEv, @function
_ZN4slay6engine6camera7UnbindXEv:
.LFB2207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2207:
	.size	_ZN4slay6engine6camera7UnbindXEv, .-_ZN4slay6engine6camera7UnbindXEv
	.align 2
	.globl	_ZN4slay6engine6camera7UnbindYEv
	.type	_ZN4slay6engine6camera7UnbindYEv, @function
_ZN4slay6engine6camera7UnbindYEv:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN4slay6engine6camera7UnbindYEv, .-_ZN4slay6engine6camera7UnbindYEv
	.align 2
	.globl	_ZN4slay6engine6camera6UpdateEv
	.type	_ZN4slay6engine6camera6UpdateEv, @function
_ZN4slay6engine6camera6UpdateEv:
.LFB2209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	120(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.L42:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	128(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
.L43:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine6camera6UpdateEv, .-_ZN4slay6engine6camera6UpdateEv
	.align 2
	.globl	_ZN4slay6engine6camera9TransformEddttd
	.type	_ZN4slay6engine6camera9TransformEddttd, @function
_ZN4slay6engine6camera9TransformEddttd:
.LFB2210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movsd	%xmm2, -104(%rbp)
	movl	%ecx, %edx
	movw	%dx, -92(%rbp)
	movw	%ax, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jp	.L46
	pxor	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jne	.L46
	movzwl	-92(%rbp), %eax
	movl	%eax, -40(%rbp)
	movzwl	-96(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
	movl	-40(%rbp), %edx
	sarl	%edx
	subl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movzwl	58(%rax), %eax
	movzwl	%ax, %ebx
	movq	-88(%rbp), %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
	subl	%eax, %ebx
	movl	%ebx, %ecx
	movl	-36(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	.L48
.L46:
	movq	-72(%rbp), %rax
	movsd	56(%rax), %xmm0
	movsd	-104(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movzwl	-92(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movzwl	-96(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movsd	40(%rax), %xmm1
	movq	-72(%rbp), %rax
	movsd	8(%rax), %xmm0
	divsd	-56(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
	movl	-40(%rbp), %edx
	sarl	%edx
	subl	%edx, %eax
	movl	%eax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movzwl	58(%rax), %eax
	movzwl	%ax, %ebx
	movq	-72(%rbp), %rax
	movsd	48(%rax), %xmm1
	movq	-72(%rbp), %rax
	movsd	16(%rax), %xmm0
	divsd	-56(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	mulsd	-56(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	-36(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -44(%rbp)
.L48:
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6camera9TransformEddttd, .-_ZN4slay6engine6camera9TransformEddttd
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2275:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2275:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.rodata
	.align 8
.LC9:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L55
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L55:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
