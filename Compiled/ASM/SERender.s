	.file	"SERender.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6renderC2ERS0_
	.type	_ZN4slay6engine6renderC2ERS0_, @function
_ZN4slay6engine6renderC2ERS0_:
.LFB2197:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEC1Ev
	movq	-8(%rbp), %rax
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 32(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6renderC2ERS0_, .-_ZN4slay6engine6renderC2ERS0_
	.globl	_ZN4slay6engine6renderC1ERS0_
	.set	_ZN4slay6engine6renderC1ERS0_,_ZN4slay6engine6renderC2ERS0_
	.align 2
	.globl	_ZN4slay6engine6render5tokenC2Ev
	.type	_ZN4slay6engine6render5tokenC2Ev, @function
_ZN4slay6engine6render5tokenC2Ev:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6render5tokenC2Ev, .-_ZN4slay6engine6render5tokenC2Ev
	.globl	_ZN4slay6engine6render5tokenC1Ev
	.set	_ZN4slay6engine6render5tokenC1Ev,_ZN4slay6engine6render5tokenC2Ev
	.align 2
	.globl	_ZN4slay6engine6render5tokenC2EPvNS1_7token_tEdh8SDL_Rect
	.type	_ZN4slay6engine6render5tokenC2EPvNS1_7token_tEdh8SDL_Rect, @function
_ZN4slay6engine6render5tokenC2EPvNS1_7token_tEdh8SDL_Rect:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, %eax
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
	movb	%al, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	-32(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movzbl	-24(%rbp), %edx
	movb	%dl, 24(%rax)
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 28(%rcx)
	movq	%rdx, 36(%rcx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6render5tokenC2EPvNS1_7token_tEdh8SDL_Rect, .-_ZN4slay6engine6render5tokenC2EPvNS1_7token_tEdh8SDL_Rect
	.globl	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	.set	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect,_ZN4slay6engine6render5tokenC2EPvNS1_7token_tEdh8SDL_Rect
	.align 2
	.globl	_ZN4slay6engine6render15GetSamplingStepEv
	.type	_ZN4slay6engine6render15GetSamplingStepEv, @function
_ZN4slay6engine6render15GetSamplingStepEv:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine6render15GetSamplingStepEv, .-_ZN4slay6engine6render15GetSamplingStepEv
	.section	.rodata
	.align 8
.LC2:
	.string	"slay::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\nParams: SamplingStep: %lf\n"
	.text
	.align 2
	.globl	_ZN4slay6engine6render15SetSamplingStepEd
	.type	_ZN4slay6engine6render15SetSamplingStepEd, @function
_ZN4slay6engine6render15SetSamplingStepEd:
.LFB2206:
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
	jb	.L11
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L11:
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6render15SetSamplingStepEd, .-_ZN4slay6engine6render15SetSamplingStepEd
	.align 2
	.globl	_ZN4slay6engine6render6UpdateEv
	.type	_ZN4slay6engine6render6UpdateEv, @function
_ZN4slay6engine6render6UpdateEv:
.LFB2207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render14SelectionStageEv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render13OrderingStageEv
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render14RenderingStageEv
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2207:
	.size	_ZN4slay6engine6render6UpdateEv, .-_ZN4slay6engine6render6UpdateEv
	.section	.rodata
	.align 8
.LC5:
	.string	"slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed"
	.align 8
.LC6:
	.string	"slay::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render14SelectionStageEv
	.type	_ZN4slay6engine6render14SelectionStageEv, @function
_ZN4slay6engine6render14SelectionStageEv:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -264(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	$0, -240(%rbp)
	movq	$1, -224(%rbp)
	jmp	.L15
.L78:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L85
	movq	$1, -216(%rbp)
	jmp	.L18
.L36:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L19
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L19
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	25(%rax), %eax
	testb	%al, %al
	je	.L19
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	27(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L20
.L19:
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	testb	%al, %al
	jne	.L86
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm1
	movq	-264(%rbp), %rax
	movsd	32(%rax), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	testb	%al, %al
	je	.L24
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %r13
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm6
	movsd	%xmm6, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	128(%rax), %xmm3
	movsd	%xmm3, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	32(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-360(%rbp), %xmm0
	movsd	%xmm0, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	120(%rax), %xmm4
	movsd	%xmm4, -368(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	28(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm3
	addsd	-368(%rbp), %xmm3
	movq	%xmm3, %rax
	movsd	-272(%rbp), %xmm2
	movl	%r12d, %edx
	movl	%ebx, %esi
	movsd	-360(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%r13, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L25
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L25
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L25
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L23
.L25:
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -240(%rbp)
	sete	%al
	testb	%al, %al
	je	.L26
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	26(%rax), %eax
	movzbl	%al, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movq	144(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movq	%rbx, %xmm0
	movl	$0, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	$1, -344(%rbp)
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L27
.L26:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	26(%rax), %eax
	movzbl	%al, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movq	144(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movq	%rbx, %xmm0
	movl	$0, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-132(%rbp), %rax
	movq	-124(%rbp), %rdx
	movq	%rax, 28(%rcx)
	movq	%rdx, 36(%rcx)
.L27:
	addq	$1, -240(%rbp)
	jmp	.L23
.L24:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm4
	movsd	%xmm4, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-272(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm6
	movsd	%xmm6, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-272(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-232(%rbp), %xmm0
	jb	.L28
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -232(%rbp)
.L28:
	jmp	.L30
.L35:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %r13
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	128(%rax), %xmm7
	movsd	%xmm7, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	32(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-272(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	120(%rax), %xmm5
	movsd	%xmm5, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	28(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm5
	addsd	-360(%rbp), %xmm5
	movq	%xmm5, %rax
	movsd	-232(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movl	%r12d, %edx
	movl	%ebx, %esi
	movsd	-272(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%r13, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L31
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L31
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L31
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L32
.L31:
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -240(%rbp)
	sete	%al
	testb	%al, %al
	je	.L33
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	26(%rax), %eax
	movzbl	%al, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %r10
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%rsi, %xmm0
	movl	$0, %edx
	movq	%r10, %rsi
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$1, -328(%rbp)
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L34
.L33:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	26(%rax), %eax
	movzbl	%al, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %r10
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%rsi, %xmm0
	movl	$0, %edx
	movq	%r10, %rsi
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-132(%rbp), %rax
	movq	-124(%rbp), %rdx
	movq	%rax, 28(%rcx)
	movq	%rdx, 36(%rcx)
.L34:
	addq	$1, -240(%rbp)
.L32:
	movq	-264(%rbp), %rax
	movsd	32(%rax), %xmm0
	movsd	-232(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
.L30:
	movsd	-184(%rbp), %xmm0
	comisd	-232(%rbp), %xmm0
	ja	.L35
	jmp	.L23
.L86:
	nop
.L23:
	addq	$1, -216(%rbp)
.L18:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	cmpq	%rax, -216(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L36
	movq	$1, -208(%rbp)
	jmp	.L37
.L55:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L38
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L38
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L38
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L38
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L39
.L38:
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	testb	%al, %al
	jne	.L87
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm1
	movq	-264(%rbp), %rax
	movsd	32(%rax), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	testb	%al, %al
	je	.L43
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %r13
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm5
	movsd	%xmm5, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	128(%rax), %xmm4
	movsd	%xmm4, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-360(%rbp), %xmm0
	movsd	%xmm0, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	120(%rax), %xmm6
	movsd	%xmm6, -368(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm6
	addsd	-368(%rbp), %xmm6
	movq	%xmm6, %rax
	movsd	-272(%rbp), %xmm2
	movl	%r12d, %edx
	movl	%ebx, %esi
	movsd	-360(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%r13, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L44
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L44
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L44
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L42
.L44:
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -240(%rbp)
	sete	%al
	testb	%al, %al
	je	.L45
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movq	144(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movq	%rbx, %xmm0
	movl	$1, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$1, -312(%rbp)
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L46
.L45:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movq	144(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movq	%rbx, %xmm0
	movl	$1, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-132(%rbp), %rax
	movq	-124(%rbp), %rdx
	movq	%rax, 28(%rcx)
	movq	%rdx, 36(%rcx)
.L46:
	addq	$1, -240(%rbp)
	jmp	.L42
.L43:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm7
	movsd	%xmm7, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-272(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm5
	movsd	%xmm5, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-272(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-232(%rbp), %xmm0
	jb	.L47
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -232(%rbp)
.L47:
	jmp	.L49
.L54:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %r13
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	128(%rax), %xmm3
	movsd	%xmm3, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-272(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	120(%rax), %xmm6
	movsd	%xmm6, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm4
	addsd	-360(%rbp), %xmm4
	movq	%xmm4, %rax
	movsd	-232(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movl	%r12d, %edx
	movl	%ebx, %esi
	movsd	-272(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%r13, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L50
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L50
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L50
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L51
.L50:
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -240(%rbp)
	sete	%al
	testb	%al, %al
	je	.L52
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %r10
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%rsi, %xmm0
	movl	$1, %edx
	movq	%r10, %rsi
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	$1, -296(%rbp)
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L53
.L52:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %r10
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%rsi, %xmm0
	movl	$1, %edx
	movq	%r10, %rsi
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-132(%rbp), %rax
	movq	-124(%rbp), %rdx
	movq	%rax, 28(%rcx)
	movq	%rdx, 36(%rcx)
.L53:
	addq	$1, -240(%rbp)
.L51:
	movq	-264(%rbp), %rax
	movsd	32(%rax), %xmm0
	movsd	-232(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
.L49:
	movsd	-184(%rbp), %xmm0
	comisd	-232(%rbp), %xmm0
	ja	.L54
	jmp	.L42
.L87:
	nop
.L42:
	addq	$1, -208(%rbp)
.L37:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	cmpq	%rax, -208(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L55
	movq	$1, -200(%rbp)
	jmp	.L56
.L77:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L57
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L57
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L57
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L57
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L58
.L57:
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	testb	%al, %al
	jne	.L88
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	80(%rax), %eax
	testb	%al, %al
	je	.L62
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyTexture@PLT
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	34(%rax), %eax
	movb	%al, -244(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	35(%rax), %eax
	movb	%al, -243(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	36(%rax), %eax
	movb	%al, -242(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	movb	%al, -241(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %r12
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	584(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rcx
	movl	-244(%rbp), %eax
	movl	%eax, %edx
	movq	%r12, %rsi
	movq	%rcx, %rdi
	call	TTF_RenderText_Blended@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	sete	%al
	testb	%al, %al
	je	.L63
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L63:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	%rbx, 88(%rax)
	movq	88(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L64
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L64:
	movq	-192(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %eax
	imull	%ebx, %eax
	movq	-192(%rbp), %rdx
	movl	20(%rdx), %ebx
	cltd
	idivl	%ebx
	movl	%eax, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movw	%bx, 82(%rax)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movb	$0, 80(%rax)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
.L62:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm1
	movq	-264(%rbp), %rax
	movsd	32(%rax), %xmm0
	comisd	%xmm1, %xmm0
	setnb	%al
	testb	%al, %al
	je	.L65
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %r13
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm7
	movsd	%xmm7, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	82(%rax), %eax
	movzwl	%ax, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	128(%rax), %xmm4
	movsd	%xmm4, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-360(%rbp), %xmm0
	movsd	%xmm0, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	120(%rax), %xmm5
	movsd	%xmm5, -368(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm7
	addsd	-368(%rbp), %xmm7
	movq	%xmm7, %rax
	movsd	-272(%rbp), %xmm2
	movl	%r12d, %edx
	movl	%ebx, %esi
	movsd	-360(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%r13, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L66
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L66
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L66
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L61
.L66:
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -240(%rbp)
	sete	%al
	testb	%al, %al
	je	.L67
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movq	144(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movq	%rbx, %xmm0
	movl	$2, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L68
.L67:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movq	144(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%r12d, %ecx
	movq	%rbx, %xmm0
	movl	$2, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-132(%rbp), %rax
	movq	-124(%rbp), %rdx
	movq	%rax, 28(%rcx)
	movq	%rdx, 36(%rcx)
.L68:
	addq	$1, -240(%rbp)
	jmp	.L61
.L65:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm3
	movsd	%xmm3, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-272(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	144(%rax), %xmm2
	movsd	%xmm2, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-272(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-232(%rbp), %xmm0
	jb	.L69
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -232(%rbp)
.L69:
	jmp	.L71
.L76:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	72(%rax), %r13
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %r12d
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	82(%rax), %eax
	movzwl	%ax, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	128(%rax), %xmm7
	movsd	%xmm7, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-272(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	120(%rax), %xmm3
	movsd	%xmm3, -360(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm5
	addsd	-360(%rbp), %xmm5
	movq	%xmm5, %rax
	movsd	-232(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	movl	%r12d, %edx
	movl	%ebx, %esi
	movsd	-272(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%r13, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L72
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L72
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L72
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-264(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L73
.L72:
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -240(%rbp)
	sete	%al
	testb	%al, %al
	je	.L74
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %r10
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%rsi, %xmm0
	movl	$2, %edx
	movq	%r10, %rsi
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, %r14
	movl	$1, %r15d
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rax
	movq	%r15, %rdx
	movq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L75
.L74:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %r10
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%rsi, %xmm0
	movl	$2, %edx
	movq	%r10, %rsi
	call	_ZN4slay6engine6render5tokenC1EPvNS1_7token_tEdh8SDL_Rect
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-132(%rbp), %rax
	movq	-124(%rbp), %rdx
	movq	%rax, 28(%rcx)
	movq	%rdx, 36(%rcx)
.L75:
	addq	$1, -240(%rbp)
.L73:
	movq	-264(%rbp), %rax
	movsd	32(%rax), %xmm0
	movsd	-232(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
.L71:
	movsd	-184(%rbp), %xmm0
	comisd	-232(%rbp), %xmm0
	ja	.L76
	jmp	.L61
.L88:
	nop
.L61:
	addq	$1, -200(%rbp)
.L56:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -200(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L77
	jmp	.L17
.L85:
	nop
.L17:
	addq	$1, -224(%rbp)
.L15:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	addq	$520, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -224(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L78
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -240(%rbp)
	setb	%al
	testb	%al, %al
	je	.L79
	movq	-264(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-264(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	subq	-240(%rbp), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy
.L79:
	movl	$0, %eax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	addq	$328, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
	.size	_ZN4slay6engine6render14SelectionStageEv, .-_ZN4slay6engine6render14SelectionStageEv
	.align 2
	.globl	_ZN4slay6engine6render13OrderingStageEv
	.type	_ZN4slay6engine6render13OrderingStageEv, @function
_ZN4slay6engine6render13OrderingStageEv:
.LFB2209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	subq	$1, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render12OrderByLayerExx
	movq	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L90
.L92:
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	16(%rax), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	16(%rax), %xmm0
	movsd	-32(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	setp	%al
	movl	$1, %edx
	ucomisd	%xmm0, %xmm1
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L91
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render15OrderByPriorityExx
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L91:
	addq	$1, -16(%rbp)
.L90:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -16(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L92
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render15OrderByPriorityExx
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine6render13OrderingStageEv, .-_ZN4slay6engine6render13OrderingStageEv
	.align 2
	.globl	_ZN4slay6engine6render12OrderByLayerExx
	.type	_ZN4slay6engine6render12OrderByLayerExx, @function
_ZN4slay6engine6render12OrderByLayerExx:
.LFB2210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r12
	movq	-152(%rbp), %rax
	subq	-144(%rbp), %rax
	addq	$1, %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	movq	-152(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jg	.L95
	movl	$0, %eax
	jmp	.L96
.L95:
	movq	-144(%rbp), %rcx
	movq	$0, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-152(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	jmp	.L97
.L102:
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.L98
.L100:
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	16(%rax), %xmm1
	movsd	%xmm1, -160(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	16(%rax), %xmm0
	comisd	-160(%rbp), %xmm0
	seta	%al
	testb	%al, %al
	je	.L99
	addq	$1, -120(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	36(%rax), %rdx
	movq	28(%rax), %rax
	movq	%rax, -52(%rbp)
	movq	%rdx, -44(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rbx
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	28(%rbx), %rcx
	movq	36(%rbx), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-52(%rbp), %rcx
	movq	-44(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
.L99:
	addq	$1, -104(%rbp)
.L98:
	movq	-104(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jle	.L100
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	-120(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	36(%rax), %rdx
	movq	28(%rax), %rax
	movq	%rax, -52(%rbp)
	movq	%rdx, -44(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rbx
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	-120(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	28(%rbx), %rcx
	movq	36(%rbx), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-52(%rbp), %rcx
	movq	-44(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.L101
	movq	-144(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-120(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
.L101:
	movq	-120(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, -152(%rbp)
	jle	.L97
	movq	-120(%rbp), %rax
	leaq	2(%rax), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-152(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
.L97:
	cmpq	$0, -112(%rbp)
	jns	.L102
	movl	$0, %eax
.L96:
	movq	%r12, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L104
	call	__stack_chk_fail@PLT
.L104:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6render12OrderByLayerExx, .-_ZN4slay6engine6render12OrderByLayerExx
	.align 2
	.globl	_ZN4slay6engine6render15OrderByPriorityExx
	.type	_ZN4slay6engine6render15OrderByPriorityExx, @function
_ZN4slay6engine6render15OrderByPriorityExx:
.LFB2211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r12
	movq	-152(%rbp), %rax
	subq	-144(%rbp), %rax
	addq	$1, %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -96(%rbp)
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	movq	-152(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jg	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-144(%rbp), %rcx
	movq	$0, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-152(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	jmp	.L108
.L113:
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -112(%rbp)
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.L109
.L111:
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movzbl	24(%rax), %ebx
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movzbl	24(%rax), %eax
	cmpb	%al, %bl
	setb	%al
	testb	%al, %al
	je	.L110
	addq	$1, -120(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	36(%rax), %rdx
	movq	28(%rax), %rax
	movq	%rax, -52(%rbp)
	movq	%rdx, -44(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rbx
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	28(%rbx), %rcx
	movq	36(%rbx), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-52(%rbp), %rcx
	movq	-44(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
.L110:
	addq	$1, -104(%rbp)
.L109:
	movq	-104(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jle	.L111
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	-120(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	36(%rax), %rdx
	movq	28(%rax), %rax
	movq	%rax, -52(%rbp)
	movq	%rdx, -44(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rbx
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	-120(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movq	28(%rbx), %rcx
	movq	36(%rbx), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-52(%rbp), %rcx
	movq	-44(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
	movq	-144(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.L112
	movq	-144(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-120(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
.L112:
	movq	-120(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, -152(%rbp)
	jle	.L108
	movq	-120(%rbp), %rax
	leaq	2(%rax), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-152(%rbp), %rcx
	addq	$1, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
.L108:
	cmpq	$0, -112(%rbp)
	jns	.L113
	movl	$0, %eax
.L107:
	movq	%r12, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L115
	call	__stack_chk_fail@PLT
.L115:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZN4slay6engine6render15OrderByPriorityExx, .-_ZN4slay6engine6render15OrderByPriorityExx
	.section	.rodata
	.align 8
.LC7:
	.string	"slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC8:
	.string	"slay::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.type	_ZN4slay6engine6render14RenderingStageEv, @function
_ZN4slay6engine6render14RenderingStageEv:
.LFB2212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	$255, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L117
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L118
.L117:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L119
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L118
.L119:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L120
.L123:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	16(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	seta	%al
	testb	%al, %al
	je	.L121
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L122
.L121:
	addq	$1, -40(%rbp)
.L120:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L123
.L122:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L124
.L129:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L125
	cmpl	$2, %eax
	jg	.L126
	testl	%eax, %eax
	je	.L127
	cmpl	$1, %eax
	je	.L128
	jmp	.L126
.L127:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-56(%rbp), %rsi
	subq	$48, %rsp
	movq	%rsp, %rdx
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32(%rdx)
	movq	%rbx, 40(%rdx)
	movq	%rsi, %rdi
	call	_ZN4slay6engine6render11RenderColorENS1_5tokenE
	addq	$48, %rsp
	jmp	.L126
.L128:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-56(%rbp), %rsi
	subq	$48, %rsp
	movq	%rsp, %rdx
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32(%rdx)
	movq	%rbx, 40(%rdx)
	movq	%rsi, %rdi
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	addq	$48, %rsp
	jmp	.L126
.L125:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-56(%rbp), %rsi
	subq	$48, %rsp
	movq	%rsp, %rdx
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32(%rdx)
	movq	%rbx, 40(%rdx)
	movq	%rsi, %rdi
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	addq	$48, %rsp
	nop
.L126:
	addq	$1, -32(%rbp)
.L124:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L129
	movq	$0, -24(%rbp)
	jmp	.L130
.L135:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	8(%rax), %eax
	cmpl	$2, %eax
	je	.L131
	cmpl	$2, %eax
	jg	.L132
	testl	%eax, %eax
	je	.L133
	cmpl	$1, %eax
	je	.L134
	jmp	.L132
.L133:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-56(%rbp), %rsi
	subq	$48, %rsp
	movq	%rsp, %rdx
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32(%rdx)
	movq	%rbx, 40(%rdx)
	movq	%rsi, %rdi
	call	_ZN4slay6engine6render11RenderColorENS1_5tokenE
	addq	$48, %rsp
	jmp	.L132
.L134:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-56(%rbp), %rsi
	subq	$48, %rsp
	movq	%rsp, %rdx
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32(%rdx)
	movq	%rbx, 40(%rdx)
	movq	%rsi, %rdi
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	addq	$48, %rsp
	jmp	.L132
.L131:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-56(%rbp), %rsi
	subq	$48, %rsp
	movq	%rsp, %rdx
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, (%rdx)
	movq	%rbx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, 32(%rdx)
	movq	%rbx, 40(%rdx)
	movq	%rsi, %rdi
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	addq	$48, %rsp
	nop
.L132:
	addq	$1, -24(%rbp)
.L130:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L135
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SDL_RenderPresent@PLT
	movl	$0, %eax
.L118:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2212:
	.size	_ZN4slay6engine6render14RenderingStageEv, .-_ZN4slay6engine6render14RenderingStageEv
	.section	.rodata
	.align 8
.LC9:
	.string	"slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC10:
	.string	"slay::engine.render.RenderColor(): SDL_RenderFillRect failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.type	_ZN4slay6engine6render11RenderColorENS1_5tokenE, @function
_ZN4slay6engine6render11RenderColorENS1_5tokenE:
.LFB2213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	16(%rbp), %rax
	movzbl	25(%rax), %eax
	movzbl	%al, %edi
	movq	16(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %ecx
	movq	16(%rbp), %rax
	movzbl	23(%rax), %eax
	movzbl	%al, %edx
	movq	16(%rbp), %rax
	movzbl	22(%rax), %eax
	movzbl	%al, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L137
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L137:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	leaq	44(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L138
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L138:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2213:
	.size	_ZN4slay6engine6render11RenderColorENS1_5tokenE, .-_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.section	.rodata
	.align 8
.LC11:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC12:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC14:
	.string	"slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.type	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, @function
_ZN4slay6engine6render13RenderTextureENS1_5tokenE:
.LFB2214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movb	$0, -33(%rbp)
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L141
	movb	$1, -33(%rbp)
.L141:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L142
	orb	$2, -33(%rbp)
.L142:
	movq	16(%rbp), %rax
	movzbl	36(%rax), %eax
	movzbl	%al, %r13d
	movq	16(%rbp), %rax
	movzbl	35(%rax), %eax
	movzbl	%al, %r12d
	movq	16(%rbp), %rax
	movzbl	34(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	552(%rax), %rdx
	movq	16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L143
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L143:
	movq	16(%rbp), %rax
	movzbl	37(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	552(%rax), %rdx
	movq	16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rax
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L144
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L144:
	movzbl	-33(%rbp), %r12d
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC13(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	552(%rax), %rdx
	movq	16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIP11SDL_TextureEixEy
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	leaq	44(%rbp), %rdx
	movl	%r12d, %r9d
	movl	$0, %r8d
	movq	%rbx, %xmm0
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L145
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L145:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2214:
	.size	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, .-_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.section	.rodata
	.align 8
.LC15:
	.string	"slay::engine.render.RenderText(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.type	_ZN4slay6engine6render10RenderTextENS1_5tokenE, @function
_ZN4slay6engine6render10RenderTextENS1_5tokenE:
.LFB2215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movb	$0, -1(%rbp)
	movq	16(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L148
	movb	$1, -1(%rbp)
.L148:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L149
	orb	$2, -1(%rbp)
.L149:
	movzbl	-1(%rbp), %edi
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC13(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rcx
	movq	16(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	leaq	44(%rbp), %rdx
	movl	%edi, %r9d
	movl	$0, %r8d
	movq	%rcx, %xmm0
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L150
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L150:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2215:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEEC5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev:
.LFB2281:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2281:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev, .-_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEEC1Ev
	.set	_ZN3neo5arrayIN4slay6engine6render5tokenEEC1Ev,_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2286:
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
.LFE2286:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.rodata
	.align 8
.LC16:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2287:
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
	jb	.L156
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L156:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2287:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv:
.LFB2288:
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
.LFE2288:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy:
.LFB2289:
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
	jb	.L161
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L161:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2289:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv:
.LFB2290:
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
.LFE2290:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv, .-_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	.section	.text._ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	.type	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv, @function
_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv:
.LFB2292:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv, .-_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	.section	.rodata
	.align 8
.LC17:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E:
.LFB2291:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L168
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L169
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	movq	%rax, %rdx
	movl	$48, %esi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L169:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %r13
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %r12
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	movq	%r12, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L168:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E, .-_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEEixEy,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy:
.LFB2293:
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
	jb	.L172
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L172:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2293:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy, .-_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv:
.LFB2294:
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
.LFE2294:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy:
.LFB2295:
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
	jb	.L177
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L177:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2295:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv:
.LFB2296:
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
.LFE2296:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy:
.LFB2297:
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
	jb	.L182
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L182:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2297:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.section	.text._ZN3neo5arrayIP9_TTF_FontEixEy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEixEy
	.type	_ZN3neo5arrayIP9_TTF_FontEixEy, @function
_ZN3neo5arrayIP9_TTF_FontEixEy:
.LFB2298:
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
	jb	.L185
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L185:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2298:
	.size	_ZN3neo5arrayIP9_TTF_FontEixEy, .-_ZN3neo5arrayIP9_TTF_FontEixEy
	.section	.rodata
	.align 8
.LC18:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC19:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC20:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy:
.LFB2299:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L188
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L188:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L189
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L189:
	cmpq	$0, -56(%rbp)
	je	.L190
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L191
.L192:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$1, -32(%rbp)
.L191:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L192
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L193
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L190
.L193:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L194
.L195:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	28(%rdx), %rcx
	movq	36(%rdx), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
	addq	$1, -24(%rbp)
.L194:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L195
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L190
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L190:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2299:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy, .-_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy
	.section	.text._ZN3neo5arrayIP11SDL_TextureEixEy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEixEy
	.type	_ZN3neo5arrayIP11SDL_TextureEixEy, @function
_ZN3neo5arrayIP11SDL_TextureEixEy:
.LFB2300:
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
	jb	.L198
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L198:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2300:
	.size	_ZN3neo5arrayIP11SDL_TextureEixEy, .-_ZN3neo5arrayIP11SDL_TextureEixEy
	.section	.text._ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv
	.type	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv, @function
_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv:
.LFB2351:
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
.LFE2351:
	.size	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv, .-_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv
	.section	.rodata
	.align 8
.LC0:
	.long	-755914244
	.long	1063281229
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.align 8
.LC4:
	.long	-350469331
	.long	1058682594
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
