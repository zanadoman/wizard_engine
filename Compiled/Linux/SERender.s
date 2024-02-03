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
.LFB2443:
	.cfi_startproc
	leaq	.LC0(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2443:
	.size	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0, .-_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"neo::array.Insert(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC2:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0:
.LFB2445:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %rax
	movq	%rsi, %rbx
	cmpq	%rsi, %rax
	jb	.L14
	testq	%rdx, %rdx
	jne	.L15
.L4:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	addq	%rdx, %rax
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	leaq	(%rax,%rax,2), %rsi
	movq	8(%rdi), %rdi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.L16
	movq	0(%rbp), %rdx
	leaq	(%rbx,%r12), %rsi
	leaq	-1(%rdx), %rcx
	cmpq	%rsi, %rcx
	jb	.L4
	subq	%r12, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	(%r12,%r12,2), %rdx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L8:
	movdqu	-48(%rax), %xmm0
	subq	$1, %rcx
	subq	$48, %rax
	movups	%xmm0, (%rax,%rdx)
	movdqu	16(%rax), %xmm1
	movups	%xmm1, 16(%rax,%rdx)
	movdqu	28(%rax), %xmm2
	movups	%xmm2, 28(%rax,%rdx)
	cmpq	%rsi, %rcx
	jnb	.L8
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L16:
	leaq	.LC2(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2445:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0, .-_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy.isra.0, @function
_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy.isra.0:
.LFB2446:
	.cfi_startproc
	cmpq	%rdi, %rdx
	jnb	.L22
	leaq	(%rdx,%rdx,2), %rax
	salq	$4, %rax
	addq	%rsi, %rax
	ret
.L22:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC3(%rip), %rdi
	movq	%rdx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2446:
	.size	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy.isra.0, .-_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy.isra.0
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6renderC2EPS0_
	.type	_ZN4slay6engine6renderC2EPS0_, @function
_ZN4slay6engine6renderC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	.LC4(%rip), %rax
	movq	%rsi, (%rdi)
	movq	$0, 32(%rdi)
	movq	%rax, 16(%rdi)
	movl	$128, %eax
	movq	$0, 40(%rdi)
	movl	$0, 8(%rdi)
	movw	%ax, 24(%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN4slay6engine6renderC2EPS0_, .-_ZN4slay6engine6renderC2EPS0_
	.globl	_ZN4slay6engine6renderC1EPS0_
	.set	_ZN4slay6engine6renderC1EPS0_,_ZN4slay6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render5tokenC2Ev
	.type	_ZN4slay6engine6render5tokenC2Ev, @function
_ZN4slay6engine6render5tokenC2Ev:
.LFB2235:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE2235:
	.size	_ZN4slay6engine6render5tokenC2Ev, .-_ZN4slay6engine6render5tokenC2Ev
	.globl	_ZN4slay6engine6render5tokenC1Ev
	.set	_ZN4slay6engine6render5tokenC1Ev,_ZN4slay6engine6render5tokenC2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB2238:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movl	%edx, 8(%rdi)
	movb	%cl, 24(%rdi)
	movq	%r8, 28(%rdi)
	movq	%r9, 36(%rdi)
	movsd	%xmm0, 16(%rdi)
	ret
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15GetSamplingStepEv
	.type	_ZN4slay6engine6render15GetSamplingStepEv, @function
_ZN4slay6engine6render15GetSamplingStepEv:
.LFB2240:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2240:
	.size	_ZN4slay6engine6render15GetSamplingStepEv, .-_ZN4slay6engine6render15GetSamplingStepEv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"slay::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\nParams: SamplingStep: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetSamplingStepEd
	.type	_ZN4slay6engine6render15SetSamplingStepEd, @function
_ZN4slay6engine6render15SetSamplingStepEd:
.LFB2241:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L35
	movsd	%xmm0, 16(%rdi)
	ret
.L35:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine6render15SetSamplingStepEd, .-_ZN4slay6engine6render15SetSamplingStepEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15GetBufferSizeKBEv
	.type	_ZN4slay6engine6render15GetBufferSizeKBEv, @function
_ZN4slay6engine6render15GetBufferSizeKBEv:
.LFB2242:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	leaq	(%rax,%rax,2), %rax
	shrq	$6, %rax
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6render15GetBufferSizeKBEv, .-_ZN4slay6engine6render15GetBufferSizeKBEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetBufferSizeKBEt
	.type	_ZN4slay6engine6render15SetBufferSizeKBEt, @function
_ZN4slay6engine6render15SetBufferSizeKBEt:
.LFB2243:
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
.LFE2243:
	.size	_ZN4slay6engine6render15SetBufferSizeKBEt, .-_ZN4slay6engine6render15SetBufferSizeKBEt
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed"
	.align 8
.LC11:
	.string	"slay::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed"
	.align 8
.LC12:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14SelectionStageEv
	.type	_ZN4slay6engine6render14SelectionStageEv, @function
_ZN4slay6engine6render14SelectionStageEv:
.LFB2245:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
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
	jbe	.L39
	leaq	32(%rdi), %rsi
	movl	$1, %ebp
	xorl	%r15d, %r15d
	movq	%rsi, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L169:
	movq	544(%rax), %rcx
	leaq	0(,%rbp,8), %r13
	cmpq	$0, (%rcx,%rbp,8)
	je	.L40
	cmpq	%rdx, %rbp
	jnb	.L259
	movl	$1, %ebx
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L67:
	movq	32(%rdi), %rsi
	leaq	0(,%rbx,8), %r12
	movq	(%rsi,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L42
	cmpw	$0, 16(%rsi)
	je	.L42
	cmpw	$0, 18(%rsi)
	je	.L42
	cmpb	$0, 23(%rsi)
	je	.L42
	cmpb	$0, 26(%rsi)
	jne	.L264
	.p2align 4,,10
	.p2align 3
.L42:
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jnb	.L259
.L41:
	movq	(%rcx,%r13), %rdi
	cmpq	24(%rdi), %rbx
	jb	.L67
	cmpq	%rdx, %rbp
	jnb	.L259
	movl	$1, %ebx
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L94:
	movq	64(%rdi), %rsi
	leaq	0(,%rbx,8), %r12
	movq	(%rsi,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L69
	cmpw	$0, 16(%rsi)
	je	.L69
	cmpw	$0, 18(%rsi)
	je	.L69
	cmpb	$0, 23(%rsi)
	je	.L69
	cmpb	$0, 37(%rsi)
	je	.L69
	cmpq	$0, 72(%rsi)
	jne	.L265
	.p2align 4,,10
	.p2align 3
.L69:
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jnb	.L259
.L68:
	movq	(%rcx,%r13), %rdi
	cmpq	56(%rdi), %rbx
	jb	.L94
	cmpq	%rdx, %rbp
	jnb	.L259
	movl	$1, %ebx
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L121:
	movq	96(%rdi), %rsi
	leaq	0(,%rbx,8), %r12
	movq	(%rsi,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L96
	cmpw	$0, 16(%rsi)
	je	.L96
	cmpw	$0, 18(%rsi)
	je	.L96
	cmpb	$0, 23(%rsi)
	je	.L96
	cmpb	$0, 37(%rsi)
	je	.L96
	movq	80(%rsi), %r8
	movq	104(%rsi), %rsi
	cmpq	$0, (%rsi,%r8,8)
	jne	.L266
	.p2align 4,,10
	.p2align 3
.L96:
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jnb	.L259
.L95:
	movq	(%rcx,%r13), %rdi
	cmpq	88(%rdi), %rbx
	jb	.L121
	cmpq	%rdx, %rbp
	jnb	.L259
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L122:
	movq	(%rcx,%r13), %rcx
	cmpq	120(%rcx), %rbx
	jnb	.L267
.L162:
	movq	128(%rcx), %rcx
	leaq	0(,%rbx,8), %r12
	movq	(%rcx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L268
	addq	$80, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jbe	.L124
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %rbx
	jnb	.L258
	movq	(%rdi,%r12), %rdi
	cmpw	$0, 16(%rdi)
	jne	.L269
.L128:
	movq	(%rcx,%r13), %rcx
	addq	$1, %rbx
	cmpq	120(%rcx), %rbx
	jb	.L162
	.p2align 4,,10
	.p2align 3
.L267:
	cmpb	$0, 136(%rcx)
	jne	.L270
.L40:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L169
	movq	32(%r14), %rbx
	cmpq	%rbx, %r15
	jb	.L271
.L211:
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
.L268:
	.cfi_restore_state
	movq	544(%rax), %rcx
.L124:
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jb	.L122
.L259:
	movq	%rbp, %rsi
.L257:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L269:
	cmpb	$0, 21(%rdi)
	je	.L128
	cmpb	$0, 37(%rdi)
	je	.L128
	cmpq	$0, 96(%rdi)
	je	.L128
	cmpq	$0, 104(%rdi)
	je	.L272
.L129:
	movsd	.LC9(%rip), %xmm0
	mulsd	192(%rsi), %xmm0
	pxor	%xmm7, %xmm7
	movsd	184(%rsi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	comisd	%xmm2, %xmm7
	ja	.L273
	ucomisd	%xmm1, %xmm2
	jp	.L142
	jne	.L142
	addsd	.LC8(%rip), %xmm1
.L142:
	comisd	%xmm2, %xmm1
	jbe	.L124
	movsd	%xmm1, 40(%rsp)
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L277:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L254
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r8d
	movd	%xmm3, %esi
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %edi
	testq	%r15, %r15
	jne	.L274
.L149:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r8d, %eax
	js	.L275
.L154:
	cmpq	%r15, 32(%r14)
	je	.L276
.L156:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rcx
	movq	128(%rcx), %rsi
	cmpq	120(%rcx), %rbx
	jnb	.L258
	movq	(%rsi,%r12), %rdi
	movq	40(%r14), %rcx
	leaq	1(%r15), %r8
	movzbl	36(%rdi), %r9d
	cmpq	32(%r14), %r15
	jnb	.L260
	leaq	(%r15,%r15,2), %rsi
	movq	%r8, %r15
	salq	$4, %rsi
	addq	%rsi, %rcx
	movq	%rdi, (%rcx)
	movl	$3, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
.L148:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm4
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm4
	jbe	.L124
.L160:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rdx
	movq	128(%rdx), %rax
	cmpq	120(%rdx), %rbx
	jnb	.L258
	movq	(%rax,%r12), %rcx
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
	jne	.L277
.L254:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L275:
	movzwl	10(%r14), %eax
	subl	%ecx, %r8d
	cmpl	%eax, %r8d
	jle	.L154
	sarl	%esi
	movl	%esi, %edx
	addl	%edi, %edx
	jns	.L154
	subl	%esi, %edi
	cmpl	%edi, %eax
	jl	.L254
	cmpq	%r15, 32(%r14)
	jne	.L156
	.p2align 4,,10
	.p2align 3
.L276:
	movzwl	24(%r14), %eax
	movq	56(%rsp), %rdi
	movq	%r15, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L274:
	movq	40(%r14), %rdx
	leaq	-1(%r15), %rax
	cmpq	32(%r14), %rax
	jnb	.L278
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	leaq	(%rdx,%rax), %r10
	movq	(%r10), %rax
	movq	%rax, (%rsp)
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %r9
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%r9,%r13), %r9
	movq	128(%r9), %r11
	cmpq	120(%r9), %rbx
	jnb	.L258
	movq	(%rsp), %r9
	cmpq	(%r11,%r12), %r9
	jne	.L149
	cmpl	%r8d, 28(%r10)
	jne	.L149
	cmpl	%edi, 32(%r10)
	jne	.L149
	cmpl	%ecx, 36(%r10)
	jne	.L149
	cmpl	40(%r10), %esi
	jne	.L149
	movsd	%xmm2, 16(%r10)
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L270:
	movzwl	200(%rcx), %esi
	testw	%si, %si
	je	.L40
	movzwl	202(%rcx), %edi
	testw	%di, %di
	je	.L40
	movsd	152(%rcx), %xmm0
	movsd	184(%rcx), %xmm2
	movzwl	%di, %edx
	leaq	80(%rax), %rdi
	movsd	160(%rcx), %xmm1
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %eax
	movdqa	(%rsp), %xmm0
	testl	%eax, %eax
	je	.L255
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L163
.L255:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L273:
	ucomisd	.LC8(%rip), %xmm1
	jp	.L197
	je	.L183
.L197:
	movq	.LC8(%rip), %rsi
	movq	%rsi, %xmm2
	jmp	.L142
.L264:
	movsd	.LC9(%rip), %xmm0
	mulsd	192(%rdi), %xmm0
	movsd	184(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L279
	ucomisd	%xmm1, %xmm2
	jp	.L47
	jne	.L47
	addsd	.LC8(%rip), %xmm1
.L47:
	comisd	%xmm2, %xmm1
	jbe	.L42
	movsd	%xmm1, 40(%rsp)
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L51:
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%r15, %r15
	jne	.L280
.L54:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L281
.L59:
	cmpq	%r15, 32(%r14)
	je	.L282
.L61:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rcx
	movq	32(%rcx), %rsi
	cmpq	24(%rcx), %rbx
	jnb	.L258
	movq	(%rsi,%r12), %rdi
	movq	40(%r14), %rcx
	leaq	1(%r15), %r8
	movzbl	25(%rdi), %r9d
	cmpq	32(%r14), %r15
	jnb	.L260
	leaq	(%r15,%r15,2), %rsi
	movq	%r8, %r15
	salq	$4, %rsi
	addq	%rsi, %rcx
	movq	%rdi, (%rcx)
	movl	$0, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
.L53:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm5
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm5
	jbe	.L42
.L65:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %rbx
	jnb	.L258
	movq	(%rdx,%r12), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	32(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	40(%rax), %xmm1
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L251
	movl	8(%rsp), %edi
	testl	%edi, %edi
	jne	.L51
.L251:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L281:
	movzwl	10(%r14), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L59
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L59
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jl	.L251
	cmpq	%r15, 32(%r14)
	jne	.L61
.L282:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r15, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L61
.L280:
	movq	40(%r14), %rdi
	movq	32(%r14), %r9
	leaq	-1(%r15), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L261
	movq	%rdi, %r10
	leaq	(%r11,%r11,2), %rdi
	movq	(%r14), %r8
	salq	$4, %rdi
	addq	%r10, %rdi
	movq	(%rdi), %r10
	movq	%r10, 16(%rsp)
	movq	544(%r8), %r10
	cmpq	536(%r8), %rbp
	jnb	.L259
	movq	(%r10,%r13), %r8
	movq	32(%r8), %r10
	cmpq	24(%r8), %rbx
	jnb	.L258
	movq	16(%rsp), %r8
	cmpq	(%r10,%r12), %r8
	jne	.L54
	cmpl	%esi, 28(%rdi)
	jne	.L54
	cmpl	%ecx, 32(%rdi)
	jne	.L54
	cmpl	%eax, 36(%rdi)
	jne	.L54
	cmpl	%edx, 40(%rdi)
	jne	.L54
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movsd	%xmm2, 16(%rax)
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L272:
	movl	52(%rsp), %eax
	addq	$80, %rdi
	movb	$-1, %al
	movl	%eax, 52(%rsp)
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	(%r14), %rax
	movq	544(%rax), %rdx
	cmpq	536(%rax), %rbp
	jnb	.L259
	movq	(%rdx,%r13), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rbx
	jnb	.L258
	movq	(%rcx,%r12), %rdx
	movq	608(%rax), %rcx
	movq	96(%rdx), %rdx
	cmpq	600(%rax), %rdx
	jnb	.L283
	orl	$-256, 52(%rsp)
	movq	(%rcx,%rdx,8), %rdi
	movl	52(%rsp), %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L284
	movq	(%r14), %rax
	movq	%rsi, (%rsp)
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	(%r14), %rdx
	movq	(%rsp), %rsi
	cmpq	536(%rdx), %rbp
	movq	544(%rdx), %rcx
	jnb	.L259
	movq	(%rcx,%r13), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rbx
	jnb	.L258
	movq	(%rcx,%r12), %rcx
	movq	%rax, 104(%rcx)
	testq	%rax, %rax
	je	.L285
	movzwl	16(%rcx), %eax
	imull	16(%rsi), %eax
	movq	%rsi, %rdi
	cltd
	idivl	20(%rsi)
	movw	%ax, 56(%rcx)
	call	SDL_FreeSurface@PLT
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rsi
	jmp	.L129
.L183:
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 40(%rsp)
	jmp	.L160
.L265:
	movsd	.LC9(%rip), %xmm0
	mulsd	192(%rdi), %xmm0
	movsd	184(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L286
	ucomisd	%xmm1, %xmm2
	jp	.L74
	jne	.L74
	addsd	.LC8(%rip), %xmm1
.L74:
	comisd	%xmm2, %xmm1
	jbe	.L69
	movsd	%xmm1, 40(%rsp)
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L290:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L252
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%r15, %r15
	jne	.L287
.L81:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L288
.L86:
	cmpq	%r15, 32(%r14)
	je	.L289
.L88:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rcx
	movq	64(%rcx), %rsi
	cmpq	56(%rcx), %rbx
	jnb	.L258
	movq	(%rsi,%r12), %rdi
	movq	40(%r14), %rcx
	leaq	1(%r15), %r8
	movzbl	36(%rdi), %r9d
	cmpq	32(%r14), %r15
	jnb	.L260
	leaq	(%r15,%r15,2), %rsi
	movq	%r8, %r15
	salq	$4, %rsi
	addq	%rsi, %rcx
	movq	%rdi, (%rcx)
	movl	$1, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
.L80:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm6
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm6
	jbe	.L69
.L92:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %rbx
	jnb	.L258
	movq	(%rdx,%r12), %rax
	movsd	%xmm2, 16(%rsp)
	movzwl	16(%rax), %esi
	movsd	40(%rax), %xmm0
	movzwl	18(%rax), %edx
	movsd	48(%rax), %xmm1
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %esi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%esi, %esi
	jne	.L290
.L252:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	jmp	.L80
.L288:
	movzwl	10(%r14), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L86
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L86
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L86
	jmp	.L252
.L287:
	movq	40(%r14), %rdi
	movq	32(%r14), %r9
	leaq	-1(%r15), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L261
	movq	%rdi, %r10
	leaq	(%r11,%r11,2), %rdi
	movq	(%r14), %r8
	salq	$4, %rdi
	addq	%r10, %rdi
	movq	(%rdi), %r10
	movq	%r10, 16(%rsp)
	movq	544(%r8), %r10
	cmpq	536(%r8), %rbp
	jnb	.L259
	movq	(%r10,%r13), %r8
	movq	64(%r8), %r10
	cmpq	56(%r8), %rbx
	jnb	.L258
	movq	16(%rsp), %r8
	cmpq	(%r10,%r12), %r8
	jne	.L81
	cmpl	%esi, 28(%rdi)
	jne	.L81
	cmpl	%ecx, 32(%rdi)
	jne	.L81
	cmpl	%eax, 36(%rdi)
	jne	.L81
	cmpl	%edx, 40(%rdi)
	jne	.L81
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movsd	%xmm2, 16(%rax)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L266:
	movsd	.LC9(%rip), %xmm0
	mulsd	192(%rdi), %xmm0
	movsd	184(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L291
	ucomisd	%xmm2, %xmm1
	jp	.L101
	jne	.L101
	addsd	.LC8(%rip), %xmm1
.L101:
	comisd	%xmm2, %xmm1
	jbe	.L96
	movsd	%xmm1, 40(%rsp)
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L105:
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%r15, %r15
	jne	.L292
.L108:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L293
.L113:
	cmpq	%r15, 32(%r14)
	je	.L294
.L115:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rcx
	movq	96(%rcx), %rsi
	cmpq	88(%rcx), %rbx
	jnb	.L258
	movq	(%rsi,%r12), %rdi
	movq	40(%r14), %rcx
	leaq	1(%r15), %r9
	movzbl	36(%rdi), %r10d
	cmpq	32(%r14), %r15
	jnb	.L260
	leaq	(%r15,%r15,2), %rsi
	movq	%r9, %r15
	salq	$4, %rsi
	addq	%rsi, %rcx
	movq	%rdi, (%rcx)
	movl	$2, 8(%rcx)
	movb	%r10b, 24(%rcx)
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
.L107:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm7
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm7
	jbe	.L96
.L119:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %rbx
	jnb	.L258
	movq	(%rdx,%r12), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	40(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	48(%rax), %xmm1
	call	_ZN4slay6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L253
	movl	8(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L105
.L253:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	jmp	.L107
.L293:
	movzwl	10(%r14), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L113
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L113
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L113
	jmp	.L253
.L292:
	movq	32(%r14), %rdi
	leaq	-1(%r15), %r11
	movq	40(%r14), %r9
	movq	%rdi, 16(%rsp)
	cmpq	%rdi, %r11
	jnb	.L261
	leaq	(%r11,%r11,2), %rdi
	salq	$4, %rdi
	leaq	(%r9,%rdi), %r8
	movq	(%r8), %rdi
	movq	%rdi, (%rsp)
	movq	(%r14), %rdi
	movq	544(%rdi), %r10
	cmpq	536(%rdi), %rbp
	jnb	.L259
	movq	(%r10,%r13), %rdi
	movq	96(%rdi), %r10
	cmpq	88(%rdi), %rbx
	jnb	.L258
	movq	(%rsp), %rdi
	cmpq	(%r10,%r12), %rdi
	jne	.L108
	cmpl	%esi, 28(%r8)
	jne	.L108
	cmpl	%ecx, 32(%r8)
	jne	.L108
	cmpl	%eax, 36(%r8)
	jne	.L108
	cmpl	%edx, 40(%r8)
	jne	.L108
	movq	16(%rsp), %rdi
	movq	%r11, %rdx
	movq	%r9, %rsi
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movsd	%xmm2, 16(%rax)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L279:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L47
	jne	.L47
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 40(%rsp)
	jmp	.L65
.L289:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r15, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L88
.L294:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r15, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L115
.L271:
	movq	%r15, 32(%r14)
	movq	40(%r14), %rdi
	testq	%r15, %r15
	je	.L172
	leaq	(%r15,%r15,2), %rsi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 40(%r14)
	testq	%rax, %rax
	jne	.L211
	movq	%rbx, %rdx
	leaq	.LC12(%rip), %rdi
	movq	%r15, %rsi
	subq	%r15, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L286:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L74
	jne	.L74
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 40(%rsp)
	jmp	.L92
.L291:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L101
	jne	.L101
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 40(%rsp)
	jmp	.L119
.L258:
	movq	%rbx, %rsi
	jmp	.L257
.L163:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%edx, %esi
	js	.L295
.L165:
	cmpq	%r15, 32(%r14)
	je	.L296
.L166:
	movq	(%r14), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L259
	movq	(%rcx,%r13), %r8
	leaq	1(%r15), %rdi
	movq	40(%r14), %rcx
	cmpq	32(%r14), %r15
	jnb	.L260
	leaq	(%r15,%r15,2), %rsi
	movq	%rdi, %r15
	salq	$4, %rsi
	addq	%rsi, %rcx
	movq	%r8, (%rcx)
	movl	$4, 8(%rcx)
	movq	$0x000000000, 16(%rcx)
	movb	$-1, 24(%rcx)
	movups	%xmm0, 28(%rcx)
	jmp	.L40
.L39:
	cmpq	$0, 32(%rdi)
	je	.L211
	movq	$0, 32(%rdi)
	movq	40(%rdi), %rdi
.L172:
	call	free@PLT
	movq	$0, 40(%r14)
	jmp	.L211
.L296:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r15, %rsi
	movaps	%xmm0, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIN4slay6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	(%rsp), %xmm0
	jmp	.L166
.L295:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L165
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %eax
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %edx
	sarl	%edx
	movl	%edx, %esi
	addl	%eax, %esi
	jns	.L165
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L165
	jmp	.L255
.L260:
	movq	%r15, %rsi
	jmp	.L257
.L283:
	movq	%rdx, %rsi
	jmp	.L257
.L261:
	movq	%r11, %rsi
	jmp	.L257
.L278:
	movq	%rax, %rsi
	jmp	.L257
.L285:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L284:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6render14SelectionStageEv, .-_ZN4slay6engine6render14SelectionStageEv
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"slay::engine.render.OrderByLayerMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.type	_ZN4slay6engine6render17OrderByLayerMergeEyyy, @function
_ZN4slay6engine6render17OrderByLayerMergeEyyy:
.LFB2248:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	subq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	addq	$1, %r15
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	leaq	(%r15,%r15,2), %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	salq	$4, %rdi
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %r8
	movq	8(%rsp), %r9
	testq	%rax, %rax
	je	.L299
	movq	%r9, %r13
	movq	%r9, 8(%rsp)
	movq	%rax, %r12
	subq	%r8, %r13
	movq	%r8, (%rsp)
	leaq	0(%r13,%r13,2), %rdi
	salq	$4, %rdi
	call	malloc@PLT
	movq	(%rsp), %r8
	movq	8(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L299
	testq	%r15, %r15
	je	.L347
	leaq	(%rbx,%rbx), %rax
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rdi
	movq	%rbx, %rsi
	leaq	(%rax,%rbx), %r10
	xorl	%ecx, %ecx
	salq	$4, %r10
	addq	%rdx, %r10
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L323:
	movq	%r11, %rsi
.L305:
	cmpq	%rdi, %rsi
	jnb	.L345
	movdqu	(%r10,%rcx), %xmm1
	movdqu	16(%r10,%rcx), %xmm2
	leaq	1(%rsi), %r11
	movdqu	28(%r10,%rcx), %xmm3
	movups	%xmm2, 16(%r12,%rcx)
	movups	%xmm1, (%r12,%rcx)
	movups	%xmm3, 28(%r12,%rcx)
	addq	$48, %rcx
	cmpq	%rsi, %r8
	jne	.L323
	testq	%r13, %r13
	je	.L348
.L301:
	leaq	1(%r8), %rcx
	leaq	(%r8,%r8,2), %r8
	movq	%rdx, %rsi
	xorl	%eax, %eax
	salq	$4, %r8
	addq	%rdx, %r8
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L324:
	movq	%r10, %rcx
.L308:
	cmpq	%rdi, %rcx
	jnb	.L349
	movdqu	48(%r8,%rax), %xmm4
	movdqu	64(%r8,%rax), %xmm5
	leaq	1(%rcx), %r10
	movdqu	76(%r8,%rax), %xmm6
	movups	%xmm5, 16(%r14,%rax)
	movups	%xmm4, (%r14,%rax)
	movups	%xmm6, 28(%r14,%rax)
	addq	$48, %rax
	cmpq	%rcx, %r9
	jne	.L324
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L310
	xorl	%r8d, %r8d
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L350:
	cmpq	%rdi, %rbx
	jnb	.L346
	leaq	(%rbx,%rbx,2), %rax
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	addq	$1, %rcx
	movdqu	28(%rdx), %xmm3
	salq	$4, %rax
	addq	$1, %rbx
	addq	%rsi, %rax
	movups	%xmm2, 16(%rax)
	movups	%xmm1, (%rax)
	movups	%xmm3, 28(%rax)
	cmpq	%r15, %r8
	jnb	.L318
.L351:
	cmpq	%r13, %rcx
	jnb	.L316
	movq	40(%rbp), %rsi
.L317:
	leaq	(%rcx,%rcx,2), %rdx
	leaq	(%r8,%r8,2), %rax
	salq	$4, %rdx
	salq	$4, %rax
	addq	%r12, %rax
	addq	%r14, %rdx
	movsd	16(%rax), %xmm0
	comisd	16(%rdx), %xmm0
	ja	.L350
	cmpq	%rdi, %rbx
	jnb	.L346
	leaq	(%rbx,%rbx,2), %rdx
	movdqu	(%rax), %xmm1
	movdqu	16(%rax), %xmm2
	addq	$1, %r8
	movdqu	28(%rax), %xmm3
	salq	$4, %rdx
	addq	$1, %rbx
	addq	%rsi, %rdx
	movups	%xmm2, 16(%rdx)
	movups	%xmm1, (%rdx)
	movups	%xmm3, 28(%rdx)
	cmpq	%r15, %r8
	jb	.L351
	.p2align 4,,10
	.p2align 3
.L318:
	cmpq	%r13, %rcx
	jnb	.L302
	movq	40(%rbp), %rdx
.L310:
	addq	%rbx, %r13
	leaq	(%rbx,%rbx,2), %rax
	subq	%rcx, %r13
	leaq	(%rcx,%rcx,2), %rcx
	salq	$4, %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	addq	%r14, %rcx
	jmp	.L322
	.p2align 4,,10
	.p2align 3
.L352:
	movq	40(%rbp), %rdx
.L322:
	cmpq	%rdi, %rbx
	jnb	.L346
	movdqu	(%rcx,%rax), %xmm4
	movdqu	16(%rcx,%rax), %xmm5
	addq	$1, %rbx
	movdqu	28(%rcx,%rax), %xmm6
	movups	%xmm5, 16(%rdx,%rax)
	movups	%xmm4, (%rdx,%rax)
	movups	%xmm6, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%rbx, %r13
	jne	.L352
.L302:
	movq	%r12, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
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
	.p2align 4,,10
	.p2align 3
.L316:
	.cfi_restore_state
	cmpq	%r15, %r8
	jnb	.L318
	movq	40(%rbp), %rdx
	leaq	(%rbx,%rbx), %rax
.L303:
	leaq	(%r8,%r8,2), %r9
	addq	%rbx, %rax
	subq	%rbx, %r8
	salq	$4, %rax
	salq	$4, %r9
	subq	%rax, %r9
	addq	%r12, %r9
	jmp	.L320
	.p2align 4,,10
	.p2align 3
.L353:
	movq	40(%rbp), %rdx
.L320:
	cmpq	%rdi, %rbx
	jnb	.L346
	movdqu	(%r9,%rax), %xmm7
	movdqu	28(%r9,%rax), %xmm0
	addq	$1, %rbx
	movups	%xmm7, (%rdx,%rax)
	movdqu	16(%r9,%rax), %xmm7
	movups	%xmm7, 16(%rdx,%rax)
	movups	%xmm0, 28(%rdx,%rax)
	leaq	(%r8,%rbx), %rdx
	addq	$48, %rax
	cmpq	%r15, %rdx
	jb	.L353
	jmp	.L318
	.p2align 4,,10
	.p2align 3
.L347:
	testq	%r13, %r13
	je	.L302
	movq	32(%rbp), %rdi
	movq	40(%rbp), %rdx
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L348:
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.L303
.L346:
	movq	%rbx, %rsi
.L345:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L349:
	movq	%rcx, %rsi
	jmp	.L345
.L299:
	leaq	.LC13(%rip), %rdi
	movq	%r9, %rcx
	movq	%r8, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6render17OrderByLayerMergeEyyy, .-_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render12OrderByLayerEyy
	.type	_ZN4slay6engine6render12OrderByLayerEyy, @function
_ZN4slay6engine6render12OrderByLayerEyy:
.LFB2247:
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
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
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
.LFE2247:
	.size	_ZN4slay6engine6render12OrderByLayerEyy, .-_ZN4slay6engine6render12OrderByLayerEyy
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"slay::engine.render.OrderByPriorityMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, @function
_ZN4slay6engine6render20OrderByPriorityMergeEyyy:
.LFB2250:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	subq	%rsi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	addq	$1, %r15
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	leaq	(%r15,%r15,2), %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	salq	$4, %rdi
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %r8
	movq	8(%rsp), %r9
	testq	%rax, %rax
	je	.L366
	movq	%r9, %r13
	movq	%r9, 8(%rsp)
	movq	%rax, %r12
	subq	%r8, %r13
	movq	%r8, (%rsp)
	leaq	0(%r13,%r13,2), %rdi
	salq	$4, %rdi
	call	malloc@PLT
	movq	(%rsp), %r8
	movq	8(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r14
	je	.L366
	testq	%r15, %r15
	je	.L411
	leaq	(%rbx,%rbx), %rax
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rdi
	movq	%rbx, %rsi
	leaq	(%rax,%rbx), %r10
	xorl	%ecx, %ecx
	salq	$4, %r10
	addq	%rdx, %r10
	jmp	.L372
	.p2align 4,,10
	.p2align 3
.L389:
	movq	%r11, %rsi
.L372:
	cmpq	%rdi, %rsi
	jnb	.L409
	movdqu	(%r10,%rcx), %xmm0
	movdqu	16(%r10,%rcx), %xmm1
	leaq	1(%rsi), %r11
	movdqu	28(%r10,%rcx), %xmm2
	movups	%xmm1, 16(%r12,%rcx)
	movups	%xmm0, (%r12,%rcx)
	movups	%xmm2, 28(%r12,%rcx)
	addq	$48, %rcx
	cmpq	%rsi, %r8
	jne	.L389
	testq	%r13, %r13
	je	.L412
.L368:
	leaq	1(%r8), %rcx
	leaq	(%r8,%r8,2), %r8
	movq	%rdx, %rsi
	xorl	%eax, %eax
	salq	$4, %r8
	addq	%rdx, %r8
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L390:
	movq	%r10, %rcx
.L375:
	cmpq	%rdi, %rcx
	jnb	.L413
	movdqu	48(%r8,%rax), %xmm3
	movdqu	64(%r8,%rax), %xmm4
	leaq	1(%rcx), %r10
	movdqu	76(%r8,%rax), %xmm5
	movups	%xmm4, 16(%r14,%rax)
	movups	%xmm3, (%r14,%rax)
	movups	%xmm5, 28(%r14,%rax)
	addq	$48, %rax
	cmpq	%rcx, %r9
	jne	.L390
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L377
	xorl	%r8d, %r8d
	jmp	.L383
	.p2align 4,,10
	.p2align 3
.L414:
	cmpq	%rdi, %rbx
	jnb	.L410
	leaq	(%rbx,%rbx,2), %rax
	movdqu	(%rdx), %xmm5
	movdqu	16(%rdx), %xmm0
	addq	$1, %rcx
	movdqu	28(%rdx), %xmm1
	salq	$4, %rax
	addq	$1, %rbx
	addq	%rsi, %rax
	movups	%xmm0, 16(%rax)
	movups	%xmm5, (%rax)
	movups	%xmm1, 28(%rax)
	cmpq	%r15, %r8
	jnb	.L384
.L415:
	cmpq	%r13, %rcx
	jnb	.L382
	movq	40(%rbp), %rsi
.L383:
	leaq	(%rcx,%rcx,2), %rdx
	leaq	(%r8,%r8,2), %rax
	salq	$4, %rdx
	salq	$4, %rax
	addq	%r12, %rax
	addq	%r14, %rdx
	movzbl	24(%rax), %r11d
	cmpb	%r11b, 24(%rdx)
	jb	.L414
	cmpq	%rdi, %rbx
	jnb	.L410
	leaq	(%rbx,%rbx,2), %rdx
	movdqu	(%rax), %xmm2
	movdqu	16(%rax), %xmm5
	addq	$1, %r8
	movdqu	28(%rax), %xmm0
	salq	$4, %rdx
	addq	$1, %rbx
	addq	%rsi, %rdx
	movups	%xmm5, 16(%rdx)
	movups	%xmm2, (%rdx)
	movups	%xmm0, 28(%rdx)
	cmpq	%r15, %r8
	jb	.L415
	.p2align 4,,10
	.p2align 3
.L384:
	cmpq	%r13, %rcx
	jnb	.L369
	movq	40(%rbp), %rdx
.L377:
	addq	%rbx, %r13
	leaq	(%rbx,%rbx,2), %rax
	subq	%rcx, %r13
	leaq	(%rcx,%rcx,2), %rcx
	salq	$4, %rax
	salq	$4, %rcx
	subq	%rax, %rcx
	addq	%r14, %rcx
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L416:
	movq	40(%rbp), %rdx
.L388:
	cmpq	%rdi, %rbx
	jnb	.L410
	movdqu	(%rcx,%rax), %xmm7
	movdqu	16(%rcx,%rax), %xmm3
	addq	$1, %rbx
	movdqu	28(%rcx,%rax), %xmm4
	movups	%xmm3, 16(%rdx,%rax)
	movups	%xmm7, (%rdx,%rax)
	movups	%xmm4, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%rbx, %r13
	jne	.L416
.L369:
	movq	%r12, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
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
	.p2align 4,,10
	.p2align 3
.L382:
	.cfi_restore_state
	cmpq	%r15, %r8
	jnb	.L384
	movq	40(%rbp), %rdx
	leaq	(%rbx,%rbx), %rax
.L370:
	leaq	(%r8,%r8,2), %r9
	addq	%rbx, %rax
	subq	%rbx, %r8
	salq	$4, %rax
	salq	$4, %r9
	subq	%rax, %r9
	addq	%r12, %r9
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L417:
	movq	40(%rbp), %rdx
.L386:
	cmpq	%rdi, %rbx
	jnb	.L410
	movdqu	(%r9,%rax), %xmm6
	movdqu	16(%r9,%rax), %xmm7
	addq	$1, %rbx
	movups	%xmm6, (%rdx,%rax)
	movdqu	28(%r9,%rax), %xmm6
	movups	%xmm7, 16(%rdx,%rax)
	movups	%xmm6, 28(%rdx,%rax)
	leaq	(%r8,%rbx), %rdx
	addq	$48, %rax
	cmpq	%r15, %rdx
	jb	.L417
	jmp	.L384
	.p2align 4,,10
	.p2align 3
.L411:
	testq	%r13, %r13
	je	.L369
	movq	32(%rbp), %rdi
	movq	40(%rbp), %rdx
	jmp	.L368
	.p2align 4,,10
	.p2align 3
.L412:
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.L370
.L410:
	movq	%rbx, %rsi
.L409:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L413:
	movq	%rcx, %rsi
	jmp	.L409
.L366:
	leaq	.LC14(%rip), %rdi
	movq	%r9, %rcx
	movq	%r8, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6render20OrderByPriorityMergeEyyy, .-_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15OrderByPriorityEyy
	.type	_ZN4slay6engine6render15OrderByPriorityEyy, @function
_ZN4slay6engine6render15OrderByPriorityEyy:
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
	jbe	.L419
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L419
	.p2align 4,,10
	.p2align 3
.L420:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L422:
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
	jb	.L422
	cmpq	%r14, %rbp
	jb	.L420
.L419:
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
.LFE2249:
	.size	_ZN4slay6engine6render15OrderByPriorityEyy, .-_ZN4slay6engine6render15OrderByPriorityEyy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13OrderingStageEv
	.type	_ZN4slay6engine6render13OrderingStageEv, @function
_ZN4slay6engine6render13OrderingStageEv:
.LFB2246:
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
	jbe	.L449
	.p2align 4,,10
	.p2align 3
.L429:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L431:
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
	jb	.L431
	cmpq	%r15, %r13
	jb	.L429
	movq	32(%r12), %rcx
	cmpq	$1, %rcx
	jbe	.L449
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L440
	.p2align 4,,10
	.p2align 3
.L434:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rcx, %r13
	jnb	.L459
.L446:
	movq	%r13, %rbp
.L440:
	movq	40(%r12), %rdx
	leaq	0(%rbp,%rbp,2), %rax
	salq	$4, %rax
	movsd	16(%rdx,%rax), %xmm0
	cmpq	%rcx, 8(%rsp)
	jnb	.L460
	movq	8(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	salq	$4, %rax
	ucomisd	16(%rdx,%rax), %xmm0
	jp	.L448
	je	.L434
.L448:
	cmpq	$1, %rbp
	je	.L461
	cmpq	%r15, 8(%rsp)
	jnb	.L439
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L438:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L437:
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
	jb	.L437
	cmpq	%rbp, %r13
	jb	.L438
	movq	32(%r12), %rcx
.L439:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rcx, %r13
	jb	.L446
.L459:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L449
	.p2align 4,,10
	.p2align 3
.L441:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L443:
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
	jb	.L443
	cmpq	%r13, %rbx
	jb	.L441
.L449:
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
.L461:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L434
.L460:
	movq	8(%rsp), %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6render13OrderingStageEv, .-_ZN4slay6engine6render13OrderingStageEv
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC16:
	.string	"slay::engine.render.RenderColor(): SDL_RenderFillRect failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.type	_ZN4slay6engine6render11RenderColorENS1_5tokenE, @function
_ZN4slay6engine6render11RenderColorENS1_5tokenE:
.LFB2252:
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
	jne	.L466
	movq	(%rbx), %rax
	leaq	44(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L467
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L466:
	.cfi_restore_state
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L467:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2252:
	.size	_ZN4slay6engine6render11RenderColorENS1_5tokenE, .-_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC18:
	.string	"slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC20:
	.string	"slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.type	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, @function
_ZN4slay6engine6render13RenderTextureENS1_5tokenE:
.LFB2253:
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
	movq	72(%rax), %rsi
	andl	$2, %r9d
	movq	576(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	568(%rdx), %rsi
	jnb	.L477
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L478
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	72(%rdx), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L477
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L479
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rsi
	xorpd	.LC19(%rip), %xmm0
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L477
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L480
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L477:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L480:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L479:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L478:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2253:
	.size	_ZN4slay6engine6render13RenderTextureENS1_5tokenE, .-_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC22:
	.string	"slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC23:
	.string	"slay::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.type	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, @function
_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE:
.LFB2254:
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
	movq	80(%rax), %rcx
	movzbl	21(%rax), %r8d
	negl	%r9d
	movzbl	20(%rax), %edi
	andl	$2, %r9d
	orl	%r9d, %ebx
	movzbl	22(%rax), %r9d
	movq	104(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L490
	movq	(%rax,%rsi,8), %rax
	movl	%r9d, %ecx
	movl	%edi, %esi
	movl	%r8d, %edx
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L491
	movq	32(%rsp), %rax
	movq	0(%rbp), %rdx
	movq	80(%rax), %rcx
	movzbl	23(%rax), %edi
	movq	104(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	576(%rdx), %rax
	cmpq	568(%rdx), %rsi
	jnb	.L490
	movq	(%rax,%rsi,8), %rax
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L492
	movq	32(%rsp), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	movsd	24(%rdx), %xmm0
	movq	80(%rdx), %rcx
	movq	104(%rdx), %rdx
	xorpd	.LC19(%rip), %xmm0
	movq	(%rdx,%rcx,8), %rsi
	movq	576(%rax), %rdx
	cmpq	568(%rax), %rsi
	jnb	.L490
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L493
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L490:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L493:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L492:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L491:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2254:
	.size	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE, .-_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"slay::engine.render.RenderText(): SDL_SetTextureColorMod failed"
	.align 8
.LC25:
	.string	"slay::engine.render.RenderText(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC26:
	.string	"slay::engine.render.RenderText(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.type	_ZN4slay6engine6render10RenderTextENS1_5tokenE, @function
_ZN4slay6engine6render10RenderTextENS1_5tokenE:
.LFB2255:
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
	jne	.L499
	movq	32(%rsp), %rax
	movzbl	21(%rax), %esi
	movq	104(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L500
	movq	32(%rsp), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	60(%rsp), %rcx
	movzbl	%bl, %r9d
	movsd	24(%rax), %xmm0
	movq	104(%rax), %rsi
	movq	0(%rbp), %rax
	xorpd	.LC19(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L501
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L499:
	.cfi_restore_state
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L501:
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L500:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6render10RenderTextENS1_5tokenE, .-_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC28:
	.string	"slay::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.align 8
.LC29:
	.string	"slay::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.type	_ZN4slay6engine6render14RenderingStageEv, @function
_ZN4slay6engine6render14RenderingStageEv:
.LFB2251:
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
	jne	.L546
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L504
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L506
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	leaq	16(%rax), %rcx
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L548:
	addq	$1, %rbx
	addq	$48, %rcx
	cmpq	%rdx, %rbx
	je	.L547
.L508:
	movsd	(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L548
	movq	%rbx, %r12
	cmpq	%rdx, %rbx
	jnb	.L510
.L509:
	leaq	.L513(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L524:
	leaq	(%rbx,%rbx,2), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$4, 8(%rax)
	ja	.L511
	movl	8(%rax), %edx
	movslq	0(%r13,%rdx,4), %rdx
	addq	%r13, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L513:
	.long	.L517-.L513
	.long	.L516-.L513
	.long	.L515-.L513
	.long	.L514-.L513
	.long	.L512-.L513
	.text
	.p2align 4,,10
	.p2align 3
.L506:
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderPresent@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L545
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
.L514:
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
	movq	32(%rbp), %rdx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
.L511:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L523
.L549:
	movq	40(%rbp), %rax
	jmp	.L524
	.p2align 4,,10
	.p2align 3
.L515:
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
	movq	32(%rbp), %rdx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	cmpq	%rdx, %rbx
	jb	.L549
	.p2align 4,,10
	.p2align 3
.L523:
	testq	%r12, %r12
	je	.L506
	movq	40(%rbp), %rax
.L510:
	xorl	%ebx, %ebx
	leaq	.L528(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L537:
	cmpq	%rdx, %rbx
	jnb	.L550
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	cmpl	$4, 8(%rax)
	ja	.L526
	movl	8(%rax), %edx
	movslq	0(%r13,%rdx,4), %rdx
	addq	%r13, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L528:
	.long	.L532-.L528
	.long	.L531-.L528
	.long	.L530-.L528
	.long	.L529-.L528
	.long	.L527-.L528
	.text
	.p2align 4,,10
	.p2align 3
.L516:
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
	movq	32(%rbp), %rdx
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
	jmp	.L511
	.p2align 4,,10
	.p2align 3
.L517:
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
	jne	.L533
	movq	0(%rbp), %rax
	leaq	28(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L534
.L521:
	movq	32(%rbp), %rdx
	jmp	.L511
	.p2align 4,,10
	.p2align 3
.L512:
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
	jne	.L535
	movq	0(%rbp), %rax
	leaq	28(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L521
.L536:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L545
	call	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	.p2align 4,,10
	.p2align 3
.L529:
	movdqu	(%rax), %xmm1
	subq	$48, %rsp
	.cfi_def_cfa_offset 208
	movq	%rbp, %rdi
	movups	%xmm1, (%rsp)
	movdqu	16(%rax), %xmm5
	movups	%xmm5, 16(%rsp)
	movdqu	32(%rax), %xmm6
	movups	%xmm6, 32(%rsp)
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	addq	$48, %rsp
	.cfi_def_cfa_offset 160
.L526:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L506
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	jmp	.L537
	.p2align 4,,10
	.p2align 3
.L530:
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
	jmp	.L526
	.p2align 4,,10
	.p2align 3
.L531:
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
	jmp	.L526
	.p2align 4,,10
	.p2align 3
.L532:
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
	jne	.L533
	movq	0(%rbp), %rax
	leaq	76(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L526
.L534:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L527:
	movdqu	(%rax), %xmm7
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movaps	%xmm7, 48(%rsp)
	movdqu	16(%rax), %xmm2
	movaps	%xmm2, 64(%rsp)
	movdqu	32(%rax), %xmm3
	movq	0(%rbp), %rax
	movaps	%xmm3, 80(%rsp)
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L535
	movq	0(%rbp), %rax
	leaq	76(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L526
	jmp	.L536
	.p2align 4,,10
	.p2align 3
.L547:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L509
.L550:
	leaq	.LC3(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L535:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L533:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L504:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L546:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L545:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2251:
	.size	_ZN4slay6engine6render14RenderingStageEv, .-_ZN4slay6engine6render14RenderingStageEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render6UpdateEv
	.type	_ZN4slay6engine6render6UpdateEv, @function
_ZN4slay6engine6render6UpdateEv:
.LFB2244:
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
.LFE2244:
	.size	_ZN4slay6engine6render6UpdateEv, .-_ZN4slay6engine6render6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE
	.type	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE, @function
_ZN4slay6engine6render12RenderHitboxENS1_5tokenE:
.LFB2256:
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
	jne	.L557
	movq	(%rbx), %rax
	leaq	44(%rsp), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L558
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L557:
	.cfi_restore_state
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L558:
	call	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE, .-_ZN4slay6engine6render12RenderHitboxENS1_5tokenE
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	-755914244
	.long	1063281229
	.align 8
.LC7:
	.long	-350469331
	.long	1059731170
	.align 8
.LC8:
	.long	-350469331
	.long	1058682594
	.align 8
.LC9:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC19:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
