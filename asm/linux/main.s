	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"assets/test.png"
.LC7:
	.string	"assets/Hack-Regular.ttf"
.LC20:
	.string	""
.LC24:
	.string	"ms"
.LC25:
	.string	"ms FrameTime: "
.LC26:
	.string	"ms RenderTime: "
.LC27:
	.string	"GameTime: "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB28:
	.section	.text.startup,"ax",@progbits
.LHOTB28:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8156:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8156
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$312, %rsp
	.cfi_def_cfa_offset 368
	movq	%fs:40, %rax
	movq	%rax, 296(%rsp)
	xorl	%eax, %eax
	leaq	224(%rsp), %rdi
	movq	%rdi, 168(%rsp)
.LEHB0:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE0:
	movl	$480, %edi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movl	$1, %r9d
	movl	$2160, %r8d
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$3840, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB2:
	call	_ZN3wze6engineC1EPKcS2_tth@PLT
.LEHE2:
	leaq	344(%rbp), %r12
	leaq	.LC6(%rip), %rsi
	movq	%r12, %rdi
.LEHB3:
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movl	$72, %edx
	leaq	.LC7(%rip), %rsi
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZN3wze6engine6assets8LoadFontEPKch@PLT
	movq	%rbp, %rdi
	movq	%rax, %r14
	leaq	272(%rbp), %r12
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	movq	%rbp, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	pxor	%xmm1, %xmm1
	movl	%r13d, %r8d
	xorl	%edx, %edx
	movsd	.LC8(%rip), %xmm2
	movzwl	%ax, %ecx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	leaq	40(%rax), %rdi
	movq	%rbx, %rsi
	movq	%rax, 208(%rsp)
	movq	%rax, %r15
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	%rbp, %rdi
	movq	%rax, 176(%rsp)
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	movq	%rbp, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	pxor	%xmm1, %xmm1
	movl	%r13d, %r8d
	xorl	%edx, %edx
	movsd	.LC9(%rip), %xmm2
	movzwl	%ax, %ecx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	leaq	40(%rax), %rdi
	movq	%rbx, %rsi
	movq	%rax, 184(%rsp)
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movq	%rbp, %rdi
	movq	%rax, 192(%rsp)
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	movq	%rbp, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	pxor	%xmm1, %xmm1
	movl	%r13d, %r8d
	xorl	%edx, %edx
	movsd	.LC10(%rip), %xmm2
	movzwl	%ax, %ecx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	leaq	40(%rax), %rdi
	movq	%rbx, %rsi
	movq	%rax, 160(%rsp)
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	movsd	.LC11(%rip), %xmm0
	movq	%r15, %rdi
	movq	%rax, %r13
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	movq	184(%rsp), %rbx
	movsd	.LC12(%rip), %xmm0
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	movsd	.LC13(%rip), %xmm0
	movq	160(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	movsd	.LC14(%rip), %xmm0
	movq	%r15, %rdi
	call	_ZN3wze6engine6actors5actor8SetDepthEd@PLT
	movsd	.LC15(%rip), %xmm0
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor8SetDepthEd@PLT
	movsd	.LC16(%rip), %xmm0
	movq	160(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor8SetDepthEd@PLT
	movq	176(%rsp), %rcx
	movl	$-21761, %eax
	movl	$-171, %edx
	movq	%rbp, %rdi
	movw	%ax, 20(%rcx)
	movq	192(%rsp), %rax
	movb	$85, 22(%rcx)
	movl	$-21931, %ecx
	movw	%dx, 20(%rax)
	movb	$-86, 22(%rax)
	movw	%cx, 20(%r13)
	movb	$-1, 22(%r13)
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	pxor	%xmm3, %xmm3
	movq	%rbp, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm3
	movq	%xmm3, %rbx
	call	_ZN3wze6engine6window8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	xorl	%r8d, %r8d
	movzwl	%ax, %eax
	xorl	%ecx, %ecx
	movq	%rbx, %xmm1
	xorl	%edx, %edx
	cvtsi2sdl	%eax, %xmm0
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	leaq	104(%rax), %rdi
	movq	%r14, %rdx
	leaq	.LC20(%rip), %rsi
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy@PLT
	movq	%rbp, %rdi
	movq	%rax, 216(%rsp)
	movq	%rax, %r14
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	movzwl	%ax, %esi
	movq	%r14, %rdi
	imull	$34953, %esi, %esi
	shrl	$21, %esi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC21(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	movzwl	%ax, %eax
	pxor	%xmm4, %xmm4
	movq	%rbp, %rdi
	cvtsi2sdl	%eax, %xmm4
	movq	%xmm4, %rbx
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	movq	%rbx, %xmm6
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC21(%rip), %xmm0
	subsd	%xmm0, %xmm6
	movq	%xmm6, %rbx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv@PLT
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	%rbx, %xmm0
	movq	%r14, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd@PLT
	movsd	.LC22(%rip), %xmm0
	leaq	32(%rbp), %rdi
	call	_ZN3wze6engine6render15SetSamplingStepEd@PLT
	leaq	216(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, 200(%rsp)
	movq	%rax, %rbx
	call	_ZN3wze6engine5mouse11SetRelativeEv@PLT
	movsd	.LC23(%rip), %xmm0
	movq	%rbx, %rdi
	call	_ZN3wze6engine5mouse14SetSensitivityEd@PLT
	movq	.LC2(%rip), %rax
	movsd	.LC4(%rip), %xmm5
	movsd	.LC5(%rip), %xmm2
	movq	%rax, 64(%rsp)
	movq	.LC1(%rip), %rax
	movsd	%xmm5, 56(%rsp)
	movq	%rax, 152(%rsp)
	movq	%rax, 144(%rsp)
	movq	%rax, 136(%rsp)
	movq	.LC2(%rip), %rax
	movsd	%xmm2, 48(%rsp)
	movq	%rax, 32(%rsp)
	movq	.LC1(%rip), %rax
	movsd	%xmm5, 40(%rsp)
	movq	%rax, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	%rax, 112(%rsp)
	movq	.LC2(%rip), %rax
	movsd	%xmm2, 24(%rsp)
	movq	%rax, (%rsp)
	movq	.LC1(%rip), %rax
	movsd	%xmm2, 16(%rsp)
	movq	%rax, 104(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rax, 88(%rsp)
	movsd	%xmm5, 8(%rsp)
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L81:
	comisd	.LC2(%rip), %xmm3
	ja	.L50
	movapd	%xmm3, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %r14d
.L15:
	movsd	8(%rsp), %xmm7
	pxor	%xmm0, %xmm0
	comisd	%xmm7, %xmm0
	ja	.L51
.L82:
	comisd	.LC2(%rip), %xmm7
	ja	.L52
	movapd	%xmm7, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %r12d
.L16:
	movsd	16(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L53
.L83:
	comisd	.LC2(%rip), %xmm2
	ja	.L54
	movapd	%xmm2, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
.L17:
	movq	176(%rsp), %rcx
	movq	%rbx, %rdi
	movb	%r14b, 20(%rcx)
	movb	%r12b, 21(%rcx)
	movb	%al, 22(%rcx)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	112(%rsp), %xmm0
	addsd	24(%rsp), %xmm0
	movsd	%xmm0, 24(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	32(%rsp), %xmm2
	movq	%rbx, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	120(%rsp), %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, 32(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	40(%rsp), %xmm6
	movsd	24(%rsp), %xmm4
	cvtsi2sdq	%rax, %xmm0
	mulsd	128(%rsp), %xmm0
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	comisd	%xmm4, %xmm0
	movsd	%xmm6, 40(%rsp)
	ja	.L55
	comisd	.LC2(%rip), %xmm4
	ja	.L56
	movapd	%xmm4, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %r14d
.L24:
	movsd	32(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L57
	comisd	.LC2(%rip), %xmm1
	ja	.L58
	movapd	%xmm1, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %r12d
.L25:
	movsd	40(%rsp), %xmm3
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L59
	comisd	.LC2(%rip), %xmm3
	ja	.L60
	movapd	%xmm3, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
.L26:
	movq	192(%rsp), %rdx
	movq	%rbx, %rdi
	movb	%r14b, 20(%rdx)
	movb	%r12b, 21(%rdx)
	movb	%al, 22(%rdx)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	136(%rsp), %xmm0
	addsd	48(%rsp), %xmm0
	movsd	%xmm0, 48(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	56(%rsp), %xmm7
	movq	%rbx, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	144(%rsp), %xmm0
	addsd	%xmm0, %xmm7
	movsd	%xmm7, 56(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	64(%rsp), %xmm2
	movsd	48(%rsp), %xmm5
	cvtsi2sdq	%rax, %xmm0
	mulsd	152(%rsp), %xmm0
	addsd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	comisd	%xmm5, %xmm0
	movsd	%xmm2, 64(%rsp)
	ja	.L61
	comisd	.LC2(%rip), %xmm5
	ja	.L62
	movapd	%xmm5, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %r14d
.L33:
	movsd	56(%rsp), %xmm4
	pxor	%xmm0, %xmm0
	comisd	%xmm4, %xmm0
	ja	.L63
	comisd	.LC2(%rip), %xmm4
	ja	.L64
	movapd	%xmm4, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %r12d
.L34:
	movsd	64(%rsp), %xmm5
	pxor	%xmm0, %xmm0
	comisd	%xmm5, %xmm0
	ja	.L65
	comisd	.LC2(%rip), %xmm5
	ja	.L66
	movapd	%xmm5, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %eax
.L35:
	movb	%r14b, 20(%r13)
	movq	%rbp, %rdi
	movb	%r12b, 21(%r13)
	movb	%al, 22(%r13)
	call	_ZN3wze6engine6window8HasFocusEv@PLT
	testb	%al, %al
	je	.L36
	movq	%rbp, %rdi
	leaq	80(%rbp), %r14
	call	_ZN3wze6engine6window8GetWidthEv@PLT
	shrw	%ax
	movq	%rbp, %rdi
	movzwl	%ax, %r15d
	call	_ZN3wze6engine6window8GetWidthEv@PLT
	shrw	%ax
	movq	%r14, %rdi
	movzwl	%ax, %r12d
	negl	%r12d
	call	_ZN3wze6engine6camera10GetOriginXEv@PLT
	movq	200(%rsp), %rdi
	movsd	%xmm0, 72(%rsp)
	call	_ZN3wze6engine5mouse10GetMotionXEv@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 80(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	80(%rsp), %xmm0
	addsd	72(%rsp), %xmm0
	cmpl	%r12d, %r15d
	jle	.L39
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L67
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r15d, %xmm1
	minsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
.L39:
	movq	%r14, %rdi
	call	_ZN3wze6engine6camera10SetOriginXEd@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	movq	%rbp, %rdi
	movzwl	%ax, %r15d
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	shrw	%ax
	movq	%r14, %rdi
	movzwl	%ax, %r12d
	negl	%r12d
	call	_ZN3wze6engine6camera10GetOriginYEv@PLT
	movq	200(%rsp), %rdi
	movsd	%xmm0, 72(%rsp)
	call	_ZN3wze6engine5mouse10GetMotionYEv@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 80(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	80(%rsp), %xmm0
	addsd	72(%rsp), %xmm0
	cmpl	%r12d, %r15d
	jle	.L42
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L69
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r15d, %xmm1
	minsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
.L42:
	movq	%r14, %rdi
	call	_ZN3wze6engine6camera10SetOriginYEd@PLT
.L36:
	leaq	.LC24(%rip), %rax
	movq	%rbx, %rdi
	movq	%rax, 288(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 72(%rsp)
	call	_ZN3wze6engine6timing12GetFrameTimeEv@PLT
	movl	%eax, %ecx
	leaq	.LC25(%rip), %rdx
	movq	%rbx, %rdi
	movq	%rcx, 280(%rsp)
	leaq	280(%rsp), %rcx
	leaq	272(%rsp), %r15
	movq	%rcx, 80(%rsp)
	movq	%rdx, 272(%rsp)
	call	_ZN3wze6engine6timing13GetRenderTimeEv@PLT
	movl	%eax, %edx
	movq	%rbx, %rdi
	leaq	264(%rsp), %r14
	movq	%rdx, 264(%rsp)
	leaq	.LC26(%rip), %rdx
	leaq	256(%rsp), %r12
	movq	%rdx, 256(%rsp)
	call	_ZN3wze6engine6timing11GetGameTimeEv@PLT
	movl	%eax, %edx
	movq	168(%rsp), %rdi
	leaq	240(%rsp), %rsi
	leaq	248(%rsp), %rbx
	movq	%rdx, 248(%rsp)
	leaq	.LC27(%rip), %rdx
	movq	%rdx, 240(%rsp)
	movl	$1, %edx
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIPKcE@PLT
	movq	80(%rsp), %rsi
	movq	%rax, %rdi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	72(%rsp), %rsi
	movq	%rax, %rdi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	216(%rsp), %rbx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6window9GetHeightEv@PLT
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC21(%rip), %xmm0
	movsd	%xmm0, 72(%rsp)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv@PLT
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	72(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd@PLT
.L2:
	movq	%rbp, %rdi
	call	_ZN3wze6engine6UpdateEv@PLT
	testb	%al, %al
	je	.L80
	movq	208(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN3wze6engine6actors5actor8GetAngleEv@PLT
	leaq	416(%rbp), %rbx
	movsd	%xmm0, 72(%rsp)
	movq	%rbx, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC1(%rip), %xmm0
	addsd	72(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	movq	184(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN3wze6engine6actors5actor8GetAngleEv@PLT
	movq	%rbx, %rdi
	movq	%xmm0, %r12
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm1, %xmm1
	movq	%r12, %xmm0
	movq	%r15, %rdi
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	movq	160(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN3wze6engine6actors5actor8GetAngleEv@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 72(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC1(%rip), %xmm0
	addsd	72(%rsp), %xmm0
	call	_ZN3wze6engine6actors5actor8SetAngleEd@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	88(%rsp), %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	8(%rsp), %xmm6
	movq	%rbx, %rdi
	cvtsi2sdq	%rax, %xmm0
	mulsd	96(%rsp), %xmm0
	addsd	%xmm0, %xmm6
	movsd	%xmm6, 8(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
.LEHE3:
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	16(%rsp), %xmm7
	movsd	(%rsp), %xmm3
	cvtsi2sdq	%rax, %xmm0
	mulsd	104(%rsp), %xmm0
	addsd	%xmm0, %xmm7
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	movsd	%xmm7, 16(%rsp)
	jbe	.L81
	movsd	8(%rsp), %xmm7
	pxor	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movq	.LC1(%rip), %rax
	movq	$0x000000000, (%rsp)
	comisd	%xmm7, %xmm0
	movq	%rax, 88(%rsp)
	jbe	.L82
.L51:
	movsd	16(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	xorl	%r12d, %r12d
	movq	.LC1(%rip), %rax
	movq	$0x000000000, 8(%rsp)
	comisd	%xmm2, %xmm0
	movq	%rax, 96(%rsp)
	jbe	.L83
.L53:
	movq	.LC1(%rip), %rsi
	xorl	%eax, %eax
	movq	$0x000000000, 16(%rsp)
	movq	%rsi, 104(%rsp)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L65:
	movq	.LC1(%rip), %rsi
	xorl	%eax, %eax
	movq	$0x000000000, 64(%rsp)
	movq	%rsi, 152(%rsp)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L63:
	movq	.LC1(%rip), %rax
	xorl	%r12d, %r12d
	movq	$0x000000000, 56(%rsp)
	movq	%rax, 144(%rsp)
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L61:
	movq	.LC1(%rip), %rax
	xorl	%r14d, %r14d
	movq	$0x000000000, 48(%rsp)
	movq	%rax, 136(%rsp)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L59:
	movq	.LC1(%rip), %rsi
	xorl	%eax, %eax
	movq	$0x000000000, 40(%rsp)
	movq	%rsi, 128(%rsp)
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L57:
	movq	.LC1(%rip), %rax
	xorl	%r12d, %r12d
	movq	$0x000000000, 32(%rsp)
	movq	%rax, 120(%rsp)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L55:
	movq	.LC1(%rip), %rax
	xorl	%r14d, %r14d
	movq	$0x000000000, 24(%rsp)
	movq	%rax, 112(%rsp)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L58:
	movq	.LC2(%rip), %rax
	movsd	.LC3(%rip), %xmm5
	movl	$-1, %r12d
	movq	%rax, 32(%rsp)
	movsd	%xmm5, 120(%rsp)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L56:
	movq	.LC2(%rip), %rax
	movl	$-1, %r14d
	movq	%rax, 24(%rsp)
	movq	.LC3(%rip), %rax
	movq	%rax, 112(%rsp)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L54:
	movq	.LC2(%rip), %rcx
	movq	.LC3(%rip), %rsi
	movl	$-1, %eax
	movq	%rcx, 16(%rsp)
	movq	%rsi, 104(%rsp)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L52:
	movq	.LC2(%rip), %rax
	movl	$-1, %r12d
	movq	%rax, 8(%rsp)
	movq	.LC3(%rip), %rax
	movq	%rax, 96(%rsp)
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L62:
	movq	.LC2(%rip), %rax
	movsd	.LC3(%rip), %xmm7
	movl	$-1, %r14d
	movq	%rax, 48(%rsp)
	movsd	%xmm7, 136(%rsp)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L60:
	movq	.LC2(%rip), %rcx
	movsd	.LC3(%rip), %xmm5
	movl	$-1, %eax
	movq	%rcx, 40(%rsp)
	movsd	%xmm5, 128(%rsp)
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L66:
	movq	.LC2(%rip), %rsi
	movsd	.LC3(%rip), %xmm4
	movl	$-1, %eax
	movq	%rsi, 64(%rsp)
	movsd	%xmm4, 152(%rsp)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L64:
	movq	.LC2(%rip), %rax
	movsd	.LC3(%rip), %xmm3
	movl	$-1, %r12d
	movq	%rax, 56(%rsp)
	movsd	%xmm3, 144(%rsp)
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L50:
	movq	.LC2(%rip), %rax
	movl	$-1, %r14d
	movq	%rax, (%rsp)
	movq	.LC3(%rip), %rax
	movq	%rax, 88(%rsp)
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L80:
	movq	%rbp, %rdi
	call	_ZN3wze6engineD1Ev@PLT
	movq	%rbp, %rdi
	movl	$480, %esi
	call	_ZdlPvm@PLT
	movq	168(%rsp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L84
	addq	$312, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
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
.L69:
	.cfi_restore_state
	movapd	%xmm1, %xmm0
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L67:
	movapd	%xmm1, %xmm0
	jmp	.L39
.L84:
	call	__stack_chk_fail@PLT
.L72:
	movq	%rax, %rbx
	jmp	.L44
.L71:
	movq	%rax, %rbx
	jmp	.L45
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8156-.LLSDACSB8156
.LLSDACSB8156:
	.uleb128 .LEHB0-.LFB8156
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8156
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L71-.LFB8156
	.uleb128 0
	.uleb128 .LEHB2-.LFB8156
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L72-.LFB8156
	.uleb128 0
	.uleb128 .LEHB3-.LFB8156
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L71-.LFB8156
	.uleb128 0
.LLSDACSE8156:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8156
	.type	main.cold, @function
main.cold:
.LFSB8156:
.L44:
	.cfi_def_cfa_offset 368
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$480, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L45:
	movq	168(%rsp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L85
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L85:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8156:
	.section	.gcc_except_table
.LLSDAC8156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8156-.LLSDACSBC8156
.LLSDACSBC8156:
	.uleb128 .LEHB4-.LCOLDB28
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC8156:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE28:
	.section	.text.startup
.LHOTE28:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	1202590843
	.long	1065646817
	.align 8
.LC2:
	.long	0
	.long	1081073664
	.align 8
.LC3:
	.long	1202590843
	.long	-1081836831
	.align 8
.LC4:
	.long	0
	.long	1080377344
	.align 8
.LC5:
	.long	0
	.long	1079328768
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC9:
	.long	1431655765
	.long	1071994197
	.align 8
.LC10:
	.long	1431655765
	.long	1070945621
	.align 8
.LC11:
	.long	0
	.long	1081507840
	.align 8
.LC12:
	.long	0
	.long	1080950784
	.align 8
.LC13:
	.long	0
	.long	1079902208
	.align 8
.LC14:
	.long	-1717986917
	.long	1069128089
	.align 8
.LC15:
	.long	286331153
	.long	1068568849
	.align 8
.LC16:
	.long	286331153
	.long	1067520273
	.align 8
.LC21:
	.long	0
	.long	1080623104
	.align 8
.LC22:
	.long	-350469331
	.long	1058682594
	.align 8
.LC23:
	.long	0
	.long	1071644672
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
