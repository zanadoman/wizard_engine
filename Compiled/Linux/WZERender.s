	.file	"WZERender.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Insert(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0:
.LFB2446:
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
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	cmpq	%rbx, %rsi
	jb	.L26
	testq	%rdx, %rdx
	jne	.L27
.L1:
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
.L27:
	.cfi_restore_state
	addq	%rdx, %rsi
	movq	%rdi, %rbp
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L28
	movq	0(%rbp), %rdx
	leaq	(%rbx,%r12), %rsi
	leaq	-1(%rdx), %rax
	cmpq	%rsi, %rax
	jb	.L1
	movq	%rdx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rcx
	cmpq	$2, %rcx
	jbe	.L5
	leaq	8(,%r12,8), %rcx
	testq	%rcx, %rcx
	je	.L5
	testq	%rsi, %rsi
	je	.L5
	movq	%rdx, %rcx
	leaq	-16(%rdi,%rdx,8), %rsi
	movq	%r8, %rdx
	shrq	%rdx
	subq	%r12, %rcx
	negq	%rdx
	leaq	-16(%rdi,%rcx,8), %r9
	xorl	%ecx, %ecx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L6:
	movdqu	(%r9,%rcx), %xmm0
	movups	%xmm0, (%rsi,%rcx)
	subq	$16, %rcx
	cmpq	%rdx, %rcx
	jne	.L6
	movq	%r8, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r8d
	je	.L1
	movq	%rax, %rdx
	subq	%r12, %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
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
.L5:
	.cfi_restore_state
	movq	%r12, %rdx
	negq	%rdx
	leaq	(%rdi,%rdx,8), %rcx
	.p2align 4,,10
	.p2align 3
