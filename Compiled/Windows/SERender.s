	.file	"SERender.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "neo::array.Insert(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC1:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0
_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0:
.LFB8645:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, %rbx
	movq	(%rcx), %rdx
	movq	%rcx, %rsi
	movq	%r8, %rdi
	cmpq	%rbx, %rdx
	jb	.L26
	testq	%r8, %r8
	jne	.L27
.L3:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	addq	%r8, %rdx
	movq	%rdx, (%rcx)
	movq	8(%rcx), %rcx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 8(%rsi)
	movq	%rax, %r8
	testq	%rax, %rax
	je	.L28
	movq	(%rsi), %rcx
	leaq	(%rbx,%rdi), %rdx
	leaq	-1(%rcx), %rax
	cmpq	%rdx, %rax
	jb	.L3
	movq	%rcx, %r9
	subq	%rdx, %r9
	leaq	-1(%r9), %r10
	cmpq	$2, %r10
	jbe	.L7
	leaq	8(,%rdi,8), %r10
	testq	%r10, %r10
	je	.L7
	testq	%rdx, %rdx
	je	.L7
	movq	%rcx, %rdx
	leaq	-16(%r8,%rcx,8), %r10
	movq	%r9, %rcx
	shrq	%rcx
	subq	%rdi, %rdx
	negq	%rcx
	leaq	-16(%r8,%rdx,8), %r11
	xorl	%edx, %edx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L8:
	movdqu	(%r11,%rdx), %xmm0
	movups	%xmm0, (%r10,%rdx)
	subq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L8
	movq	%r9, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r9d
	je	.L3
	movq	%rax, %rdx
	subq	%rdi, %rdx
	movq	(%r8,%rdx,8), %rdx
	movq	%rdx, (%r8,%rax,8)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	negq	%rdi
	leaq	(%r8,%rdi,8), %r9
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%r9,%rax,8), %rcx
	movq	%rcx, (%r8,%rax,8)
	subq	$1, %rax
	cmpq	%rdx, %rax
	jnb	.L10
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L26:
	leaq	.LC0(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L28:
	leaq	.LC1(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN3neo5arrayIPN4slay6engine6render5tokenEEixEy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN4slay6engine6render5tokenEEixEy.isra.0
_ZN3neo5arrayIPN4slay6engine6render5tokenEEixEy.isra.0:
.LFB8646:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	cmpq	%rcx, %r8
	jnb	.L31
	leaq	(%rdx,%r8,8), %rax
	addq	$40, %rsp
	ret
.L31:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6renderC2EPS0_
	.def	_ZN4slay6engine6renderC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6renderC2EPS0_
_ZN4slay6engine6renderC2EPS0_:
.LFB8433:
	.seh_endprologue
	movq	.LC3(%rip), %rax
	movq	%rax, 16(%rcx)
	movl	$128, %eax
	movq	%rdx, (%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	movl	$0, 8(%rcx)
	movw	%ax, 24(%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6renderC1EPS0_
	.def	_ZN4slay6engine6renderC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6renderC1EPS0_,_ZN4slay6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render5tokenC2Ev
	.def	_ZN4slay6engine6render5tokenC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render5tokenC2Ev
_ZN4slay6engine6render5tokenC2Ev:
.LFB8436:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6render5tokenC1Ev
	.def	_ZN4slay6engine6render5tokenC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6render5tokenC1Ev,_ZN4slay6engine6render5tokenC2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.def	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB8439:
	.seh_endprologue
	movq	48(%rsp), %rax
	movq	%rdx, %r9
	movl	%r8d, 8(%rcx)
	movq	8(%rax), %rdx
	movl	40(%rsp), %r8d
	movq	(%rax), %rax
	movq	%r9, (%rcx)
	movq	%rdx, 36(%rcx)
	movb	%r8b, 24(%rcx)
	movq	%rax, 28(%rcx)
	movsd	%xmm3, 16(%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.def	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN4slay6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15GetSamplingStepEv
	.def	_ZN4slay6engine6render15GetSamplingStepEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render15GetSamplingStepEv
_ZN4slay6engine6render15GetSamplingStepEv:
.LFB8441:
	.seh_endprologue
	movsd	16(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "slay::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\12Params: SamplingStep: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetSamplingStepEd
	.def	_ZN4slay6engine6render15SetSamplingStepEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render15SetSamplingStepEd
_ZN4slay6engine6render15SetSamplingStepEd:
.LFB8442:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L41
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rcx)
	addq	$40, %rsp
	ret
.L41:
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15GetBufferSizeKBEv
	.def	_ZN4slay6engine6render15GetBufferSizeKBEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render15GetBufferSizeKBEv
_ZN4slay6engine6render15GetBufferSizeKBEv:
.LFB8443:
	.seh_endprologue
	movzwl	24(%rcx), %eax
	shrq	$7, %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetBufferSizeKBEt
	.def	_ZN4slay6engine6render15SetBufferSizeKBEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render15SetBufferSizeKBEt
_ZN4slay6engine6render15SetBufferSizeKBEt:
.LFB8444:
	.seh_endprologue
	salq	$7, %rdx
	andl	$8388480, %edx
	movl	%edx, %eax
	movw	%dx, 24(%rcx)
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed\12\0"
	.align 8
.LC10:
	.ascii "slay::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed\12\0"
	.align 8
.LC11:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14SelectionStageEv
	.def	_ZN4slay6engine6render14SelectionStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14SelectionStageEv
_ZN4slay6engine6render14SelectionStageEv:
.LFB8446:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$200, %rsp
	.seh_stackalloc	200
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	movaps	%xmm9, 176(%rsp)
	.seh_savexmm	%xmm9, 176
	.seh_endprologue
	movq	(%rcx), %rax
	movq	536(%rax), %rdx
	movq	%rcx, %r15
	cmpq	$1, %rdx
	jbe	.L45
	leaq	112(%rsp), %rsi
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movsd	.LC8(%rip), %xmm9
	movq	%rsi, 96(%rsp)
	.p2align 4,,10
	.p2align 3
.L177:
	movq	544(%rax), %rcx
	leaq	0(,%rbx,8), %rsi
	cmpq	$0, (%rcx,%rbx,8)
	je	.L46
	cmpq	%rdx, %rbx
	jnb	.L278
	movl	$1, %edi
	movq	%r14, %r12
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L74:
	movq	32(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L48
	cmpw	$0, 16(%r8)
	je	.L48
	cmpw	$0, 18(%r8)
	je	.L48
	cmpb	$0, 23(%r8)
	je	.L48
	cmpb	$0, 26(%r8)
	jne	.L285
	.p2align 4,,10
	.p2align 3
.L48:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L278
.L47:
	movq	(%rcx,%rsi), %r9
	cmpq	24(%r9), %rdi
	jb	.L74
	cmpq	%rdx, %rbx
	jnb	.L278
	movl	$1, %edi
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L101:
	movq	64(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L76
	cmpw	$0, 16(%r8)
	je	.L76
	cmpw	$0, 18(%r8)
	je	.L76
	cmpb	$0, 23(%r8)
	je	.L76
	cmpb	$0, 37(%r8)
	je	.L76
	cmpq	$0, 72(%r8)
	jne	.L286
	.p2align 4,,10
	.p2align 3
.L76:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L278
.L75:
	movq	(%rcx,%rsi), %r9
	cmpq	56(%r9), %rdi
	jb	.L101
	cmpq	%rdx, %rbx
	jnb	.L278
	movl	$1, %edi
	movq	%r12, %r13
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L129:
	movq	96(%r9), %r8
	leaq	0(,%rdi,8), %r12
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L103
	cmpw	$0, 16(%r8)
	je	.L103
	cmpw	$0, 18(%r8)
	je	.L103
	cmpb	$0, 23(%r8)
	je	.L103
	cmpb	$0, 37(%r8)
	je	.L103
	movq	80(%r8), %r10
	movq	104(%r8), %r11
	cmpq	96(%r8), %r10
	jnb	.L287
	cmpq	$0, (%r11,%r10,8)
	jne	.L288
	.p2align 4,,10
	.p2align 3
.L103:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L278
.L102:
	movq	(%rcx,%rsi), %r9
	cmpq	88(%r9), %rdi
	jb	.L129
	movq	%r13, %r14
	cmpq	%rdx, %rbx
	jnb	.L278
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L130:
	movq	(%rcx,%rsi), %rcx
	cmpq	120(%rcx), %rdi
	jnb	.L289
.L170:
	movq	128(%rcx), %rcx
	leaq	0(,%rdi,8), %rbp
	movq	(%rcx,%rdi,8), %rcx
	testq	%rcx, %rcx
	je	.L290
	addq	$80, %rcx
.LEHB0:
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jbe	.L132
	cmpq	%rdx, %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %r8
	movq	128(%r8), %r9
	cmpq	120(%r8), %rdi
	jnb	.L281
	movq	(%r9,%rbp), %r9
	cmpw	$0, 16(%r9)
	jne	.L291
.L136:
	movq	(%rcx,%rsi), %rcx
	addq	$1, %rdi
	cmpq	120(%rcx), %rdi
	jb	.L170
	.p2align 4,,10
	.p2align 3
.L289:
	cmpb	$0, 136(%rcx)
	jne	.L292
.L46:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L177
	movq	32(%r15), %rbx
	cmpq	%rbx, %r14
	jb	.L293
.L229:
	movaps	128(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	addq	$200, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L290:
	movq	544(%rax), %rcx
.L132:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L130
.L278:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L291:
	cmpb	$0, 21(%r9)
	je	.L136
	cmpb	$0, 37(%r9)
	je	.L136
	cmpq	$0, 96(%r9)
	je	.L136
	cmpq	$0, 104(%r9)
	je	.L294
.L137:
	movsd	192(%r8), %xmm0
	movsd	184(%r8), %xmm8
	mulsd	%xmm9, %xmm0
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L295
	ucomisd	%xmm8, %xmm6
	jp	.L150
	jne	.L150
	addsd	.LC7(%rip), %xmm8
.L150:
	comisd	%xmm6, %xmm8
	movq	96(%rsp), %r13
	ja	.L168
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L301:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L270
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %r8d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %ecx
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r14, %r14
	jne	.L296
.L157:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r10d, %eax
	js	.L297
.L162:
	cmpq	%r14, 32(%r15)
	je	.L298
.L164:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %r12
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L299
	movq	(%rcx,%rsi), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rdi
	jnb	.L300
	movq	(%r8,%rbp), %rcx
	movzbl	36(%rcx), %r8d
	movq	%rcx, (%r12)
	leaq	1(%r14), %rcx
	movl	$3, 8(%r12)
	movb	%r8b, 24(%r12)
	movq	40(%r15), %r8
	movsd	%xmm6, 16(%r12)
	movups	%xmm7, 28(%r12)
	cmpq	32(%r15), %r14
	jnb	.L266
	movq	%r12, (%r8,%r14,8)
	movq	%rcx, %r14
.L156:
	addsd	16(%r15), %xmm6
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L132
.L168:
	addq	$80, %rax
	cmpq	%rdx, %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rdi
	jnb	.L281
	movq	(%rcx,%rbp), %rdx
	movsd	48(%rdx), %xmm3
	movsd	40(%rdx), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	16(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	56(%rdx), %edx
	movq	%r13, %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm1
	movaps	%xmm1, 64(%rsp)
	movl	72(%rsp), %edx
	movdqa	64(%rsp), %xmm7
	testl	%edx, %edx
	jne	.L301
.L270:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L297:
	movzwl	10(%r15), %eax
	subl	%ecx, %r10d
	cmpl	%eax, %r10d
	jle	.L162
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L162
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jl	.L270
	cmpq	%r14, 32(%r15)
	jne	.L164
	.p2align 4,,10
	.p2align 3
.L298:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r14, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L164
	.p2align 4,,10
	.p2align 3
.L296:
	movq	40(%r15), %rax
	leaq	-1(%r14), %rdx
	cmpq	32(%r15), %rdx
	jnb	.L279
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 80(%rsp)
	movq	(%rax), %rax
	movq	%rax, 64(%rsp)
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %r11
	cmpq	%rdx, %rbx
	jnb	.L278
	movq	(%r11,%rsi), %r11
	movq	128(%r11), %r12
	cmpq	120(%r11), %rdi
	jnb	.L281
	movq	%r12, %r11
	movq	64(%rsp), %r12
	cmpq	(%r11,%rbp), %r12
	jne	.L157
	movq	80(%rsp), %r11
	cmpl	%r10d, 28(%r11)
	jne	.L157
	cmpl	%r9d, 32(%r11)
	jne	.L157
	cmpl	36(%r11), %ecx
	jne	.L157
	cmpl	%r8d, 40(%r11)
	jne	.L157
	movq	80(%rsp), %rcx
	movsd	%xmm6, 16(%rcx)
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L292:
	movzwl	200(%rcx), %r8d
	testw	%r8w, %r8w
	je	.L46
	movzwl	202(%rcx), %r9d
	testw	%r9w, %r9w
	je	.L46
	movsd	160(%rcx), %xmm3
	leaq	112(%rsp), %r10
	leaq	80(%rax), %rdx
	movsd	152(%rcx), %xmm2
	movsd	184(%rcx), %xmm0
	movl	%r9d, 40(%rsp)
	movq	%r10, %rcx
	movl	%r8d, 32(%rsp)
	movsd	%xmm0, 48(%rsp)
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %eax
	movdqa	64(%rsp), %xmm6
	testl	%eax, %eax
	je	.L271
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L171
.L271:
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L295:
	movsd	.LC7(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L150
	jne	.L150
	movapd	%xmm8, %xmm6
	movq	96(%rsp), %r13
	movsd	.LC6(%rip), %xmm8
	jmp	.L168
.L285:
	movsd	.LC8(%rip), %xmm0
	mulsd	192(%r9), %xmm0
	movsd	184(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L302
	ucomisd	%xmm8, %xmm6
	jp	.L53
	jne	.L53
	addsd	.LC7(%rip), %xmm8
.L53:
	comisd	%xmm6, %xmm8
	jbe	.L48
.L51:
	leaq	112(%rsp), %r14
	movq	%rdx, %r8
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L57:
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r12, %r12
	jne	.L303
.L60:
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	js	.L304
.L65:
	cmpq	%r12, 32(%r15)
	je	.L305
.L67:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %r13
	movq	(%r15), %rax
	movq	536(%rax), %r8
	movq	544(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L306
	movq	(%rdx,%rsi), %rdx
	movq	32(%rdx), %rcx
	cmpq	24(%rdx), %rdi
	jnb	.L307
	movq	(%rcx,%rbp), %rdx
	movzbl	25(%rdx), %ecx
	movq	%rdx, 0(%r13)
	leaq	1(%r12), %rdx
	movl	$0, 8(%r13)
	movb	%cl, 24(%r13)
	movq	40(%r15), %rcx
	movsd	%xmm6, 16(%r13)
	movups	%xmm7, 28(%r13)
	cmpq	32(%r15), %r12
	jnb	.L265
	movq	%r13, (%rcx,%r12,8)
	movq	%rdx, %r12
.L59:
	addsd	16(%r15), %xmm6
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L308
.L72:
	leaq	80(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L281
	movq	(%rcx,%rbp), %rax
	movsd	40(%rax), %xmm3
	movsd	32(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L267
	movl	72(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L57
.L267:
	movq	(%r15), %rax
	movq	536(%rax), %r8
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L304:
	movzwl	10(%r15), %edx
	subl	%eax, %r10d
	cmpl	%edx, %r10d
	jle	.L65
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	jns	.L65
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jl	.L267
	cmpq	%r12, 32(%r15)
	jne	.L67
.L305:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r12, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L67
.L303:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r12), %r8
	movq	%rdx, 104(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L282
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	544(%rdx), %r13
	cmpq	536(%rdx), %rbx
	jnb	.L278
	movq	0(%r13,%rsi), %rdx
	movq	32(%rdx), %r13
	cmpq	24(%rdx), %rdi
	jnb	.L281
	movq	80(%rsp), %rdx
	cmpq	0(%r13,%rbp), %rdx
	jne	.L60
	cmpl	%r10d, 28(%r11)
	jne	.L60
	cmpl	%r9d, 32(%r11)
	jne	.L60
	cmpl	%eax, 36(%r11)
	jne	.L60
	cmpl	%ecx, 40(%r11)
	jne	.L60
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L294:
	movl	92(%rsp), %eax
	leaq	80(%r9), %rcx
	movb	$-1, %al
	movl	%eax, 92(%rsp)
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	(%r15), %rax
	movq	544(%rax), %rcx
	cmpq	536(%rax), %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rdi
	jnb	.L281
	movq	(%r8,%rbp), %rcx
	movq	608(%rax), %r8
	movq	96(%rcx), %rcx
	cmpq	600(%rax), %rcx
	jnb	.L309
	orl	$-256, 92(%rsp)
	movq	(%r8,%rcx,8), %rcx
	movl	92(%rsp), %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L310
	movq	(%r15), %rax
	movq	%r12, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	(%r15), %rdx
	movq	544(%rdx), %rcx
	cmpq	536(%rdx), %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rdi
	jnb	.L281
	movq	(%rcx,%rbp), %rcx
	movq	%rax, 104(%rcx)
	testq	%rax, %rax
	je	.L311
	movzwl	16(%rcx), %eax
	imull	16(%r12), %eax
	cltd
	idivl	20(%r12)
	movw	%ax, 56(%rcx)
	movq	%r12, %rcx
	call	SDL_FreeSurface
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %r8
	jmp	.L137
.L308:
	movq	%r8, %rdx
	jmp	.L48
.L286:
	movsd	.LC8(%rip), %xmm0
	mulsd	192(%r9), %xmm0
	movsd	184(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L312
	ucomisd	%xmm8, %xmm6
	jp	.L81
	jne	.L81
	addsd	.LC7(%rip), %xmm8
.L81:
	comisd	%xmm6, %xmm8
	jbe	.L76
.L79:
	leaq	112(%rsp), %r14
	movq	%rdx, %r8
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L319:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L268
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r12, %r12
	jne	.L313
.L88:
	sarl	%eax
	movl	%r10d, %edx
	addl	%eax, %edx
	js	.L314
.L93:
	cmpq	%r12, 32(%r15)
	je	.L315
.L95:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %r13
	movq	(%r15), %rax
	movq	536(%rax), %r8
	movq	544(%rax), %rcx
	cmpq	%r8, %rbx
	jnb	.L316
	movq	(%rcx,%rsi), %rcx
	movq	64(%rcx), %rdx
	cmpq	56(%rcx), %rdi
	jnb	.L317
	movq	(%rdx,%rbp), %rcx
	movzbl	36(%rcx), %edx
	movq	%rcx, 0(%r13)
	movl	$1, 8(%r13)
	movq	40(%r15), %rcx
	movb	%dl, 24(%r13)
	leaq	1(%r12), %rdx
	movsd	%xmm6, 16(%r13)
	movups	%xmm7, 28(%r13)
	cmpq	32(%r15), %r12
	jnb	.L265
	movq	%r13, (%rcx,%r12,8)
	movq	%rdx, %r12
.L87:
	addsd	16(%r15), %xmm6
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L318
.L99:
	leaq	80(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L281
	movq	(%rcx,%rbp), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %r8d
	movdqa	64(%rsp), %xmm7
	testl	%r8d, %r8d
	jne	.L319
.L268:
	movq	(%r15), %rax
	movq	536(%rax), %r8
	jmp	.L87
.L314:
	movzwl	10(%r15), %edx
	subl	%eax, %r10d
	cmpl	%edx, %r10d
	jle	.L93
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	jns	.L93
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jge	.L93
	jmp	.L268
.L313:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r12), %r8
	movq	%rdx, 104(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L282
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	544(%rdx), %r13
	cmpq	536(%rdx), %rbx
	jnb	.L278
	movq	0(%r13,%rsi), %rdx
	movq	64(%rdx), %r13
	cmpq	56(%rdx), %rdi
	jnb	.L281
	movq	80(%rsp), %rdx
	cmpq	0(%r13,%rbp), %rdx
	jne	.L88
	cmpl	28(%r11), %r10d
	jne	.L88
	cmpl	%r9d, 32(%r11)
	jne	.L88
	cmpl	%eax, 36(%r11)
	jne	.L88
	cmpl	%ecx, 40(%r11)
	jne	.L88
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L288:
	movsd	.LC8(%rip), %xmm0
	mulsd	192(%r9), %xmm0
	movsd	184(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L320
	ucomisd	%xmm8, %xmm6
	jp	.L109
	jne	.L109
	addsd	.LC7(%rip), %xmm8
.L109:
	comisd	%xmm6, %xmm8
	jbe	.L103
.L107:
	leaq	112(%rsp), %r14
	movq	%rdx, %r8
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L328:
	movl	72(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L269
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r13, %r13
	jne	.L321
.L116:
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	js	.L322
.L121:
	cmpq	%r13, 32(%r15)
	je	.L323
.L123:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %rbp
	movq	(%r15), %rax
	movq	536(%rax), %r8
	movq	544(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L324
	movq	(%rdx,%rsi), %rdx
	movq	96(%rdx), %rcx
	cmpq	88(%rdx), %rdi
	jnb	.L325
	movq	(%rcx,%r12), %rdx
	movzbl	36(%rdx), %ecx
	movq	%rdx, 0(%rbp)
	leaq	1(%r13), %rdx
	movl	$2, 8(%rbp)
	movb	%cl, 24(%rbp)
	movq	40(%r15), %rcx
	movsd	%xmm6, 16(%rbp)
	movups	%xmm7, 28(%rbp)
	cmpq	32(%r15), %r13
	jnb	.L326
	movq	%rbp, (%rcx,%r13,8)
	movq	%rdx, %r13
.L115:
	addsd	16(%r15), %xmm6
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L327
.L127:
	leaq	80(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L278
	movq	(%rcx,%rsi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rdi
	jnb	.L281
	movq	(%rcx,%r12), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L328
.L269:
	movq	(%r15), %rax
	movq	536(%rax), %r8
	jmp	.L115
.L322:
	movzwl	10(%r15), %edx
	subl	%eax, %r10d
	cmpl	%edx, %r10d
	jle	.L121
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	jns	.L121
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jge	.L121
	jmp	.L269
.L321:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r13), %r8
	movq	%rdx, 104(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L282
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	544(%rdx), %rbp
	cmpq	536(%rdx), %rbx
	jnb	.L278
	movq	0(%rbp,%rsi), %rdx
	movq	96(%rdx), %rbp
	cmpq	88(%rdx), %rdi
	jnb	.L281
	movq	80(%rsp), %rdx
	cmpq	0(%rbp,%r12), %rdx
	jne	.L116
	cmpl	%r10d, 28(%r11)
	jne	.L116
	cmpl	%r9d, 32(%r11)
	jne	.L116
	cmpl	36(%r11), %eax
	jne	.L116
	cmpl	%ecx, 40(%r11)
	jne	.L116
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L318:
	movq	%r8, %rdx
	jmp	.L76
.L327:
	movq	%r8, %rdx
	jmp	.L103
.L302:
	movsd	.LC7(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L53
	jne	.L53
	movapd	%xmm8, %xmm6
	movsd	.LC6(%rip), %xmm8
	jmp	.L51
.L323:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r13, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L123
.L315:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r12, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L95
.L293:
	movq	%r14, 32(%r15)
	movq	40(%r15), %rcx
	testq	%r14, %r14
	je	.L180
	leaq	0(,%r14,8), %rdx
	call	realloc
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	jne	.L229
	subq	%r14, %rbx
	movq	%r14, %rdx
	leaq	.LC11(%rip), %rcx
	movq	%rbx, %r8
	call	_Z6printfPKcz
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L312:
	movsd	.LC7(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L81
	jne	.L81
	movapd	%xmm8, %xmm6
	movsd	.LC6(%rip), %xmm8
	jmp	.L79
.L320:
	movsd	.LC7(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L109
	jne	.L109
	movapd	%xmm8, %xmm6
	movsd	.LC6(%rip), %xmm8
	jmp	.L107
.L171:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %edi
	addl	%edx, %edi
	js	.L329
.L173:
	cmpq	%r14, 32(%r15)
	je	.L330
.L174:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %rdi
	movq	(%r15), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L331
	movq	(%rcx,%rsi), %rcx
	movq	40(%r15), %r8
	movl	$4, 8(%rdi)
	movq	$0x000000000, 16(%rdi)
	movq	%rcx, (%rdi)
	leaq	1(%r14), %rcx
	movb	$-1, 24(%rdi)
	movups	%xmm6, 28(%rdi)
	cmpq	32(%r15), %r14
	jnb	.L266
	movq	%rdi, (%r8,%r14,8)
	movq	%rcx, %r14
	jmp	.L46
.L281:
	movq	%rdi, %rdx
.L279:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.L280:
	movl	$1, %ecx
	call	exit
.L45:
	cmpq	$0, 32(%rcx)
	je	.L229
	movq	$0, 32(%rcx)
	movq	40(%rcx), %rcx
.L180:
	call	free
	movq	$0, 40(%r15)
	jmp	.L229
.L330:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r14, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN4slay6engine6render5tokenEE6InsertEyy.isra.0
.LEHE0:
	jmp	.L174
.L329:
	movzwl	10(%r15), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L173
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %eax
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L173
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L173
	jmp	.L271
.L331:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L307:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L280
.L317:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB3:
	call	_Z6printfPKcz
.LEHE3:
	jmp	.L280
.L306:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB4:
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L280
.L309:
	movq	%rcx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L300:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L280
.L299:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L280
.L311:
	leaq	.LC10(%rip), %rcx
.LEHB7:
	call	_Z6printfPKcz
.LEHE7:
	movl	$1, %ecx
	call	exit
.L324:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB8:
	call	_Z6printfPKcz
.LEHE8:
	jmp	.L280
.L316:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB9:
	call	_Z6printfPKcz
.LEHE9:
	jmp	.L280
.L265:
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB10:
	call	_Z6printfPKcz
.LEHE10:
	jmp	.L280
.L325:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB11:
	call	_Z6printfPKcz
.LEHE11:
	jmp	.L280
.L326:
	movq	%r13, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB12:
	call	_Z6printfPKcz
	jmp	.L280
.L310:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L287:
	leaq	.LC2(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L282:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L266:
	movq	%r14, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE12:
	jmp	.L280
.L198:
	movq	%rax, %rbx
	jmp	.L185
.L201:
	movq	%rax, %rbx
	jmp	.L183
.L200:
	movq	%rax, %rbx
	jmp	.L188
.L197:
	movq	%rax, %rbx
	jmp	.L185
.L199:
	movq	%rax, %rbx
	jmp	.L186
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8446-.LLSDACSB8446
.LLSDACSB8446:
	.uleb128 .LEHB0-.LFB8446
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8446
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L201-.LFB8446
	.uleb128 0
	.uleb128 .LEHB2-.LFB8446
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L197-.LFB8446
	.uleb128 0
	.uleb128 .LEHB3-.LFB8446
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L198-.LFB8446
	.uleb128 0
	.uleb128 .LEHB4-.LFB8446
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L197-.LFB8446
	.uleb128 0
	.uleb128 .LEHB5-.LFB8446
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8446
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L200-.LFB8446
	.uleb128 0
	.uleb128 .LEHB7-.LFB8446
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB8446
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L199-.LFB8446
	.uleb128 0
	.uleb128 .LEHB9-.LFB8446
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L198-.LFB8446
	.uleb128 0
	.uleb128 .LEHB10-.LFB8446
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8446
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L199-.LFB8446
	.uleb128 0
	.uleb128 .LEHB12-.LFB8446
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8446:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4slay6engine6render14SelectionStageEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14SelectionStageEv.cold
	.seh_stackalloc	264
	.seh_savereg	%rbx, 200
	.seh_savereg	%rsi, 208
	.seh_savereg	%rdi, 216
	.seh_savereg	%rbp, 224
	.seh_savexmm	%xmm6, 128
	.seh_savexmm	%xmm7, 144
	.seh_savereg	%r12, 232
	.seh_savereg	%r13, 240
	.seh_savereg	%r14, 248
	.seh_savereg	%r15, 256
	.seh_savexmm	%xmm8, 160
	.seh_savexmm	%xmm9, 176
	.seh_endprologue
_ZN4slay6engine6render14SelectionStageEv.cold:
.L183:
	movq	%rdi, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB13:
	call	_Unwind_Resume
.L186:
	movq	%rbp, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L185:
	movq	%r13, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L188:
	movq	%r12, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE13:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8446-.LLSDACSBC8446
.LLSDACSBC8446:
	.uleb128 .LEHB13-.LCOLDB12
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSEC8446:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE12:
	.text
.LHOTE12:
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "slay::engine.render.OrderByLayerMerge(): Memory allocation failed\12Params: Left: %llu, Middle: %lld, Right: %lld\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.def	_ZN4slay6engine6render17OrderByLayerMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render17OrderByLayerMergeEyyy
_ZN4slay6engine6render17OrderByLayerMergeEyyy:
.LFB8449:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%r8, %r13
	subq	%rdx, %r12
	movq	%r9, %r15
	addq	$1, %r12
	leaq	0(,%r12,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L334
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L334
	testq	%r12, %r12
	je	.L381
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L340
	.p2align 4,,10
	.p2align 3
.L358:
	movq	%rax, %rdx
.L340:
	cmpq	%rcx, %rdx
	jnb	.L379
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r13
	jne	.L358
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L355
.L336:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L359:
	movq	%rax, %rdx
.L343:
	cmpq	%rcx, %rdx
	jnb	.L379
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L359
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L345
	xorl	%eax, %eax
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L382:
	cmpq	%rcx, %rbx
	jnb	.L380
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L353
.L383:
	cmpq	%rsi, %rdx
	jnb	.L377
.L351:
	movq	0(%rbp,%rdx,8), %r8
	movq	(%rdi,%rax,8), %r9
	movsd	16(%r9), %xmm0
	comisd	16(%r8), %xmm0
	ja	.L382
	cmpq	%rcx, %rbx
	jnb	.L380
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L383
	.p2align 4,,10
	.p2align 3
.L353:
	cmpq	%rsi, %rdx
	jnb	.L337
.L345:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L357:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L380
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L357
.L337:
	movq	%rdi, %rcx
	call	free
	movq	%rbp, %rcx
	call	free
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L355:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L380
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L377:
	cmpq	%r12, %rax
	jb	.L355
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L381:
	testq	%rsi, %rsi
	je	.L337
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L336
.L380:
	movq	%rbx, %rdx
.L379:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L334:
	leaq	.LC13(%rip), %rcx
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render12OrderByLayerEyy
	.def	_ZN4slay6engine6render12OrderByLayerEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render12OrderByLayerEyy
_ZN4slay6engine6render12OrderByLayerEyy:
.LFB8448:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %r14
	leaq	-1(%r8), %rsi
	movq	%r8, %r13
	cmpq	$1, %r8
	jbe	.L385
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L385
	.p2align 4,,10
	.p2align 3
.L386:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L388:
	leaq	(%rbx,%rbp), %r8
	movq	%rbx, %rdx
	addq	%rdi, %rbx
	movq	%r12, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L388
	cmpq	%r13, %rdi
	jb	.L386
.L385:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "slay::engine.render.OrderByPriorityMerge(): Memory allocation failed\12Params: Left: %llu, Middle: %lld, Right: %lld\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.def	_ZN4slay6engine6render20OrderByPriorityMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
_ZN4slay6engine6render20OrderByPriorityMergeEyyy:
.LFB8451:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%r8, %r13
	subq	%rdx, %r12
	movq	%r9, %r15
	addq	$1, %r12
	leaq	0(,%r12,8), %rcx
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L395
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L395
	testq	%r12, %r12
	je	.L439
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L401
	.p2align 4,,10
	.p2align 3
.L418:
	movq	%rax, %rdx
.L401:
	cmpq	%rcx, %rdx
	jnb	.L437
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%r13, %rdx
	jne	.L418
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L415
.L397:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L404
	.p2align 4,,10
	.p2align 3
.L419:
	movq	%rax, %rdx
.L404:
	cmpq	%rcx, %rdx
	jnb	.L437
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L419
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L406
	xorl	%eax, %eax
	jmp	.L411
	.p2align 4,,10
	.p2align 3
.L440:
	cmpq	%rcx, %rbx
	jnb	.L438
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L413
.L441:
	cmpq	%rsi, %rdx
	jnb	.L435
.L411:
	movq	(%rdi,%rax,8), %r9
	movq	0(%rbp,%rdx,8), %r8
	movzbl	24(%r9), %r11d
	cmpb	%r11b, 24(%r8)
	jb	.L440
	cmpq	%rcx, %rbx
	jnb	.L438
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L441
	.p2align 4,,10
	.p2align 3
.L413:
	cmpq	%rsi, %rdx
	jnb	.L398
.L406:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L417:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L438
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L417
.L398:
	movq	%rdi, %rcx
	call	free
	movq	%rbp, %rcx
	call	free
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L415:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L438
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L435:
	cmpq	%r12, %rax
	jb	.L415
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L439:
	testq	%rsi, %rsi
	je	.L398
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L397
.L438:
	movq	%rbx, %rdx
.L437:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L395:
	leaq	.LC14(%rip), %rcx
	movq	%r15, %r9
	movq	%r13, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15OrderByPriorityEyy
	.def	_ZN4slay6engine6render15OrderByPriorityEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render15OrderByPriorityEyy
_ZN4slay6engine6render15OrderByPriorityEyy:
.LFB8450:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %r12
	movq	%rdx, %r14
	leaq	-1(%r8), %rsi
	movq	%r8, %r13
	cmpq	$1, %r8
	jbe	.L443
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L443
	.p2align 4,,10
	.p2align 3
.L444:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L446:
	leaq	(%rbx,%rbp), %r8
	movq	%rbx, %rdx
	addq	%rdi, %rbx
	movq	%r12, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L446
	cmpq	%r13, %rdi
	jb	.L444
.L443:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13OrderingStageEv
	.def	_ZN4slay6engine6render13OrderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render13OrderingStageEv
_ZN4slay6engine6render13OrderingStageEv:
.LFB8447:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$1, %edi
	movq	32(%rcx), %r13
	leaq	-1(%r13), %rsi
	movq	%rcx, %rbp
	cmpq	$1, %r13
	jbe	.L472
	.p2align 4,,10
	.p2align 3
.L452:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L454:
	leaq	(%r12,%rbx), %r8
	movq	%rbx, %rdx
	addq	%rdi, %rbx
	movq	%rbp, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L454
	cmpq	%r13, %rdi
	jb	.L452
	movq	32(%rbp), %rdx
	cmpq	$1, %rdx
	jbe	.L472
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L463
	.p2align 4,,10
	.p2align 3
.L457:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jnb	.L480
.L469:
	movq	%r12, %rdi
.L463:
	movq	40(%rbp), %rax
	movq	(%rax,%rdi,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, %r14
	jnb	.L481
	movq	(%rax,%r14,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L471
	je	.L457
.L471:
	cmpq	$1, %rdi
	je	.L482
	cmpq	%rsi, %r14
	jnb	.L462
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L461:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L460:
	leaq	(%rbx,%r13), %r8
	movq	%rbx, %rdx
	addq	%r12, %rbx
	movq	%rbp, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L460
	cmpq	%rdi, %r12
	jb	.L461
	movq	32(%rbp), %rdx
.L462:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jb	.L469
.L480:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L472
	.p2align 4,,10
	.p2align 3
.L464:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L466:
	leaq	(%rbx,%r13), %r8
	movq	%rbx, %rdx
	addq	%rsi, %rbx
	movq	%rbp, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rdi, %r9
	cmova	%rdi, %r9
	cmpq	%rdi, %r8
	cmova	%rdi, %r8
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rdi, %rbx
	jb	.L466
	cmpq	%r12, %rsi
	jb	.L464
.L472:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L482:
	movl	$1, %r14d
	jmp	.L457
.L481:
	leaq	.LC2(%rip), %rcx
	movq	%r14, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC16:
	.ascii "slay::engine.render.RenderColor(): SDL_RenderFillRect failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render11RenderColorEPNS1_5tokenE
	.def	_ZN4slay6engine6render11RenderColorEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render11RenderColorEPNS1_5tokenE
_ZN4slay6engine6render11RenderColorEPNS1_5tokenE:
.LFB8453:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	(%rdx), %rax
	movzbl	22(%rax), %r9d
	movzbl	21(%rax), %r8d
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	movq	(%rcx), %rcx
	movzbl	20(%rax), %edx
	movzbl	23(%rax), %eax
	movq	16(%rcx), %rcx
	movl	%eax, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L486
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L487
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L486:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L487:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC18:
	.ascii "slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC20:
	.ascii "slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13RenderTextureEPNS1_5tokenE
	.def	_ZN4slay6engine6render13RenderTextureEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render13RenderTextureEPNS1_5tokenE
_ZN4slay6engine6render13RenderTextureEPNS1_5tokenE:
.LFB8454:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	(%rdx), %rax
	movzbl	32(%rax), %ebx
	movzbl	22(%rax), %r9d
	movzbl	21(%rax), %r8d
	movzbl	20(%rax), %r10d
	movq	%rdx, %rsi
	movzbl	33(%rax), %edx
	movq	%rcx, %rdi
	movq	(%rcx), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movq	72(%rax), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L496
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L497
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	23(%rdx), %ecx
	movq	576(%rax), %r8
	movq	72(%rdx), %rdx
	cmpq	568(%rax), %rdx
	jnb	.L496
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L498
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rcx), %xmm0
	movq	576(%rax), %r8
	xorpd	.LC19(%rip), %xmm0
	movq	72(%rcx), %rcx
	cmpq	568(%rax), %rcx
	jnb	.L499
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L500
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L499:
	movq	%rcx, %rdx
.L496:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L500:
	leaq	.LC20(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L498:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L497:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC22:
	.ascii "slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC23:
	.ascii "slay::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderFlipbookEPNS1_5tokenE
	.def	_ZN4slay6engine6render14RenderFlipbookEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14RenderFlipbookEPNS1_5tokenE
_ZN4slay6engine6render14RenderFlipbookEPNS1_5tokenE:
.LFB8455:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	(%rdx), %rax
	movzbl	32(%rax), %ebx
	movzbl	22(%rax), %r9d
	movzbl	21(%rax), %r8d
	movzbl	20(%rax), %r10d
	movq	%rdx, %rsi
	movzbl	33(%rax), %edx
	movq	%rcx, %rdi
	movq	104(%rax), %r11
	movq	(%rcx), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movq	80(%rax), %rdx
	cmpq	96(%rax), %rdx
	jnb	.L513
	movq	(%r11,%rdx,8), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L513
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L514
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	23(%rax), %r8d
	movq	80(%rax), %rdx
	movq	104(%rax), %r9
	cmpq	96(%rax), %rdx
	jnb	.L513
	movq	(%r9,%rdx,8), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L513
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L515
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rax), %xmm0
	movq	80(%rax), %r8
	xorpd	.LC19(%rip), %xmm0
	movq	104(%rax), %r10
	cmpq	96(%rax), %r8
	jnb	.L516
	movq	(%r10,%r8,8), %rax
	movq	576(%rcx), %r8
	cmpq	568(%rcx), %rax
	jnb	.L517
	movq	(%r8,%rax,8), %rax
	movq	16(%rcx), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%rax, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L518
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L517:
	movq	%rax, %rdx
.L513:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L518:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L516:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L515:
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L514:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "slay::engine.render.RenderText(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC25:
	.ascii "slay::engine.render.RenderText(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC26:
	.ascii "slay::engine.render.RenderText(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render10RenderTextEPNS1_5tokenE
	.def	_ZN4slay6engine6render10RenderTextEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render10RenderTextEPNS1_5tokenE
_ZN4slay6engine6render10RenderTextEPNS1_5tokenE:
.LFB8456:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	(%rdx), %rax
	movzbl	32(%rax), %ebx
	movzbl	20(%rax), %r9d
	movzbl	19(%rax), %r8d
	movq	%rdx, %rsi
	movzbl	33(%rax), %edx
	movq	%rcx, %rdi
	movq	104(%rax), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movzbl	18(%rax), %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L523
	movq	(%rsi), %rax
	movzbl	21(%rax), %edx
	movq	104(%rax), %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L524
	movq	(%rdi), %rdx
	movq	(%rsi), %rax
	xorl	%r8d, %r8d
	leaq	28(%rsi), %r9
	movq	16(%rdx), %rcx
	movzbl	%bl, %edx
	movq	104(%rax), %r10
	movq	$0, 40(%rsp)
	movl	%edx, 48(%rsp)
	movsd	24(%rax), %xmm0
	xorpd	.LC19(%rip), %xmm0
	movq	%r10, %rdx
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L525
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L523:
	leaq	.LC24(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L525:
	leaq	.LC26(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L524:
	leaq	.LC25(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC27:
	.ascii "slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\12\0"
	.align 8
.LC28:
	.ascii "slay::engine.render.OpenFrame(): SDL_RenderClear() failed\12\0"
	.align 8
.LC29:
	.ascii "slay::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC30:
	.ascii "slay::engine.render.RenderHitbox(): SDL_RenderFillRect failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.def	_ZN4slay6engine6render14RenderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14RenderingStageEv
_ZN4slay6engine6render14RenderingStageEv:
.LFB8452:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	(%rcx), %rax
	movq	%rcx, %rsi
	movq	16(%rax), %rcx
	movl	$255, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L562
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderClear
	testl	%eax, %eax
	jne	.L528
	movq	32(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L530
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L564:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L563
.L532:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L564
	movq	%rbx, %rdi
	cmpq	%rdx, %rbx
	jnb	.L534
.L533:
	leaq	.L537(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L545:
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L535
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L537:
	.long	.L541-.L537
	.long	.L540-.L537
	.long	.L539-.L537
	.long	.L538-.L537
	.long	.L536-.L537
	.text
	.p2align 4,,10
	.p2align 3
.L530:
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderPresent
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L538:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rsi), %rdx
.L535:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L544
.L565:
	movq	40(%rsi), %rax
	jmp	.L545
	.p2align 4,,10
	.p2align 3
.L539:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZN4slay6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rsi), %rdx
	cmpq	%rdx, %rbx
	jb	.L565
	.p2align 4,,10
	.p2align 3
.L544:
	testq	%rdi, %rdi
	je	.L530
	movq	40(%rsi), %rax
.L534:
	xorl	%ebx, %ebx
	leaq	.L549(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L556:
	cmpq	%rdx, %rbx
	jnb	.L566
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L547
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L549:
	.long	.L553-.L549
	.long	.L552-.L549
	.long	.L551-.L549
	.long	.L550-.L549
	.long	.L548-.L549
	.text
	.p2align 4,,10
	.p2align 3
.L540:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L536:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L554
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L555
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	32(%rsi), %rdx
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L541:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L550:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6render10RenderTextEPNS1_5tokenE
.L547:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	je	.L530
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	jmp	.L556
	.p2align 4,,10
	.p2align 3
.L551:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L552:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L548:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L554
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L555
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L553:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN4slay6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L547
	.p2align 4,,10
	.p2align 3
.L563:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	.L533
.L566:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L554:
	leaq	.LC29(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L555:
	leaq	.LC30(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L528:
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L562:
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render6UpdateEv
	.def	_ZN4slay6engine6render6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render6UpdateEv
_ZN4slay6engine6render6UpdateEv:
.LFB8445:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN4slay6engine6render14SelectionStageEv
	movq	%rbx, %rcx
	call	_ZN4slay6engine6render13OrderingStageEv
	movq	%rbx, %rcx
	call	_ZN4slay6engine6render14RenderingStageEv
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render12RenderHitboxEPNS1_5tokenE
	.def	_ZN4slay6engine6render12RenderHitboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render12RenderHitboxEPNS1_5tokenE
_ZN4slay6engine6render12RenderHitboxEPNS1_5tokenE:
.LFB8457:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	(%rcx), %rax
	movq	%rcx, %rsi
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	movq	%rdx, %rbx
	movl	$255, %edx
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L575
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L576
	testq	%rbx, %rbx
	je	.L571
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L571:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L575:
	leaq	.LC29(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L576:
	leaq	.LC30(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
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
	.align 16
.LC19:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6string6LengthEv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6camera9TransformEddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	TTF_RenderText_Blended;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTextureFromSurface;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	SDL_SetRenderDrawColor;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderFillRect;	.scl	2;	.type	32;	.endef
	.def	SDL_SetTextureColorMod;	.scl	2;	.type	32;	.endef
	.def	SDL_SetTextureAlphaMod;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderCopyEx;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderClear;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderPresent;	.scl	2;	.type	32;	.endef
