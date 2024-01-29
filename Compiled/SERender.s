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
	.section	.rodata.str1.8
	.align 8
.LC11:
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
	je	.L265
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
	je	.L265
	testq	%r14, %r14
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	je	.L303
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	leaq	(%rax,%r13), %r11
	salq	$4, %r11
	addq	%r8, %r11
	.p2align 4,,10
	.p2align 3
.L270:
	movdqu	(%r11,%rdx), %xmm1
	movdqu	16(%r11,%rdx), %xmm2
	movdqu	28(%r11,%rdx), %xmm3
	movups	%xmm2, 16(%rbp,%rdx)
	movups	%xmm1, 0(%rbp,%rdx)
	movups	%xmm3, 28(%rbp,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rbx
	jne	.L270
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	testq	%rsi, %rsi
	je	.L269
.L267:
	leaq	(%r15,%r15,2), %r9
	xorl	%edx, %edx
	salq	$4, %r9
	addq	%r8, %r9
	.p2align 4,,10
	.p2align 3
.L272:
	movdqu	48(%r9,%rdx), %xmm4
	movdqu	64(%r9,%rdx), %xmm5
	movdqu	76(%r9,%rdx), %xmm6
	movups	%xmm5, 16(%r12,%rdx)
	movups	%xmm4, (%r12,%rdx)
	movups	%xmm6, 28(%r12,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rdi
	jne	.L272
	testq	%r14, %r14
	je	.L283
	addq	%r13, %rax
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	salq	$4, %rax
	addq	%r8, %rax
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L305:
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
	jnb	.L280
.L306:
	cmpq	%rsi, %r10
	jnb	.L304
.L278:
	leaq	(%r10,%r10,2), %rdi
	leaq	(%r9,%r9,2), %rdx
	salq	$4, %rdi
	salq	$4, %rdx
	addq	%rbp, %rdx
	addq	%r12, %rdi
	movsd	16(%rdx), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L305
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
	jb	.L306
	.p2align 4,,10
	.p2align 3
.L280:
	cmpq	%rsi, %r10
	jnb	.L268
	leaq	(%r13,%r13), %rax
.L274:
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
.L282:
	movdqu	(%rdx,%rax), %xmm2
	movdqu	16(%rdx,%rax), %xmm3
	movdqu	28(%rdx,%rax), %xmm4
	movups	%xmm3, 16(%r8,%rax)
	movups	%xmm2, (%r8,%rax)
	movups	%xmm4, 28(%r8,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L282
.L268:
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
.L304:
	.cfi_restore_state
	cmpq	%r14, %r9
	jnb	.L280
	leaq	(%r13,%r13), %rax
.L269:
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
.L281:
	movdqu	(%rdi,%rax), %xmm7
	movdqu	16(%rdi,%rax), %xmm0
	addq	$1, %r11
	movdqu	28(%rdi,%rax), %xmm1
	movups	%xmm0, 16(%rdx,%rax)
	movups	%xmm7, (%rdx,%rax)
	movups	%xmm1, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r14, %r11
	jb	.L281
	movq	40(%rsp), %rbx
	xorl	%eax, %eax
	subq	%r9, %rbx
	addq	$1, %r9
	cmpq	%r9, %r14
	cmovb	%rax, %rbx
	leaq	1(%r13,%rbx), %r13
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L303:
	testq	%rsi, %rsi
	je	.L268
	movq	32(%rsp), %rax
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	jmp	.L267
.L283:
	xorl	%r10d, %r10d
	jmp	.L274
.L265:
	movq	8(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
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
	jbe	.L308
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L308
	.p2align 4,,10
	.p2align 3
.L309:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L311:
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
	jb	.L311
	cmpq	%r14, %rbp
	jb	.L309
.L308:
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
.LC12:
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
	je	.L319
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
	je	.L319
	testq	%r14, %r14
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	je	.L354
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	leaq	(%rax,%r13), %r11
	salq	$4, %r11
	addq	%r8, %r11
	.p2align 4,,10
	.p2align 3
.L324:
	movdqu	(%r11,%rdx), %xmm0
	movdqu	16(%r11,%rdx), %xmm1
	movdqu	28(%r11,%rdx), %xmm2
	movups	%xmm1, 16(%rbp,%rdx)
	movups	%xmm0, 0(%rbp,%rdx)
	movups	%xmm2, 28(%rbp,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rbx
	jne	.L324
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	testq	%rsi, %rsi
	je	.L323
.L321:
	leaq	(%r15,%r15,2), %r9
	xorl	%edx, %edx
	salq	$4, %r9
	addq	%r8, %r9
	.p2align 4,,10
	.p2align 3
.L326:
	movdqu	48(%r9,%rdx), %xmm3
	movdqu	64(%r9,%rdx), %xmm4
	movdqu	76(%r9,%rdx), %xmm5
	movups	%xmm4, 16(%r12,%rdx)
	movups	%xmm3, (%r12,%rdx)
	movups	%xmm5, 28(%r12,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rdi
	jne	.L326
	testq	%r14, %r14
	je	.L336
	addq	%r13, %rax
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	salq	$4, %rax
	addq	%r8, %rax
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L356:
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
	jnb	.L333
.L357:
	cmpq	%rsi, %r10
	jnb	.L355
.L331:
	leaq	(%r10,%r10,2), %rdi
	leaq	(%r9,%r9,2), %rdx
	salq	$4, %rdi
	salq	$4, %rdx
	addq	%rbp, %rdx
	addq	%r12, %rdi
	movzbl	24(%rdx), %ebx
	cmpb	%bl, 24(%rdi)
	jb	.L356
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
	jb	.L357
	.p2align 4,,10
	.p2align 3
.L333:
	cmpq	%rsi, %r10
	jnb	.L322
	leaq	(%r13,%r13), %rax
.L328:
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
.L335:
	movdqu	(%rdx,%rax), %xmm1
	movdqu	16(%rdx,%rax), %xmm2
	movdqu	28(%rdx,%rax), %xmm3
	movups	%xmm2, 16(%r8,%rax)
	movups	%xmm1, (%r8,%rax)
	movups	%xmm3, 28(%r8,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L335
.L322:
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
.L355:
	.cfi_restore_state
	cmpq	%r14, %r9
	jnb	.L333
	leaq	(%r13,%r13), %rax
.L323:
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
.L334:
	movdqu	(%rdi,%rax), %xmm6
	movdqu	16(%rdi,%rax), %xmm7
	addq	$1, %r11
	movdqu	28(%rdi,%rax), %xmm0
	movups	%xmm7, 16(%rdx,%rax)
	movups	%xmm6, (%rdx,%rax)
	movups	%xmm0, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r14, %r11
	jb	.L334
	movq	40(%rsp), %rbx
	xorl	%eax, %eax
	subq	%r9, %rbx
	addq	$1, %r9
	cmpq	%r9, %r14
	cmovb	%rax, %rbx
	leaq	1(%r13,%rbx), %r13
	jmp	.L333
	.p2align 4,,10
	.p2align 3
.L354:
	testq	%rsi, %rsi
	je	.L322
	movq	32(%rsp), %rax
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	jmp	.L321
.L336:
	xorl	%r10d, %r10d
	jmp	.L328
.L319:
	movq	8(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
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
	jbe	.L359
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L359
	.p2align 4,,10
	.p2align 3
.L360:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L362:
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
	jb	.L362
	cmpq	%r14, %rbp
	jb	.L360
.L359:
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
	jbe	.L388
	.p2align 4,,10
	.p2align 3
.L369:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L371:
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
	jb	.L371
	cmpq	%r15, %r13
	jb	.L369
	movq	32(%r12), %rsi
	cmpq	$1, %rsi
	jbe	.L388
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L373:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rsi, %r13
	jnb	.L398
.L385:
	movq	%r13, %rbp
.L379:
	movq	8(%rsp), %rax
	movq	40(%r12), %rcx
	leaq	0(%rbp,%rbp,2), %rdx
	salq	$4, %rdx
	leaq	(%rax,%rax,2), %rax
	movsd	16(%rcx,%rdx), %xmm0
	salq	$4, %rax
	ucomisd	16(%rcx,%rax), %xmm0
	jp	.L387
	je	.L373
.L387:
	cmpq	$1, %rbp
	je	.L399
	cmpq	%r15, 8(%rsp)
	jnb	.L378
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L377:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L376:
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
	jb	.L376
	cmpq	%rbp, %r13
	jb	.L377
	movq	32(%r12), %rsi
.L378:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rsi, %r13
	jb	.L385
.L398:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L388
	.p2align 4,,10
	.p2align 3
.L380:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L382:
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
	jb	.L382
	cmpq	%r13, %rbx
	jb	.L380
.L388:
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
.L399:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L373
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6render13OrderingStageEv, .-_ZN4slay6engine6render13OrderingStageEv
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC14:
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
	jne	.L404
	movq	(%rbx), %rax
	leaq	44(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L405
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L404:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L405:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6render11RenderColorENS1_5tokenE, .-_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC16:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC18:
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
	jnb	.L415
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L416
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	37(%rdx), %ecx
	movq	64(%rdx), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L415
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L417
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	64(%rdx), %rsi
	xorpd	.LC17(%rip), %xmm0
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L415
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L418
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L415:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L418:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L417:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L416:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, .-_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC20:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC21:
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
	jnb	.L428
	movq	(%rax,%rsi,8), %rax
	movl	%r9d, %ecx
	movl	%edi, %esi
	movl	%r8d, %edx
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L429
	movq	32(%rsp), %rax
	movq	0(%rbp), %rdx
	movq	72(%rax), %rcx
	movzbl	37(%rax), %edi
	movq	96(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L428
	movq	(%rax,%rsi,8), %rax
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L430
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rcx
	movq	96(%rdx), %rdx
	xorpd	.LC17(%rip), %xmm0
	movq	(%rdx,%rcx,8), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L428
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L431
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L428:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L431:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L430:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L429:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2257:
	.size	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, .-_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC23:
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
	jne	.L474
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L434
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L452
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	leaq	16(%rax), %rdx
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L476:
	addq	$1, %rbx
	addq	$48, %rdx
	cmpq	%rcx, %rbx
	je	.L475
.L437:
	movsd	(%rdx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L476
	movq	%rbx, %r12
	cmpq	%rcx, %rbx
	jb	.L451
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L478:
	testl	%edx, %edx
	je	.L477
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
.L445:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L450
.L479:
	movq	40(%rbp), %rax
.L451:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L440
	jbe	.L478
	cmpl	$3, %edx
	jne	.L445
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
	xorpd	.LC17(%rip), %xmm0
	negl	%r9d
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movq	0(%rbp), %rax
	movzbl	%r9b, %r9d
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L461
.L448:
	movq	32(%rbp), %rcx
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L479
.L450:
	testq	%r12, %r12
	je	.L452
	movq	40(%rbp), %rax
.L439:
	xorl	%ebx, %ebx
	jmp	.L462
	.p2align 4,,10
	.p2align 3
.L481:
	testl	%edx, %edx
	je	.L480
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
.L458:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L452
	movq	40(%rbp), %rax
.L462:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L453
	jbe	.L481
	cmpl	$3, %edx
	jne	.L458
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
	xorpd	.LC17(%rip), %xmm0
	negl	%r9d
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movq	0(%rbp), %rax
	movzbl	%r9b, %r9d
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	je	.L458
.L461:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L470
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0
	.p2align 4,,10
	.p2align 3
.L452:
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderPresent@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L470
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
.L440:
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
	jmp	.L445
	.p2align 4,,10
	.p2align 3
.L477:
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
	jne	.L459
	movq	0(%rbp), %rax
	leaq	28(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L448
.L460:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L453:
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
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L480:
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
	jne	.L459
	movq	0(%rbp), %rax
	leaq	76(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L458
	jmp	.L460
	.p2align 4,,10
	.p2align 3
.L475:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L451
.L459:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L470:
	call	__stack_chk_fail@PLT
.L434:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L474:
	leaq	.LC22(%rip), %rdi
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
	xorpd	.LC17(%rip), %xmm0
	negl	%r9d
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movq	(%rdi), %rax
	movzbl	%r9b, %r9d
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L487
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L487:
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
.LC17:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