.L8:
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	subq	$1, %rax
	cmpq	%rsi, %rax
	jnb	.L8
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L28:
	leaq	.LC1(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2446:
	.size	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0:
.LFB2447:
	.cfi_startproc
	cmpq	%rdi, %rdx
	jnb	.L34
	leaq	(%rsi,%rdx,8), %rax
	ret
.L34:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC2(%rip), %rdi
	movq	%rdx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2447:
	.size	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6renderC2EPS0_
	.type	_ZN3wze6engine6renderC2EPS0_, @function
_ZN3wze6engine6renderC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	.LC3(%rip), %rax
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
	.size	_ZN3wze6engine6renderC2EPS0_, .-_ZN3wze6engine6renderC2EPS0_
	.globl	_ZN3wze6engine6renderC1EPS0_
	.set	_ZN3wze6engine6renderC1EPS0_,_ZN3wze6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2Ev
	.type	_ZN3wze6engine6render5tokenC2Ev, @function
_ZN3wze6engine6render5tokenC2Ev:
.LFB2235:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE2235:
	.size	_ZN3wze6engine6render5tokenC2Ev, .-_ZN3wze6engine6render5tokenC2Ev
	.globl	_ZN3wze6engine6render5tokenC1Ev
	.set	_ZN3wze6engine6render5tokenC1Ev,_ZN3wze6engine6render5tokenC2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
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
	.size	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetSamplingStepEv
	.type	_ZN3wze6engine6render15GetSamplingStepEv, @function
_ZN3wze6engine6render15GetSamplingStepEv:
.LFB2240:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2240:
	.size	_ZN3wze6engine6render15GetSamplingStepEv, .-_ZN3wze6engine6render15GetSamplingStepEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\nParams: SamplingStep: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetSamplingStepEd
	.type	_ZN3wze6engine6render15SetSamplingStepEd, @function
_ZN3wze6engine6render15SetSamplingStepEd:
.LFB2241:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L47
	movsd	%xmm0, 16(%rdi)
	ret
.L47:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2241:
	.size	_ZN3wze6engine6render15SetSamplingStepEd, .-_ZN3wze6engine6render15SetSamplingStepEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetBufferSizeKBEv
	.type	_ZN3wze6engine6render15GetBufferSizeKBEv, @function
_ZN3wze6engine6render15GetBufferSizeKBEv:
.LFB2242:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	shrq	$7, %rax
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN3wze6engine6render15GetBufferSizeKBEv, .-_ZN3wze6engine6render15GetBufferSizeKBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetBufferSizeKBEt
	.type	_ZN3wze6engine6render15SetBufferSizeKBEt, @function
_ZN3wze6engine6render15SetBufferSizeKBEt:
.LFB2243:
	.cfi_startproc
	salq	$7, %rsi
	andl	$8388480, %esi
	movw	%si, 24(%rdi)
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE2243:
	.size	_ZN3wze6engine6render15SetBufferSizeKBEt, .-_ZN3wze6engine6render15SetBufferSizeKBEt
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.render.SelectionStage(): TTF_RenderText_Blended failed"
	.align 8
.LC10:
	.string	"wze::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed"
	.align 8
.LC11:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14SelectionStageEv
	.type	_ZN3wze6engine6render14SelectionStageEv, @function
_ZN3wze6engine6render14SelectionStageEv:
.LFB2245:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2245
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
	jbe	.L51
	leaq	32(%rdi), %rbx
	movq	$0, (%rsp)
	movl	$1, %ebp
	movq	%rbx, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L183:
	movq	544(%rax), %rcx
	leaq	0(,%rbp,8), %r14
	cmpq	$0, (%rcx,%rbp,8)
	je	.L52
	cmpq	%rdx, %rbp
	jnb	.L287
	movl	$1, %r12d
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L80:
	movq	32(%rdi), %rsi
	leaq	0(,%r12,8), %r13
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L54
	cmpw	$0, 16(%rsi)
	je	.L54
	cmpw	$0, 18(%rsi)
	je	.L54
	cmpb	$0, 23(%rsi)
	je	.L54
	cmpb	$0, 26(%rsi)
	jne	.L292
	.p2align 4,,10
	.p2align 3
.L54:
	addq	$1, %r12
	cmpq	%rdx, %rbp
	jnb	.L287
.L53:
	movq	(%rcx,%r14), %rdi
	cmpq	24(%rdi), %r12
	jb	.L80
	cmpq	%rdx, %rbp
	jnb	.L287
	movl	$1, %r12d
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L107:
	movq	64(%rdi), %rsi
	leaq	0(,%r12,8), %r13
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L82
	cmpw	$0, 16(%rsi)
	je	.L82
	cmpw	$0, 18(%rsi)
	je	.L82
	cmpb	$0, 23(%rsi)
	je	.L82
	cmpb	$0, 37(%rsi)
	je	.L82
	cmpq	$0, 72(%rsi)
	jne	.L293
	.p2align 4,,10
	.p2align 3
.L82:
	addq	$1, %r12
	cmpq	%rdx, %rbp
	jnb	.L287
.L81:
	movq	(%rcx,%r14), %rdi
	cmpq	56(%rdi), %r12
	jb	.L107
	cmpq	%rdx, %rbp
	jnb	.L287
	movl	$1, %r12d
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L135:
	movq	96(%rdi), %rsi
	leaq	0(,%r12,8), %r13
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L109
	cmpw	$0, 16(%rsi)
	je	.L109
	cmpw	$0, 18(%rsi)
	je	.L109
	cmpb	$0, 23(%rsi)
	je	.L109
	cmpb	$0, 37(%rsi)
	je	.L109
	movq	80(%rsi), %r8
	movq	104(%rsi), %r9
	cmpq	96(%rsi), %r8
	jnb	.L294
	cmpq	$0, (%r9,%r8,8)
	jne	.L295
	.p2align 4,,10
	.p2align 3
.L109:
	addq	$1, %r12
	cmpq	%rdx, %rbp
	jnb	.L287
.L108:
	movq	(%rcx,%r14), %rdi
	cmpq	88(%rdi), %r12
	jb	.L135
	cmpq	%rdx, %rbp
	jnb	.L287
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L136:
	movq	(%rcx,%r14), %rcx
	cmpq	120(%rcx), %rbx
	jnb	.L296
.L176:
	movq	128(%rcx), %rcx
	leaq	0(,%rbx,8), %r12
	movq	(%rcx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L297
	addq	$80, %rdi
.LEHB0:
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jbe	.L138
	cmpq	%rdx, %rbp
	jnb	.L287
	movq	(%rcx,%r14), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %rbx
	jnb	.L289
	movq	(%rdi,%r12), %rdi
	cmpw	$0, 16(%rdi)
	jne	.L298
.L142:
	movq	(%rcx,%r14), %rcx
	addq	$1, %rbx
	cmpq	120(%rcx), %rbx
	jb	.L176
	.p2align 4,,10
	.p2align 3
.L296:
	cmpb	$0, 152(%rcx)
	jne	.L299
.L52:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L183
	movq	32(%r15), %rbx
	cmpq	%rbx, (%rsp)
	jb	.L300
.L235:
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
.L297:
	.cfi_restore_state
	movq	544(%rax), %rcx
.L138:
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jb	.L136
.L287:
	movq	%rbp, %rsi
.L283:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L285:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L298:
	cmpb	$0, 21(%rdi)
	je	.L142
	cmpb	$0, 37(%rdi)
	je	.L142
	cmpq	$0, 96(%rdi)
	je	.L142
	cmpq	$0, 104(%rdi)
	je	.L301
.L143:
	movsd	.LC8(%rip), %xmm0
	mulsd	224(%rsi), %xmm0
	pxor	%xmm7, %xmm7
	movsd	216(%rsi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	comisd	%xmm2, %xmm7
	ja	.L302
	ucomisd	%xmm1, %xmm2
	jp	.L156
	jne	.L156
	addsd	.LC7(%rip), %xmm1
.L156:
	comisd	%xmm2, %xmm1
	jbe	.L138
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L310:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L280
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r8d
	movd	%xmm3, %esi
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %edi
	testq	%r13, %r13
	jne	.L303
.L163:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r8d, %eax
	js	.L304
.L168:
	cmpq	%r13, 32(%r15)
	je	.L305
.L170:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L306
	movq	(%rsi,%r14), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %rbx
	jnb	.L307
	movq	(%rdi,%r12), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r13), %rsi
	movl	$3, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r15), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r15), %r13
	jnb	.L308
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L162:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm4
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm4
	jbe	.L309
.L174:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L287
	movq	(%rcx,%r14), %rdx
	movq	128(%rdx), %rax
	cmpq	120(%rdx), %rbx
	jnb	.L289
	movq	(%rax,%r12), %rcx
	movsd	%xmm2, 16(%rsp)
	movsd	40(%rcx), %xmm0
	movzwl	16(%rcx), %edx
	movzwl	56(%rcx), %esi
	movsd	48(%rcx), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %edx
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%edx, %edx
	jne	.L310
