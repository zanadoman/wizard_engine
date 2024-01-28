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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movw	$100, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 34(%rax)
	movq	-8(%rbp), %rax
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 40(%rax)
	nop
	popq	%rbp
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
	.globl	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
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
	.size	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
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
	movsd	40(%rax), %xmm0
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
	movsd	%xmm0, 40(%rax)
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0
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
	.string	"slay::engine.render.SelectionStage(): Memory allocation failed"
	.align 8
.LC6:
	.string	"slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed"
	.align 8
.LC7:
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
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -200(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -184(%rbp)
	movq	$1, -160(%rbp)
	jmp	.L15
.L97:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L103
	movq	$1, -152(%rbp)
	jmp	.L18
.L36:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L19
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L19
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	25(%rax), %eax
	testb	%al, %al
	je	.L19
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
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
	jne	.L104
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm7
	movsd	%xmm7, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	28(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm3
	movsd	%xmm3, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	32(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm3
	movsd	%xmm3, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-208(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-176(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L24
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L24:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm4
	movsd	%xmm4, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L26
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L26
.L35:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	80(%rax), %r12
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-176(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L27
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movq	(%rax), %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L27
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	28(%rax), %edx
	movl	-96(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	32(%rax), %edx
	movl	-92(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	36(%rax), %edx
	movl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	40(%rax), %edx
	movl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	testb	%al, %al
	je	.L29
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L30
.L29:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L31
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L31
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L31
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L30
.L31:
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L32
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-200(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movzwl	%dx, %edx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	testb	%al, %al
	je	.L34
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L34:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	26(%rax), %eax
	movzbl	%al, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-176(%rbp), %r10
	leaq	-80(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$0, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
.L30:
	movq	-200(%rbp), %rax
	movsd	40(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L26:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L35
	jmp	.L23
.L104:
	nop
.L23:
	addq	$1, -152(%rbp)
.L18:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	cmpq	%rax, -152(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L36
	movq	$1, -144(%rbp)
	jmp	.L37
.L55:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L38
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L38
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L38
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L38
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
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
	jne	.L105
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm5
	movsd	%xmm5, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm6
	movsd	%xmm6, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm4
	movsd	%xmm4, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-208(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-176(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L43
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L43:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm7
	movsd	%xmm7, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L45
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L45
.L54:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	80(%rax), %r12
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-176(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L46
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movq	(%rax), %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L46
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	28(%rax), %edx
	movl	-96(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L46
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	32(%rax), %edx
	movl	-92(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L46
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	36(%rax), %edx
	movl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L46
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	40(%rax), %edx
	movl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movl	$0, %eax
.L47:
	testb	%al, %al
	je	.L48
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L49
.L48:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L50
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L50
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L50
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L49
.L50:
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L51
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-200(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movzwl	%dx, %edx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movl	$1, %eax
	jmp	.L52
.L51:
	movl	$0, %eax
.L52:
	testb	%al, %al
	je	.L53
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L53:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-176(%rbp), %r10
	leaq	-80(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$1, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
.L49:
	movq	-200(%rbp), %rax
	movsd	40(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L45:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L54
	jmp	.L42
.L105:
	nop
.L42:
	addq	$1, -144(%rbp)
.L37:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	cmpq	%rax, -144(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L55
	movq	$1, -136(%rbp)
	jmp	.L56
.L74:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L57
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	22(%rax), %eax
	testw	%ax, %ax
	je	.L57
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L57
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L57
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	72(%rax), %rax
	salq	$3, %rax
	addq	%rbx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L58
.L57:
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	testb	%al, %al
	jne	.L106
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm3
	movsd	%xmm3, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm4
	movsd	%xmm4, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	48(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm5
	movsd	%xmm5, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-208(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-176(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L62
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L62:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm5
	movsd	%xmm5, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L64
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L64
.L73:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	80(%rax), %r12
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-176(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L65
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movq	(%rax), %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L65
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	28(%rax), %edx
	movl	-96(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L65
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	32(%rax), %edx
	movl	-92(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L65
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	36(%rax), %edx
	movl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L65
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	40(%rax), %edx
	movl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L65
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	testb	%al, %al
	je	.L67
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L68
.L67:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L69
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L69
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L69
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L68
.L69:
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L70
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-200(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movzwl	%dx, %edx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movl	$1, %eax
	jmp	.L71
.L70:
	movl	$0, %eax
.L71:
	testb	%al, %al
	je	.L72
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-176(%rbp), %r10
	leaq	-80(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$2, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
.L68:
	movq	-200(%rbp), %rax
	movsd	40(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L64:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L73
	jmp	.L61
.L106:
	nop
.L61:
	addq	$1, -136(%rbp)
.L56:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -136(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L74
	movq	$1, -128(%rbp)
	jmp	.L75
.L96:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L76
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L76
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L76
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L76
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L77
.L76:
	movl	$1, %eax
	jmp	.L78
.L77:
	movl	$0, %eax
.L78:
	testb	%al, %al
	jne	.L107
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L81
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	34(%rax), %eax
	movb	%al, -188(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	35(%rax), %eax
	movb	%al, -187(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	36(%rax), %eax
	movb	%al, -186(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	movb	%al, -185(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %r12
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	600(%rax), %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	movl	-188(%rbp), %edx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	TTF_RenderText_Blended@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	sete	%al
	testb	%al, %al
	je	.L82
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L82:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	%rbx, 96(%rax)
	movq	96(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L83
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L83:
	movq	-120(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %eax
	imull	%ebx, %eax
	movq	-120(%rbp), %rdx
	movl	20(%rdx), %ebx
	cltd
	idivl	%ebx
	movl	%eax, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movw	%bx, 80(%rax)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
.L81:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm6
	movsd	%xmm6, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	56(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm7
	movsd	%xmm7, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	60(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm6
	movsd	%xmm6, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-208(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-176(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L84
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L84:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm3
	movsd	%xmm3, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-168(%rbp), %xmm0
	ucomisd	-176(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L86
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L86
.L95:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	80(%rax), %r12
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	80(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-176(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L87
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movq	(%rax), %rbx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L87
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	28(%rax), %edx
	movl	-96(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L87
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	32(%rax), %edx
	movl	-92(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L87
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	36(%rax), %edx
	movl	-88(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L87
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movl	40(%rax), %edx
	movl	-84(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L87
	movl	$1, %eax
	jmp	.L88
.L87:
	movl	$0, %eax
.L88:
	testb	%al, %al
	je	.L89
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L90
.L89:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L91
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L91
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L91
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	34(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L90
.L91:
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L92
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-200(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	8(%rdx), %edx
	movzwl	%dx, %edx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	movl	$1, %eax
	jmp	.L93
.L92:
	movl	$0, %eax
.L93:
	testb	%al, %al
	je	.L94
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-176(%rbp), %r10
	leaq	-80(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$3, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-200(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-184(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -184(%rbp)
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
.L90:
	movq	-200(%rbp), %rax
	movsd	40(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L86:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L95
	jmp	.L80
.L107:
	nop
.L80:
	addq	$1, -128(%rbp)
.L75:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	536(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -128(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L96
	jmp	.L17
.L103:
	nop
.L17:
	addq	$1, -160(%rbp)
.L15:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	addq	$536, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -160(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L97
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jnb	.L98
	movq	-200(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-200(%rbp), %rax
	movq	16(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L98
	movl	$1, %eax
	jmp	.L99
.L98:
	movl	$0, %eax
.L99:
	testb	%al, %al
	je	.L100
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L100:
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L102
	call	__stack_chk_fail@PLT
.L102:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
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
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render12OrderByLayerEyy
	movq	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L109
.L112:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movsd	16(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movsd	16(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L114
	ucomisd	%xmm1, %xmm0
	je	.L110
.L114:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render15OrderByPriorityEyy
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L110:
	addq	$1, -16(%rbp)
.L109:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L112
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render15OrderByPriorityEyy
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine6render13OrderingStageEv, .-_ZN4slay6engine6render13OrderingStageEv
	.align 2
	.globl	_ZN4slay6engine6render12OrderByLayerEyy
	.type	_ZN4slay6engine6render12OrderByLayerEyy, @function
_ZN4slay6engine6render12OrderByLayerEyy:
.LFB2210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	$1, -40(%rbp)
	jmp	.L116
.L121:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L117
.L120:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L118
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L118:
	movq	-40(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L119
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L119:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
.L117:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L120
	salq	-40(%rbp)
.L116:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L121
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6render12OrderByLayerEyy, .-_ZN4slay6engine6render12OrderByLayerEyy
	.align 2
	.globl	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.type	_ZN4slay6engine6render17OrderByLayerMergeEyyy, @function
_ZN4slay6engine6render17OrderByLayerMergeEyyy:
.LFB2211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	subq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rcx, %rdx
	leaq	-1(%rdx), %rbx
	movq	%rax, %r12
	jmp	.L124
.L125:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L124:
	testq	%rbx, %rbx
	jns	.L125
	movq	-144(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rcx, %rdx
	leaq	-1(%rdx), %rbx
	movq	%rax, %r12
	jmp	.L126
.L127:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L126:
	testq	%rbx, %rbx
	jns	.L127
	movq	$0, -112(%rbp)
	jmp	.L128
.L129:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rcx
	addq	%rcx, %rax
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
	addq	$1, -112(%rbp)
.L128:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L129
	movq	$0, -104(%rbp)
	jmp	.L130
.L131:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-136(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rcx
	addq	%rcx, %rax
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
	addq	$1, -104(%rbp)
.L130:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L131
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L132
.L137:
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movsd	(%rax), %xmm1
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movsd	(%rax), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L145
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -104(%rbp)
	jmp	.L135
.L145:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -112(%rbp)
.L135:
	addq	$1, -96(%rbp)
.L132:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L138
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L137
	jmp	.L138
.L139:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -112(%rbp)
	addq	$1, -96(%rbp)
.L138:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L139
	jmp	.L140
.L141:
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -104(%rbp)
	addq	$1, -96(%rbp)
.L140:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L141
	movl	$0, %eax
	movq	%r13, %rsp
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L143
	call	__stack_chk_fail@PLT
.L143:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZN4slay6engine6render17OrderByLayerMergeEyyy, .-_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.align 2
	.globl	_ZN4slay6engine6render15OrderByPriorityEyy
	.type	_ZN4slay6engine6render15OrderByPriorityEyy, @function
_ZN4slay6engine6render15OrderByPriorityEyy:
.LFB2212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	$1, -40(%rbp)
	jmp	.L147
.L152:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L148
.L151:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L149
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L149:
	movq	-40(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L150
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L150:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
.L148:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L151
	salq	-40(%rbp)
.L147:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L152
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2212:
	.size	_ZN4slay6engine6render15OrderByPriorityEyy, .-_ZN4slay6engine6render15OrderByPriorityEyy
	.align 2
	.globl	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, @function
_ZN4slay6engine6render20OrderByPriorityMergeEyyy:
.LFB2213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	subq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rcx, %rdx
	leaq	-1(%rdx), %rbx
	movq	%rax, %r12
	jmp	.L155
.L156:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L155:
	testq	%rbx, %rbx
	jns	.L156
	movq	-144(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rcx, %rsi
	movl	$0, %edi
	movq	%rsi, %rax
	movq	%rdi, %rdx
	shldq	$1, %rax, %rdx
	addq	%rax, %rax
	addq	%rsi, %rax
	adcq	%rdi, %rdx
	shldq	$7, %rax, %rdx
	salq	$7, %rax
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rcx, %rdx
	leaq	-1(%rdx), %rbx
	movq	%rax, %r12
	jmp	.L157
.L158:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L157:
	testq	%rbx, %rbx
	jns	.L158
	movq	$0, -112(%rbp)
	jmp	.L159
.L160:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rcx
	addq	%rcx, %rax
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
	addq	$1, -112(%rbp)
.L159:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L160
	movq	$0, -104(%rbp)
	jmp	.L161
.L162:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-136(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rcx
	addq	%rcx, %rax
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
	addq	$1, -104(%rbp)
.L161:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L162
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L163
.L167:
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$24, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %cl
	jnb	.L164
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -104(%rbp)
	jmp	.L165
.L164:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -112(%rbp)
.L165:
	addq	$1, -96(%rbp)
.L163:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L168
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L167
	jmp	.L168
.L169:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -112(%rbp)
	addq	$1, -96(%rbp)
.L168:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L169
	jmp	.L170
.L171:
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rcx
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
	addq	$1, -104(%rbp)
	addq	$1, -96(%rbp)
.L170:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L171
	movl	$0, %eax
	movq	%r13, %rsp
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L173
	call	__stack_chk_fail@PLT
.L173:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2213:
	.size	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, .-_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.section	.rodata
	.align 8
.LC8:
	.string	"slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC9:
	.string	"slay::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.type	_ZN4slay6engine6render14RenderingStageEv, @function
_ZN4slay6engine6render14RenderingStageEv:
.LFB2214:
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
	je	.L175
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L175:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L176
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L176:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L177
.L181:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movsd	16(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L198
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L180
.L198:
	addq	$1, -40(%rbp)
.L177:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L181
.L180:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L182
.L188:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	je	.L183
	cmpl	$3, %eax
	jg	.L184
	cmpl	$2, %eax
	je	.L185
	cmpl	$2, %eax
	jg	.L184
	testl	%eax, %eax
	je	.L186
	cmpl	$1, %eax
	je	.L187
	jmp	.L184
.L186:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
	jmp	.L184
.L187:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
	jmp	.L184
.L185:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	addq	$48, %rsp
	jmp	.L184
.L183:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
.L184:
	addq	$1, -32(%rbp)
.L182:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L188
	movq	$0, -24(%rbp)
	jmp	.L189
.L195:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	je	.L190
	cmpl	$3, %eax
	jg	.L191
	cmpl	$2, %eax
	je	.L192
	cmpl	$2, %eax
	jg	.L191
	testl	%eax, %eax
	je	.L193
	cmpl	$1, %eax
	je	.L194
	jmp	.L191
.L193:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
	jmp	.L191
.L194:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
	jmp	.L191
.L192:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	addq	$48, %rsp
	jmp	.L191
.L190:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
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
.L191:
	addq	$1, -24(%rbp)
.L189:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L195
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SDL_RenderPresent@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2214:
	.size	_ZN4slay6engine6render14RenderingStageEv, .-_ZN4slay6engine6render14RenderingStageEv
	.section	.rodata
	.align 8
.LC10:
	.string	"slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC11:
	.string	"slay::engine.render.RenderColor(): SDL_RenderFillRect failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.type	_ZN4slay6engine6render11RenderColorENS1_5tokenE, @function
_ZN4slay6engine6render11RenderColorENS1_5tokenE:
.LFB2215:
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
	je	.L200
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L200:
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
	je	.L201
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L201:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2215:
	.size	_ZN4slay6engine6render11RenderColorENS1_5tokenE, .-_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.section	.rodata
	.align 8
.LC12:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC13:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC15:
	.string	"slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.type	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, @function
_ZN4slay6engine6render13RenderTextureENS1_5tokenE:
.LFB2216:
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
	je	.L204
	movb	$1, -33(%rbp)
.L204:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L205
	orb	$2, -33(%rbp)
.L205:
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
	leaq	568(%rax), %rdx
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
	je	.L206
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L206:
	movq	16(%rbp), %rax
	movzbl	37(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
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
	je	.L207
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L207:
	movzbl	-33(%rbp), %r12d
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC14(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
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
	je	.L208
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L208:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2216:
	.size	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, .-_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.section	.rodata
	.align 8
.LC16:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC17:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC18:
	.string	"slay::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.type	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, @function
_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE:
.LFB2217:
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
	je	.L211
	movb	$1, -33(%rbp)
.L211:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L212
	orb	$2, -33(%rbp)
.L212:
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
	leaq	568(%rax), %rdx
	movq	16(%rbp), %rax
	movq	96(%rax), %rcx
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
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
	je	.L213
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L213:
	movq	16(%rbp), %rax
	movzbl	37(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	16(%rbp), %rax
	movq	96(%rax), %rcx
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
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
	je	.L214
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L214:
	movzbl	-33(%rbp), %r12d
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC14(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	568(%rax), %rdx
	movq	16(%rbp), %rax
	movq	96(%rax), %rcx
	movq	16(%rbp), %rax
	movq	72(%rax), %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
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
	je	.L215
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L215:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2217:
	.size	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, .-_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.section	.rodata
	.align 8
.LC19:
	.string	"slay::engine.render.RenderText(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.globl	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.type	_ZN4slay6engine6render10RenderTextENS1_5tokenE, @function
_ZN4slay6engine6render10RenderTextENS1_5tokenE:
.LFB2218:
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
	je	.L218
	movb	$1, -1(%rbp)
.L218:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L219
	orb	$2, -1(%rbp)
.L219:
	movzbl	-1(%rbp), %edi
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC14(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rcx
	movq	16(%rbp), %rax
	movq	96(%rax), %rsi
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
	je	.L220
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L220:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2218:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
.LFB2283:
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
.LFE2283:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.rodata
	.align 8
.LC20:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
.LFB2284:
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
	jb	.L225
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L225:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2284:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv:
.LFB2285:
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
.LFE2285:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy:
.LFB2286:
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
	jb	.L230
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L230:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2286:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv:
.LFB2287:
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
.LFE2287:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy:
.LFB2288:
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
	jb	.L235
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L235:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2288:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv:
.LFB2289:
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
.LFE2289:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy:
.LFB2290:
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
	jb	.L240
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L240:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2290:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv:
.LFB2291:
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
.LFE2291:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy:
.LFB2292:
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
	jb	.L245
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L245:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2292:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.section	.text._ZN3neo5arrayIP9_TTF_FontEixEy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEixEy
	.type	_ZN3neo5arrayIP9_TTF_FontEixEy, @function
_ZN3neo5arrayIP9_TTF_FontEixEy:
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
	jb	.L248
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L248:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2293:
	.size	_ZN3neo5arrayIP9_TTF_FontEixEy, .-_ZN3neo5arrayIP9_TTF_FontEixEy
	.section	.text._ZN3neo5arrayIP11SDL_TextureEixEy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEixEy
	.type	_ZN3neo5arrayIP11SDL_TextureEixEy, @function
_ZN3neo5arrayIP11SDL_TextureEixEy:
.LFB2294:
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
	jb	.L251
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L251:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2294:
	.size	_ZN3neo5arrayIP11SDL_TextureEixEy, .-_ZN3neo5arrayIP11SDL_TextureEixEy
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
.LC14:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
