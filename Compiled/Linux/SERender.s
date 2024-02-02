	.file	"SERender.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6renderC2EPS0_
	.type	_ZN4slay6engine6renderC2EPS0_, @function
_ZN4slay6engine6renderC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	.LC0(%rip), %rax
	movq	%rsi, (%rdi)
	movl	$0, 8(%rdi)
	movq	%rax, 16(%rdi)
	movl	$128, %eax
	movw	%ax, 24(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 40(%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN4slay6engine6renderC2EPS0_, .-_ZN4slay6engine6renderC2EPS0_
	.globl	_ZN4slay6engine6renderC1EPS0_
	.set	_ZN4slay6engine6renderC1EPS0_,_ZN4slay6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6renderD2Ev
	.type	_ZN4slay6engine6renderD2Ev, @function
_ZN4slay6engine6renderD2Ev:
.LFB2235:
	.cfi_startproc
	movq	40(%rdi), %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE2235:
	.size	_ZN4slay6engine6renderD2Ev, .-_ZN4slay6engine6renderD2Ev
	.globl	_ZN4slay6engine6renderD1Ev
	.set	_ZN4slay6engine6renderD1Ev,_ZN4slay6engine6renderD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render5tokenC2Ev
	.type	_ZN4slay6engine6render5tokenC2Ev, @function
_ZN4slay6engine6render5tokenC2Ev:
.LFB2238:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6render5tokenC2Ev, .-_ZN4slay6engine6render5tokenC2Ev
	.globl	_ZN4slay6engine6render5tokenC1Ev
	.set	_ZN4slay6engine6render5tokenC1Ev,_ZN4slay6engine6render5tokenC2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB2241:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movl	%edx, 8(%rdi)
	movb	%cl, 24(%rdi)
	movq	%r8, 28(%rdi)
	movq	%r9, 36(%rdi)
	movsd	%xmm0, 16(%rdi)
	ret
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15GetSamplingStepEv
	.type	_ZN4slay6engine6render15GetSamplingStepEv, @function
_ZN4slay6engine6render15GetSamplingStepEv:
.LFB2243:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6render15GetSamplingStepEv, .-_ZN4slay6engine6render15GetSamplingStepEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"slay::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\nParams: SamplingStep: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetSamplingStepEd
	.type	_ZN4slay6engine6render15SetSamplingStepEd, @function
_ZN4slay6engine6render15SetSamplingStepEd:
.LFB2244:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L15
	movsd	%xmm0, 16(%rdi)
	ret
.L15:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6render15SetSamplingStepEd, .-_ZN4slay6engine6render15SetSamplingStepEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15GetBufferSizeKBEv
	.type	_ZN4slay6engine6render15GetBufferSizeKBEv, @function
_ZN4slay6engine6render15GetBufferSizeKBEv:
.LFB2245:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	leaq	(%rax,%rax,2), %rax
	shrq	$6, %rax
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6render15GetBufferSizeKBEv, .-_ZN4slay6engine6render15GetBufferSizeKBEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetBufferSizeKBEt
	.type	_ZN4slay6engine6render15SetBufferSizeKBEt, @function
_ZN4slay6engine6render15SetBufferSizeKBEt:
.LFB2246:
	.cfi_startproc
	movabsq	$-6148914691236517205, %rax
	movq	%rsi, %rdx
	salq	$10, %rdx
	andl	$67107840, %edx
	mulq	%rdx
	shrq	$5, %rdx
	movw	%dx, 24(%rdi)
	movl	%edx, %eax
	ret
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6render15SetBufferSizeKBEt, .-_ZN4slay6engine6render15SetBufferSizeKBEt
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC7:
	.string	"slay::engine.render.SelectionStage(): Memory allocation failed"
	.align 8
.LC8:
	.string	"slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed"
	.align 8
.LC9:
	.string	"slay::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14SelectionStageEv
	.type	_ZN4slay6engine6render14SelectionStageEv, @function
_ZN4slay6engine6render14SelectionStageEv:
.LFB2248:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	(%rdi), %rax
	movq	536(%rax), %rdx
	cmpq	$1, %rdx
	jbe	.L19
	movl	$1, %r13d
	xorl	%r14d, %r14d
	movq	%r14, (%rsp)
	movq	%r13, %r14
	movq	%rdi, %r13
	.p2align 4,,10
	.p2align 3
.L141:
	movq	544(%rax), %rcx
	leaq	0(,%r14,8), %r15
	cmpq	$0, (%rcx,%r14,8)
	je	.L20
	cmpq	%rdx, %r14
	jnb	.L233
	movl	$1, %ebp
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L47:
	movq	32(%rdi), %rsi
	leaq	0(,%rbp,8), %rbx
	movq	(%rsi,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L22
	cmpw	$0, 16(%rsi)
	je	.L22
	cmpw	$0, 18(%rsi)
	je	.L22
	cmpb	$0, 23(%rsi)
	je	.L22
	cmpb	$0, 26(%rsi)
	jne	.L239
	.p2align 4,,10
	.p2align 3
.L22:
	addq	$1, %rbp
	cmpq	%rdx, %r14
	jnb	.L233
.L21:
	movq	(%rcx,%r15), %rdi
	cmpq	24(%rdi), %rbp
	jb	.L47
	cmpq	%rdx, %r14
	jnb	.L233
	movl	$1, %ebp
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L73:
	movq	64(%rdi), %rsi
	leaq	0(,%rbp,8), %rbx
	movq	(%rsi,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L49
	cmpw	$0, 16(%rsi)
	je	.L49
	cmpw	$0, 18(%rsi)
	je	.L49
	cmpb	$0, 23(%rsi)
	je	.L49
	cmpb	$0, 37(%rsi)
	je	.L49
	cmpq	$0, 64(%rsi)
	jne	.L240
	.p2align 4,,10
	.p2align 3
.L49:
	addq	$1, %rbp
	cmpq	%rdx, %r14
	jnb	.L233
.L48:
	movq	(%rcx,%r15), %rdi
	cmpq	56(%rdi), %rbp
	jb	.L73
	cmpq	%rdx, %r14
	jnb	.L233
	movl	$1, %ebp
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L99:
	movq	96(%rdi), %rsi
	leaq	0(,%rbp,8), %rbx
	movq	(%rsi,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L75
	cmpw	$0, 16(%rsi)
	je	.L75
	cmpw	$0, 18(%rsi)
	je	.L75
	cmpb	$0, 23(%rsi)
	je	.L75
	cmpb	$0, 37(%rsi)
	je	.L75
	movq	72(%rsi), %r9
	movq	96(%rsi), %r8
	cmpq	$0, (%r8,%r9,8)
	jne	.L241
	.p2align 4,,10
	.p2align 3
.L75:
	addq	$1, %rbp
	cmpq	%rdx, %r14
	jnb	.L233
.L74:
	movq	(%rcx,%r15), %rdi
	cmpq	88(%rdi), %rbp
	jb	.L99
	cmpq	%rdx, %r14
	jnb	.L233
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L100:
	movq	(%rcx,%r15), %rcx
	cmpq	120(%rcx), %r12
	jnb	.L20
.L140:
	movq	128(%rcx), %rcx
	leaq	0(,%r12,8), %rbx
	movq	(%rcx,%r12,8), %rdi
	testq	%rdi, %rdi
	je	.L242
	addq	$72, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jbe	.L102
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rsi
	movq	128(%rsi), %r8
	cmpq	120(%rsi), %r12
	jnb	.L232
	movq	(%r8,%rbx), %rdi
	cmpw	$0, 16(%rdi)
	jne	.L243
.L106:
	movq	(%rcx,%r15), %rcx
	addq	$1, %r12
	cmpq	120(%rcx), %r12
	jb	.L140
	.p2align 4,,10
	.p2align 3
.L20:
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	.L141
	movq	(%rsp), %r14
	movq	32(%r13), %rax
	movq	%r13, %r15
	cmpq	%rax, %r14
	jb	.L144
.L142:
	testq	%rax, %rax
	je	.L145
.L180:
	addq	$72, %rsp
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
.L242:
	.cfi_restore_state
	movq	544(%rax), %rcx
.L102:
	addq	$1, %r12
	cmpq	%rdx, %r14
	jb	.L100
.L233:
	movq	%r14, %rsi
.L231:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L243:
	cmpb	$0, 21(%rdi)
	je	.L106
	cmpb	$0, 37(%rdi)
	je	.L106
	cmpq	$0, 88(%rdi)
	je	.L106
	cmpq	$0, 96(%rdi)
	je	.L244
	movsd	152(%rsi), %xmm0
.L116:
	movq	(%r8,%rbx), %rdi
	pxor	%xmm4, %xmm4
	pxor	%xmm7, %xmm7
	pxor	%xmm1, %xmm1
	movsd	176(%rsi), %xmm3
	cvtsi2sdl	40(%rdi), %xmm4
	movapd	%xmm3, %xmm2
	cvtsi2sdl	44(%rdi), %xmm1
	addsd	160(%rsi), %xmm1
	addsd	%xmm0, %xmm4
	movsd	.LC6(%rip), %xmm0
	mulsd	184(%rsi), %xmm0
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	comisd	%xmm2, %xmm7
	jnb	.L245
	ucomisd	%xmm2, %xmm3
	jp	.L121
	jne	.L121
	addsd	.LC4(%rip), %xmm3
.L121:
	comisd	%xmm2, %xmm3
	jbe	.L102
	movq	(%rsp), %rbp
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L249:
	movl	8(%rsp), %eax
	testl	%eax, %eax
	je	.L125
	pshufd	$255, %xmm0, %xmm5
	movd	%xmm0, %edi
	movd	%xmm5, %r9d
	movdqa	%xmm0, %xmm5
	punpckhdq	%xmm0, %xmm5
	movd	%xmm5, %esi
	pshufd	$85, %xmm0, %xmm5
	movd	%xmm5, %r8d
	testq	%rbp, %rbp
	jne	.L246
.L126:
	sarl	%esi
	movl	%esi, %eax
	addl	%edi, %eax
	js	.L247
.L130:
	cmpq	%rbp, 32(%r13)
	je	.L133
.L136:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rcx
	movq	128(%rcx), %rsi
	cmpq	120(%rcx), %r12
	jnb	.L232
	movq	(%rsi,%rbx), %rsi
	leaq	0(%rbp,%rbp,2), %rcx
	addq	$1, %rbp
	salq	$4, %rcx
	addq	40(%r13), %rcx
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$3, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L132:
	addsd	16(%r13), %xmm2
	movsd	48(%rsp), %xmm6
	comisd	%xmm2, %xmm6
	jbe	.L248
.L138:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rdx
	movq	128(%rdx), %rax
	cmpq	120(%rdx), %r12
	jnb	.L232
	movq	(%rax,%rbx), %rdx
	movsd	40(%rsp), %xmm0
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm1, 16(%rsp)
	movzwl	16(%rdx), %eax
	movzwl	64(%rdx), %esi
	movl	%eax, %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm1
	movsd	32(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L249
.L125:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L247:
	movzwl	10(%r13), %eax
	subl	%esi, %edi
	cmpl	%eax, %edi
	jle	.L130
	movl	%r9d, %edx
	movl	%r8d, %edi
	sarl	%edx
	addl	%edx, %edi
	jns	.L130
	movl	%r8d, %ecx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	.L125
	cmpq	%rbp, 32(%r13)
	jne	.L136
	.p2align 4,,10
	.p2align 3
.L133:
	movzwl	24(%r13), %eax
	movq	40(%r13), %rdi
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rbp,%rax), %rax
	movaps	%xmm0, (%rsp)
	movq	%rax, 32(%r13)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movdqa	(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	testq	%rax, %rax
	movq	%rax, 40(%r13)
	movsd	32(%rsp), %xmm1
	jne	.L136
.L42:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L246:
	movq	40(%r13), %rdx
	leaq	0(%rbp,%rbp,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %r11
	movq	128(%r11), %r10
	cmpq	120(%r11), %r12
	jnb	.L232
	movq	16(%rsp), %r11
	cmpq	(%r10,%rbx), %r11
	jne	.L126
	movq	(%rsp), %r10
	cmpl	%edi, 28(%r10)
	jne	.L126
	cmpl	32(%r10), %r8d
	jne	.L126
	cmpl	%esi, 36(%r10)
	jne	.L126
	cmpl	%r9d, 40(%r10)
	jne	.L126
	movsd	%xmm2, 16(%r10)
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L248:
	movq	%rbp, (%rsp)
	addq	$1, %r12
	cmpq	%rdx, %r14
	jb	.L100
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L239:
	movsd	.LC6(%rip), %xmm0
	pxor	%xmm7, %xmm7
	pxor	%xmm4, %xmm4
	pxor	%xmm1, %xmm1
	mulsd	184(%rdi), %xmm0
	movsd	176(%rdi), %xmm3
	cvtsi2sdl	28(%rsi), %xmm4
	cvtsi2sdl	32(%rsi), %xmm1
	addsd	152(%rdi), %xmm4
	movapd	%xmm3, %xmm2
	addsd	160(%rdi), %xmm1
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	comisd	%xmm2, %xmm7
	jnb	.L250
	ucomisd	%xmm3, %xmm2
	jp	.L27
	jne	.L27
	addsd	.LC4(%rip), %xmm3
.L27:
	comisd	%xmm2, %xmm3
	jbe	.L22
	movq	(%rsp), %r12
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L254:
	pshufd	$255, %xmm0, %xmm5
	movd	%xmm0, %edi
	movd	%xmm5, %r10d
	movdqa	%xmm0, %xmm5
	punpckhdq	%xmm0, %xmm5
	movd	%xmm5, %esi
	pshufd	$85, %xmm0, %xmm5
	movd	%xmm5, %r8d
	testq	%r12, %r12
	jne	.L251
.L32:
	sarl	%esi
	movl	%esi, %eax
	addl	%edi, %eax
	js	.L252
.L36:
	cmpq	%r12, 32(%r13)
	je	.L39
.L43:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rcx
	movq	32(%rcx), %rsi
	cmpq	24(%rcx), %rbp
	jnb	.L234
	movq	(%rsi,%rbx), %rsi
	leaq	(%r12,%r12,2), %rcx
	addq	$1, %r12
	salq	$4, %rcx
	addq	40(%r13), %rcx
	movzbl	25(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$0, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L38:
	addsd	16(%r13), %xmm2
	movsd	48(%rsp), %xmm7
	comisd	%xmm2, %xmm7
	jbe	.L253
.L45:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rdx
	movq	32(%rdx), %rax
	cmpq	24(%rdx), %rbp
	jnb	.L234
	movq	(%rax,%rbx), %rdx
	movsd	40(%rsp), %xmm0
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm1, 16(%rsp)
	movzwl	18(%rdx), %eax
	movzwl	16(%rdx), %esi
	movl	%eax, %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm1
	movsd	32(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L31
	movl	8(%rsp), %esi
	testl	%esi, %esi
	jne	.L254
.L31:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L252:
	movzwl	10(%r13), %edx
	subl	%esi, %edi
	cmpl	%edx, %edi
	jle	.L36
	movl	%r10d, %eax
	sarl	%eax
	movl	%eax, %edi
	addl	%r8d, %edi
	jns	.L36
	movl	%r8d, %ecx
	subl	%eax, %ecx
	cmpl	%ecx, %edx
	jl	.L31
	cmpq	%r12, 32(%r13)
	jne	.L43
	.p2align 4,,10
	.p2align 3
.L39:
	movzwl	24(%r13), %eax
	movq	40(%r13), %rdi
	movsd	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	leaq	1(%r12,%rax), %rax
	movsd	%xmm2, (%rsp)
	movq	%rax, 32(%r13)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 40(%r13)
	movsd	32(%rsp), %xmm1
	jne	.L43
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L251:
	movq	40(%r13), %rdx
	leaq	(%r12,%r12,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %r9
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %r11
	movq	32(%r11), %r11
	movq	%r11, 16(%rsp)
	movq	(%rcx,%r15), %r11
	cmpq	24(%r11), %rbp
	jnb	.L234
	movq	16(%rsp), %r11
	cmpq	(%r11,%rbx), %r9
	jne	.L32
	movq	(%rsp), %r9
	cmpl	%edi, 28(%r9)
	jne	.L32
	cmpl	%r8d, 32(%r9)
	jne	.L32
	cmpl	%esi, 36(%r9)
	jne	.L32
	cmpl	%r10d, 40(%r9)
	jne	.L32
	movsd	%xmm2, 16(%r9)
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L253:
	movq	%r12, (%rsp)
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L245:
	ucomisd	.LC4(%rip), %xmm3
	jp	.L166
	je	.L154
.L166:
	movq	.LC4(%rip), %rdi
	movq	%rdi, %xmm2
	jmp	.L121
.L244:
	movl	60(%rsp), %eax
	addq	$72, %rdi
	movb	$-1, %al
	movl	%eax, 60(%rsp)
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	0(%r13), %rax
	movq	544(%rax), %rdx
	cmpq	536(%rax), %r14
	jnb	.L233
	movq	(%rdx,%r15), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %r12
	jnb	.L232
	movq	(%rcx,%rbx), %rdx
	movq	608(%rax), %rcx
	movq	88(%rdx), %rdx
	cmpq	600(%rax), %rdx
	jnb	.L255
	orl	$-256, 60(%rsp)
	movq	(%rcx,%rdx,8), %rdi
	movl	60(%rsp), %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L256
	movq	0(%r13), %rax
	movq	%rsi, 16(%rsp)
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	0(%r13), %rdx
	movq	16(%rsp), %rsi
	cmpq	536(%rdx), %r14
	movq	544(%rdx), %rcx
	jnb	.L233
	movq	(%rcx,%r15), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %r12
	jnb	.L232
	movq	(%rcx,%rbx), %rcx
	movq	%rax, 96(%rcx)
	testq	%rax, %rax
	je	.L257
	movzwl	16(%rcx), %eax
	imull	16(%rsi), %eax
	movq	%rsi, %rdi
	cltd
	idivl	20(%rsi)
	movw	%ax, 64(%rcx)
	call	SDL_FreeSurface@PLT
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rsi
	movq	128(%rsi), %r8
	movsd	152(%rsi), %xmm0
	cmpq	120(%rsi), %r12
	jb	.L116
.L232:
	movq	%r12, %rsi
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L240:
	pxor	%xmm0, %xmm0
	movsd	176(%rdi), %xmm1
	cvtsi2sdl	40(%rsi), %xmm0
	addsd	152(%rdi), %xmm0
	movapd	%xmm1, %xmm2
	movsd	%xmm0, 40(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	44(%rsi), %xmm0
	addsd	160(%rdi), %xmm0
	movapd	%xmm0, %xmm7
	movsd	.LC6(%rip), %xmm0
	mulsd	184(%rdi), %xmm0
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L258
	ucomisd	%xmm1, %xmm2
	jp	.L54
	jne	.L54
	addsd	.LC4(%rip), %xmm1
.L54:
	comisd	%xmm2, %xmm1
	jbe	.L49
	movsd	%xmm1, 48(%rsp)
	movq	(%rsp), %r12
	movapd	%xmm7, %xmm1
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L262:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L58
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r8d
	movd	%xmm3, %r9d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %esi
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %edi
	testq	%r12, %r12
	jne	.L259
.L59:
	sarl	%esi
	movl	%esi, %eax
	addl	%r8d, %eax
	js	.L260
.L63:
	cmpq	%r12, 32(%r13)
	je	.L66
.L69:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rcx
	movq	64(%rcx), %rsi
	cmpq	56(%rcx), %rbp
	jnb	.L234
	movq	(%rsi,%rbx), %rsi
	leaq	(%r12,%r12,2), %rcx
	addq	$1, %r12
	salq	$4, %rcx
	addq	40(%r13), %rcx
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$1, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L65:
	addsd	16(%r13), %xmm2
	movsd	48(%rsp), %xmm4
	comisd	%xmm2, %xmm4
	jbe	.L261
.L71:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rdx
	movq	64(%rdx), %rax
	cmpq	56(%rdx), %rbp
	jnb	.L234
	movq	(%rax,%rbx), %rdx
	movsd	40(%rsp), %xmm0
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm1, 16(%rsp)
	movzwl	18(%rdx), %eax
	movzwl	16(%rdx), %esi
	movl	%eax, %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm1
	movsd	32(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %ecx
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%ecx, %ecx
	jne	.L262
.L58:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L65
.L241:
	movsd	.LC6(%rip), %xmm0
	mulsd	184(%rdi), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm1, %xmm1
	movsd	176(%rdi), %xmm3
	cvtsi2sdl	40(%rsi), %xmm4
	addsd	152(%rdi), %xmm4
	cvtsi2sdl	44(%rsi), %xmm1
	addsd	160(%rdi), %xmm1
	movapd	%xmm3, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L263
	ucomisd	%xmm3, %xmm2
	jp	.L80
	jne	.L80
	addsd	.LC4(%rip), %xmm3
.L80:
	comisd	%xmm2, %xmm3
	jbe	.L75
	movq	(%rsp), %r12
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L267:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L84
	pshufd	$255, %xmm0, %xmm5
	movd	%xmm0, %r8d
	movd	%xmm5, %r9d
	movdqa	%xmm0, %xmm5
	punpckhdq	%xmm0, %xmm5
	movd	%xmm5, %esi
	pshufd	$85, %xmm0, %xmm5
	movd	%xmm5, %edi
	testq	%r12, %r12
	jne	.L264
.L85:
	sarl	%esi
	movl	%esi, %eax
	addl	%r8d, %eax
	js	.L265
.L89:
	cmpq	%r12, 32(%r13)
	je	.L92
.L95:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rcx
	movq	96(%rcx), %rsi
	cmpq	88(%rcx), %rbp
	jnb	.L234
	movq	(%rsi,%rbx), %rsi
	leaq	(%r12,%r12,2), %rcx
	addq	$1, %r12
	salq	$4, %rcx
	addq	40(%r13), %rcx
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$2, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L91:
	addsd	16(%r13), %xmm2
	movsd	48(%rsp), %xmm4
	comisd	%xmm2, %xmm4
	jbe	.L266
.L97:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %rdx
	movq	96(%rdx), %rax
	cmpq	88(%rdx), %rbp
	jnb	.L234
	movq	(%rax,%rbx), %rdx
	movsd	40(%rsp), %xmm0
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm1, 16(%rsp)
	movzwl	18(%rdx), %eax
	movzwl	16(%rdx), %esi
	movl	%eax, %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm1
	movsd	32(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %edx
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%edx, %edx
	jne	.L267
.L84:
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L91
.L250:
	movsd	.LC4(%rip), %xmm2
	ucomisd	%xmm2, %xmm3
	jp	.L27
	jne	.L27
	movapd	%xmm3, %xmm2
	movsd	.LC3(%rip), %xmm3
	movq	(%rsp), %r12
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L45
.L154:
	movapd	%xmm3, %xmm2
	movsd	.LC3(%rip), %xmm3
	movq	(%rsp), %rbp
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L138
.L258:
	movsd	.LC4(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L54
	jne	.L54
	movapd	%xmm1, %xmm2
	movsd	.LC3(%rip), %xmm1
	movq	(%rsp), %r12
	movsd	%xmm1, 48(%rsp)
	movapd	%xmm7, %xmm1
	jmp	.L71
.L263:
	movsd	.LC4(%rip), %xmm2
	ucomisd	%xmm2, %xmm3
	jp	.L80
	jne	.L80
	movapd	%xmm3, %xmm2
	movsd	.LC3(%rip), %xmm3
	movq	(%rsp), %r12
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L260:
	movzwl	10(%r13), %edx
	subl	%esi, %r8d
	cmpl	%edx, %r8d
	jle	.L63
	movl	%r9d, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%edi, %esi
	jns	.L63
	subl	%eax, %edi
	cmpl	%edi, %edx
	jl	.L58
	cmpq	%r12, 32(%r13)
	jne	.L69
	.p2align 4,,10
	.p2align 3
.L66:
	movzwl	24(%r13), %eax
	movq	40(%r13), %rdi
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%r12,%rax), %rax
	movaps	%xmm0, (%rsp)
	movq	%rax, 32(%r13)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movdqa	(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	testq	%rax, %rax
	movq	%rax, 40(%r13)
	movsd	32(%rsp), %xmm1
	jne	.L69
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L265:
	movzwl	10(%r13), %edx
	subl	%esi, %r8d
	cmpl	%edx, %r8d
	jle	.L89
	movl	%r9d, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%edi, %esi
	jns	.L89
	subl	%eax, %edi
	cmpl	%edi, %edx
	jl	.L84
	cmpq	%r12, 32(%r13)
	jne	.L95
	.p2align 4,,10
	.p2align 3
.L92:
	movzwl	24(%r13), %eax
	movq	40(%r13), %rdi
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%r12,%rax), %rax
	movaps	%xmm0, (%rsp)
	movq	%rax, 32(%r13)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movdqa	(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	testq	%rax, %rax
	movq	%rax, 40(%r13)
	movsd	32(%rsp), %xmm1
	jne	.L95
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L259:
	movq	40(%r13), %rdx
	leaq	(%r12,%r12,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %r11
	movq	64(%r11), %r10
	cmpq	56(%r11), %rbp
	jnb	.L234
	movq	16(%rsp), %r11
	cmpq	(%r10,%rbx), %r11
	jne	.L59
	movq	(%rsp), %r10
	cmpl	%r8d, 28(%r10)
	jne	.L59
	cmpl	%edi, 32(%r10)
	jne	.L59
	cmpl	%esi, 36(%r10)
	jne	.L59
	cmpl	%r9d, 40(%r10)
	jne	.L59
	movsd	%xmm2, 16(%r10)
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L264:
	movq	40(%r13), %rdx
	leaq	(%r12,%r12,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	0(%r13), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L233
	movq	(%rcx,%r15), %r11
	movq	96(%r11), %r10
	cmpq	88(%r11), %rbp
	jnb	.L234
	movq	16(%rsp), %r11
	cmpq	(%r10,%rbx), %r11
	jne	.L85
	movq	(%rsp), %r10
	cmpl	%r8d, 28(%r10)
	jne	.L85
	cmpl	%edi, 32(%r10)
	jne	.L85
	cmpl	%esi, 36(%r10)
	jne	.L85
	cmpl	%r9d, 40(%r10)
	jne	.L85
	movsd	%xmm2, 16(%r10)
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L261:
	movq	%r12, (%rsp)
	jmp	.L49
.L266:
	movq	%r12, (%rsp)
	jmp	.L75
.L145:
	movq	$0, 40(%r15)
	jmp	.L180
.L19:
	cmpq	$0, 32(%rdi)
	je	.L145
	xorl	%r14d, %r14d
.L144:
	movq	%r14, 32(%r15)
	movq	40(%r15), %rdi
	leaq	(%r14,%r14,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	je	.L42
	movq	32(%r15), %rax
	jmp	.L142
.L234:
	movq	%rbp, %rsi
	jmp	.L231
.L255:
	movq	%rdx, %rsi
	jmp	.L231
.L257:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L256:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6render14SelectionStageEv, .-_ZN4slay6engine6render14SelectionStageEv
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"slay::engine.render.OrderByLayerMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.type	_ZN4slay6engine6render17OrderByLayerMergeEyyy, @function
_ZN4slay6engine6render17OrderByLayerMergeEyyy:
.LFB2251:
	.cfi_startproc
	movq	%rdx, %rax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	subq	%rsi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	1(%rax), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	(%r14,%r14,2), %r10
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r10, %rbx
	salq	$4, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 32(%rsp)
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	movq	%rax, 40(%rsp)
	call	malloc@PLT
	testq	%rax, %rax
	je	.L270
	movq	8(%rsp), %rsi
	movq	%rax, %rbp
	subq	%r15, %rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	%rsi, 24(%rsp)
	salq	$4, %rdi
	movq	%rdi, 16(%rsp)
	call	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L270
	testq	%r14, %r14
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	je	.L308
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	leaq	(%rax,%r13), %r11
	salq	$4, %r11
	addq	%r8, %r11
	.p2align 4,,10
	.p2align 3
.L275:
	movdqu	(%r11,%rdx), %xmm1
	movdqu	16(%r11,%rdx), %xmm2
	movdqu	28(%r11,%rdx), %xmm3
	movups	%xmm2, 16(%rbp,%rdx)
	movups	%xmm1, 0(%rbp,%rdx)
	movups	%xmm3, 28(%rbp,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rbx
	jne	.L275
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	testq	%rsi, %rsi
	je	.L274
.L272:
	leaq	(%r15,%r15,2), %r9
	xorl	%edx, %edx
	salq	$4, %r9
	addq	%r8, %r9
	.p2align 4,,10
	.p2align 3
.L277:
	movdqu	48(%r9,%rdx), %xmm4
	movdqu	64(%r9,%rdx), %xmm5
	movdqu	76(%r9,%rdx), %xmm6
	movups	%xmm5, 16(%r12,%rdx)
	movups	%xmm4, (%r12,%rdx)
	movups	%xmm6, 28(%r12,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rdi
	jne	.L277
	testq	%r14, %r14
	je	.L288
	addq	%r13, %rax
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	salq	$4, %rax
	addq	%r8, %rax
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L310:
	movdqu	(%rdi), %xmm5
	addq	$1, %r10
	addq	$1, %r13
	addq	$48, %rax
	movdqu	16(%rdi), %xmm6
	movdqu	28(%rdi), %xmm7
	movups	%xmm5, -48(%rax)
	movups	%xmm6, -32(%rax)
	movups	%xmm7, -20(%rax)
	cmpq	%r14, %r9
	jnb	.L285
.L311:
	cmpq	%rsi, %r10
	jnb	.L309
.L283:
	leaq	(%r10,%r10,2), %rdi
	leaq	(%r9,%r9,2), %rdx
	salq	$4, %rdi
	salq	$4, %rdx
	addq	%rbp, %rdx
	addq	%r12, %rdi
	movsd	16(%rdx), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L310
	movdqu	(%rdx), %xmm5
	addq	$1, %r9
	addq	$1, %r13
	addq	$48, %rax
	movdqu	16(%rdx), %xmm6
	movdqu	28(%rdx), %xmm7
	movups	%xmm5, -48(%rax)
	movups	%xmm6, -32(%rax)
	movups	%xmm7, -20(%rax)
	cmpq	%r14, %r9
	jb	.L311
	.p2align 4,,10
	.p2align 3
.L285:
	cmpq	%rsi, %r10
	jnb	.L273
	leaq	(%r13,%r13), %rax
.L279:
	subq	%r10, %rsi
	leaq	(%r10,%r10,2), %rdx
	addq	%r13, %rax
	salq	$4, %rax
	leaq	(%rsi,%rsi,2), %rcx
	salq	$4, %rdx
	addq	%rax, %r8
	salq	$4, %rcx
	addq	%r12, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L287:
	movdqu	(%rdx,%rax), %xmm2
	movdqu	16(%rdx,%rax), %xmm3
	movdqu	28(%rdx,%rax), %xmm4
	movups	%xmm3, 16(%r8,%rax)
	movups	%xmm2, (%r8,%rax)
	movups	%xmm4, 28(%r8,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L287
.L273:
	movq	%rbp, %rdi
	call	free@PLT
	movq	%r12, %rdi
	call	free@PLT
	addq	$56, %rsp
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
.L309:
	.cfi_restore_state
	cmpq	%r14, %r9
	jnb	.L285
	leaq	(%r13,%r13), %rax
.L274:
	leaq	(%r9,%r9,2), %rdi
	addq	%r13, %rax
	movq	%r9, %r11
	salq	$4, %rax
	salq	$4, %rdi
	leaq	(%r8,%rax), %rdx
	addq	%rbp, %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L286:
	movdqu	(%rdi,%rax), %xmm7
	movdqu	16(%rdi,%rax), %xmm0
	addq	$1, %r11
	movdqu	28(%rdi,%rax), %xmm1
	movups	%xmm0, 16(%rdx,%rax)
	movups	%xmm7, (%rdx,%rax)
	movups	%xmm1, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r14, %r11
	jb	.L286
	movq	40(%rsp), %rbx
	xorl	%eax, %eax
	subq	%r9, %rbx
	addq	$1, %r9
	cmpq	%r9, %r14
	cmovb	%rax, %rbx
	leaq	1(%r13,%rbx), %r13
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L308:
	testq	%rsi, %rsi
	je	.L273
	movq	32(%rsp), %rax
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	jmp	.L272
.L288:
	xorl	%r10d, %r10d
	jmp	.L279
.L270:
	movq	8(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC10(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2251:
	.size	_ZN4slay6engine6render17OrderByLayerMergeEyyy, .-_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render12OrderByLayerEyy
	.type	_ZN4slay6engine6render12OrderByLayerEyy, @function
_ZN4slay6engine6render12OrderByLayerEyy:
.LFB2250:
	.cfi_startproc
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, 8(%rsp)
	cmpq	$1, %rdx
	jbe	.L313
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L313
	.p2align 4,,10
	.p2align 3
.L314:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L316:
	leaq	(%rbx,%r12), %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%rbp, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	cmpq	%r15, %rbx
	jb	.L316
	cmpq	%r14, %rbp
	jb	.L314
.L313:
	addq	$24, %rsp
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
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6render12OrderByLayerEyy, .-_ZN4slay6engine6render12OrderByLayerEyy
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"slay::engine.render.OrderByPriorityMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, @function
_ZN4slay6engine6render20OrderByPriorityMergeEyyy:
.LFB2253:
	.cfi_startproc
	movq	%rdx, %rax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	subq	%rsi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	1(%rax), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	(%r14,%r14,2), %r10
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r10, %rbx
	salq	$4, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 32(%rsp)
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	movq	%rax, 40(%rsp)
	call	malloc@PLT
	testq	%rax, %rax
	je	.L324
	movq	8(%rsp), %rsi
	movq	%rax, %rbp
	subq	%r15, %rsi
	leaq	(%rsi,%rsi,2), %rdi
	movq	%rsi, 24(%rsp)
	salq	$4, %rdi
	movq	%rdi, 16(%rsp)
	call	malloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L324
	testq	%r14, %r14
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	je	.L359
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	leaq	(%rax,%r13), %r11
	salq	$4, %r11
	addq	%r8, %r11
	.p2align 4,,10
	.p2align 3
.L329:
	movdqu	(%r11,%rdx), %xmm0
	movdqu	16(%r11,%rdx), %xmm1
	movdqu	28(%r11,%rdx), %xmm2
	movups	%xmm1, 16(%rbp,%rdx)
	movups	%xmm0, 0(%rbp,%rdx)
	movups	%xmm2, 28(%rbp,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rbx
	jne	.L329
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	testq	%rsi, %rsi
	je	.L328
.L326:
	leaq	(%r15,%r15,2), %r9
	xorl	%edx, %edx
	salq	$4, %r9
	addq	%r8, %r9
	.p2align 4,,10
	.p2align 3
.L331:
	movdqu	48(%r9,%rdx), %xmm3
	movdqu	64(%r9,%rdx), %xmm4
	movdqu	76(%r9,%rdx), %xmm5
	movups	%xmm4, 16(%r12,%rdx)
	movups	%xmm3, (%r12,%rdx)
	movups	%xmm5, 28(%r12,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rdi
	jne	.L331
	testq	%r14, %r14
	je	.L341
	addq	%r13, %rax
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	salq	$4, %rax
	addq	%r8, %rax
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L361:
	movdqu	(%rdi), %xmm4
	addq	$1, %r10
	addq	$1, %r13
	addq	$48, %rax
	movdqu	16(%rdi), %xmm5
	movdqu	28(%rdi), %xmm6
	movups	%xmm4, -48(%rax)
	movups	%xmm5, -32(%rax)
	movups	%xmm6, -20(%rax)
	cmpq	%r14, %r9
	jnb	.L338
.L362:
	cmpq	%rsi, %r10
	jnb	.L360
.L336:
	leaq	(%r10,%r10,2), %rdi
	leaq	(%r9,%r9,2), %rdx
	salq	$4, %rdi
	salq	$4, %rdx
	addq	%rbp, %rdx
	addq	%r12, %rdi
	movzbl	24(%rdx), %ebx
	cmpb	%bl, 24(%rdi)
	jb	.L361
	movdqu	(%rdx), %xmm7
	addq	$1, %r9
	addq	$1, %r13
	addq	$48, %rax
	movdqu	16(%rdx), %xmm4
	movdqu	28(%rdx), %xmm5
	movups	%xmm7, -48(%rax)
	movups	%xmm4, -32(%rax)
	movups	%xmm5, -20(%rax)
	cmpq	%r14, %r9
	jb	.L362
	.p2align 4,,10
	.p2align 3
.L338:
	cmpq	%rsi, %r10
	jnb	.L327
	leaq	(%r13,%r13), %rax
.L333:
	subq	%r10, %rsi
	leaq	(%r10,%r10,2), %rdx
	addq	%r13, %rax
	salq	$4, %rax
	leaq	(%rsi,%rsi,2), %rcx
	salq	$4, %rdx
	addq	%rax, %r8
	salq	$4, %rcx
	addq	%r12, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L340:
	movdqu	(%rdx,%rax), %xmm1
	movdqu	16(%rdx,%rax), %xmm2
	movdqu	28(%rdx,%rax), %xmm3
	movups	%xmm2, 16(%r8,%rax)
	movups	%xmm1, (%r8,%rax)
	movups	%xmm3, 28(%r8,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L340
.L327:
	movq	%rbp, %rdi
	call	free@PLT
	movq	%r12, %rdi
	call	free@PLT
	addq	$56, %rsp
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
.L360:
	.cfi_restore_state
	cmpq	%r14, %r9
	jnb	.L338
	leaq	(%r13,%r13), %rax
.L328:
	leaq	(%r9,%r9,2), %rdi
	addq	%r13, %rax
	movq	%r9, %r11
	salq	$4, %rax
	salq	$4, %rdi
	leaq	(%r8,%rax), %rdx
	addq	%rbp, %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L339:
	movdqu	(%rdi,%rax), %xmm6
	movdqu	16(%rdi,%rax), %xmm7
	addq	$1, %r11
	movdqu	28(%rdi,%rax), %xmm0
	movups	%xmm7, 16(%rdx,%rax)
	movups	%xmm6, (%rdx,%rax)
	movups	%xmm0, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r14, %r11
	jb	.L339
	movq	40(%rsp), %rbx
	xorl	%eax, %eax
	subq	%r9, %rbx
	addq	$1, %r9
	cmpq	%r9, %r14
	cmovb	%rax, %rbx
	leaq	1(%r13,%rbx), %r13
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L359:
	testq	%rsi, %rsi
	je	.L327
	movq	32(%rsp), %rax
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	jmp	.L326
.L341:
	xorl	%r10d, %r10d
	jmp	.L333
.L324:
	movq	8(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2253:
	.size	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, .-_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15OrderByPriorityEyy
	.type	_ZN4slay6engine6render15OrderByPriorityEyy, @function
_ZN4slay6engine6render15OrderByPriorityEyy:
.LFB2252:
	.cfi_startproc
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, 8(%rsp)
	cmpq	$1, %rdx
	jbe	.L364
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L364
	.p2align 4,,10
	.p2align 3
.L365:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L367:
	leaq	(%rbx,%r12), %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%rbp, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%r15, %rbx
	jb	.L367
	cmpq	%r14, %rbp
	jb	.L365
.L364:
	addq	$24, %rsp
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
	.cfi_endproc
.LFE2252:
	.size	_ZN4slay6engine6render15OrderByPriorityEyy, .-_ZN4slay6engine6render15OrderByPriorityEyy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13OrderingStageEv
	.type	_ZN4slay6engine6render13OrderingStageEv, @function
_ZN4slay6engine6render13OrderingStageEv:
.LFB2249:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$1, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	32(%rdi), %r15
	leaq	-1(%r15), %rbp
	cmpq	$1, %r15
	jbe	.L393
	.p2align 4,,10
	.p2align 3
.L374:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L376:
	leaq	(%r14,%rbx), %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	cmpq	%rbp, %rdx
	cmova	%rbp, %rdx
	addq	%r13, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%rbp, %rcx
	cmova	%rbp, %rcx
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	cmpq	%rbp, %rbx
	jb	.L376
	cmpq	%r15, %r13
	jb	.L374
	movq	32(%r12), %rsi
	cmpq	$1, %rsi
	jbe	.L393
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L384
	.p2align 4,,10
	.p2align 3
.L378:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rsi, %r13
	jnb	.L403
.L390:
	movq	%r13, %rbp
.L384:
	movq	8(%rsp), %rax
	movq	40(%r12), %rcx
	leaq	0(%rbp,%rbp,2), %rdx
	salq	$4, %rdx
	leaq	(%rax,%rax,2), %rax
	movsd	16(%rcx,%rdx), %xmm0
	salq	$4, %rax
	ucomisd	16(%rcx,%rax), %xmm0
	jp	.L392
	je	.L378
.L392:
	cmpq	$1, %rbp
	je	.L404
	cmpq	%r15, 8(%rsp)
	jnb	.L383
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L382:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L381:
	leaq	(%rbx,%r14), %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%r13, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%r15, %rbx
	jb	.L381
	cmpq	%rbp, %r13
	jb	.L382
	movq	32(%r12), %rsi
.L383:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rsi, %r13
	jb	.L390
.L403:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L393
	.p2align 4,,10
	.p2align 3
.L385:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L387:
	leaq	(%r15,%r14), %rdx
	movq	%r15, %rsi
	movq	%r12, %rdi
	cmpq	%rbp, %rdx
	cmova	%rbp, %rdx
	addq	%rbx, %r15
	leaq	-1(%r15), %rcx
	cmpq	%rbp, %rcx
	cmova	%rbp, %rcx
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rbp, %r15
	jb	.L387
	cmpq	%r13, %rbx
	jb	.L385
.L393:
	addq	$24, %rsp
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
.L404:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L378
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6render13OrderingStageEv, .-_ZN4slay6engine6render13OrderingStageEv
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC13:
	.string	"slay::engine.render.RenderColor(): SDL_RenderFillRect failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.type	_ZN4slay6engine6render11RenderColorENS1_5tokenE, @function
_ZN4slay6engine6render11RenderColorENS1_5tokenE:
.LFB2255:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	16(%rsp), %rax
	movq	(%rdi), %rdi
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %edx
	movzbl	20(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	23(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L409
	movq	(%rbx), %rax
	leaq	44(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L410
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L409:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L410:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6render11RenderColorENS1_5tokenE, .-_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC15:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC17:
	.string	"slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.type	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, @function
_ZN4slay6engine6render13RenderTextureENS1_5tokenE:
.LFB2256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	0(%rbp), %rdx
	movq	32(%rsp), %rax
	movzbl	33(%rax), %r9d
	movzbl	32(%rax), %ebx
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %r8d
	negl	%r9d
	movzbl	20(%rax), %edi
	movq	64(%rax), %rsi
	andl	$2, %r9d
	movq	576(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	568(%rdx), %rsi
	jnb	.L420
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L421
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	64(%rdx), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L420
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L422
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	64(%rdx), %rsi
	xorpd	.LC16(%rip), %xmm0
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L420
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L423
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L420:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L423:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L422:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L421:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, .-_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC19:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC20:
	.string	"slay::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.type	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, @function
_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE:
.LFB2257:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	0(%rbp), %rdx
	movq	32(%rsp), %rax
	movzbl	33(%rax), %r9d
	movzbl	32(%rax), %ebx
	movq	72(%rax), %rcx
	movzbl	21(%rax), %r8d
	negl	%r9d
	movzbl	20(%rax), %edi
	andl	$2, %r9d
	orl	%r9d, %ebx
	movzbl	22(%rax), %r9d
	movq	96(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L433
	movq	(%rax,%rsi,8), %rax
	movl	%r9d, %ecx
	movl	%edi, %esi
	movl	%r8d, %edx
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L434
	movq	32(%rsp), %rax
	movq	0(%rbp), %rdx
	movq	72(%rax), %rcx
	movzbl	23(%rax), %edi
	movq	96(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L433
	movq	(%rax,%rsi,8), %rax
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L435
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rcx
	movq	96(%rdx), %rdx
	xorpd	.LC16(%rip), %xmm0
	movq	(%rdx,%rcx,8), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L433
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L436
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L433:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L436:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L435:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L434:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2257:
	.size	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, .-_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"slay::engine.render.RenderText(): SDL_SetTextureColorMod failed"
	.align 8
.LC22:
	.string	"slay::engine.render.RenderText(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC23:
	.string	"slay::engine.render.RenderText(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.type	_ZN4slay6engine6render10RenderTextENS1_5tokenE, @function
_ZN4slay6engine6render10RenderTextENS1_5tokenE:
.LFB2258:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	32(%rsp), %rax
	movzbl	33(%rax), %r9d
	movzbl	32(%rax), %ebx
	movzbl	20(%rax), %ecx
	movzbl	19(%rax), %edx
	negl	%r9d
	movzbl	18(%rax), %esi
	movq	96(%rax), %rdi
	andl	$2, %r9d
	orl	%r9d, %ebx
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L442
	movq	32(%rsp), %rax
	movzbl	21(%rax), %esi
	movq	96(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L443
	movq	32(%rsp), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	movzbl	%bl, %r9d
	movsd	24(%rax), %xmm0
	movq	96(%rax), %rsi
	movq	0(%rbp), %rax
	xorpd	.LC16(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L444
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L442:
	.cfi_restore_state
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L444:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L443:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2258:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC25:
	.string	"slay::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.type	_ZN4slay6engine6render14RenderingStageEv, @function
_ZN4slay6engine6render14RenderingStageEv:
.LFB2254:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$255, %r8d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$120, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	movq	(%rdi), %rax
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L484
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L447
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L463
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	leaq	16(%rax), %rdx
	jmp	.L450
	.p2align 4,,10
	.p2align 3
.L486:
	addq	$1, %rbx
	addq	$48, %rdx
	cmpq	%rcx, %rbx
	je	.L485
.L450:
	movsd	(%rdx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L486
	movq	%rbx, %r12
	cmpq	%rcx, %rbx
	jnb	.L452
.L451:
	leaq	28(%rsp), %r13
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L488:
	testl	%edx, %edx
	je	.L487
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	movq	32(%rbp), %rcx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
.L458:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L461
.L489:
	movq	40(%rbp), %rax
.L462:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L453
	jbe	.L488
	cmpl	$3, %edx
	jne	.L458
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	addq	$1, %rbx
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	movq	32(%rbp), %rcx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	cmpq	%rcx, %rbx
	jb	.L489
.L461:
	testq	%r12, %r12
	je	.L463
	movq	40(%rbp), %rax
.L452:
	xorl	%ebx, %ebx
	leaq	76(%rsp), %r13
	jmp	.L472
	.p2align 4,,10
	.p2align 3
.L491:
	testl	%edx, %edx
	je	.L490
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
.L469:
	addq	$1, %rbx
	cmpq	%rbx, %r12
	je	.L463
.L492:
	movq	40(%rbp), %rax
.L472:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L464
	jbe	.L491
	cmpl	$3, %edx
	jne	.L469
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	addq	$1, %rbx
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	cmpq	%rbx, %r12
	jne	.L492
	.p2align 4,,10
	.p2align 3
.L463:
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderPresent@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L493
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L453:
	.cfi_restore_state
	movdqu	(%rax), %xmm2
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movups	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movups	%xmm4, 32(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	movq	32(%rbp), %rcx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L487:
	movdqu	(%rax), %xmm2
	movq	0(%rbp), %rdi
	movaps	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movq	(%rsp), %rax
	movaps	%xmm4, 32(%rsp)
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %edx
	movzbl	20(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	23(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L470
	movq	0(%rbp), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L471
	movq	32(%rbp), %rcx
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L464:
	movdqu	(%rax), %xmm2
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movups	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movups	%xmm4, 32(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	jmp	.L469
	.p2align 4,,10
	.p2align 3
.L490:
	movdqu	(%rax), %xmm2
	movq	0(%rbp), %rdi
	movaps	%xmm2, 48(%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 64(%rsp)
	movdqu	32(%rax), %xmm4
	movq	48(%rsp), %rax
	movaps	%xmm4, 80(%rsp)
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %edx
	movzbl	20(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	23(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L470
	movq	0(%rbp), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L469
.L471:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L485:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L451
.L470:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L484:
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L493:
	call	__stack_chk_fail@PLT
.L447:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2254:
	.size	_ZN4slay6engine6render14RenderingStageEv, .-_ZN4slay6engine6render14RenderingStageEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render6UpdateEv
	.type	_ZN4slay6engine6render6UpdateEv, @function
_ZN4slay6engine6render6UpdateEv:
.LFB2247:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN4slay6engine6render14SelectionStageEv
	movq	%rbx, %rdi
	call	_ZN4slay6engine6render13OrderingStageEv
	movq	%rbx, %rdi
	call	_ZN4slay6engine6render14RenderingStageEv
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6render6UpdateEv, .-_ZN4slay6engine6render6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-755914244
	.long	1063281229
	.align 8
.LC3:
	.long	-350469331
	.long	1059731170
	.align 8
.LC4:
	.long	-350469331
	.long	1058682594
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
