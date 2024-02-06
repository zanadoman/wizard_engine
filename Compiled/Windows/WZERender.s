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
	movq	%rcx, %r14
	movq	(%rcx), %rcx
	movq	640(%rcx), %rdx
	cmpq	$1, %rdx
	jbe	.L50
	movl	$1, %ebx
	xorl	%r15d, %r15d
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L265
.L168:
	movq	648(%rcx), %rax
	leaq	0(,%rbx,8), %rsi
	movq	(%rax,%rbx,8), %r8
	testq	%r8, %r8
	je	.L51
	cmpb	$0, 168(%r8)
	je	.L51
	cmpq	%rdx, %rbx
	jnb	.L261
	movl	$1, %edi
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
	jne	.L266
	.p2align 4,,10
	.p2align 3
.L53:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L261
.L52:
	movq	(%rax,%rsi), %r9
	cmpq	24(%r9), %rdi
	jb	.L79
	cmpq	%rdx, %rbx
	jnb	.L261
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L80:
	movq	(%rax,%rsi), %r9
	cmpq	56(%r9), %rdi
	jnb	.L267
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
	jne	.L268
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L80
.L261:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
.LEHB0:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L267:
	cmpq	%rdx, %rbx
	jnb	.L261
	movq	(%rax,%rsi), %r9
	movl	$1, %edi
	cmpq	88(%r9), %rdi
	jnb	.L269
	.p2align 4,,10
	.p2align 3
.L134:
	movq	96(%r9), %r8
	leaq	0(,%rdi,8), %rbp
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
	jnb	.L270
	cmpq	$0, (%r11,%r10,8)
	jne	.L271
	.p2align 4,,10
	.p2align 3
.L108:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L261
.L263:
	movq	(%rax,%rsi), %r9
	cmpq	88(%r9), %rdi
	jb	.L134
.L269:
	cmpq	%rdx, %rbx
	jnb	.L261
	movq	(%rax,%rsi), %r8
	movl	$1, %edi
	cmpq	120(%r8), %rdi
	jnb	.L272
	.p2align 4,,10
	.p2align 3
.L161:
	movq	128(%r8), %r9
	leaq	0(,%rdi,8), %rbp
	movq	(%r9,%rdi,8), %r9
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
	jne	.L273
	.p2align 4,,10
	.p2align 3
.L136:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L261
.L264:
	movq	(%rax,%rsi), %r8
	cmpq	120(%r8), %rdi
	jb	.L161
.L272:
	cmpb	$0, 192(%r8)
	je	.L51
	movzwl	274(%r8), %eax
	testw	%ax, %ax
	je	.L51
	movzwl	276(%r8), %r9d
	testw	%r9w, %r9w
	je	.L51
	movsd	216(%r8), %xmm3
	leaq	112(%rsp), %r10
	leaq	80(%rcx), %rdx
	movsd	208(%r8), %xmm2
	movsd	256(%r8), %xmm0
	movl	%eax, 32(%rsp)
	movq	%r10, %rcx
	movl	%r9d, 40(%rsp)
	movsd	%xmm0, 48(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movl	72(%rsp), %eax
	movdqa	64(%rsp), %xmm6
	testl	%eax, %eax
	je	.L254
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L162
.L254:
	movq	(%r14), %rcx
	movq	640(%rcx), %rdx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L265:
	movq	32(%r14), %rbx
	cmpq	%rbx, %r15
	jb	.L274
.L217:
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
.L273:
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%r8), %xmm0
	movsd	256(%r8), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L275
	ucomisd	%xmm8, %xmm6
	jp	.L141
	jne	.L141
	addsd	.LC8(%rip), %xmm8
.L141:
	comisd	%xmm6, %xmm8
	jbe	.L136
