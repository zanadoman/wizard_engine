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
.LFB8359:
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
.LFE8359:
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
.LFB8360:
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
.LFE8360:
	.size	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6renderC2EPS0_
	.type	_ZN3wze6engine6renderC2EPS0_, @function
_ZN3wze6engine6renderC2EPS0_:
.LFB8145:
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
.LFE8145:
	.size	_ZN3wze6engine6renderC2EPS0_, .-_ZN3wze6engine6renderC2EPS0_
	.globl	_ZN3wze6engine6renderC1EPS0_
	.set	_ZN3wze6engine6renderC1EPS0_,_ZN3wze6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2Ev
	.type	_ZN3wze6engine6render5tokenC2Ev, @function
_ZN3wze6engine6render5tokenC2Ev:
.LFB8148:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE8148:
	.size	_ZN3wze6engine6render5tokenC2Ev, .-_ZN3wze6engine6render5tokenC2Ev
	.globl	_ZN3wze6engine6render5tokenC1Ev
	.set	_ZN3wze6engine6render5tokenC1Ev,_ZN3wze6engine6render5tokenC2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB8151:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movl	%edx, 8(%rdi)
	movb	%cl, 24(%rdi)
	movq	%r8, 28(%rdi)
	movq	%r9, 36(%rdi)
	movsd	%xmm0, 16(%rdi)
	ret
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetSamplingStepEv
	.type	_ZN3wze6engine6render15GetSamplingStepEv, @function
_ZN3wze6engine6render15GetSamplingStepEv:
.LFB8153:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6render15GetSamplingStepEv, .-_ZN3wze6engine6render15GetSamplingStepEv
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.render.SetSamplingStep(): SamplingStep must not be NaN\nParams: SamplingStep: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\nParams: SamplingStep: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetSamplingStepEd
	.type	_ZN3wze6engine6render15SetSamplingStepEd, @function
