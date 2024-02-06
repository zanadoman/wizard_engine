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
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L273
.L172:
	movq	648(%rdx), %rcx
	leaq	0(,%rbx,8), %rbp
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L55
	cmpb	$0, 168(%rsi)
	je	.L55
	cmpq	%rax, %rbx
	jnb	.L269
	movl	$1, %r12d
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L83:
	movq	32(%rdi), %rsi
	leaq	0(,%r12,8), %r15
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
	jne	.L274
	.p2align 4,,10
	.p2align 3
.L57:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L269
.L56:
	movq	(%rcx,%rbp), %rdi
	cmpq	24(%rdi), %r12
	jb	.L83
	cmpq	%rax, %rbx
	jnb	.L269
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L84:
	movq	(%rcx,%rbp), %rdi
	cmpq	56(%rdi), %r12
	jnb	.L275
	movq	64(%rdi), %rsi
	leaq	0(,%r12,8), %r15
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
	jne	.L276
	.p2align 4,,10
	.p2align 3
.L85:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jb	.L84
.L269:
	movq	%rbx, %rsi
.L265:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB0:
	call	printf@PLT
.L267:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L275:
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rdi
	movl	$1, %r12d
	cmpq	88(%rdi), %r12
	jnb	.L277
	.p2align 4,,10
	.p2align 3
.L138:
	movq	96(%rdi), %rsi
	leaq	0(,%r12,8), %r15
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
	jnb	.L278
	cmpq	$0, (%r9,%r8,8)
	jne	.L279
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rdi
	cmpq	88(%rdi), %r12
	jb	.L138
.L277:
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rdi
	movl	$1, %r12d
	cmpq	120(%rdi), %r12
	jnb	.L280
	.p2align 4,,10
	.p2align 3
.L165:
	movq	128(%rdi), %rsi
	leaq	0(,%r12,8), %r15
	movq	(%rsi,%r12,8), %rsi
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
	jne	.L281
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rdi
	cmpq	120(%rdi), %r12
	jb	.L165
