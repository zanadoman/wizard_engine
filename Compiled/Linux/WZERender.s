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
.LFB8364:
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
.LFE8364:
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
.LFB8365:
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
.LFE8365:
	.size	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6renderC2EPS0_
	.type	_ZN3wze6engine6renderC2EPS0_, @function
_ZN3wze6engine6renderC2EPS0_:
.LFB8147:
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
.LFE8147:
	.size	_ZN3wze6engine6renderC2EPS0_, .-_ZN3wze6engine6renderC2EPS0_
	.globl	_ZN3wze6engine6renderC1EPS0_
	.set	_ZN3wze6engine6renderC1EPS0_,_ZN3wze6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2Ev
	.type	_ZN3wze6engine6render5tokenC2Ev, @function
_ZN3wze6engine6render5tokenC2Ev:
.LFB8150:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6render5tokenC2Ev, .-_ZN3wze6engine6render5tokenC2Ev
	.globl	_ZN3wze6engine6render5tokenC1Ev
	.set	_ZN3wze6engine6render5tokenC1Ev,_ZN3wze6engine6render5tokenC2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.type	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, @function
_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB8153:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movl	%edx, 8(%rdi)
	movb	%cl, 24(%rdi)
	movq	%r8, 28(%rdi)
	movq	%r9, 36(%rdi)
	movsd	%xmm0, 16(%rdi)
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect, .-_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.globl	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.set	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetSamplingStepEv
	.type	_ZN3wze6engine6render15GetSamplingStepEv, @function
