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
.LFB8644:
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
.LFB8645:
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
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
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
	subq	$184, %rsp
	.seh_stackalloc	184
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	.seh_endprologue
	movq	%rcx, %r15
	movq	(%rcx), %rcx
	movq	640(%rcx), %rax
	cmpq	$1, %rax
	jbe	.L50
	movl	$1, %ebx
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L168:
	movq	648(%rcx), %rdx
	leaq	0(,%rbx,8), %rdi
	cmpq	$0, (%rdx,%rbx,8)
	je	.L51
	cmpq	%rax, %rbx
	jnb	.L264
	movl	$1, %esi
	movq	%r14, %r12
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L79:
	movq	32(%r9), %r8
	leaq	0(,%rsi,8), %rbp
	movq	(%r8,%rsi,8), %r8
	testq	%r8, %r8
	je	.L53
	cmpw	$0, 16(%r8)
	je	.L53
	cmpw	$0, 18(%r8)
	je	.L53
	cmpb	$0, 23(%r8)
	je	.L53
	cmpb	$0, 26(%r8)
	jne	.L266
	.p2align 4,,10
	.p2align 3
.L53:
	addq	$1, %rsi
	cmpq	%rax, %rbx
	jnb	.L264
.L52:
	movq	(%rdx,%rdi), %r9
	cmpq	24(%r9), %rsi
	jb	.L79
	movq	%r12, %r14
	cmpq	%rax, %rbx
	jnb	.L264
	movl	$1, %esi
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L106:
	movq	64(%r9), %r8
	leaq	0(,%rsi,8), %rbp
	movq	(%r8,%rsi,8), %r8
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
	jne	.L267
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$1, %rsi
	cmpq	%rax, %rbx
	jnb	.L264
.L80:
	movq	(%rdx,%rdi), %r9
	cmpq	56(%r9), %rsi
	jb	.L106
	cmpq	%rax, %rbx
	jnb	.L264
	movl	$1, %esi
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L134:
	movq	96(%r9), %r8
	leaq	0(,%rsi,8), %rbp
	movq	(%r8,%rsi,8), %r8
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
	jnb	.L268
	cmpq	$0, (%r11,%r10,8)
	jne	.L269
	.p2align 4,,10
	.p2align 3
.L108:
	addq	$1, %rsi
	cmpq	%rax, %rbx
	jnb	.L264
.L107:
	movq	(%rdx,%rdi), %r9
	cmpq	88(%r9), %rsi
	jb	.L134
	cmpq	%rax, %rbx
	jnb	.L264
	movl	$1, %esi
	movq	%r14, %r12
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L161:
	movq	128(%r8), %r9
	leaq	0(,%rsi,8), %rbp
	movq	(%r9,%rsi,8), %r9
	testq	%r9, %r9
	je	.L136
	cmpw	$0, 56(%r9)
	je	.L136
	cmpq	$0, 64(%r9)
	je	.L136
	cmpb	$0, 19(%r9)
	je	.L136
	cmpb	$0, 37(%r9)
	je	.L136
	cmpq	$0, 112(%r9)
	jne	.L270
	.p2align 4,,10
	.p2align 3
.L136:
	addq	$1, %rsi
	cmpq	%rax, %rbx
	jnb	.L264
.L135:
	movq	(%rdx,%rdi), %r8
	cmpq	120(%r8), %rsi
	jb	.L161
	cmpb	$0, 184(%r8)
	movq	%r12, %r14
	jne	.L271
.L51:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L168
	movq	32(%r15), %rbx
	cmpq	%rbx, %r14
	jb	.L272
.L218:
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	160(%rsp), %xmm8
	addq	$184, %rsp
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
.L271:
	movzwl	266(%r8), %edx
	testw	%dx, %dx
	je	.L51
	movzwl	268(%r8), %r9d
	testw	%r9w, %r9w
	je	.L51
	movsd	208(%r8), %xmm3
	leaq	112(%rsp), %rax
	addq	$80, %rcx
	movsd	200(%r8), %xmm2
	movsd	248(%r8), %xmm0
	movl	%edx, 32(%rsp)
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movl	%r9d, 40(%rsp)
	movsd	%xmm0, 48(%rsp)
