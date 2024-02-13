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
.LFB6940:
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
.LFB6941:
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
.LFB6890:
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
	.globl	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
	.def	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect
_ZN3wze6engine6render5tokenC2EPvNS1_4typeEdh8SDL_Rect:
.LFB6893:
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
.LFB6895:
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
.LFB6896:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L44
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L45
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rcx)
	addq	$40, %rsp
	ret
.L44:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L45:
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
.LFB6897:
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
.LFB6898:
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
.LFB6900:
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
	movaps	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movaps	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movaps	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	.seh_endprologue
	movq	%rcx, %r14
	movq	(%rcx), %rcx
	movq	264(%rcx), %rdx
	cmpq	$1, %rdx
	jbe	.L49
	movl	$1, %ebx
	xorl	%r15d, %r15d
	leaq	128(%rsp), %r12
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L50:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L285
.L174:
	movq	272(%rcx), %rax
	leaq	0(,%rbx,8), %rsi
	movq	(%rax,%rbx,8), %r8
	testq	%r8, %r8
	je	.L50
	cmpb	$0, 168(%r8)
	je	.L50
	cmpq	%rdx, %rbx
	jnb	.L167
	movl	$1, %edi
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L78:
	movq	32(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L52
	cmpw	$0, 16(%r8)
	je	.L52
	cmpw	$0, 18(%r8)
	je	.L52
	cmpb	$0, 23(%r8)
	je	.L52
	cmpb	$0, 26(%r8)
	jne	.L286
	.p2align 4,,10
	.p2align 3
.L52:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L167
.L51:
	movq	(%rax,%rsi), %r9
	cmpq	24(%r9), %rdi
	jb	.L78
	cmpq	%rdx, %rbx
	jnb	.L167
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L79:
	movq	(%rax,%rsi), %r9
	cmpq	56(%r9), %rdi
	jnb	.L287
	movq	64(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L80
	cmpw	$0, 16(%r8)
	je	.L80
	cmpw	$0, 18(%r8)
	je	.L80
	cmpb	$0, 23(%r8)
	je	.L80
	cmpb	$0, 37(%r8)
	je	.L80
	cmpq	$0, 80(%r8)
	jne	.L288
	.p2align 4,,10
	.p2align 3
.L80:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L79
.L167:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
.LEHB0:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L287:
	cmpq	%rdx, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %r9
	movl	$1, %edi
	cmpq	88(%r9), %rdi
	jnb	.L289
	.p2align 4,,10
	.p2align 3
.L132:
	movq	96(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L107
	cmpw	$0, 16(%r8)
	je	.L107
	cmpw	$0, 18(%r8)
	je	.L107
	cmpb	$0, 23(%r8)
	je	.L107
	cmpb	$0, 37(%r8)
	je	.L107
	movq	88(%r8), %r10
	movq	112(%r8), %r8
	cmpq	$0, (%r8,%r10,8)
	jne	.L290
	.p2align 4,,10
	.p2align 3
.L107:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L167
.L282:
	movq	(%rax,%rsi), %r9
	cmpq	88(%r9), %rdi
	jb	.L132
.L289:
	cmpq	%rdx, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %r9
	movl	$1, %edi
	cmpq	120(%r9), %rdi
	jnb	.L291
	.p2align 4,,10
	.p2align 3
.L159:
	movq	128(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L134
	cmpw	$0, 64(%r8)
	je	.L134
	cmpq	$0, 72(%r8)
	je	.L134
	cmpb	$0, 19(%r8)
	je	.L134
	cmpb	$0, 37(%r8)
	je	.L134
	cmpq	$0, 128(%r8)
	jne	.L292
	.p2align 4,,10
	.p2align 3
.L134:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L167
.L283:
	movq	(%rax,%rsi), %r9
	cmpq	120(%r9), %rdi
	jb	.L159
.L291:
	cmpq	%rdx, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %rax
	movl	$1, %edi
	cmpq	152(%rax), %rdi
	jnb	.L293
	.p2align 4,,10
	.p2align 3
.L168:
	movq	160(%rax), %r8
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L161
	cmpb	$0, 18(%r8)
	je	.L161
	movzwl	88(%r8), %r10d
	testw	%r10w, %r10w
	je	.L161
	movzwl	90(%r8), %r9d
	testw	%r9w, %r9w
	je	.L161
	movsd	48(%r8), %xmm3
	movsd	272(%rax), %xmm0
	movzwl	%r10w, %eax
	leaq	80(%rcx), %rdx
	movsd	40(%r8), %xmm2
	movl	%eax, 32(%rsp)
	movq	%r12, %rcx
	movl	%r9d, 40(%rsp)
	movsd	%xmm0, 48(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	128(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm6
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L272
	movl	72(%rsp), %edx
	testl	%edx, %edx
	jne	.L162
.L272:
	movq	(%r14), %rcx
	movq	264(%rcx), %rdx
	.p2align 4,,10
	.p2align 3
.L161:
	movq	272(%rcx), %rax
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %rax
	cmpq	152(%rax), %rdi
	jb	.L168
.L293:
	cmpb	$0, 192(%rax)
	je	.L50
	movzwl	290(%rax), %r8d
	testw	%r8w, %r8w
	je	.L50
	movzwl	292(%rax), %r9d
	testw	%r9w, %r9w
	je	.L50
	movsd	232(%rax), %xmm3
	movsd	224(%rax), %xmm2
	leaq	80(%rcx), %rdx
	leaq	128(%rsp), %r10
	movsd	272(%rax), %xmm0
	movl	%r9d, 40(%rsp)
	movq	%r10, %rcx
	movl	%r8d, 32(%rsp)
	movsd	%xmm0, 48(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	128(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm6
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L273
	movl	72(%rsp), %eax
	testl	%eax, %eax
	jne	.L169
.L273:
	movq	(%r14), %rcx
	movq	264(%rcx), %rdx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L285:
	movq	32(%r14), %rbx
	cmpq	%rbx, %r15
	jb	.L294
.L227:
	movaps	144(%rsp), %xmm6
	movaps	160(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	176(%rsp), %xmm8
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
.L162:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L295
.L164:
	cmpq	%r15, 32(%r14)
	je	.L296
.L165:
	movl	$48, %ecx
	call	_Znwy
	movq	40(%r14), %rdx
	leaq	1(%r15), %r8
	movq	$0, (%rax)
	movl	$4, 8(%rax)
	movq	$0x000000000, 16(%rax)
	movb	$-1, 24(%rax)
	movups	%xmm6, 28(%rax)
	cmpq	32(%r14), %r15
	jnb	.L278
	movq	(%r14), %rcx
	movq	%rax, (%rdx,%r15,8)
	movq	%r8, %r15
	movq	264(%rcx), %rdx
	jmp	.L161
	.p2align 4,,10
	.p2align 3
.L292:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%r9), %xmm0
	movsd	272(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L297
	ucomisd	%xmm8, %xmm6
	jp	.L139
	jne	.L139
	addsd	.LC8(%rip), %xmm8
.L139:
	comisd	%xmm6, %xmm8
	jbe	.L134
.L137:
	movq	%r12, 96(%rsp)
	leaq	128(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L303:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L271
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L146
.L152:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L298
.L147:
	cmpq	%r15, 32(%r14)
	je	.L299
.L153:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	movq	272(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L300
	movq	(%rdx,%rsi), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rdi
	jnb	.L301
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
	jnb	.L267
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L145:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L302
.L157:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %rax
	movq	128(%rax), %rcx
	cmpq	120(%rax), %rdi
	jnb	.L279
	movq	(%rcx,%rbp), %rax
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	72(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	64(%rax), %eax
	movq	%r13, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	128(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movl	72(%rsp), %ecx
	movdqa	64(%rsp), %xmm7
	testl	%ecx, %ecx
	jne	.L303
.L271:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L294:
	movq	%r15, 32(%r14)
	movq	40(%r14), %rcx
	testq	%r15, %r15
	je	.L177
	leaq	0(,%r15,8), %rdx
	call	realloc
	movq	%rax, 40(%r14)
	testq	%rax, %rax
	jne	.L227
	subq	%r15, %rbx
	movq	%r15, %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rbx, %r8
	call	_Z6printfPKcz
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L286:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%r9), %xmm0
	movsd	272(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L304
	ucomisd	%xmm8, %xmm6
	jp	.L57
	jne	.L57
	addsd	.LC8(%rip), %xmm8
.L57:
	comisd	%xmm6, %xmm8
	jbe	.L52
.L55:
	movq	%r12, 96(%rsp)
	leaq	128(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L310:
	movl	72(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L268
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L64
.L70:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r11d, %eax
	js	.L305
.L65:
	cmpq	%r15, 32(%r14)
	je	.L306
.L71:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	movq	272(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L307
	movq	(%rdx,%rsi), %rdx
	movq	32(%rdx), %r9
	cmpq	24(%rdx), %rdi
	jnb	.L308
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
	jnb	.L267
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L63:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L309
.L76:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L279
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
	movdqu	128(%rsp), %xmm1
	movaps	%xmm1, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L310
.L268:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L305:
	movzwl	10(%r14), %eax
	subl	%r12d, %r11d
	cmpl	%eax, %r11d
	jle	.L65
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L65
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L65
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L64:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 104(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L281
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %rcx
	cmpq	264(%rax), %rbx
	jnb	.L167
	movq	(%rcx,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L279
	movq	88(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L70
	cmpl	%r11d, 28(%rdx)
	jne	.L70
	cmpl	%r10d, 32(%rdx)
	jne	.L70
	cmpl	%r12d, 36(%rdx)
	jne	.L70
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	movl	%r9d, 116(%rsp)
	movq	%r8, 88(%rsp)
	movd	%xmm7, 124(%rsp)
	movd	%xmm0, 120(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	116(%rsp), %r9d
	movq	88(%rsp), %r8
	movq	(%rax), %rax
	movl	120(%rsp), %r10d
	movl	124(%rsp), %r11d
	cmpl	%r9d, 40(%rax)
	jne	.L70
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L309:
	movq	96(%rsp), %r12
	movq	%r8, %rdx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L306:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L288:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%r9), %xmm0
	movsd	272(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L311
	ucomisd	%xmm8, %xmm6
	jp	.L85
	jne	.L85
	addsd	.LC8(%rip), %xmm8
.L85:
	comisd	%xmm6, %xmm8
	jbe	.L80
.L83:
	leaq	128(%rsp), %r11
	movq	%r12, 96(%rsp)
	movq	%rdx, %r8
	movq	%r11, %r12
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L317:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L269
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r13d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L92
.L98:
	sarl	%r13d
	movl	%r13d, %eax
	addl	%r11d, %eax
	js	.L312
.L93:
	cmpq	%r15, 32(%r14)
	je	.L313
.L99:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	%rax, %r13
	movq	264(%rcx), %r8
	movq	272(%rcx), %rax
	cmpq	%r8, %rbx
	jnb	.L314
	movq	(%rax,%rsi), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %rdi
	jnb	.L315
	movq	(%rdx,%rbp), %rax
	movzbl	36(%rax), %edx
	movq	%rax, 0(%r13)
	leaq	1(%r15), %rax
	movl	$1, 8(%r13)
	movb	%dl, 24(%r13)
	movq	40(%r14), %rdx
	movsd	%xmm6, 16(%r13)
	movups	%xmm7, 28(%r13)
	cmpq	32(%r14), %r15
	jnb	.L267
	movq	%r13, (%rdx,%r15,8)
	movq	%rax, %r15
.L91:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L316
.L103:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L279
	movq	(%rcx,%rbp), %rax
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	%r12, %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	128(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %r9d
	movdqa	64(%rsp), %xmm7
	testl	%r9d, %r9d
	jne	.L317
.L269:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L290:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%r9), %xmm0
	movsd	272(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L318
	ucomisd	%xmm6, %xmm8
	jp	.L112
	jne	.L112
	addsd	.LC8(%rip), %xmm8
.L112:
	comisd	%xmm6, %xmm8
	jbe	.L107
.L110:
	leaq	128(%rsp), %r11
	movq	%r12, 104(%rsp)
	movq	%rdx, %r8
	movq	%r11, 88(%rsp)
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L324:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L270
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %r13d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r15, %r15
	jne	.L119
.L125:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r10d, %eax
	js	.L319
.L120:
	cmpq	%r15, 32(%r14)
	je	.L320
.L126:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	%rax, %r13
	movq	264(%rcx), %r8
	movq	272(%rcx), %rax
	cmpq	%r8, %rbx
	jnb	.L321
	movq	(%rax,%rsi), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %rdi
	jnb	.L322
	movq	(%rdx,%rbp), %rax
	movzbl	36(%rax), %edx
	movq	%rax, 0(%r13)
	leaq	1(%r15), %rax
	movl	$2, 8(%r13)
	movb	%dl, 24(%r13)
	movq	40(%r14), %rdx
	movsd	%xmm6, 16(%r13)
	movups	%xmm7, 28(%r13)
	cmpq	32(%r14), %r15
	jnb	.L267
	movq	%r13, (%rdx,%r15,8)
	movq	%rax, %r15
.L118:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L323
.L130:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L167
	movq	(%rax,%rsi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rdi
	jnb	.L279
	movq	(%rcx,%rbp), %rax
	movsd	56(%rax), %xmm3
	movsd	48(%rax), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rax), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rax), %eax
	movq	88(%rsp), %rcx
	movl	%eax, 32(%rsp)
	call	_ZN3wze6engine6camera9TransformEddttd
	movdqu	128(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %r8d
	movdqa	64(%rsp), %xmm7
	testl	%r8d, %r8d
	jne	.L324
.L270:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L118
.L295:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L164
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %edx
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %r11d
	addl	%edx, %r11d
	jns	.L164
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jge	.L164
	jmp	.L272
.L297:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L139
	jne	.L139
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L298:
	movzwl	10(%r14), %eax
	subl	%r12d, %r11d
	cmpl	%eax, %r11d
	jle	.L147
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L147
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L147
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L146:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 104(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L281
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %rcx
	cmpq	264(%rax), %rbx
	jnb	.L167
	movq	(%rcx,%rsi), %rax
	movq	128(%rax), %rcx
	cmpq	120(%rax), %rdi
	jnb	.L279
	movq	88(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L152
	cmpl	%r11d, 28(%rdx)
	jne	.L152
	cmpl	%r10d, 32(%rdx)
	jne	.L152
	cmpl	%r12d, 36(%rdx)
	jne	.L152
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	movl	%r9d, 120(%rsp)
	movq	%r8, 88(%rsp)
	movd	%xmm7, 124(%rsp)
	movd	%xmm0, 116(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	120(%rsp), %r9d
	movq	88(%rsp), %r8
	movq	(%rax), %rax
	movl	116(%rsp), %r10d
	movl	124(%rsp), %r11d
	cmpl	%r9d, 40(%rax)
	jne	.L152
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L312:
	movzwl	10(%r14), %eax
	subl	%r13d, %r11d
	cmpl	%eax, %r11d
	jle	.L93
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L93
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L93
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L302:
	movq	%r8, %rdx
	movq	96(%rsp), %r12
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L283
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L319:
	movzwl	10(%r14), %eax
	subl	%r12d, %r10d
	cmpl	%eax, %r10d
	jle	.L120
	sarl	%r13d
	movl	%r13d, %ecx
	addl	%r9d, %ecx
	jns	.L120
	subl	%r13d, %r9d
	cmpl	%r9d, %eax
	jge	.L120
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L92:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 104(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L281
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %rcx
	cmpq	264(%rax), %rbx
	jnb	.L167
	movq	(%rcx,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L279
	movq	88(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L98
	cmpl	%r11d, 28(%rdx)
	jne	.L98
	cmpl	%r10d, 32(%rdx)
	jne	.L98
	cmpl	%r13d, 36(%rdx)
	jne	.L98
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	movl	%r9d, 116(%rsp)
	movq	%r8, 88(%rsp)
	movd	%xmm7, 124(%rsp)
	movd	%xmm0, 120(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	116(%rsp), %r9d
	movq	88(%rsp), %r8
	movq	(%rax), %rax
	movl	120(%rsp), %r10d
	movl	124(%rsp), %r11d
	cmpl	%r9d, 40(%rax)
	jne	.L98
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L119:
	movq	40(%r14), %rax
	movq	32(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 64(%rsp)
	cmpq	%rcx, %r8
	jnb	.L281
	movq	(%rax,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 96(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %r11
	cmpq	264(%rax), %rbx
	jnb	.L167
	movq	(%r11,%rsi), %rax
	movq	96(%rax), %r11
	cmpq	88(%rax), %rdi
	jnb	.L279
	movq	96(%rsp), %rax
	cmpq	(%r11,%rbp), %rax
	jne	.L125
	cmpl	%r10d, 28(%rdx)
	jne	.L125
	cmpl	%r9d, 32(%rdx)
	jne	.L125
	cmpl	%r12d, 36(%rdx)
	jne	.L125
	movq	64(%rsp), %rdx
	movq	%r8, 96(%rsp)
	movd	%xmm0, 120(%rsp)
	movd	%xmm7, 116(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	96(%rsp), %r8
	movl	116(%rsp), %r10d
	movq	(%rax), %rax
	movl	120(%rsp), %r9d
	cmpl	%r13d, 40(%rax)
	jne	.L125
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L299:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L153
.L316:
	movq	%r8, %rdx
	movq	96(%rsp), %r12
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L79
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L323:
	movq	%r8, %rdx
	movq	104(%rsp), %r12
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L282
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L304:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L57
	jne	.L57
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L55
.L313:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L99
.L320:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L126
.L49:
	cmpq	$0, 32(%r14)
	je	.L227
	movq	$0, 32(%r14)
	movq	40(%r14), %rcx
.L177:
	call	free
	movq	$0, 40(%r14)
	jmp	.L227
.L311:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L85
	jne	.L85
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L83
.L318:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L112
	jne	.L112
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L110
.L296:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L165
.L169:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%edx, %esi
	js	.L325
.L171:
	cmpq	%r15, 32(%r14)
	je	.L326
.L172:
	movl	$48, %ecx
	call	_Znwy
	movq	40(%r14), %rdx
	leaq	1(%r15), %r8
	movq	$0, (%rax)
	movl	$5, 8(%rax)
	movq	$0x000000000, 16(%rax)
	movb	$-1, 24(%rax)
	movups	%xmm6, 28(%rax)
	cmpq	32(%r14), %r15
	jnb	.L278
	movq	(%r14), %rcx
	movq	%rax, (%rdx,%r15,8)
	movq	%r8, %r15
	movq	264(%rcx), %rdx
	jmp	.L50
.L325:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L171
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %eax
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %edx
	sarl	%edx
	movl	%edx, %esi
	addl	%eax, %esi
	jns	.L171
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L171
	jmp	.L273
.L279:
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L326:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L172
.L267:
	movq	%r15, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
.L280:
	movl	$1, %ecx
	call	exit
.L308:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	jmp	.L280
.L322:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB2:
	call	_Z6printfPKcz
	jmp	.L280
.L321:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L280
.L315:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB3:
	call	_Z6printfPKcz
	jmp	.L280
.L314:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE3:
	jmp	.L280
.L301:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB4:
	call	_Z6printfPKcz
	jmp	.L280
.L300:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L280
.L307:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	jmp	.L280
.L281:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
.LEHB6:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L278:
	leaq	.LC2(%rip), %rcx
	movq	%r15, %rdx
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
.L193:
	movq	%rax, %rbx
	jmp	.L183
.L195:
	movq	%rax, %rbx
	jmp	.L183
.L194:
	movq	%rax, %rbx
	jmp	.L183
.L196:
	movq	%rax, %rbx
	jmp	.L183
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6900:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6900-.LLSDACSB6900
.LLSDACSB6900:
	.uleb128 .LEHB0-.LFB6900
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6900
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L193-.LFB6900
	.uleb128 0
	.uleb128 .LEHB2-.LFB6900
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L195-.LFB6900
	.uleb128 0
	.uleb128 .LEHB3-.LFB6900
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L194-.LFB6900
	.uleb128 0
	.uleb128 .LEHB4-.LFB6900
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L196-.LFB6900
	.uleb128 0
	.uleb128 .LEHB5-.LFB6900
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L193-.LFB6900
	.uleb128 0
	.uleb128 .LEHB6-.LFB6900
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE6900:
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
	.seh_savexmm	%xmm6, 144
	.seh_savexmm	%xmm7, 160
	.seh_savereg	%r12, 232
	.seh_savereg	%r13, 240
	.seh_savereg	%r14, 248
	.seh_savereg	%r15, 256
	.seh_savexmm	%xmm8, 176
	.seh_endprologue
_ZN3wze6engine6render14SelectionStageEv.cold:
.L183:
	movq	%r13, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6900:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6900-.LLSDACSBC6900
.LLSDACSBC6900:
	.uleb128 .LEHB7-.LCOLDB11
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC6900:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render17OrderByLayerMergeEyyy
	.def	_ZN3wze6engine6render17OrderByLayerMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render17OrderByLayerMergeEyyy
_ZN3wze6engine6render17OrderByLayerMergeEyyy:
.LFB6903:
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
	movabsq	$1152921504606846975, %rbp
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%r8, %r13
	subq	%rdx, %r12
	movq	%r9, %r15
	addq	$1, %r12
	cmpq	%r12, %rbp
	jb	.L328
	leaq	0(,%r12,8), %rcx
	movq	%r15, %rsi
	call	_Znay
	subq	%r13, %rsi
	movq	%rax, %rdi
	cmpq	%rsi, %rbp
	jb	.L328
	leaq	0(,%rsi,8), %rcx
	call	_Znay
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.L370
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L335
	.p2align 4,,10
	.p2align 3
.L353:
	movq	%rax, %rdx
.L335:
	cmpq	%rcx, %rdx
	jnb	.L371
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r13
	jne	.L353
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L350
.L331:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L354:
	movq	%rax, %rdx
.L338:
	cmpq	%rcx, %rdx
	jnb	.L372
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L354
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L340
	xorl	%eax, %eax
	jmp	.L346
	.p2align 4,,10
	.p2align 3
.L374:
	cmpq	%rcx, %rbx
	jnb	.L373
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L348
.L376:
	cmpq	%rsi, %rdx
	jnb	.L369
.L346:
	movq	0(%rbp,%rdx,8), %r8
	movq	(%rdi,%rax,8), %r9
	movsd	16(%r9), %xmm0
	comisd	16(%r8), %xmm0
	ja	.L374
	cmpq	%rcx, %rbx
	jnb	.L375
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L376
	.p2align 4,,10
	.p2align 3
.L348:
	cmpq	%rsi, %rdx
	jnb	.L332
.L340:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L352:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L377
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L352
.L332:
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	%rbp, %rcx
	call	_ZdaPv
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
.L350:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L378
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L369:
	cmpq	%r12, %rax
	jb	.L350
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L370:
	testq	%rsi, %rsi
	je	.L332
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L331
.L371:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L377:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L378:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L372:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L373:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L375:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6render17OrderByLayerMergeEyyy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render17OrderByLayerMergeEyyy.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_savereg	%r14, 88
	.seh_savereg	%r15, 96
	.seh_endprologue
_ZN3wze6engine6render17OrderByLayerMergeEyyy.cold:
.L328:
	call	__cxa_throw_bad_array_new_length
	nop
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE12:
	.text
.LHOTE12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12OrderByLayerEyy
	.def	_ZN3wze6engine6render12OrderByLayerEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render12OrderByLayerEyy
_ZN3wze6engine6render12OrderByLayerEyy:
.LFB6902:
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
	jbe	.L380
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L380
	.p2align 4,,10
	.p2align 3
.L381:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L383:
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
	jb	.L383
	cmpq	%r13, %rdi
	jb	.L381
.L380:
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
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
	.def	_ZN3wze6engine6render20OrderByPriorityMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render20OrderByPriorityMergeEyyy
_ZN3wze6engine6render20OrderByPriorityMergeEyyy:
.LFB6905:
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
	movabsq	$1152921504606846975, %rbp
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%r8, %r13
	subq	%rdx, %r12
	movq	%r9, %r15
	addq	$1, %r12
	cmpq	%r12, %rbp
	jb	.L389
	leaq	0(,%r12,8), %rcx
	movq	%r15, %rsi
	call	_Znay
	subq	%r13, %rsi
	movq	%rax, %rdi
	cmpq	%rsi, %rbp
	jb	.L389
	leaq	0(,%rsi,8), %rcx
	call	_Znay
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.L428
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L413:
	movq	%rax, %rdx
.L396:
	cmpq	%rcx, %rdx
	jnb	.L429
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%r13, %rdx
	jne	.L413
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L410
.L392:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L399
	.p2align 4,,10
	.p2align 3
.L414:
	movq	%rax, %rdx
.L399:
	cmpq	%rcx, %rdx
	jnb	.L430
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L414
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L401
	xorl	%eax, %eax
	jmp	.L406
	.p2align 4,,10
	.p2align 3
.L432:
	cmpq	%rcx, %rbx
	jnb	.L431
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L408
.L434:
	cmpq	%rsi, %rdx
	jnb	.L427
.L406:
	movq	(%rdi,%rax,8), %r9
	movq	0(%rbp,%rdx,8), %r8
	movzbl	24(%r9), %r11d
	cmpb	%r11b, 24(%r8)
	jb	.L432
	cmpq	%rcx, %rbx
	jnb	.L433
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L434
	.p2align 4,,10
	.p2align 3
.L408:
	cmpq	%rsi, %rdx
	jnb	.L393
.L401:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L412:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L435
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L412
.L393:
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	%rbp, %rcx
	call	_ZdaPv
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
.L410:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L436
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L427:
	cmpq	%r12, %rax
	jb	.L410
	jmp	.L408
	.p2align 4,,10
	.p2align 3
.L428:
	testq	%rsi, %rsi
	je	.L393
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L392
.L429:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L435:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L436:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L430:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L431:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L433:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine6render20OrderByPriorityMergeEyyy.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render20OrderByPriorityMergeEyyy.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 40
	.seh_savereg	%rsi, 48
	.seh_savereg	%rdi, 56
	.seh_savereg	%rbp, 64
	.seh_savereg	%r12, 72
	.seh_savereg	%r13, 80
	.seh_savereg	%r14, 88
	.seh_savereg	%r15, 96
	.seh_endprologue
_ZN3wze6engine6render20OrderByPriorityMergeEyyy.cold:
.L389:
	call	__cxa_throw_bad_array_new_length
	nop
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE13:
	.text
.LHOTE13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render15OrderByPriorityEyy
	.def	_ZN3wze6engine6render15OrderByPriorityEyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render15OrderByPriorityEyy
_ZN3wze6engine6render15OrderByPriorityEyy:
.LFB6904:
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
	jbe	.L438
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L438
	.p2align 4,,10
	.p2align 3
.L439:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L441:
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
	jb	.L441
	cmpq	%r13, %rdi
	jb	.L439
.L438:
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
.LFB6901:
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
	jbe	.L467
	.p2align 4,,10
	.p2align 3
.L447:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L449:
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
	jb	.L449
	cmpq	%r13, %rdi
	jb	.L447
	movq	32(%rbp), %rdx
	cmpq	$1, %rdx
	jbe	.L467
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L458
	.p2align 4,,10
	.p2align 3
.L452:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jnb	.L475
.L464:
	movq	%r12, %rdi
.L458:
	movq	40(%rbp), %rax
	movq	(%rax,%rdi,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, %r14
	jnb	.L476
	movq	(%rax,%r14,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L466
	je	.L452
.L466:
	cmpq	$1, %rdi
	je	.L477
	cmpq	%rsi, %r14
	jnb	.L457
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L456:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L455:
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
	jb	.L455
	cmpq	%rdi, %r12
	jb	.L456
	movq	32(%rbp), %rdx
.L457:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jb	.L464
.L475:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L467
	.p2align 4,,10
	.p2align 3
.L459:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L461:
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
	jb	.L461
	cmpq	%r12, %rsi
	jb	.L459
.L467:
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
.L477:
	movl	$1, %r14d
	jmp	.L452
.L476:
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
	.ascii "wze::engine.render.RenderColorbox(): SDL_SetRenderDrawColor failed\12Params: %p\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.render.RenderColorbox(): SDL_RenderFillRect failed\12Params: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE:
.LFB6907:
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
	jne	.L481
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L482
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L481:
	leaq	.LC14(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L482:
	leaq	.LC15(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.render.RenderTexturebox(): SDL_SetTextureColorMod failed\12Params: %p\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.render.RenderTexturebox(): SDL_SetTextureAlphaMod failed\12Params: %p\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.render.RenderTexturebox(): SDL_RenderCopyEx failed\12Params: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE:
.LFB6908:
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
	movq	80(%rax), %rdx
	movq	336(%rcx), %rax
	cmpq	328(%rcx), %rdx
	jnb	.L491
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L492
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	23(%rdx), %ecx
	movq	336(%rax), %r8
	movq	80(%rdx), %rdx
	cmpq	328(%rax), %rdx
	jnb	.L491
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L493
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rcx), %xmm0
	movq	336(%rax), %r8
	xorpd	.LC18(%rip), %xmm0
	movq	80(%rcx), %rcx
	cmpq	328(%rax), %rcx
	jnb	.L494
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L495
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L494:
	movq	%rcx, %rdx
.L491:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L495:
	leaq	.LC19(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L493:
	leaq	.LC17(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L492:
	leaq	.LC16(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed\12Params: %p\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed\12Params: %p\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed\12Params: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	.def	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE:
.LFB6909:
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
	movq	88(%rax), %rdx
	movq	112(%rax), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	336(%rcx), %rax
	cmpq	328(%rcx), %rdx
	jnb	.L504
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L505
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movq	88(%rax), %rdx
	movzbl	23(%rax), %r8d
	movq	112(%rax), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	336(%rcx), %rax
	cmpq	328(%rcx), %rdx
	jnb	.L504
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L506
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movq	88(%rcx), %r8
	movsd	24(%rcx), %xmm0
	movq	112(%rcx), %rcx
	xorpd	.LC18(%rip), %xmm0
	movq	(%rcx,%r8,8), %rcx
	movq	336(%rax), %r8
	cmpq	328(%rax), %rcx
	jnb	.L507
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L508
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L507:
	movq	%rcx, %rdx
.L504:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L508:
	leaq	.LC22(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L506:
	leaq	.LC21(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L505:
	leaq	.LC20(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.render.RenderTextbox(): SDL_SetTextureColorMod failed\12Params: %p\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.render.RenderTextbox(): SDL_SetTextureAlphaMod failed\12Params: %p\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.render.RenderTextbox(): SDL_RenderCopyEx failed\12Params: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE:
.LFB6910:
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
	movq	128(%rax), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movzbl	16(%rax), %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L513
	movq	(%rsi), %rax
	movzbl	19(%rax), %edx
	movq	128(%rax), %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L514
	movq	(%rdi), %rdx
	movq	(%rsi), %rax
	xorl	%r8d, %r8d
	leaq	28(%rsi), %r9
	movq	16(%rdx), %rcx
	movzbl	%bl, %edx
	movq	128(%rax), %r10
	movq	$0, 40(%rsp)
	movl	%edx, 48(%rsp)
	movsd	24(%rax), %xmm0
	xorpd	.LC18(%rip), %xmm0
	movq	%r10, %rdx
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L515
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L513:
	leaq	.LC23(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L515:
	leaq	.LC25(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L514:
	leaq	.LC24(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "wze::engine.render.RenderOverlapbox(): SDL_SetRenderDrawColor failed\12Params: %p\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.render.RenderOverlapbox(): SDL_RenderFillRect failed\12Params: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE:
.LFB6911:
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
	jne	.L523
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L524
	testq	%rbx, %rbx
	je	.L519
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L519:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L523:
	leaq	.LC26(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L524:
	leaq	.LC27(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC28:
	.ascii "wze::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed\12Params: %p\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.render.RenderHitbox(): SDL_RenderFillRect failed\12Params: %p\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE:
.LFB6912:
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
	jne	.L532
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L533
	testq	%rbx, %rbx
	je	.L528
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L528:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L532:
	leaq	.LC28(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L533:
	leaq	.LC29(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC30:
	.ascii "wze::engine.render.RenderingStage(): SDL_SetRenderDrawColor() failed\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.render.RenderingStage(): SDL_RenderClear() failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderingStageEv
	.def	_ZN3wze6engine6render14RenderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14RenderingStageEv
_ZN3wze6engine6render14RenderingStageEv:
.LFB6906:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
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
	jne	.L568
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderClear
	testl	%eax, %eax
	jne	.L536
	movq	32(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L538
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L570:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L569
.L540:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L570
	movq	%rbx, %rdi
	cmpq	%rdx, %rbx
	jnb	.L542
.L541:
	leaq	.L545(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L552:
	movq	(%rax,%rbx,8), %rcx
	cmpl	$5, 8(%rcx)
	ja	.L543
	movl	8(%rcx), %eax
	movq	%rcx, %rdx
	movq	%rsi, %rcx
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L545:
	.long	.L550-.L545
	.long	.L549-.L545
	.long	.L548-.L545
	.long	.L547-.L545
	.long	.L546-.L545
	.long	.L544-.L545
	.text
	.p2align 4,,10
	.p2align 3
.L538:
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderPresent
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L546:
	call	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
.L543:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L551
.L571:
	movq	40(%rsi), %rax
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L547:
	call	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L571
	.p2align 4,,10
	.p2align 3
.L551:
	testq	%rdi, %rdi
	je	.L538
	movq	40(%rsi), %rax
.L542:
	xorl	%ebx, %ebx
	leaq	.L556(%rip), %rbp
	.p2align 4,,10
	.p2align 3
.L562:
	cmpq	%rdx, %rbx
	jnb	.L572
	movq	(%rax,%rbx,8), %rdx
	cmpl	$5, 8(%rdx)
	ja	.L554
	movl	8(%rdx), %eax
	movq	%rsi, %rcx
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L556:
	.long	.L561-.L556
	.long	.L560-.L556
	.long	.L559-.L556
	.long	.L558-.L556
	.long	.L557-.L556
	.long	.L555-.L556
	.text
	.p2align 4,,10
	.p2align 3
.L548:
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L549:
	call	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L544:
	call	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L550:
	call	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L543
	.p2align 4,,10
	.p2align 3
.L557:
	call	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.p2align 4,,10
	.p2align 3
.L554:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	je	.L538
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L559:
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L560:
	call	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L561:
	call	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L555:
	call	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L558:
	call	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L569:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	.L541
.L572:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L536:
	leaq	.LC31(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L568:
	leaq	.LC30(%rip), %rcx
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
.LFB6899:
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
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	SDL_SetRenderDrawColor;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderFillRect;	.scl	2;	.type	32;	.endef
	.def	SDL_SetTextureColorMod;	.scl	2;	.type	32;	.endef
	.def	SDL_SetTextureAlphaMod;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderCopyEx;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderClear;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderPresent;	.scl	2;	.type	32;	.endef
