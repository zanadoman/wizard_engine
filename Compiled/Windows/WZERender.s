	.file	"WZERender.cpp"
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
	.def	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0:
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
	.def	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0:
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
	.globl	_ZN3wze6engine6renderC2EPS0_
	.def	_ZN3wze6engine6renderC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6renderC2EPS0_
_ZN3wze6engine6renderC2EPS0_:
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
	.globl	_ZN3wze6engine6renderC1EPS0_
	.def	_ZN3wze6engine6renderC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6renderC1EPS0_,_ZN3wze6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2Ev
	.def	_ZN3wze6engine6render5tokenC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render5tokenC2Ev
_ZN3wze6engine6render5tokenC2Ev:
.LFB8436:
	.seh_endprologue
	ret
	.seh_endproc
	.globl	_ZN3wze6engine6render5tokenC1Ev
	.def	_ZN3wze6engine6render5tokenC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6render5tokenC1Ev,_ZN3wze6engine6render5tokenC2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.def	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
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
	.globl	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect
	.def	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine6render5tokenC1EPvNS1_4typeEdh8SDL_Rect,_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetSamplingStepEv
	.def	_ZN3wze6engine6render15GetSamplingStepEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render15GetSamplingStepEv
_ZN3wze6engine6render15GetSamplingStepEv:
.LFB8441:
	.seh_endprologue
	movsd	16(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.render.SetSamplingStep(): SamplingStep must not be NaN\12Params: SamplingStep: %lf\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\12Params: SamplingStep: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetSamplingStepEd
	.def	_ZN3wze6engine6render15SetSamplingStepEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render15SetSamplingStepEd
_ZN3wze6engine6render15SetSamplingStepEd:
.LFB8442:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L45
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L46
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rcx)
	addq	$40, %rsp
	ret