.L280:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L304:
	movzwl	10(%r15), %eax
	subl	%ecx, %r8d
	cmpl	%eax, %r8d
	jle	.L168
	sarl	%esi
	movl	%esi, %edx
	addl	%edi, %edx
	jns	.L168
	subl	%esi, %edi
	cmpl	%edi, %eax
	jl	.L280
	cmpq	%r13, 32(%r15)
	jne	.L170
	.p2align 4,,10
	.p2align 3
.L305:
	movzwl	24(%r15), %eax
	movq	56(%rsp), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L303:
	movq	40(%r15), %rdx
	leaq	-1(%r13), %rax
	cmpq	32(%r15), %rax
	jnb	.L311
	movq	(%rdx,%rax,8), %r10
	movq	(%r10), %rax
	movq	%rax, (%rsp)
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %r9
	cmpq	%rdx, %rbp
	jnb	.L287
	movq	(%r9,%r14), %r9
	movq	128(%r9), %r11
	cmpq	120(%r9), %rbx
	jnb	.L289
	movq	(%rsp), %r9
	cmpq	(%r11,%r12), %r9
	jne	.L163
	cmpl	%r8d, 28(%r10)
	jne	.L163
	cmpl	%edi, 32(%r10)
	jne	.L163
	cmpl	36(%r10), %ecx
	jne	.L163
	cmpl	%esi, 40(%r10)
	jne	.L163
	movsd	%xmm2, 16(%r10)
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L309:
	movq	%r13, (%rsp)
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jb	.L136
	jmp	.L287
	.p2align 4,,10
	.p2align 3
.L299:
	movzwl	234(%rcx), %esi
	testw	%si, %si
	je	.L52
	movzwl	236(%rcx), %edi
	testw	%di, %di
	je	.L52
	movsd	168(%rcx), %xmm0
	movsd	216(%rcx), %xmm2
	movzwl	%di, %edx
	leaq	80(%rax), %rdi
	movsd	176(%rcx), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movl	24(%rsp), %eax
	movdqa	16(%rsp), %xmm0
	testl	%eax, %eax
	je	.L281
	movq	24(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L177
.L281:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L302:
	ucomisd	.LC7(%rip), %xmm1
	jp	.L221
	je	.L202
.L221:
	movq	.LC7(%rip), %rsi
	movq	%rsi, %xmm2
	jmp	.L156
.L292:
	movsd	.LC8(%rip), %xmm0
	mulsd	224(%rdi), %xmm0
	movsd	216(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L312
	ucomisd	%xmm1, %xmm2
	jp	.L59
	jne	.L59
	addsd	.LC7(%rip), %xmm1
.L59:
	comisd	%xmm2, %xmm1
	jbe	.L54
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L63:
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%rbx, %rbx
	jne	.L313
.L66:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L314
.L71:
	cmpq	%rbx, 32(%r15)
	je	.L315
.L73:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L316
	movq	(%rsi,%r14), %rsi
	movq	32(%rsi), %rdi
	cmpq	24(%rsi), %r12
	jnb	.L317
	movq	(%rdi,%r13), %rsi
	movzbl	25(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%rbx), %rsi
	movl	$0, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r15), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r15), %rbx
	jnb	.L276
	movq	%rcx, (%rdi,%rbx,8)
	movq	%rsi, %rbx
.L65:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm5
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm5
	jbe	.L318