_ZN3wze6engine6render15GetSamplingStepEv:
.LFB8155:
	.cfi_startproc
	movsd	16(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8155:
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
.LFB8156:
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
.LFE8156:
	.size	_ZN3wze6engine6render15SetSamplingStepEd, .-_ZN3wze6engine6render15SetSamplingStepEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetBufferSizeKBEv
	.type	_ZN3wze6engine6render15GetBufferSizeKBEv, @function
_ZN3wze6engine6render15GetBufferSizeKBEv:
.LFB8157:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	shrq	$7, %rax
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6render15GetBufferSizeKBEv, .-_ZN3wze6engine6render15GetBufferSizeKBEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetBufferSizeKBEt
	.type	_ZN3wze6engine6render15SetBufferSizeKBEt, @function
_ZN3wze6engine6render15SetBufferSizeKBEt:
.LFB8158:
	.cfi_startproc
	movq	%rsi, %rax
	salq	$7, %rax
	andl	$8388480, %eax
	movw	%ax, 24(%rdi)
	salq	$48, %rax
	shrq	$55, %rax
	ret
	.cfi_endproc
.LFE8158:
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
.LFB8160:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8160
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	(%rdi), %rdx
	movq	352(%rdx), %rax
	cmpq	$1, %rax
	jbe	.L54
	movq	$0, (%rsp)
	movl	$1, %ebx
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L296
.L180:
	movq	360(%rdx), %rcx
	leaq	0(,%rbx,8), %rbp
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.L55
	cmpb	$0, 168(%rsi)
	je	.L55
	cmpq	%rax, %rbx
	jnb	.L173
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
	jne	.L297
	.p2align 4,,10
	.p2align 3
.L57:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L173
.L56:
	movq	(%rcx,%rbp), %rdi
	cmpq	24(%rdi), %r12
	jb	.L83
	cmpq	%rax, %rbx
	jnb	.L173
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L84:
	movq	(%rcx,%rbp), %rdi
	cmpq	56(%rdi), %r12
	jnb	.L298
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
	jne	.L299
	.p2align 4,,10
	.p2align 3
.L85:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jb	.L84
.L173:
	movq	%rbx, %rsi
.L286:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
.LEHB0:
	call	printf@PLT
.L288:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L298:
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rdi
	movl	$1, %r12d
	cmpq	88(%rdi), %r12
	jnb	.L300
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
	jnb	.L301
	cmpq	$0, (%r9,%r8,8)
	jne	.L302
	.p2align 4,,10
	.p2align 3
.L112:
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L173
.L293:
	movq	(%rcx,%rbp), %rdi
	cmpq	88(%rdi), %r12
	jb	.L138
.L300:
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rdi
	movl	$1, %r13d
	cmpq	120(%rdi), %r13
	jnb	.L303
	.p2align 4,,10
	.p2align 3
.L165:
	movq	128(%rdi), %rsi
	leaq	0(,%r13,8), %r15
	movq	(%rsi,%r13,8), %rsi
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
	cmpq	$0, 120(%rsi)
	jne	.L304
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$1, %r13
	cmpq	%rax, %rbx
	jnb	.L173
.L294:
	movq	(%rcx,%rbp), %rdi
	cmpq	120(%rdi), %r13
	jb	.L165
.L303:
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rcx
	movl	$1, %r12d
	cmpq	152(%rcx), %r12
	jnb	.L305
	.p2align 4,,10
	.p2align 3
.L174:
	movq	160(%rcx), %rsi
	movq	(%rsi,%r12,8), %rdi
	testq	%rdi, %rdi
	je	.L167
	cmpb	$0, 18(%rdi)
	je	.L167
	movzwl	80(%rdi), %esi
	testw	%si, %si
	je	.L167
	movzwl	82(%rdi), %r8d
	testw	%r8w, %r8w
	je	.L167
	movsd	32(%rdi), %xmm0
	leaq	80(%rdx), %rax
	movsd	40(%rdi), %xmm1
	movl	%r8d, %edx
	movsd	264(%rcx), %xmm2
	movq	%rax, %rdi
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	24(%rsp), %rax
	movdqa	16(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L283
	movl	24(%rsp), %edx
	testl	%edx, %edx
	jne	.L168
.L283:
	movq	(%r14), %rdx
	movq	352(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L167:
	movq	360(%rdx), %rcx
	addq	$1, %r12
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rcx
	cmpq	152(%rcx), %r12
	jb	.L174
.L305:
	cmpb	$0, 192(%rcx)
	je	.L55
	movzwl	282(%rcx), %esi
	testw	%si, %si
	je	.L55
	movzwl	284(%rcx), %edi
	testw	%di, %di
	je	.L55
	leaq	80(%rdx), %rax
	movsd	216(%rcx), %xmm0
	movl	%edi, %edx
	movsd	264(%rcx), %xmm2
	movsd	224(%rcx), %xmm1
	movq	%rax, %rdi
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	24(%rsp), %rax
	movdqa	16(%rsp), %xmm0
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L284
	movl	24(%rsp), %eax
	testl	%eax, %eax
	jne	.L175
.L284:
	movq	(%r14), %rdx
	movq	352(%rdx), %rax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L296:
	movq	32(%r14), %rbx
	cmpq	%rbx, (%rsp)
	jb	.L306
.L233:
	addq	$120, %rsp
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
.L168:
	.cfi_restore_state
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L307
.L170:
	movq	(%rsp), %rax
	cmpq	%rax, 32(%r14)
	je	.L308
.L171:
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
	jnb	.L292
	movq	%rax, (%rdx,%rdi,8)
	movq	(%r14), %rdx
	movq	%rcx, (%rsp)
	movq	352(%rdx), %rax
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L304:
	movsd	.LC9(%rip), %xmm0
	mulsd	272(%rdi), %xmm0
	movsd	264(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L309
	ucomisd	%xmm1, %xmm2
	jp	.L145
	jne	.L145
	addsd	.LC8(%rip), %xmm1
.L145:
	comisd	%xmm2, %xmm1
	jbe	.L140
	movq	(%rsp), %r12
	movsd	%xmm1, 40(%rsp)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L315:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L282
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r12, %r12
	jne	.L152
.L158:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L310
.L153:
	cmpq	%r12, 32(%r14)
	je	.L311
.L159:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	16(%rsp), %xmm2
	movq	352(%rdx), %rax
	movq	360(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L312
	movq	(%rsi,%rbp), %rsi
	movq	128(%rsi), %rdi
	cmpq	120(%rsi), %r13
	jnb	.L313
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
	jnb	.L287
	movq	%rcx, (%rdi,%r12,8)
	movq	%rsi, %r12
.L151:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm5
	movq	360(%rdx), %rcx
	comisd	%xmm2, %xmm5
	jbe	.L314
.L163:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rax
	movq	128(%rax), %rdx
	cmpq	120(%rax), %r13
	jnb	.L291
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	40(%rax), %xmm0
	movzwl	64(%rax), %edx
	movzwl	56(%rax), %esi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %ecx
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%ecx, %ecx
	jne	.L315
.L282:
	movq	(%r14), %rdx
	movq	352(%rdx), %rax
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L306:
	movq	(%rsp), %rax
	movq	40(%r14), %rdi
	movq	%rax, 32(%r14)
	testq	%rax, %rax
	je	.L183
	leaq	0(,%rax,8), %rsi
	call	realloc@PLT
	movq	%rax, 40(%r14)
	testq	%rax, %rax
	jne	.L233
	movq	(%rsp), %rsi
	movq	%rbx, %rdx
	leaq	.LC10(%rip), %rdi
	subq	%rsi, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L297:
	movsd	.LC9(%rip), %xmm0
	mulsd	272(%rdi), %xmm0
	movsd	264(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L316
	ucomisd	%xmm1, %xmm2
	jp	.L62
	jne	.L62
	addsd	.LC8(%rip), %xmm1
.L62:
	comisd	%xmm2, %xmm1
	jbe	.L57
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L322:
	movl	8(%rsp), %r8d
	testl	%r8d, %r8d
	je	.L279
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r11d
	movd	%xmm3, %r8d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r9d
	testq	%r13, %r13
	jne	.L69
.L75:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L317
.L70:
	cmpq	%r13, 32(%r14)
	je	.L318
.L76:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movsd	(%rsp), %xmm2
	movq	%rax, %rcx
	movdqa	16(%rsp), %xmm0
	movq	352(%rdx), %rax
	movq	360(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L319
	movq	(%rsi,%rbp), %rsi
	movq	32(%rsi), %rdi
	cmpq	24(%rsi), %r12
	jnb	.L320
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
	jnb	.L278
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L68:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm4
	movq	360(%rdx), %rcx
	comisd	%xmm2, %xmm4
	jbe	.L321
.L81:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rax
	movq	32(%rax), %rdx
	cmpq	24(%rax), %r12
	jnb	.L287
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
	jne	.L322
.L279:
	movq	(%r14), %rdx
	movq	352(%rdx), %rax
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L317:
	movzwl	10(%r14), %eax
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
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L69:
	movq	32(%r14), %rax
	leaq	-1(%r13), %r10
	movq	40(%r14), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L290
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	(%r14), %rax
	movq	360(%rax), %rdi
	cmpq	352(%rax), %rbx
	jnb	.L173
	movq	(%rdi,%rbp), %rax
	movq	32(%rax), %rdi
	cmpq	24(%rax), %r12
	jnb	.L287
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
	movl	%r8d, 80(%rsp)
	movl	%ecx, 64(%rsp)
	movq	%r10, (%rsp)
	movaps	%xmm0, 96(%rsp)
	movd	%xmm0, 92(%rsp)
	movsd	%xmm2, 48(%rsp)
	movd	%xmm3, 88(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	80(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movl	88(%rsp), %r9d
	movsd	48(%rsp), %xmm2
	movl	64(%rsp), %ecx
	cmpl	%r8d, 40(%rax)
	movl	92(%rsp), %r11d
	movdqa	96(%rsp), %xmm0
	jne	.L75
	movq	40(%r14), %rsi
	movq	32(%r14), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L321:
	movq	%r13, (%rsp)
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L318:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L299:
	movsd	.LC9(%rip), %xmm0
	mulsd	272(%rdi), %xmm0
	movsd	264(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L323
	ucomisd	%xmm1, %xmm2
	jp	.L90
	jne	.L90
	addsd	.LC8(%rip), %xmm1
.L90:
	comisd	%xmm2, %xmm1
	jbe	.L85
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L329:
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
	testq	%r13, %r13
	jne	.L97
.L103:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r11d, %eax
	js	.L324
.L98:
	cmpq	%r13, 32(%r14)
	je	.L325
.L104:
	movl	$48, %edi
	movsd	%xmm2, 16(%rsp)
	movaps	%xmm0, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rax, %rcx
	movsd	16(%rsp), %xmm2
	movq	352(%rdx), %rax
	movq	360(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L326
	movq	(%rsi,%rbp), %rsi
	movq	64(%rsi), %rdi
	cmpq	56(%rsi), %r12
	jnb	.L327
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
	jnb	.L278
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L96:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm6
	movq	360(%rdx), %rcx
	comisd	%xmm2, %xmm6
	jbe	.L328
.L108:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %r12
	jnb	.L287
	movq	(%rdx,%r15), %rax
	movsd	%xmm2, 16(%rsp)
	movsd	40(%rax), %xmm0
	movzwl	18(%rax), %edx
	movzwl	16(%rax), %esi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6camera9TransformEddttd@PLT
	movsd	16(%rsp), %xmm2
	movq	%rdx, 8(%rsp)
	movl	8(%rsp), %edi
	movq	%rax, (%rsp)
	movdqa	(%rsp), %xmm0
	testl	%edi, %edi
	jne	.L329
.L280:
	movq	(%r14), %rdx
	movq	352(%rdx), %rax
	jmp	.L96
.L302:
	movsd	.LC9(%rip), %xmm0
	mulsd	272(%rdi), %xmm0
	movsd	264(%rdi), %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	comisd	%xmm2, %xmm0
	ja	.L330
	ucomisd	%xmm2, %xmm1
	jp	.L118
	jne	.L118
	addsd	.LC8(%rip), %xmm1
.L118:
	comisd	%xmm2, %xmm1
	jbe	.L112
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L336:
	movq	8(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L281
	pshufd	$255, %xmm0, %xmm3
	movd	%xmm0, %r10d
	movd	%xmm3, %r9d
	movdqa	%xmm0, %xmm3
	punpckhdq	%xmm0, %xmm3
	movd	%xmm3, %ecx
	pshufd	$85, %xmm0, %xmm3
	movd	%xmm3, %r11d
	testq	%r13, %r13
	jne	.L125
.L131:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r10d, %eax
	js	.L331
.L126:
	cmpq	%r13, 32(%r14)
	je	.L332
.L132:
	movl	$48, %edi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Znwm@PLT
	movq	(%r14), %rdx
	movsd	(%rsp), %xmm2
	movq	%rax, %rcx
	movdqa	16(%rsp), %xmm0
	movq	352(%rdx), %rax
	movq	360(%rdx), %rsi
	cmpq	%rax, %rbx
	jnb	.L333
	movq	(%rsi,%rbp), %rsi
	movq	96(%rsi), %rdi
	cmpq	88(%rsi), %r12
	jnb	.L334
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
	jnb	.L278
	movq	%rcx, (%rdi,%r13,8)
	movq	%rsi, %r13
.L124:
	addsd	16(%r14), %xmm2
	movsd	40(%rsp), %xmm7
	movq	360(%rdx), %rcx
	comisd	%xmm2, %xmm7
	jbe	.L335
.L136:
	leaq	80(%rdx), %rdi
	cmpq	%rax, %rbx
	jnb	.L173
	movq	(%rcx,%rbp), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %r12
	jnb	.L287
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
	jne	.L336
.L281:
	movq	(%r14), %rdx
	movq	352(%rdx), %rax
	jmp	.L124
.L307:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L170
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %edx
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %edi
	addl	%edx, %edi
	jns	.L170
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jge	.L170
	jmp	.L283
.L309:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L145
	jne	.L145
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r12
	movsd	%xmm1, 40(%rsp)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L310:
	movzwl	10(%r14), %eax
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
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L152:
	movq	32(%r14), %rax
	leaq	-1(%r12), %r10
	movq	40(%r14), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L290
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	(%r14), %rax
	movq	360(%rax), %rdi
	cmpq	352(%rax), %rbx
	jnb	.L173
	movq	(%rdi,%rbp), %rax
	movq	128(%rax), %rdi
	cmpq	120(%rax), %r13
	jnb	.L291
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
	movl	%ecx, 64(%rsp)
	movl	%r8d, 88(%rsp)
	movq	%r10, (%rsp)
	movd	%xmm0, 96(%rsp)
	movsd	%xmm2, 80(%rsp)
	movaps	%xmm0, 48(%rsp)
	movd	%xmm3, 92(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	88(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movdqa	48(%rsp), %xmm0
	movl	64(%rsp), %ecx
	movsd	80(%rsp), %xmm2
	cmpl	40(%rax), %r8d
	movl	92(%rsp), %r9d
	movl	96(%rsp), %r11d
	jne	.L158
	movq	40(%r14), %rsi
	movq	32(%r14), %rdi
	movq	%r10, %rdx
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L324:
	movzwl	10(%r14), %eax
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
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L314:
	movq	%r12, (%rsp)
	addq	$1, %r13
	cmpq	%rax, %rbx
	jb	.L294
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L331:
	movzwl	10(%r14), %eax
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
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L97:
	movq	32(%r14), %rax
	leaq	-1(%r13), %r10
	movq	40(%r14), %rsi
	movq	%rax, 16(%rsp)
	cmpq	%rax, %r10
	jnb	.L290
	movq	(%rsi,%r10,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movq	(%r14), %rax
	movq	360(%rax), %rdi
	cmpq	352(%rax), %rbx
	jnb	.L173
	movq	(%rdi,%rbp), %rax
	movq	64(%rax), %rdi
	cmpq	56(%rax), %r12
	jnb	.L287
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
	movl	%r8d, 92(%rsp)
	movl	%ecx, 80(%rsp)
	movq	%r10, (%rsp)
	movsd	%xmm2, 96(%rsp)
	movaps	%xmm0, 64(%rsp)
	movd	%xmm0, 48(%rsp)
	movd	%xmm3, 88(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	92(%rsp), %r8d
	movq	(%rsp), %r10
	movq	(%rax), %rax
	movl	88(%rsp), %r9d
	movl	48(%rsp), %r11d
	movdqa	64(%rsp), %xmm0
	cmpl	%r8d, 40(%rax)
	movl	80(%rsp), %ecx
	movsd	96(%rsp), %xmm2
	jne	.L103
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
.L125:
	movq	40(%r14), %rax
	movq	32(%r14), %r8
	leaq	-1(%r13), %rdx
	movq	%rax, (%rsp)
	cmpq	%r8, %rdx
	jnb	.L337
	movq	(%rax,%rdx,8), %rsi
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	(%r14), %rax
	movq	360(%rax), %rdi
	cmpq	352(%rax), %rbx
	jnb	.L173
	movq	(%rdi,%rbp), %rax
	movq	96(%rax), %rdi
	cmpq	88(%rax), %r12
	jnb	.L287
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
	movl	%ecx, 80(%rsp)
	movl	%r9d, 88(%rsp)
	movq	%rdx, 16(%rsp)
	movd	%xmm0, 96(%rsp)
	movaps	%xmm0, 64(%rsp)
	movsd	%xmm2, 48(%rsp)
	movd	%xmm3, 92(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	88(%rsp), %r9d
	movq	16(%rsp), %rdx
	movq	(%rax), %rax
	movsd	48(%rsp), %xmm2
	movdqa	64(%rsp), %xmm0
	movl	80(%rsp), %ecx
	cmpl	%r9d, 40(%rax)
	movl	92(%rsp), %r11d
	movl	96(%rsp), %r10d
	jne	.L131
	movq	40(%r14), %rsi
	movq	32(%r14), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movsd	(%rsp), %xmm2
	movq	(%rax), %rax
	movsd	%xmm2, 16(%rax)
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L311:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r12, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L159
.L328:
	movq	%r13, (%rsp)
	addq	$1, %r12
	cmpq	%rax, %rbx
	jb	.L84
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L316:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L62
	jne	.L62
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L81
.L335:
	movq	%r13, (%rsp)
	addq	$1, %r12
	cmpq	%rax, %rbx
	jb	.L293
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L325:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, (%rsp)
	movsd	%xmm2, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movsd	16(%rsp), %xmm2
	movdqa	(%rsp), %xmm0
	jmp	.L104
.L332:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movq	%r13, %rsi
	movaps	%xmm0, 16(%rsp)
	movsd	%xmm2, (%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	movsd	(%rsp), %xmm2
	jmp	.L132
.L54:
	cmpq	$0, 32(%rdi)
	je	.L233
	movq	$0, 32(%rdi)
	movq	40(%rdi), %rdi
.L183:
	call	free@PLT
	movq	$0, 40(%r14)
	jmp	.L233
.L323:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L90
	jne	.L90
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L108
.L330:
	movsd	.LC8(%rip), %xmm2
	ucomisd	%xmm2, %xmm1
	jp	.L118
	jne	.L118
	movapd	%xmm1, %xmm2
	movsd	.LC7(%rip), %xmm1
	movq	(%rsp), %r13
	movsd	%xmm1, 40(%rsp)
	jmp	.L136
.L308:
	movq	%rax, %rsi
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movaps	%xmm0, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	jmp	.L171
.L175:
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %edx
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L338
.L177:
	movq	(%rsp), %rax
	cmpq	%rax, 32(%r14)
	je	.L339
.L178:
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
	jnb	.L292
	movq	%rax, (%rdx,%rdi,8)
	movq	(%r14), %rdx
	movq	%rcx, (%rsp)
	movq	352(%rdx), %rax
	jmp	.L55
.L338:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L177
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %eax
	pshufd	$255, %xmm0, %xmm1
	movd	%xmm1, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L177
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L177
	jmp	.L284
.L339:
	movq	%rax, %rsi
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rdi
	movaps	%xmm0, 16(%rsp)
	leaq	1(%rax), %rdx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	movdqa	16(%rsp), %xmm0
	jmp	.L178
.L287:
	movq	%r12, %rsi
	jmp	.L286
.L278:
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	jmp	.L288
.L291:
	movq	%r13, %rsi
	jmp	.L286
.L312:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r12
.LEHB1:
	call	printf@PLT
.LEHE1:
	jmp	.L288
.L333:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB2:
	call	printf@PLT
.LEHE2:
	jmp	.L288
.L327:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB3:
	call	printf@PLT
.LEHE3:
	jmp	.L288
.L334:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L288
.L326:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB5:
	call	printf@PLT
.LEHE5:
	jmp	.L288
.L337:
	movq	%rdx, %rsi
	jmp	.L286
.L313:
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r12
.LEHB6:
	call	printf@PLT
.LEHE6:
	jmp	.L288
.L301:
	movq	%r8, %rsi
	jmp	.L286
.L290:
	movq	%r10, %rsi
	jmp	.L286
.L292:
	movq	%rdi, %rsi
	jmp	.L286
.L320:
	movq	%r12, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
.LEHB7:
	call	printf@PLT
	jmp	.L288
.L319:
	movq	%rbx, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	movq	%rcx, %r13
	call	printf@PLT
.LEHE7:
	jmp	.L288
.L202:
	movq	%rax, %rbx
	jmp	.L189
.L200:
	movq	%rax, %rbx
	jmp	.L188
.L201:
	movq	%rax, %rbx
	jmp	.L188
.L199:
	movq	%rax, %rbx
	jmp	.L188
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8160-.LLSDACSB8160
.LLSDACSB8160:
	.uleb128 .LEHB0-.LFB8160
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8160
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L202-.LFB8160
	.uleb128 0
	.uleb128 .LEHB2-.LFB8160
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L201-.LFB8160
	.uleb128 0
	.uleb128 .LEHB3-.LFB8160
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L200-.LFB8160
	.uleb128 0
	.uleb128 .LEHB4-.LFB8160
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L201-.LFB8160
	.uleb128 0
	.uleb128 .LEHB5-.LFB8160
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L200-.LFB8160
	.uleb128 0
	.uleb128 .LEHB6-.LFB8160
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L202-.LFB8160
	.uleb128 0
	.uleb128 .LEHB7-.LFB8160
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L199-.LFB8160
	.uleb128 0
.LLSDACSE8160:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8160
	.type	_ZN3wze6engine6render14SelectionStageEv.cold, @function
_ZN3wze6engine6render14SelectionStageEv.cold:
.LFSB8160:
.L189:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.L188:
	movq	%r13, %rdi
	movl	$48, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
	.cfi_endproc
.LFE8160:
	.section	.gcc_except_table
.LLSDAC8160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8160-.LLSDACSBC8160
.LLSDACSBC8160:
	.uleb128 .LEHB8-.LCOLDB11
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC8160:
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
	jb	.L341
	leaq	0(,%r15,8), %rdi
	movq	%rdx, %r14
	movq	%rsi, %rbx
	call	_Znam@PLT
	movq	(%rsp), %r9
	movq	%rax, %r12
	movq	%r9, %rbp
	subq	%r14, %rbp
	cmpq	%rbp, %r13
	jb	.L341
	leaq	0(,%rbp,8), %rdi
	movq	%r9, (%rsp)
	call	_Znam@PLT
	testq	%r15, %r15
	movq	(%rsp), %r9
	movq	%rax, %r13
	je	.L384
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L366:
	movq	%rax, %rsi
.L348:
	cmpq	%rdx, %rsi
	jnb	.L385
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r14
	jne	.L366
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L363
.L344:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L367:
	movq	%rax, %rsi
.L351:
	cmpq	%rdx, %rsi
	jnb	.L386
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L367
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L353
	xorl	%eax, %eax
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L388:
	cmpq	%rdx, %rbx
	jnb	.L387
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L361
.L390:
	cmpq	%rbp, %rsi
	jnb	.L383
.L359:
	movq	0(%r13,%rsi,8), %rdi
	movq	(%r12,%rax,8), %r8
	movsd	16(%r8), %xmm0
	comisd	16(%rdi), %xmm0
	ja	.L388
	cmpq	%rdx, %rbx
	jnb	.L389
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L390
	.p2align 4,,10
	.p2align 3
.L361:
	cmpq	%rbp, %rsi
	jnb	.L345
.L353:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L365:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L391
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L365
.L345:
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
.L363:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L392
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L383:
	cmpq	%r15, %rax
	jb	.L363
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L384:
	testq	%rbp, %rbp
	je	.L345
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L344
.L385:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L391:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L392:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L386:
	leaq	.LC2(%rip), %rdi
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
.L389:
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
.LFSB8163:
.L341:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE8163:
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
	jbe	.L394
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L394
	.p2align 4,,10
	.p2align 3
.L395:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L397:
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
	jb	.L397
	cmpq	%r14, %rbp
	jb	.L395
.L394:
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
.LFB8165:
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
	jb	.L404
	leaq	0(,%r15,8), %rdi
	movq	%rdx, %r14
	movq	%rsi, %rbx
	call	_Znam@PLT
	movq	(%rsp), %r9
	movq	%rax, %r12
	movq	%r9, %rbp
	subq	%r14, %rbp
	cmpq	%rbp, %r13
	jb	.L404
	leaq	0(,%rbp,8), %rdi
	movq	%r9, (%rsp)
	call	_Znam@PLT
	testq	%r15, %r15
	movq	(%rsp), %r9
	movq	%rax, %r13
	je	.L444
	movq	8(%rsp), %rax
	movq	%rbx, %rsi
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	movq	%rbx, %rax
	negq	%rax
	leaq	(%r12,%rax,8), %rdi
	jmp	.L411
	.p2align 4,,10
	.p2align 3
.L428:
	movq	%rax, %rsi
.L411:
	cmpq	%rdx, %rsi
	jnb	.L445
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%r14, %rsi
	jne	.L428
	xorl	%esi, %esi
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L425
.L407:
	leaq	1(%r14), %rsi
	negq	%r14
	leaq	0(%r13,%r14,8), %rdi
	jmp	.L414
	.p2align 4,,10
	.p2align 3
.L429:
	movq	%rax, %rsi
.L414:
	cmpq	%rdx, %rsi
	jnb	.L446
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, -8(%rdi,%rsi,8)
	leaq	1(%rsi), %rax
	cmpq	%rsi, %r9
	jne	.L429
	xorl	%esi, %esi
	testq	%r15, %r15
	je	.L416
	xorl	%eax, %eax
	jmp	.L421
	.p2align 4,,10
	.p2align 3
.L448:
	cmpq	%rdx, %rbx
	jnb	.L447
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r15, %rax
	jnb	.L423
.L450:
	cmpq	%rbp, %rsi
	jnb	.L443
.L421:
	movq	(%r12,%rax,8), %r8
	movq	0(%r13,%rsi,8), %rdi
	movzbl	24(%r8), %r10d
	cmpb	%r10b, 24(%rdi)
	jb	.L448
	cmpq	%rdx, %rbx
	jnb	.L449
	movq	%r8, %rdi
	addq	$1, %rax
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.L450
	.p2align 4,,10
	.p2align 3
.L423:
	cmpq	%rbp, %rsi
	jnb	.L408
.L416:
	addq	%rbx, %rbp
	subq	%rsi, %rbp
	subq	%rbx, %rsi
	leaq	0(%r13,%rsi,8), %rsi
	.p2align 4,,10
	.p2align 3
.L427:
	movq	(%rsi,%rbx,8), %rax
	cmpq	%rdx, %rbx
	jnb	.L451
	movq	%rax, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jne	.L427
.L408:
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
.L425:
	.cfi_restore_state
	movq	(%r12,%rax,8), %rdi
	cmpq	%rdx, %rbx
	jnb	.L452
	movq	%rdi, (%rcx,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L443:
	cmpq	%r15, %rax
	jb	.L425
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L444:
	testq	%rbp, %rbp
	je	.L408
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	40(%rax), %rcx
	jmp	.L407
.L445:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L451:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L452:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L446:
	leaq	.LC2(%rip), %rdi
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
.L449:
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
.LFSB8165:
.L404:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE8165:
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
.LFB8164:
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
	jbe	.L454
	leaq	-1(%rdx), %r15
	movq	%rdi, %r13
	movq	%rdx, %r14
	movl	$1, %ebp
	cmpq	%r15, %rsi
	jnb	.L454
	.p2align 4,,10
	.p2align 3
.L455:
	movq	%rbp, %r12
	movq	8(%rsp), %rbx
	addq	%rbp, %rbp
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L457:
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
	jb	.L457
	cmpq	%r14, %rbp
	jb	.L455
.L454:
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
.LFE8164:
	.size	_ZN3wze6engine6render15OrderByPriorityEyy, .-_ZN3wze6engine6render15OrderByPriorityEyy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13OrderingStageEv
	.type	_ZN3wze6engine6render13OrderingStageEv, @function
_ZN3wze6engine6render13OrderingStageEv:
.LFB8161:
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
	jbe	.L484
	.p2align 4,,10
	.p2align 3
.L464:
	movq	%r13, %r14
	xorl	%ebx, %ebx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L466:
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
	jb	.L466
	cmpq	%r15, %r13
	jb	.L464
	movq	32(%r12), %rdx
	cmpq	$1, %rdx
	jbe	.L484
	movq	$0, 8(%rsp)
	xorl	%r15d, %r15d
	movl	$1, %ebp
	jmp	.L475
	.p2align 4,,10
	.p2align 3
.L469:
	leaq	1(%rbp), %r13
	addq	$1, %r15
	cmpq	%rdx, %r13
	jnb	.L494
.L481:
	movq	%r13, %rbp
.L475:
	movq	40(%r12), %rax
	movq	(%rax,%rbp,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, 8(%rsp)
	jnb	.L495
	movq	8(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L483
	je	.L469
.L483:
	cmpq	$1, %rbp
	je	.L496
	cmpq	%r15, 8(%rsp)
	jnb	.L474
	movl	$1, %r13d
	.p2align 4,,10
	.p2align 3
.L473:
	movq	%r13, %r14
	movq	8(%rsp), %rbx
	addq	%r13, %r13
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L472:
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
	jb	.L472
	cmpq	%rbp, %r13
	jb	.L473
	movq	32(%r12), %rdx
.L474:
	leaq	1(%rbp), %r13
	movq	%rbp, 8(%rsp)
	addq	$1, %r15
	cmpq	%rdx, %r13
	jb	.L481
.L494:
	movl	$1, %ebx
	cmpq	%rbp, 8(%rsp)
	jnb	.L484
	.p2align 4,,10
	.p2align 3
.L476:
	movq	%rbx, %r14
	movq	8(%rsp), %r15
	addq	%rbx, %rbx
	subq	$1, %r14
	.p2align 4,,10
	.p2align 3
.L478:
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
	jb	.L478
	cmpq	%r13, %rbx
	jb	.L476
.L484:
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
.L496:
	.cfi_restore_state
	movq	$1, 8(%rsp)
	jmp	.L469
.L495:
	movq	8(%rsp), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
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
.LFB8167:
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
	jne	.L501
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L502
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
.L501:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L502:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
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
.LFB8168:
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
	movq	448(%rdx), %rax
	orl	%r9d, %ebx
	cmpq	440(%rdx), %rsi
	jnb	.L512
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L513
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	23(%rdx), %ecx
	movq	72(%rdx), %rsi
	movq	448(%rax), %rdx
	cmpq	440(%rax), %rsi
	jnb	.L512
	movq	(%rdx,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L514
	movq	(%r12), %rdx
	movq	0(%rbp), %rax
	movzbl	%bl, %r9d
	leaq	28(%r12), %rcx
	movsd	24(%rdx), %xmm0
	movq	72(%rdx), %rsi
	xorpd	.LC18(%rip), %xmm0
	movq	448(%rax), %rdx
	cmpq	440(%rax), %rsi
	jnb	.L512
	movq	(%rdx,%rsi,8), %rsi
	movq	16(%rax), %rdi
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L515
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
.L512:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L515:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L514:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L513:
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
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
.LFB8169:
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
	jnb	.L529
	movq	(%r9,%rsi,8), %rsi
	movq	448(%rdx), %rax
	cmpq	440(%rdx), %rsi
	jnb	.L529
	movq	(%rax,%rsi,8), %rax
	movl	%r8d, %edx
	movl	%edi, %esi
	movq	%rax, %rdi
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L530
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	23(%rax), %ecx
	movq	80(%rax), %rsi
	movq	104(%rax), %rdi
	cmpq	96(%rax), %rsi
	jnb	.L529
	movq	(%rdi,%rsi,8), %rsi
	movq	448(%rdx), %rax
	cmpq	440(%rdx), %rsi
	jnb	.L529
	movq	(%rax,%rsi,8), %rdi
	movl	%ecx, %esi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L531
	movq	0(%rbp), %rax
	movq	(%r12), %rdx
	movzbl	%bl, %r9d
	leaq	28(%rbp), %rdi
	movsd	24(%rax), %xmm0
	movq	80(%rax), %rsi
	xorpd	.LC18(%rip), %xmm0
	movq	104(%rax), %rcx
	cmpq	96(%rax), %rsi
	jnb	.L529
	movq	(%rcx,%rsi,8), %rsi
	movq	448(%rdx), %rax
	cmpq	440(%rdx), %rsi
	jnb	.L529
	movq	(%rax,%rsi,8), %rsi
	movq	16(%rdx), %rax
	xorl	%r8d, %r8d
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L532
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
.L529:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L532:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L531:
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L530:
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
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
.LFB8170:
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
	movq	120(%rax), %rdi
	andl	$2, %r9d
	orb	32(%rax), %r9b
	movl	%r9d, %ebp
	call	SDL_SetTextureColorMod@PLT
	testl	%eax, %eax
	jne	.L538
	movq	(%rbx), %rax
	movzbl	19(%rax), %esi
	movq	120(%rax), %rdi
	call	SDL_SetTextureAlphaMod@PLT
	testl	%eax, %eax
	jne	.L539
	movq	(%rbx), %rax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	leaq	28(%rbx), %rcx
	movzbl	%bpl, %r9d
	movsd	24(%rax), %xmm0
	movq	120(%rax), %rsi
	movq	(%r12), %rax
	xorpd	.LC18(%rip), %xmm0
	movq	16(%rax), %rdi
	call	SDL_RenderCopyEx@PLT
	testl	%eax, %eax
	jne	.L540
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
.L538:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L540:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L539:
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE, .-_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.render.RenderingStage(): SDL_SetRenderDrawColor() failed"
	.align 8
.LC27:
	.string	"wze::engine.render.RenderingStage(): SDL_RenderClear() failed"
	.align 8
.LC28:
	.string	"wze::engine.render.RenderOverlapbox(): SDL_SetRenderDrawColor failed"
	.align 8
.LC29:
	.string	"wze::engine.render.RenderOverlapbox(): SDL_RenderFillRect failed"
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
.LFB8166:
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
	jne	.L585
	movq	0(%rbp), %rax
	movq	16(%rax), %rdi
	call	SDL_RenderClear@PLT
	testl	%eax, %eax
	jne	.L543
	movq	32(%rbp), %rdx
	testq	%rdx, %rdx
	je	.L545
	movq	40(%rbp), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L587:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L586
.L547:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L587
	movq	%rbx, %r12
	cmpq	%rdx, %rbx
	jnb	.L549
.L548:
	leaq	.L552(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L563:
	movq	(%rax,%rbx,8), %r14
	cmpl	$5, 8(%r14)
	ja	.L550
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L552:
	.long	.L557-.L552
	.long	.L556-.L552
	.long	.L555-.L552
	.long	.L554-.L552
	.long	.L553-.L552
	.long	.L551-.L552
	.text
	.p2align 4,,10
	.p2align 3
.L545:
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
.L553:
	.cfi_restore_state
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L573
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L574
.L561:
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rbp), %rdx
.L550:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L562
.L588:
	movq	40(%rbp), %rax
	jmp	.L563
	.p2align 4,,10
	.p2align 3
.L554:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rbp), %rdx
	cmpq	%rdx, %rbx
	jb	.L588
	.p2align 4,,10
	.p2align 3
.L562:
	testq	%r12, %r12
	je	.L545
	movq	40(%rbp), %rax
.L549:
	xorl	%ebx, %ebx
	leaq	.L567(%rip), %r13
	.p2align 4,,10
	.p2align 3
.L577:
	cmpq	%rdx, %rbx
	jnb	.L589
	movq	(%rax,%rbx,8), %r14
	cmpl	$5, 8(%r14)
	ja	.L565
	movl	8(%r14), %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L567:
	.long	.L572-.L567
	.long	.L571-.L567
	.long	.L570-.L567
	.long	.L569-.L567
	.long	.L568-.L567
	.long	.L566-.L567
	.text
	.p2align 4,,10
	.p2align 3
.L555:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L550
	.p2align 4,,10
	.p2align 3
.L556:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L550
	.p2align 4,,10
	.p2align 3
.L551:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L575
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L561
.L576:
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L557:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rbp), %rdx
	jmp	.L550
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
	jne	.L573
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L574
.L584:
	movl	$48, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
.L565:
	addq	$1, %rbx
	cmpq	%r12, %rbx
	je	.L545
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rax
	jmp	.L577
	.p2align 4,,10
	.p2align 3
.L569:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L570:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L571:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L566:
	movq	0(%rbp), %rax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$128, %r8d
	movl	$255, %esi
	movq	16(%rax), %rdi
	call	SDL_SetRenderDrawColor@PLT
	testl	%eax, %eax
	jne	.L575
	movq	0(%rbp), %rax
	leaq	28(%r14), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	je	.L584
	jmp	.L576
	.p2align 4,,10
	.p2align 3
.L572:
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L586:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L548
.L589:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L573:
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L574:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L575:
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L543:
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L585:
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6render14RenderingStageEv, .-_ZN3wze6engine6render14RenderingStageEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render6UpdateEv
	.type	_ZN3wze6engine6render6UpdateEv, @function
_ZN3wze6engine6render6UpdateEv:
.LFB8159:
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
.LFE8159:
	.size	_ZN3wze6engine6render6UpdateEv, .-_ZN3wze6engine6render6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE, @function
_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE:
.LFB8171:
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
	jne	.L600
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L601
	testq	%rbx, %rbx
	je	.L595
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L595:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L600:
	.cfi_restore_state
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L601:
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE, .-_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.type	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE, @function
_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE:
.LFB8172:
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
	jne	.L610
	movq	0(%rbp), %rax
	leaq	28(%rbx), %rsi
	movq	16(%rax), %rdi
	call	SDL_RenderFillRect@PLT
	testl	%eax, %eax
	jne	.L611
	testq	%rbx, %rbx
	je	.L605
	movl	$48, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L605:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L610:
	.cfi_restore_state
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L611:
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
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