.LEHB0:
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movl	72(%rsp), %eax
	movdqa	64(%rsp), %xmm6
	testl	%eax, %eax
	je	.L257
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L162
.L257:
	movq	(%r15), %rcx
	movq	640(%rcx), %rax
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L266:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%r9), %xmm0
	movsd	248(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L273
	ucomisd	%xmm6, %xmm8
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
.L280:
	movl	72(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L253
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r12, %r12
	jne	.L274
.L65:
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	js	.L275
.L70:
	cmpq	%r12, 32(%r15)
	je	.L276
.L72:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r15), %rcx
	movq	%rax, %r13
	movq	640(%rcx), %rax
	movq	648(%rcx), %rdx
	cmpq	%rax, %rbx
	jnb	.L277
	movq	(%rdx,%rdi), %rdx
	movq	32(%rdx), %r8
	cmpq	24(%rdx), %rsi
	jnb	.L278
	movq	(%r8,%rbp), %rdx
	movzbl	25(%rdx), %r8d
	movq	%rdx, 0(%r13)
	leaq	1(%r12), %rdx
	movl	$0, 8(%r13)
	movb	%r8b, 24(%r13)
	movq	40(%r15), %r8
	movsd	%xmm6, 16(%r13)
	movups	%xmm7, 28(%r13)
	cmpq	32(%r15), %r12
	jnb	.L251
	movq	%r13, (%r8,%r12,8)
	movq	%rdx, %r12
.L64:
	addsd	16(%r15), %xmm6
	movq	648(%rcx), %r8
	comisd	%xmm6, %xmm8
	jbe	.L279
.L77:
	leaq	80(%rcx), %rdx
	cmpq	%rax, %rbx
	jnb	.L264
	movq	(%r8,%rdi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rsi
	jnb	.L262
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
	movdqu	112(%rsp), %xmm1
	movaps	%xmm1, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L280
.L253:
	movq	(%r15), %rcx
	movq	640(%rcx), %rax
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L270:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%r8), %xmm0
	movsd	248(%r8), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L281
	ucomisd	%xmm6, %xmm8
	jp	.L141
	jne	.L141
	addsd	.LC8(%rip), %xmm8
.L141:
	comisd	%xmm6, %xmm8
	jbe	.L136
.L139:
	leaq	112(%rsp), %r14
	movq	%rdx, %r8
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L288:
	movl	72(%rsp), %edx
	testl	%edx, %edx
	je	.L256
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %ecx
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %eax
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r12, %r12
	jne	.L282
.L148:
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	js	.L283
.L153:
	cmpq	32(%r15), %r12
	je	.L284
.L155:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r15), %rcx
	movq	%rax, %r13
	movq	640(%rcx), %rax
	movq	648(%rcx), %rdx
	cmpq	%rax, %rbx
	jnb	.L285
	movq	(%rdx,%rdi), %rdx
	movq	128(%rdx), %r8
	cmpq	120(%rdx), %rsi
	jnb	.L286
	movq	(%r8,%rbp), %rdx
	movzbl	36(%rdx), %r8d
	movq	%rdx, 0(%r13)
	leaq	1(%r12), %rdx
	movl	$3, 8(%r13)
	movb	%r8b, 24(%r13)
	movq	40(%r15), %r8
	movsd	%xmm6, 16(%r13)
	movups	%xmm7, 28(%r13)
	cmpq	32(%r15), %r12
	jnb	.L251
	movq	%r13, (%r8,%r12,8)
	movq	%rdx, %r12
.L147:
	addsd	16(%r15), %xmm6
	movq	648(%rcx), %r8
	comisd	%xmm6, %xmm8
	jbe	.L287