.L78:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L287
	movq	(%rcx,%r14), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %r12
	jnb	.L284
	movq	(%rdx,%r13), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	32(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	40(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L277
	movl	8(%rsp), %edi
	testl	%edi, %edi
	jne	.L63
.L277:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L314:
	movzwl	10(%r15), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L71
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L71
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jl	.L277
	cmpq	%rbx, 32(%r15)
	jne	.L73
.L315:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movq	%rbx, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L73
.L313:
	movq	40(%r15), %rdi
	movq	32(%r15), %r9
	leaq	-1(%rbx), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L288
	movq	(%rdi,%r11,8), %r8
	movq	(%r8), %rdi
	movq	%rdi, 16(%rsp)
	movq	(%r15), %rdi
	movq	544(%rdi), %r10
	cmpq	536(%rdi), %rbp
	jnb	.L287
	movq	(%r10,%r14), %rdi
	movq	32(%rdi), %r10
	cmpq	24(%rdi), %r12
	jnb	.L284
	movq	16(%rsp), %rdi
	cmpq	(%r10,%r13), %rdi
	jne	.L66
	cmpl	%esi, 28(%r8)
	jne	.L66
	cmpl	%ecx, 32(%r8)
	jne	.L66
	cmpl	%eax, 36(%r8)
	jne	.L66
	cmpl	%edx, 40(%r8)
	jne	.L66
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L301:
	movl	52(%rsp), %eax
	addq	$80, %rdi
	movb	$-1, %al
	movl	%eax, 52(%rsp)
	call	_ZN3neo6stringclEv@PLT
	movq	(%r15), %rcx
	movq	%rax, %rsi
	movq	544(%rcx), %rax
	cmpq	536(%rcx), %rbp
	jnb	.L287
	movq	(%rax,%r14), %rax
	movq	128(%rax), %rdx
	cmpq	120(%rax), %rbx
	jnb	.L289
	movq	(%rdx,%r12), %rax
	movq	96(%rax), %rdx
	movq	632(%rcx), %rax
	cmpq	624(%rcx), %rdx
	jnb	.L319
	orl	$-256, 52(%rsp)
	movq	(%rax,%rdx,8), %rdi
	movl	52(%rsp), %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L320
	movq	(%r15), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	(%r15), %rdx
	movq	544(%rdx), %rcx
	cmpq	536(%rdx), %rbp
	jnb	.L287
	movq	(%rcx,%r14), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rbx
	jnb	.L289
	movq	(%rcx,%r12), %rcx
	movq	%rax, 104(%rcx)
	testq	%rax, %rax
	je	.L321
	movzwl	16(%rcx), %eax
	imull	16(%r13), %eax
	movq	%r13, %rdi
	cltd
	idivl	20(%r13)
	movw	%ax, 56(%rcx)
	call	SDL_FreeSurface@PLT
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L287
	movq	(%rcx,%r14), %rsi
	jmp	.L143
.L318:
	movq	%rbx, (%rsp)
	jmp	.L54
.L202:
	movapd	%xmm1, %xmm2
	movsd	.LC6(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L174
.L293:
	movsd	.LC8(%rip), %xmm0
	mulsd	224(%rdi), %xmm0
	movsd	216(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L322
	ucomisd	%xmm1, %xmm2
	jp	.L87
	jne	.L87
	addsd	.LC7(%rip), %xmm1
.L87:
	comisd	%xmm2, %xmm1
	jbe	.L82
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L329:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L278
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%rbx, %rbx
	jne	.L323
.L94:
	sarl	%eax
	movl	%esi, %edi
	addl	%eax, %edi
	js	.L324
.L99:
	cmpq	%rbx, 32(%r15)
	je	.L325
.L101:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movdqa	(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L326
	movq	(%rsi,%r14), %rsi
	movq	64(%rsi), %rdi
	cmpq	56(%rsi), %r12
	jnb	.L327
	movq	(%rdi,%r13), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%rbx), %rsi
	movl	$1, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r15), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r15), %rbx
	jnb	.L276
	movq	%rcx, (%rdi,%rbx,8)
	movq	%rsi, %rbx
.L93:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm6
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm6
	jbe	.L328
.L105:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L287
	movq	(%rcx,%r14), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %r12
	jnb	.L284
	movq	(%rdx,%r13), %rax
	movsd	%xmm2, 16(%rsp)
	movzwl	16(%rax), %esi
	movsd	40(%rax), %xmm0
	movzwl	18(%rax), %edx
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %esi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%esi, %esi
	jne	.L329
.L278:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L93
.L324:
	movzwl	10(%r15), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L99
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L99
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L99
	jmp	.L278
.L323:
	movq	40(%r15), %rdi
	movq	32(%r15), %r9
	leaq	-1(%rbx), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L288
	movq	(%rdi,%r11,8), %rdi
	movq	(%r15), %r8
	movq	(%rdi), %r10
	movq	%r10, 16(%rsp)
	movq	544(%r8), %r10
	cmpq	536(%r8), %rbp
	jnb	.L287
	movq	(%r10,%r14), %r8
	movq	64(%r8), %r10
	cmpq	56(%r8), %r12
	jnb	.L284
	movq	16(%rsp), %r8
	cmpq	(%r10,%r13), %r8
	jne	.L94
	cmpl	28(%rdi), %esi
	jne	.L94
	cmpl	%ecx, 32(%rdi)
	jne	.L94
	cmpl	%eax, 36(%rdi)
	jne	.L94
	cmpl	%edx, 40(%rdi)
	jne	.L94
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L295:
	movsd	.LC8(%rip), %xmm0
	mulsd	224(%rdi), %xmm0
	movsd	216(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L330
	ucomisd	%xmm1, %xmm2
	jp	.L115
	jne	.L115
	addsd	.LC7(%rip), %xmm1
.L115:
	comisd	%xmm2, %xmm1
	jbe	.L109
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L133
	.p2align 4,,10
	.p2align 3
.L337:
	movl	8(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L279
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%rbx, %rbx
	jne	.L331
.L122:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L332
.L127:
	cmpq	%rbx, 32(%r15)
	je	.L333
.L129:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L334
	movq	(%rsi,%r14), %rsi
	movq	96(%rsi), %rdi
	cmpq	88(%rsi), %r12
	jnb	.L335
	movq	(%rdi,%r13), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%rbx), %rsi
	movl	$2, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r15), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r15), %rbx
	jnb	.L276
	movq	%rcx, (%rdi,%rbx,8)
	movq	%rsi, %rbx
.L121:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm7
	movq	544(%rax), %rcx
	comisd	%xmm2, %xmm7
	jbe	.L336
.L133:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L287
	movq	(%rcx,%r14), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %r12
	jnb	.L284
	movq	(%rdx,%r13), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	40(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L337
.L279:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L121
.L332:
	movzwl	10(%r15), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L127
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L127
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L127
	jmp	.L279
.L331:
	movq	40(%r15), %rdi
	movq	32(%r15), %r9
	leaq	-1(%rbx), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L288
	movq	(%rdi,%r11,8), %rdi
	movq	(%r15), %r8
	movq	(%rdi), %r10
	movq	%r10, 16(%rsp)
	movq	544(%r8), %r10
	cmpq	536(%r8), %rbp
	jnb	.L287
	movq	(%r10,%r14), %r8
	movq	96(%r8), %r10
	cmpq	88(%r8), %r12
	jnb	.L284
	movq	16(%rsp), %r8
	cmpq	(%r10,%r13), %r8
	jne	.L122
	cmpl	%esi, 28(%rdi)
	jne	.L122
	cmpl	%ecx, 32(%rdi)
	jne	.L122
	cmpl	36(%rdi), %eax
	jne	.L122
	cmpl	%edx, 40(%rdi)
	jne	.L122
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L328:
	movq	%rbx, (%rsp)
	jmp	.L82
.L336:
	movq	%rbx, (%rsp)
	jmp	.L109
.L312:
	movsd	.LC7(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L59
	jne	.L59
	movapd	%xmm1, %xmm2
	movsd	.LC6(%rip), %xmm1
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L78
.L325:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movq	%rbx, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L101
.L333:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movq	%rbx, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L129
.L300:
	movq	(%rsp), %rax
	movq	40(%r15), %rdi
	movq	%rax, 32(%r15)
	testq	%rax, %rax
	je	.L186
	leaq	0(,%rax,8), %rsi
	call	realloc@PLT
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	jne	.L235
	movq	(%rsp), %rsi
	leaq	.LC11(%rip), %rdi
	subq	%rsi, %rbx
	movq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L322:
	movsd	.LC7(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L87
	jne	.L87
	movapd	%xmm1, %xmm2
	movsd	.LC6(%rip), %xmm1
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L105
.L330:
	movsd	.LC7(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L115
	jne	.L115
	movapd	%xmm1, %xmm2
	movsd	.LC6(%rip), %xmm1
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L133
.L177:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ebx
	addl	%edx, %ebx
	js	.L338
.L179:
	movq	(%rsp), %rax
	cmpq	%rax, 32(%r15)
	je	.L339
.L180:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	call	_Znwm@PLT
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rbx
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L340
	movq	(%rcx,%r14), %rcx
	movq	(%rsp), %rdi
	movb	$-1, 24(%rbx)
	movl	$4, 8(%rbx)
	movq	40(%r15), %rsi
	movq	%rcx, (%rbx)
	leaq	1(%rdi), %rcx
	movq	$0x000000000, 16(%rbx)
	movups	%xmm0, 28(%rbx)
	cmpq	32(%r15), %rdi
	jnb	.L341
	movq	%rbx, (%rsi,%rdi,8)
	movq	%rcx, (%rsp)
	jmp	.L52
.L289:
	movq	%rbx, %rsi
	jmp	.L283
.L51:
	cmpq	$0, 32(%rdi)
	je	.L235
	movq	$0, 32(%rdi)
	movq	40(%rdi), %rdi
.L186:
	call	free@PLT
	movq	$0, 40(%r15)
	jmp	.L235
.L339:
	movq	%rax, %rsi
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movaps	%xmm0, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	jmp	.L180
.L338:
	movzwl	10(%r15), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L179
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %eax
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %edx
	sarl	%edx
	movl	%edx, %ebx
	addl	%eax, %ebx
	jns	.L179
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L179
	jmp	.L281
.L284:
	movq	%r12, %rsi
	jmp	.L283
.L320:
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L321:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L288:
	movq	%r11, %rsi
	jmp	.L283
.L316:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB1:
	call	printf@PLT
.LEHE1:
	jmp	.L285
.L341:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rdi
.LEHB2:
	call	printf@PLT
.LEHE2:
	jmp	.L285
.L340:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB3:
	call	printf@PLT
.LEHE3:
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L276:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L285
.L311:
	movq	%rax, %rsi
	jmp	.L283
.L319:
	movq	%rdx, %rsi
	jmp	.L283
.L317:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB5:
	call	printf@PLT
.LEHE5:
	jmp	.L285
.L308:
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
.LEHE6:
	jmp	.L285
.L307:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB7:
	call	printf@PLT
	jmp	.L285
.L306:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
	call	printf@PLT
.LEHE7:
	jmp	.L285
.L327:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB8:
	call	printf@PLT
.LEHE8:
	jmp	.L285
.L334:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB9:
	call	printf@PLT
	jmp	.L285
.L335:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
	call	printf@PLT
.LEHE9:
	jmp	.L285
.L294:
	movq	%r8, %rsi
	jmp	.L283
.L326:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB10:
	call	printf@PLT
.LEHE10:
	jmp	.L285
.L206:
	movq	%rax, %rbx
	jmp	.L194
.L204:
	movq	%rax, %rbp
	jmp	.L192
.L203:
	movq	%rax, %rbp
	jmp	.L192
.L205:
	movq	%rax, %rbp
	jmp	.L192
.L207:
	movq	%rax, %rbp
	jmp	.L192
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2245-.LLSDACSB2245
.LLSDACSB2245:
	.uleb128 .LEHB0-.LFB2245
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2245
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L203-.LFB2245
	.uleb128 0
	.uleb128 .LEHB2-.LFB2245
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2245
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L207-.LFB2245
	.uleb128 0
	.uleb128 .LEHB4-.LFB2245
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2245
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L203-.LFB2245
	.uleb128 0
	.uleb128 .LEHB6-.LFB2245
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2245
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L206-.LFB2245
	.uleb128 0
	.uleb128 .LEHB8-.LFB2245
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L204-.LFB2245
	.uleb128 0
	.uleb128 .LEHB9-.LFB2245
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L205-.LFB2245
	.uleb128 0
	.uleb128 .LEHB10-.LFB2245
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L204-.LFB2245
	.uleb128 0
.LLSDACSE2245:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2245
	.type	_ZN3wze6engine6render14SelectionStageEv.cold, @function
_ZN3wze6engine6render14SelectionStageEv.cold:
.LFSB2245:
.L194:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L192:
	movq	%rbx, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
	.cfi_endproc
.LFE2245:
	.section	.gcc_except_table
.LLSDAC2245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2245-.LLSDACSBC2245
.LLSDACSBC2245:
	.uleb128 .LEHB11-.LCOLDB12
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC2245:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6render14SelectionStageEv, .-_ZN3wze6engine6render14SelectionStageEv
	.section	.text.unlikely
	.size	_ZN3wze6engine6render14SelectionStageEv.cold, .-_ZN3wze6engine6render14SelectionStageEv.cold
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.render.OrderByLayerMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.type	_ZN3wze6engine6render17OrderByLayerMergeEyyy, @function
_ZN3wze6engine6render17OrderByLayerMergeEyyy:
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
	movq	%rdx, %r14
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	leaq	0(,%r15,8), %rdi
	movq	%rcx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	je	.L344
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L344
	testq	%r15, %r15
	je	.L392
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L350
	.p2align 4,,10
	.p2align 3
.L368:
	movq	%rax, %rsi
.L350:
	cmpq	%rdx, %rsi
	jnb	.L390
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r14
	jne	.L368
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L365
.L346:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L369:
	movq	%rax, %rsi
.L353:
	cmpq	%rdx, %rsi
	jnb	.L390
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L369
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L355
	xorl	%eax, %eax
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L393:
	cmpq	%rdx, %rbx
	jnb	.L391
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L363
.L394:
	cmpq	%rbp, %rsi
	jnb	.L388
.L361:
	movq	0(%r13,%rsi,8), %rdi
	movq	(%r12,%rax,8), %r8
	movsd	16(%r8), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L393
	cmpq	%rdx, %rbx
	jnb	.L391
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L394
	.p2align 4,,10
	.p2align 3
.L363:
	cmpq	%rbp, %rsi
	jnb	.L347
.L355:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L367:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L391
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L367
.L347:
	movq	%r12, %rdi
	call	free@PLT
	movq	%r13, %rdi
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
.L365:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L391
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L388:
	cmpq	%r15, %rax
	jb	.L365
	jmp	.L363
	.p2align 4,,10
	.p2align 3
.L392:
	testq	%rbp, %rbp
	je	.L347
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L346
.L391:
	movq	%rbx, %rsi
.L390:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L344:
	leaq	.LC13(%rip), %rdi
	movq	%r9, %rcx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2248:
	.size	_ZN3wze6engine6render17OrderByLayerMergeEyyy, .-_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12OrderByLayerEyy
	.type	_ZN3wze6engine6render12OrderByLayerEyy, @function
_ZN3wze6engine6render12OrderByLayerEyy:
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
	jbe	.L396
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L396
	.p2align 4,,10
	.p2align 3
.L397:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L399:
	leaq	(%rbx,%r12), %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%rbp, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	cmpq	%r15, %rbx
	jb	.L399
	cmpq	%r14, %rbp
	jb	.L397
.L396:
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
	.size	_ZN3wze6engine6render12OrderByLayerEyy, .-_ZN3wze6engine6render12OrderByLayerEyy
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.render.OrderByPriorityMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN3wze6engine6render20OrderByPriorityMergeEyyy, @function
_ZN3wze6engine6render20OrderByPriorityMergeEyyy:
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
	movq	%rdx, %r14
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	leaq	0(,%r15,8), %rdi
	movq	%rcx, (%rsp)
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	je	.L407
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L407
	testq	%r15, %r15
	je	.L452
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L430:
	movq	%rax, %rsi
.L413:
	cmpq	%rdx, %rsi
	jnb	.L450
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%r14, %rsi
	jne	.L430
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L427
.L409:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L416
	.p2align 4,,10
	.p2align 3
.L431:
	movq	%rax, %rsi
.L416:
	cmpq	%rdx, %rsi
	jnb	.L450
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L431
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L418
	xorl	%eax, %eax
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L453:
	cmpq	%rdx, %rbx
	jnb	.L451
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L425
.L454:
	cmpq	%rbp, %rsi
	jnb	.L448
.L423:
	movq	(%r12,%rax,8), %r8
	movq	0(%r13,%rsi,8), %rdi
	movzbl	24(%r8), %r10d
	cmpb	%r10b, 24(%rdi)
	jb	.L453
	cmpq	%rdx, %rbx
	jnb	.L451
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L454
	.p2align 4,,10
	.p2align 3
.L425:
	cmpq	%rbp, %rsi
	jnb	.L410
.L418:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L429:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L451
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L429
.L410:
	movq	%r12, %rdi
	call	free@PLT
	movq	%r13, %rdi
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
.L427:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L451
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L448:
	cmpq	%r15, %rax
	jb	.L427
	jmp	.L425
	.p2align 4,,10
	.p2align 3
.L452:
	testq	%rbp, %rbp
	je	.L410
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L409
.L451:
	movq	%rbx, %rsi
.L450:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L407:
	leaq	.LC14(%rip), %rdi
	movq	%r9, %rcx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2250:
	.size	_ZN3wze6engine6render20OrderByPriorityMergeEyyy, .-_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15OrderByPriorityEyy
	.type	_ZN3wze6engine6render15OrderByPriorityEyy, @function
_ZN3wze6engine6render15OrderByPriorityEyy:
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
	jbe	.L456
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L456
	.p2align 4,,10
	.p2align 3
.L457:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L459:
	leaq	(%rbx,%r12), %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%rbp, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	cmpq	%r15, %rbx
	jb	.L459
	cmpq	%r14, %rbp
	jb	.L457
.L456:
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
	.size	_ZN3wze6engine6render15OrderByPriorityEyy, .-_ZN3wze6engine6render15OrderByPriorityEyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13OrderingStageEv
	.type	_ZN3wze6engine6render13OrderingStageEv, @function
_ZN3wze6engine6render13OrderingStageEv:
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
	jbe	.L486
	.p2align 4,,10
	.p2align 3
.L466:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L468:
	leaq	(%r14,%rbx), %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	cmpq	%rbp, %rdx
	cmova	%rbp, %rdx
	addq	%r13, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%rbp, %rcx
	cmova	%rbp, %rcx
	call	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	cmpq	%rbp, %rbx
	jb	.L468
	cmpq	%r15, %r13
	jb	.L466
	movq	32(%r12), %rdx
	cmpq	$1, %rdx
	jbe	.L486
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L477
	.p2align 4,,10
	.p2align 3
.L471:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rdx, %r13
	jnb	.L496
.L483:
	movq	%r13, %rbp
.L477:
	movq	40(%r12), %rax
	movq	(%rax,%rbp,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, 8(%rsp)
	jnb	.L497
	movq	8(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L485
	je	.L471
.L485:
	cmpq	$1, %rbp
	je	.L498
	cmpq	%r15, 8(%rsp)
	jnb	.L476
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L475:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L474:
	leaq	(%rbx,%r14), %rdx
	movq	%rbx, %rsi
	movq	%r12, %rdi
	cmpq	%r15, %rdx
	cmova	%r15, %rdx
	addq	%r13, %rbx
	leaq	-1(%rbx), %rcx
	cmpq	%r15, %rcx
	cmova	%r15, %rcx
	call	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	cmpq	%r15, %rbx
	jb	.L474
	cmpq	%rbp, %r13
	jb	.L475
	movq	32(%r12), %rdx
.L476:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rdx, %r13
	jb	.L483
.L496:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L486
	.p2align 4,,10
	.p2align 3
.L478:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L480:
	leaq	(%r15,%r14), %rdx
	movq	%r15, %rsi
	movq	%r12, %rdi
	cmpq	%rbp, %rdx
	cmova	%rbp, %rdx
	addq	%rbx, %r15
	leaq	-1(%r15), %rcx
	cmpq	%rbp, %rcx
	cmova	%rbp, %rcx
	call	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rbp, %r15
	jb	.L480
	cmpq	%r13, %rbx
	jb	.L478
.L486:
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
.L498:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L471
.L497:
	movq	8(%rsp), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2246:
	.size	_ZN3wze6engine6render13OrderingStageEv, .-_ZN3wze6engine6render13OrderingStageEv
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC16:
	.string	"wze::engine.render.RenderColor(): SDL_RenderFillRect failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	.type	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE, @function
_ZN3wze6engine6render11RenderColorEPNS1_5tokenE:
.LFB2252:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rsi), %rax
	movq	(%rdi), %rdi
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %edx
	movzbl	20(%rax), %esi
	movq	16(%rdi), %rdi
	movzbl	23(%rax), %r8d
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L503
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L504
	movq	%rbx, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L503:
	.cfi_restore_state
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L504:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2252:
	.size	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE, .-_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC18:
	.string	"wze::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC20:
	.string	"wze::engine.render.RenderTexture(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	.type	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE, @function
_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE:
.LFB2253:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rax
	movq	0(%rbp), %rdx
	movzbl	33(%rax), %r9d
	movzbl	32(%rax), %ebx
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %r8d
	negl	%r9d
	movzbl	20(%rax), %edi
	movq	72(%rax), %rsi
	andl	$2, %r9d
	movq	600(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	592(%rdx), %rsi
	jnb	.L514
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L515
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	72(%rdx), %rsi
	movq	600(%rax), %rdx
	cmpq	592(%rax), %rsi
	jnb	.L514
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L516
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	leaq	28(%r12), %rcx
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rsi
	xorpd	.LC19(%rip), %xmm0
	movq	600(%rax), %rdx
	cmpq	592(%rax), %rsi
	jnb	.L514
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L517
	movq	%r12, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L514:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L517:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L516:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L515:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2253:
	.size	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE, .-_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC22:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC23:
	.string	"wze::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.type	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE, @function
_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE:
.LFB2254:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rax
	movq	(%r12), %rdx
	movzbl	33(%rax), %r9d
	movzbl	32(%rax), %ebx
	movzbl	22(%rax), %ecx
	movzbl	21(%rax), %r8d
	negl	%r9d
	movzbl	20(%rax), %edi
	movq	80(%rax), %rsi
	andl	$2, %r9d
	orl	%r9d, %ebx
	movq	104(%rax), %r9
	cmpq	96(%rax), %rsi
	jnb	.L531
	movq	(%r9,%rsi,8), %rsi
	movq	600(%rdx), %rax
	cmpq	592(%rdx), %rsi
	jnb	.L531
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L532
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	23(%rax), %ecx
	movq	80(%rax), %rsi
	movq	104(%rax), %rdi
	cmpq	96(%rax), %rsi
	jnb	.L531
	movq	(%rdi,%rsi,8), %rsi
	movq	600(%rdx), %rax
	cmpq	592(%rdx), %rsi
	jnb	.L531
	movq	(%rax,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L533
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	%bl, %r9d
	leaq	28(%rbp), %rdi
	movsd	24(%rax), %xmm0
	movq	80(%rax), %rsi
	xorpd	.LC19(%rip), %xmm0
	movq	104(%rax), %rcx
	cmpq	96(%rax), %rsi
	jnb	.L531
	movq	(%rcx,%rsi,8), %rsi
	movq	600(%rdx), %rax
	cmpq	592(%rdx), %rsi
	jnb	.L531
	movq	(%rax,%rsi,8), %rsi
	movq	16(%rdx), %rax
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L534
	movq	%rbp, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L531:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L534:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L533:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L532:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2254:
	.size	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE, .-_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.render.RenderText(): SDL_SetTextureColorMod failed"
	.align 8
.LC25:
	.string	"wze::engine.render.RenderText(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC26:
	.string	"wze::engine.render.RenderText(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	.type	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE, @function
_ZN3wze6engine6render10RenderTextEPNS1_5tokenE:
.LFB2255:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rsi), %rax
	movq	%rsi, %rbx
	movzbl	33(%rax), %r9d
	movzbl	20(%rax), %ecx
	movzbl	19(%rax), %edx
	movzbl	18(%rax), %esi
	negl	%r9d
	movq	104(%rax), %rdi
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movl	%r9d, %ebp
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L540
	movq	(%rbx), %rax
	movzbl	21(%rax), %esi
	movq	104(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L541
	movq	(%rbx), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	28(%rbx), %rcx
	movzbl	%bpl, %r9d
	movsd	24(%rax), %xmm0
	movq	104(%rax), %rsi
	movq	(%r12), %rax
	xorpd	.LC19(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L542
	movq	%rbx, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L540:
	.cfi_restore_state
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L542:
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L541:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2255:
	.size	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE, .-_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC28:
	.string	"wze::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.align 8
.LC29:
	.string	"wze::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed"
	.align 8
.LC30:
	.string	"wze::engine.render.RenderHitbox(): SDL_RenderFillRect failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderingStageEv
	.type	_ZN3wze6engine6render14RenderingStageEv, @function
_ZN3wze6engine6render14RenderingStageEv:
.LFB2251:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$255, %r8d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rdi), %rax
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L580
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L545
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L547
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L549
	.p2align 4,,10
	.p2align 3
.L582:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L581
.L549:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L582
	movq	%rbx, %r12
	cmpq	%rdx, %rbx
	jnb	.L551
.L550:
	leaq	.L554(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L562:
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L552
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L554:
	.long	.L558-.L554
	.long	.L557-.L554
	.long	.L556-.L554
	.long	.L555-.L554
	.long	.L553-.L554
	.text
	.p2align 4,,10
	.p2align 3
.L547:
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderPresent@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L555:
	.cfi_restore_state
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rbp), %rdx
.L552:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L561
.L583:
	movq	40(%rbp), %rax
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L556:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rbp), %rdx
	cmpq	%rdx, %rbx
	jb	.L583
	.p2align 4,,10
	.p2align 3
.L561:
	testq	%r12, %r12
	je	.L547
	movq	40(%rbp), %rax
.L551:
	xorl	%ebx, %ebx
	leaq	.L566(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L573:
	cmpq	%rdx, %rbx
	jnb	.L584
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L564
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L566:
	.long	.L570-.L566
	.long	.L569-.L566
	.long	.L568-.L566
	.long	.L567-.L566
	.long	.L565-.L566
	.text
	.p2align 4,,10
	.p2align 3
.L557:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L553:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L571
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L572
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rbp), %rdx
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L558:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L567:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
.L564:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L547
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	jmp	.L573
	.p2align 4,,10
	.p2align 3
.L568:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L569:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L565:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L571
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L572
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L570:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L581:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L550
.L584:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L571:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L572:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L545:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L580:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2251:
	.size	_ZN3wze6engine6render14RenderingStageEv, .-_ZN3wze6engine6render14RenderingStageEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render6UpdateEv
	.type	_ZN3wze6engine6render6UpdateEv, @function
_ZN3wze6engine6render6UpdateEv:
.LFB2244:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	call	_ZN3wze6engine6render14SelectionStageEv
	movq	%rbx, %rdi
	call	_ZN3wze6engine6render13OrderingStageEv
	movq	%rbx, %rdi
	call	_ZN3wze6engine6render14RenderingStageEv
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZN3wze6engine6render6UpdateEv, .-_ZN3wze6engine6render6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE, @function
_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE:
.LFB2256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$128, %r8d
	movq	%rsi, %rbx
	movl	$255, %esi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L595
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L596
	testq	%rbx, %rbx
	je	.L590
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L590:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L595:
	.cfi_restore_state
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L596:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2256:
	.size	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE, .-_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	-755914244
	.long	1063281229
	.align 8
.LC6:
	.long	-350469331
	.long	1059731170
	.align 8
.LC7:
	.long	-350469331
	.long	1058682594
	.align 8
.LC8:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC19:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
