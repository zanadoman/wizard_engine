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
.LFB8376:
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
.LFE8376:
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
.LFB8377:
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
.LFE8377:
	.size	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6renderC2EPS0_
	.type	_ZN3wze6engine6renderC2EPS0_, @function
_ZN3wze6engine6renderC2EPS0_:
.LFB8163:
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
.LFE8163:
	.size	_ZN3wze6engine6renderC2EPS0_, .-_ZN3wze6engine6renderC2EPS0_
	.globl	_ZN3wze6engine6renderC1EPS0_
	.set	_ZN3wze6engine6renderC1EPS0_,_ZN3wze6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB8166:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movl	%edx, 8(%rdi)
	movb	%cl, 24(%rdi)
	movq	%r8, 28(%rdi)
	movq	%r9, 36(%rdi)
	movsd	%xmm0, 16(%rdi)
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetSamplingStepEv
	.type	_ZN3wze6engine6render15GetSamplingStepEv, @function
_ZN3wze6engine6render15GetSamplingStepEv:
.LFB8168:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8168:
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
.LFB8169:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L48
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L49
	movsd	%xmm0, 16(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L48:
	.cfi_restore_state
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6render15SetSamplingStepEd, .-_ZN3wze6engine6render15SetSamplingStepEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetBufferSizeKBEv
	.type	_ZN3wze6engine6render15GetBufferSizeKBEv, @function
_ZN3wze6engine6render15GetBufferSizeKBEv:
.LFB8170:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	shrq	$7, %rax
	ret
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6render15GetBufferSizeKBEv, .-_ZN3wze6engine6render15GetBufferSizeKBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetBufferSizeKBEt
	.type	_ZN3wze6engine6render15SetBufferSizeKBEt, @function
_ZN3wze6engine6render15SetBufferSizeKBEt:
.LFB8171:
	.cfi_startproc
	movq	%rsi, %rax
	salq	$7, %rax
	andl	$8388480, %eax
	movw	%ax, 24(%rdi)
	salq	$48, %rax
	shrq	$55, %rax
	ret
	.cfi_endproc
.LFE8171:
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
.LFB8173:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8173
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	(%rdi), %rdx
	movq	280(%rdx), %rax
	cmpq	$1, %rax
	jbe	.L53
	movq	$0, (%rsp)
	movl	$1, %ebx
	jmp	.L178
	.p2align 4,,10
	.p2align 3
.L54:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L295
.L178:
	movq	288(%rdx), %rcx
	leaq	0(,%rbx,8), %rbp
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L54
	cmpb	$0, 168(%rsi)
	je	.L54
	cmpq	%rax, %rbx
	jnb	.L171
	movl	$1, %r12d
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L82:
	movq	32(%rdi), %rsi
	leaq	0(,%r12,8), %r15
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L56
	cmpw	$0, 16(%rsi)
	je	.L56
	cmpw	$0, 18(%rsi)
	je	.L56
	cmpb	$0, 23(%rsi)
	je	.L56
	cmpb	$0, 26(%rsi)
	jne	.L296
	.p2align 4,,10
	.p2align 3
.L56:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L171
.L55:
	movq	(%rcx,%rbp), %rdi
	cmpq	24(%rdi), %r12
	jb	.L82
	cmpq	%rax, %rbx
	jnb	.L171
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L83:
	movq	(%rcx,%rbp), %rdi
	cmpq	56(%rdi), %r12
	jnb	.L297
	movq	64(%rdi), %rsi
	leaq	0(,%r12,8), %r15
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L84
	cmpw	$0, 16(%rsi)
	je	.L84
	cmpw	$0, 18(%rsi)
	je	.L84
	cmpb	$0, 23(%rsi)
	je	.L84
	cmpb	$0, 37(%rsi)
	je	.L84
	cmpq	$0, 80(%rsi)
	jne	.L298
	.p2align 4,,10
	.p2align 3
.L84:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jb	.L83
.L171:
	movq	%rbx, %rsi
.L284:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB0:
	call	printf@PLT
.L286:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L297:
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rdi
	movl	$1, %r12d
	cmpq	88(%rdi), %r12
	jnb	.L299
	.p2align 4,,10
	.p2align 3
.L136:
	movq	96(%rdi), %rsi
	leaq	0(,%r12,8), %r15
	movq	(%rsi,%r12,8), %rsi
	testq	%rsi, %rsi
	je	.L111
	cmpw	$0, 16(%rsi)
	je	.L111
	cmpw	$0, 18(%rsi)
	je	.L111
	cmpb	$0, 23(%rsi)
	je	.L111
	cmpb	$0, 37(%rsi)
	je	.L111
	movq	88(%rsi), %r8
	movq	112(%rsi), %rsi
	cmpq	$0, (%rsi,%r8,8)
	jne	.L300
	.p2align 4,,10
	.p2align 3
.L111:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L171
.L292:
	movq	(%rcx,%rbp), %rdi
	cmpq	88(%rdi), %r12
	jb	.L136
.L299:
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rdi
	movl	$1, %r13d
	cmpq	120(%rdi), %r13
	jnb	.L301
	.p2align 4,,10
	.p2align 3
.L163:
	movq	128(%rdi), %rsi
	leaq	0(,%r13,8), %r15
	movq	(%rsi,%r13,8), %rsi
	testq	%rsi, %rsi
	je	.L138
	cmpw	$0, 64(%rsi)
	je	.L138
	cmpq	$0, 72(%rsi)
	je	.L138
	cmpb	$0, 19(%rsi)
	je	.L138
	cmpb	$0, 37(%rsi)
	je	.L138
	cmpq	$0, 128(%rsi)
	jne	.L302
	.p2align 4,,10
	.p2align 3
.L138:
	addq	$1, %r13
	cmpq	%rax, %rbx
	jnb	.L171
.L293:
	movq	(%rcx,%rbp), %rdi
	cmpq	120(%rdi), %r13
	jb	.L163
.L301:
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rcx
	movl	$1, %r12d
	cmpq	152(%rcx), %r12
	jnb	.L303
	.p2align 4,,10
	.p2align 3
.L172:
	movq	160(%rcx), %rsi
	movq	(%rsi,%r12,8), %rdi
	testq	%rdi, %rdi
	je	.L165
	cmpb	$0, 18(%rdi)
	je	.L165
	movzwl	88(%rdi), %esi
	testw	%si, %si
	je	.L165
	movzwl	90(%rdi), %r8d
	testw	%r8w, %r8w
	je	.L165
	movsd	40(%rdi), %xmm0
	leaq	80(%rdx), %rax
	movsd	48(%rdi), %xmm1
	movl	%r8d, %edx
	movsd	272(%rcx), %xmm2
	movq	%rax, %rdi
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	24(%rsp), %rax
	movdqa	16(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L281
	movl	24(%rsp), %edx
	testl	%edx, %edx
	jne	.L166
.L281:
	movq	(%r14), %rdx
	movq	280(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L165:
	movq	288(%rdx), %rcx
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rcx
	cmpq	152(%rcx), %r12
	jb	.L172
.L303:
	cmpb	$0, 192(%rcx)
	je	.L54
	movzwl	290(%rcx), %esi
	testw	%si, %si
	je	.L54
	movzwl	292(%rcx), %edi
	testw	%di, %di
	je	.L54
	leaq	80(%rdx), %rax
	movsd	224(%rcx), %xmm0
	movl	%edi, %edx
	movsd	272(%rcx), %xmm2
	movsd	232(%rcx), %xmm1
	movq	%rax, %rdi
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	24(%rsp), %rax
	movdqa	16(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L282
	movl	24(%rsp), %eax
	testl	%eax, %eax
	jne	.L173
.L282:
	movq	(%r14), %rdx
	movq	280(%rdx), %rax
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L295:
	movq	32(%r14), %rbx
	cmpq	%rbx, (%rsp)
	jb	.L304
.L231:
	addq	$136, %rsp
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
.L166:
	.cfi_restore_state
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L305
.L168:
	movq	(%rsp), %rax
	cmpq	%rax, 32(%r14)
	je	.L306
.L169:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	call	_Znwm@PLT
	movdqa	16(%rsp), %xmm0
	movq	(%rsp), %rdi
	movq	$0, (%rax)
	movq	40(%r14), %rdx
	movl	$4, 8(%rax)
	leaq	1(%rdi), %rcx
	movq	$0x000000000, 16(%rax)
	movb	$-1, 24(%rax)
	movups	%xmm0, 28(%rax)
	cmpq	32(%r14), %rdi
	jnb	.L291
	movq	%rax, (%rdx,%rdi,8)
	movq	(%r14), %rdx
	movq	%rcx, (%rsp)
	movq	280(%rdx), %rax
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L302:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%rdi), %xmm0
	movsd	272(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L307
	ucomisd	%xmm1, %xmm2
	jp	.L143
	jne	.L143
	addsd	.LC8(%rip), %xmm1
.L143:
	comisd	%xmm2, %xmm1
	jbe	.L138
	movq	(%rsp), %r12
	movsd	%xmm1, 40(%rsp)
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L313:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L280
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r12, %r12
	jne	.L150
.L156:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L308
.L151:
	cmpq	%r12, 32(%r14)
	je	.L309
.L157:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movsd	(%rsp), %xmm2
	movq	%rax, %rcx
	movdqa	16(%rsp), %xmm0
	movq	280(%rdx), %rax
	movq	288(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L310
	movq	(%rsi,%rbp), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %r13
	jnb	.L311
	movq	(%rdi,%r15), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r12), %rsi
	movl	$3, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r14), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r14), %r12
	jnb	.L285
	movq	%rcx, (%rdi,%r12,8)
	movq	%rsi, %r12
.L149:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm5
	movq	288(%rdx), %rcx
	comisd	%xmm2, %xmm5
	jbe	.L312
.L161:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rax
	movq	128(%rax), %rdx
	cmpq	120(%rax), %r13
	jnb	.L290
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	48(%rax), %xmm0
	movzwl	72(%rax), %edx
	movzwl	64(%rax), %esi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %ecx
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%ecx, %ecx
	jne	.L313
.L280:
	movq	(%r14), %rdx
	movq	280(%rdx), %rax
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L304:
	movq	(%rsp), %rax
	movq	40(%r14), %rdi
	movq	%rax, 32(%r14)
	testq	%rax, %rax
	je	.L181
	leaq	0(,%rax,8), %rsi
	call	realloc@PLT
	movq	%rax, 40(%r14)
	testq	%rax, %rax
	jne	.L231
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	leaq	.LC10(%rip), %rdi
	subq	%rsi, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L296:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%rdi), %xmm0
	movsd	272(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L314
	ucomisd	%xmm1, %xmm2
	jp	.L61
	jne	.L61
	addsd	.LC8(%rip), %xmm1
.L61:
	comisd	%xmm2, %xmm1
	jbe	.L56
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L320:
	movl	8(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L277
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r13, %r13
	jne	.L68
.L74:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L315
.L69:
	cmpq	%r13, 32(%r14)
	je	.L316
.L75:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movsd	(%rsp), %xmm2
	movq	%rax, %rcx
	movdqa	16(%rsp), %xmm0
	movq	280(%rdx), %rax
	movq	288(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L317
	movq	(%rsi,%rbp), %rsi
	movq	32(%rsi), %rdi
	cmpq	24(%rsi), %r12
	jnb	.L318
	movq	(%rdi,%r15), %rsi
	movzbl	25(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r13), %rsi
	movl	$0, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r14), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r14), %r13
	jnb	.L276
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L67:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm4
	movq	288(%rdx), %rcx
	comisd	%xmm2, %xmm4
	jbe	.L319
.L80:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %r12
	jnb	.L285
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
	jne	.L320
.L277:
	movq	(%r14), %rdx
	movq	280(%rdx), %rax
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L315:
	movzwl	10(%r14), %eax
	subl	%ecx, %r11d
	cmpl	%eax, %r11d
	jle	.L69
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L69
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jge	.L69
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L68:
	movq	32(%r14), %rax
	leaq	-1(%r13), %r10
	movq	40(%r14), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L289
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	(%r14), %rax
	movq	288(%rax), %rdi
	cmpq	280(%rax), %rbx
	jnb	.L171
	movq	(%rdi,%rbp), %rax
	movq	32(%rax), %rdi
	cmpq	24(%rax), %r12
	jnb	.L285
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L74
	cmpl	%r11d, 28(%rdx)
	jne	.L74
	cmpl	%r9d, 32(%rdx)
	jne	.L74
	cmpl	%ecx, 36(%rdx)
	jne	.L74
	movq	16(%rsp), %rdi
	movq	%r10, %rdx
	movl	%ecx, 80(%rsp)
	movl	%r8d, 96(%rsp)
	movq	%r10, (%rsp)
	movd	%xmm0, 112(%rsp)
	movaps	%xmm0, 64(%rsp)
	movsd	%xmm2, 48(%rsp)
	movd	%xmm3, 108(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	96(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movsd	48(%rsp), %xmm2
	movdqa	64(%rsp), %xmm0
	movl	80(%rsp), %ecx
	cmpl	%r8d, 40(%rax)
	movl	108(%rsp), %r9d
	movl	112(%rsp), %r11d
	jne	.L74
	movq	40(%r14), %rsi
	movq	32(%r14), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L277
	.p2align 4,,10
	.p2align 3
.L319:
	movq	%r13, (%rsp)
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L316:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L298:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%rdi), %xmm0
	movsd	272(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L321
	ucomisd	%xmm1, %xmm2
	jp	.L89
	jne	.L89
	addsd	.LC8(%rip), %xmm1
.L89:
	comisd	%xmm2, %xmm1
	jbe	.L84
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L327:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L278
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r13, %r13
	jne	.L96
.L102:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L322
.L97:
	cmpq	%r13, 32(%r14)
	je	.L323
.L103:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	16(%rsp), %xmm2
	movq	280(%rdx), %rax
	movq	288(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L324
	movq	(%rsi,%rbp), %rsi
	movq	64(%rsi), %rdi
	cmpq	56(%rsi), %r12
	jnb	.L325
	movq	(%rdi,%r15), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r13), %rsi
	movl	$1, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r14), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r14), %r13
	jnb	.L276
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L95:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm6
	movq	288(%rdx), %rcx
	comisd	%xmm2, %xmm6
	jbe	.L326
.L107:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %r12
	jnb	.L285
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	48(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %edi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%edi, %edi
	jne	.L327
.L278:
	movq	(%r14), %rdx
	movq	280(%rdx), %rax
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L300:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%rdi), %xmm0
	movsd	272(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L328
	ucomisd	%xmm2, %xmm1
	jp	.L116
	jne	.L116
	addsd	.LC8(%rip), %xmm1
.L116:
	comisd	%xmm2, %xmm1
	jbe	.L111
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L134
	.p2align 4,,10
	.p2align 3
.L334:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L279
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r10d
	movd	%xmm3, %r9d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r11d
	testq	%r13, %r13
	jne	.L123
.L129:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r10d, %eax
	js	.L329
.L124:
	cmpq	%r13, 32(%r14)
	je	.L330
.L130:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movsd	(%rsp), %xmm2
	movq	%rax, %rcx
	movdqa	16(%rsp), %xmm0
	movq	280(%rdx), %rax
	movq	288(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L331
	movq	(%rsi,%rbp), %rsi
	movq	96(%rsi), %rdi
	cmpq	88(%rsi), %r12
	jnb	.L332
	movq	(%rdi,%r15), %rsi
	movzbl	36(%rsi), %edi
	movq	%rsi, (%rcx)
	leaq	1(%r13), %rsi
	movl	$2, 8(%rcx)
	movb	%dil, 24(%rcx)
	movq	40(%r14), %rdi
	movsd	%xmm2, 16(%rcx)
	movups	%xmm0, 28(%rcx)
	cmpq	32(%r14), %r13
	jnb	.L276
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L122:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm7
	movq	288(%rdx), %rcx
	comisd	%xmm2, %xmm7
	jbe	.L333
.L134:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L171
	movq	(%rcx,%rbp), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %r12
	jnb	.L285
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 16(%rsp)
	movzwl	16(%rax), %esi
	movsd	48(%rax), %xmm0
	movzwl	18(%rax), %edx
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %esi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%esi, %esi
	jne	.L334
.L279:
	movq	(%r14), %rdx
	movq	280(%rdx), %rax
	jmp	.L122
.L305:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L168
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %edx
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %edi
	addl	%edx, %edi
	jns	.L168
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jge	.L168
	jmp	.L281
.L307:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L143
	jne	.L143
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r12
	movsd	%xmm1, 40(%rsp)
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L308:
	movzwl	10(%r14), %eax
	subl	%ecx, %r11d
	cmpl	%eax, %r11d
	jle	.L151
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L151
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jge	.L151
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L150:
	movq	32(%r14), %rax
	leaq	-1(%r12), %r10
	movq	40(%r14), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L289
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	(%r14), %rax
	movq	288(%rax), %rdi
	cmpq	280(%rax), %rbx
	jnb	.L171
	movq	(%rdi,%rbp), %rax
	movq	128(%rax), %rdi
	cmpq	120(%rax), %r13
	jnb	.L290
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L156
	cmpl	%r11d, 28(%rdx)
	jne	.L156
	cmpl	%r9d, 32(%rdx)
	jne	.L156
	cmpl	%ecx, 36(%rdx)
	jne	.L156
	movq	16(%rsp), %rdi
	movq	%r10, %rdx
	movl	%ecx, 80(%rsp)
	movl	%r8d, 64(%rsp)
	movq	%r10, (%rsp)
	movaps	%xmm0, 112(%rsp)
	movd	%xmm0, 108(%rsp)
	movsd	%xmm2, 48(%rsp)
	movd	%xmm3, 96(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	64(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movl	96(%rsp), %r9d
	movsd	48(%rsp), %xmm2
	movl	80(%rsp), %ecx
	cmpl	%r8d, 40(%rax)
	movl	108(%rsp), %r11d
	movdqa	112(%rsp), %xmm0
	jne	.L156
	movq	40(%r14), %rsi
	movq	32(%r14), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L322:
	movzwl	10(%r14), %eax
	subl	%ecx, %r11d
	cmpl	%eax, %r11d
	jle	.L97
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L97
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jge	.L97
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L312:
	movq	%r12, (%rsp)
	addq	$1, %r13
	cmpq	%rax, %rbx
	jb	.L293
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L329:
	movzwl	10(%r14), %eax
	subl	%ecx, %r10d
	cmpl	%eax, %r10d
	jle	.L124
	sarl	%r9d
	movl	%r9d, %edx
	addl	%r11d, %edx
	jns	.L124
	subl	%r9d, %r11d
	cmpl	%r11d, %eax
	jge	.L124
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L96:
	movq	32(%r14), %rax
	leaq	-1(%r13), %r10
	movq	40(%r14), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L289
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	(%r14), %rax
	movq	288(%rax), %rdi
	cmpq	280(%rax), %rbx
	jnb	.L171
	movq	(%rdi,%rbp), %rax
	movq	64(%rax), %rdi
	cmpq	56(%rax), %r12
	jnb	.L285
	movq	(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L102
	cmpl	%r11d, 28(%rdx)
	jne	.L102
	cmpl	%r9d, 32(%rdx)
	jne	.L102
	cmpl	%ecx, 36(%rdx)
	jne	.L102
	movq	16(%rsp), %rdi
	movq	%r10, %rdx
	movl	%ecx, 48(%rsp)
	movl	%r8d, 96(%rsp)
	movq	%r10, (%rsp)
	movsd	%xmm2, 112(%rsp)
	movd	%xmm0, 108(%rsp)
	movaps	%xmm0, 80(%rsp)
	movd	%xmm3, 64(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	96(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movl	48(%rsp), %ecx
	movl	64(%rsp), %r9d
	movdqa	80(%rsp), %xmm0
	cmpl	%r8d, 40(%rax)
	movl	108(%rsp), %r11d
	movsd	112(%rsp), %xmm2
	jne	.L102
	movq	40(%r14), %rsi
	movq	32(%r14), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L278
	.p2align 4,,10
	.p2align 3
.L123:
	movq	40(%r14), %rax
	movq	32(%r14), %r8
	leaq	-1(%r13), %rdx
	movq	%rax, (%rsp)
	cmpq	%r8, %rdx
	jnb	.L335
	movq	(%rax,%rdx,8), %rsi
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	(%r14), %rax
	movq	288(%rax), %rdi
	cmpq	280(%rax), %rbx
	jnb	.L171
	movq	(%rdi,%rbp), %rax
	movq	96(%rax), %rdi
	cmpq	88(%rax), %r12
	jnb	.L285
	movq	16(%rsp), %rax
	cmpq	(%rdi,%r15), %rax
	jne	.L129
	cmpl	%r10d, 28(%rsi)
	jne	.L129
	cmpl	%r11d, 32(%rsi)
	jne	.L129
	cmpl	%ecx, 36(%rsi)
	jne	.L129
	movq	(%rsp), %rsi
	movq	%r8, %rdi
	movl	%ecx, 112(%rsp)
	movl	%r9d, 108(%rsp)
	movq	%rdx, 16(%rsp)
	movd	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movsd	%xmm2, 96(%rsp)
	movd	%xmm3, 80(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	108(%rsp), %r9d
	movq	16(%rsp), %rdx
	movq	(%rax), %rax
	movsd	96(%rsp), %xmm2
	movdqa	48(%rsp), %xmm0
	movl	64(%rsp), %r10d
	cmpl	%r9d, 40(%rax)
	movl	80(%rsp), %r11d
	movl	112(%rsp), %ecx
	jne	.L129
	movq	40(%r14), %rsi
	movq	32(%r14), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L309:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r12, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L157
.L326:
	movq	%r13, (%rsp)
	addq	$1, %r12
	cmpq	%rax, %rbx
	jb	.L83
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L333:
	movq	%r13, (%rsp)
	addq	$1, %r12
	cmpq	%rax, %rbx
	jb	.L292
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L314:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L61
	jne	.L61
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L80
.L323:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L103
.L330:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L130
.L53:
	cmpq	$0, 32(%rdi)
	je	.L231
	movq	$0, 32(%rdi)
	movq	40(%rdi), %rdi
.L181:
	call	free@PLT
	movq	$0, 40(%r14)
	jmp	.L231
.L321:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L89
	jne	.L89
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L107
.L328:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L116
	jne	.L116
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L134
.L306:
	movq	%rax, %rsi
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movaps	%xmm0, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	jmp	.L169
.L173:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L336
.L175:
	movq	(%rsp), %rax
	cmpq	%rax, 32(%r14)
	je	.L337
.L176:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	call	_Znwm@PLT
	movdqa	16(%rsp), %xmm0
	movq	(%rsp), %rdi
	movq	$0, (%rax)
	movq	40(%r14), %rdx
	movl	$5, 8(%rax)
	leaq	1(%rdi), %rcx
	movq	$0x000000000, 16(%rax)
	movb	$-1, 24(%rax)
	movups	%xmm0, 28(%rax)
	cmpq	32(%r14), %rdi
	jnb	.L291
	movq	%rax, (%rdx,%rdi,8)
	movq	(%r14), %rdx
	movq	%rcx, (%rsp)
	movq	280(%rdx), %rax
	jmp	.L54
.L336:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L175
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %eax
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L175
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L175
	jmp	.L282
.L285:
	movq	%r12, %rsi
	jmp	.L284
.L337:
	movq	%rax, %rsi
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movaps	%xmm0, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	jmp	.L176
.L276:
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L286
.L290:
	movq	%r13, %rsi
	jmp	.L284
.L335:
	movq	%rdx, %r10
.L289:
	movq	%r10, %rsi
	jmp	.L284
.L325:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB1:
	call	printf@PLT
.LEHE1:
	jmp	.L286
.L311:
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r12
.LEHB2:
	call	printf@PLT
	jmp	.L286
.L310:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r12
	call	printf@PLT
.LEHE2:
	jmp	.L286
.L332:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB3:
	call	printf@PLT
	jmp	.L286
.L331:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
	call	printf@PLT
.LEHE3:
	jmp	.L286
.L324:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L286
.L317:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB5:
	call	printf@PLT
	jmp	.L286
.L291:
	movq	%rdi, %rsi
	jmp	.L284
.L318:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
	call	printf@PLT
.LEHE5:
	jmp	.L286
.L199:
	movq	%rax, %rbx
	jmp	.L186
.L197:
	movq	%rax, %rbx
	jmp	.L186
.L198:
	movq	%rax, %rbx
	jmp	.L186
.L200:
	movq	%rax, %rbx
	jmp	.L187
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8173-.LLSDACSB8173
.LLSDACSB8173:
	.uleb128 .LEHB0-.LFB8173
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8173
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L198-.LFB8173
	.uleb128 0
	.uleb128 .LEHB2-.LFB8173
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L200-.LFB8173
	.uleb128 0
	.uleb128 .LEHB3-.LFB8173
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L199-.LFB8173
	.uleb128 0
	.uleb128 .LEHB4-.LFB8173
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L198-.LFB8173
	.uleb128 0
	.uleb128 .LEHB5-.LFB8173
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L197-.LFB8173
	.uleb128 0
.LLSDACSE8173:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8173
	.type	_ZN3wze6engine6render14SelectionStageEv.cold, @function
_ZN3wze6engine6render14SelectionStageEv.cold:
.LFSB8173:
.L186:
	.cfi_def_cfa_offset 192
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
.LEHB6:
	call	_Unwind_Resume@PLT
.L187:
	movq	%r12, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE8173:
	.section	.gcc_except_table
.LLSDAC8173:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8173-.LLSDACSBC8173
.LLSDACSBC8173:
	.uleb128 .LEHB6-.LCOLDB11
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8173:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6render14SelectionStageEv, .-_ZN3wze6engine6render14SelectionStageEv
	.section	.text.unlikely
	.size	_ZN3wze6engine6render14SelectionStageEv.cold, .-_ZN3wze6engine6render14SelectionStageEv.cold
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.type	_ZN3wze6engine6render17OrderByLayerMergeEyyy, @function
_ZN3wze6engine6render17OrderByLayerMergeEyyy:
.LFB8176:
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
	movabsq	$1152921504606846975, %r13
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
	movq	%rdi, 8(%rsp)
	movq	%rcx, (%rsp)
	cmpq	%r15, %r13
	jb	.L339
	leaq	0(,%r15,8), %rdi
	movq	%rdx, %r14
	movq	%rsi, %rbx
	call	_Znam@PLT
	movq	(%rsp), %r9
	movq	%rax, %r12
	movq	%r9, %rbp
	subq	%r14, %rbp
	cmpq	%rbp, %r13
	jb	.L339
	leaq	0(,%rbp,8), %rdi
	movq	%r9, (%rsp)
	call	_Znam@PLT
	testq	%r15, %r15
	movq	(%rsp), %r9
	movq	%rax, %r13
	je	.L382
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L364:
	movq	%rax, %rsi
.L346:
	cmpq	%rdx, %rsi
	jnb	.L383
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r14
	jne	.L364
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L361
.L342:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L365:
	movq	%rax, %rsi
.L349:
	cmpq	%rdx, %rsi
	jnb	.L384
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L365
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L351
	xorl	%eax, %eax
	jmp	.L357
	.p2align 4,,10
	.p2align 3
.L386:
	cmpq	%rdx, %rbx
	jnb	.L385
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L359
.L388:
	cmpq	%rbp, %rsi
	jnb	.L381
.L357:
	movq	0(%r13,%rsi,8), %rdi
	movq	(%r12,%rax,8), %r8
	movsd	16(%r8), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L386
	cmpq	%rdx, %rbx
	jnb	.L387
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L388
	.p2align 4,,10
	.p2align 3
.L359:
	cmpq	%rbp, %rsi
	jnb	.L343
.L351:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L363:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L389
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L363
.L343:
	movq	%r12, %rdi
	call	_ZdaPv@PLT
	movq	%r13, %rdi
	call	_ZdaPv@PLT
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
.L361:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L390
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L381:
	cmpq	%r15, %rax
	jb	.L361
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L382:
	testq	%rbp, %rbp
	je	.L343
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L342
.L383:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L389:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L390:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L384:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L385:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L387:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZN3wze6engine6render17OrderByLayerMergeEyyy.cold, @function
_ZN3wze6engine6render17OrderByLayerMergeEyyy.cold:
.LFSB8176:
.L339:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE8176:
	.text
	.size	_ZN3wze6engine6render17OrderByLayerMergeEyyy, .-_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.section	.text.unlikely
	.size	_ZN3wze6engine6render17OrderByLayerMergeEyyy.cold, .-_ZN3wze6engine6render17OrderByLayerMergeEyyy.cold
.LCOLDE12:
	.text
.LHOTE12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12OrderByLayerEyy
	.type	_ZN3wze6engine6render12OrderByLayerEyy, @function
_ZN3wze6engine6render12OrderByLayerEyy:
.LFB8175:
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
	jbe	.L392
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L392
	.p2align 4,,10
	.p2align 3
.L393:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L395:
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
	jb	.L395
	cmpq	%r14, %rbp
	jb	.L393
.L392:
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
.LFE8175:
	.size	_ZN3wze6engine6render12OrderByLayerEyy, .-_ZN3wze6engine6render12OrderByLayerEyy
	.section	.text.unlikely
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.type	_ZN3wze6engine6render20OrderByPriorityMergeEyyy, @function
_ZN3wze6engine6render20OrderByPriorityMergeEyyy:
.LFB8178:
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
	movabsq	$1152921504606846975, %r13
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
	movq	%rdi, 8(%rsp)
	movq	%rcx, (%rsp)
	cmpq	%r15, %r13
	jb	.L402
	leaq	0(,%r15,8), %rdi
	movq	%rdx, %r14
	movq	%rsi, %rbx
	call	_Znam@PLT
	movq	(%rsp), %r9
	movq	%rax, %r12
	movq	%r9, %rbp
	subq	%r14, %rbp
	cmpq	%rbp, %r13
	jb	.L402
	leaq	0(,%rbp,8), %rdi
	movq	%r9, (%rsp)
	call	_Znam@PLT
	testq	%r15, %r15
	movq	(%rsp), %r9
	movq	%rax, %r13
	je	.L442
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L426:
	movq	%rax, %rsi
.L409:
	cmpq	%rdx, %rsi
	jnb	.L443
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%r14, %rsi
	jne	.L426
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L423
.L405:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L427:
	movq	%rax, %rsi
.L412:
	cmpq	%rdx, %rsi
	jnb	.L444
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L427
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L414
	xorl	%eax, %eax
	jmp	.L419
	.p2align 4,,10
	.p2align 3
.L446:
	cmpq	%rdx, %rbx
	jnb	.L445
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L421
.L448:
	cmpq	%rbp, %rsi
	jnb	.L441
.L419:
	movq	(%r12,%rax,8), %r8
	movq	0(%r13,%rsi,8), %rdi
	movzbl	24(%r8), %r10d
	cmpb	%r10b, 24(%rdi)
	jb	.L446
	cmpq	%rdx, %rbx
	jnb	.L447
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L448
	.p2align 4,,10
	.p2align 3
.L421:
	cmpq	%rbp, %rsi
	jnb	.L406
.L414:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L425:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L449
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L425
.L406:
	movq	%r12, %rdi
	call	_ZdaPv@PLT
	movq	%r13, %rdi
	call	_ZdaPv@PLT
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
.L423:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L450
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L441:
	cmpq	%r15, %rax
	jb	.L423
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L442:
	testq	%rbp, %rbp
	je	.L406
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L405
.L443:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L449:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L450:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L444:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L445:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L447:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZN3wze6engine6render20OrderByPriorityMergeEyyy.cold, @function
_ZN3wze6engine6render20OrderByPriorityMergeEyyy.cold:
.LFSB8178:
.L402:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE8178:
	.text
	.size	_ZN3wze6engine6render20OrderByPriorityMergeEyyy, .-_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.section	.text.unlikely
	.size	_ZN3wze6engine6render20OrderByPriorityMergeEyyy.cold, .-_ZN3wze6engine6render20OrderByPriorityMergeEyyy.cold
.LCOLDE13:
	.text
.LHOTE13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15OrderByPriorityEyy
	.type	_ZN3wze6engine6render15OrderByPriorityEyy, @function
_ZN3wze6engine6render15OrderByPriorityEyy:
.LFB8177:
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
	jbe	.L452
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L452
	.p2align 4,,10
	.p2align 3
.L453:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L455:
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
	jb	.L455
	cmpq	%r14, %rbp
	jb	.L453
.L452:
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
.LFE8177:
	.size	_ZN3wze6engine6render15OrderByPriorityEyy, .-_ZN3wze6engine6render15OrderByPriorityEyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13OrderingStageEv
	.type	_ZN3wze6engine6render13OrderingStageEv, @function
_ZN3wze6engine6render13OrderingStageEv:
.LFB8174:
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
	jbe	.L482
	.p2align 4,,10
	.p2align 3
.L462:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L464:
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
	jb	.L464
	cmpq	%r15, %r13
	jb	.L462
	movq	32(%r12), %rdx
	cmpq	$1, %rdx
	jbe	.L482
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L473
	.p2align 4,,10
	.p2align 3
.L467:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rdx, %r13
	jnb	.L492
.L479:
	movq	%r13, %rbp
.L473:
	movq	40(%r12), %rax
	movq	(%rax,%rbp,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, 8(%rsp)
	jnb	.L493
	movq	8(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L481
	je	.L467
.L481:
	cmpq	$1, %rbp
	je	.L494
	cmpq	%r15, 8(%rsp)
	jnb	.L472
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L471:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L470:
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
	jb	.L470
	cmpq	%rbp, %r13
	jb	.L471
	movq	32(%r12), %rdx
.L472:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rdx, %r13
	jb	.L479
.L492:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L482
	.p2align 4,,10
	.p2align 3
.L474:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L476:
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
	jb	.L476
	cmpq	%r13, %rbx
	jb	.L474
.L482:
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
.L494:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L467
.L493:
	movq	8(%rsp), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6render13OrderingStageEv, .-_ZN3wze6engine6render13OrderingStageEv
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.render.RenderColorbox(): SDL_SetRenderDrawColor failed\nParams: %p\n"
	.align 8
.LC15:
	.string	"wze::engine.render.RenderColorbox(): SDL_RenderFillRect failed\nParams: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE, @function
_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE:
.LFB8180:
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
	jne	.L499
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L500
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
.L499:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L500:
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE, .-_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.render.RenderTexturebox(): SDL_SetTextureColorMod failed\nParams: %p\n"
	.align 8
.LC17:
	.string	"wze::engine.render.RenderTexturebox(): SDL_SetTextureAlphaMod failed\nParams: %p\n"
	.align 8
.LC19:
	.string	"wze::engine.render.RenderTexturebox(): SDL_RenderCopyEx failed\nParams: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE, @function
_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE:
.LFB8181:
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
	movq	80(%rax), %rsi
	andl	$2, %r9d
	movq	360(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	352(%rdx), %rsi
	jnb	.L510
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L511
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	80(%rdx), %rsi
	movq	360(%rax), %rdx
	cmpq	352(%rax), %rsi
	jnb	.L510
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L512
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	leaq	28(%r12), %rcx
	movsd	24(%rdx), %xmm0
	movq	80(%rdx), %rsi
	xorpd	.LC18(%rip), %xmm0
	movq	360(%rax), %rdx
	cmpq	352(%rax), %rsi
	jnb	.L510
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L513
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
.L510:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L513:
	leaq	.LC19(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L512:
	leaq	.LC17(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L511:
	leaq	.LC16(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE, .-_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed\nParams: %p\n"
	.align 8
.LC21:
	.string	"wze::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed\nParams: %p\n"
	.align 8
.LC22:
	.string	"wze::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed\nParams: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.type	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE, @function
_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE:
.LFB8182:
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
	movq	88(%rax), %rcx
	movzbl	21(%rax), %r8d
	negl	%r9d
	movzbl	20(%rax), %edi
	andl	$2, %r9d
	orl	%r9d, %ebx
	movzbl	22(%rax), %r9d
	movq	112(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	360(%rdx), %rax
	cmpq	352(%rdx), %rsi
	jnb	.L523
	movq	(%rax,%rsi,8), %rax
	movl	%r9d, %ecx
	movl	%edi, %esi
	movl	%r8d, %edx
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L524
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movq	88(%rax), %rcx
	movzbl	23(%rax), %edi
	movq	112(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
	movq	360(%rdx), %rax
	cmpq	352(%rdx), %rsi
	jnb	.L523
	movq	(%rax,%rsi,8), %rax
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L525
	movq	0(%rbp), %rdx
	movq	(%r12), %rax
	movzbl	%bl, %r9d
	leaq	28(%rbp), %rcx
	movsd	24(%rdx), %xmm0
	movq	88(%rdx), %rsi
	movq	112(%rdx), %rdx
	xorpd	.LC18(%rip), %xmm0
	movq	(%rdx,%rsi,8), %rsi
	movq	360(%rax), %rdx
	cmpq	352(%rax), %rsi
	jnb	.L523
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L526
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
.L523:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L526:
	leaq	.LC22(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L525:
	leaq	.LC21(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L524:
	leaq	.LC20(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE, .-_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"wze::engine.render.RenderTextbox(): SDL_SetTextureColorMod failed\nParams: %p\n"
	.align 8
.LC24:
	.string	"wze::engine.render.RenderTextbox(): SDL_SetTextureAlphaMod failed\nParams: %p\n"
	.align 8
.LC25:
	.string	"wze::engine.render.RenderTextbox(): SDL_RenderCopyEx failed\nParams: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE, @function
_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE:
.LFB8183:
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
	movq	128(%rax), %rdi
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movl	%r9d, %ebp
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L532
	movq	(%rbx), %rax
	movzbl	19(%rax), %esi
	movq	128(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L533
	movq	(%rbx), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	28(%rbx), %rcx
	movzbl	%bpl, %r9d
	movsd	24(%rax), %xmm0
	movq	128(%rax), %rsi
	movq	(%r12), %rax
	xorpd	.LC18(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L534
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
.L532:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L534:
	leaq	.LC25(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L533:
	leaq	.LC24(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE, .-_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.render.RenderOverlapbox(): SDL_SetRenderDrawColor failed\nParams: %p\n"
	.align 8
.LC27:
	.string	"wze::engine.render.RenderOverlapbox(): SDL_RenderFillRect failed\nParams: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE, @function
_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE:
.LFB8184:
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
	jne	.L543
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L544
	testq	%rbx, %rbx
	je	.L538
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L538:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L543:
	.cfi_restore_state
	leaq	.LC26(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L544:
	leaq	.LC27(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8184:
	.size	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE, .-_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"wze::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed\nParams: %p\n"
	.align 8
.LC29:
	.string	"wze::engine.render.RenderHitbox(): SDL_RenderFillRect failed\nParams: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE, @function
_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE:
.LFB8185:
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
	jne	.L553
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L554
	testq	%rbx, %rbx
	je	.L548
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L548:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L553:
	.cfi_restore_state
	leaq	.LC28(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L554:
	leaq	.LC29(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8185:
	.size	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE, .-_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.render.RenderingStage(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC31:
	.string	"wze::engine.render.RenderingStage(): SDL_RenderClear() failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderingStageEv
	.type	_ZN3wze6engine6render14RenderingStageEv, @function
_ZN3wze6engine6render14RenderingStageEv:
.LFB8179:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rax
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L590
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L557
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L559
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L561
	.p2align 4,,10
	.p2align 3
.L592:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L591
.L561:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L592
	movq	%rbx, %r12
	cmpq	%rdx, %rbx
	jnb	.L563
.L562:
	leaq	.L566(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L573:
	movq	(%rax,%rbx,8), %rsi
	cmpl	$5, 8(%rsi)
	ja	.L564
	movl	8(%rsi), %eax
	movq	%rbp, %rdi
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L566:
	.long	.L571-.L566
	.long	.L570-.L566
	.long	.L569-.L566
	.long	.L568-.L566
	.long	.L567-.L566
	.long	.L565-.L566
	.text
	.p2align 4,,10
	.p2align 3
.L559:
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderPresent@PLT
	addq	$8, %rsp
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
.L567:
	.cfi_restore_state
	call	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	movq	32(%rbp), %rdx
.L564:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L572
.L593:
	movq	40(%rbp), %rax
	jmp	.L573
	.p2align 4,,10
	.p2align 3
.L568:
	call	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	movq	32(%rbp), %rdx
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L593
	.p2align 4,,10
	.p2align 3
.L572:
	testq	%r12, %r12
	je	.L559
	movq	40(%rbp), %rax
.L563:
	xorl	%ebx, %ebx
	leaq	.L577(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L583:
	cmpq	%rdx, %rbx
	jnb	.L594
	movq	(%rax,%rbx,8), %rsi
	cmpl	$5, 8(%rsi)
	ja	.L575
	movl	8(%rsi), %eax
	movq	%rbp, %rdi
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L577:
	.long	.L582-.L577
	.long	.L581-.L577
	.long	.L580-.L577
	.long	.L579-.L577
	.long	.L578-.L577
	.long	.L576-.L577
	.text
	.p2align 4,,10
	.p2align 3
.L569:
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L570:
	call	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L565:
	call	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L571:
	call	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L578:
	call	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.p2align 4,,10
	.p2align 3
.L575:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L559
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	jmp	.L583
	.p2align 4,,10
	.p2align 3
.L580:
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L581:
	call	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L582:
	call	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L576:
	call	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L579:
	call	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	jmp	.L575
	.p2align 4,,10
	.p2align 3
.L591:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L562
.L594:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L557:
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L590:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6render14RenderingStageEv, .-_ZN3wze6engine6render14RenderingStageEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render6UpdateEv
	.type	_ZN3wze6engine6render6UpdateEv, @function
_ZN3wze6engine6render6UpdateEv:
.LFB8172:
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
.LFE8172:
	.size	_ZN3wze6engine6render6UpdateEv, .-_ZN3wze6engine6render6UpdateEv
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