.L159:
	leaq	80(%rcx), %rdx
	cmpq	%rax, %rbx
	jnb	.L264
	movq	(%r8,%rdi), %rax
	movq	128(%rax), %rcx
	cmpq	120(%rax), %rsi
	jnb	.L262
	movq	(%rcx,%rbp), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	64(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	56(%rax), %eax
	movq	%r14, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L288
.L256:
	movq	(%r15), %rcx
	movq	640(%rcx), %rax
	jmp	.L147
.L273:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L58
	jne	.L58
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L56
.L281:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L141
	jne	.L141
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L275:
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
	jge	.L70
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L274:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r12), %r8
	movq	%rdx, 88(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L261
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	648(%rdx), %r13
	cmpq	640(%rdx), %rbx
	jnb	.L264
	movq	0(%r13,%rdi), %rdx
	movq	32(%rdx), %r13
	cmpq	24(%rdx), %rsi
	jnb	.L262
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
	movq	88(%rsp), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L283:
	movzwl	10(%r15), %edx
	subl	%eax, %r10d
	cmpl	%edx, %r10d
	jle	.L153
	sarl	%ecx
	movl	%ecx, %eax
	addl	%r9d, %eax
	jns	.L153
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jge	.L153
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L282:
	movq	32(%r15), %rdx
	movq	40(%r15), %r11
	leaq	-1(%r12), %r8
	movq	%rdx, 88(%rsp)
	movq	%r11, 64(%rsp)
	cmpq	%rdx, %r8
	jnb	.L261
	movq	(%r11,%r8,8), %r11
	movq	(%r11), %rdx
	movq	%rdx, 80(%rsp)
	movq	(%r15), %rdx
	movq	648(%rdx), %r13
	cmpq	640(%rdx), %rbx
	jnb	.L264
	movq	0(%r13,%rdi), %rdx
	movq	128(%rdx), %r13
	cmpq	120(%rdx), %rsi
	jnb	.L262
	movq	80(%rsp), %rdx
	cmpq	0(%r13,%rbp), %rdx
	jne	.L148
	cmpl	%r10d, 28(%r11)
	jne	.L148
	cmpl	%r9d, 32(%r11)
	jne	.L148
	cmpl	%eax, 36(%r11)
	jne	.L148
	cmpl	%ecx, 40(%r11)
	jne	.L148
	movq	64(%rsp), %rdx
	movq	88(%rsp), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L279:
	movq	%r8, %rdx
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L287:
	movq	%r8, %rdx
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L276:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r12, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L284:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r12, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L267:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%r9), %xmm0
	movsd	248(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L289
	ucomisd	%xmm8, %xmm6
	jp	.L86
	jne	.L86
	addsd	.LC8(%rip), %xmm8
.L86:
	comisd	%xmm6, %xmm8
	jbe	.L81
.L84:
	leaq	112(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L295:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L254
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r14, %r14
	jne	.L93
.L99:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L290
.L94:
	cmpq	%r14, 32(%r15)
	je	.L291
.L100:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r15), %rcx
	movq	%rax, %rdx
	movq	640(%rcx), %rax
	movq	648(%rcx), %r8
	cmpq	%rax, %rbx
	jnb	.L292
	movq	(%r8,%rdi), %r8
	movq	64(%r8), %r9
	cmpq	56(%r8), %rsi
	jnb	.L293
	movq	(%r9,%rbp), %r8
	movzbl	36(%r8), %r9d
	movq	%r8, (%rdx)
	leaq	1(%r14), %r8
	movl	$1, 8(%rdx)
	movb	%r9b, 24(%rdx)
	movq	40(%r15), %r9
	movsd	%xmm6, 16(%rdx)
	movups	%xmm7, 28(%rdx)
	cmpq	32(%r15), %r14
	jnb	.L252
	movq	%rdx, (%r9,%r14,8)
	movq	%r8, %r14
.L92:
	addsd	16(%r15), %xmm6
	movq	648(%rcx), %r8
	comisd	%xmm6, %xmm8
	jbe	.L294
.L104:
	leaq	80(%rcx), %rdx
	cmpq	%rax, %rbx
	jnb	.L264
	movq	(%r8,%rdi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rsi
	jnb	.L262
	movq	(%rcx,%rbp), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r13, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %r8d
	movdqa	64(%rsp), %xmm7
	testl	%r8d, %r8d
	jne	.L295
.L254:
	movq	(%r15), %rcx
	movq	640(%rcx), %rax
	jmp	.L92
.L269:
	movsd	.LC9(%rip), %xmm0
	mulsd	256(%r9), %xmm0
	movsd	248(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L296
	ucomisd	%xmm8, %xmm6
	jp	.L114
	jne	.L114
	addsd	.LC8(%rip), %xmm8
.L114:
	comisd	%xmm6, %xmm8
	jbe	.L108
.L112:
	leaq	112(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L302:
	movl	72(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L255
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r14, %r14
	jne	.L121
.L127:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L297
.L122:
	cmpq	%r14, 32(%r15)
	je	.L298
.L128:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r15), %rcx
	movq	%rax, %rdx
	movq	640(%rcx), %rax
	movq	648(%rcx), %r8
	cmpq	%rax, %rbx
	jnb	.L299
	movq	(%r8,%rdi), %r8
	movq	96(%r8), %r9
	cmpq	88(%r8), %rsi
	jnb	.L300
	movq	(%r9,%rbp), %r8
	movzbl	36(%r8), %r9d
	movq	%r8, (%rdx)
	leaq	1(%r14), %r8
	movl	$2, 8(%rdx)
	movb	%r9b, 24(%rdx)
	movq	40(%r15), %r9
	movsd	%xmm6, 16(%rdx)
	movups	%xmm7, 28(%rdx)
	cmpq	32(%r15), %r14
	jnb	.L252
	movq	%rdx, (%r9,%r14,8)
	movq	%r8, %r14
.L120:
	addsd	16(%r15), %xmm6
	movq	648(%rcx), %r8
	comisd	%xmm6, %xmm8
	jbe	.L301
.L132:
	leaq	80(%rcx), %rdx
	cmpq	%rax, %rbx
	jnb	.L264
	movq	(%r8,%rdi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rsi
	jnb	.L262
	movq	(%rcx,%rbp), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r13, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L302
.L255:
	movq	(%r15), %rcx
	movq	640(%rcx), %rax
	jmp	.L120
.L272:
	movq	%r14, 32(%r15)
	movq	40(%r15), %rcx
	testq	%r14, %r14
	je	.L171
	leaq	0(,%r14,8), %rdx
	call	realloc
	movq	%rax, 40(%r15)
	testq	%rax, %rax
	jne	.L218
	subq	%r14, %rbx
	movq	%r14, %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rbx, %r8
	call	_Z6printfPKcz
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L289:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L86
	jne	.L86
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L84
.L296:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L114
	jne	.L114
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L290:
	movzwl	10(%r15), %eax
	subl	%r12d, %r11d
	cmpl	%eax, %r11d
	jle	.L94
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L94
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L94
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L297:
	movzwl	10(%r15), %eax
	subl	%r12d, %r11d
	cmpl	%eax, %r11d
	jle	.L122
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L122
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L122
	jmp	.L255
	.p2align 4,,10
	.p2align 3
.L93:
	movq	32(%r15), %rax
	movq	40(%r15), %rcx
	leaq	-1(%r14), %r8
	movq	%rax, 88(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L265
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	(%r15), %rax
	movq	648(%rax), %rcx
	cmpq	640(%rax), %rbx
	jnb	.L264
	movq	(%rcx,%rdi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rsi
	jnb	.L262
	movq	80(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L99
	cmpl	%r11d, 28(%rdx)
	jne	.L99
	cmpl	%r10d, 32(%rdx)
	jne	.L99
	cmpl	%r12d, 36(%rdx)
	jne	.L99
	movq	64(%rsp), %rdx
	movq	88(%rsp), %rcx
	movl	%r9d, 100(%rsp)
	movq	%r8, 80(%rsp)
	movd	%xmm7, 108(%rsp)
	movd	%xmm0, 104(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	100(%rsp), %r9d
	movq	80(%rsp), %r8
	movq	(%rax), %rax
	movl	104(%rsp), %r10d
	movl	108(%rsp), %r11d
	cmpl	%r9d, 40(%rax)
	jne	.L99
	movq	40(%r15), %rdx
	movq	32(%r15), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L254
	.p2align 4,,10
	.p2align 3
.L121:
	movq	32(%r15), %rax
	movq	40(%r15), %rcx
	leaq	-1(%r14), %r8
	movq	%rax, 88(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L265
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	(%r15), %rax
	movq	648(%rax), %rcx
	cmpq	640(%rax), %rbx
	jnb	.L264
	movq	(%rcx,%rdi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rsi
	jnb	.L262
	movq	80(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L127
	cmpl	%r11d, 28(%rdx)
	jne	.L127
	cmpl	%r10d, 32(%rdx)
	jne	.L127
	cmpl	%r12d, 36(%rdx)
	jne	.L127
	movq	64(%rsp), %rdx
	movq	88(%rsp), %rcx
	movl	%r9d, 100(%rsp)
	movq	%r8, 80(%rsp)
	movd	%xmm7, 108(%rsp)
	movd	%xmm0, 104(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	100(%rsp), %r9d
	movq	80(%rsp), %r8
	movq	(%rax), %rax
	movl	104(%rsp), %r10d
	movl	108(%rsp), %r11d
	cmpl	40(%rax), %r9d
	jne	.L127
	movq	40(%r15), %rdx
	movq	32(%r15), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L255
	.p2align 4,,10
	.p2align 3
.L294:
	movq	%r8, %rdx
	jmp	.L81
.L301:
	movq	%r8, %rdx
	jmp	.L108
.L291:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r14, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L100
.L298:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r14, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L128
.L50:
	cmpq	$0, 32(%r15)
	je	.L218
	movq	$0, 32(%r15)
	movq	40(%r15), %rcx
.L171:
	call	free
	movq	$0, 40(%r15)
	jmp	.L218
.L264:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L162:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L303
.L164:
	cmpq	%r14, 32(%r15)
	je	.L304
.L165:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r15), %rcx
	movq	%rax, %rsi
	movq	640(%rcx), %rax
	movq	648(%rcx), %rdx
	cmpq	%rax, %rbx
	jnb	.L305
	movq	(%rdx,%rdi), %rdx
	movq	40(%r15), %r8
	movl	$4, 8(%rsi)
	movq	$0x000000000, 16(%rsi)
	movq	%rdx, (%rsi)
	leaq	1(%r14), %rdx
	movb	$-1, 24(%rsi)
	movups	%xmm6, 28(%rsi)
	cmpq	32(%r15), %r14
	jnb	.L252
	movq	%rsi, (%r8,%r14,8)
	movq	%rdx, %r14
	jmp	.L51
.L303:
	movzwl	10(%r15), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L164
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %eax
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %edx
	sarl	%edx
	movl	%edx, %esi
	addl	%eax, %esi
	jns	.L164
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L164
	jmp	.L257
.L304:
	movzwl	24(%r15), %eax
	leaq	32(%r15), %rcx
	movq	%r14, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L165
.L262:
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L251:
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
.L263:
	movl	$1, %ecx
	call	exit
.L278:
	movq	%rsi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB1:
	call	_Z6printfPKcz
	jmp	.L263
.L277:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE1:
	jmp	.L263
.L286:
	movq	%rsi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L263
.L268:
	leaq	.LC2(%rip), %rcx
	movq	%r10, %rdx
.LEHB3:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L261:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
.LEHE3:
	movl	$1, %ecx
	call	exit
.L285:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB4:
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L263
.L293:
	movq	%rdx, %r13
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
.LEHB5:
	call	_Z6printfPKcz
	jmp	.L263
.L292:
	movq	%rdx, %r13
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
.LEHE5:
	jmp	.L263
.L300:
	movq	%rdx, %r13
	leaq	.LC2(%rip), %rcx
	movq	%rsi, %rdx
.LEHB6:
	call	_Z6printfPKcz
.LEHE6:
	jmp	.L263
.L305:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB7:
	call	_Z6printfPKcz
.LEHE7:
	jmp	.L263
.L299:
	movq	%rdx, %r13
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
.LEHB8:
	call	_Z6printfPKcz
.LEHE8:
	jmp	.L263
.L252:
	movq	%r14, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB9:
	call	_Z6printfPKcz
	jmp	.L263
.L265:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
.LEHE9:
	movl	$1, %ecx
	call	exit
.L191:
	movq	%rax, %rbx
	jmp	.L174
.L187:
	movq	%rax, %rbx
	jmp	.L178
.L188:
	movq	%rax, %rbx
	jmp	.L178
.L190:
	movq	%rax, %rbx
	jmp	.L178
.L189:
	movq	%rax, %rbx
	jmp	.L178
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
	.uleb128 .L187-.LFB8446
	.uleb128 0
	.uleb128 .LEHB2-.LFB8446
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L190-.LFB8446
	.uleb128 0
	.uleb128 .LEHB3-.LFB8446
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB8446
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L190-.LFB8446
	.uleb128 0
	.uleb128 .LEHB5-.LFB8446
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L188-.LFB8446
	.uleb128 0
	.uleb128 .LEHB6-.LFB8446
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L189-.LFB8446
	.uleb128 0
	.uleb128 .LEHB7-.LFB8446
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L191-.LFB8446
	.uleb128 0
	.uleb128 .LEHB8-.LFB8446
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L189-.LFB8446
	.uleb128 0
	.uleb128 .LEHB9-.LFB8446
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE8446:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6render14SelectionStageEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14SelectionStageEv.cold
	.seh_stackalloc	248
	.seh_savereg	%rbx, 184
	.seh_savereg	%rsi, 192
	.seh_savereg	%rdi, 200
	.seh_savereg	%rbp, 208
	.seh_savexmm	%xmm6, 128
	.seh_savexmm	%xmm7, 144
	.seh_savereg	%r12, 216
	.seh_savereg	%r13, 224
	.seh_savereg	%r14, 232
	.seh_savereg	%r15, 240
	.seh_savexmm	%xmm8, 160
	.seh_endprologue
_ZN3wze6engine6render14SelectionStageEv.cold:
.L174:
	movq	%rsi, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB10:
	call	_Unwind_Resume
.L178:
	movq	%r13, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE10:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8446-.LLSDACSBC8446
.LLSDACSBC8446:
	.uleb128 .LEHB10-.LCOLDB11
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC8446:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE11:
	.text
.LHOTE11:
	.section .rdata,"dr"
	.align 8
.LC12:
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
	je	.L308
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L308
	testq	%r12, %r12
	je	.L355
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L314
	.p2align 4,,10
	.p2align 3
.L332:
	movq	%rax, %rdx
.L314:
	cmpq	%rcx, %rdx
	jnb	.L353
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r13
	jne	.L332
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L329
.L310:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L333:
	movq	%rax, %rdx
.L317:
	cmpq	%rcx, %rdx
	jnb	.L353
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L333
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L319
	xorl	%eax, %eax
	jmp	.L325
	.p2align 4,,10
	.p2align 3
.L356:
	cmpq	%rcx, %rbx
	jnb	.L354
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L327
.L357:
	cmpq	%rsi, %rdx
	jnb	.L351
.L325:
	movq	0(%rbp,%rdx,8), %r8
	movq	(%rdi,%rax,8), %r9
	movsd	16(%r9), %xmm0
	comisd	16(%r8), %xmm0
	ja	.L356
	cmpq	%rcx, %rbx
	jnb	.L354
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L357
	.p2align 4,,10
	.p2align 3
.L327:
	cmpq	%rsi, %rdx
	jnb	.L311
.L319:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L331:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L354
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L331
.L311:
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
.L329:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L354
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L351:
	cmpq	%r12, %rax
	jb	.L329
	jmp	.L327
	.p2align 4,,10
	.p2align 3
.L355:
	testq	%rsi, %rsi
	je	.L311
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L310
.L354:
	movq	%rbx, %rdx
.L353:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L308:
	leaq	.LC12(%rip), %rcx
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
	jbe	.L359
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L359
	.p2align 4,,10
	.p2align 3
.L360:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L362:
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
	jb	.L362
	cmpq	%r13, %rdi
	jb	.L360
.L359:
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
.LC13:
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
	je	.L369
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L369
	testq	%r12, %r12
	je	.L413
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L392:
	movq	%rax, %rdx
.L375:
	cmpq	%rcx, %rdx
	jnb	.L411
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%r13, %rdx
	jne	.L392
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L389
.L371:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L378
	.p2align 4,,10
	.p2align 3
.L393:
	movq	%rax, %rdx
.L378:
	cmpq	%rcx, %rdx
	jnb	.L411
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L393
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L380
	xorl	%eax, %eax
	jmp	.L385
	.p2align 4,,10
	.p2align 3
.L414:
	cmpq	%rcx, %rbx
	jnb	.L412
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L387
.L415:
	cmpq	%rsi, %rdx
	jnb	.L409
.L385:
	movq	(%rdi,%rax,8), %r9
	movq	0(%rbp,%rdx,8), %r8
	movzbl	24(%r9), %r11d
	cmpb	%r11b, 24(%r8)
	jb	.L414
	cmpq	%rcx, %rbx
	jnb	.L412
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L415
	.p2align 4,,10
	.p2align 3
.L387:
	cmpq	%rsi, %rdx
	jnb	.L372
.L380:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L391:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L412
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L391
.L372:
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
.L389:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L412
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L409:
	cmpq	%r12, %rax
	jb	.L389
	jmp	.L387
	.p2align 4,,10
	.p2align 3
.L413:
	testq	%rsi, %rsi
	je	.L372
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L371
.L412:
	movq	%rbx, %rdx
.L411:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L369:
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
	jbe	.L417
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L417
	.p2align 4,,10
	.p2align 3
.L418:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L420:
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
	jb	.L420
	cmpq	%r13, %rdi
	jb	.L418
.L417:
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
	jbe	.L446
	.p2align 4,,10
	.p2align 3
.L426:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L428:
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
	jb	.L428
	cmpq	%r13, %rdi
	jb	.L426
	movq	32(%rbp), %rdx
	cmpq	$1, %rdx
	jbe	.L446
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L431:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jnb	.L454
.L443:
	movq	%r12, %rdi
.L437:
	movq	40(%rbp), %rax
	movq	(%rax,%rdi,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, %r14
	jnb	.L455
	movq	(%rax,%r14,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L445
	je	.L431
.L445:
	cmpq	$1, %rdi
	je	.L456
	cmpq	%rsi, %r14
	jnb	.L436
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L435:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L434:
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
	jb	.L434
	cmpq	%rdi, %r12
	jb	.L435
	movq	32(%rbp), %rdx
.L436:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jb	.L443
.L454:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L446
	.p2align 4,,10
	.p2align 3
.L438:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L440:
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
	jb	.L440
	cmpq	%r12, %rsi
	jb	.L438
.L446:
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
.L456:
	movl	$1, %r14d
	jmp	.L431
.L455:
	leaq	.LC2(%rip), %rcx
	movq	%r14, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.render.RenderColor(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC15:
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
	jne	.L460
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L461
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L460:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L461:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.render.RenderTexture(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC19:
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
	jnb	.L470
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L471
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	23(%rdx), %ecx
	movq	712(%rax), %r8
	movq	72(%rdx), %rdx
	cmpq	704(%rax), %rdx
	jnb	.L470
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L472
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rcx), %xmm0
	movq	712(%rax), %r8
	xorpd	.LC18(%rip), %xmm0
	movq	72(%rcx), %rcx
	cmpq	704(%rax), %rcx
	jnb	.L473
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L474
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L473:
	movq	%rcx, %rdx
.L470:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L474:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L472:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L471:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC22:
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
	jnb	.L487
	movq	(%r11,%rdx,8), %rdx
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L487
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L488
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	23(%rax), %r8d
	movq	80(%rax), %rdx
	movq	104(%rax), %r9
	cmpq	96(%rax), %rdx
	jnb	.L487
	movq	(%r9,%rdx,8), %rdx
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L487
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L489
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rax), %xmm0
	movq	80(%rax), %r8
	xorpd	.LC18(%rip), %xmm0
	movq	104(%rax), %r10
	cmpq	96(%rax), %r8
	jnb	.L490
	movq	(%r10,%r8,8), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L491
	movq	(%r8,%rax,8), %rax
	movq	16(%rcx), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%rax, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L492
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L491:
	movq	%rax, %rdx
.L487:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L492:
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L490:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L489:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L488:
	leaq	.LC20(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.render.RenderText(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.render.RenderText(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC25:
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
	movzbl	18(%rax), %r9d
	movzbl	17(%rax), %r8d
	movq	%rdx, %rsi
	movzbl	33(%rax), %edx
	movq	%rcx, %rdi
	movq	112(%rax), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movzbl	16(%rax), %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L497
	movq	(%rsi), %rax
	movzbl	19(%rax), %edx
	movq	112(%rax), %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L498
	movq	(%rdi), %rdx
	movq	(%rsi), %rax
	xorl	%r8d, %r8d
	leaq	28(%rsi), %r9
	movq	16(%rdx), %rcx
	movzbl	%bl, %edx
	movq	112(%rax), %r10
	movq	$0, 40(%rsp)
	movl	%edx, 48(%rsp)
	movsd	24(%rax), %xmm0
	xorpd	.LC18(%rip), %xmm0
	movq	%r10, %rdx
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L499
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L497:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L499:
	leaq	.LC25(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L498:
	leaq	.LC24(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "wze::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.render.OpenFrame(): SDL_RenderClear() failed\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC29:
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
	jne	.L536
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderClear
	testl	%eax, %eax
	jne	.L502
	movq	32(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L504
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L538:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L537
.L506:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L538
	movq	%rbx, %rdi
	cmpq	%rdx, %rbx
	jnb	.L508
.L507:
	leaq	.L511(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L519:
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L509
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L511:
	.long	.L515-.L511
	.long	.L514-.L511
	.long	.L513-.L511
	.long	.L512-.L511
	.long	.L510-.L511
	.text
	.p2align 4,,10
	.p2align 3
.L504:
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
.L512:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rsi), %rdx
.L509:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L518
.L539:
	movq	40(%rsi), %rax
	jmp	.L519
	.p2align 4,,10
	.p2align 3
.L513:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rsi), %rdx
	cmpq	%rdx, %rbx
	jb	.L539
	.p2align 4,,10
	.p2align 3
.L518:
	testq	%rdi, %rdi
	je	.L504
	movq	40(%rsi), %rax
.L508:
	xorl	%ebx, %ebx
	leaq	.L523(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L530:
	cmpq	%rdx, %rbx
	jnb	.L540
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L521
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
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
.L514:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L510:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L528
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L529
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	32(%rsi), %rdx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L515:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L509
	.p2align 4,,10
	.p2align 3
.L524:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
.L521:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	je	.L504
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L525:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L526:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L522:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L528
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L529
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L527:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L521
	.p2align 4,,10
	.p2align 3
.L537:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	.L507
.L540:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L528:
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L529:
	leaq	.LC29(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L502:
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L536:
	leaq	.LC26(%rip), %rcx
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
	jne	.L549
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L550
	testq	%rbx, %rbx
	je	.L545
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L545:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L549:
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L550:
	leaq	.LC29(%rip), %rcx
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
.LC18:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera9TransformEddttd;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
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
