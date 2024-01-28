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
	movw	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 10(%rax)
	movq	-8(%rbp), %rax
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movw	$128, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
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
	.globl	_ZN4slay6engine6renderD2Ev
	.type	_ZN4slay6engine6renderD2Ev, @function
_ZN4slay6engine6renderD2Ev:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6renderD2Ev, .-_ZN4slay6engine6renderD2Ev
	.globl	_ZN4slay6engine6renderD1Ev
	.set	_ZN4slay6engine6renderD1Ev,_ZN4slay6engine6renderD2Ev
	.align 2
	.globl	_ZN4slay6engine6render5tokenC2Ev
	.type	_ZN4slay6engine6render5tokenC2Ev, @function
_ZN4slay6engine6render5tokenC2Ev:
.LFB2203:
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
.LFE2203:
	.size	_ZN4slay6engine6render5tokenC2Ev, .-_ZN4slay6engine6render5tokenC2Ev
	.globl	_ZN4slay6engine6render5tokenC1Ev
	.set	_ZN4slay6engine6render5tokenC1Ev,_ZN4slay6engine6render5tokenC2Ev
	.align 2
	.globl	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB2206:
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
.LFE2206:
	.size	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.globl	_ZN4slay6engine6render15GetSamplingStepEv
	.type	_ZN4slay6engine6render15GetSamplingStepEv, @function
