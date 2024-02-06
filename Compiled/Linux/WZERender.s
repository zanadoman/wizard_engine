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
.LFB8358:
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
.LFE8358:
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
.LFB8359:
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
.LFE8359:
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
	movq	%rsi, %rax
	salq	$7, %rax
	andl	$8388480, %eax
	movw	%ax, 24(%rdi)
	salq	$48, %rax
	shrq	$55, %rax
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6render15SetBufferSizeKBEt, .-_ZN3wze6engine6render15SetBufferSizeKBEt
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
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
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	(%rdi), %rdx
	movq	640(%rdx), %rax
	cmpq	$1, %rax
	jbe	.L54
	movl	$1, %ebx
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L172:
	movq	648(%rdx), %rcx
	leaq	0(,%rbx,8), %r12
	cmpq	$0, (%rcx,%rbx,8)
	je	.L55
	cmpq	%rax, %rbx
	jnb	.L272
	movl	$1, %ebp
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L83:
	movq	32(%rdi), %rsi
	leaq	0(,%rbp,8), %r15
	movq	(%rsi,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L57
	cmpw	$0, 16(%rsi)
	je	.L57
	cmpw	$0, 18(%rsi)
	je	.L57
	cmpb	$0, 23(%rsi)
	je	.L57
	cmpb	$0, 26(%rsi)
	jne	.L275
	.p2align 4,,10
	.p2align 3
.L57:
	addq	$1, %rbp
	cmpq	%rax, %rbx
	jnb	.L272
.L56:
	movq	(%rcx,%r12), %rdi
	cmpq	24(%rdi), %rbp
	jb	.L83
	cmpq	%rax, %rbx
	jnb	.L272
	movl	$1, %ebp
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L110:
	movq	64(%rdi), %rsi
	leaq	0(,%rbp,8), %r15
	movq	(%rsi,%rbp,8), %rsi
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
	jne	.L276
	.p2align 4,,10
	.p2align 3
.L85:
	addq	$1, %rbp
	cmpq	%rax, %rbx
	jnb	.L272
.L84:
	movq	(%rcx,%r12), %rdi
	cmpq	56(%rdi), %rbp
	jb	.L110
	cmpq	%rax, %rbx
	jnb	.L272
	movl	$1, %ebp
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L138:
	movq	96(%rdi), %rsi
	leaq	0(,%rbp,8), %r15
	movq	(%rsi,%rbp,8), %rsi
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
	jnb	.L277
	cmpq	$0, (%r9,%r8,8)
	jne	.L278
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %rbp
	cmpq	%rax, %rbx
	jnb	.L272
.L111:
	movq	(%rcx,%r12), %rdi
	cmpq	88(%rdi), %rbp
	jb	.L138
	cmpq	%rax, %rbx
	jnb	.L272
	movl	$1, %ebp
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L165:
	movq	128(%rdi), %rsi
	leaq	0(,%rbp,8), %r15
	movq	(%rsi,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L140
	cmpw	$0, 56(%rsi)
	je	.L140
	cmpq	$0, 64(%rsi)
	je	.L140
	cmpb	$0, 19(%rsi)
	je	.L140
	cmpb	$0, 37(%rsi)
	je	.L140
	cmpq	$0, 112(%rsi)
	jne	.L279
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$1, %rbp
	cmpq	%rax, %rbx
	jnb	.L272
.L139:
	movq	(%rcx,%r12), %rdi
	cmpq	120(%rdi), %rbp
	jb	.L165
	cmpb	$0, 184(%rdi)
	jne	.L280
.L55:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L172
	movq	32(%r13), %rbx
	cmpq	%rbx, %r14
	jb	.L281
.L222:
	addq	$104, %rsp
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
.L280:
	.cfi_restore_state
	movzwl	266(%rdi), %ecx
	testw	%cx, %cx
	je	.L55
	movzwl	268(%rdi), %esi
	testw	%si, %si
	je	.L55
	movsd	200(%rdi), %xmm0
	movzwl	%si, %eax
	movsd	248(%rdi), %xmm2
	movzwl	%cx, %esi
	movsd	208(%rdi), %xmm1
	leaq	80(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
.LEHB0:
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %eax
	movdqa	(%rsp), %xmm0
	testl	%eax, %eax
	je	.L266
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L166
.L266:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L275:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%rdi), %xmm0
	movsd	248(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L282
	ucomisd	%xmm2, %xmm1
	jp	.L62
	jne	.L62
	addsd	.LC8(%rip), %xmm1
.L62:
	comisd	%xmm2, %xmm1
	jbe	.L57
	movsd	%xmm1, 32(%rsp)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L288:
	movl	8(%rsp), %edi
	testl	%edi, %edi
	je	.L262
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%r14, %r14
	jne	.L283
.L69:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L284
.L74:
	cmpq	%r14, 32(%r13)
	je	.L285
.L76:
	movl	$48, %edi
	movsd	%xmm2, 24(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	24(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L286
	movq	(%rsi,%r12), %rsi
	movq	32(%rsi), %rdi
	cmpq	24(%rsi), %rbp
	jnb	.L287
	movq	(%rdi,%r15), %rsi
	movzbl	25(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r14), %rsi
	movl	$0, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r13), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r13), %r14
	jnb	.L261
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L68:
	addsd	16(%r13), %xmm2
	movsd	32(%rsp), %xmm4
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm4
	jbe	.L57
.L81:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L272
	movq	(%rcx,%r12), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %rbp
	jnb	.L269
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 24(%rsp)
	movsd	32(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	40(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	24(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L288
.L262:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L279:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%rdi), %xmm0
	movsd	248(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L289
	ucomisd	%xmm2, %xmm1
	jp	.L145
	jne	.L145
	addsd	.LC8(%rip), %xmm1
.L145:
	comisd	%xmm2, %xmm1
	jbe	.L140
	movsd	%xmm1, 32(%rsp)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L295:
	movl	8(%rsp), %edx
	testl	%edx, %edx
	je	.L265
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %esi
	movd	%xmm3, %edx
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %eax
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %ecx
	testq	%r14, %r14
	jne	.L290
.L152:
	sarl	%eax
	movl	%eax, %edi
	addl	%esi, %edi
	js	.L291
.L157:
	cmpq	32(%r13), %r14
	je	.L292
.L159:
	movl	$48, %edi
	movsd	%xmm2, 24(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	24(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L293
	movq	(%rsi,%r12), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %rbp
	jnb	.L294
	movq	(%rdi,%r15), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r14), %rsi
	movl	$3, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r13), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r13), %r14
	jnb	.L261
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L151:
	addsd	16(%r13), %xmm2
	movsd	32(%rsp), %xmm5
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm5
	jbe	.L140
.L163:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L272
	movq	(%rcx,%r12), %rax
	movq	128(%rax), %rdx
	cmpq	120(%rax), %rbp
	jnb	.L269
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 24(%rsp)
	movsd	40(%rax), %xmm0
	movzwl	64(%rax), %edx
	movzwl	56(%rax), %esi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	24(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L295
.L265:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L151
.L282:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L62
	jne	.L62
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L81
.L289:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L145
	jne	.L145
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L284:
	movzwl	10(%r13), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L74
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L74
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L74
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L283:
	movq	40(%r13), %rdi
	movq	32(%r13), %r8
	leaq	-1(%r14), %r11
	movq	%rdi, (%rsp)
	cmpq	%r8, %r11
	jnb	.L274
	movq	(%rdi,%r11,8), %r9
	movq	(%r9), %rdi
	movq	%rdi, 24(%rsp)
	movq	0(%r13), %rdi
	movq	648(%rdi), %r10
	cmpq	640(%rdi), %rbx
	jnb	.L272
	movq	(%r10,%r12), %rdi
	movq	32(%rdi), %r10
	cmpq	24(%rdi), %rbp
	jnb	.L269
	movq	24(%rsp), %rdi
	cmpq	(%r10,%r15), %rdi
	jne	.L69
	cmpl	%esi, 28(%r9)
	jne	.L69
	cmpl	%ecx, 32(%r9)
	jne	.L69
	cmpl	%eax, 36(%r9)
	jne	.L69
	cmpl	%edx, 40(%r9)
	jne	.L69
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r8, %rdi
	movsd	%xmm2, 24(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	24(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L291:
	movzwl	10(%r13), %edi
	subl	%eax, %esi
	cmpl	%edi, %esi
	jle	.L157
	sarl	%edx
	movl	%edx, %eax
	addl	%ecx, %eax
	jns	.L157
	subl	%edx, %ecx
	cmpl	%ecx, %edi
	jge	.L157
	jmp	.L265
	.p2align 4,,10
	.p2align 3
.L290:
	movq	40(%r13), %rdi
	movq	32(%r13), %r8
	leaq	-1(%r14), %r11
	movq	%rdi, (%rsp)
	cmpq	%r8, %r11
	jnb	.L274
	movq	(%rdi,%r11,8), %r9
	movq	(%r9), %rdi
	movq	%rdi, 24(%rsp)
	movq	0(%r13), %rdi
	movq	648(%rdi), %r10
	cmpq	640(%rdi), %rbx
	jnb	.L272
	movq	(%r10,%r12), %rdi
	movq	128(%rdi), %r10
	cmpq	120(%rdi), %rbp
	jnb	.L269
	movq	24(%rsp), %rdi
	cmpq	(%r10,%r15), %rdi
	jne	.L152
	cmpl	%esi, 28(%r9)
	jne	.L152
	cmpl	%ecx, 32(%r9)
	jne	.L152
	cmpl	%eax, 36(%r9)
	jne	.L152
	cmpl	%edx, 40(%r9)
	jne	.L152
	movq	(%rsp), %rsi
	movq	%r11, %rdx
	movq	%r8, %rdi
	movsd	%xmm2, 24(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	24(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L265
	.p2align 4,,10
	.p2align 3
.L285:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 24(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	24(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L292:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 24(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	24(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L276:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%rdi), %xmm0
	movsd	248(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L296
	ucomisd	%xmm1, %xmm2
	jp	.L90
	jne	.L90
	addsd	.LC8(%rip), %xmm1
.L90:
	comisd	%xmm2, %xmm1
	jbe	.L85
	movsd	%xmm1, 32(%rsp)
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L301:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L263
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r14, %r14
	jne	.L97
.L103:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L297
.L98:
	cmpq	%r14, 32(%r13)
	je	.L298
.L104:
	movl	$48, %edi
	movsd	%xmm2, 24(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	24(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L299
	movq	(%rsi,%r12), %rsi
	movq	64(%rsi), %rdi
	cmpq	56(%rsi), %rbp
	jnb	.L300
	movq	(%rdi,%r15), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r14), %rsi
	movl	$1, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r13), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r13), %r14
	jnb	.L261
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L96:
	addsd	16(%r13), %xmm2
	movsd	32(%rsp), %xmm6
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm6
	jbe	.L85
.L108:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L272
	movq	(%rcx,%r12), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %rbp
	jnb	.L269
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 24(%rsp)
	movzwl	16(%rax), %esi
	movsd	40(%rax), %xmm0
	movzwl	18(%rax), %edx
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	24(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %esi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%esi, %esi
	jne	.L301
.L263:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L96
.L278:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%rdi), %xmm0
	movsd	248(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L302
	ucomisd	%xmm1, %xmm2
	jp	.L118
	jne	.L118
	addsd	.LC8(%rip), %xmm1
.L118:
	comisd	%xmm2, %xmm1
	jbe	.L112
	movsd	%xmm1, 32(%rsp)
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L307:
	movl	8(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L264
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r14, %r14
	jne	.L125
.L131:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L303
.L126:
	cmpq	%r14, 32(%r13)
	je	.L304
.L132:
	movl	$48, %edi
	movsd	%xmm2, 24(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	24(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L305
	movq	(%rsi,%r12), %rsi
	movq	96(%rsi), %rdi
	cmpq	88(%rsi), %rbp
	jnb	.L306
	movq	(%rdi,%r15), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r14), %rsi
	movl	$2, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r13), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r13), %r14
	jnb	.L261
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L124:
	addsd	16(%r13), %xmm2
	movsd	32(%rsp), %xmm7
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm7
	jbe	.L112
.L136:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L272
	movq	(%rcx,%r12), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %rbp
	jnb	.L269
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 24(%rsp)
	movsd	40(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	24(%rsp), %xmm2
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movq	8(%rsp), %rax
	movdqa	(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L307
.L264:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L124
.L281:
	movq	%r14, 32(%r13)
	movq	40(%r13), %rdi
	testq	%r14, %r14
	je	.L175
	leaq	0(,%r14,8), %rsi
	call	realloc@PLT
	movq	%rax, 40(%r13)
	testq	%rax, %rax
	jne	.L222
	movq	%rbx, %rdx
	leaq	.LC10(%rip), %rdi
	movq	%r14, %rsi
	subq	%r14, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L296:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L90
	jne	.L90
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L108
.L302:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L118
	jne	.L118
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 32(%rsp)
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L297:
	movzwl	10(%r13), %eax
	subl	%ecx, %r11d
	cmpl	%eax, %r11d
	jle	.L98
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L98
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jge	.L98
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L303:
	movzwl	10(%r13), %eax
	subl	%ecx, %r11d
	cmpl	%eax, %r11d
	jle	.L126
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L126
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jge	.L126
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L97:
	movq	32(%r13), %rax
	leaq	-1(%r14), %r10
	movq	40(%r13), %rsi
	movq	%rax, 24(%rsp)
	cmpq	%rax, %r10
	jnb	.L273
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	0(%r13), %rax
	movq	648(%rax), %rdi
	cmpq	640(%rax), %rbx
	jnb	.L272
	movq	(%rdi,%r12), %rax
	movq	64(%rax), %rdi
	cmpq	56(%rax), %rbp
	jnb	.L269
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L103
	cmpl	%r11d, 28(%rdx)
	jne	.L103
	cmpl	%r9d, 32(%rdx)
	jne	.L103
	cmpl	%ecx, 36(%rdx)
	jne	.L103
	movq	24(%rsp), %rdi
	movq	%r10, %rdx
	movl	%ecx, 64(%rsp)
	movl	%r8d, 44(%rsp)
	movq	%r10, (%rsp)
	movsd	%xmm2, 88(%rsp)
	movd	%xmm0, 84(%rsp)
	movaps	%xmm0, 48(%rsp)
	movd	%xmm3, 80(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	44(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movdqa	48(%rsp), %xmm0
	movl	64(%rsp), %ecx
	movl	80(%rsp), %r9d
	cmpl	%r8d, 40(%rax)
	movl	84(%rsp), %r11d
	movsd	88(%rsp), %xmm2
	jne	.L103
	movq	40(%r13), %rsi
	movq	32(%r13), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L125:
	movq	32(%r13), %rax
	leaq	-1(%r14), %r10
	movq	40(%r13), %rsi
	movq	%rax, 24(%rsp)
	cmpq	%rax, %r10
	jnb	.L273
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	0(%r13), %rax
	movq	648(%rax), %rdi
	cmpq	640(%rax), %rbx
	jnb	.L272
	movq	(%rdi,%r12), %rax
	movq	96(%rax), %rdi
	cmpq	88(%rax), %rbp
	jnb	.L269
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L131
	cmpl	%r11d, 28(%rdx)
	jne	.L131
	cmpl	%r9d, 32(%rdx)
	jne	.L131
	cmpl	%ecx, 36(%rdx)
	jne	.L131
	movq	24(%rsp), %rdi
	movq	%r10, %rdx
	movl	%ecx, 84(%rsp)
	movl	%r8d, 44(%rsp)
	movq	%r10, (%rsp)
	movsd	%xmm2, 88(%rsp)
	movd	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movd	%xmm3, 48(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	44(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movl	48(%rsp), %r9d
	movdqa	64(%rsp), %xmm0
	movl	80(%rsp), %r11d
	cmpl	40(%rax), %r8d
	movl	84(%rsp), %ecx
	movsd	88(%rsp), %xmm2
	jne	.L131
	movq	40(%r13), %rsi
	movq	32(%r13), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L298:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 24(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	24(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L104
.L304:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 24(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	24(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L132
.L54:
	cmpq	$0, 32(%rdi)
	je	.L222
	movq	$0, 32(%rdi)
	movq	40(%rdi), %rdi
.L175:
	call	free@PLT
	movq	$0, 40(%r13)
	jmp	.L222
.L272:
	movq	%rbx, %rsi
.L268:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L270:
	movl	$1, %edi
	call	exit@PLT
.L166:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L308
.L168:
	cmpq	%r14, 32(%r13)
	je	.L309
.L169:
	movl	$48, %edi
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rbp
	movq	640(%rdx), %rax
	movq	648(%rdx), %rcx
	cmpq	%rax, %rbx
	jnb	.L310
	movq	(%rcx,%r12), %rcx
	movq	40(%r13), %rsi
	movl	$4, 8(%rbp)
	movq	$0x000000000, 16(%rbp)
	movq	%rcx, 0(%rbp)
	leaq	1(%r14), %rcx
	movb	$-1, 24(%rbp)
	movups	%xmm0, 28(%rbp)
	cmpq	32(%r13), %r14
	jnb	.L261
	movq	%rbp, (%rsi,%r14,8)
	movq	%rcx, %r14
	jmp	.L55
.L308:
	movzwl	10(%r13), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L168
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %eax
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L168
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L168
	jmp	.L266
.L309:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	(%rsp), %xmm0
	jmp	.L169
.L269:
	movq	%rbp, %rsi
	jmp	.L268
.L261:
	movq	%r14, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L270
.L273:
	movq	%r10, %rsi
	jmp	.L268
.L300:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB1:
	call	printf@PLT
	jmp	.L270
.L299:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
	call	printf@PLT
.LEHE1:
	jmp	.L270
.L306:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB2:
	call	printf@PLT
	jmp	.L270
.L305:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
	call	printf@PLT
.LEHE2:
	jmp	.L270
.L310:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB3:
	call	printf@PLT
.LEHE3:
	jmp	.L270
.L287:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L270
.L294:
	movq	%rbp, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB5:
	call	printf@PLT
.LEHE5:
	jmp	.L270
.L286:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB6:
	call	printf@PLT
.LEHE6:
	jmp	.L270
.L274:
	movq	%r11, %rsi
	jmp	.L268
.L293:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB7:
	call	printf@PLT
.LEHE7:
	jmp	.L270
.L277:
	movq	%r8, %rsi
	jmp	.L268
.L191:
	movq	%rax, %rbx
	jmp	.L182
.L192:
	movq	%rax, %rbx
	jmp	.L182
.L195:
	movq	%rax, %rbx
	jmp	.L178
.L194:
	movq	%rax, %rbx
	jmp	.L182
.L193:
	movq	%rax, %rbx
	jmp	.L182
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
	.uleb128 .L192-.LFB8158
	.uleb128 0
	.uleb128 .LEHB2-.LFB8158
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L193-.LFB8158
	.uleb128 0
	.uleb128 .LEHB3-.LFB8158
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L195-.LFB8158
	.uleb128 0
	.uleb128 .LEHB4-.LFB8158
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L191-.LFB8158
	.uleb128 0
	.uleb128 .LEHB5-.LFB8158
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L194-.LFB8158
	.uleb128 0
	.uleb128 .LEHB6-.LFB8158
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L191-.LFB8158
	.uleb128 0
	.uleb128 .LEHB7-.LFB8158
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L194-.LFB8158
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
.L178:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbp, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.L182:
	movq	%r14, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
	.cfi_endproc
.LFE8158:
	.section	.gcc_except_table
.LLSDAC8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8158-.LLSDACSBC8158
.LLSDACSBC8158:
	.uleb128 .LEHB8-.LCOLDB11
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC8158:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6render14SelectionStageEv, .-_ZN3wze6engine6render14SelectionStageEv
	.section	.text.unlikely
	.size	_ZN3wze6engine6render14SelectionStageEv.cold, .-_ZN3wze6engine6render14SelectionStageEv.cold
.LCOLDE11:
	.text
.LHOTE11:
	.section	.rodata.str1.8
	.align 8
.LC12:
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
	je	.L313
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L313
	testq	%r15, %r15
	je	.L361
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L319
	.p2align 4,,10
	.p2align 3
.L337:
	movq	%rax, %rsi
.L319:
	cmpq	%rdx, %rsi
	jnb	.L359
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r14
	jne	.L337
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L334
.L315:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L322
	.p2align 4,,10
	.p2align 3
.L338:
	movq	%rax, %rsi
.L322:
	cmpq	%rdx, %rsi
	jnb	.L359
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L338
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L324
	xorl	%eax, %eax
	jmp	.L330
	.p2align 4,,10
	.p2align 3
.L362:
	cmpq	%rdx, %rbx
	jnb	.L360
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L332
.L363:
	cmpq	%rbp, %rsi
	jnb	.L357
.L330:
	movq	0(%r13,%rsi,8), %rdi
	movq	(%r12,%rax,8), %r8
	movsd	16(%r8), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L362
	cmpq	%rdx, %rbx
	jnb	.L360
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L363
	.p2align 4,,10
	.p2align 3
.L332:
	cmpq	%rbp, %rsi
	jnb	.L316
.L324:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L336:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L360
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L336
.L316:
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
.L334:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L360
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L357:
	cmpq	%r15, %rax
	jb	.L334
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L361:
	testq	%rbp, %rbp
	je	.L316
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L315
.L360:
	movq	%rbx, %rsi
.L359:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L313:
	leaq	.LC12(%rip), %rdi
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
	jbe	.L365
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L365
	.p2align 4,,10
	.p2align 3
.L366:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L368:
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
	jb	.L368
	cmpq	%r14, %rbp
	jb	.L366
.L365:
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
.LC13:
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
	je	.L376
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L376
	testq	%r15, %r15
	je	.L421
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L382
	.p2align 4,,10
	.p2align 3
.L399:
	movq	%rax, %rsi
.L382:
	cmpq	%rdx, %rsi
	jnb	.L419
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%r14, %rsi
	jne	.L399
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L396
.L378:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L400:
	movq	%rax, %rsi
.L385:
	cmpq	%rdx, %rsi
	jnb	.L419
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L400
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L387
	xorl	%eax, %eax
	jmp	.L392
	.p2align 4,,10
	.p2align 3
.L422:
	cmpq	%rdx, %rbx
	jnb	.L420
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L394
.L423:
	cmpq	%rbp, %rsi
	jnb	.L417
.L392:
	movq	(%r12,%rax,8), %r8
	movq	0(%r13,%rsi,8), %rdi
	movzbl	24(%r8), %r10d
	cmpb	%r10b, 24(%rdi)
	jb	.L422
	cmpq	%rdx, %rbx
	jnb	.L420
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L423
	.p2align 4,,10
	.p2align 3
.L394:
	cmpq	%rbp, %rsi
	jnb	.L379
.L387:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L398:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L420
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L398
.L379:
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
.L396:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L420
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L417:
	cmpq	%r15, %rax
	jb	.L396
	jmp	.L394
	.p2align 4,,10
	.p2align 3
.L421:
	testq	%rbp, %rbp
	je	.L379
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L378
.L420:
	movq	%rbx, %rsi
.L419:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L376:
	leaq	.LC13(%rip), %rdi
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
	jbe	.L425
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L425
	.p2align 4,,10
	.p2align 3
.L426:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L428:
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
	jb	.L428
	cmpq	%r14, %rbp
	jb	.L426
.L425:
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
	jbe	.L455
	.p2align 4,,10
	.p2align 3
.L435:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L437:
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
	jb	.L437
	cmpq	%r15, %r13
	jb	.L435
	movq	32(%r12), %rdx
	cmpq	$1, %rdx
	jbe	.L455
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L446
	.p2align 4,,10
	.p2align 3
.L440:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rdx, %r13
	jnb	.L465
.L452:
	movq	%r13, %rbp
.L446:
	movq	40(%r12), %rax
	movq	(%rax,%rbp,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, 8(%rsp)
	jnb	.L466
	movq	8(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L454
	je	.L440
.L454:
	cmpq	$1, %rbp
	je	.L467
	cmpq	%r15, 8(%rsp)
	jnb	.L445
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L444:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L443:
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
	jb	.L443
	cmpq	%rbp, %r13
	jb	.L444
	movq	32(%r12), %rdx
.L445:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rdx, %r13
	jb	.L452
.L465:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L455
	.p2align 4,,10
	.p2align 3
.L447:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L449:
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
	jb	.L449
	cmpq	%r13, %rbx
	jb	.L447
.L455:
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
.L467:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L440
.L466:
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
.LC14:
	.string	"wze::engine.render.RenderColor(): SDL_SetRenderDrawColor failed"
	.align 8
.LC15:
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
	jne	.L472
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L473
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
.L472:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L473:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE, .-_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.render.RenderTexture(): SDL_SetTextureColorMod failed"
	.align 8
.LC17:
	.string	"wze::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC19:
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
	movq	712(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	704(%rdx), %rsi
	jnb	.L483
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L484
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	72(%rdx), %rsi
	movq	712(%rax), %rdx
	cmpq	704(%rax), %rsi
	jnb	.L483
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L485
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	leaq	28(%r12), %rcx
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rsi
	xorpd	.LC18(%rip), %xmm0
	movq	712(%rax), %rdx
	cmpq	704(%rax), %rsi
	jnb	.L483
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L486
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
.L483:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L486:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L485:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L484:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE, .-_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed"
	.align 8
.LC21:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC22:
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
	jnb	.L500
	movq	(%r9,%rsi,8), %rsi
	movq	712(%rdx), %rax
	cmpq	704(%rdx), %rsi
	jnb	.L500
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L501
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	23(%rax), %ecx
	movq	80(%rax), %rsi
	movq	104(%rax), %rdi
	cmpq	96(%rax), %rsi
	jnb	.L500
	movq	(%rdi,%rsi,8), %rsi
	movq	712(%rdx), %rax
	cmpq	704(%rdx), %rsi
	jnb	.L500
	movq	(%rax,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L502
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	%bl, %r9d
	leaq	28(%rbp), %rdi
	movsd	24(%rax), %xmm0
	movq	80(%rax), %rsi
	xorpd	.LC18(%rip), %xmm0
	movq	104(%rax), %rcx
	cmpq	96(%rax), %rsi
	jnb	.L500
	movq	(%rcx,%rsi,8), %rsi
	movq	712(%rdx), %rax
	cmpq	704(%rdx), %rsi
	jnb	.L500
	movq	(%rax,%rsi,8), %rsi
	movq	16(%rdx), %rax
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L503
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
.L500:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L503:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L502:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L501:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE, .-_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"wze::engine.render.RenderText(): SDL_SetTextureColorMod failed"
	.align 8
.LC24:
	.string	"wze::engine.render.RenderText(): SDL_SetTextureAlphaMod failed"
	.align 8
.LC25:
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
	movzbl	18(%rax), %ecx
	movzbl	17(%rax), %edx
	movzbl	16(%rax), %esi
	negl	%r9d
	movq	112(%rax), %rdi
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movl	%r9d, %ebp
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L509
	movq	(%rbx), %rax
	movzbl	19(%rax), %esi
	movq	112(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L510
	movq	(%rbx), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	28(%rbx), %rcx
	movzbl	%bpl, %r9d
	movsd	24(%rax), %xmm0
	movq	112(%rax), %rsi
	movq	(%r12), %rax
	xorpd	.LC18(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L511
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
.L509:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L511:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L510:
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE, .-_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC27:
	.string	"wze::engine.render.OpenFrame(): SDL_RenderClear() failed"
	.align 8
.LC28:
	.string	"wze::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed"
	.align 8
.LC29:
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
	jne	.L549
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L514
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L516
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L551:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L550
.L518:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L551
	movq	%rbx, %r12
	cmpq	%rdx, %rbx
	jnb	.L520
.L519:
	leaq	.L523(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L531:
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L521
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L523:
	.long	.L527-.L523
	.long	.L526-.L523
	.long	.L525-.L523
	.long	.L524-.L523
	.long	.L522-.L523
	.text
	.p2align 4,,10
	.p2align 3
.L516:
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
.L524:
	.cfi_restore_state
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rbp), %rdx
.L521:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L530
.L552:
	movq	40(%rbp), %rax
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L525:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rbp), %rdx
	cmpq	%rdx, %rbx
	jb	.L552
	.p2align 4,,10
	.p2align 3
.L530:
	testq	%r12, %r12
	je	.L516
	movq	40(%rbp), %rax
.L520:
	xorl	%ebx, %ebx
	leaq	.L535(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L542:
	cmpq	%rdx, %rbx
	jnb	.L553
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L533
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L535:
	.long	.L539-.L535
	.long	.L538-.L535
	.long	.L537-.L535
	.long	.L536-.L535
	.long	.L534-.L535
	.text
	.p2align 4,,10
	.p2align 3
.L526:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L522:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L540
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L541
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rbp), %rdx
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L527:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L536:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
.L533:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L516
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	jmp	.L542
	.p2align 4,,10
	.p2align 3
.L537:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L538:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L534:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L540
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L541
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L539:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L550:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L519
.L553:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L540:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L541:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L514:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L549:
	leaq	.LC26(%rip), %rdi
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
	jne	.L564
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L565
	testq	%rbx, %rbx
	je	.L559
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L559:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L564:
	.cfi_restore_state
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L565:
	leaq	.LC29(%rip), %rdi
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
.LC18:
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
