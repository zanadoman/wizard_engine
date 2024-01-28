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
	movw	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 26(%rax)
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
	subq	$280, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -280(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	$0, -264(%rbp)
	movq	$1, -240(%rbp)
	jmp	.L15
.L93:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	jne	.L97
	movq	$1, -232(%rbp)
	jmp	.L18
.L35:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L19
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L19
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	25(%rax), %eax
	testb	%al, %al
	je	.L19
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
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
	jne	.L98
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm7
	movsd	%xmm7, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	28(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm3
	movsd	%xmm3, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movl	32(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm3
	movsd	%xmm3, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-288(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-256(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L24
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -256(%rbp)
.L24:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm4
	movsd	%xmm4, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L26
	movsd	-248(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -248(%rbp)
	jmp	.L26
.L34:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	addq	$72, %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-256(%rbp), %xmm1
	movsd	-184(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	-288(%rbp), %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	cmpq	$0, -264(%rbp)
	je	.L27
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rbx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L27
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	28(%rax), %edx
	movl	-176(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	32(%rax), %edx
	movl	-172(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	36(%rax), %edx
	movl	-168(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	40(%rax), %edx
	movl	-164(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
.L28:
	testb	%al, %al
	je	.L29
	movsd	-256(%rbp), %xmm5
	movsd	%xmm5, -288(%rbp)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	-288(%rbp), %xmm5
	movsd	%xmm5, 16(%rax)
	jmp	.L30
.L29:
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
	movq	-280(%rbp), %rax
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
	movq	-280(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L30
.L31:
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -264(%rbp)
	sete	%al
	testb	%al, %al
	je	.L32
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	26(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$0, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$1, -312(%rbp)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-320(%rbp), %rsi
	movq	-312(%rbp), %rdi
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L33
.L32:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rax
	movzbl	26(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$0, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-132(%rbp), %rcx
	movq	-124(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
.L33:
	addq	$1, -264(%rbp)
.L30:
	movq	-280(%rbp), %rax
	movsd	32(%rax), %xmm0
	movsd	-256(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
.L26:
	movsd	-248(%rbp), %xmm0
	comisd	-256(%rbp), %xmm0
	ja	.L34
	jmp	.L23
.L98:
	nop
.L23:
	addq	$1, -232(%rbp)
.L18:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	cmpq	%rax, -232(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L35
	movq	$1, -224(%rbp)
	jmp	.L36
.L53:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L37
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L37
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L37
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L37
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L38
.L37:
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	testb	%al, %al
	jne	.L99
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm6
	movsd	%xmm6, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	40(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm7
	movsd	%xmm7, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm4
	movsd	%xmm4, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-288(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-256(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L42
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -256(%rbp)
.L42:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm3
	movsd	%xmm3, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L44
	movsd	-248(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -248(%rbp)
	jmp	.L44
.L52:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	addq	$72, %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-256(%rbp), %xmm1
	movsd	-184(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	-288(%rbp), %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	cmpq	$0, -264(%rbp)
	je	.L45
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rbx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L45
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	28(%rax), %edx
	movl	-176(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L45
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	32(%rax), %edx
	movl	-172(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L45
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	36(%rax), %edx
	movl	-168(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L45
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	40(%rax), %edx
	movl	-164(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L45
	movl	$1, %eax
	jmp	.L46
.L45:
	movl	$0, %eax
.L46:
	testb	%al, %al
	je	.L47
	movsd	-256(%rbp), %xmm4
	movsd	%xmm4, -288(%rbp)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	-288(%rbp), %xmm4
	movsd	%xmm4, 16(%rax)
	jmp	.L48
.L47:
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L49
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-280(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L49
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L49
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-280(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L48
.L49:
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -264(%rbp)
	sete	%al
	testb	%al, %al
	je	.L50
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$1, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	$1, -296(%rbp)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-304(%rbp), %rsi
	movq	-296(%rbp), %rdi
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L51
.L50:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	56(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$1, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-132(%rbp), %rcx
	movq	-124(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
.L51:
	addq	$1, -264(%rbp)
.L48:
	movq	-280(%rbp), %rax
	movsd	32(%rax), %xmm0
	movsd	-256(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
.L44:
	movsd	-248(%rbp), %xmm0
	comisd	-256(%rbp), %xmm0
	ja	.L52
	jmp	.L41
.L99:
	nop
.L41:
	addq	$1, -224(%rbp)
.L36:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	cmpq	%rax, -224(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L53
	movq	$1, -216(%rbp)
	jmp	.L54
.L71:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	testw	%ax, %ax
	je	.L55
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	22(%rax), %eax
	testw	%ax, %ax
	je	.L55
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L55
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L55
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rbx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movq	72(%rax), %rax
	salq	$3, %rax
	addq	%rbx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L56
.L55:
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	testb	%al, %al
	jne	.L100
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm5
	movsd	%xmm5, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	44(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm6
	movsd	%xmm6, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movl	48(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm5
	movsd	%xmm5, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-288(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-256(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L60
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -256(%rbp)
.L60:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm7
	movsd	%xmm7, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L62
	movsd	-248(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -248(%rbp)
	jmp	.L62
.L70:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	addq	$72, %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-256(%rbp), %xmm1
	movsd	-184(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	-288(%rbp), %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	cmpq	$0, -264(%rbp)
	je	.L63
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rbx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L63
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	28(%rax), %edx
	movl	-176(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L63
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	32(%rax), %edx
	movl	-172(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L63
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	36(%rax), %edx
	movl	-168(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L63
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	40(%rax), %edx
	movl	-164(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	testb	%al, %al
	je	.L65
	movsd	-256(%rbp), %xmm3
	movsd	%xmm3, -288(%rbp)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	-288(%rbp), %xmm3
	movsd	%xmm3, 16(%rax)
	jmp	.L66
.L65:
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L67
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-280(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L67
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L67
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-280(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L66
.L67:
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -264(%rbp)
	sete	%al
	testb	%al, %al
	je	.L68
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$2, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, %r14
	movl	$1, %r15d
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L69
.L68:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	88(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$2, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-132(%rbp), %rcx
	movq	-124(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
.L69:
	addq	$1, -264(%rbp)
.L66:
	movq	-280(%rbp), %rax
	movsd	32(%rax), %xmm0
	movsd	-256(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
.L62:
	movsd	-248(%rbp), %xmm0
	comisd	-256(%rbp), %xmm0
	ja	.L70
	jmp	.L59
.L100:
	nop
.L59:
	addq	$1, -216(%rbp)
.L54:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	cmpq	%rax, -216(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L71
	movq	$1, -208(%rbp)
	jmp	.L72
.L92:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L73
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	testw	%ax, %ax
	je	.L73
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	testb	%al, %al
	je	.L73
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	39(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L73
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L74
.L73:
	movl	$1, %eax
	jmp	.L75
.L74:
	movl	$0, %eax
.L75:
	testb	%al, %al
	jne	.L101
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L78
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	34(%rax), %eax
	movb	%al, -268(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	35(%rax), %eax
	movb	%al, -267(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	36(%rax), %eax
	movb	%al, -266(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	37(%rax), %eax
	movb	%al, -265(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	592(%rax), %rbx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIP9_TTF_FontEixEy
	movq	(%rax), %rax
	movl	-268(%rbp), %edx
	movq	-288(%rbp), %rsi
	movq	%rax, %rdi
	call	TTF_RenderText_Blended@PLT
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	sete	%al
	testb	%al, %al
	je	.L79
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L79:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, %rbx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movq	%rbx, 96(%rax)
	movq	96(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L80
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L80:
	movq	-200(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %eax
	imull	%ebx, %eax
	movq	-200(%rbp), %rdx
	movl	20(%rdx), %ebx
	cltd
	idivl	%ebx
	movl	%eax, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movw	%bx, 80(%rax)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	SDL_FreeSurface@PLT
.L78:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	152(%rax), %xmm4
	movsd	%xmm4, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	56(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	160(%rax), %xmm5
	movsd	%xmm5, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movl	60(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm6
	movsd	%xmm6, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	-288(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-256(%rbp), %xmm0
	setnb	%al
	testb	%al, %al
	je	.L81
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -256(%rbp)
.L81:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	176(%rax), %xmm6
	movsd	%xmm6, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	movsd	184(%rax), %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	addsd	-288(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	setnp	%al
	movl	$0, %edx
	movsd	-248(%rbp), %xmm0
	ucomisd	-256(%rbp), %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L83
	movsd	-248(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -248(%rbp)
	jmp	.L83
.L91:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	addq	$72, %rax
	movq	%rax, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	18(%rax), %eax
	movzwl	%ax, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzwl	80(%rax), %eax
	movzwl	%ax, %ecx
	movsd	-256(%rbp), %xmm1
	movsd	-184(%rbp), %xmm0
	movq	-192(%rbp), %rax
	movapd	%xmm1, %xmm2
	movl	%ebx, %edx
	movl	%ecx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movq	-288(%rbp), %rdi
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	cmpq	$0, -264(%rbp)
	je	.L84
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	(%rax), %rbx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L84
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	28(%rax), %edx
	movl	-176(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L84
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	32(%rax), %edx
	movl	-172(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L84
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	36(%rax), %edx
	movl	-168(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L84
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	40(%rax), %edx
	movl	-164(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L84
	movl	$1, %eax
	jmp	.L85
.L84:
	movl	$0, %eax
.L85:
	testb	%al, %al
	je	.L86
	movsd	-256(%rbp), %xmm2
	movsd	%xmm2, -288(%rbp)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	-264(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movsd	-288(%rbp), %xmm2
	movsd	%xmm2, 16(%rax)
	jmp	.L87
.L86:
	movl	-176(%rbp), %eax
	movl	-168(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L88
	movl	-176(%rbp), %edx
	movl	-168(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-280(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jle	.L88
	movl	-172(%rbp), %eax
	movl	-164(%rbp), %edx
	sarl	%edx
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L88
	movl	-172(%rbp), %edx
	movl	-164(%rbp), %eax
	sarl	%eax
	subl	%eax, %edx
	movq	-280(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jg	.L87
.L88:
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -264(%rbp)
	sete	%al
	testb	%al, %al
	je	.L89
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-112(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$3, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	leaq	-112(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	jmp	.L90
.L89:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rax
	movzbl	38(%rax), %eax
	movzbl	%al, %ebx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	movq	(%rax), %rsi
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	-256(%rbp), %r10
	leaq	-160(%rbp), %rdi
	movq	%rax, %r8
	movq	%rdx, %r9
	movl	%ebx, %ecx
	movq	%r10, %xmm0
	movl	$3, %edx
	call	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-132(%rbp), %rcx
	movq	-124(%rbp), %rbx
	movq	%rcx, 28(%rax)
	movq	%rbx, 36(%rax)
.L90:
	addq	$1, -264(%rbp)
.L87:
	movq	-280(%rbp), %rax
	movsd	32(%rax), %xmm0
	movsd	-256(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
.L83:
	movsd	-248(%rbp), %xmm0
	comisd	-256(%rbp), %xmm0
	ja	.L91
	jmp	.L77
.L101:
	nop
.L77:
	addq	$1, -208(%rbp)
.L72:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	528(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	movq	(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	cmpq	%rax, -208(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L92
	jmp	.L17
.L97:
	nop
.L17:
	addq	$1, -240(%rbp)
.L15:
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	addq	$528, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	cmpq	%rax, -240(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L93
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -264(%rbp)
	setb	%al
	testb	%al, %al
	je	.L94
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	subq	-264(%rbp), %rax
	movq	%rax, %rdx
	movq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy
.L94:
	movl	$0, %eax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L96
	call	__stack_chk_fail@PLT
.L96:
	addq	$280, %rsp
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
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render12OrderByLayerEyy
	movq	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L103
.L105:
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
	je	.L104
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6render15OrderByPriorityEyy
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L104:
	addq	$1, -16(%rbp)
.L103:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -16(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L105
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
	jmp	.L108
.L113:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L109
.L112:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L110
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L110:
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
	je	.L111
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L111:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
.L109:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L112
	salq	-40(%rbp)
.L108:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L113
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
	jmp	.L116
.L117:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L116:
	testq	%rbx, %rbx
	jns	.L117
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
	jmp	.L118
.L119:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L118:
	testq	%rbx, %rbx
	jns	.L119
	movq	$0, -112(%rbp)
	jmp	.L120
.L121:
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rdx
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
.L120:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L121
	movq	$0, -104(%rbp)
	jmp	.L122
.L123:
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	-136(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rdx
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
.L122:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L123
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L124
.L129:
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
	jbe	.L137
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -104(%rbp)
	jmp	.L127
.L137:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -112(%rbp)
.L127:
	addq	$1, -96(%rbp)
.L124:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L130
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L129
	jmp	.L130
.L131:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -112(%rbp)
	addq	$1, -96(%rbp)
.L130:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L131
	jmp	.L132
.L133:
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -104(%rbp)
	addq	$1, -96(%rbp)
.L132:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L133
	movl	$0, %eax
	movq	%r13, %rsp
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L135
	call	__stack_chk_fail@PLT
.L135:
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
	jmp	.L139
.L144:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L140
.L143:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	je	.L141
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.L141:
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
	je	.L142
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L142:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	addq	%rax, -32(%rbp)
.L140:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L143
	salq	-40(%rbp)
.L139:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L144
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
	jmp	.L147
.L148:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L147:
	testq	%rbx, %rbx
	jns	.L148
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
	jmp	.L149
.L150:
	movq	%r12, %rdi
	call	_ZN4slay6engine6render5tokenC1Ev
	subq	$1, %rbx
	addq	$48, %r12
.L149:
	testq	%rbx, %rbx
	jns	.L150
	movq	$0, -112(%rbp)
	jmp	.L151
.L152:
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rdx
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
.L151:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L152
	movq	$0, -104(%rbp)
	jmp	.L153
.L154:
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	-136(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movq	%rax, %rdx
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
.L153:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L154
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L155
.L159:
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
	jnb	.L156
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -104(%rbp)
	jmp	.L157
.L156:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -112(%rbp)
.L157:
	addq	$1, -96(%rbp)
.L155:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L160
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L159
	jmp	.L160
.L161:
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-72(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -112(%rbp)
	addq	$1, -96(%rbp)
.L160:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L161
	jmp	.L162
.L163:
	movq	-104(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-48(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
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
	addq	$1, -104(%rbp)
	addq	$1, -96(%rbp)
.L162:
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L163
	movl	$0, %eax
	movq	%r13, %rsp
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L165
	call	__stack_chk_fail@PLT
.L165:
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
	je	.L167
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L167:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L168
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L168:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L169
.L172:
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
	je	.L170
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L171
.L170:
	addq	$1, -40(%rbp)
.L169:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -40(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L172
.L171:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L173
.L179:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	8(%rax), %eax
	cmpl	$3, %eax
	je	.L174
	cmpl	$3, %eax
	jg	.L175
	cmpl	$2, %eax
	je	.L176
	cmpl	$2, %eax
	jg	.L175
	testl	%eax, %eax
	je	.L177
	cmpl	$1, %eax
	je	.L178
	jmp	.L175
.L177:
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
	jmp	.L175
.L178:
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
	jmp	.L175
.L176:
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
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	addq	$48, %rsp
	jmp	.L175
.L174:
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
.L175:
	addq	$1, -32(%rbp)
.L173:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L179
	movq	$0, -24(%rbp)
	jmp	.L180
.L186:
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy
	movl	8(%rax), %eax
	cmpl	$3, %eax
	je	.L181
	cmpl	$3, %eax
	jg	.L182
	cmpl	$2, %eax
	je	.L183
	cmpl	$2, %eax
	jg	.L182
	testl	%eax, %eax
	je	.L184
	cmpl	$1, %eax
	je	.L185
	jmp	.L182
.L184:
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
	jmp	.L182
.L185:
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
	jmp	.L182
.L183:
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
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	addq	$48, %rsp
	jmp	.L182
.L181:
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
.L182:
	addq	$1, -24(%rbp)
.L180:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L186
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
	je	.L189
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L189:
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
	je	.L190
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L190:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2215:
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
	je	.L193
	movb	$1, -33(%rbp)
.L193:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L194
	orb	$2, -33(%rbp)
.L194:
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
	leaq	560(%rax), %rdx
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
	je	.L195
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L195:
	movq	16(%rbp), %rax
	movzbl	37(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	560(%rax), %rdx
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
	je	.L196
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L196:
	movzbl	-33(%rbp), %r12d
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC13(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	560(%rax), %rdx
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
	je	.L197
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L197:
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
.LC15:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC16:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC17:
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
	je	.L200
	movb	$1, -33(%rbp)
.L200:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L201
	orb	$2, -33(%rbp)
.L201:
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
	leaq	560(%rax), %rdx
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
	je	.L202
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L202:
	movq	16(%rbp), %rax
	movzbl	37(%rax), %eax
	movzbl	%al, %ebx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	560(%rax), %rdx
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
	je	.L203
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L203:
	movzbl	-33(%rbp), %r12d
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC13(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	560(%rax), %rdx
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
	je	.L204
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L204:
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
.LC18:
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
	je	.L207
	movb	$1, -1(%rbp)
.L207:
	movq	16(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L208
	orb	$2, -1(%rbp)
.L208:
	movzbl	-1(%rbp), %edi
	movq	16(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	.LC13(%rip), %xmm1
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
	je	.L209
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L209:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2218:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEEC5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev:
.LFB2284:
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
.LFE2284:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev, .-_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEEC1Ev
	.set	_ZN3neo5arrayIN4slay6engine6render5tokenEEC1Ev,_ZN3neo5arrayIN4slay6engine6render5tokenEEC2Ev
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6LengthEv
	.section	.rodata
	.align 8
.LC19:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy:
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
	jb	.L215
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L215:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy:
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
	jb	.L220
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L220:
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
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor6colors5colorEEixEy
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
	jb	.L223
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L223:
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
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv:
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
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv, .-_ZN3neo5arrayIN4slay6engine6render5tokenEE6LengthEv
	.section	.text._ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	.type	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv, @function
_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv:
.LFB2296:
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
.LFE2296:
	.size	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv, .-_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	.section	.rodata
	.align 8
.LC20:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E:
.LFB2295:
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
	je	.L230
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
	je	.L231
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE4sizeEv
	movq	%rax, %rdx
	movl	$48, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L231:
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
.L230:
	movq	-40(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2295:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E, .-_ZN3neo5arrayIN4slay6engine6render5tokenEEpLESt16initializer_listIS4_E
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv:
.LFB2297:
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
.LFE2297:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy:
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
	jb	.L236
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
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
.LFE2298:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor8textures7textureEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv:
.LFB2299:
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
.LFE2299:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy:
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
	jb	.L241
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
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
.LFE2300:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor9flipbooks8flipbookEEixEy
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv:
.LFB2301:
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
.LFE2301:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6LengthEv
	.section	.text._ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,"axG",@progbits,_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy:
.LFB2302:
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
	leaq	.LC19(%rip), %rax
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
.LFE2302:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEEixEy
	.section	.text._ZN3neo5arrayIP9_TTF_FontEixEy,"axG",@progbits,_ZN3neo5arrayIP9_TTF_FontEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP9_TTF_FontEixEy
	.type	_ZN3neo5arrayIP9_TTF_FontEixEy, @function
_ZN3neo5arrayIP9_TTF_FontEixEy:
.LFB2303:
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
	jb	.L249
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L249:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2303:
	.size	_ZN3neo5arrayIP9_TTF_FontEixEy, .-_ZN3neo5arrayIP9_TTF_FontEixEy
	.section	.rodata
	.align 8
.LC21:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC22:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC23:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text._ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy,"axG",@progbits,_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy,comdat
	.align 2
	.weak	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy:
.LFB2304:
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
	jb	.L252
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L252:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jnb	.L253
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L253:
	cmpq	$0, -56(%rbp)
	je	.L254
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L255
.L256:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$1, -32(%rbp)
.L255:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L256
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
	je	.L257
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L254
.L257:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L258
.L259:
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
.L258:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L259
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
	je	.L254
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L254:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2304:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy, .-_ZN3neo5arrayIN4slay6engine6render5tokenEE6RemoveEyy
	.section	.text._ZN3neo5arrayIP11SDL_TextureEixEy,"axG",@progbits,_ZN3neo5arrayIP11SDL_TextureEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIP11SDL_TextureEixEy
	.type	_ZN3neo5arrayIP11SDL_TextureEixEy, @function
_ZN3neo5arrayIP11SDL_TextureEixEy:
.LFB2305:
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
	jb	.L262
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L262:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2305:
	.size	_ZN3neo5arrayIP11SDL_TextureEixEy, .-_ZN3neo5arrayIP11SDL_TextureEixEy
	.section	.text._ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv
	.type	_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv, @function
_ZNKSt16initializer_listIN4slay6engine6render5tokenEE5beginEv:
.LFB2356:
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
.LFE2356:
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