_ZN4slay6engine6render15GetSamplingStepEv:
.LFB2208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2208:
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
.LFB2209:
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
	jb	.L12
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L12:
	movq	-8(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN4slay6engine6render15SetSamplingStepEd, .-_ZN4slay6engine6render15SetSamplingStepEd
	.align 2
	.globl	_ZN4slay6engine6render15GetBufferSizeKBEv
	.type	_ZN4slay6engine6render15GetBufferSizeKBEv, @function
_ZN4slay6engine6render15GetBufferSizeKBEv:
.LFB2210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	shrq	$10, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2210:
	.size	_ZN4slay6engine6render15GetBufferSizeKBEv, .-_ZN4slay6engine6render15GetBufferSizeKBEv
	.align 2
	.globl	_ZN4slay6engine6render15SetBufferSizeKBEt
	.type	_ZN4slay6engine6render15SetBufferSizeKBEt, @function
_ZN4slay6engine6render15SetBufferSizeKBEt:
.LFB2211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	sall	$10, %eax
	cltq
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$5, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, 24(%rax)
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZN4slay6engine6render15SetBufferSizeKBEt, .-_ZN4slay6engine6render15SetBufferSizeKBEt
	.align 2
	.globl	_ZN4slay6engine6render6UpdateEv
	.type	_ZN4slay6engine6render6UpdateEv, @function
_ZN4slay6engine6render6UpdateEv:
.LFB2212:
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
.LFE2212:
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
.LFB2213:
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
	jmp	.L20
.L102:
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
	jne	.L109
	movq	$1, -152(%rbp)
	jmp	.L23
.L41:
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
	je	.L24
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
	je	.L24
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
	je	.L24
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
	je	.L24
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
	jne	.L25
.L24:
	movl	$1, %eax
	jmp	.L26
.L25:
	movl	$0, %eax
.L26:
	testb	%al, %al
	jne	.L110
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
	je	.L29
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L29:
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
	je	.L31
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L31
.L40:
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
	je	.L32
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L32
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L32
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L32
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L32
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movl	$0, %eax
.L33:
	testb	%al, %al
	je	.L34
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L35
.L34:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L36
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L36
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L36
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L35
.L36:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L37
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-200(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	24(%rdx), %edx
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
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	testb	%al, %al
	je	.L39
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L39:
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
	movq	40(%rax), %rcx
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
.L35:
	movq	-200(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L31:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L40
	jmp	.L28
.L110:
	nop
.L28:
	addq	$1, -152(%rbp)
.L23:
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
	jne	.L41
	movq	$1, -144(%rbp)
	jmp	.L42
.L60:
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
	je	.L43
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
	je	.L43
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
	je	.L43
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
	je	.L43
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
	je	.L43
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
	jne	.L44
.L43:
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	testb	%al, %al
	jne	.L111
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
	je	.L48
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L48:
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
	je	.L50
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L50
.L59:
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
	je	.L51
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L51
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L51
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L51
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L51
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L51
	movl	$1, %eax
	jmp	.L52
.L51:
	movl	$0, %eax
.L52:
	testb	%al, %al
	je	.L53
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L54
.L53:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L55
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L55
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L55
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L54
.L55:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L56
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-200(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	24(%rdx), %edx
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
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	testb	%al, %al
	je	.L58
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L58:
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
	movq	40(%rax), %rcx
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
.L54:
	movq	-200(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L50:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L59
	jmp	.L47
.L111:
	nop
.L47:
	addq	$1, -144(%rbp)
.L42:
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
	jne	.L60
	movq	$1, -136(%rbp)
	jmp	.L61
.L79:
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
	je	.L62
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
	je	.L62
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
	je	.L62
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
	je	.L62
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
	je	.L62
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
	jne	.L63
.L62:
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	testb	%al, %al
	jne	.L112
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
	je	.L67
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L67:
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
	je	.L69
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L69
.L78:
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
	je	.L70
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L70
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L70
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L70
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L70
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L70
	movl	$1, %eax
	jmp	.L71
.L70:
	movl	$0, %eax
.L71:
	testb	%al, %al
	je	.L72
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L73
.L72:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L74
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L74
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L74
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L73
.L74:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L75
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-200(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	24(%rdx), %edx
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
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L75
	movl	$1, %eax
	jmp	.L76
.L75:
	movl	$0, %eax
.L76:
	testb	%al, %al
	je	.L77
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
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
	movq	40(%rax), %rcx
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
.L73:
	movq	-200(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L69:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L78
	jmp	.L66
.L112:
	nop
.L66:
	addq	$1, -136(%rbp)
.L61:
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
	jne	.L79
	movq	$1, -128(%rbp)
	jmp	.L80
.L101:
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
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L81
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
	movzbl	37(%rax), %eax
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
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
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
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L82
.L81:
	movl	$1, %eax
	jmp	.L83
.L82:
	movl	$0, %eax
.L83:
	testb	%al, %al
	jne	.L113
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
	je	.L86
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
	je	.L87
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L87:
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
	je	.L88
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L88:
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
.L86:
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
	je	.L89
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
.L89:
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
	je	.L91
	movsd	-168(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L91
.L100:
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
	je	.L92
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L92
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L92
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L92
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L92
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
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
	jne	.L92
	movl	$1, %eax
	jmp	.L93
.L92:
	movl	$0, %eax
.L93:
	testb	%al, %al
	je	.L94
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	subq	$48, %rax
	addq	%rcx, %rax
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, 16(%rax)
	jmp	.L95
.L94:
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L96
	movl	-96(%rbp), %edx
	movl	-88(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L96
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L96
	movl	-92(%rbp), %edx
	movl	-84(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-200(%rbp), %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L95
.L96:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jne	.L97
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-200(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-200(%rbp), %rdx
	movzwl	24(%rdx), %edx
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
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movl	$1, %eax
	jmp	.L98
.L97:
	movl	$0, %eax
.L98:
	testb	%al, %al
	je	.L99
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L99:
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
	movq	40(%rax), %rcx
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
.L95:
	movq	-200(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.L91:
	movsd	-168(%rbp), %xmm0
	comisd	-176(%rbp), %xmm0
	ja	.L100
	jmp	.L85
.L113:
	nop
.L85:
	addq	$1, -128(%rbp)
.L80:
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
	jne	.L101
	jmp	.L22
.L109:
	nop
.L22:
	addq	$1, -160(%rbp)
.L20:
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	addq	$536, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -160(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L102
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -184(%rbp)
	jnb	.L103
	movq	-200(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-200(%rbp), %rax
	movq	32(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	movl	$1, %eax
	jmp	.L104
.L103:
	movl	$0, %eax
.L104:
	testb	%al, %al
	je	.L105
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L105:
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L106
	movq	-200(%rbp), %rax
	movq	$0, 40(%rax)
.L106:
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L108
	call	__stack_chk_fail@PLT
.L108:
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2213:
	.size	_ZN4slay6engine6render14SelectionStageEv, .-_ZN4slay6engine6render14SelectionStageEv
	.align 2
	.globl	_ZN4slay6engine6render13OrderingStageEv
	.type	_ZN4slay6engine6render13OrderingStageEv, @function
_ZN4slay6engine6render13OrderingStageEv:
.LFB2214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render12OrderByLayerEyy
	movq	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L115
.L118:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movsd	16(%rax), %xmm0
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movsd	16(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L120
	ucomisd	%xmm1, %xmm0
	je	.L116
.L120:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render15OrderByPriorityEyy
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L116:
	addq	$1, -16(%rbp)
.L115:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L118
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
.LFE2214:
	.size	_ZN4slay6engine6render13OrderingStageEv, .-_ZN4slay6engine6render13OrderingStageEv
	.align 2
	.globl	_ZN4slay6engine6render12OrderByLayerEyy
	.type	_ZN4slay6engine6render12OrderByLayerEyy, @function
_ZN4slay6engine6render12OrderByLayerEyy:
.LFB2215:
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
	jmp	.L122
.L127:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L123
.L126:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L124
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L124:
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
	je	.L125
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L125:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
.L123:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L126
	salq	-40(%rbp)
.L122:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L127
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2215:
	.size	_ZN4slay6engine6render12OrderByLayerEyy, .-_ZN4slay6engine6render12OrderByLayerEyy
	.align 2
	.globl	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.type	_ZN4slay6engine6render17OrderByLayerMergeEyyy, @function
_ZN4slay6engine6render17OrderByLayerMergeEyyy:
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
	jmp	.L130
.L131:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L130:
	testq	%rbx, %rbx
	jns	.L131
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
	jmp	.L132
.L133:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L132:
	testq	%rbx, %rbx
	jns	.L133
	movq	$0, -112(%rbp)
	jmp	.L134
.L135:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rcx
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
.L134:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L135
	movq	$0, -104(%rbp)
	jmp	.L136
.L137:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rcx
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
.L136:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L137
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L138
.L143:
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
	jbe	.L151
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
	jmp	.L141
.L151:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
.L141:
	addq	$1, -96(%rbp)
.L138:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L144
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L143
	jmp	.L144
.L145:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
.L144:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L145
	jmp	.L146
.L147:
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
.L146:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L147
	movl	$0, %eax
	movq	%r13, %rsp
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2216:
	.size	_ZN4slay6engine6render17OrderByLayerMergeEyyy, .-_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.align 2
	.globl	_ZN4slay6engine6render15OrderByPriorityEyy
	.type	_ZN4slay6engine6render15OrderByPriorityEyy, @function
_ZN4slay6engine6render15OrderByPriorityEyy:
.LFB2217:
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
	jmp	.L153
.L158:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L154
.L157:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L155
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L155:
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
	je	.L156
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L156:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
.L154:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L157
	salq	-40(%rbp)
.L153:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L158
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2217:
	.size	_ZN4slay6engine6render15OrderByPriorityEyy, .-_ZN4slay6engine6render15OrderByPriorityEyy
	.align 2
	.globl	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, @function
_ZN4slay6engine6render20OrderByPriorityMergeEyyy:
.LFB2218:
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
	jmp	.L161
.L162:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L161:
	testq	%rbx, %rbx
	jns	.L162
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
	jmp	.L163
.L164:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L163:
	testq	%rbx, %rbx
	jns	.L164
	movq	$0, -112(%rbp)
	jmp	.L165
.L166:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rcx
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
.L165:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L166
	movq	$0, -104(%rbp)
	jmp	.L167
.L168:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rcx
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
.L167:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L168
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L169
.L173:
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
	jnb	.L170
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
	jmp	.L171
.L170:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
.L171:
	addq	$1, -96(%rbp)
.L169:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L174
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L173
	jmp	.L174
.L175:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
.L174:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L175
	jmp	.L176
.L177:
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rsi
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
.L176:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L177
	movl	$0, %eax
	movq	%r13, %rsp
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L179
	call	__stack_chk_fail@PLT
.L179:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2218:
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
.LFB2219:
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
	je	.L181
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L181:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L182
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L182:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L183
.L187:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movsd	16(%rax), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L204
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L186
.L204:
	addq	$1, -40(%rbp)
.L183:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L187
.L186:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L188
.L194:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	je	.L189
	cmpl	$3, %eax
	jg	.L190
	cmpl	$2, %eax
	je	.L191
	cmpl	$2, %eax
	jg	.L190
	testl	%eax, %eax
	je	.L192
	cmpl	$1, %eax
	je	.L193
	jmp	.L190
.L192:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
	jmp	.L190
.L193:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
	jmp	.L190
.L191:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
	jmp	.L190
.L189:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
.L190:
	addq	$1, -32(%rbp)
.L188:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L194
	movq	$0, -24(%rbp)
	jmp	.L195
.L201:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	8(%rax), %eax
	cmpl	$3, %eax
	je	.L196
	cmpl	$3, %eax
	jg	.L197
	cmpl	$2, %eax
	je	.L198
	cmpl	$2, %eax
	jg	.L197
	testl	%eax, %eax
	je	.L199
	cmpl	$1, %eax
	je	.L200
	jmp	.L197
.L199:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
	jmp	.L197
.L200:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
	jmp	.L197
.L198:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
	jmp	.L197
.L196:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
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
.L197:
	addq	$1, -24(%rbp)
.L195:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L201
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
.LFE2219:
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
.LFB2220:
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
	je	.L206
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L206:
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
	je	.L207
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L207:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2220:
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
.LFB2221:
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
	je	.L210
	movb	$1, -33(%rbp)
.L210:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L211
	orb	$2, -33(%rbp)
.L211:
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
	je	.L212
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L212:
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
	je	.L213
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L213:
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
	je	.L214
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L214:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2221:
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
.LFB2222:
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
	je	.L217
	movb	$1, -33(%rbp)
.L217:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L218
	orb	$2, -33(%rbp)
.L218:
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
	je	.L219
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L219:
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
	je	.L220
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L220:
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
	je	.L221
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L221:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2222:
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
.LFB2223:
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
	je	.L224
	movb	$1, -1(%rbp)
.L224:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L225
	orb	$2, -1(%rbp)
.L225:
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
	je	.L226
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L226:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2223:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
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
	jb	.L231
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L231:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy:
.LFB2291:
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
	jb	.L236
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L236:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2291:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv:
.LFB2292:
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
.LFE2292:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy:
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
	jb	.L241
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L241:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy:
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
	jb	.L246
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L246:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
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
	jb	.L254
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L254:
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
	.section	.text._ZN3neo5arrayIP11SDL_TextureEixEy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEixEy
	.type	_ZN3neo5arrayIP11SDL_TextureEixEy, @function
_ZN3neo5arrayIP11SDL_TextureEixEy:
.LFB2299:
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
	jb	.L257
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L257:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2299:
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
