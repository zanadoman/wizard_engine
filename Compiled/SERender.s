	.file	"SERender.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"slay::engine.render.RenderText(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.type	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0, @function
_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0:
.LFB2435:
	.cfi_startproc
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2435:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6renderC2ERS0_
	.type	_ZN4slay6engine6renderC2ERS0_, @function
_ZN4slay6engine6renderC2ERS0_:
.LFB2232:
	.cfi_startproc
	movq	.LC1(%rip), %rax
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
	.size	_ZN4slay6engine6renderC2ERS0_, .-_ZN4slay6engine6renderC2ERS0_
	.globl	_ZN4slay6engine6renderC1ERS0_
	.set	_ZN4slay6engine6renderC1ERS0_,_ZN4slay6engine6renderC2ERS0_
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
	.section	.rodata.str1.8
	.align 8
.LC3:
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
	jnb	.L17
	movsd	%xmm0, 16(%rdi)
	ret
.L17:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC3(%rip), %rdi
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
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC8:
	.string	"slay::engine.render.SelectionStage(): Memory allocation failed"
	.align 8
.LC9:
	.string	"slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed"
	.align 8
.LC10:
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	(%rdi), %r14
	movq	536(%r14), %rax
	cmpq	$1, %rax
	jbe	.L21
	movl	$1, %r9d
	xorl	%r13d, %r13d
	movq	%r13, %r15
	movq	%r9, %r13
	movq	%rdi, %r9
	.p2align 4,,10
	.p2align 3
.L143:
	movq	544(%r14), %rdx
	leaq	0(,%r13,8), %r11
	cmpq	$0, (%rdx,%r13,8)
	je	.L22
	cmpq	%rax, %r13
	jnb	.L241
	movl	$1, %ebp
	movq	%r11, %r12
	movq	%r9, %rbx
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L49:
	movq	32(%rsi), %rcx
	leaq	0(,%rbp,8), %r9
	movq	(%rcx,%rbp,8), %rcx
	testq	%rcx, %rcx
	je	.L24
	cmpw	$0, 18(%rcx)
	je	.L24
	cmpw	$0, 20(%rcx)
	je	.L24
	cmpb	$0, 25(%rcx)
	je	.L24
	cmpb	$0, 27(%rcx)
	jne	.L243
	.p2align 4,,10
	.p2align 3
.L24:
	addq	$1, %rbp
	cmpq	%rax, %r13
	jnb	.L241
.L23:
	movq	(%rdx,%r12), %rsi
	cmpq	24(%rsi), %rbp
	jb	.L49
	movq	%rbx, %r9
	cmpq	%rax, %r13
	jnb	.L241
	movq	%r9, %rdi
	movl	$1, %ebp
	movq	%r14, %r9
	movq	%r12, %rbx
	movq	%r13, %r14
	movq	%rdi, %r13
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L75:
	movq	64(%rsi), %rcx
	leaq	0(,%rbp,8), %r12
	movq	(%rcx,%rbp,8), %rcx
	testq	%rcx, %rcx
	je	.L51
	cmpw	$0, 18(%rcx)
	je	.L51
	cmpw	$0, 20(%rcx)
	je	.L51
	cmpb	$0, 37(%rcx)
	je	.L51
	cmpb	$0, 39(%rcx)
	je	.L51
	cmpq	$0, 64(%rcx)
	jne	.L244
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rbp
	cmpq	%rax, %r14
	jnb	.L242
.L50:
	movq	(%rdx,%rbx), %rsi
	cmpq	56(%rsi), %rbp
	jb	.L75
	movq	%rbx, %r11
	movq	%r13, %rbx
	movq	%r14, %r13
	movq	%r9, %r14
	movq	%rbx, %r9
	cmpq	%rax, %r13
	jnb	.L241
	movq	%r9, %rdi
	movl	$1, %ebp
	movq	%r14, %r9
	movq	%r11, %rbx
	movq	%r13, %r14
	movq	%rdi, %r13
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L101:
	movq	96(%rsi), %rcx
	leaq	0(,%rbp,8), %r12
	movq	(%rcx,%rbp,8), %rcx
	testq	%rcx, %rcx
	je	.L77
	cmpw	$0, 20(%rcx)
	je	.L77
	cmpw	$0, 22(%rcx)
	je	.L77
	cmpb	$0, 37(%rcx)
	je	.L77
	cmpb	$0, 39(%rcx)
	je	.L77
	movq	72(%rcx), %r8
	movq	96(%rcx), %rdi
	cmpq	$0, (%rdi,%r8,8)
	jne	.L245
	.p2align 4,,10
	.p2align 3
.L77:
	addq	$1, %rbp
	cmpq	%rax, %r14
	jnb	.L242
.L76:
	movq	(%rdx,%rbx), %rsi
	cmpq	88(%rsi), %rbp
	jb	.L101
	movq	%rbx, %r11
	movq	%r13, %rbx
	movq	%r14, %r13
	movq	%r9, %r14
	cmpq	%rax, %r13
	jnb	.L241
	movl	$1, %r12d
	movq	%r11, %rbp
	.p2align 4,,10
	.p2align 3
.L102:
	movq	(%rdx,%rbp), %rdx
	cmpq	120(%rdx), %r12
	jnb	.L246
.L142:
	movq	128(%rdx), %rdx
	leaq	0(,%r12,8), %rdi
	movq	%rdi, (%rsp)
	movq	(%rdx,%r12,8), %rdi
	testq	%rdi, %rdi
	je	.L247
	addq	$40, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	movq	(%rbx), %r14
	cmpq	$1, %rax
	movq	544(%r14), %rdx
	movq	536(%r14), %rax
	jbe	.L104
	cmpq	%rax, %r13
	jnb	.L241
	movq	(%rdx,%rbp), %rcx
	movq	128(%rcx), %rdi
	cmpq	120(%rcx), %r12
	jnb	.L239
	movq	(%rsp), %rsi
	movq	(%rdi,%rsi), %rsi
	cmpw	$0, 18(%rsi)
	jne	.L248
.L108:
	movq	(%rdx,%rbp), %rdx
	addq	$1, %r12
	cmpq	120(%rdx), %r12
	jb	.L142
	.p2align 4,,10
	.p2align 3
.L246:
	movq	%rbx, %r9
.L22:
	addq	$1, %r13
	cmpq	%rax, %r13
	jb	.L143
	movq	32(%r9), %rax
	movq	%r15, %r13
	movq	%r9, %r15
	cmpq	%rax, %r13
	jb	.L146
.L144:
	testq	%rax, %rax
	je	.L147
.L182:
	addq	$88, %rsp
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
.L247:
	.cfi_restore_state
	movq	544(%r14), %rdx
.L104:
	addq	$1, %r12
	cmpq	%rax, %r13
	jb	.L102
.L241:
	movq	%r13, %r9
.L231:
	movq	%r9, %rsi
.L232:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L248:
	cmpb	$0, 37(%rsi)
	je	.L108
	cmpb	$0, 39(%rsi)
	je	.L108
	cmpq	$0, 88(%rsi)
	je	.L108
	cmpq	$0, 96(%rsi)
	je	.L249
	movsd	152(%rcx), %xmm0
.L118:
	movq	(%rsp), %rsi
	pxor	%xmm6, %xmm6
	pxor	%xmm7, %xmm7
	pxor	%xmm1, %xmm1
	movsd	176(%rcx), %xmm5
	movq	(%rdi,%rsi), %rsi
	movapd	%xmm5, %xmm2
	cvtsi2sdl	56(%rsi), %xmm6
	cvtsi2sdl	60(%rsi), %xmm1
	addsd	160(%rcx), %xmm1
	addsd	%xmm0, %xmm6
	movsd	.LC7(%rip), %xmm0
	mulsd	184(%rcx), %xmm0
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	comisd	%xmm2, %xmm7
	jnb	.L250
	ucomisd	%xmm5, %xmm2
	jp	.L123
	jne	.L123
	addsd	.LC5(%rip), %xmm5
.L123:
	comisd	%xmm2, %xmm5
	jbe	.L104
.L227:
	movq	%r13, 16(%rsp)
	movq	%rbp, %r13
	movq	%rbx, %rbp
	movq	(%rsp), %rbx
	movsd	%xmm6, 64(%rsp)
	movsd	%xmm5, 72(%rsp)
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L131:
	cmpq	%r15, 32(%rbp)
	je	.L135
.L138:
	movq	0(%rbp), %r14
	movq	536(%r14), %rax
	movq	544(%r14), %rdx
	cmpq	%rax, 16(%rsp)
	jnb	.L237
	movq	(%rdx,%r13), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %r12
	jnb	.L239
	movq	(%rcx,%rbx), %rcx
	leaq	(%r15,%r15,2), %rdx
	addq	$1, %r15
	salq	$4, %rdx
	addq	40(%rbp), %rdx
	movzbl	38(%rcx), %esi
	movq	%rcx, (%rdx)
	movl	$3, 8(%rdx)
	movb	%sil, 24(%rdx)
	movsd	%xmm2, 16(%rdx)
	movups	%xmm4, 28(%rdx)
	movq	544(%r14), %rdx
.L133:
	addsd	16(%rbp), %xmm2
	movsd	72(%rsp), %xmm7
	comisd	%xmm2, %xmm7
	jbe	.L251
.L140:
	leaq	80(%r14), %rdi
	cmpq	%rax, 16(%rsp)
	jnb	.L237
	movq	(%rdx,%r13), %rax
	movq	128(%rax), %rdx
	cmpq	120(%rax), %r12
	jnb	.L239
	movq	(%rdx,%rbx), %rax
	movsd	64(%rsp), %xmm0
	movsd	%xmm2, 56(%rsp)
	movsd	%xmm1, 32(%rsp)
	movzwl	80(%rax), %esi
	movzwl	18(%rax), %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	testq	%r15, %r15
	movsd	32(%rsp), %xmm1
	movsd	56(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movdqa	(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	movd	%xmm0, %ecx
	movd	%xmm3, %r10d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %esi
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r8d
	jne	.L252
.L127:
	sarl	%esi
	movl	%esi, %eax
	addl	%ecx, %eax
	jns	.L131
	movzwl	10(%rbp), %edi
	subl	%esi, %ecx
	cmpl	%edi, %ecx
	jle	.L131
	movl	%r10d, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%r8d, %esi
	jns	.L131
	movl	%r8d, %edx
	subl	%eax, %edx
	cmpl	%edx, %edi
	jge	.L131
	movq	0(%rbp), %r14
	movq	536(%r14), %rax
	movq	544(%r14), %rdx
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L252:
	movq	40(%rbp), %rdx
	leaq	(%r15,%r15,2), %rax
	movq	0(%rbp), %r14
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %r9
	movq	536(%r14), %rax
	movq	544(%r14), %rdx
	movq	(%r9), %r11
	cmpq	%rax, 16(%rsp)
	jnb	.L237
	movq	(%rdx,%r13), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, (%rsp)
	movq	(%rdx,%r13), %rdi
	cmpq	120(%rdi), %r12
	jnb	.L239
	movq	(%rsp), %rdi
	cmpq	(%rdi,%rbx), %r11
	jne	.L127
	cmpl	%ecx, 28(%r9)
	jne	.L127
	cmpl	%r8d, 32(%r9)
	jne	.L127
	cmpl	%esi, 36(%r9)
	jne	.L127
	cmpl	%r10d, 40(%r9)
	jne	.L127
	movsd	%xmm2, 16(%r9)
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L135:
	movzwl	24(%rbp), %eax
	movq	40(%rbp), %rdi
	movsd	%xmm1, 56(%rsp)
	movaps	%xmm4, 32(%rsp)
	leaq	1(%r15,%rax), %rax
	movsd	%xmm2, (%rsp)
	movq	%rax, 32(%rbp)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movsd	(%rsp), %xmm2
	movdqa	32(%rsp), %xmm4
	testq	%rax, %rax
	movq	%rax, 40(%rbp)
	movsd	56(%rsp), %xmm1
	jne	.L138
.L44:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L251:
	movq	%rbp, %rbx
	movq	%r13, %rbp
	movq	16(%rsp), %r13
	addq	$1, %r12
	cmpq	%rax, %r13
	jb	.L102
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L243:
	movsd	.LC7(%rip), %xmm0
	pxor	%xmm7, %xmm7
	pxor	%xmm6, %xmm6
	pxor	%xmm1, %xmm1
	mulsd	184(%rsi), %xmm0
	movsd	176(%rsi), %xmm5
	cvtsi2sdl	28(%rcx), %xmm6
	cvtsi2sdl	32(%rcx), %xmm1
	addsd	152(%rsi), %xmm6
	movapd	%xmm5, %xmm2
	addsd	160(%rsi), %xmm1
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	comisd	%xmm2, %xmm7
	jnb	.L253
	ucomisd	%xmm5, %xmm2
	jp	.L29
	jne	.L29
	addsd	.LC5(%rip), %xmm5
.L29:
	comisd	%xmm2, %xmm5
	jbe	.L24
.L224:
	movq	%r13, (%rsp)
	movq	%r12, %r13
	movq	%rbx, %r12
	movq	%r9, %rbx
	movsd	%xmm6, 64(%rsp)
	movsd	%xmm5, 72(%rsp)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L37:
	cmpq	%r15, 32(%r12)
	je	.L41
.L45:
	movq	(%r12), %r14
	movq	536(%r14), %rax
	movq	544(%r14), %rdx
	cmpq	%rax, (%rsp)
	jnb	.L233
	movq	(%rdx,%r13), %rdx
	movq	32(%rdx), %rcx
	cmpq	24(%rdx), %rbp
	jnb	.L240
	movq	(%rcx,%rbx), %rcx
	leaq	(%r15,%r15,2), %rdx
	addq	$1, %r15
	salq	$4, %rdx
	addq	40(%r12), %rdx
	movzbl	26(%rcx), %esi
	movq	%rcx, (%rdx)
	movl	$0, 8(%rdx)
	movb	%sil, 24(%rdx)
	movsd	%xmm2, 16(%rdx)
	movups	%xmm4, 28(%rdx)
	movq	544(%r14), %rdx
.L39:
	addsd	16(%r12), %xmm2
	movsd	72(%rsp), %xmm6
	comisd	%xmm2, %xmm6
	jbe	.L254
.L47:
	leaq	80(%r14), %rdi
	cmpq	%rax, (%rsp)
	jnb	.L233
	movq	(%rdx,%r13), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %rbp
	jnb	.L240
	movq	(%rdx,%rbx), %rax
	movsd	64(%rsp), %xmm0
	movsd	%xmm2, 56(%rsp)
	movsd	%xmm1, 32(%rsp)
	movzwl	18(%rax), %esi
	movzwl	20(%rax), %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	testq	%r15, %r15
	movsd	32(%rsp), %xmm1
	movsd	56(%rsp), %xmm2
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movdqa	16(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	movd	%xmm0, %ecx
	movd	%xmm3, %r10d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %esi
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r8d
	jne	.L255
.L33:
	sarl	%esi
	movl	%esi, %eax
	addl	%ecx, %eax
	jns	.L37
	movzwl	10(%r12), %edi
	subl	%esi, %ecx
	cmpl	%edi, %ecx
	jle	.L37
	movl	%r10d, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%r8d, %esi
	jns	.L37
	movl	%r8d, %edx
	subl	%eax, %edx
	cmpl	%edx, %edi
	jge	.L37
	movq	(%r12), %r14
	movq	536(%r14), %rax
	movq	544(%r14), %rdx
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L255:
	movq	40(%r12), %rdx
	leaq	(%r15,%r15,2), %rax
	movq	(%r12), %r14
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %r9
	movq	536(%r14), %rax
	movq	544(%r14), %rdx
	movq	(%r9), %r11
	cmpq	%rax, (%rsp)
	jnb	.L233
	movq	(%rdx,%r13), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, 16(%rsp)
	movq	(%rdx,%r13), %rdi
	cmpq	24(%rdi), %rbp
	jnb	.L240
	movq	16(%rsp), %rdi
	cmpq	(%rdi,%rbx), %r11
	jne	.L33
	cmpl	%ecx, 28(%r9)
	jne	.L33
	cmpl	%r8d, 32(%r9)
	jne	.L33
	cmpl	%esi, 36(%r9)
	jne	.L33
	cmpl	%r10d, 40(%r9)
	jne	.L33
	movsd	%xmm2, 16(%r9)
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L41:
	movzwl	24(%r12), %eax
	movq	40(%r12), %rdi
	movaps	%xmm4, 16(%rsp)
	movsd	%xmm1, 56(%rsp)
	leaq	1(%r15,%rax), %rax
	movsd	%xmm2, 32(%rsp)
	movq	%rax, 32(%r12)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movdqa	16(%rsp), %xmm4
	movsd	32(%rsp), %xmm2
	testq	%rax, %rax
	movq	%rax, 40(%r12)
	movsd	56(%rsp), %xmm1
	jne	.L45
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L254:
	movq	%r12, %rbx
	movq	%r13, %r12
	movq	(%rsp), %r13
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L250:
	movsd	.LC5(%rip), %xmm2
	ucomisd	%xmm2, %xmm5
	jp	.L123
	jne	.L123
	movapd	%xmm5, %xmm2
	movsd	.LC4(%rip), %xmm5
	jmp	.L227
.L249:
	leaq	40(%rsi), %rdi
	movl	34(%rsi), %r14d
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	544(%rax), %rdx
	cmpq	536(%rax), %r13
	jnb	.L241
	movq	(%rdx,%rbp), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %r12
	jnb	.L239
	movq	(%rsp), %rdi
	movq	(%rcx,%rdi), %rdx
	movq	608(%rax), %rcx
	movq	88(%rdx), %rdx
	cmpq	600(%rax), %rdx
	jnb	.L256
	movq	(%rcx,%rdx,8), %rdi
	movl	%r14d, %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L257
	movq	(%rbx), %rax
	movq	%r14, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	(%rbx), %rdx
	movq	544(%rdx), %rcx
	cmpq	536(%rdx), %r13
	jnb	.L241
	movq	(%rcx,%rbp), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %r12
	jnb	.L239
	movq	(%rsp), %rdi
	movq	(%rcx,%rdi), %rcx
	movq	%rax, 96(%rcx)
	testq	%rax, %rax
	je	.L258
	movzwl	18(%rcx), %eax
	imull	16(%r14), %eax
	movq	%r14, %rdi
	cltd
	idivl	20(%r14)
	movw	%ax, 80(%rcx)
	call	SDL_FreeSurface@PLT
	movq	(%rbx), %r14
	movq	536(%r14), %rax
	movq	544(%r14), %rdx
	cmpq	%rax, %r13
	jnb	.L241
	movq	(%rdx,%rbp), %rcx
	movq	128(%rcx), %rdi
	movsd	152(%rcx), %xmm0
	cmpq	120(%rcx), %r12
	jb	.L118
.L239:
	movq	%r12, %rsi
	jmp	.L232
	.p2align 4,,10
	.p2align 3
.L244:
	pxor	%xmm0, %xmm0
	movsd	176(%rsi), %xmm4
	cvtsi2sdl	40(%rcx), %xmm0
	addsd	152(%rsi), %xmm0
	movapd	%xmm4, %xmm2
	movsd	%xmm0, 32(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	44(%rcx), %xmm0
	addsd	160(%rsi), %xmm0
	movsd	%xmm0, 56(%rsp)
	movsd	.LC7(%rip), %xmm0
	mulsd	184(%rsi), %xmm0
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm4
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L259
	ucomisd	%xmm4, %xmm2
	jp	.L56
	jne	.L56
	addsd	.LC5(%rip), %xmm4
.L56:
	comisd	%xmm2, %xmm4
	jbe	.L51
	movsd	%xmm4, 64(%rsp)
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L64:
	cmpq	%r15, 32(%r13)
	je	.L68
.L71:
	movq	0(%r13), %r9
	movq	536(%r9), %rax
	movq	544(%r9), %rdx
	cmpq	%rax, %r14
	jnb	.L242
	movq	(%rdx,%rbx), %rdx
	movq	64(%rdx), %rcx
	cmpq	56(%rdx), %rbp
	jnb	.L240
	movq	(%rcx,%r12), %rcx
	leaq	(%r15,%r15,2), %rdx
	addq	$1, %r15
	salq	$4, %rdx
	addq	40(%r13), %rdx
	movzbl	38(%rcx), %esi
	movq	%rcx, (%rdx)
	movl	$1, 8(%rdx)
	movb	%sil, 24(%rdx)
	movsd	%xmm2, 16(%rdx)
	movups	%xmm3, 28(%rdx)
	movq	544(%r9), %rdx
.L66:
	addsd	16(%r13), %xmm2
	movsd	64(%rsp), %xmm5
	comisd	%xmm2, %xmm5
	jbe	.L51
.L73:
	leaq	80(%r9), %rdi
	cmpq	%rax, %r14
	jnb	.L242
	movq	(%rdx,%rbx), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %rbp
	jnb	.L240
	movq	(%rdx,%r12), %rax
	movsd	56(%rsp), %xmm1
	movsd	%xmm2, 16(%rsp)
	movsd	32(%rsp), %xmm0
	movzwl	18(%rax), %esi
	movzwl	20(%rax), %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	testq	%r15, %r15
	movsd	16(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movdqa	(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm1
	movdqa	%xmm0, %xmm3
	movd	%xmm0, %ecx
	movd	%xmm1, %r11d
	movdqa	%xmm0, %xmm1
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %esi
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %r10d
	jne	.L260
.L60:
	sarl	%esi
	movl	%esi, %eax
	addl	%ecx, %eax
	jns	.L64
	movzwl	10(%r13), %edi
	subl	%esi, %ecx
	cmpl	%edi, %ecx
	jle	.L64
	movl	%r11d, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%r10d, %ecx
	jns	.L64
	movl	%r10d, %edx
	subl	%eax, %edx
	cmpl	%edx, %edi
	jge	.L64
	movq	0(%r13), %r9
	movq	536(%r9), %rax
	movq	544(%r9), %rdx
	jmp	.L66
.L245:
	movsd	.LC7(%rip), %xmm0
	mulsd	184(%rsi), %xmm0
	pxor	%xmm6, %xmm6
	pxor	%xmm1, %xmm1
	movsd	176(%rsi), %xmm5
	cvtsi2sdl	44(%rcx), %xmm6
	addsd	152(%rsi), %xmm6
	cvtsi2sdl	48(%rcx), %xmm1
	addsd	160(%rsi), %xmm1
	movapd	%xmm5, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm5
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L261
	ucomisd	%xmm5, %xmm2
	jp	.L82
	jne	.L82
	addsd	.LC5(%rip), %xmm5
.L82:
	comisd	%xmm2, %xmm5
	jbe	.L77
	movsd	%xmm6, 56(%rsp)
	movsd	%xmm5, 64(%rsp)
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L90:
	cmpq	%r15, 32(%r13)
	je	.L94
.L97:
	movq	0(%r13), %r9
	movq	536(%r9), %rax
	movq	544(%r9), %rdx
	cmpq	%rax, %r14
	jnb	.L242
	movq	(%rdx,%rbx), %rdx
	movq	96(%rdx), %rcx
	cmpq	88(%rdx), %rbp
	jnb	.L240
	movq	(%rcx,%r12), %rcx
	leaq	(%r15,%r15,2), %rdx
	addq	$1, %r15
	salq	$4, %rdx
	addq	40(%r13), %rdx
	movzbl	38(%rcx), %esi
	movq	%rcx, (%rdx)
	movl	$2, 8(%rdx)
	movb	%sil, 24(%rdx)
	movsd	%xmm2, 16(%rdx)
	movups	%xmm4, 28(%rdx)
	movq	544(%r9), %rdx
.L92:
	addsd	16(%r13), %xmm2
	movsd	64(%rsp), %xmm5
	comisd	%xmm2, %xmm5
	jbe	.L77
.L99:
	leaq	80(%r9), %rdi
	cmpq	%rax, %r14
	jnb	.L242
	movq	(%rdx,%rbx), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %rbp
	jnb	.L240
	movq	(%rdx,%r12), %rax
	movsd	56(%rsp), %xmm0
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm1, 16(%rsp)
	movzwl	20(%rax), %esi
	movzwl	22(%rax), %edx
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	testq	%r15, %r15
	movsd	16(%rsp), %xmm1
	movsd	32(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movdqa	(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm3
	movdqa	%xmm0, %xmm4
	movd	%xmm0, %ecx
	movd	%xmm3, %r11d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %esi
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r10d
	jne	.L262
.L86:
	sarl	%esi
	movl	%esi, %eax
	addl	%ecx, %eax
	jns	.L90
	movzwl	10(%r13), %edi
	subl	%esi, %ecx
	cmpl	%edi, %ecx
	jle	.L90
	movl	%r11d, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%r10d, %esi
	jns	.L90
	movl	%r10d, %edx
	subl	%eax, %edx
	cmpl	%edx, %edi
	jge	.L90
	movq	0(%r13), %r9
	movq	536(%r9), %rax
	movq	544(%r9), %rdx
	jmp	.L92
.L253:
	movsd	.LC5(%rip), %xmm2
	ucomisd	%xmm2, %xmm5
	jp	.L29
	jne	.L29
	movapd	%xmm5, %xmm2
	movsd	.LC4(%rip), %xmm5
	jmp	.L224
.L259:
	movsd	.LC5(%rip), %xmm2
	ucomisd	%xmm2, %xmm4
	jp	.L56
	jne	.L56
	movapd	%xmm4, %xmm2
	movsd	.LC4(%rip), %xmm4
	movsd	%xmm4, 64(%rsp)
	jmp	.L73
.L261:
	movsd	.LC5(%rip), %xmm2
	ucomisd	%xmm2, %xmm5
	jp	.L82
	jne	.L82
	movapd	%xmm5, %xmm2
	movsd	.LC4(%rip), %xmm5
	movsd	%xmm6, 56(%rsp)
	movsd	%xmm5, 64(%rsp)
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L260:
	movq	40(%r13), %rdx
	leaq	(%r15,%r15,2), %rax
	movq	0(%r13), %r9
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	544(%r9), %rdx
	movq	%rax, (%rsp)
	movq	(%rax), %r8
	movq	536(%r9), %rax
	cmpq	%rax, %r14
	jnb	.L242
	movq	(%rdx,%rbx), %rdi
	movq	64(%rdi), %rdi
	movq	%rdi, 16(%rsp)
	movq	(%rdx,%rbx), %rdi
	cmpq	56(%rdi), %rbp
	jnb	.L240
	movq	%r8, %rdi
	movq	16(%rsp), %r8
	cmpq	(%r8,%r12), %rdi
	jne	.L60
	movq	(%rsp), %rdi
	cmpl	%ecx, 28(%rdi)
	jne	.L60
	cmpl	%r10d, 32(%rdi)
	jne	.L60
	cmpl	%esi, 36(%rdi)
	jne	.L60
	cmpl	%r11d, 40(%rdi)
	jne	.L60
	movsd	%xmm2, 16(%rdi)
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L68:
	movzwl	24(%r13), %eax
	movq	40(%r13), %rdi
	movaps	%xmm3, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%r15,%rax), %rax
	movq	%rax, 32(%r13)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm3
	testq	%rax, %rax
	movq	%rax, 40(%r13)
	jne	.L71
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L262:
	movq	40(%r13), %rdx
	leaq	(%r15,%r15,2), %rax
	movq	0(%r13), %r9
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	544(%r9), %rdx
	movq	%rax, (%rsp)
	movq	(%rax), %r8
	movq	536(%r9), %rax
	cmpq	%rax, %r14
	jnb	.L242
	movq	(%rdx,%rbx), %rdi
	movq	96(%rdi), %rdi
	movq	%rdi, 16(%rsp)
	movq	(%rdx,%rbx), %rdi
	cmpq	88(%rdi), %rbp
	jnb	.L240
	movq	%r8, %rdi
	movq	16(%rsp), %r8
	cmpq	(%r8,%r12), %rdi
	jne	.L86
	movq	(%rsp), %rdi
	cmpl	%ecx, 28(%rdi)
	jne	.L86
	cmpl	%r10d, 32(%rdi)
	jne	.L86
	cmpl	%esi, 36(%rdi)
	jne	.L86
	cmpl	%r11d, 40(%rdi)
	jne	.L86
	movsd	%xmm2, 16(%rdi)
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L94:
	movzwl	24(%r13), %eax
	movq	40(%r13), %rdi
	movsd	%xmm1, 32(%rsp)
	movaps	%xmm4, 16(%rsp)
	leaq	1(%r15,%rax), %rax
	movsd	%xmm2, (%rsp)
	movq	%rax, 32(%r13)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm4
	testq	%rax, %rax
	movq	%rax, 40(%r13)
	movsd	32(%rsp), %xmm1
	jne	.L97
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L242:
	movq	%r14, %r9
	jmp	.L231
.L147:
	movq	$0, 40(%r15)
	jmp	.L182
.L21:
	cmpq	$0, 32(%rdi)
	je	.L147
	xorl	%r13d, %r13d
.L146:
	movq	%r13, 32(%r15)
	movq	40(%r15), %rdi
	leaq	0(%r13,%r13,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	je	.L44
	movq	32(%r15), %rax
	jmp	.L144
.L237:
	movq	16(%rsp), %r9
	jmp	.L231
.L240:
	movq	%rbp, %rsi
	jmp	.L232
.L233:
	movq	(%rsp), %r9
	jmp	.L231
.L258:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L257:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L256:
	movq	%rdx, %rsi
	jmp	.L232
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6render14SelectionStageEv, .-_ZN4slay6engine6render14SelectionStageEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.type	_ZN4slay6engine6render17OrderByLayerMergeEyyy, @function
_ZN4slay6engine6render17OrderByLayerMergeEyyy:
.LFB2251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %r8
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	movq	%rdx, %r13
	movq	%r13, %r11
	pushq	%r12
	subq	%r13, %rcx
	pushq	%rbx
	subq	%rsi, %r11
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	leaq	(%rcx,%rcx,2), %r12
	movq	%rcx, %r10
	leaq	1(%r11), %r9
	salq	$4, %r12
	leaq	(%r9,%r9,2), %r14
	subq	$16, %rsp
	salq	$4, %r14
	movq	%fs:40, %rdx
	movq	%rdx, -40(%rbp)
	xorl	%edx, %edx
	subq	%r14, %rsp
	movq	%rsp, %rbx
	subq	%r12, %rsp
	movq	%rsp, %rcx
	testq	%r9, %r9
	je	.L299
	leaq	(%rsi,%rsi), %rax
	movq	40(%rdi), %rdi
	xorl	%edx, %edx
	leaq	(%rax,%rsi), %rsi
	salq	$4, %rsi
	addq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L268:
	movdqu	(%rsi,%rdx), %xmm1
	movdqu	16(%rsi,%rdx), %xmm2
	movdqu	28(%rsi,%rdx), %xmm3
	movups	%xmm2, 16(%rbx,%rdx)
	movups	%xmm1, (%rbx,%rdx)
	movups	%xmm3, 28(%rbx,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r14
	jne	.L268
	testq	%r10, %r10
	je	.L300
.L265:
	leaq	0(%r13,%r13,2), %rsi
	xorl	%edx, %edx
	salq	$4, %rsi
	addq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L270:
	movdqu	48(%rsi,%rdx), %xmm4
	movdqu	64(%rsi,%rdx), %xmm5
	movdqu	76(%rsi,%rdx), %xmm6
	movups	%xmm5, 16(%rcx,%rdx)
	movups	%xmm4, (%rcx,%rdx)
	movups	%xmm6, 28(%rcx,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r12
	jne	.L270
	testq	%r9, %r9
	je	.L282
	addq	%r8, %rax
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	salq	$4, %rax
	addq	%rdi, %rax
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L302:
	movdqu	0(%r13), %xmm5
	addq	$1, %r12
	addq	$1, %r8
	addq	$48, %rax
	movdqu	16(%r13), %xmm6
	movdqu	28(%r13), %xmm7
	movups	%xmm5, -48(%rax)
	movups	%xmm6, -32(%rax)
	movups	%xmm7, -20(%rax)
	cmpq	%r9, %rsi
	jnb	.L278
.L303:
	cmpq	%r10, %r12
	jnb	.L301
.L276:
	leaq	(%r12,%r12,2), %r13
	leaq	(%rsi,%rsi,2), %rdx
	salq	$4, %r13
	salq	$4, %rdx
	addq	%rbx, %rdx
	addq	%rcx, %r13
	movsd	16(%rdx), %xmm0
	comisd	16(%r13), %xmm0
	ja	.L302
	movdqu	(%rdx), %xmm5
	addq	$1, %rsi
	addq	$1, %r8
	addq	$48, %rax
	movdqu	16(%rdx), %xmm6
	movdqu	28(%rdx), %xmm7
	movups	%xmm5, -48(%rax)
	movups	%xmm6, -32(%rax)
	movups	%xmm7, -20(%rax)
	cmpq	%r9, %rsi
	jb	.L303
	.p2align 4,,10
	.p2align 3
.L278:
	cmpq	%r10, %r12
	jnb	.L266
	leaq	(%r8,%r8), %rax
.L272:
	subq	%r12, %r10
	leaq	(%r12,%r12,2), %rdx
	addq	%r8, %rax
	salq	$4, %rax
	leaq	(%r10,%r10,2), %rsi
	salq	$4, %rdx
	addq	%rax, %rdi
	salq	$4, %rsi
	addq	%rdx, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L280:
	movdqu	(%rcx,%rax), %xmm2
	movdqu	16(%rcx,%rax), %xmm3
	movdqu	28(%rcx,%rax), %xmm4
	movups	%xmm3, 16(%rdi,%rax)
	movups	%xmm2, (%rdi,%rax)
	movups	%xmm4, 28(%rdi,%rax)
	addq	$48, %rax
	cmpq	%rax, %rsi
	jne	.L280
.L266:
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L304
	leaq	-32(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L301:
	.cfi_restore_state
	cmpq	%r9, %rsi
	jnb	.L278
	leaq	(%r8,%r8), %rax
.L267:
	leaq	(%rsi,%rsi,2), %rdx
	addq	%r8, %rax
	movq	%rsi, %r13
	salq	$4, %rdx
	salq	$4, %rax
	addq	%rdx, %rbx
	leaq	(%rdi,%rax), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L279:
	movdqu	(%rbx,%rax), %xmm7
	movdqu	16(%rbx,%rax), %xmm0
	addq	$1, %r13
	movdqu	28(%rbx,%rax), %xmm1
	movups	%xmm0, 16(%rdx,%rax)
	movups	%xmm7, (%rdx,%rax)
	movups	%xmm1, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r9, %r13
	jb	.L279
	subq	%rsi, %r11
	addq	$1, %rsi
	xorl	%eax, %eax
	cmpq	%rsi, %r9
	cmovb	%rax, %r11
	leaq	1(%r8,%r11), %r8
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L299:
	testq	%r10, %r10
	je	.L266
	movq	40(%rdi), %rdi
	leaq	(%rsi,%rsi), %rax
	jmp	.L265
	.p2align 4,,10
	.p2align 3
.L300:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	jmp	.L267
.L282:
	xorl	%r12d, %r12d
	jmp	.L272
.L304:
	call	__stack_chk_fail@PLT
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
	jbe	.L306
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L306
	.p2align 4,,10
	.p2align 3
.L307:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L309:
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
	jb	.L309
	cmpq	%r14, %rbp
	jb	.L307
.L306:
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
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, @function
_ZN4slay6engine6render20OrderByPriorityMergeEyyy:
.LFB2253:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %r8
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	movq	%rdx, %r13
	movq	%r13, %r11
	pushq	%r12
	subq	%r13, %rcx
	pushq	%rbx
	subq	%rsi, %r11
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	leaq	(%rcx,%rcx,2), %r12
	movq	%rcx, %r10
	leaq	1(%r11), %r9
	salq	$4, %r12
	leaq	(%r9,%r9,2), %r14
	subq	$16, %rsp
	salq	$4, %r14
	movq	%fs:40, %rdx
	movq	%rdx, -40(%rbp)
	xorl	%edx, %edx
	subq	%r14, %rsp
	movq	%rsp, %rbx
	subq	%r12, %rsp
	movq	%rsp, %rcx
	testq	%r9, %r9
	je	.L348
	leaq	(%rsi,%rsi), %rax
	movq	40(%rdi), %rdi
	xorl	%edx, %edx
	leaq	(%rax,%rsi), %rsi
	salq	$4, %rsi
	addq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L320:
	movdqu	(%rsi,%rdx), %xmm0
	movdqu	16(%rsi,%rdx), %xmm1
	movdqu	28(%rsi,%rdx), %xmm2
	movups	%xmm1, 16(%rbx,%rdx)
	movups	%xmm0, (%rbx,%rdx)
	movups	%xmm2, 28(%rbx,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r14
	jne	.L320
	testq	%r10, %r10
	je	.L349
.L317:
	leaq	0(%r13,%r13,2), %rsi
	xorl	%edx, %edx
	salq	$4, %rsi
	addq	%rdi, %rsi
	.p2align 4,,10
	.p2align 3
.L322:
	movdqu	48(%rsi,%rdx), %xmm3
	movdqu	64(%rsi,%rdx), %xmm4
	movdqu	76(%rsi,%rdx), %xmm5
	movups	%xmm4, 16(%rcx,%rdx)
	movups	%xmm3, (%rcx,%rdx)
	movups	%xmm5, 28(%rcx,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r12
	jne	.L322
	testq	%r9, %r9
	je	.L333
	addq	%r8, %rax
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	salq	$4, %rax
	addq	%rdi, %rax
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L351:
	movdqu	0(%r13), %xmm4
	addq	$1, %r12
	addq	$1, %r8
	addq	$48, %rax
	movdqu	16(%r13), %xmm5
	movdqu	28(%r13), %xmm6
	movups	%xmm4, -48(%rax)
	movups	%xmm5, -32(%rax)
	movups	%xmm6, -20(%rax)
	cmpq	%r9, %rsi
	jnb	.L329
.L352:
	cmpq	%r10, %r12
	jnb	.L350
.L327:
	leaq	(%r12,%r12,2), %r13
	leaq	(%rsi,%rsi,2), %rdx
	salq	$4, %r13
	salq	$4, %rdx
	addq	%rbx, %rdx
	addq	%rcx, %r13
	movzbl	24(%rdx), %r14d
	cmpb	%r14b, 24(%r13)
	jb	.L351
	movdqu	(%rdx), %xmm7
	addq	$1, %rsi
	addq	$1, %r8
	addq	$48, %rax
	movdqu	16(%rdx), %xmm4
	movdqu	28(%rdx), %xmm5
	movups	%xmm7, -48(%rax)
	movups	%xmm4, -32(%rax)
	movups	%xmm5, -20(%rax)
	cmpq	%r9, %rsi
	jb	.L352
	.p2align 4,,10
	.p2align 3
.L329:
	cmpq	%r10, %r12
	jnb	.L318
	leaq	(%r8,%r8), %rax
.L324:
	subq	%r12, %r10
	leaq	(%r12,%r12,2), %rdx
	addq	%r8, %rax
	salq	$4, %rax
	leaq	(%r10,%r10,2), %rsi
	salq	$4, %rdx
	addq	%rax, %rdi
	salq	$4, %rsi
	addq	%rdx, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L331:
	movdqu	(%rcx,%rax), %xmm1
	movdqu	16(%rcx,%rax), %xmm2
	movdqu	28(%rcx,%rax), %xmm3
	movups	%xmm2, 16(%rdi,%rax)
	movups	%xmm1, (%rdi,%rax)
	movups	%xmm3, 28(%rdi,%rax)
	addq	$48, %rax
	cmpq	%rax, %rsi
	jne	.L331
.L318:
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L353
	leaq	-32(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L350:
	.cfi_restore_state
	cmpq	%r9, %rsi
	jnb	.L329
	leaq	(%r8,%r8), %rax
.L319:
	leaq	(%rsi,%rsi,2), %rdx
	addq	%r8, %rax
	movq	%rsi, %r13
	salq	$4, %rdx
	salq	$4, %rax
	addq	%rdx, %rbx
	leaq	(%rdi,%rax), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L330:
	movdqu	(%rbx,%rax), %xmm6
	movdqu	16(%rbx,%rax), %xmm7
	addq	$1, %r13
	movdqu	28(%rbx,%rax), %xmm0
	movups	%xmm7, 16(%rdx,%rax)
	movups	%xmm6, (%rdx,%rax)
	movups	%xmm0, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r9, %r13
	jb	.L330
	subq	%rsi, %r11
	addq	$1, %rsi
	xorl	%eax, %eax
	cmpq	%rsi, %r9
	cmovb	%rax, %r11
	leaq	1(%r8,%r11), %r8
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L348:
	testq	%r10, %r10
	je	.L318
	movq	40(%rdi), %rdi
	leaq	(%rsi,%rsi), %rax
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L349:
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	jmp	.L319
.L333:
	xorl	%r12d, %r12d
	jmp	.L324
.L353:
	call	__stack_chk_fail@PLT
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
	jbe	.L355
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L355
	.p2align 4,,10
	.p2align 3
.L356:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L358:
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
	jb	.L358
	cmpq	%r14, %rbp
	jb	.L356
.L355:
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$1, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	32(%rdi), %rax
	movq	%rax, 16(%rsp)
	leaq	-1(%rax), %r15
	cmpq	$1, %rax
	jbe	.L366
	.p2align 4,,10
	.p2align 3
.L365:
	movq	%r12, %r13
	xorl	%ebp, %ebp
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L367:
	leaq	0(%r13,%rbp), %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%r12, %rbp
	leaq	-1(%rbp), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	cmpq	%r15, %rbp
	jb	.L367
	movq	16(%rsp), %rax
	cmpq	%rax, %r12
	jb	.L365
	movq	40(%rbx), %rax
	movq	$1, (%rsp)
	xorl	%r14d, %r14d
	movq	$0, 8(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L369:
	addq	$1, (%rsp)
	addq	$1, %r14
	movq	(%rsp), %rax
	cmpq	%rax, 16(%rsp)
	je	.L397
.L375:
	movq	(%rsp), %rax
	movq	24(%rsp), %rdi
	leaq	(%rax,%rax,2), %rdx
	movq	8(%rsp), %rax
	salq	$4, %rdx
	leaq	(%rax,%rax,2), %rax
	movsd	16(%rdi,%rdx), %xmm0
	salq	$4, %rax
	ucomisd	16(%rdi,%rax), %xmm0
	jp	.L382
	je	.L369
.L382:
	cmpq	$1, (%rsp)
	je	.L371
	movl	$1, %ebp
	cmpq	%r14, 8(%rsp)
	jnb	.L371
	.p2align 4,,10
	.p2align 3
.L372:
	movq	%rbp, %r12
	movq	8(%rsp), %r13
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L374:
	leaq	0(%r13,%r12), %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	cmpq	%r14, %rdx
	cmova	%r14, %rdx
	addq	%rbp, %r13
	leaq	-1(%r13), %rcx
	cmpq	%r14, %rcx
	cmova	%r14, %rcx
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%r14, %r13
	jb	.L374
	movq	(%rsp), %rax
	cmpq	%rax, %rbp
	jb	.L372
.L371:
	movq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.L369
.L397:
	movl	$1, %ebp
	cmpq	%r15, 8(%rsp)
	jnb	.L366
	.p2align 4,,10
	.p2align 3
.L376:
	movq	%rbp, %r12
	movq	8(%rsp), %r13
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L378:
	leaq	0(%r13,%r12), %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%rbp, %r13
	leaq	-1(%r13), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%r15, %r13
	jb	.L378
	movq	16(%rsp), %rax
	cmpq	%rax, %rbp
	jb	.L376
.L366:
	addq	$40, %rsp
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
.LFE2249:
	.size	_ZN4slay6engine6render13OrderingStageEv, .-_ZN4slay6engine6render13OrderingStageEv
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC12:
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
	movzbl	24(%rax), %ecx
	movzbl	23(%rax), %edx
	movzbl	22(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	25(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L402
	movq	(%rbx), %rax
	leaq	44(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L403
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L402:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L403:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6render11RenderColorENS1_5tokenE, .-_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC14:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC16:
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
	movzbl	36(%rax), %ecx
	movzbl	35(%rax), %r8d
	negl	%r9d
	movzbl	34(%rax), %edi
	movq	64(%rax), %rsi
	andl	$2, %r9d
	movq	576(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	568(%rdx), %rsi
	jnb	.L413
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L414
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	37(%rdx), %ecx
	movq	64(%rdx), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L413
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L415
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	64(%rdx), %rsi
	xorpd	.LC15(%rip), %xmm0
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L413
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L416
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L413:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L416:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L415:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L414:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, .-_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC18:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC19:
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
	movzbl	35(%rax), %r8d
	negl	%r9d
	movzbl	34(%rax), %edi
	andl	$2, %r9d
	orl	%r9d, %ebx
	movzbl	36(%rax), %r9d
	movq	96(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L426
	movq	(%rax,%rsi,8), %rax
	movl	%r9d, %ecx
	movl	%edi, %esi
	movl	%r8d, %edx
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L427
	movq	32(%rsp), %rax
	movq	0(%rbp), %rdx
	movq	72(%rax), %rcx
	movzbl	37(%rax), %edi
	movq	96(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L426
	movq	(%rax,%rsi,8), %rax
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L428
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rcx
	movq	96(%rdx), %rdx
	xorpd	.LC15(%rip), %xmm0
	movq	(%rdx,%rcx,8), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L426
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L429
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L426:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L429:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L428:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L427:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2257:
	.size	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, .-_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC21:
	.string	"slay::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.type	_ZN4slay6engine6render14RenderingStageEv, @function
_ZN4slay6engine6render14RenderingStageEv:
.LFB2254:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	movl	$255, %r8d
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$112, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	movq	(%rdi), %rax
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L472
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L432
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L450
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	leaq	16(%rax), %rdx
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L474:
	addq	$1, %rbx
	addq	$48, %rdx
	cmpq	%rcx, %rbx
	je	.L473
.L435:
	movsd	(%rdx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L474
	movq	%rbx, %r12
	cmpq	%rcx, %rbx
	jb	.L449
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L476:
	testl	%edx, %edx
	je	.L475
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 192
	movq	%rbp, %rdi
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	movq	32(%rbp), %rcx
	addq	$48, %rsp
	.cfi_def_cfa_offset 144
.L443:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L448
.L477:
	movq	40(%rbp), %rax
.L449:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L438
	jbe	.L476
	cmpl	$3, %edx
	jne	.L443
	movdqu	(%rax), %xmm5
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	28(%rsp), %rcx
	movaps	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movq	(%rsp), %rax
	movzbl	33(%rax), %r9d
	movsd	24(%rax), %xmm0
	movaps	%xmm7, 32(%rsp)
	movq	96(%rax), %rsi
	xorpd	.LC15(%rip), %xmm0
	negl	%r9d
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movq	0(%rbp), %rax
	movzbl	%r9b, %r9d
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L459
.L446:
	movq	32(%rbp), %rcx
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L477
.L448:
	testq	%r12, %r12
	je	.L450
	movq	40(%rbp), %rax
.L437:
	xorl	%ebx, %ebx
	jmp	.L460
	.p2align 4,,10
	.p2align 3
.L479:
	testl	%edx, %edx
	je	.L478
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 192
	movq	%rbp, %rdi
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 144
.L456:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L450
	movq	40(%rbp), %rax
.L460:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L451
	jbe	.L479
	cmpl	$3, %edx
	jne	.L456
	movdqu	(%rax), %xmm5
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	76(%rsp), %rcx
	movaps	%xmm5, 48(%rsp)
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 64(%rsp)
	movdqu	32(%rax), %xmm7
	movq	48(%rsp), %rax
	movzbl	33(%rax), %r9d
	movsd	24(%rax), %xmm0
	movaps	%xmm7, 80(%rsp)
	movq	96(%rax), %rsi
	xorpd	.LC15(%rip), %xmm0
	negl	%r9d
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movq	0(%rbp), %rax
	movzbl	%r9b, %r9d
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	je	.L456
.L459:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L468
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0
	.p2align 4,,10
	.p2align 3
.L450:
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderPresent@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L468
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L438:
	.cfi_restore_state
	movdqu	(%rax), %xmm2
	subq	$48, %rsp
	.cfi_def_cfa_offset 192
	movq	%rbp, %rdi
	movups	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movups	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movups	%xmm4, 32(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	movq	32(%rbp), %rcx
	addq	$48, %rsp
	.cfi_def_cfa_offset 144
	jmp	.L443
	.p2align 4,,10
	.p2align 3
.L475:
	movdqu	(%rax), %xmm2
	movq	0(%rbp), %rdi
	movaps	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movq	(%rsp), %rax
	movaps	%xmm4, 32(%rsp)
	movzbl	24(%rax), %ecx
	movzbl	23(%rax), %edx
	movzbl	22(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	25(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L457
	movq	0(%rbp), %rax
	leaq	28(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L446
.L458:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L451:
	movdqu	(%rax), %xmm2
	subq	$48, %rsp
	.cfi_def_cfa_offset 192
	movq	%rbp, %rdi
	movups	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movups	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movups	%xmm4, 32(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 144
	jmp	.L456
	.p2align 4,,10
	.p2align 3
.L478:
	movdqu	(%rax), %xmm2
	movq	0(%rbp), %rdi
	movaps	%xmm2, 48(%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 64(%rsp)
	movdqu	32(%rax), %xmm4
	movq	48(%rsp), %rax
	movaps	%xmm4, 80(%rsp)
	movzbl	24(%rax), %ecx
	movzbl	23(%rax), %edx
	movzbl	22(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	25(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L457
	movq	0(%rbp), %rax
	leaq	76(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L456
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L473:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L449
.L457:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L468:
	call	__stack_chk_fail@PLT
.L432:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L472:
	leaq	.LC20(%rip), %rdi
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
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.type	_ZN4slay6engine6render10RenderTextENS1_5tokenE, @function
_ZN4slay6engine6render10RenderTextENS1_5tokenE:
.LFB2258:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	16(%rsp), %rax
	leaq	44(%rsp), %rcx
	movzbl	33(%rax), %r9d
	movsd	24(%rax), %xmm0
	movq	96(%rax), %rsi
	xorpd	.LC15(%rip), %xmm0
	negl	%r9d
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movq	(%rdi), %rax
	movzbl	%r9b, %r9d
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L485
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L485:
	.cfi_restore_state
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0
	.cfi_endproc
.LFE2258:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	-755914244
	.long	1063281229
	.align 8
.LC4:
	.long	-350469331
	.long	1059731170
	.align 8
.LC5:
	.long	-350469331
	.long	1058682594
	.align 8
.LC7:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC15:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
