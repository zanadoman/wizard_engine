	.file	"main.cpp"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC6:
	.ascii "assets/test.png\0"
.LC7:
	.ascii "assets/Hack-Regular.ttf\0"
.LC20:
	.ascii "\0"
.LC24:
	.ascii "ms\0"
.LC25:
	.ascii "ms FrameTime: \0"
.LC26:
	.ascii "ms RenderTime: \0"
.LC27:
	.ascii "GameTime: \0"
	.section	.text.unlikely,"x"
.LCOLDB28:
	.section	.text.startup,"x"
.LHOTB28:
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8431:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$504, %rsp
	.seh_stackalloc	504
	movaps	%xmm6, 336(%rsp)
	.seh_savexmm	%xmm6, 336
	movaps	%xmm7, 352(%rsp)
	.seh_savexmm	%xmm7, 352
	movaps	%xmm8, 368(%rsp)
	.seh_savexmm	%xmm8, 368
	movaps	%xmm9, 384(%rsp)
	.seh_savexmm	%xmm9, 384
	movaps	%xmm10, 400(%rsp)
	.seh_savexmm	%xmm10, 400
	movaps	%xmm11, 416(%rsp)
	.seh_savexmm	%xmm11, 416
	movaps	%xmm12, 432(%rsp)
	.seh_savexmm	%xmm12, 432
	movaps	%xmm13, 448(%rsp)
	.seh_savexmm	%xmm13, 448
	movaps	%xmm14, 464(%rsp)
	.seh_savexmm	%xmm14, 464
	movaps	%xmm15, 480(%rsp)
	.seh_savexmm	%xmm15, 480
	.seh_endprologue
	call	__main
	leaq	320(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 184(%rsp)
.LEHB0:
	call	_ZN3neo6stringC1Ev
.LEHE0:
	movl	$480, %ecx
.LEHB1:
	call	_Znwy
.LEHE1:
	movl	$1, 40(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rax, %rcx
	movl	$2160, 32(%rsp)
	movl	$3840, %r9d
	movq	%rax, %rsi
.LEHB2:
	call	_ZN3wze6engineC1EPKcS2_tth
.LEHE2:
	leaq	344(%rsi), %rbx
	leaq	.LC6(%rip), %rdx
	movq	%rbx, %rcx
.LEHB3:
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movl	$48, %r8d
	leaq	.LC7(%rip), %rdx
	movq	%rbx, %rcx
	movq	%rax, %r13
	call	_ZN3wze6engine6assets8LoadFontEPKch
	movq	%rsi, %rcx
	movq	%rax, %rdi
	leaq	272(%rsi), %rbx
	call	_ZN3wze6engine6window9GetHeightEv
	shrw	%ax
	movq	%rsi, %rcx
	movzwl	%ax, %ebp
	call	_ZN3wze6engine6window9GetHeightEv
	movq	.LC8(%rip), %rdx
	shrw	%ax
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	movzwl	%ax, %eax
	movl	%ebp, 48(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rdx, 56(%rsp)
	xorl	%edx, %edx
	movl	%eax, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	leaq	40(%rax), %rcx
	movq	%r13, %rdx
	movq	%rax, 208(%rsp)
	movq	%rax, %r15
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	movq	%rsi, %rcx
	movq	%rax, %rbp
	call	_ZN3wze6engine6window9GetHeightEv
	shrw	%ax
	movq	%rsi, %rcx
	movzwl	%ax, %r12d
	call	_ZN3wze6engine6window9GetHeightEv
	movq	.LC9(%rip), %rdx
	shrw	%ax
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	movzwl	%ax, %eax
	movl	%r12d, 48(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rdx, 56(%rsp)
	xorl	%edx, %edx
	movl	%eax, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	leaq	40(%rax), %rcx
	movq	%r13, %rdx
	movq	%rax, 192(%rsp)
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	movq	%rsi, %rcx
	movq	%rax, %r12
	call	_ZN3wze6engine6window9GetHeightEv
	shrw	%ax
	movq	%rsi, %rcx
	movzwl	%ax, %r14d
	call	_ZN3wze6engine6window9GetHeightEv
	movq	.LC10(%rip), %rdx
	shrw	%ax
	xorl	%r8d, %r8d
	movq	%rbx, %rcx
	movzwl	%ax, %eax
	movl	%r14d, 48(%rsp)
	pxor	%xmm3, %xmm3
	movq	%rdx, 56(%rsp)
	xorl	%edx, %edx
	movl	%eax, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	leaq	40(%rax), %rcx
	movq	%r13, %rdx
	movq	%rax, 176(%rsp)
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	movsd	.LC11(%rip), %xmm1
	movq	%r15, %rcx
	movq	%rax, %r13
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	movq	192(%rsp), %r14
	movsd	.LC12(%rip), %xmm1
	movq	%r14, %rcx
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	movsd	.LC13(%rip), %xmm1
	movq	176(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	movsd	.LC14(%rip), %xmm1
	movq	%r15, %rcx
	call	_ZN3wze6engine6actors5actor8SetDepthEd
	movsd	.LC15(%rip), %xmm1
	movq	%r14, %rcx
	call	_ZN3wze6engine6actors5actor8SetDepthEd
	movsd	.LC16(%rip), %xmm1
	movq	176(%rsp), %rcx
	call	_ZN3wze6engine6actors5actor8SetDepthEd
	movl	$-21931, %ecx
	movl	$-21761, %eax
	movl	$-171, %edx
	movb	$85, 22(%rbp)
	movw	%ax, 20(%rbp)
	movw	%dx, 20(%r12)
	movb	$-86, 22(%r12)
	movw	%cx, 20(%r13)
	movq	%rsi, %rcx
	movb	$-1, 22(%r13)
	call	_ZN3wze6engine6window9GetHeightEv
	shrw	%ax
	pxor	%xmm6, %xmm6
	movq	%rsi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6window8GetWidthEv
	shrw	%ax
	pxor	%xmm3, %xmm3
	movsd	%xmm6, 32(%rsp)
	xorl	%r8d, %r8d
	movzwl	%ax, %eax
	movl	$0, 48(%rsp)
	xorl	%edx, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm3
	movl	$0, 40(%rsp)
	movq	$0x000000000, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	leaq	104(%rax), %rcx
	movq	%rdi, %r8
	leaq	.LC20(%rip), %rdx
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	movq	%rsi, %rcx
	movq	%rax, 216(%rsp)
	movq	%rax, %rbx
	call	_ZN3wze6engine6window9GetHeightEv
	movzwl	%ax, %edx
	movq	%rbx, %rcx
	imull	$34953, %edx, %edx
	shrl	$21, %edx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	%rsi, %rcx
	call	_ZN3wze6engine6window9GetHeightEv
	movzwl	%ax, %eax
	pxor	%xmm6, %xmm6
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	divsd	.LC21(%rip), %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	%rbx, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
	movq	%rsi, %rcx
	call	_ZN3wze6engine6window9GetHeightEv
	movzwl	%ax, %eax
	pxor	%xmm6, %xmm6
	movq	%rsi, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6window9GetHeightEv
	movzwl	%ax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC21(%rip), %xmm0
	subsd	%xmm0, %xmm6
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv
	shrw	%ax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm0
	subsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	movsd	.LC22(%rip), %xmm1
	leaq	32(%rsi), %rcx
	call	_ZN3wze6engine6render15SetSamplingStepEd
	leaq	216(%rsi), %rax
	movq	%rax, %rcx
	movq	%rax, 200(%rsp)
	movq	%rax, %rbx
	call	_ZN3wze6engine5mouse11SetRelativeEv
	movsd	.LC23(%rip), %xmm1
	movq	%rbx, %rcx
	call	_ZN3wze6engine5mouse14SetSensitivityEd
	movsd	.LC1(%rip), %xmm7
	movsd	.LC2(%rip), %xmm6
	movsd	.LC4(%rip), %xmm9
	movsd	.LC5(%rip), %xmm8
	movapd	%xmm6, %xmm13
	movapd	%xmm6, %xmm11
	movsd	%xmm7, 168(%rsp)
	movapd	%xmm6, %xmm15
	movapd	%xmm9, %xmm12
	movapd	%xmm8, %xmm10
	movsd	%xmm7, 160(%rsp)
	movsd	%xmm7, 152(%rsp)
	movsd	%xmm7, 144(%rsp)
	movsd	%xmm7, 136(%rsp)
	movsd	%xmm7, 128(%rsp)
	movsd	%xmm8, 72(%rsp)
	movsd	%xmm9, 64(%rsp)
	movsd	%xmm7, 120(%rsp)
	movsd	%xmm7, 112(%rsp)
	movsd	%xmm7, 104(%rsp)
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L79:
	comisd	%xmm6, %xmm15
	ja	.L48
	movapd	%xmm15, %xmm0
	call	round
	cvttsd2sil	%xmm0, %r14d
.L15:
	movsd	64(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L49
.L80:
	comisd	%xmm6, %xmm2
	ja	.L50
	movapd	%xmm2, %xmm0
	call	round
	cvttsd2sil	%xmm0, %edi
.L16:
	movsd	72(%rsp), %xmm4
	pxor	%xmm0, %xmm0
	comisd	%xmm4, %xmm0
	ja	.L51
.L81:
	comisd	%xmm6, %xmm4
	ja	.L52
	movapd	%xmm4, %xmm0
	call	round
	cvttsd2sil	%xmm0, %eax
.L17:
	movb	%r14b, 20(%rbp)
	movq	%rbx, %rcx
	movb	%dil, 21(%rbp)
	movb	%al, 22(%rbp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	cvtsi2sdq	%rax, %xmm0
	mulsd	128(%rsp), %xmm0
	addsd	%xmm0, %xmm10
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	cvtsi2sdq	%rax, %xmm0
	mulsd	136(%rsp), %xmm0
	addsd	%xmm0, %xmm11
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	144(%rsp), %xmm0
	addsd	%xmm0, %xmm12
	pxor	%xmm0, %xmm0
	comisd	%xmm10, %xmm0
	ja	.L53
	comisd	%xmm6, %xmm10
	ja	.L54
	movapd	%xmm10, %xmm0
	call	round
	cvttsd2sil	%xmm0, %r14d
.L24:
	pxor	%xmm0, %xmm0
	comisd	%xmm11, %xmm0
	ja	.L55
	comisd	%xmm6, %xmm11
	ja	.L56
	movapd	%xmm11, %xmm0
	call	round
	cvttsd2sil	%xmm0, %edi
.L25:
	pxor	%xmm0, %xmm0
	comisd	%xmm12, %xmm0
	ja	.L57
	comisd	%xmm6, %xmm12
	ja	.L58
	movapd	%xmm12, %xmm0
	call	round
	cvttsd2sil	%xmm0, %eax
.L26:
	movb	%r14b, 20(%r12)
	movq	%rbx, %rcx
	movb	%dil, 21(%r12)
	movb	%al, 22(%r12)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	cvtsi2sdq	%rax, %xmm0
	mulsd	152(%rsp), %xmm0
	addsd	%xmm0, %xmm8
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	cvtsi2sdq	%rax, %xmm0
	mulsd	160(%rsp), %xmm0
	addsd	%xmm0, %xmm9
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	168(%rsp), %xmm0
	addsd	%xmm0, %xmm13
	pxor	%xmm0, %xmm0
	comisd	%xmm8, %xmm0
	ja	.L59
	comisd	%xmm6, %xmm8
	ja	.L60
	movapd	%xmm8, %xmm0
	call	round
	cvttsd2sil	%xmm0, %r14d
.L33:
	pxor	%xmm0, %xmm0
	comisd	%xmm9, %xmm0
	ja	.L61
	comisd	%xmm6, %xmm9
	ja	.L62
	movapd	%xmm9, %xmm0
	call	round
	cvttsd2sil	%xmm0, %edi
.L34:
	pxor	%xmm0, %xmm0
	comisd	%xmm13, %xmm0
	ja	.L63
	comisd	%xmm6, %xmm13
	ja	.L64
	movapd	%xmm13, %xmm0
	call	round
	cvttsd2sil	%xmm0, %eax
.L35:
	movb	%r14b, 20(%r13)
	movq	%rsi, %rcx
	movb	%dil, 21(%r13)
	movb	%al, 22(%r13)
	call	_ZN3wze6engine6window8HasFocusEv
	testb	%al, %al
	je	.L36
	movq	%rsi, %rcx
	leaq	80(%rsi), %r14
	call	_ZN3wze6engine6window8GetWidthEv
	shrw	%ax
	movq	%rsi, %rcx
	movzwl	%ax, %r15d
	call	_ZN3wze6engine6window8GetWidthEv
	shrw	%ax
	movq	%r14, %rcx
	movzwl	%ax, %edi
	negl	%edi
	call	_ZN3wze6engine6camera10GetOriginXEv
	movq	200(%rsp), %rcx
	movapd	%xmm0, %xmm14
	call	_ZN3wze6engine5mouse10GetMotionXEv
	movq	%rbx, %rcx
	movsd	%xmm0, 80(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	mulsd	80(%rsp), %xmm1
	addsd	%xmm14, %xmm1
	cmpl	%edi, %r15d
	jle	.L39
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L65
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r15d, %xmm0
	minsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
.L39:
	movq	%r14, %rcx
	call	_ZN3wze6engine6camera10SetOriginXEd
	movq	%rsi, %rcx
	call	_ZN3wze6engine6window9GetHeightEv
	shrw	%ax
	movq	%rsi, %rcx
	movzwl	%ax, %r15d
	call	_ZN3wze6engine6window9GetHeightEv
	shrw	%ax
	movq	%r14, %rcx
	movzwl	%ax, %edi
	negl	%edi
	call	_ZN3wze6engine6camera10GetOriginYEv
	movq	200(%rsp), %rcx
	movapd	%xmm0, %xmm14
	call	_ZN3wze6engine5mouse10GetMotionYEv
	movq	%rbx, %rcx
	movsd	%xmm0, 80(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	mulsd	80(%rsp), %xmm1
	addsd	%xmm14, %xmm1
	cmpl	%edi, %r15d
	jle	.L42
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edi, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L67
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r15d, %xmm0
	minsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
.L42:
	movq	%r14, %rcx
	call	_ZN3wze6engine6camera10SetOriginYEd
.L36:
	leaq	.LC24(%rip), %rax
	movq	%rbx, %rcx
	movq	%rax, 312(%rsp)
	leaq	312(%rsp), %rax
	movq	%rax, 80(%rsp)
	call	_ZN3wze6engine6timing12GetFrameTimeEv
	movl	%eax, %edx
	leaq	.LC25(%rip), %rdi
	movq	%rbx, %rcx
	movq	%rdx, 304(%rsp)
	leaq	304(%rsp), %rdx
	movq	%rdi, 296(%rsp)
	leaq	296(%rsp), %rdi
	movq	%rdx, 88(%rsp)
	movq	%rdi, 96(%rsp)
	call	_ZN3wze6engine6timing13GetRenderTimeEv
	movl	%eax, %ecx
	leaq	288(%rsp), %rdi
	leaq	280(%rsp), %r14
	movq	%rcx, 288(%rsp)
	leaq	.LC26(%rip), %rcx
	movq	%rcx, 280(%rsp)
	movq	%rbx, %rcx
	call	_ZN3wze6engine6timing11GetGameTimeEv
	movl	%eax, %ebx
	movq	184(%rsp), %rcx
	leaq	264(%rsp), %rax
	movq	$1, 248(%rsp)
	movq	%rbx, 272(%rsp)
	leaq	.LC27(%rip), %rbx
	leaq	272(%rsp), %r15
	movq	%rbx, 264(%rsp)
	leaq	240(%rsp), %rbx
	movq	%rbx, %rdx
	movq	%rax, 240(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	%r15, 224(%rsp)
	movq	%rax, %rcx
	leaq	224(%rsp), %r15
	movq	$1, 232(%rsp)
	movq	%r15, %rdx
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r14, 240(%rsp)
	movq	$1, 248(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIPKcE
	movq	%rax, %rcx
	movq	%r15, %rdx
	movq	%rdi, 224(%rsp)
	movq	$1, 232(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	96(%rsp), %rdi
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	$1, 248(%rsp)
	movq	%rdi, 240(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIPKcE
	movq	88(%rsp), %rdx
	movq	%rax, %rcx
	movq	$1, 232(%rsp)
	movq	%rdx, 224(%rsp)
	movq	%r15, %rdx
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	80(%rsp), %rax
	movq	$1, 248(%rsp)
	movq	%rax, 240(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIPKcE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	216(%rsp), %rdi
	movq	%rax, %rdx
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc
	movq	%rsi, %rcx
	call	_ZN3wze6engine6window9GetHeightEv
	movzwl	%ax, %eax
	pxor	%xmm14, %xmm14
	movq	%rdi, %rcx
	cvtsi2sdl	%eax, %xmm14
	divsd	.LC21(%rip), %xmm14
	call	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv
	shrw	%ax
	pxor	%xmm1, %xmm1
	movq	%rdi, %rcx
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm14, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd
.L2:
	movq	%rsi, %rcx
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	je	.L78
	movq	208(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	leaq	416(%rsi), %rbx
	movapd	%xmm0, %xmm14
	movq	%rbx, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm1, %xmm1
	movq	%rdi, %rcx
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm7, %xmm1
	addsd	%xmm14, %xmm1
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	movq	192(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	%rbx, %rcx
	movapd	%xmm0, %xmm14
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movapd	%xmm14, %xmm1
	movq	%rdi, %rcx
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm7, %xmm0
	subsd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	movq	176(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	%rbx, %rcx
	movapd	%xmm0, %xmm14
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm1, %xmm1
	movq	%rdi, %rcx
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm7, %xmm1
	addsd	%xmm14, %xmm1
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	movq	%rbx, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	cvtsi2sdq	%rax, %xmm0
	mulsd	104(%rsp), %xmm0
	addsd	%xmm0, %xmm15
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rbx, %rcx
	cvtsi2sdq	%rax, %xmm0
	mulsd	112(%rsp), %xmm0
	addsd	64(%rsp), %xmm0
	movsd	%xmm0, 64(%rsp)
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
.LEHE3:
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	120(%rsp), %xmm0
	addsd	72(%rsp), %xmm0
	movsd	%xmm0, 72(%rsp)
	pxor	%xmm0, %xmm0
	comisd	%xmm15, %xmm0
	jbe	.L79
	movsd	64(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	xorl	%r14d, %r14d
	pxor	%xmm15, %xmm15
	movsd	%xmm7, 104(%rsp)
	comisd	%xmm2, %xmm0
	jbe	.L80
.L49:
	movsd	72(%rsp), %xmm4
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	movq	$0x000000000, 64(%rsp)
	movsd	%xmm7, 112(%rsp)
	comisd	%xmm4, %xmm0
	jbe	.L81
.L51:
	movq	$0x000000000, 72(%rsp)
	xorl	%eax, %eax
	movsd	%xmm7, 120(%rsp)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L63:
	movsd	%xmm7, 168(%rsp)
	xorl	%eax, %eax
	pxor	%xmm13, %xmm13
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L61:
	movsd	%xmm7, 160(%rsp)
	xorl	%edi, %edi
	pxor	%xmm9, %xmm9
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L59:
	xorl	%r14d, %r14d
	pxor	%xmm8, %xmm8
	movsd	%xmm7, 152(%rsp)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L57:
	movsd	%xmm7, 144(%rsp)
	xorl	%eax, %eax
	pxor	%xmm12, %xmm12
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L55:
	movsd	%xmm7, 136(%rsp)
	xorl	%edi, %edi
	pxor	%xmm11, %xmm11
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L53:
	xorl	%r14d, %r14d
	pxor	%xmm10, %xmm10
	movsd	%xmm7, 128(%rsp)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L56:
	movsd	.LC3(%rip), %xmm3
	movl	$-1, %edi
	movapd	%xmm6, %xmm11
	movsd	%xmm3, 136(%rsp)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L54:
	movsd	.LC3(%rip), %xmm4
	movl	$-1, %r14d
	movapd	%xmm6, %xmm10
	movsd	%xmm4, 128(%rsp)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L52:
	movq	.LC3(%rip), %rdx
	movl	$-1, %eax
	movsd	%xmm6, 72(%rsp)
	movq	%rdx, 120(%rsp)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L50:
	movq	.LC3(%rip), %rax
	movl	$-1, %edi
	movsd	%xmm6, 64(%rsp)
	movq	%rax, 112(%rsp)
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L60:
	movsd	.LC3(%rip), %xmm5
	movl	$-1, %r14d
	movapd	%xmm6, %xmm8
	movsd	%xmm5, 152(%rsp)
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L58:
	movsd	.LC3(%rip), %xmm4
	movl	$-1, %eax
	movapd	%xmm6, %xmm12
	movsd	%xmm4, 144(%rsp)
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L64:
	movsd	.LC3(%rip), %xmm2
	movl	$-1, %eax
	movapd	%xmm6, %xmm13
	movsd	%xmm2, 168(%rsp)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L62:
	movsd	.LC3(%rip), %xmm3
	movl	$-1, %edi
	movapd	%xmm6, %xmm9
	movsd	%xmm3, 160(%rsp)
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L48:
	movq	.LC3(%rip), %rax
	movl	$-1, %r14d
	movapd	%xmm6, %xmm15
	movq	%rax, 104(%rsp)
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L78:
	movq	%rsi, %rcx
	call	_ZN3wze6engineD1Ev
	movl	$480, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	movq	184(%rsp), %rcx
	call	_ZN3neo6stringD1Ev
	nop
	movaps	336(%rsp), %xmm6
	movaps	352(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	368(%rsp), %xmm8
	movaps	384(%rsp), %xmm9
	movaps	400(%rsp), %xmm10
	movaps	416(%rsp), %xmm11
	movaps	432(%rsp), %xmm12
	movaps	448(%rsp), %xmm13
	movaps	464(%rsp), %xmm14
	movaps	480(%rsp), %xmm15
	addq	$504, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L67:
	movapd	%xmm0, %xmm1
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L65:
	movapd	%xmm0, %xmm1
	jmp	.L39
.L69:
	movq	%rax, %rbx
	jmp	.L45
.L70:
	movq	%rax, %rbx
	jmp	.L44
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8431:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8431-.LLSDACSB8431
.LLSDACSB8431:
	.uleb128 .LEHB0-.LFB8431
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8431
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L69-.LFB8431
	.uleb128 0
	.uleb128 .LEHB2-.LFB8431
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L70-.LFB8431
	.uleb128 0
	.uleb128 .LEHB3-.LFB8431
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L69-.LFB8431
	.uleb128 0
.LLSDACSE8431:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	568
	.seh_savereg	%rbx, 504
	.seh_savereg	%rsi, 512
	.seh_savereg	%rdi, 520
	.seh_savereg	%rbp, 528
	.seh_savexmm	%xmm6, 336
	.seh_savexmm	%xmm7, 352
	.seh_savereg	%r12, 536
	.seh_savereg	%r13, 544
	.seh_savereg	%r14, 552
	.seh_savereg	%r15, 560
	.seh_savexmm	%xmm8, 368
	.seh_savexmm	%xmm9, 384
	.seh_savexmm	%xmm10, 400
	.seh_savexmm	%xmm11, 416
	.seh_savexmm	%xmm12, 432
	.seh_savexmm	%xmm13, 448
	.seh_savexmm	%xmm14, 464
	.seh_savexmm	%xmm15, 480
	.seh_endprologue
main.cold:
.L44:
	movl	$480, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L45:
	movq	184(%rsp), %rcx
	call	_ZN3neo6stringD1Ev
	movq	%rbx, %rcx
.LEHB4:
	call	_Unwind_Resume
	nop
.LEHE4:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8431:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8431-.LLSDACSBC8431
.LLSDACSBC8431:
	.uleb128 .LEHB4-.LCOLDB28
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC8431:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE28:
	.section	.text.startup,"x"
.LHOTE28:
	.section .rdata,"dr"
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
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets8LoadFontEPKch;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12textureboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetDepthEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6render15SetSamplingStepEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse11SetRelativeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse14SetSensitivityEd;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window8HasFocusEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera10GetOriginXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse10GetMotionXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera10SetOriginXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera10GetOriginYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse10GetMotionYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera10SetOriginYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing13GetRenderTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing11GetGameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringpLESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringpLESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox10SetLiteralEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