.L45:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L46:
	leaq	.LC6(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15GetBufferSizeKBEv
	.def	_ZN3wze6engine6render15GetBufferSizeKBEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render15GetBufferSizeKBEv
_ZN3wze6engine6render15GetBufferSizeKBEv:
.LFB8443:
	.seh_endprologue
	movzwl	24(%rcx), %eax
	shrq	$7, %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15SetBufferSizeKBEt
	.def	_ZN3wze6engine6render15SetBufferSizeKBEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render15SetBufferSizeKBEt
_ZN3wze6engine6render15SetBufferSizeKBEt:
.LFB8444:
	.seh_endprologue
	movq	%rdx, %rax
	salq	$7, %rax
	andl	$8388480, %eax
	movw	%ax, 24(%rcx)
	salq	$48, %rax
	shrq	$55, %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.render.SelectionStage(): TTF_RenderText_Blended failed\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed\12\0"
	.align 8
.LC12:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14SelectionStageEv
	.def	_ZN3wze6engine6render14SelectionStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14SelectionStageEv
_ZN3wze6engine6render14SelectionStageEv:
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
	movq	640(%rax), %rdx
	movq	%rcx, %r15
	cmpq	$1, %rdx
	jbe	.L50
	leaq	112(%rsp), %rsi
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movsd	.LC9(%rip), %xmm9
	movq	%rsi, 96(%rsp)
	.p2align 4,,10
	.p2align 3
.L182:
	movq	648(%rax), %rcx
	leaq	0(,%rbx,8), %rsi
	cmpq	$0, (%rcx,%rbx,8)
	je	.L51
	cmpq	%rdx, %rbx
	jnb	.L283
	movl	$1, %edi
	movq	%r14, %r12
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L79:
	movq	32(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L53
	cmpw	$0, 16(%r8)
	je	.L53
	cmpw	$0, 18(%r8)
	je	.L53
	cmpb	$0, 23(%r8)
	je	.L53
	cmpb	$0, 26(%r8)
	jne	.L290
	.p2align 4,,10
	.p2align 3
.L53:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L283
.L52:
	movq	(%rcx,%rsi), %r9
	cmpq	24(%r9), %rdi
	jb	.L79
	cmpq	%rdx, %rbx
	jnb	.L283
	movl	$1, %edi
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L106:
	movq	64(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L81
	cmpw	$0, 16(%r8)
	je	.L81
	cmpw	$0, 18(%r8)
	je	.L81
	cmpb	$0, 23(%r8)
	je	.L81
	cmpb	$0, 37(%r8)
	je	.L81
	cmpq	$0, 72(%r8)
	jne	.L291
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L283
.L80:
	movq	(%rcx,%rsi), %r9
	cmpq	56(%r9), %rdi
	jb	.L106
	cmpq	%rdx, %rbx
	jnb	.L283
	movl	$1, %edi
	movq	%r12, %r13
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L134:
	movq	96(%r9), %r8
	leaq	0(,%rdi,8), %r12
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L108
	cmpw	$0, 16(%r8)
	je	.L108
	cmpw	$0, 18(%r8)
	je	.L108
	cmpb	$0, 23(%r8)
	je	.L108
	cmpb	$0, 37(%r8)
	je	.L108
	movq	80(%r8), %r10
	movq	104(%r8), %r11
	cmpq	96(%r8), %r10
	jnb	.L292
	cmpq	$0, (%r11,%r10,8)
	jne	.L293
	.p2align 4,,10
	.p2align 3
.L108:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L283
.L107:
	movq	(%rcx,%rsi), %r9
	cmpq	88(%r9), %rdi
	jb	.L134
	movq	%r13, %r14
	cmpq	%rdx, %rbx
	jnb	.L283
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L135:
	movq	(%rcx,%rsi), %rcx
	cmpq	120(%rcx), %rdi
	jnb	.L294
.L175:
	movq	128(%rcx), %rcx
	leaq	0(,%rdi,8), %rbp
	movq	(%rcx,%rdi,8), %rcx
	testq	%rcx, %rcx
	je	.L295
	addq	$80, %rcx
.LEHB0:
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rcx
	jbe	.L137
	cmpq	%rdx, %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %r8
	movq	128(%r8), %r9
	cmpq	120(%r8), %rdi
	jnb	.L286
	movq	(%r9,%rbp), %r9
	cmpw	$0, 16(%r9)
	jne	.L296
.L141:
	movq	(%rcx,%rsi), %rcx
	addq	$1, %rdi
	cmpq	120(%rcx), %rdi
	jb	.L175
	.p2align 4,,10
	.p2align 3
.L294:
	cmpb	$0, 152(%rcx)
	jne	.L297
.L51:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L182
	movq	32(%r15), %rbx
	cmpq	%rbx, %r14
	jb	.L298
.L234:
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
.L295:
	movq	648(%rax), %rcx
.L137:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L135
.L283:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L296:
	cmpb	$0, 21(%r9)
	je	.L141
	cmpb	$0, 37(%r9)
	je	.L141
	cmpq	$0, 96(%r9)
	je	.L141
	cmpq	$0, 104(%r9)
	je	.L299
.L142:
	movsd	224(%r8), %xmm0
	movsd	216(%r8), %xmm8
	mulsd	%xmm9, %xmm0
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L300
	ucomisd	%xmm8, %xmm6
	jp	.L155
	jne	.L155
	addsd	.LC8(%rip), %xmm8
.L155:
	comisd	%xmm6, %xmm8
	movq	96(%rsp), %r13
	ja	.L173
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L306:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L275
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %r8d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %ecx
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r14, %r14
	jne	.L301
.L162:
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r10d, %eax
	js	.L302
.L167:
	cmpq	%r14, 32(%r15)
	je	.L303
.L169:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %r12
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L304
	movq	(%rcx,%rsi), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rdi
	jnb	.L305
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
	jnb	.L271
	movq	%r12, (%r8,%r14,8)
	movq	%rcx, %r14
.L161:
	addsd	16(%r15), %xmm6
	movq	648(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L137
.L173:
	addq	$80, %rax
	cmpq	%rdx, %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rdi
	jnb	.L286
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
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm1
	movaps	%xmm1, 64(%rsp)
	movl	72(%rsp), %edx
	movdqa	64(%rsp), %xmm7
	testl	%edx, %edx
	jne	.L306
.L275:
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L302:
	movzwl	10(%r15), %eax
	subl	%ecx, %r10d
	cmpl	%eax, %r10d
	jle	.L167
	sarl	%r8d
	movl	%r8d, %edx
	addl	%r9d, %edx
	jns	.L167
	subl	%r8d, %r9d
	cmpl	%r9d, %eax
	jl	.L275
	cmpq	%r14, 32(%r15)
	jne	.L169
	.p2align 4,,10
	.p2align 3
.L303:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r14, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L301:
	movq	40(%r15), %rax
	leaq	-1(%r14), %rdx
	cmpq	32(%r15), %rdx
	jnb	.L284
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 80(%rsp)
	movq	(%rax), %rax
	movq	%rax, 64(%rsp)
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %r11
	cmpq	%rdx, %rbx
	jnb	.L283
	movq	(%r11,%rsi), %r11
	movq	128(%r11), %r12
	cmpq	120(%r11), %rdi
	jnb	.L286
	movq	%r12, %r11
	movq	64(%rsp), %r12
	cmpq	(%r11,%rbp), %r12
	jne	.L162
	movq	80(%rsp), %r11
	cmpl	%r10d, 28(%r11)
	jne	.L162
	cmpl	%r9d, 32(%r11)
	jne	.L162
	cmpl	36(%r11), %ecx
	jne	.L162
	cmpl	%r8d, 40(%r11)
	jne	.L162
	movq	80(%rsp), %rcx
	movsd	%xmm6, 16(%rcx)
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L297:
	movzwl	234(%rcx), %r8d
	testw	%r8w, %r8w
	je	.L51
	movzwl	236(%rcx), %r9d
	testw	%r9w, %r9w
	je	.L51
	movsd	176(%rcx), %xmm3
	leaq	112(%rsp), %r10
	leaq	80(%rax), %rdx
	movsd	168(%rcx), %xmm2
	movsd	216(%rcx), %xmm0
	movl	%r9d, 40(%rsp)
	movq	%r10, %rcx
	movl	%r8d, 32(%rsp)
	movsd	%xmm0, 48(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %eax
	movdqa	64(%rsp), %xmm6
	testl	%eax, %eax
	je	.L276
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L176
.L276:
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L300:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L155
	jne	.L155
	movapd	%xmm8, %xmm6
	movq	96(%rsp), %r13
	movsd	.LC7(%rip), %xmm8
	jmp	.L173
.L290:
	movsd	.LC9(%rip), %xmm0
	mulsd	224(%r9), %xmm0
	movsd	216(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L307
	ucomisd	%xmm8, %xmm6
	jp	.L58
	jne	.L58
	addsd	.LC8(%rip), %xmm8
.L58:
	comisd	%xmm6, %xmm8
	jbe	.L53
.L56:
	leaq	112(%rsp), %r14
	movq	%rdx, %r8
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L62:
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r12, %r12
	jne	.L308
.L65:
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	js	.L309
.L70:
	cmpq	%r12, 32(%r15)
	je	.L310
.L72:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %r13
	movq	(%r15), %rax
	movq	640(%rax), %r8
	movq	648(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L311
	movq	(%rdx,%rsi), %rdx
	movq	32(%rdx), %rcx
	cmpq	24(%rdx), %rdi
	jnb	.L312
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
	jnb	.L270
	movq	%r13, (%rcx,%r12,8)
	movq	%rdx, %r12
.L64:
	addsd	16(%r15), %xmm6
	movq	648(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L313
.L77:
	leaq	80(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L286
	movq	(%rcx,%rbp), %rax
	movsd	40(%rax), %xmm3
	movsd	32(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L272
	movl	72(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.L62
.L272:
	movq	(%r15), %rax
	movq	640(%rax), %r8
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L309:
	movzwl	10(%r15), %edx
	subl	%eax, %r10d
	cmpl	%edx, %r10d
	jle	.L70
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	jns	.L70
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jl	.L272
	cmpq	%r12, 32(%r15)
	jne	.L72
.L310:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r12, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L72
.L308:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r12), %r8
	movq	%rdx, 104(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L287
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	648(%rdx), %r13
	cmpq	640(%rdx), %rbx
	jnb	.L283
	movq	0(%r13,%rsi), %rdx
	movq	32(%rdx), %r13
	cmpq	24(%rdx), %rdi
	jnb	.L286
	movq	80(%rsp), %rdx
	cmpq	0(%r13,%rbp), %rdx
	jne	.L65
	cmpl	%r10d, 28(%r11)
	jne	.L65
	cmpl	%r9d, 32(%r11)
	jne	.L65
	cmpl	%eax, 36(%r11)
	jne	.L65
	cmpl	%ecx, 40(%r11)
	jne	.L65
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L272
	.p2align 4,,10
	.p2align 3
.L299:
	movl	92(%rsp), %eax
	leaq	80(%r9), %rcx
	movb	$-1, %al
	movl	%eax, 92(%rsp)
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	(%r15), %rax
	movq	648(%rax), %rcx
	cmpq	640(%rax), %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rdi
	jnb	.L286
	movq	(%r8,%rbp), %rcx
	movq	744(%rax), %r8
	movq	96(%rcx), %rcx
	cmpq	736(%rax), %rcx
	jnb	.L314
	orl	$-256, 92(%rsp)
	movq	(%r8,%rcx,8), %rcx
	movl	92(%rsp), %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L315
	movq	(%r15), %rax
	movq	%r12, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	(%r15), %rdx
	movq	648(%rdx), %rcx
	cmpq	640(%rdx), %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rdi
	jnb	.L286
	movq	(%rcx,%rbp), %rcx
	movq	%rax, 104(%rcx)
	testq	%rax, %rax
	je	.L316
	movzwl	16(%rcx), %eax
	imull	16(%r12), %eax
	cltd
	idivl	20(%r12)
	movw	%ax, 56(%rcx)
	movq	%r12, %rcx
	call	SDL_FreeSurface
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %r8
	jmp	.L142
.L313:
	movq	%r8, %rdx
	jmp	.L53
.L291:
	movsd	.LC9(%rip), %xmm0
	mulsd	224(%r9), %xmm0
	movsd	216(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L317
	ucomisd	%xmm8, %xmm6
	jp	.L86
	jne	.L86
	addsd	.LC8(%rip), %xmm8
.L86:
	comisd	%xmm6, %xmm8
	jbe	.L81
.L84:
	leaq	112(%rsp), %r14
	movq	%rdx, %r8
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L324:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L273
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r12, %r12
	jne	.L318
.L93:
	sarl	%eax
	movl	%r10d, %edx
	addl	%eax, %edx
	js	.L319
.L98:
	cmpq	%r12, 32(%r15)
	je	.L320
.L100:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %r13
	movq	(%r15), %rax
	movq	640(%rax), %r8
	movq	648(%rax), %rcx
	cmpq	%r8, %rbx
	jnb	.L321
	movq	(%rcx,%rsi), %rcx
	movq	64(%rcx), %rdx
	cmpq	56(%rcx), %rdi
	jnb	.L322
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
	jnb	.L270
	movq	%r13, (%rcx,%r12,8)
	movq	%rdx, %r12
.L92:
	addsd	16(%r15), %xmm6
	movq	648(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L323
.L104:
	leaq	80(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L286
	movq	(%rcx,%rbp), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %r8d
	movdqa	64(%rsp), %xmm7
	testl	%r8d, %r8d
	jne	.L324
.L273:
	movq	(%r15), %rax
	movq	640(%rax), %r8
	jmp	.L92
.L319:
	movzwl	10(%r15), %edx
	subl	%eax, %r10d
	cmpl	%edx, %r10d
	jle	.L98
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	jns	.L98
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jge	.L98
	jmp	.L273
.L318:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r12), %r8
	movq	%rdx, 104(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L287
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	648(%rdx), %r13
	cmpq	640(%rdx), %rbx
	jnb	.L283
	movq	0(%r13,%rsi), %rdx
	movq	64(%rdx), %r13
	cmpq	56(%rdx), %rdi
	jnb	.L286
	movq	80(%rsp), %rdx
	cmpq	0(%r13,%rbp), %rdx
	jne	.L93
	cmpl	28(%r11), %r10d
	jne	.L93
	cmpl	%r9d, 32(%r11)
	jne	.L93
	cmpl	%eax, 36(%r11)
	jne	.L93
	cmpl	%ecx, 40(%r11)
	jne	.L93
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L293:
	movsd	.LC9(%rip), %xmm0
	mulsd	224(%r9), %xmm0
	movsd	216(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L325
	ucomisd	%xmm8, %xmm6
	jp	.L114
	jne	.L114
	addsd	.LC8(%rip), %xmm8
.L114:
	comisd	%xmm6, %xmm8
	jbe	.L108
.L112:
	leaq	112(%rsp), %r14
	movq	%rdx, %r8
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L333:
	movl	72(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L274
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r13, %r13
	jne	.L326
.L121:
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	js	.L327
.L126:
	cmpq	%r13, 32(%r15)
	je	.L328
.L128:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %rbp
	movq	(%r15), %rax
	movq	640(%rax), %r8
	movq	648(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L329
	movq	(%rdx,%rsi), %rdx
	movq	96(%rdx), %rcx
	cmpq	88(%rdx), %rdi
	jnb	.L330
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
	jnb	.L331
	movq	%rbp, (%rcx,%r13,8)
	movq	%rdx, %r13
.L120:
	addsd	16(%r15), %xmm6
	movq	648(%rax), %rcx
	comisd	%xmm6, %xmm8
	jbe	.L332
.L132:
	leaq	80(%rax), %rdx
	cmpq	%r8, %rbx
	jnb	.L283
	movq	(%rcx,%rsi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rdi
	jnb	.L286
	movq	(%rcx,%r12), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L333
.L274:
	movq	(%r15), %rax
	movq	640(%rax), %r8
	jmp	.L120
.L327:
	movzwl	10(%r15), %edx
	subl	%eax, %r10d
	cmpl	%edx, %r10d
	jle	.L126
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	jns	.L126
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jge	.L126
	jmp	.L274
.L326:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r13), %r8
	movq	%rdx, 104(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L287
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	648(%rdx), %rbp
	cmpq	640(%rdx), %rbx
	jnb	.L283
	movq	0(%rbp,%rsi), %rdx
	movq	96(%rdx), %rbp
	cmpq	88(%rdx), %rdi
	jnb	.L286
	movq	80(%rsp), %rdx
	cmpq	0(%rbp,%r12), %rdx
	jne	.L121
	cmpl	%r10d, 28(%r11)
	jne	.L121
	cmpl	%r9d, 32(%r11)
	jne	.L121
	cmpl	36(%r11), %eax
	jne	.L121
	cmpl	%ecx, 40(%r11)
	jne	.L121
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L323:
	movq	%r8, %rdx
	jmp	.L81
.L332:
	movq	%r8, %rdx
	jmp	.L108
.L307:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L58
	jne	.L58
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L56
.L328:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r13, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L128
.L320:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r12, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L100
.L298:
	movq	%r14, 32(%r15)
	movq	40(%r15), %rcx
	testq	%r14, %r14
	je	.L185
	leaq	0(,%r14,8), %rdx
	call	realloc
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	jne	.L234
	subq	%r14, %rbx
	movq	%r14, %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rbx, %r8
	call	_Z6printfPKcz
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L317:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L86
	jne	.L86
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L84
.L325:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L114
	jne	.L114
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L112
.L176:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %edi
	addl	%edx, %edi
	js	.L334
.L178:
	cmpq	%r14, 32(%r15)
	je	.L335
.L179:
	movl	$48, %ecx
	call	_Znwy
	movq	%rax, %rdi
	movq	(%r15), %rax
	movq	640(%rax), %rdx
	movq	648(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L336
	movq	(%rcx,%rsi), %rcx
	movq	40(%r15), %r8
	movl	$4, 8(%rdi)
	movq	$0x000000000, 16(%rdi)
	movq	%rcx, (%rdi)
	leaq	1(%r14), %rcx
	movb	$-1, 24(%rdi)
	movups	%xmm6, 28(%rdi)
	cmpq	32(%r15), %r14
	jnb	.L271
	movq	%rdi, (%r8,%r14,8)
	movq	%rcx, %r14
	jmp	.L51
.L286:
	movq	%rdi, %rdx
.L284:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.L285:
	movl	$1, %ecx
	call	exit
.L50:
	cmpq	$0, 32(%rcx)
	je	.L234
	movq	$0, 32(%rcx)
	movq	40(%rcx), %rcx
.L185:
	call	free
	movq	$0, 40(%r15)
	jmp	.L234
.L335:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r14, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
.LEHE0:
	jmp	.L179
.L334:
	movzwl	10(%r15), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L178
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %eax
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L178
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L178
	jmp	.L276
.L336:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L312:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L285
.L322:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB3:
	call	_Z6printfPKcz
.LEHE3:
	jmp	.L285
.L311:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB4:
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L285
.L314:
	movq	%rcx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L305:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB6:
	call	_Z6printfPKcz
	jmp	.L285
.L304:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L285
.L316:
	leaq	.LC11(%rip), %rcx
.LEHB7:
	call	_Z6printfPKcz
.LEHE7:
	movl	$1, %ecx
	call	exit
.L329:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB8:
	call	_Z6printfPKcz
.LEHE8:
	jmp	.L285
.L321:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB9:
	call	_Z6printfPKcz
.LEHE9:
	jmp	.L285
.L270:
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB10:
	call	_Z6printfPKcz
.LEHE10:
	jmp	.L285
.L330:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB11:
	call	_Z6printfPKcz
.LEHE11:
	jmp	.L285
.L331:
	movq	%r13, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB12:
	call	_Z6printfPKcz
	jmp	.L285
.L315:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L292:
	leaq	.LC2(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L287:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L271:
	movq	%r14, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE12:
	jmp	.L285
.L203:
	movq	%rax, %rbx
	jmp	.L190
.L206:
	movq	%rax, %rbx
	jmp	.L188
.L205:
	movq	%rax, %rbx
	jmp	.L193
.L202:
	movq	%rax, %rbx
	jmp	.L190
.L204:
	movq	%rax, %rbx
	jmp	.L191
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
	.uleb128 .L206-.LFB8446
	.uleb128 0
	.uleb128 .LEHB2-.LFB8446
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L202-.LFB8446
	.uleb128 0
	.uleb128 .LEHB3-.LFB8446
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L203-.LFB8446
	.uleb128 0
	.uleb128 .LEHB4-.LFB8446
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L202-.LFB8446
	.uleb128 0
	.uleb128 .LEHB5-.LFB8446
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8446
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L205-.LFB8446
	.uleb128 0
	.uleb128 .LEHB7-.LFB8446
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB8446
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L204-.LFB8446
	.uleb128 0
	.uleb128 .LEHB9-.LFB8446
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L203-.LFB8446
	.uleb128 0
	.uleb128 .LEHB10-.LFB8446
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8446
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L204-.LFB8446
	.uleb128 0
	.uleb128 .LEHB12-.LFB8446
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8446:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6render14SelectionStageEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14SelectionStageEv.cold
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
_ZN3wze6engine6render14SelectionStageEv.cold:
.L188:
	movq	%rdi, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB13:
	call	_Unwind_Resume
.L191:
	movq	%rbp, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L190:
	movq	%r13, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L193:
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
	.uleb128 .LEHB13-.LCOLDB13
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSEC8446:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE13:
	.text
.LHOTE13:
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.render.OrderByLayerMerge(): Memory allocation failed\12Params: Left: %llu, Middle: %lld, Right: %lld\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.def	_ZN3wze6engine6render17OrderByLayerMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render17OrderByLayerMergeEyyy
_ZN3wze6engine6render17OrderByLayerMergeEyyy:
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
	je	.L339
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L339
	testq	%r12, %r12
	je	.L386
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L363:
	movq	%rax, %rdx
.L345:
	cmpq	%rcx, %rdx
	jnb	.L384
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r13
	jne	.L363
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L360
.L341:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L364:
	movq	%rax, %rdx
.L348:
	cmpq	%rcx, %rdx
	jnb	.L384
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L364
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L350
	xorl	%eax, %eax
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L387:
	cmpq	%rcx, %rbx
	jnb	.L385
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L358
.L388:
	cmpq	%rsi, %rdx
	jnb	.L382
.L356:
	movq	0(%rbp,%rdx,8), %r8
	movq	(%rdi,%rax,8), %r9
	movsd	16(%r9), %xmm0
	comisd	16(%r8), %xmm0
	ja	.L387
	cmpq	%rcx, %rbx
	jnb	.L385
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L388
	.p2align 4,,10
	.p2align 3
.L358:
	cmpq	%rsi, %rdx
	jnb	.L342
.L350:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L362:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L385
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L362
.L342:
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
.L360:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L385
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L382:
	cmpq	%r12, %rax
	jb	.L360
	jmp	.L358
	.p2align 4,,10
	.p2align 3
.L386:
	testq	%rsi, %rsi
	je	.L342
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L341
.L385:
	movq	%rbx, %rdx
.L384:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L339:
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
	.globl	_ZN3wze6engine6render12OrderByLayerEyy
	.def	_ZN3wze6engine6render12OrderByLayerEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render12OrderByLayerEyy
_ZN3wze6engine6render12OrderByLayerEyy:
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
	jbe	.L390
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L390
	.p2align 4,,10
	.p2align 3
.L391:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L393:
	leaq	(%rbx,%rbp), %r8
	movq	%rbx, %rdx
	addq	%rdi, %rbx
	movq	%r12, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L393
	cmpq	%r13, %rdi
	jb	.L391
.L390:
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
.LC15:
	.ascii "wze::engine.render.OrderByPriorityMerge(): Memory allocation failed\12Params: Left: %llu, Middle: %lld, Right: %lld\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.def	_ZN3wze6engine6render20OrderByPriorityMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
_ZN3wze6engine6render20OrderByPriorityMergeEyyy:
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
	je	.L400
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L400
	testq	%r12, %r12
	je	.L444
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L406
	.p2align 4,,10
	.p2align 3
.L423:
	movq	%rax, %rdx
.L406:
	cmpq	%rcx, %rdx
	jnb	.L442
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%r13, %rdx
	jne	.L423
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L420
.L402:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L424:
	movq	%rax, %rdx
.L409:
	cmpq	%rcx, %rdx
	jnb	.L442
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L424
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L411
	xorl	%eax, %eax
	jmp	.L416
	.p2align 4,,10
	.p2align 3
.L445:
	cmpq	%rcx, %rbx
	jnb	.L443
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L418
.L446:
	cmpq	%rsi, %rdx
	jnb	.L440
.L416:
	movq	(%rdi,%rax,8), %r9
	movq	0(%rbp,%rdx,8), %r8
	movzbl	24(%r9), %r11d
	cmpb	%r11b, 24(%r8)
	jb	.L445
	cmpq	%rcx, %rbx
	jnb	.L443
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L446
	.p2align 4,,10
	.p2align 3
.L418:
	cmpq	%rsi, %rdx
	jnb	.L403
.L411:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L422:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L443
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L422
.L403:
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
.L420:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L443
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L440:
	cmpq	%r12, %rax
	jb	.L420
	jmp	.L418
	.p2align 4,,10
	.p2align 3
.L444:
	testq	%rsi, %rsi
	je	.L403
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L402
.L443:
	movq	%rbx, %rdx
.L442:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L400:
	leaq	.LC15(%rip), %rcx
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
	.globl	_ZN3wze6engine6render15OrderByPriorityEyy
	.def	_ZN3wze6engine6render15OrderByPriorityEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render15OrderByPriorityEyy
_ZN3wze6engine6render15OrderByPriorityEyy:
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
	jbe	.L448
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L448
	.p2align 4,,10
	.p2align 3
.L449:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L451:
	leaq	(%rbx,%rbp), %r8
	movq	%rbx, %rdx
	addq	%rdi, %rbx
	movq	%r12, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L451
	cmpq	%r13, %rdi
	jb	.L449
.L448:
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
	.globl	_ZN3wze6engine6render13OrderingStageEv
	.def	_ZN3wze6engine6render13OrderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render13OrderingStageEv
_ZN3wze6engine6render13OrderingStageEv:
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
	jbe	.L477
	.p2align 4,,10
	.p2align 3
.L457:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L459:
	leaq	(%r12,%rbx), %r8
	movq	%rbx, %rdx
	addq	%rdi, %rbx
	movq	%rbp, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L459
	cmpq	%r13, %rdi
	jb	.L457
	movq	32(%rbp), %rdx
	cmpq	$1, %rdx
	jbe	.L477
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L468
	.p2align 4,,10
	.p2align 3
.L462:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jnb	.L485
.L474:
	movq	%r12, %rdi
.L468:
	movq	40(%rbp), %rax
	movq	(%rax,%rdi,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, %r14
	jnb	.L486
	movq	(%rax,%r14,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L476
	je	.L462
.L476:
	cmpq	$1, %rdi
	je	.L487
	cmpq	%rsi, %r14
	jnb	.L467
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L466:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L465:
	leaq	(%rbx,%r13), %r8
	movq	%rbx, %rdx
	addq	%r12, %rbx
	movq	%rbp, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rsi, %r9
	cmova	%rsi, %r9
	cmpq	%rsi, %r8
	cmova	%rsi, %r8
	call	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rsi, %rbx
	jb	.L465
	cmpq	%rdi, %r12
	jb	.L466
	movq	32(%rbp), %rdx
.L467:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jb	.L474
.L485:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L477
	.p2align 4,,10
	.p2align 3
.L469:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L471:
	leaq	(%rbx,%r13), %r8
	movq	%rbx, %rdx
	addq	%rsi, %rbx
	movq	%rbp, %rcx
	leaq	-1(%rbx), %r9
	cmpq	%rdi, %r9
	cmova	%rdi, %r9
	cmpq	%rdi, %r8
	cmova	%rdi, %r8
	call	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	cmpq	%rdi, %rbx
	jb	.L471
	cmpq	%r12, %rsi
	jb	.L469
.L477:
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
.L487:
	movl	$1, %r14d
	jmp	.L462
.L486:
	leaq	.LC2(%rip), %rcx
	movq	%r14, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.render.RenderColor(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.render.RenderColor(): SDL_RenderFillRect failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	.def	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
_ZN3wze6engine6render11RenderColorEPNS1_5tokenE:
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
	jne	.L491
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L492
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L491:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L492:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::engine.render.RenderTexture(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.render.RenderTexture(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	.def	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE:
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
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L501
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L502
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	23(%rdx), %ecx
	movq	712(%rax), %r8
	movq	72(%rdx), %rdx
	cmpq	704(%rax), %rdx
	jnb	.L501
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L503
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rcx), %xmm0
	movq	712(%rax), %r8
	xorpd	.LC20(%rip), %xmm0
	movq	72(%rcx), %rcx
	cmpq	704(%rax), %rcx
	jnb	.L504
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L505
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L504:
	movq	%rcx, %rdx
.L501:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L505:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L503:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L502:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.def	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE:
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
	jnb	.L518
	movq	(%r11,%rdx,8), %rdx
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L518
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L519
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	23(%rax), %r8d
	movq	80(%rax), %rdx
	movq	104(%rax), %r9
	cmpq	96(%rax), %rdx
	jnb	.L518
	movq	(%r9,%rdx,8), %rdx
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L518
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L520
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rax), %xmm0
	movq	80(%rax), %r8
	xorpd	.LC20(%rip), %xmm0
	movq	104(%rax), %r10
	cmpq	96(%rax), %r8
	jnb	.L521
	movq	(%r10,%r8,8), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L522
	movq	(%r8,%rax,8), %rax
	movq	16(%rcx), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%rax, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L523
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L522:
	movq	%rax, %rdx
.L518:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L523:
	leaq	.LC24(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L521:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L520:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L519:
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "wze::engine.render.RenderText(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.render.RenderText(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.render.RenderText(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	.def	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
_ZN3wze6engine6render10RenderTextEPNS1_5tokenE:
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
	jne	.L528
	movq	(%rsi), %rax
	movzbl	21(%rax), %edx
	movq	104(%rax), %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L529
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
	xorpd	.LC20(%rip), %xmm0
	movq	%r10, %rdx
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L530
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L528:
	leaq	.LC25(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L530:
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L529:
	leaq	.LC26(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC28:
	.ascii "wze::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.render.OpenFrame(): SDL_RenderClear() failed\12\0"
	.align 8
.LC30:
	.ascii "wze::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.render.RenderHitbox(): SDL_RenderFillRect failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderingStageEv
	.def	_ZN3wze6engine6render14RenderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14RenderingStageEv
_ZN3wze6engine6render14RenderingStageEv:
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
	jne	.L567
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderClear
	testl	%eax, %eax
	jne	.L533
	movq	32(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L535
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L537
	.p2align 4,,10
	.p2align 3
.L569:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L568
.L537:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L569
	movq	%rbx, %rdi
	cmpq	%rdx, %rbx
	jnb	.L539
.L538:
	leaq	.L542(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L550:
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L540
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L542:
	.long	.L546-.L542
	.long	.L545-.L542
	.long	.L544-.L542
	.long	.L543-.L542
	.long	.L541-.L542
	.text
	.p2align 4,,10
	.p2align 3
.L535:
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
.L543:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rsi), %rdx
.L540:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L549
.L570:
	movq	40(%rsi), %rax
	jmp	.L550
	.p2align 4,,10
	.p2align 3
.L544:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rsi), %rdx
	cmpq	%rdx, %rbx
	jb	.L570
	.p2align 4,,10
	.p2align 3
.L549:
	testq	%rdi, %rdi
	je	.L535
	movq	40(%rsi), %rax
.L539:
	xorl	%ebx, %ebx
	leaq	.L554(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L561:
	cmpq	%rdx, %rbx
	jnb	.L571
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L552
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
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
.L545:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L541:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L559
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L560
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	32(%rsi), %rdx
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L546:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L555:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
.L552:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	je	.L535
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	jmp	.L561
	.p2align 4,,10
	.p2align 3
.L556:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L557:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L553:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L559
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L560
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L558:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L568:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	.L538
.L571:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L559:
	leaq	.LC30(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L560:
	leaq	.LC31(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L533:
	leaq	.LC29(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L567:
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render6UpdateEv
	.def	_ZN3wze6engine6render6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render6UpdateEv
_ZN3wze6engine6render6UpdateEv:
.LFB8445:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	_ZN3wze6engine6render14SelectionStageEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine6render13OrderingStageEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine6render14RenderingStageEv
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE:
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
	jne	.L580
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L581
	testq	%rbx, %rbx
	je	.L576
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L576:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L580:
	leaq	.LC30(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L581:
	leaq	.LC31(%rip), %rcx
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
	.align 16
.LC20:
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
	.def	_ZN3wze6engine6camera9TransformEddttd;	.scl	2;	.type	32;	.endef
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