_ZN3wze6engine6render15SetSamplingStepEd:
.LFB8154:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L49
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L50
	movsd	%xmm0, 16(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L49:
	.cfi_restore_state
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L50:
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6render15SetSamplingStepEd, .-_ZN3wze6engine6render15SetSamplingStepEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetBufferSizeKBEv
	.type	_ZN3wze6engine6render15GetBufferSizeKBEv, @function
_ZN3wze6engine6render15GetBufferSizeKBEv:
.LFB8155:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	shrq	$7, %rax
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6render15GetBufferSizeKBEv, .-_ZN3wze6engine6render15GetBufferSizeKBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetBufferSizeKBEt
	.type	_ZN3wze6engine6render15SetBufferSizeKBEt, @function
_ZN3wze6engine6render15SetBufferSizeKBEt:
.LFB8156:
	.cfi_startproc
	salq	$7, %rsi
	andl	$8388480, %esi
	movw	%si, 24(%rdi)
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6render15SetBufferSizeKBEt, .-_ZN3wze6engine6render15SetBufferSizeKBEt
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.render.SelectionStage(): TTF_RenderText_Blended failed"
	.align 8
.LC11:
	.string	"wze::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed"
	.align 8
.LC12:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14SelectionStageEv
	.type	_ZN3wze6engine6render14SelectionStageEv, @function
_ZN3wze6engine6render14SelectionStageEv:
.LFB8158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8158
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
	movq	640(%rax), %rdx
	cmpq	$1, %rdx
	jbe	.L54
	leaq	32(%rdi), %rbx
	movq	$0, (%rsp)
	movl	$1, %ebp
	movq	%rbx, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L186:
	movq	648(%rax), %rcx
	leaq	0(,%rbp,8), %r14
	cmpq	$0, (%rcx,%rbp,8)
	je	.L55
	cmpq	%rdx, %rbp
	jnb	.L290
	movl	$1, %r12d
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L83:
	movq	32(%rdi), %rsi
	leaq	0(,%r12,8), %r13
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L57
	cmpw	$0, 16(%rsi)
	je	.L57
	cmpw	$0, 18(%rsi)
	je	.L57
	cmpb	$0, 23(%rsi)
	je	.L57
	cmpb	$0, 26(%rsi)
	jne	.L295
	.p2align 4,,10
	.p2align 3
.L57:
	addq	$1, %r12
	cmpq	%rdx, %rbp
	jnb	.L290
.L56:
	movq	(%rcx,%r14), %rdi
	cmpq	24(%rdi), %r12
	jb	.L83
	cmpq	%rdx, %rbp
	jnb	.L290
	movl	$1, %r12d
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L110:
	movq	64(%rdi), %rsi
	leaq	0(,%r12,8), %r13
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L85
	cmpw	$0, 16(%rsi)
	je	.L85
	cmpw	$0, 18(%rsi)
	je	.L85
	cmpb	$0, 23(%rsi)
	je	.L85
	cmpb	$0, 37(%rsi)
	je	.L85
	cmpq	$0, 72(%rsi)
	jne	.L296
	.p2align 4,,10
	.p2align 3
.L85:
	addq	$1, %r12
	cmpq	%rdx, %rbp
	jnb	.L290
.L84:
	movq	(%rcx,%r14), %rdi
	cmpq	56(%rdi), %r12
	jb	.L110
	cmpq	%rdx, %rbp
	jnb	.L290
	movl	$1, %r12d
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L138:
	movq	96(%rdi), %rsi
	leaq	0(,%r12,8), %r13
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L112
	cmpw	$0, 16(%rsi)
	je	.L112
	cmpw	$0, 18(%rsi)
	je	.L112
	cmpb	$0, 23(%rsi)
	je	.L112
	cmpb	$0, 37(%rsi)
	je	.L112
	movq	80(%rsi), %r8
	movq	104(%rsi), %r9
	cmpq	96(%rsi), %r8
	jnb	.L297
	cmpq	$0, (%r9,%r8,8)
	jne	.L298
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %r12
	cmpq	%rdx, %rbp
	jnb	.L290
.L111:
	movq	(%rcx,%r14), %rdi
	cmpq	88(%rdi), %r12
	jb	.L138
	cmpq	%rdx, %rbp
	jnb	.L290
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L139:
	movq	(%rcx,%r14), %rcx
	cmpq	120(%rcx), %rbx
	jnb	.L299
.L179:
	movq	128(%rcx), %rcx
	leaq	0(,%rbx,8), %r12
	movq	(%rcx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L300
	addq	$80, %rdi
.LEHB0:
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rcx
	jbe	.L141
	cmpq	%rdx, %rbp
	jnb	.L290
	movq	(%rcx,%r14), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %rbx
	jnb	.L292
	movq	(%rdi,%r12), %rdi
	cmpw	$0, 16(%rdi)
	jne	.L301
.L145:
	movq	(%rcx,%r14), %rcx
	addq	$1, %rbx
	cmpq	120(%rcx), %rbx
	jb	.L179
	.p2align 4,,10
	.p2align 3
.L299:
	cmpb	$0, 152(%rcx)
	jne	.L302
.L55:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L186
	movq	32(%r15), %rbx
	cmpq	%rbx, (%rsp)
	jb	.L303
.L238:
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
.L300:
	.cfi_restore_state
	movq	648(%rax), %rcx
.L141:
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jb	.L139
.L290:
	movq	%rbp, %rsi
.L286:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L288:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L301:
	cmpb	$0, 21(%rdi)
	je	.L145
	cmpb	$0, 37(%rdi)
	je	.L145
	cmpq	$0, 96(%rdi)
	je	.L145
	cmpq	$0, 104(%rdi)
	je	.L304
.L146:
	movsd	.LC9(%rip), %xmm0
	mulsd	224(%rsi), %xmm0
	pxor	%xmm7, %xmm7
	movsd	216(%rsi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	comisd	%xmm2, %xmm7
	ja	.L305
	ucomisd	%xmm1, %xmm2
	jp	.L159
	jne	.L159
	addsd	.LC8(%rip), %xmm1
.L159:
	comisd	%xmm2, %xmm1
	jbe	.L141
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L313:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L283
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r8d
	movd	%xmm3, %esi
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %edi
	testq	%r13, %r13
	jne	.L306
.L166:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r8d, %eax
	js	.L307
.L171:
	cmpq	%r13, 32(%r15)
	je	.L308
.L173:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L309
	movq	(%rsi,%r14), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %rbx
	jnb	.L310
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
	jnb	.L311
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L165:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm4
	movq	648(%rax), %rcx
	comisd	%xmm2, %xmm4
	jbe	.L312
.L177:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L290
	movq	(%rcx,%r14), %rdx
	movq	128(%rdx), %rax
	cmpq	120(%rdx), %rbx
	jnb	.L292
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
	jne	.L313
.L283:
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L307:
	movzwl	10(%r15), %eax
	subl	%ecx, %r8d
	cmpl	%eax, %r8d
	jle	.L171
	sarl	%esi
	movl	%esi, %edx
	addl	%edi, %edx
	jns	.L171
	subl	%esi, %edi
	cmpl	%edi, %eax
	jl	.L283
	cmpq	%r13, 32(%r15)
	jne	.L173
	.p2align 4,,10
	.p2align 3
.L308:
	movzwl	24(%r15), %eax
	movq	56(%rsp), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L306:
	movq	40(%r15), %rdx
	leaq	-1(%r13), %rax
	cmpq	32(%r15), %rax
	jnb	.L314
	movq	(%rdx,%rax,8), %r10
	movq	(%r10), %rax
	movq	%rax, (%rsp)
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %r9
	cmpq	%rdx, %rbp
	jnb	.L290
	movq	(%r9,%r14), %r9
	movq	128(%r9), %r11
	cmpq	120(%r9), %rbx
	jnb	.L292
	movq	(%rsp), %r9
	cmpq	(%r11,%r12), %r9
	jne	.L166
	cmpl	%r8d, 28(%r10)
	jne	.L166
	cmpl	%edi, 32(%r10)
	jne	.L166
	cmpl	36(%r10), %ecx
	jne	.L166
	cmpl	%esi, 40(%r10)
	jne	.L166
	movsd	%xmm2, 16(%r10)
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L312:
	movq	%r13, (%rsp)
	addq	$1, %rbx
	cmpq	%rdx, %rbp
	jb	.L139
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L302:
	movzwl	234(%rcx), %esi
	testw	%si, %si
	je	.L55
	movzwl	236(%rcx), %edi
	testw	%di, %di
	je	.L55
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
	je	.L284
	movq	24(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L180
.L284:
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L305:
	ucomisd	.LC8(%rip), %xmm1
	jp	.L224
	je	.L205
.L224:
	movq	.LC8(%rip), %rsi
	movq	%rsi, %xmm2
	jmp	.L159
.L295:
	movsd	.LC9(%rip), %xmm0
	mulsd	224(%rdi), %xmm0
	movsd	216(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L315
	ucomisd	%xmm1, %xmm2
	jp	.L62
	jne	.L62
	addsd	.LC8(%rip), %xmm1
.L62:
	comisd	%xmm2, %xmm1
	jbe	.L57
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L66:
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%rbx, %rbx
	jne	.L316
.L69:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L317
.L74:
	cmpq	%rbx, 32(%r15)
	je	.L318
.L76:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L319
	movq	(%rsi,%r14), %rsi
	movq	32(%rsi), %rdi
	cmpq	24(%rsi), %r12
	jnb	.L320
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
	jnb	.L279
	movq	%rcx, (%rdi,%rbx,8)
	movq	%rsi, %rbx
.L68:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm5
	movq	648(%rax), %rcx
	comisd	%xmm2, %xmm5
	jbe	.L321
.L81:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L290
	movq	(%rcx,%r14), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %r12
	jnb	.L287
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
	je	.L280
	movl	8(%rsp), %edi
	testl	%edi, %edi
	jne	.L66
.L280:
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L317:
	movzwl	10(%r15), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L74
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L74
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jl	.L280
	cmpq	%rbx, 32(%r15)
	jne	.L76
.L318:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movq	%rbx, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L76
.L316:
	movq	40(%r15), %rdi
	movq	32(%r15), %r9
	leaq	-1(%rbx), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L291
	movq	(%rdi,%r11,8), %r8
	movq	(%r8), %rdi
	movq	%rdi, 16(%rsp)
	movq	(%r15), %rdi
	movq	648(%rdi), %r10
	cmpq	640(%rdi), %rbp
	jnb	.L290
	movq	(%r10,%r14), %rdi
	movq	32(%rdi), %r10
	cmpq	24(%rdi), %r12
	jnb	.L287
	movq	16(%rsp), %rdi
	cmpq	(%r10,%r13), %rdi
	jne	.L69
	cmpl	%esi, 28(%r8)
	jne	.L69
	cmpl	%ecx, 32(%r8)
	jne	.L69
	cmpl	%eax, 36(%r8)
	jne	.L69
	cmpl	%edx, 40(%r8)
	jne	.L69
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L304:
	movl	52(%rsp), %eax
	addq	$80, %rdi
	movb	$-1, %al
	movl	%eax, 52(%rsp)
	call	_ZN3neo6stringclEv@PLT
	movq	(%r15), %rcx
	movq	%rax, %rsi
	movq	648(%rcx), %rax
	cmpq	640(%rcx), %rbp
	jnb	.L290
	movq	(%rax,%r14), %rax
	movq	128(%rax), %rdx
	cmpq	120(%rax), %rbx
	jnb	.L292
	movq	(%rdx,%r12), %rax
	movq	96(%rax), %rdx
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L322
	orl	$-256, 52(%rsp)
	movq	(%rax,%rdx,8), %rdi
	movl	52(%rsp), %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L323
	movq	(%r15), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	(%r15), %rdx
	movq	648(%rdx), %rcx
	cmpq	640(%rdx), %rbp
	jnb	.L290
	movq	(%rcx,%r14), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rbx
	jnb	.L292
	movq	(%rcx,%r12), %rcx
	movq	%rax, 104(%rcx)
	testq	%rax, %rax
	je	.L324
	movzwl	16(%rcx), %eax
	imull	16(%r13), %eax
	movq	%r13, %rdi
	cltd
	idivl	20(%r13)
	movw	%ax, 56(%rcx)
	call	SDL_FreeSurface@PLT
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L290
	movq	(%rcx,%r14), %rsi
	jmp	.L146
.L321:
	movq	%rbx, (%rsp)
	jmp	.L57
.L205:
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L177
.L296:
	movsd	.LC9(%rip), %xmm0
	mulsd	224(%rdi), %xmm0
	movsd	216(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L325
	ucomisd	%xmm1, %xmm2
	jp	.L90
	jne	.L90
	addsd	.LC8(%rip), %xmm1
.L90:
	comisd	%xmm2, %xmm1
	jbe	.L85
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L332:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L281
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%rbx, %rbx
	jne	.L326
.L97:
	sarl	%eax
	movl	%esi, %edi
	addl	%eax, %edi
	js	.L327
.L102:
	cmpq	%rbx, 32(%r15)
	je	.L328
.L104:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movdqa	(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L329
	movq	(%rsi,%r14), %rsi
	movq	64(%rsi), %rdi
	cmpq	56(%rsi), %r12
	jnb	.L330
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
	jnb	.L279
	movq	%rcx, (%rdi,%rbx,8)
	movq	%rsi, %rbx
.L96:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm6
	movq	648(%rax), %rcx
	comisd	%xmm2, %xmm6
	jbe	.L331
.L108:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L290
	movq	(%rcx,%r14), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %r12
	jnb	.L287
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
	jne	.L332
.L281:
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	jmp	.L96
.L327:
	movzwl	10(%r15), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L102
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L102
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L102
	jmp	.L281
.L326:
	movq	40(%r15), %rdi
	movq	32(%r15), %r9
	leaq	-1(%rbx), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L291
	movq	(%rdi,%r11,8), %rdi
	movq	(%r15), %r8
	movq	(%rdi), %r10
	movq	%r10, 16(%rsp)
	movq	648(%r8), %r10
	cmpq	640(%r8), %rbp
	jnb	.L290
	movq	(%r10,%r14), %r8
	movq	64(%r8), %r10
	cmpq	56(%r8), %r12
	jnb	.L287
	movq	16(%rsp), %r8
	cmpq	(%r10,%r13), %r8
	jne	.L97
	cmpl	28(%rdi), %esi
	jne	.L97
	cmpl	%ecx, 32(%rdi)
	jne	.L97
	cmpl	%eax, 36(%rdi)
	jne	.L97
	cmpl	%edx, 40(%rdi)
	jne	.L97
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L298:
	movsd	.LC9(%rip), %xmm0
	mulsd	224(%rdi), %xmm0
	movsd	216(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L333
	ucomisd	%xmm1, %xmm2
	jp	.L118
	jne	.L118
	addsd	.LC8(%rip), %xmm1
.L118:
	comisd	%xmm2, %xmm1
	jbe	.L112
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L340:
	movl	8(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L282
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%rbx, %rbx
	jne	.L334
.L125:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L335
.L130:
	cmpq	%rbx, 32(%r15)
	je	.L336
.L132:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movsd	(%rsp), %xmm2
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rcx
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rsi
	cmpq	%rdx, %rbp
	jnb	.L337
	movq	(%rsi,%r14), %rsi
	movq	96(%rsi), %rdi
	cmpq	88(%rsi), %r12
	jnb	.L338
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
	jnb	.L279
	movq	%rcx, (%rdi,%rbx,8)
	movq	%rsi, %rbx
.L124:
	addsd	16(%r15), %xmm2
	movsd	40(%rsp), %xmm7
	movq	648(%rax), %rcx
	comisd	%xmm2, %xmm7
	jbe	.L339
.L136:
	leaq	80(%rax), %rdi
	cmpq	%rdx, %rbp
	jnb	.L290
	movq	(%rcx,%r14), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %r12
	jnb	.L287
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
	jne	.L340
.L282:
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	jmp	.L124
.L335:
	movzwl	10(%r15), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L130
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L130
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L130
	jmp	.L282
.L334:
	movq	40(%r15), %rdi
	movq	32(%r15), %r9
	leaq	-1(%rbx), %r11
	movq	%rdi, (%rsp)
	cmpq	%r9, %r11
	jnb	.L291
	movq	(%rdi,%r11,8), %rdi
	movq	(%r15), %r8
	movq	(%rdi), %r10
	movq	%r10, 16(%rsp)
	movq	648(%r8), %r10
	cmpq	640(%r8), %rbp
	jnb	.L290
	movq	(%r10,%r14), %r8
	movq	96(%r8), %r10
	cmpq	88(%r8), %r12
	jnb	.L287
	movq	16(%rsp), %r8
	cmpq	(%r10,%r13), %r8
	jne	.L125
	cmpl	%esi, 28(%rdi)
	jne	.L125
	cmpl	%ecx, 32(%rdi)
	jne	.L125
	cmpl	36(%rdi), %eax
	jne	.L125
	cmpl	%edx, 40(%rdi)
	jne	.L125
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r9, %rdi
	movsd	%xmm2, 16(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	16(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L331:
	movq	%rbx, (%rsp)
	jmp	.L85
.L339:
	movq	%rbx, (%rsp)
	jmp	.L112
.L315:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L62
	jne	.L62
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L81
.L328:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movq	%rbx, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L104
.L336:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movq	%rbx, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L132
.L303:
	movq	(%rsp), %rax
	movq	40(%r15), %rdi
	movq	%rax, 32(%r15)
	testq	%rax, %rax
	je	.L189
	leaq	0(,%rax,8), %rsi
	call	realloc@PLT
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	jne	.L238
	movq	(%rsp), %rsi
	leaq	.LC12(%rip), %rdi
	subq	%rsi, %rbx
	movq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L325:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L90
	jne	.L90
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L108
.L333:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L118
	jne	.L118
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %rbx
	movsd	%xmm1, 40(%rsp)
	jmp	.L136
.L180:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ebx
	addl	%edx, %ebx
	js	.L341
.L182:
	movq	(%rsp), %rax
	cmpq	%rax, 32(%r15)
	je	.L342
.L183:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	call	_Znwm@PLT
	movdqa	16(%rsp), %xmm0
	movq	%rax, %rbx
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rcx
	cmpq	%rdx, %rbp
	jnb	.L343
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
	jnb	.L344
	movq	%rbx, (%rsi,%rdi,8)
	movq	%rcx, (%rsp)
	jmp	.L55
.L292:
	movq	%rbx, %rsi
	jmp	.L286
.L54:
	cmpq	$0, 32(%rdi)
	je	.L238
	movq	$0, 32(%rdi)
	movq	40(%rdi), %rdi
.L189:
	call	free@PLT
	movq	$0, 40(%r15)
	jmp	.L238
.L342:
	movq	%rax, %rsi
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rdi
	movaps	%xmm0, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	jmp	.L183
.L341:
	movzwl	10(%r15), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L182
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %eax
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %edx
	sarl	%edx
	movl	%edx, %ebx
	addl	%eax, %ebx
	jns	.L182
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L182
	jmp	.L284
.L287:
	movq	%r12, %rsi
	jmp	.L286
.L323:
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L324:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L291:
	movq	%r11, %rsi
	jmp	.L286
.L319:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB1:
	call	printf@PLT
.LEHE1:
	jmp	.L288
.L344:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rdi
.LEHB2:
	call	printf@PLT
.LEHE2:
	jmp	.L288
.L343:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB3:
	call	printf@PLT
.LEHE3:
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L279:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L288
.L314:
	movq	%rax, %rsi
	jmp	.L286
.L322:
	movq	%rdx, %rsi
	jmp	.L286
.L320:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB5:
	call	printf@PLT
.LEHE5:
	jmp	.L288
.L311:
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB6:
	call	printf@PLT
.LEHE6:
	jmp	.L288
.L310:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB7:
	call	printf@PLT
	jmp	.L288
.L309:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
	call	printf@PLT
.LEHE7:
	jmp	.L288
.L330:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB8:
	call	printf@PLT
.LEHE8:
	jmp	.L288
.L337:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB9:
	call	printf@PLT
	jmp	.L288
.L338:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
	call	printf@PLT
.LEHE9:
	jmp	.L288
.L297:
	movq	%r8, %rsi
	jmp	.L286
.L329:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %rbx
.LEHB10:
	call	printf@PLT
.LEHE10:
	jmp	.L288
.L209:
	movq	%rax, %rbx
	jmp	.L197
.L207:
	movq	%rax, %rbp
	jmp	.L195
.L206:
	movq	%rax, %rbp
	jmp	.L195
.L208:
	movq	%rax, %rbp
	jmp	.L195
.L210:
	movq	%rax, %rbp
	jmp	.L195
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8158-.LLSDACSB8158
.LLSDACSB8158:
	.uleb128 .LEHB0-.LFB8158
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8158
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L206-.LFB8158
	.uleb128 0
	.uleb128 .LEHB2-.LFB8158
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8158
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L210-.LFB8158
	.uleb128 0
	.uleb128 .LEHB4-.LFB8158
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8158
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L206-.LFB8158
	.uleb128 0
	.uleb128 .LEHB6-.LFB8158
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8158
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L209-.LFB8158
	.uleb128 0
	.uleb128 .LEHB8-.LFB8158
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L207-.LFB8158
	.uleb128 0
	.uleb128 .LEHB9-.LFB8158
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L208-.LFB8158
	.uleb128 0
	.uleb128 .LEHB10-.LFB8158
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L207-.LFB8158
	.uleb128 0
.LLSDACSE8158:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8158
	.type	_ZN3wze6engine6render14SelectionStageEv.cold, @function
_ZN3wze6engine6render14SelectionStageEv.cold:
.LFSB8158:
.L197:
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
.L195:
	movq	%rbx, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
	.cfi_endproc
.LFE8158:
	.section	.gcc_except_table
.LLSDAC8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8158-.LLSDACSBC8158
.LLSDACSBC8158:
	.uleb128 .LEHB11-.LCOLDB13
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8158:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6render14SelectionStageEv, .-_ZN3wze6engine6render14SelectionStageEv
	.section	.text.unlikely
	.size	_ZN3wze6engine6render14SelectionStageEv.cold, .-_ZN3wze6engine6render14SelectionStageEv.cold
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.render.OrderByLayerMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.type	_ZN3wze6engine6render17OrderByLayerMergeEyyy, @function
_ZN3wze6engine6render17OrderByLayerMergeEyyy:
.LFB8161:
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
	je	.L347
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L347
	testq	%r15, %r15
	je	.L395
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L371:
	movq	%rax, %rsi
.L353:
	cmpq	%rdx, %rsi
	jnb	.L393
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r14
	jne	.L371
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L368
.L349:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L372:
	movq	%rax, %rsi
.L356:
	cmpq	%rdx, %rsi
	jnb	.L393
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L372
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L358
	xorl	%eax, %eax
	jmp	.L364
	.p2align 4,,10
	.p2align 3
.L396:
	cmpq	%rdx, %rbx
	jnb	.L394
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L366
.L397:
	cmpq	%rbp, %rsi
	jnb	.L391
.L364:
	movq	0(%r13,%rsi,8), %rdi
	movq	(%r12,%rax,8), %r8
	movsd	16(%r8), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L396
	cmpq	%rdx, %rbx
	jnb	.L394
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L397
	.p2align 4,,10
	.p2align 3
.L366:
	cmpq	%rbp, %rsi
	jnb	.L350
.L358:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L370:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L394
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L370
.L350:
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
.L368:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L394
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L391:
	cmpq	%r15, %rax
	jb	.L368
	jmp	.L366
	.p2align 4,,10
	.p2align 3
.L395:
	testq	%rbp, %rbp
	je	.L350
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L349
.L394:
	movq	%rbx, %rsi
.L393:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L347:
	leaq	.LC14(%rip), %rdi
	movq	%r9, %rcx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6render17OrderByLayerMergeEyyy, .-_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12OrderByLayerEyy
	.type	_ZN3wze6engine6render12OrderByLayerEyy, @function
_ZN3wze6engine6render12OrderByLayerEyy:
.LFB8160:
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
	jbe	.L399
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L399
	.p2align 4,,10
	.p2align 3
.L400:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L402:
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
	jb	.L402
	cmpq	%r14, %rbp
	jb	.L400
.L399:
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
.LFE8160:
	.size	_ZN3wze6engine6render12OrderByLayerEyy, .-_ZN3wze6engine6render12OrderByLayerEyy
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.render.OrderByPriorityMerge(): Memory allocation failed\nParams: Left: %llu, Middle: %lld, Right: %lld"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN3wze6engine6render20OrderByPriorityMergeEyyy, @function
_ZN3wze6engine6render20OrderByPriorityMergeEyyy:
.LFB8163:
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
	je	.L410
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L410
	testq	%r15, %r15
	je	.L455
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L416
	.p2align 4,,10
	.p2align 3
.L433:
	movq	%rax, %rsi
.L416:
	cmpq	%rdx, %rsi
	jnb	.L453
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%r14, %rsi
	jne	.L433
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L430
.L412:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L434:
	movq	%rax, %rsi
.L419:
	cmpq	%rdx, %rsi
	jnb	.L453
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L434
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L421
	xorl	%eax, %eax
	jmp	.L426
	.p2align 4,,10
	.p2align 3
.L456:
	cmpq	%rdx, %rbx
	jnb	.L454
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L428
.L457:
	cmpq	%rbp, %rsi
	jnb	.L451
.L426:
	movq	(%r12,%rax,8), %r8
	movq	0(%r13,%rsi,8), %rdi
	movzbl	24(%r8), %r10d
	cmpb	%r10b, 24(%rdi)
	jb	.L456
	cmpq	%rdx, %rbx
	jnb	.L454
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L457
	.p2align 4,,10
	.p2align 3
.L428:
	cmpq	%rbp, %rsi
	jnb	.L413
.L421:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L432:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L454
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L432
.L413:
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
.L430:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L454
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L451:
	cmpq	%r15, %rax
	jb	.L430
	jmp	.L428
	.p2align 4,,10
	.p2align 3
.L455:
	testq	%rbp, %rbp
	je	.L413
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L412
.L454:
	movq	%rbx, %rsi
.L453:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L410:
	leaq	.LC15(%rip), %rdi
	movq	%r9, %rcx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6render20OrderByPriorityMergeEyyy, .-_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15OrderByPriorityEyy
	.type	_ZN3wze6engine6render15OrderByPriorityEyy, @function
_ZN3wze6engine6render15OrderByPriorityEyy:
.LFB8162:
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
	jbe	.L459
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L459
	.p2align 4,,10
	.p2align 3
.L460:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L462:
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
	jb	.L462
	cmpq	%r14, %rbp
	jb	.L460
.L459:
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
.LFE8162:
	.size	_ZN3wze6engine6render15OrderByPriorityEyy, .-_ZN3wze6engine6render15OrderByPriorityEyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13OrderingStageEv
	.type	_ZN3wze6engine6render13OrderingStageEv, @function
_ZN3wze6engine6render13OrderingStageEv:
.LFB8159:
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
	jbe	.L489
	.p2align 4,,10
	.p2align 3
.L469:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L471:
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
	jb	.L471
	cmpq	%r15, %r13
	jb	.L469
	movq	32(%r12), %rdx
	cmpq	$1, %rdx
	jbe	.L489
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L480
	.p2align 4,,10
	.p2align 3
.L474:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rdx, %r13
	jnb	.L499
.L486:
	movq	%r13, %rbp
.L480:
	movq	40(%r12), %rax
	movq	(%rax,%rbp,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, 8(%rsp)
	jnb	.L500
	movq	8(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L488
	je	.L474
.L488:
	cmpq	$1, %rbp
	je	.L501
	cmpq	%r15, 8(%rsp)
	jnb	.L479
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L478:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L477:
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
	jb	.L477
	cmpq	%rbp, %r13
	jb	.L478
	movq	32(%r12), %rdx
.L479:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rdx, %r13
	jb	.L486
.L499:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L489
	.p2align 4,,10
	.p2align 3
.L481:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L483:
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
	jb	.L483
	cmpq	%r13, %rbx
	jb	.L481
.L489:
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
.L501:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L474
.L500:
	movq	8(%rsp), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6render13OrderingStageEv, .-_ZN3wze6engine6render13OrderingStageEv
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC17:
	.string	"wze::engine.render.RenderColor(): SDL_RenderFillRect failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	.type	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE, @function
_ZN3wze6engine6render11RenderColorEPNS1_5tokenE:
.LFB8165:
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
	jne	.L506
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L507
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
.L506:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L507:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE, .-_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC19:
	.string	"wze::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC21:
	.string	"wze::engine.render.RenderTexture(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	.type	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE, @function
_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE:
.LFB8166:
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
	movq	680(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	672(%rdx), %rsi
	jnb	.L517
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L518
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	72(%rdx), %rsi
	movq	680(%rax), %rdx
	cmpq	672(%rax), %rsi
	jnb	.L517
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L519
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	leaq	28(%r12), %rcx
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rsi
	xorpd	.LC20(%rip), %xmm0
	movq	680(%rax), %rdx
	cmpq	672(%rax), %rsi
	jnb	.L517
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L520
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
.L517:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L520:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L519:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L518:
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE, .-_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC23:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC24:
	.string	"wze::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.type	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE, @function
_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE:
.LFB8167:
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
	jnb	.L534
	movq	(%r9,%rsi,8), %rsi
	movq	680(%rdx), %rax
	cmpq	672(%rdx), %rsi
	jnb	.L534
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L535
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	23(%rax), %ecx
	movq	80(%rax), %rsi
	movq	104(%rax), %rdi
	cmpq	96(%rax), %rsi
	jnb	.L534
	movq	(%rdi,%rsi,8), %rsi
	movq	680(%rdx), %rax
	cmpq	672(%rdx), %rsi
	jnb	.L534
	movq	(%rax,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L536
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	%bl, %r9d
	leaq	28(%rbp), %rdi
	movsd	24(%rax), %xmm0
	movq	80(%rax), %rsi
	xorpd	.LC20(%rip), %xmm0
	movq	104(%rax), %rcx
	cmpq	96(%rax), %rsi
	jnb	.L534
	movq	(%rcx,%rsi,8), %rsi
	movq	680(%rdx), %rax
	cmpq	672(%rdx), %rsi
	jnb	.L534
	movq	(%rax,%rsi,8), %rsi
	movq	16(%rdx), %rax
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L537
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
.L534:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L537:
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L536:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L535:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE, .-_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"wze::engine.render.RenderText(): SDL_SetTextureColorMod failed"
	.align 8
.LC26:
	.string	"wze::engine.render.RenderText(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC27:
	.string	"wze::engine.render.RenderText(): SDL_RenderCopyEx failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	.type	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE, @function
_ZN3wze6engine6render10RenderTextEPNS1_5tokenE:
.LFB8168:
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
	jne	.L543
	movq	(%rbx), %rax
	movzbl	21(%rax), %esi
	movq	104(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L544
	movq	(%rbx), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	28(%rbx), %rcx
	movzbl	%bpl, %r9d
	movsd	24(%rax), %xmm0
	movq	104(%rax), %rsi
	movq	(%r12), %rax
	xorpd	.LC20(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L545
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
.L543:
	.cfi_restore_state
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L545:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L544:
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE, .-_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"wze::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC29:
	.string	"wze::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.align 8
.LC30:
	.string	"wze::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed"
	.align 8
.LC31:
	.string	"wze::engine.render.RenderHitbox(): SDL_RenderFillRect failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderingStageEv
	.type	_ZN3wze6engine6render14RenderingStageEv, @function
_ZN3wze6engine6render14RenderingStageEv:
.LFB8164:
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
	jne	.L583
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L548
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L550
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L585:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L584
.L552:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L585
	movq	%rbx, %r12
	cmpq	%rdx, %rbx
	jnb	.L554
.L553:
	leaq	.L557(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L565:
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L555
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L557:
	.long	.L561-.L557
	.long	.L560-.L557
	.long	.L559-.L557
	.long	.L558-.L557
	.long	.L556-.L557
	.text
	.p2align 4,,10
	.p2align 3
.L550:
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
.L558:
	.cfi_restore_state
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rbp), %rdx
.L555:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L564
.L586:
	movq	40(%rbp), %rax
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L559:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rbp), %rdx
	cmpq	%rdx, %rbx
	jb	.L586
	.p2align 4,,10
	.p2align 3
.L564:
	testq	%r12, %r12
	je	.L550
	movq	40(%rbp), %rax
.L554:
	xorl	%ebx, %ebx
	leaq	.L569(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L576:
	cmpq	%rdx, %rbx
	jnb	.L587
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L567
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L569:
	.long	.L573-.L569
	.long	.L572-.L569
	.long	.L571-.L569
	.long	.L570-.L569
	.long	.L568-.L569
	.text
	.p2align 4,,10
	.p2align 3
.L560:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L556:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L574
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L575
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rbp), %rdx
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L561:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L570:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
.L567:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L550
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	jmp	.L576
	.p2align 4,,10
	.p2align 3
.L571:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L567
	.p2align 4,,10
	.p2align 3
.L572:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L567
	.p2align 4,,10
	.p2align 3
.L568:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L574
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L575
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	jmp	.L567
	.p2align 4,,10
	.p2align 3
.L573:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L567
	.p2align 4,,10
	.p2align 3
.L584:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L553
.L587:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L574:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L575:
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L548:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L583:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6render14RenderingStageEv, .-_ZN3wze6engine6render14RenderingStageEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render6UpdateEv
	.type	_ZN3wze6engine6render6UpdateEv, @function
_ZN3wze6engine6render6UpdateEv:
.LFB8157:
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
.LFE8157:
	.size	_ZN3wze6engine6render6UpdateEv, .-_ZN3wze6engine6render6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE, @function
_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE:
.LFB8169:
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
	jne	.L598
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L599
	testq	%rbx, %rbx
	je	.L593
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L593:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L598:
	.cfi_restore_state
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L599:
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE, .-_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
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
.LC20:
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