.L139:
	leaq	112(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L281:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L253
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L148
.L154:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L276
.L149:
	cmpq	32(%r14), %r15
	je	.L277
.L155:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	movq	648(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L278
	movq	(%rdx,%rsi), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rdi
	jnb	.L279
	movq	(%r9,%rbp), %rdx
	movzbl	36(%rdx), %r9d
	movq	%rdx, (%rax)
	leaq	1(%r15), %rdx
	movl	$3, 8(%rax)
	movb	%r9b, 24(%rax)
	movq	40(%r14), %r9
	movsd	%xmm6, 16(%rax)
	movups	%xmm7, 28(%rax)
	cmpq	32(%r14), %r15
	jnb	.L249
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L147:
	addsd	16(%r14), %xmm6
	movq	648(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L280
.L159:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L261
	movq	(%rax,%rsi), %rax
	movq	128(%rax), %rcx
	cmpq	120(%rax), %rdi
	jnb	.L259
	movq	(%rcx,%rbp), %rax
	movsd	48(%rax), %xmm3
	movsd	40(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	64(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	56(%rax), %eax
	movq	%r13, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movl	72(%rsp), %edx
	movdqa	64(%rsp), %xmm7
	testl	%edx, %edx
	jne	.L281
.L253:
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L274:
	movq	%r15, 32(%r14)
	movq	40(%r14), %rcx
	testq	%r15, %r15
	je	.L171
	leaq	0(,%r15,8), %rdx
	call	realloc
	movq	%rax, 40(%r14)
	testq	%rax, %rax
	jne	.L217
	subq	%r15, %rbx
	movq	%r15, %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rbx, %r8
	call	_Z6printfPKcz
	jmp	.L260
	.p2align 4,,10
	.p2align 3
.L266:
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%r9), %xmm0
	movsd	256(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L282
	ucomisd	%xmm8, %xmm6
	jp	.L58
	jne	.L58
	addsd	.LC8(%rip), %xmm8
.L58:
	comisd	%xmm6, %xmm8
	jbe	.L53
.L56:
	leaq	112(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L288:
	movl	72(%rsp), %r9d
	testl	%r9d, %r9d
	je	.L250
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L65
.L71:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L283
.L66:
	cmpq	%r15, 32(%r14)
	je	.L284
.L72:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	movq	648(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L285
	movq	(%rdx,%rsi), %rdx
	movq	32(%rdx), %r9
	cmpq	24(%rdx), %rdi
	jnb	.L286
	movq	(%r9,%rbp), %rdx
	movzbl	25(%rdx), %r9d
	movq	%rdx, (%rax)
	leaq	1(%r15), %rdx
	movl	$0, 8(%rax)
	movb	%r9b, 24(%rax)
	movq	40(%r14), %r9
	movsd	%xmm6, 16(%rax)
	movups	%xmm7, 28(%rax)
	cmpq	32(%r14), %r15
	jnb	.L249
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L64:
	addsd	16(%r14), %xmm6
	movq	648(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L287
.L77:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L261
	movq	(%rax,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L259
	movq	(%rcx,%rbp), %rax
	movsd	40(%rax), %xmm3
	movsd	32(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r13, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm1
	movaps	%xmm1, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L288
.L250:
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L283:
	movzwl	10(%r14), %eax
	subl	%r12d, %r11d
	cmpl	%eax, %r11d
	jle	.L66
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L66
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L66
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L65:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 88(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L262
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	(%r14), %rax
	movq	648(%rax), %rcx
	cmpq	640(%rax), %rbx
	jnb	.L261
	movq	(%rcx,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L259
	movq	80(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L71
	cmpl	%r11d, 28(%rdx)
	jne	.L71
	cmpl	%r10d, 32(%rdx)
	jne	.L71
	cmpl	%r12d, 36(%rdx)
	jne	.L71
	movq	64(%rsp), %rdx
	movq	88(%rsp), %rcx
	movl	%r9d, 104(%rsp)
	movq	%r8, 80(%rsp)
	movd	%xmm0, 108(%rsp)
	movd	%xmm7, 100(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	104(%rsp), %r9d
	movq	80(%rsp), %r8
	movq	(%rax), %rax
	movl	100(%rsp), %r11d
	movl	108(%rsp), %r10d
	cmpl	%r9d, 40(%rax)
	jne	.L71
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L287:
	movq	%r8, %rdx
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L284:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L268:
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%r9), %xmm0
	movsd	256(%r9), %xmm8
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
	je	.L251
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L93
.L99:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L290
.L94:
	cmpq	%r15, 32(%r14)
	je	.L291
.L100:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	movq	648(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L292
	movq	(%rdx,%rsi), %rdx
	movq	64(%rdx), %r9
	cmpq	56(%rdx), %rdi
	jnb	.L293
	movq	(%r9,%rbp), %rdx
	movzbl	36(%rdx), %r9d
	movq	%rdx, (%rax)
	leaq	1(%r15), %rdx
	movl	$1, 8(%rax)
	movb	%r9b, 24(%rax)
	movq	40(%r14), %r9
	movsd	%xmm6, 16(%rax)
	movups	%xmm7, 28(%rax)
	cmpq	32(%r14), %r15
	jnb	.L249
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L92:
	addsd	16(%r14), %xmm6
	movq	648(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L294
.L104:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L261
	movq	(%rax,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L259
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
.L251:
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	jmp	.L92
.L271:
	movsd	.LC9(%rip), %xmm0
	mulsd	264(%r9), %xmm0
	movsd	256(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L296
	ucomisd	%xmm6, %xmm8
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
.L118:
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L121
.L127:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L297
.L122:
	cmpq	%r15, 32(%r14)
	je	.L298
.L128:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	movq	648(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L299
	movq	(%rdx,%rsi), %rdx
	movq	96(%rdx), %r9
	cmpq	88(%rdx), %rdi
	jnb	.L300
	movq	(%r9,%rbp), %rdx
	movzbl	36(%rdx), %r9d
	movq	%rdx, (%rax)
	leaq	1(%r15), %rdx
	movl	$2, 8(%rax)
	movb	%r9b, 24(%rax)
	movq	40(%r14), %r9
	movsd	%xmm6, 16(%rax)
	movups	%xmm7, 28(%rax)
	cmpq	32(%r14), %r15
	jnb	.L249
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L120:
	addsd	16(%r14), %xmm6
	movq	648(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L301
.L132:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L261
	movq	(%rax,%rsi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rdi
	jnb	.L259
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
	je	.L252
	movl	72(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.L118
.L252:
	movq	(%r14), %rcx
	movq	640(%rcx), %r8
	jmp	.L120
.L275:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L141
	jne	.L141
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L276:
	movzwl	10(%r14), %eax
	subl	%r12d, %r11d
	cmpl	%eax, %r11d
	jle	.L149
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L149
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L149
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L148:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 88(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L262
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	(%r14), %rax
	movq	648(%rax), %rcx
	cmpq	640(%rax), %rbx
	jnb	.L261
	movq	(%rcx,%rsi), %rax
	movq	128(%rax), %rcx
	cmpq	120(%rax), %rdi
	jnb	.L259
	movq	80(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L154
	cmpl	%r11d, 28(%rdx)
	jne	.L154
	cmpl	%r10d, 32(%rdx)
	jne	.L154
	cmpl	%r12d, 36(%rdx)
	jne	.L154
	movq	64(%rsp), %rdx
	movq	88(%rsp), %rcx
	movl	%r9d, 100(%rsp)
	movq	%r8, 80(%rsp)
	movd	%xmm0, 108(%rsp)
	movd	%xmm7, 104(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	100(%rsp), %r9d
	movq	80(%rsp), %r8
	movq	(%rax), %rax
	movl	104(%rsp), %r11d
	movl	108(%rsp), %r10d
	cmpl	%r9d, 40(%rax)
	jne	.L154
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L290:
	movzwl	10(%r14), %eax
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
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L280:
	movq	%r8, %rdx
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L264
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L297:
	movzwl	10(%r14), %eax
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
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L93:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 88(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L262
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	(%r14), %rax
	movq	648(%rax), %rcx
	cmpq	640(%rax), %rbx
	jnb	.L261
	movq	(%rcx,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L259
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
	movl	%r9d, 104(%rsp)
	movq	%r8, 80(%rsp)
	movd	%xmm0, 108(%rsp)
	movd	%xmm7, 100(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	104(%rsp), %r9d
	movq	80(%rsp), %r8
	movq	(%rax), %rax
	movl	100(%rsp), %r11d
	movl	108(%rsp), %r10d
	cmpl	%r9d, 40(%rax)
	jne	.L99
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L251
	.p2align 4,,10
	.p2align 3
.L121:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 88(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L262
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 80(%rsp)
	movq	(%r14), %rax
	movq	648(%rax), %rcx
	cmpq	640(%rax), %rbx
	jnb	.L261
	movq	(%rcx,%rsi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rdi
	jnb	.L259
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
	movd	%xmm0, 108(%rsp)
	movd	%xmm7, 104(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	100(%rsp), %r9d
	movq	80(%rsp), %r8
	movq	(%rax), %rax
	movl	104(%rsp), %r11d
	movl	108(%rsp), %r10d
	cmpl	%r9d, 40(%rax)
	jne	.L127
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L252
	.p2align 4,,10
	.p2align 3
.L277:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L155
.L294:
	movq	%r8, %rdx
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L80
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L282:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L58
	jne	.L58
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L56
.L301:
	movq	%r8, %rdx
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L263
	jmp	.L261
	.p2align 4,,10
	.p2align 3
.L291:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L100
.L298:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L128
.L50:
	cmpq	$0, 32(%r14)
	je	.L217
	movq	$0, 32(%r14)
	movq	40(%r14), %rcx
.L171:
	call	free
	movq	$0, 40(%r14)
	jmp	.L217
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
.L162:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L302
.L164:
	cmpq	%r15, 32(%r14)
	je	.L303
.L165:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	%rax, %rdi
	movq	640(%rcx), %rdx
	movq	648(%rcx), %rax
	cmpq	%rdx, %rbx
	jnb	.L304
	movq	(%rax,%rsi), %rax
	movq	40(%r14), %r8
	movl	$4, 8(%rdi)
	movq	$0x000000000, 16(%rdi)
	movq	%rax, (%rdi)
	leaq	1(%r15), %rax
	movb	$-1, 24(%rdi)
	movups	%xmm6, 28(%rdi)
	cmpq	32(%r14), %r15
	jnb	.L249
	movq	%rdi, (%r8,%r15,8)
	movq	%rax, %r15
	jmp	.L51
.L302:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L164
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %eax
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L164
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L164
	jmp	.L254
.L259:
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L303:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L165
.L249:
	movq	%r15, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
.L260:
	movl	$1, %ecx
	call	exit
.L300:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB1:
	call	_Z6printfPKcz
	jmp	.L260
.L299:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
	call	_Z6printfPKcz
.LEHE1:
	jmp	.L260
.L293:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB2:
	call	_Z6printfPKcz
	jmp	.L260
.L292:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L260
.L304:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB3:
	call	_Z6printfPKcz
.LEHE3:
	jmp	.L260
.L286:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB4:
	call	_Z6printfPKcz
	jmp	.L260
.L285:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L260
.L279:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB5:
	call	_Z6printfPKcz
	jmp	.L260
.L278:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
	call	_Z6printfPKcz
.LEHE5:
	jmp	.L260
.L262:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
.LEHB6:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L270:
	leaq	.LC2(%rip), %rcx
	movq	%r10, %rdx
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
.L187:
	movq	%rax, %rbx
	jmp	.L178
.L189:
	movq	%rax, %rbx
	jmp	.L178
.L191:
	movq	%rax, %rbx
	jmp	.L174
.L190:
	movq	%rax, %rbx
	jmp	.L178
.L188:
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
	.uleb128 .L189-.LFB8446
	.uleb128 0
	.uleb128 .LEHB2-.LFB8446
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L188-.LFB8446
	.uleb128 0
	.uleb128 .LEHB3-.LFB8446
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L191-.LFB8446
	.uleb128 0
	.uleb128 .LEHB4-.LFB8446
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L187-.LFB8446
	.uleb128 0
	.uleb128 .LEHB5-.LFB8446
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L190-.LFB8446
	.uleb128 0
	.uleb128 .LEHB6-.LFB8446
	.uleb128 .LEHE6-.LEHB6
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
	movq	%rdi, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
.L178:
	movq	%r13, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8446:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8446-.LLSDACSBC8446
.LLSDACSBC8446:
	.uleb128 .LEHB7-.LCOLDB11
	.uleb128 .LEHE7-.LEHB7
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
	je	.L307
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L307
	testq	%r12, %r12
	je	.L354
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L313
	.p2align 4,,10
	.p2align 3
.L331:
	movq	%rax, %rdx
.L313:
	cmpq	%rcx, %rdx
	jnb	.L352
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r13
	jne	.L331
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L328
.L309:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L316
	.p2align 4,,10
	.p2align 3
.L332:
	movq	%rax, %rdx
.L316:
	cmpq	%rcx, %rdx
	jnb	.L352
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L332
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L318
	xorl	%eax, %eax
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L355:
	cmpq	%rcx, %rbx
	jnb	.L353
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L326
.L356:
	cmpq	%rsi, %rdx
	jnb	.L350
.L324:
	movq	0(%rbp,%rdx,8), %r8
	movq	(%rdi,%rax,8), %r9
	movsd	16(%r9), %xmm0
	comisd	16(%r8), %xmm0
	ja	.L355
	cmpq	%rcx, %rbx
	jnb	.L353
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L356
	.p2align 4,,10
	.p2align 3
.L326:
	cmpq	%rsi, %rdx
	jnb	.L310
.L318:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L330:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L353
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L330
.L310:
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
.L328:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L353
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L350:
	cmpq	%r12, %rax
	jb	.L328
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L354:
	testq	%rsi, %rsi
	je	.L310
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L309
.L353:
	movq	%rbx, %rdx
.L352:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L307:
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
	jbe	.L358
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L358
	.p2align 4,,10
	.p2align 3
.L359:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L361:
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
	jb	.L361
	cmpq	%r13, %rdi
	jb	.L359
.L358:
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
	je	.L368
	movq	%r15, %rsi
	subq	%r13, %rsi
	leaq	0(,%rsi,8), %rcx
	call	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L368
	testq	%r12, %r12
	je	.L412
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L374
	.p2align 4,,10
	.p2align 3
.L391:
	movq	%rax, %rdx
.L374:
	cmpq	%rcx, %rdx
	jnb	.L410
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%r13, %rdx
	jne	.L391
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L388
.L370:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L377
	.p2align 4,,10
	.p2align 3
.L392:
	movq	%rax, %rdx
.L377:
	cmpq	%rcx, %rdx
	jnb	.L410
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L392
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L379
	xorl	%eax, %eax
	jmp	.L384
	.p2align 4,,10
	.p2align 3
.L413:
	cmpq	%rcx, %rbx
	jnb	.L411
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L386
.L414:
	cmpq	%rsi, %rdx
	jnb	.L408
.L384:
	movq	(%rdi,%rax,8), %r9
	movq	0(%rbp,%rdx,8), %r8
	movzbl	24(%r9), %r11d
	cmpb	%r11b, 24(%r8)
	jb	.L413
	cmpq	%rcx, %rbx
	jnb	.L411
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L414
	.p2align 4,,10
	.p2align 3
.L386:
	cmpq	%rsi, %rdx
	jnb	.L371
.L379:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L390:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L411
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L390
.L371:
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
.L388:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L411
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L408:
	cmpq	%r12, %rax
	jb	.L388
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L412:
	testq	%rsi, %rsi
	je	.L371
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L370
.L411:
	movq	%rbx, %rdx
.L410:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L368:
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
	jbe	.L416
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L416
	.p2align 4,,10
	.p2align 3
.L417:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L419:
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
	jb	.L419
	cmpq	%r13, %rdi
	jb	.L417
.L416:
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
	jbe	.L445
	.p2align 4,,10
	.p2align 3
.L425:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L427:
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
	jb	.L427
	cmpq	%r13, %rdi
	jb	.L425
	movq	32(%rbp), %rdx
	cmpq	$1, %rdx
	jbe	.L445
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L430:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jnb	.L453
.L442:
	movq	%r12, %rdi
.L436:
	movq	40(%rbp), %rax
	movq	(%rax,%rdi,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, %r14
	jnb	.L454
	movq	(%rax,%r14,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L444
	je	.L430
.L444:
	cmpq	$1, %rdi
	je	.L455
	cmpq	%rsi, %r14
	jnb	.L435
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L434:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L433:
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
	jb	.L433
	cmpq	%rdi, %r12
	jb	.L434
	movq	32(%rbp), %rdx
.L435:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jb	.L442
.L453:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L445
	.p2align 4,,10
	.p2align 3
.L437:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L439:
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
	jb	.L439
	cmpq	%r12, %rsi
	jb	.L437
.L445:
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
.L455:
	movl	$1, %r14d
	jmp	.L430
.L454:
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
	jne	.L459
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L460
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L459:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L460:
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
	jnb	.L469
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L470
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	23(%rdx), %ecx
	movq	712(%rax), %r8
	movq	72(%rdx), %rdx
	cmpq	704(%rax), %rdx
	jnb	.L469
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L471
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rcx), %xmm0
	movq	712(%rax), %r8
	xorpd	.LC18(%rip), %xmm0
	movq	72(%rcx), %rcx
	cmpq	704(%rax), %rcx
	jnb	.L472
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L473
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L472:
	movq	%rcx, %rdx
.L469:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L473:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L471:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L470:
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
	jnb	.L486
	movq	(%r11,%rdx,8), %rdx
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L486
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L487
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	23(%rax), %r8d
	movq	80(%rax), %rdx
	movq	104(%rax), %r9
	cmpq	96(%rax), %rdx
	jnb	.L486
	movq	(%r9,%rdx,8), %rdx
	movq	712(%rcx), %rax
	cmpq	704(%rcx), %rdx
	jnb	.L486
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L488
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rax), %xmm0
	movq	80(%rax), %r8
	xorpd	.LC18(%rip), %xmm0
	movq	104(%rax), %r10
	cmpq	96(%rax), %r8
	jnb	.L489
	movq	(%r10,%r8,8), %rax
	movq	712(%rcx), %r8
	cmpq	704(%rcx), %rax
	jnb	.L490
	movq	(%r8,%rax,8), %rax
	movq	16(%rcx), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%rax, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L491
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L490:
	movq	%rax, %rdx
.L486:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L491:
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L489:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L488:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L487:
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
	jne	.L496
	movq	(%rsi), %rax
	movzbl	19(%rax), %edx
	movq	112(%rax), %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L497
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
	jne	.L498
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L496:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L498:
	leaq	.LC25(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L497:
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
	jne	.L535
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderClear
	testl	%eax, %eax
	jne	.L501
	movq	32(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L503
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L505
	.p2align 4,,10
	.p2align 3
.L537:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L536
.L505:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L537
	movq	%rbx, %rdi
	cmpq	%rdx, %rbx
	jnb	.L507
.L506:
	leaq	.L510(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L518:
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L508
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L510:
	.long	.L514-.L510
	.long	.L513-.L510
	.long	.L512-.L510
	.long	.L511-.L510
	.long	.L509-.L510
	.text
	.p2align 4,,10
	.p2align 3
.L503:
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
.L511:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
	movq	32(%rsi), %rdx
.L508:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L517
.L538:
	movq	40(%rsi), %rax
	jmp	.L518
	.p2align 4,,10
	.p2align 3
.L512:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rsi), %rdx
	cmpq	%rdx, %rbx
	jb	.L538
	.p2align 4,,10
	.p2align 3
.L517:
	testq	%rdi, %rdi
	je	.L503
	movq	40(%rsi), %rax
.L507:
	xorl	%ebx, %ebx
	leaq	.L522(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L529:
	cmpq	%rdx, %rbx
	jnb	.L539
	movq	(%rax,%rbx,8), %r12
	cmpl	$4, 8(%r12)
	ja	.L520
	movl	8(%r12), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
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
.L513:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L509:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L527
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L528
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	32(%rsi), %rdx
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L514:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L523:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render10RenderTextEPNS1_5tokenE
.L520:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	je	.L503
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	jmp	.L529
	.p2align 4,,10
	.p2align 3
.L524:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L525:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render13RenderTextureEPNS1_5tokenE
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L521:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L527
	movq	(%rsi), %rax
	leaq	28(%r12), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L528
	movl	$48, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L526:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render11RenderColorEPNS1_5tokenE
	jmp	.L520
	.p2align 4,,10
	.p2align 3
.L536:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	.L506
.L539:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L527:
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L528:
	leaq	.LC29(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L501:
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L535:
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
	jne	.L548
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L549
	testq	%rbx, %rbx
	je	.L544
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L544:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L548:
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L549:
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
