	.file	"SERender.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"slay::engine.render.RenderHitbox(): SDL_RenderFillRect failed"
	.text
	.align 2
	.p2align 4
	.type	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0, @function
_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0:
.LFB2436:
	.cfi_startproc
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2436:
	.size	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0, .-_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6renderC2EPS0_
	.type	_ZN4slay6engine6renderC2EPS0_, @function
_ZN4slay6engine6renderC2EPS0_:
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	(%rdi), %rax
	movq	536(%rax), %rdx
	cmpq	$1, %rdx
	jbe	.L21
	movq	$0, (%rsp)
	movl	$1, %r14d
	.p2align 4,,10
	.p2align 3
.L149:
	movq	544(%rax), %rcx
	leaq	0(,%r14,8), %rbx
	cmpq	$0, (%rcx,%r14,8)
	je	.L22
	cmpq	%rdx, %r14
	jnb	.L146
	movl	$1, %ebp
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L49:
	movq	32(%rdi), %rsi
	leaq	0(,%rbp,8), %r12
	movq	(%rsi,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L24
	cmpw	$0, 16(%rsi)
	je	.L24
	cmpw	$0, 18(%rsi)
	je	.L24
	cmpb	$0, 23(%rsi)
	je	.L24
	cmpb	$0, 26(%rsi)
	jne	.L259
	.p2align 4,,10
	.p2align 3
.L24:
	addq	$1, %rbp
	cmpq	%rdx, %r14
	jnb	.L146
.L23:
	movq	(%rcx,%rbx), %rdi
	cmpq	24(%rdi), %rbp
	jb	.L49
	cmpq	%rdx, %r14
	jnb	.L146
	movl	$1, %ebp
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L75:
	movq	64(%rdi), %rsi
	leaq	0(,%rbp,8), %r12
	movq	(%rsi,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L51
	cmpw	$0, 16(%rsi)
	je	.L51
	cmpw	$0, 18(%rsi)
	je	.L51
	cmpb	$0, 23(%rsi)
	je	.L51
	cmpb	$0, 37(%rsi)
	je	.L51
	cmpq	$0, 64(%rsi)
	jne	.L260
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rbp
	cmpq	%rdx, %r14
	jnb	.L146
.L50:
	movq	(%rcx,%rbx), %rdi
	cmpq	56(%rdi), %rbp
	jb	.L75
	cmpq	%rdx, %r14
	jnb	.L146
	movl	$1, %r13d
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L101:
	movq	96(%rdi), %rsi
	leaq	0(,%r13,8), %rbp
	movq	(%rsi,%r13,8), %rsi
	testq	%rsi, %rsi
	je	.L77
	cmpw	$0, 16(%rsi)
	je	.L77
	cmpw	$0, 18(%rsi)
	je	.L77
	cmpb	$0, 23(%rsi)
	je	.L77
	cmpb	$0, 37(%rsi)
	je	.L77
	movq	72(%rsi), %r9
	movq	96(%rsi), %r8
	cmpq	$0, (%r8,%r9,8)
	jne	.L261
	.p2align 4,,10
	.p2align 3
.L77:
	addq	$1, %r13
	cmpq	%rdx, %r14
	jnb	.L146
.L76:
	movq	(%rcx,%rbx), %rdi
	cmpq	88(%rdi), %r13
	jb	.L101
	cmpq	%rdx, %r14
	jnb	.L146
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L102:
	movq	(%rcx,%rbx), %rcx
	cmpq	120(%rcx), %r12
	jnb	.L262
.L141:
	movq	128(%rcx), %rcx
	leaq	0(,%r12,8), %rbp
	movq	(%rcx,%r12,8), %rdi
	testq	%rdi, %rdi
	je	.L263
	addq	$80, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jbe	.L104
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %r12
	jnb	.L252
	movq	(%rdi,%rbp), %rdi
	cmpw	$0, 16(%rdi)
	jne	.L264
.L108:
	movq	(%rcx,%rbx), %rcx
	addq	$1, %r12
	cmpq	120(%rcx), %r12
	jb	.L141
	.p2align 4,,10
	.p2align 3
.L262:
	cmpb	$0, 136(%rcx)
	jne	.L265
.L22:
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	.L149
	movq	32(%r15), %rax
	cmpq	%rax, (%rsp)
	jb	.L152
.L150:
	testq	%rax, %rax
	je	.L153
.L193:
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
.L263:
	.cfi_restore_state
	movq	544(%rax), %rcx
.L104:
	addq	$1, %r12
	cmpq	%rdx, %r14
	jb	.L102
.L146:
	movq	%r14, %rsi
.L251:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L264:
	cmpb	$0, 21(%rdi)
	je	.L108
	cmpb	$0, 37(%rdi)
	je	.L108
	cmpq	$0, 96(%rdi)
	je	.L108
	cmpq	$0, 104(%rdi)
	je	.L266
.L109:
	movsd	.LC7(%rip), %xmm0
	mulsd	192(%rsi), %xmm0
	pxor	%xmm7, %xmm7
	movsd	184(%rsi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	comisd	%xmm2, %xmm7
	ja	.L267
	ucomisd	%xmm1, %xmm2
	jp	.L122
	jne	.L122
	addsd	.LC5(%rip), %xmm1
.L122:
	comisd	%xmm2, %xmm1
	jbe	.L104
	movq	(%rsp), %r13
	movsd	%xmm1, 32(%rsp)
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L271:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L126
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %edi
	movd	%xmm3, %r10d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %esi
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r8d
	testq	%r13, %r13
	jne	.L268
.L127:
	sarl	%esi
	movl	%esi, %eax
	addl	%edi, %eax
	js	.L269
.L131:
	cmpq	%r13, 32(%r15)
	je	.L134
.L137:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rcx
	movq	128(%rcx), %rsi
	cmpq	120(%rcx), %r12
	jnb	.L252
	movq	(%rsi,%rbp), %rsi
	leaq	0(%r13,%r13,2), %rcx
	addq	$1, %r13
	salq	$4, %rcx
	addq	40(%r15), %rcx
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$3, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L133:
	addsd	16(%r15), %xmm2
	movsd	32(%rsp), %xmm6
	comisd	%xmm2, %xmm6
	jbe	.L270
.L139:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rdx
	movq	128(%rdx), %rax
	cmpq	120(%rdx), %r12
	jnb	.L252
	movq	(%rax,%rbp), %rcx
	movsd	%xmm2, 16(%rsp)
	movsd	40(%rcx), %xmm0
	movzwl	16(%rcx), %edx
	movzwl	56(%rcx), %esi
	movsd	48(%rcx), %xmm1
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %edx
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%edx, %edx
	jne	.L271
.L126:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L269:
	movzwl	10(%r15), %ecx
	subl	%esi, %edi
	cmpl	%ecx, %edi
	jle	.L131
	movl	%r10d, %eax
	sarl	%eax
	movl	%eax, %edx
	addl	%r8d, %edx
	jns	.L131
	movl	%r8d, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.L126
	cmpq	%r13, 32(%r15)
	jne	.L137
	.p2align 4,,10
	.p2align 3
.L134:
	movzwl	24(%r15), %eax
	movq	40(%r15), %rdi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%r13,%rax), %rax
	movq	%rax, 32(%r15)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 40(%r15)
	jne	.L137
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L268:
	movq	40(%r15), %rdx
	leaq	0(%r13,%r13,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %r9
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %r11
	movq	128(%r11), %r11
	movq	%r11, 16(%rsp)
	movq	(%rcx,%rbx), %r11
	cmpq	120(%r11), %r12
	jnb	.L252
	movq	16(%rsp), %r11
	cmpq	(%r11,%rbp), %r9
	jne	.L127
	movq	(%rsp), %r9
	cmpl	%edi, 28(%r9)
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
.L270:
	movq	%r13, (%rsp)
	addq	$1, %r12
	cmpq	%rdx, %r14
	jb	.L102
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L259:
	movsd	.LC7(%rip), %xmm0
	pxor	%xmm7, %xmm7
	pxor	%xmm4, %xmm4
	pxor	%xmm1, %xmm1
	mulsd	192(%rdi), %xmm0
	movsd	184(%rdi), %xmm3
	cvtsi2sdl	28(%rsi), %xmm4
	cvtsi2sdl	32(%rsi), %xmm1
	addsd	152(%rdi), %xmm4
	movapd	%xmm3, %xmm2
	addsd	160(%rdi), %xmm1
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm3
	comisd	%xmm2, %xmm7
	ja	.L272
	ucomisd	%xmm3, %xmm2
	jp	.L29
	jne	.L29
	addsd	.LC5(%rip), %xmm3
.L29:
	comisd	%xmm2, %xmm3
	jbe	.L24
	movq	(%rsp), %r13
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L276:
	pshufd	$255, %xmm0, %xmm5
	movd	%xmm0, %edi
	movd	%xmm5, %r10d
	movdqa	%xmm0, %xmm5
	punpckhdq	%xmm0, %xmm5
	movd	%xmm5, %esi
	pshufd	$85, %xmm0, %xmm5
	movd	%xmm5, %r8d
	testq	%r13, %r13
	jne	.L273
.L34:
	sarl	%esi
	movl	%esi, %eax
	addl	%edi, %eax
	js	.L274
.L38:
	cmpq	%r13, 32(%r15)
	je	.L41
.L45:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rcx
	movq	32(%rcx), %rsi
	cmpq	24(%rcx), %rbp
	jnb	.L253
	movq	(%rsi,%r12), %rsi
	leaq	0(%r13,%r13,2), %rcx
	addq	$1, %r13
	salq	$4, %rcx
	addq	40(%r15), %rcx
	movzbl	25(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$0, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L40:
	addsd	16(%r15), %xmm2
	movsd	48(%rsp), %xmm7
	comisd	%xmm2, %xmm7
	jbe	.L275
.L47:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rdx
	movq	32(%rdx), %rax
	cmpq	24(%rdx), %rbp
	jnb	.L253
	movq	(%rax,%r12), %rdx
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
	movl	8(%rsp), %edi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%edi, %edi
	je	.L33
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L276
.L33:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L274:
	movzwl	10(%r15), %edx
	subl	%esi, %edi
	cmpl	%edx, %edi
	jle	.L38
	movl	%r10d, %eax
	sarl	%eax
	movl	%eax, %edi
	addl	%r8d, %edi
	jns	.L38
	movl	%r8d, %ecx
	subl	%eax, %ecx
	cmpl	%ecx, %edx
	jl	.L33
	cmpq	%r13, 32(%r15)
	jne	.L45
	.p2align 4,,10
	.p2align 3
.L41:
	movzwl	24(%r15), %eax
	movq	40(%r15), %rdi
	movsd	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	leaq	1(%r13,%rax), %rax
	movsd	%xmm2, (%rsp)
	movq	%rax, 32(%r15)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 40(%r15)
	movsd	32(%rsp), %xmm1
	jne	.L45
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L273:
	movq	40(%r15), %rdx
	leaq	0(%r13,%r13,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %r9
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %r11
	movq	32(%r11), %r11
	movq	%r11, 16(%rsp)
	movq	(%rcx,%rbx), %r11
	cmpq	24(%r11), %rbp
	jnb	.L253
	movq	16(%rsp), %r11
	cmpq	(%r11,%r12), %r9
	jne	.L34
	movq	(%rsp), %r9
	cmpl	%edi, 28(%r9)
	jne	.L34
	cmpl	%r8d, 32(%r9)
	jne	.L34
	cmpl	%esi, 36(%r9)
	jne	.L34
	cmpl	%r10d, 40(%r9)
	jne	.L34
	movsd	%xmm2, 16(%r9)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L275:
	movq	%r13, (%rsp)
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L267:
	ucomisd	.LC5(%rip), %xmm1
	jp	.L174
	jne	.L174
	movapd	%xmm1, %xmm2
	movsd	.LC4(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 32(%rsp)
	jmp	.L139
.L265:
	movzwl	200(%rcx), %esi
	testw	%si, %si
	je	.L22
	movzwl	202(%rcx), %edi
	testw	%di, %di
	je	.L22
	movsd	152(%rcx), %xmm0
	movsd	184(%rcx), %xmm2
	movzwl	%di, %edx
	leaq	80(%rax), %rdi
	movsd	160(%rcx), %xmm1
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movl	24(%rsp), %eax
	movdqa	16(%rsp), %xmm0
	testl	%eax, %eax
	je	.L249
	movq	24(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L142
.L249:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L22
.L266:
	movl	60(%rsp), %eax
	addq	$80, %rdi
	movb	$-1, %al
	movl	%eax, 60(%rsp)
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	(%r15), %rax
	movq	544(%rax), %rdx
	cmpq	536(%rax), %r14
	jnb	.L146
	movq	(%rdx,%rbx), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %r12
	jnb	.L252
	movq	(%rcx,%rbp), %rdx
	movq	608(%rax), %rcx
	movq	96(%rdx), %rdx
	cmpq	600(%rax), %rdx
	jnb	.L277
	orl	$-256, 60(%rsp)
	movq	(%rcx,%rdx,8), %rdi
	movl	60(%rsp), %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L278
	movq	(%r15), %rax
	movq	%rsi, 16(%rsp)
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	(%r15), %rdx
	movq	16(%rsp), %rsi
	cmpq	536(%rdx), %r14
	movq	544(%rdx), %rcx
	jnb	.L146
	movq	(%rcx,%rbx), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %r12
	jnb	.L252
	movq	(%rcx,%rbp), %rcx
	movq	%rax, 104(%rcx)
	testq	%rax, %rax
	je	.L279
	movzwl	16(%rcx), %eax
	imull	16(%rsi), %eax
	movq	%rsi, %rdi
	cltd
	idivl	20(%rsi)
	movw	%ax, 56(%rcx)
	call	SDL_FreeSurface@PLT
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rsi
	jmp	.L109
.L260:
	pxor	%xmm0, %xmm0
	movsd	184(%rdi), %xmm1
	cvtsi2sdl	40(%rsi), %xmm0
	addsd	152(%rdi), %xmm0
	movapd	%xmm1, %xmm2
	movsd	%xmm0, 40(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	44(%rsi), %xmm0
	addsd	160(%rdi), %xmm0
	movapd	%xmm0, %xmm4
	movsd	.LC7(%rip), %xmm0
	mulsd	192(%rdi), %xmm0
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L280
	ucomisd	%xmm1, %xmm2
	jp	.L56
	jne	.L56
	addsd	.LC5(%rip), %xmm1
.L56:
	comisd	%xmm2, %xmm1
	jbe	.L51
	movsd	%xmm1, 48(%rsp)
	movq	(%rsp), %r13
	movapd	%xmm4, %xmm1
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L284:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L60
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %edi
	movd	%xmm3, %r10d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %esi
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r8d
	testq	%r13, %r13
	jne	.L281
.L61:
	sarl	%esi
	movl	%esi, %eax
	addl	%edi, %eax
	js	.L282
.L65:
	cmpq	%r13, 32(%r15)
	je	.L68
.L71:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rcx
	movq	64(%rcx), %rsi
	cmpq	56(%rcx), %rbp
	jnb	.L253
	movq	(%rsi,%r12), %rsi
	leaq	0(%r13,%r13,2), %rcx
	addq	$1, %r13
	salq	$4, %rcx
	addq	40(%r15), %rcx
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$1, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L67:
	addsd	16(%r15), %xmm2
	movsd	48(%rsp), %xmm4
	comisd	%xmm2, %xmm4
	jbe	.L283
.L73:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rdx
	movq	64(%rdx), %rax
	cmpq	56(%rdx), %rbp
	jnb	.L253
	movq	(%rax,%r12), %rdx
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
	movl	8(%rsp), %esi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%esi, %esi
	jne	.L284
.L60:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L67
.L261:
	pxor	%xmm0, %xmm0
	movsd	184(%rdi), %xmm1
	cvtsi2sdl	40(%rsi), %xmm0
	addsd	152(%rdi), %xmm0
	movapd	%xmm1, %xmm2
	movsd	%xmm0, 40(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	44(%rsi), %xmm0
	addsd	160(%rdi), %xmm0
	movapd	%xmm0, %xmm4
	movsd	.LC7(%rip), %xmm0
	mulsd	192(%rdi), %xmm0
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L285
	ucomisd	%xmm1, %xmm2
	jp	.L82
	jne	.L82
	addsd	.LC5(%rip), %xmm1
.L82:
	comisd	%xmm2, %xmm1
	jbe	.L77
	movsd	%xmm1, 48(%rsp)
	movq	(%rsp), %r12
	movapd	%xmm4, %xmm1
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L289:
	movl	8(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L86
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r8d
	movd	%xmm3, %r9d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %esi
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %edi
	testq	%r12, %r12
	jne	.L286
.L87:
	sarl	%esi
	movl	%esi, %eax
	addl	%r8d, %eax
	js	.L287
.L91:
	cmpq	%r12, 32(%r15)
	je	.L94
.L97:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rcx
	movq	96(%rcx), %rsi
	cmpq	88(%rcx), %r13
	jnb	.L254
	movq	(%rsi,%rbp), %rsi
	leaq	(%r12,%r12,2), %rcx
	addq	$1, %r12
	salq	$4, %rcx
	addq	40(%r15), %rcx
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	movl	$2, 8(%rcx)
	movb	%dil, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	movq	544(%rax), %rcx
.L93:
	addsd	16(%r15), %xmm2
	movsd	48(%rsp), %xmm4
	comisd	%xmm2, %xmm4
	jbe	.L288
.L99:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rdx
	movq	96(%rdx), %rax
	cmpq	88(%rdx), %r13
	jnb	.L254
	movq	(%rax,%rbp), %rdx
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
	jne	.L289
.L86:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jmp	.L93
.L272:
	movsd	.LC5(%rip), %xmm2
	ucomisd	%xmm2, %xmm3
	jp	.L29
	jne	.L29
	movapd	%xmm3, %xmm2
	movsd	.LC4(%rip), %xmm3
	movq	(%rsp), %r13
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm3, 48(%rsp)
	jmp	.L47
.L174:
	movq	.LC5(%rip), %rdi
	movq	%rdi, %xmm2
	jmp	.L122
.L280:
	movsd	.LC5(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L56
	jne	.L56
	movapd	%xmm1, %xmm2
	movsd	.LC4(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 48(%rsp)
	movapd	%xmm4, %xmm1
	jmp	.L73
.L285:
	movsd	.LC5(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L82
	jne	.L82
	movapd	%xmm1, %xmm2
	movsd	.LC4(%rip), %xmm1
	movq	(%rsp), %r12
	movsd	%xmm1, 48(%rsp)
	movapd	%xmm4, %xmm1
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L282:
	movzwl	10(%r15), %ecx
	subl	%esi, %edi
	cmpl	%ecx, %edi
	jle	.L65
	movl	%r10d, %eax
	sarl	%eax
	movl	%eax, %edx
	addl	%r8d, %edx
	jns	.L65
	movl	%r8d, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.L60
	cmpq	%r13, 32(%r15)
	jne	.L71
	.p2align 4,,10
	.p2align 3
.L68:
	movzwl	24(%r15), %eax
	movq	40(%r15), %rdi
	movsd	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	leaq	1(%r13,%rax), %rax
	movsd	%xmm2, (%rsp)
	movq	%rax, 32(%r15)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 40(%r15)
	movsd	32(%rsp), %xmm1
	jne	.L71
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L287:
	movzwl	10(%r15), %edx
	subl	%esi, %r8d
	cmpl	%edx, %r8d
	jle	.L91
	movl	%r9d, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%edi, %esi
	jns	.L91
	subl	%eax, %edi
	cmpl	%edi, %edx
	jl	.L86
	cmpq	%r12, 32(%r15)
	jne	.L97
	.p2align 4,,10
	.p2align 3
.L94:
	movzwl	24(%r15), %eax
	movq	40(%r15), %rdi
	movsd	%xmm1, 32(%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%r12,%rax), %rax
	movaps	%xmm0, (%rsp)
	movq	%rax, 32(%r15)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movdqa	(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	testq	%rax, %rax
	movq	%rax, 40(%r15)
	movsd	32(%rsp), %xmm1
	jne	.L97
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L281:
	movq	40(%r15), %rdx
	leaq	0(%r13,%r13,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %r9
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %r11
	movq	64(%r11), %r11
	movq	%r11, 16(%rsp)
	movq	(%rcx,%rbx), %r11
	cmpq	56(%r11), %rbp
	jnb	.L253
	movq	16(%rsp), %r11
	cmpq	(%r11,%r12), %r9
	jne	.L61
	movq	(%rsp), %r9
	cmpl	%edi, 28(%r9)
	jne	.L61
	cmpl	%r8d, 32(%r9)
	jne	.L61
	cmpl	%esi, 36(%r9)
	jne	.L61
	cmpl	40(%r9), %r10d
	jne	.L61
	movsd	%xmm2, 16(%r9)
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L286:
	movq	40(%r15), %rdx
	leaq	(%r12,%r12,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %r11
	movq	96(%r11), %r10
	cmpq	88(%r11), %r13
	jnb	.L254
	movq	16(%rsp), %r11
	cmpq	(%r10,%rbp), %r11
	jne	.L87
	movq	(%rsp), %r10
	cmpl	%r8d, 28(%r10)
	jne	.L87
	cmpl	%edi, 32(%r10)
	jne	.L87
	cmpl	%esi, 36(%r10)
	jne	.L87
	cmpl	%r9d, 40(%r10)
	jne	.L87
	movsd	%xmm2, 16(%r10)
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L283:
	movq	%r13, (%rsp)
	jmp	.L51
.L288:
	movq	%r12, (%rsp)
	jmp	.L77
.L153:
	movq	$0, 40(%r15)
	jmp	.L193
.L142:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movl	%edx, %edi
	movd	%xmm1, %eax
	sarl	%eax
	addl	%eax, %edi
	js	.L290
.L144:
	movq	(%rsp), %rax
	cmpq	%rax, 32(%r15)
	je	.L145
.L148:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r14
	jnb	.L146
	movq	(%rcx,%rbx), %rsi
	movq	(%rsp), %rbx
	movsd	184(%rsi), %xmm1
	leaq	(%rbx,%rbx,2), %rcx
	addq	$1, %rbx
	salq	$4, %rcx
	addq	40(%r15), %rcx
	movq	%rbx, (%rsp)
	movq	%rsi, (%rcx)
	movl	$4, 8(%rcx)
	movb	$-1, 24(%rcx)
	movsd	%xmm1, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	jmp	.L22
.L21:
	cmpq	$0, 32(%rdi)
	je	.L153
	movq	$0, (%rsp)
.L152:
	movq	(%rsp), %rax
	movq	40(%r15), %rdi
	movq	%rax, 32(%r15)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	je	.L44
	movq	32(%r15), %rax
	jmp	.L150
.L252:
	movq	%r12, %rsi
	jmp	.L251
.L253:
	movq	%rbp, %rsi
	jmp	.L251
.L254:
	movq	%r13, %rsi
	jmp	.L251
.L145:
	movq	%rax, %rdx
	movzwl	24(%r15), %eax
	movq	40(%r15), %rdi
	movaps	%xmm0, 16(%rsp)
	leaq	1(%rdx,%rax), %rax
	movq	%rax, 32(%r15)
	leaq	(%rax,%rax,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movdqa	16(%rsp), %xmm0
	testq	%rax, %rax
	movq	%rax, 40(%r15)
	jne	.L148
.L44:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L290:
	movzwl	10(%r15), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L144
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %eax
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L144
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L144
	jmp	.L249
.L279:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L278:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L277:
	movq	%rdx, %rsi
	jmp	.L251
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
	je	.L293
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
	je	.L293
	testq	%r14, %r14
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	je	.L331
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	leaq	(%rax,%r13), %r11
	salq	$4, %r11
	addq	%r8, %r11
	.p2align 4,,10
	.p2align 3
.L298:
	movdqu	(%r11,%rdx), %xmm1
	movdqu	16(%r11,%rdx), %xmm2
	movdqu	28(%r11,%rdx), %xmm3
	movups	%xmm2, 16(%rbp,%rdx)
	movups	%xmm1, 0(%rbp,%rdx)
	movups	%xmm3, 28(%rbp,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rbx
	jne	.L298
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	testq	%rsi, %rsi
	je	.L297
.L295:
	leaq	(%r15,%r15,2), %r9
	xorl	%edx, %edx
	salq	$4, %r9
	addq	%r8, %r9
	.p2align 4,,10
	.p2align 3
.L300:
	movdqu	48(%r9,%rdx), %xmm4
	movdqu	64(%r9,%rdx), %xmm5
	movdqu	76(%r9,%rdx), %xmm6
	movups	%xmm5, 16(%r12,%rdx)
	movups	%xmm4, (%r12,%rdx)
	movups	%xmm6, 28(%r12,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rdi
	jne	.L300
	testq	%r14, %r14
	je	.L311
	addq	%r13, %rax
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	salq	$4, %rax
	addq	%r8, %rax
	jmp	.L306
	.p2align 4,,10
	.p2align 3
.L333:
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
	jnb	.L308
.L334:
	cmpq	%rsi, %r10
	jnb	.L332
.L306:
	leaq	(%r10,%r10,2), %rdi
	leaq	(%r9,%r9,2), %rdx
	salq	$4, %rdi
	salq	$4, %rdx
	addq	%rbp, %rdx
	addq	%r12, %rdi
	movsd	16(%rdx), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L333
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
	jb	.L334
	.p2align 4,,10
	.p2align 3
.L308:
	cmpq	%rsi, %r10
	jnb	.L296
	leaq	(%r13,%r13), %rax
.L302:
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
.L310:
	movdqu	(%rdx,%rax), %xmm2
	movdqu	16(%rdx,%rax), %xmm3
	movdqu	28(%rdx,%rax), %xmm4
	movups	%xmm3, 16(%r8,%rax)
	movups	%xmm2, (%r8,%rax)
	movups	%xmm4, 28(%r8,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L310
.L296:
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
.L332:
	.cfi_restore_state
	cmpq	%r14, %r9
	jnb	.L308
	leaq	(%r13,%r13), %rax
.L297:
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
.L309:
	movdqu	(%rdi,%rax), %xmm7
	movdqu	16(%rdi,%rax), %xmm0
	addq	$1, %r11
	movdqu	28(%rdi,%rax), %xmm1
	movups	%xmm0, 16(%rdx,%rax)
	movups	%xmm7, (%rdx,%rax)
	movups	%xmm1, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r14, %r11
	jb	.L309
	movq	40(%rsp), %rbx
	xorl	%eax, %eax
	subq	%r9, %rbx
	addq	$1, %r9
	cmpq	%r9, %r14
	cmovb	%rax, %rbx
	leaq	1(%r13,%rbx), %r13
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L331:
	testq	%rsi, %rsi
	je	.L296
	movq	32(%rsp), %rax
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	jmp	.L295
.L311:
	xorl	%r10d, %r10d
	jmp	.L302
.L293:
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
	jbe	.L336
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L336
	.p2align 4,,10
	.p2align 3
.L337:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L339:
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
	jb	.L339
	cmpq	%r14, %rbp
	jb	.L337
.L336:
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
	je	.L347
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
	je	.L347
	testq	%r14, %r14
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	je	.L382
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	leaq	(%rax,%r13), %r11
	salq	$4, %r11
	addq	%r8, %r11
	.p2align 4,,10
	.p2align 3
.L352:
	movdqu	(%r11,%rdx), %xmm0
	movdqu	16(%r11,%rdx), %xmm1
	movdqu	28(%r11,%rdx), %xmm2
	movups	%xmm1, 16(%rbp,%rdx)
	movups	%xmm0, 0(%rbp,%rdx)
	movups	%xmm2, 28(%rbp,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rbx
	jne	.L352
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	testq	%rsi, %rsi
	je	.L351
.L349:
	leaq	(%r15,%r15,2), %r9
	xorl	%edx, %edx
	salq	$4, %r9
	addq	%r8, %r9
	.p2align 4,,10
	.p2align 3
.L354:
	movdqu	48(%r9,%rdx), %xmm3
	movdqu	64(%r9,%rdx), %xmm4
	movdqu	76(%r9,%rdx), %xmm5
	movups	%xmm4, 16(%r12,%rdx)
	movups	%xmm3, (%r12,%rdx)
	movups	%xmm5, 28(%r12,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rdi
	jne	.L354
	testq	%r14, %r14
	je	.L364
	addq	%r13, %rax
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	salq	$4, %rax
	addq	%r8, %rax
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L384:
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
	jnb	.L361
.L385:
	cmpq	%rsi, %r10
	jnb	.L383
.L359:
	leaq	(%r10,%r10,2), %rdi
	leaq	(%r9,%r9,2), %rdx
	salq	$4, %rdi
	salq	$4, %rdx
	addq	%rbp, %rdx
	addq	%r12, %rdi
	movzbl	24(%rdx), %ebx
	cmpb	%bl, 24(%rdi)
	jb	.L384
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
	jb	.L385
	.p2align 4,,10
	.p2align 3
.L361:
	cmpq	%rsi, %r10
	jnb	.L350
	leaq	(%r13,%r13), %rax
.L356:
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
.L363:
	movdqu	(%rdx,%rax), %xmm1
	movdqu	16(%rdx,%rax), %xmm2
	movdqu	28(%rdx,%rax), %xmm3
	movups	%xmm2, 16(%r8,%rax)
	movups	%xmm1, (%r8,%rax)
	movups	%xmm3, 28(%r8,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L363
.L350:
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
.L383:
	.cfi_restore_state
	cmpq	%r14, %r9
	jnb	.L361
	leaq	(%r13,%r13), %rax
.L351:
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
.L362:
	movdqu	(%rdi,%rax), %xmm6
	movdqu	16(%rdi,%rax), %xmm7
	addq	$1, %r11
	movdqu	28(%rdi,%rax), %xmm0
	movups	%xmm7, 16(%rdx,%rax)
	movups	%xmm6, (%rdx,%rax)
	movups	%xmm0, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r14, %r11
	jb	.L362
	movq	40(%rsp), %rbx
	xorl	%eax, %eax
	subq	%r9, %rbx
	addq	$1, %r9
	cmpq	%r9, %r14
	cmovb	%rax, %rbx
	leaq	1(%r13,%rbx), %r13
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L382:
	testq	%rsi, %rsi
	je	.L350
	movq	32(%rsp), %rax
	movq	40(%rax), %r8
	leaq	(%r13,%r13), %rax
	jmp	.L349
.L364:
	xorl	%r10d, %r10d
	jmp	.L356
.L347:
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
	jbe	.L387
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L387
	.p2align 4,,10
	.p2align 3
.L388:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L390:
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
	jb	.L390
	cmpq	%r14, %rbp
	jb	.L388
.L387:
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
	jbe	.L416
	.p2align 4,,10
	.p2align 3
.L397:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L399:
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
	jb	.L399
	cmpq	%r15, %r13
	jb	.L397
	movq	32(%r12), %rsi
	cmpq	$1, %rsi
	jbe	.L416
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L407
	.p2align 4,,10
	.p2align 3
.L401:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rsi, %r13
	jnb	.L426
.L413:
	movq	%r13, %rbp
.L407:
	movq	8(%rsp), %rax
	movq	40(%r12), %rcx
	leaq	0(%rbp,%rbp,2), %rdx
	salq	$4, %rdx
	leaq	(%rax,%rax,2), %rax
	movsd	16(%rcx,%rdx), %xmm0
	salq	$4, %rax
	ucomisd	16(%rcx,%rax), %xmm0
	jp	.L415
	je	.L401
.L415:
	cmpq	$1, %rbp
	je	.L427
	cmpq	%r15, 8(%rsp)
	jnb	.L406
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L405:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L404:
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
	jb	.L404
	cmpq	%rbp, %r13
	jb	.L405
	movq	32(%r12), %rsi
.L406:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rsi, %r13
	jb	.L413
.L426:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L416
	.p2align 4,,10
	.p2align 3
.L408:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L410:
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
	jb	.L410
	cmpq	%r13, %rbx
	jb	.L408
.L416:
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
.L427:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L401
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
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %edx
	movzbl	20(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	23(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L432
	movq	(%rbx), %rax
	leaq	44(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L433
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L432:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L433:
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
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %r8d
	negl	%r9d
	movzbl	20(%rax), %edi
	movq	64(%rax), %rsi
	andl	$2, %r9d
	movq	576(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	568(%rdx), %rsi
	jnb	.L443
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L444
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	64(%rdx), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L443
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L445
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	64(%rdx), %rsi
	xorpd	.LC17(%rip), %xmm0
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L443
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L446
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L443:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L446:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L445:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L444:
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
	jnb	.L456
	movq	(%rax,%rsi,8), %rax
	movl	%r9d, %ecx
	movl	%edi, %esi
	movl	%r8d, %edx
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L457
	movq	32(%rsp), %rax
	movq	0(%rbp), %rdx
	movq	72(%rax), %rcx
	movzbl	23(%rax), %edi
	movq	96(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L456
	movq	(%rax,%rsi,8), %rax
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L458
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
	jnb	.L456
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L459
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L456:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L459:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L458:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L457:
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
	.string	"slay::engine.render.RenderText(): SDL_SetTextureColorMod failed"
	.align 8
.LC23:
	.string	"slay::engine.render.RenderText(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC24:
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
	movq	104(%rax), %rdi
	andl	$2, %r9d
	orl	%r9d, %ebx
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L465
	movq	32(%rsp), %rax
	movzbl	21(%rax), %esi
	movq	104(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L466
	movq	32(%rsp), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	movzbl	%bl, %r9d
	movsd	24(%rax), %xmm0
	movq	104(%rax), %rsi
	movq	0(%rbp), %rax
	xorpd	.LC17(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L467
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L465:
	.cfi_restore_state
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L467:
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L466:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2258:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC26:
	.string	"slay::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.align 8
.LC27:
	.string	"slay::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed"
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
	jne	.L512
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L470
	movq	32(%rbp), %rcx
	testq	%rcx, %rcx
	je	.L490
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	leaq	16(%rax), %rdx
	jmp	.L473
	.p2align 4,,10
	.p2align 3
.L514:
	addq	$1, %rbx
	addq	$48, %rdx
	cmpq	%rcx, %rbx
	je	.L513
.L473:
	movsd	(%rdx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L514
	movq	%rbx, %r12
	cmpq	%rcx, %rbx
	jnb	.L475
.L474:
	leaq	.L478(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L489:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	cmpl	$4, 8(%rax)
	ja	.L476
	movl	8(%rax), %edx
	movslq	0(%r13,%rdx,4), %rdx
	addq	%r13, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L478:
	.long	.L482-.L478
	.long	.L481-.L478
	.long	.L480-.L478
	.long	.L479-.L478
	.long	.L477-.L478
	.text
	.p2align 4,,10
	.p2align 3
.L490:
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderPresent@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L510
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
.L479:
	.cfi_restore_state
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	movq	32(%rbp), %rcx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
.L476:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L488
.L515:
	movq	40(%rbp), %rax
	jmp	.L489
	.p2align 4,,10
	.p2align 3
.L480:
	movdqu	(%rax), %xmm2
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	addq	$1, %rbx
	movups	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movups	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movups	%xmm4, 32(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	movq	32(%rbp), %rcx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	cmpq	%rcx, %rbx
	jb	.L515
	.p2align 4,,10
	.p2align 3
.L488:
	testq	%r12, %r12
	je	.L490
	movq	40(%rbp), %rax
.L475:
	xorl	%ebx, %ebx
	leaq	.L493(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L502:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	cmpl	$4, 8(%rax)
	ja	.L491
	movl	8(%rax), %edx
	movslq	0(%r13,%rdx,4), %rdx
	addq	%r13, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L493:
	.long	.L497-.L493
	.long	.L496-.L493
	.long	.L495-.L493
	.long	.L494-.L493
	.long	.L492-.L493
	.text
	.p2align 4,,10
	.p2align 3
.L481:
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
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L482:
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
	jne	.L498
	movq	0(%rbp), %rax
	leaq	28(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L499
.L486:
	movq	32(%rbp), %rcx
	jmp	.L476
	.p2align 4,,10
	.p2align 3
.L477:
	movdqu	(%rax), %xmm2
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movaps	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movq	0(%rbp), %rax
	movaps	%xmm4, 32(%rsp)
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L500
	movq	0(%rbp), %rax
	leaq	28(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L486
.L501:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L510
	call	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	.p2align 4,,10
	.p2align 3
.L494:
	movdqu	(%rax), %xmm1
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm1, (%rsp)
	movdqu	16(%rax), %xmm2
	movups	%xmm2, 16(%rsp)
	movdqu	32(%rax), %xmm3
	movups	%xmm3, 32(%rsp)
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
.L491:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L490
	movq	40(%rbp), %rax
	jmp	.L502
	.p2align 4,,10
	.p2align 3
.L495:
	movdqu	(%rax), %xmm5
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm5, (%rsp)
	movdqu	16(%rax), %xmm6
	movups	%xmm6, 16(%rsp)
	movdqu	32(%rax), %xmm7
	movups	%xmm7, 32(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	jmp	.L491
	.p2align 4,,10
	.p2align 3
.L496:
	movdqu	(%rax), %xmm2
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm2, (%rsp)
	movdqu	16(%rax), %xmm3
	movups	%xmm3, 16(%rsp)
	movdqu	32(%rax), %xmm4
	movups	%xmm4, 32(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	jmp	.L491
	.p2align 4,,10
	.p2align 3
.L497:
	movdqu	(%rax), %xmm5
	movq	0(%rbp), %rdi
	movaps	%xmm5, 48(%rsp)
	movdqu	16(%rax), %xmm6
	movaps	%xmm6, 64(%rsp)
	movdqu	32(%rax), %xmm7
	movq	48(%rsp), %rax
	movaps	%xmm7, 80(%rsp)
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %edx
	movzbl	20(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	23(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L498
	movq	0(%rbp), %rax
	leaq	76(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L491
.L499:
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L492:
	movdqu	(%rax), %xmm4
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movaps	%xmm4, 48(%rsp)
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 64(%rsp)
	movdqu	32(%rax), %xmm6
	movq	0(%rbp), %rax
	movaps	%xmm6, 80(%rsp)
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L500
	movq	0(%rbp), %rax
	leaq	76(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L491
	jmp	.L501
	.p2align 4,,10
	.p2align 3
.L513:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L474
.L500:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L498:
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L512:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L510:
	call	__stack_chk_fail@PLT
.L470:
	leaq	.LC26(%rip), %rdi
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
	.globl	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE
	.type	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE, @function
_ZN4slay6engine6render12RenderHitboxENS1_5tokenE:
.LFB2259:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L522
	movq	(%rbx), %rax
	leaq	44(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L523
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L522:
	.cfi_restore_state
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L523:
	call	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	.cfi_endproc
.LFE2259:
	.size	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE, .-_ZN4slay6engine6render12RenderHitboxENS1_5tokenE
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