.L280:
	cmpb	$0, 192(%rdi)
	je	.L55
	movzwl	274(%rdi), %ecx
	testw	%cx, %cx
	je	.L55
	movzwl	276(%rdi), %esi
	testw	%si, %si
	je	.L55
	movsd	208(%rdi), %xmm0
	movzwl	%si, %eax
	movsd	256(%rdi), %xmm2
	movzwl	%cx, %esi
	movsd	216(%rdi), %xmm1
	leaq	80(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movq	%rax, (%rsp)
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %eax
	movdqa	(%rsp), %xmm0
	testl	%eax, %eax
	je	.L263
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L166
.L263:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L273:
	movq	32(%r13), %rbx
	cmpq	%rbx, %r14
	jb	.L282
.L221:
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
.L281:
	.cfi_restore_state
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%rdi), %xmm0
	movsd	256(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L283
	ucomisd	%xmm1, %xmm2
	jp	.L145
	jne	.L145
	addsd	.LC8(%rip), %xmm1
.L145:
	comisd	%xmm2, %xmm1
	jbe	.L140
	movsd	%xmm1, 24(%rsp)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L288:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L262
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r14, %r14
	jne	.L152
.L158:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L284
.L153:
	cmpq	32(%r13), %r14
	je	.L285
.L159:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	16(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L286
	movq	(%rsi,%rbp), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %r12
	jnb	.L287
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
	jnb	.L258
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L151:
	addsd	16(%r13), %xmm2
	movsd	24(%rsp), %xmm5
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm5
	jbe	.L140
.L163:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rax
	movq	128(%rax), %rdx
	cmpq	120(%rax), %r12
	jnb	.L266
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	40(%rax), %xmm0
	movzwl	64(%rax), %edx
	movzwl	56(%rax), %esi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %edx
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%edx, %edx
	jne	.L288
.L262:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L282:
	movq	%r14, 32(%r13)
	movq	40(%r13), %rdi
	testq	%r14, %r14
	je	.L175
	leaq	0(,%r14,8), %rsi
	call	realloc@PLT
	movq	%rax, 40(%r13)
	testq	%rax, %rax
	jne	.L221
	movq	%rbx, %rdx
	leaq	.LC10(%rip), %rdi
	movq	%r14, %rsi
	subq	%r14, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L274:
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%rdi), %xmm0
	movsd	256(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L289
	ucomisd	%xmm1, %xmm2
	jp	.L62
	jne	.L62
	addsd	.LC8(%rip), %xmm1
.L62:
	comisd	%xmm2, %xmm1
	jbe	.L57
	movsd	%xmm1, 24(%rsp)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L294:
	movl	8(%rsp), %edi
	testl	%edi, %edi
	je	.L259
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r14, %r14
	jne	.L69
.L75:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L290
.L70:
	cmpq	%r14, 32(%r13)
	je	.L291
.L76:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	16(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L292
	movq	(%rsi,%rbp), %rsi
	movq	32(%rsi), %rdi
	cmpq	24(%rsi), %r12
	jnb	.L293
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
	jnb	.L258
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L68:
	addsd	16(%r13), %xmm2
	movsd	24(%rsp), %xmm4
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm4
	jbe	.L57
.L81:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %r12
	jnb	.L266
	movq	(%rdx,%r15), %rax
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
	jne	.L294
.L259:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L290:
	movzwl	10(%r13), %eax
	subl	%ecx, %r11d
	cmpl	%eax, %r11d
	jle	.L70
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L70
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jge	.L70
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L69:
	movq	32(%r13), %rax
	leaq	-1(%r14), %r10
	movq	40(%r13), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L270
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	0(%r13), %rax
	movq	648(%rax), %rdi
	cmpq	640(%rax), %rbx
	jnb	.L269
	movq	(%rdi,%rbp), %rax
	movq	32(%rax), %rdi
	cmpq	24(%rax), %r12
	jnb	.L266
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L75
	cmpl	%r11d, 28(%rdx)
	jne	.L75
	cmpl	%r9d, 32(%rdx)
	jne	.L75
	cmpl	%ecx, 36(%rdx)
	jne	.L75
	movq	16(%rsp), %rdi
	movq	%r10, %rdx
	movl	%r8d, 72(%rsp)
	movl	%ecx, 32(%rsp)
	movq	%r10, (%rsp)
	movsd	%xmm2, 88(%rsp)
	movaps	%xmm0, 48(%rsp)
	movd	%xmm0, 68(%rsp)
	movd	%xmm3, 80(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	72(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movl	32(%rsp), %ecx
	movl	68(%rsp), %r11d
	movdqa	48(%rsp), %xmm0
	cmpl	%r8d, 40(%rax)
	movl	80(%rsp), %r9d
	movsd	88(%rsp), %xmm2
	jne	.L75
	movq	40(%r13), %rsi
	movq	32(%r13), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L291:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L276:
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%rdi), %xmm0
	movsd	256(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L295
	ucomisd	%xmm1, %xmm2
	jp	.L90
	jne	.L90
	addsd	.LC8(%rip), %xmm1
.L90:
	comisd	%xmm2, %xmm1
	jbe	.L85
	movsd	%xmm1, 24(%rsp)
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L300:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L260
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
	js	.L296
.L98:
	cmpq	%r14, 32(%r13)
	je	.L297
.L104:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	16(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L298
	movq	(%rsi,%rbp), %rsi
	movq	64(%rsi), %rdi
	cmpq	56(%rsi), %r12
	jnb	.L299
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
	jnb	.L258
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L96:
	addsd	16(%r13), %xmm2
	movsd	24(%rsp), %xmm6
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm6
	jbe	.L85
.L108:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %r12
	jnb	.L266
	movq	(%rdx,%r15), %rax
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
	jne	.L300
.L260:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L96
.L279:
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%rdi), %xmm0
	movsd	256(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L301
	ucomisd	%xmm2, %xmm1
	jp	.L118
	jne	.L118
	addsd	.LC8(%rip), %xmm1
.L118:
	comisd	%xmm2, %xmm1
	jbe	.L112
	movsd	%xmm1, 24(%rsp)
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L122:
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r10d
	movd	%xmm3, %r9d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r11d
	testq	%r14, %r14
	jne	.L125
.L131:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r10d, %eax
	js	.L302
.L126:
	cmpq	%r14, 32(%r13)
	je	.L303
.L132:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	16(%rsp), %xmm2
	movq	640(%rdx), %rax
	movq	648(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L304
	movq	(%rsi,%rbp), %rsi
	movq	96(%rsi), %rdi
	cmpq	88(%rsi), %r12
	jnb	.L305
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
	jnb	.L258
	movq	%rcx, (%rdi,%r14,8)
	movq	%rsi, %r14
.L124:
	addsd	16(%r13), %xmm2
	movsd	24(%rsp), %xmm7
	movq	648(%rdx), %rcx
	comisd	%xmm2, %xmm7
	jbe	.L112
.L136:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L269
	movq	(%rcx,%rbp), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %r12
	jnb	.L266
	movq	(%rdx,%r15), %rax
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
	je	.L261
	movl	8(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L122
.L261:
	movq	0(%r13), %rdx
	movq	640(%rdx), %rax
	jmp	.L124
.L283:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L145
	jne	.L145
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L284:
	movzwl	10(%r13), %eax
	subl	%ecx, %r11d
	cmpl	%eax, %r11d
	jle	.L153
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L153
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jge	.L153
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L152:
	movq	32(%r13), %rax
	leaq	-1(%r14), %r10
	movq	40(%r13), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L270
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	0(%r13), %rax
	movq	648(%rax), %rdi
	cmpq	640(%rax), %rbx
	jnb	.L269
	movq	(%rdi,%rbp), %rax
	movq	128(%rax), %rdi
	cmpq	120(%rax), %r12
	jnb	.L266
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L158
	cmpl	%r11d, 28(%rdx)
	jne	.L158
	cmpl	%r9d, 32(%rdx)
	jne	.L158
	cmpl	%ecx, 36(%rdx)
	jne	.L158
	movq	16(%rsp), %rdi
	movq	%r10, %rdx
	movl	%ecx, 48(%rsp)
	movl	%r8d, 68(%rsp)
	movq	%r10, (%rsp)
	movd	%xmm0, 80(%rsp)
	movsd	%xmm2, 72(%rsp)
	movaps	%xmm0, 32(%rsp)
	movd	%xmm3, 88(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	68(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movdqa	32(%rsp), %xmm0
	movl	48(%rsp), %ecx
	movsd	72(%rsp), %xmm2
	cmpl	%r8d, 40(%rax)
	movl	80(%rsp), %r11d
	movl	88(%rsp), %r9d
	jne	.L158
	movq	40(%r13), %rsi
	movq	32(%r13), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L296:
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
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L302:
	movzwl	10(%r13), %eax
	subl	%ecx, %r10d
	cmpl	%eax, %r10d
	jle	.L126
	sarl	%r9d
	movl	%r9d, %edx
	addl	%r11d, %edx
	jns	.L126
	subl	%r9d, %r11d
	cmpl	%r11d, %eax
	jge	.L126
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L97:
	movq	32(%r13), %rax
	leaq	-1(%r14), %r10
	movq	40(%r13), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L270
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	0(%r13), %rax
	movq	648(%rax), %rdi
	cmpq	640(%rax), %rbx
	jnb	.L269
	movq	(%rdi,%rbp), %rax
	movq	64(%rax), %rdi
	cmpq	56(%rax), %r12
	jnb	.L266
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L103
	cmpl	%r11d, 28(%rdx)
	jne	.L103
	cmpl	%r9d, 32(%rdx)
	jne	.L103
	cmpl	%ecx, 36(%rdx)
	jne	.L103
	movq	16(%rsp), %rdi
	movq	%r10, %rdx
	movl	%ecx, 72(%rsp)
	movl	%r8d, 48(%rsp)
	movq	%r10, (%rsp)
	movsd	%xmm2, 88(%rsp)
	movd	%xmm0, 68(%rsp)
	movaps	%xmm0, 32(%rsp)
	movd	%xmm3, 80(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	48(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movdqa	32(%rsp), %xmm0
	movl	68(%rsp), %r11d
	movl	72(%rsp), %ecx
	cmpl	%r8d, 40(%rax)
	movl	80(%rsp), %r9d
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
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L125:
	movq	40(%r13), %rax
	movq	32(%r13), %r8
	leaq	-1(%r14), %rdx
	movq	%rax, (%rsp)
	cmpq	%r8, %rdx
	jnb	.L306
	movq	(%rax,%rdx,8), %rsi
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	0(%r13), %rax
	movq	648(%rax), %rdi
	cmpq	640(%rax), %rbx
	jnb	.L269
	movq	(%rdi,%rbp), %rax
	movq	96(%rax), %rdi
	cmpq	88(%rax), %r12
	jnb	.L266
	movq	16(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L131
	cmpl	%r10d, 28(%rsi)
	jne	.L131
	cmpl	%r11d, 32(%rsi)
	jne	.L131
	cmpl	%ecx, 36(%rsi)
	jne	.L131
	movq	(%rsp), %rsi
	movq	%r8, %rdi
	movl	%ecx, 68(%rsp)
	movl	%r9d, 32(%rsp)
	movq	%rdx, 16(%rsp)
	movsd	%xmm2, 80(%rsp)
	movd	%xmm0, 72(%rsp)
	movaps	%xmm0, 48(%rsp)
	movd	%xmm3, 88(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	32(%rsp), %r9d
	movq	16(%rsp), %rdx
	movq	(%rax), %rax
	movl	68(%rsp), %ecx
	movdqa	48(%rsp), %xmm0
	movl	72(%rsp), %r10d
	cmpl	%r9d, 40(%rax)
	movsd	80(%rsp), %xmm2
	movl	88(%rsp), %r11d
	jne	.L131
	movq	40(%r13), %rsi
	movq	32(%r13), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L285:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L159
.L289:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L62
	jne	.L62
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L81
.L297:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L104
.L303:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L132
.L54:
	cmpq	$0, 32(%rdi)
	je	.L221
	movq	$0, 32(%rdi)
	movq	40(%rdi), %rdi
.L175:
	call	free@PLT
	movq	$0, 40(%r13)
	jmp	.L221
.L295:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L90
	jne	.L90
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L108
.L301:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L118
	jne	.L118
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movsd	%xmm1, 24(%rsp)
	jmp	.L136
.L166:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L307
.L168:
	cmpq	%r14, 32(%r13)
	je	.L308
.L169:
	movl	$48, %edi
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	0(%r13), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %r12
	movq	640(%rdx), %rax
	movq	648(%rdx), %rcx
	cmpq	%rax, %rbx
	jnb	.L309
	movq	(%rcx,%rbp), %rcx
	movq	40(%r13), %rsi
	movb	$-1, 24(%r12)
	movl	$4, 8(%r12)
	movq	%rcx, (%r12)
	leaq	1(%r14), %rcx
	movq	$0x000000000, 16(%r12)
	movups	%xmm0, 28(%r12)
	cmpq	32(%r13), %r14
	jnb	.L258
	movq	%r12, (%rsi,%r14,8)
	movq	%rcx, %r14
	jmp	.L55
.L307:
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
	jmp	.L263
.L266:
	movq	%r12, %rsi
	jmp	.L265
.L308:
	movzwl	24(%r13), %eax
	leaq	32(%r13), %rdi
	movq	%r14, %rsi
	movaps	%xmm0, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	(%rsp), %xmm0
	jmp	.L169
.L258:
	movq	%r14, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L267
.L309:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	jmp	.L267
.L298:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB2:
	call	printf@PLT
.LEHE2:
	jmp	.L267
.L270:
	movq	%r10, %rsi
	jmp	.L265
.L292:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB3:
	call	printf@PLT
.LEHE3:
	jmp	.L267
.L278:
	movq	%r8, %rsi
	jmp	.L265
.L287:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L267
.L306:
	movq	%rdx, %rsi
	jmp	.L265
.L304:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB5:
	call	printf@PLT
.LEHE5:
	jmp	.L267
.L299:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB6:
	call	printf@PLT
.LEHE6:
	jmp	.L267
.L286:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB7:
	call	printf@PLT
.LEHE7:
	jmp	.L267
.L305:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB8:
	call	printf@PLT
.LEHE8:
	jmp	.L267
.L293:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r14
.LEHB9:
	call	printf@PLT
.LEHE9:
	jmp	.L267
.L191:
	movq	%rax, %rbx
	jmp	.L182
.L195:
	movq	%rax, %rbx
	jmp	.L178
.L194:
	movq	%rax, %rbx
	jmp	.L182
.L192:
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
	.uleb128 .L195-.LFB8158
	.uleb128 0
	.uleb128 .LEHB2-.LFB8158
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L192-.LFB8158
	.uleb128 0
	.uleb128 .LEHB3-.LFB8158
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L191-.LFB8158
	.uleb128 0
	.uleb128 .LEHB4-.LFB8158
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L194-.LFB8158
	.uleb128 0
	.uleb128 .LEHB5-.LFB8158
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L193-.LFB8158
	.uleb128 0
	.uleb128 .LEHB6-.LFB8158
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L192-.LFB8158
	.uleb128 0
	.uleb128 .LEHB7-.LFB8158
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L194-.LFB8158
	.uleb128 0
	.uleb128 .LEHB8-.LFB8158
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L193-.LFB8158
	.uleb128 0
	.uleb128 .LEHB9-.LFB8158
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L191-.LFB8158
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
.L182:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r14, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.L178:
	movq	%r12, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE10:
	.cfi_endproc
.LFE8158:
	.section	.gcc_except_table
.LLSDAC8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8158-.LLSDACSBC8158
.LLSDACSBC8158:
	.uleb128 .LEHB10-.LCOLDB11
	.uleb128 .LEHE10-.LEHB10
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
	je	.L312
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L312
	testq	%r15, %r15
	je	.L360
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L318
	.p2align 4,,10
	.p2align 3
.L336:
	movq	%rax, %rsi
.L318:
	cmpq	%rdx, %rsi
	jnb	.L358
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r14
	jne	.L336
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L333
.L314:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L337:
	movq	%rax, %rsi
.L321:
	cmpq	%rdx, %rsi
	jnb	.L358
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L337
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L323
	xorl	%eax, %eax
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L361:
	cmpq	%rdx, %rbx
	jnb	.L359
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L331
.L362:
	cmpq	%rbp, %rsi
	jnb	.L356
.L329:
	movq	0(%r13,%rsi,8), %rdi
	movq	(%r12,%rax,8), %r8
	movsd	16(%r8), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L361
	cmpq	%rdx, %rbx
	jnb	.L359
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L362
	.p2align 4,,10
	.p2align 3
.L331:
	cmpq	%rbp, %rsi
	jnb	.L315
.L323:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L335:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L359
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L335
.L315:
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
.L333:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L359
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L356:
	cmpq	%r15, %rax
	jb	.L333
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L360:
	testq	%rbp, %rbp
	je	.L315
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L314
.L359:
	movq	%rbx, %rsi
.L358:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L312:
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
	call	_ZN3wze6engine6render17OrderByLayerMergeEyyy
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
	je	.L375
	movq	%r9, %rbp
	movq	%r9, (%rsp)
	movq	%rax, %r12
	subq	%r14, %rbp
	leaq	0(,%rbp,8), %rdi
	call	malloc@PLT
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %r13
	je	.L375
	testq	%r15, %r15
	je	.L420
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L381
	.p2align 4,,10
	.p2align 3
.L398:
	movq	%rax, %rsi
.L381:
	cmpq	%rdx, %rsi
	jnb	.L418
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%r14, %rsi
	jne	.L398
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L395
.L377:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L384
	.p2align 4,,10
	.p2align 3
.L399:
	movq	%rax, %rsi
.L384:
	cmpq	%rdx, %rsi
	jnb	.L418
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L399
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L386
	xorl	%eax, %eax
	jmp	.L391
	.p2align 4,,10
	.p2align 3
.L421:
	cmpq	%rdx, %rbx
	jnb	.L419
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L393
.L422:
	cmpq	%rbp, %rsi
	jnb	.L416
.L391:
	movq	(%r12,%rax,8), %r8
	movq	0(%r13,%rsi,8), %rdi
	movzbl	24(%r8), %r10d
	cmpb	%r10b, 24(%rdi)
	jb	.L421
	cmpq	%rdx, %rbx
	jnb	.L419
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L422
	.p2align 4,,10
	.p2align 3
.L393:
	cmpq	%rbp, %rsi
	jnb	.L378
.L386:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L397:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L419
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L397
.L378:
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
.L395:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L419
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L416:
	cmpq	%r15, %rax
	jb	.L395
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L420:
	testq	%rbp, %rbp
	je	.L378
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L377
.L419:
	movq	%rbx, %rsi
.L418:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L375:
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
	jbe	.L424
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L424
	.p2align 4,,10
	.p2align 3
.L425:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L427:
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
	jb	.L427
	cmpq	%r14, %rbp
	jb	.L425
.L424:
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
	jbe	.L454
	.p2align 4,,10
	.p2align 3
.L434:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L436:
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
	jb	.L436
	cmpq	%r15, %r13
	jb	.L434
	movq	32(%r12), %rdx
	cmpq	$1, %rdx
	jbe	.L454
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L445
	.p2align 4,,10
	.p2align 3
.L439:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rdx, %r13
	jnb	.L464
.L451:
	movq	%r13, %rbp
.L445:
	movq	40(%r12), %rax
	movq	(%rax,%rbp,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, 8(%rsp)
	jnb	.L465
	movq	8(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L453
	je	.L439
.L453:
	cmpq	$1, %rbp
	je	.L466
	cmpq	%r15, 8(%rsp)
	jnb	.L444
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L443:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L442:
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
	jb	.L442
	cmpq	%rbp, %r13
	jb	.L443
	movq	32(%r12), %rdx
.L444:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rdx, %r13
	jb	.L451
.L464:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L454
	.p2align 4,,10
	.p2align 3
.L446:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L448:
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
	jb	.L448
	cmpq	%r13, %rbx
	jb	.L446
.L454:
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
.L466:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L439
.L465:
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
	jne	.L471
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L472
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
.L471:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L472:
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
	jnb	.L482
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L483
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	72(%rdx), %rsi
	movq	712(%rax), %rdx
	cmpq	704(%rax), %rsi
	jnb	.L482
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L484
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	leaq	28(%r12), %rcx
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rsi
	xorpd	.LC18(%rip), %xmm0
	movq	712(%rax), %rdx
	cmpq	704(%rax), %rsi
	jnb	.L482
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L485
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
.L482:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L485:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L484:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L483:
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
	jnb	.L499
	movq	(%r9,%rsi,8), %rsi
	movq	712(%rdx), %rax
	cmpq	704(%rdx), %rsi
	jnb	.L499
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L500
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	23(%rax), %ecx
	movq	80(%rax), %rsi
	movq	104(%rax), %rdi
	cmpq	96(%rax), %rsi
	jnb	.L499
	movq	(%rdi,%rsi,8), %rsi
	movq	712(%rdx), %rax
	cmpq	704(%rdx), %rsi
	jnb	.L499
	movq	(%rax,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L501
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	%bl, %r9d
	leaq	28(%rbp), %rdi
	movsd	24(%rax), %xmm0
	movq	80(%rax), %rsi
	xorpd	.LC18(%rip), %xmm0
	movq	104(%rax), %rcx
	cmpq	96(%rax), %rsi
	jnb	.L499
	movq	(%rcx,%rsi,8), %rsi
	movq	712(%rdx), %rax
	cmpq	704(%rdx), %rsi
	jnb	.L499
	movq	(%rax,%rsi,8), %rsi
	movq	16(%rdx), %rax
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L502
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
.L499:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L502:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L501:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L500:
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
	jne	.L508
	movq	(%rbx), %rax
	movzbl	19(%rax), %esi
	movq	112(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L509
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
	jne	.L510
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
.L508:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L510:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L509:
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
	jne	.L548
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L513
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L515
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L550:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L549
.L517:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L550
	movq	%rbx, %r12
	cmpq	%rdx, %rbx
	jnb	.L519
.L518:
	leaq	.L522(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L530:
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L520
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L522:
	.long	.L526-.L522
	.long	.L525-.L522
	.long	.L524-.L522
	.long	.L523-.L522
	.long	.L521-.L522
	.text
	.p2align 4,,10
	.p2align 3
.L515:
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
.L523:
	.cfi_restore_state
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rbp), %rdx
.L520:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L529
.L551:
	movq	40(%rbp), %rax
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L524:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rbp), %rdx
	cmpq	%rdx, %rbx
	jb	.L551
	.p2align 4,,10
	.p2align 3
.L529:
	testq	%r12, %r12
	je	.L515
	movq	40(%rbp), %rax
.L519:
	xorl	%ebx, %ebx
	leaq	.L534(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L541:
	cmpq	%rdx, %rbx
	jnb	.L552
	movq	(%rax,%rbx,8), %r14
	cmpl	$4, 8(%r14)
	ja	.L532
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L534:
	.long	.L538-.L534
	.long	.L537-.L534
	.long	.L536-.L534
	.long	.L535-.L534
	.long	.L533-.L534
	.text
	.p2align 4,,10
	.p2align 3
.L525:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L521:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L539
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L540
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rbp), %rdx
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L526:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L535:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
.L532:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L515
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	jmp	.L541
	.p2align 4,,10
	.p2align 3
.L536:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L537:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L533:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L539
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L540
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L538:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L549:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L518
.L552:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L539:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L540:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L513:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L548:
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
	jne	.L563
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L564
	testq	%rbx, %rbx
	je	.L558
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L558:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L563:
	.cfi_restore_state
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L564:
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
