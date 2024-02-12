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
.LFB6944:
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
.LFB6945:
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
	.globl	_ZN3wze6engine6render5tokenC2Ev
	.def	_ZN3wze6engine6render5tokenC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render5tokenC2Ev
_ZN3wze6engine6render5tokenC2Ev:
.LFB6893:
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
.LFB6896:
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
.LFB6898:
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
.LFB6899:
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
.LFB6900:
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
.LFB6901:
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
	jbe	.L50
	movl	$1, %ebx
	xorl	%r15d, %r15d
	leaq	128(%rsp), %r12
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L51:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L287
.L176:
	movq	272(%rcx), %rax
	leaq	0(,%rbx,8), %rsi
	movq	(%rax,%rbx,8), %r8
	testq	%r8, %r8
	je	.L51
	cmpb	$0, 168(%r8)
	je	.L51
	cmpq	%rdx, %rbx
	jnb	.L169
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
	jne	.L288
	.p2align 4,,10
	.p2align 3
.L53:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L169
.L52:
	movq	(%rax,%rsi), %r9
	cmpq	24(%r9), %rdi
	jb	.L79
	cmpq	%rdx, %rbx
	jnb	.L169
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L80:
	movq	(%rax,%rsi), %r9
	cmpq	56(%r9), %rdi
	jnb	.L289
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
	cmpq	$0, 80(%r8)
	jne	.L290
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L80
.L169:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
.LEHB0:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L289:
	cmpq	%rdx, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %r9
	movl	$1, %edi
	cmpq	88(%r9), %rdi
	jnb	.L291
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
	movq	88(%r8), %r10
	movq	112(%r8), %r11
	cmpq	104(%r8), %r10
	jnb	.L292
	cmpq	$0, (%r11,%r10,8)
	jne	.L293
	.p2align 4,,10
	.p2align 3
.L108:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L169
.L284:
	movq	(%rax,%rsi), %r9
	cmpq	88(%r9), %rdi
	jb	.L134
.L291:
	cmpq	%rdx, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %r9
	movl	$1, %edi
	cmpq	120(%r9), %rdi
	jnb	.L294
	.p2align 4,,10
	.p2align 3
.L161:
	movq	128(%r9), %r8
	leaq	0(,%rdi,8), %rbp
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L136
	cmpw	$0, 64(%r8)
	je	.L136
	cmpq	$0, 72(%r8)
	je	.L136
	cmpb	$0, 19(%r8)
	je	.L136
	cmpb	$0, 37(%r8)
	je	.L136
	cmpq	$0, 128(%r8)
	jne	.L295
	.p2align 4,,10
	.p2align 3
.L136:
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L169
.L285:
	movq	(%rax,%rsi), %r9
	cmpq	120(%r9), %rdi
	jb	.L161
.L294:
	cmpq	%rdx, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %rax
	movl	$1, %edi
	cmpq	152(%rax), %rdi
	jnb	.L296
	.p2align 4,,10
	.p2align 3
.L170:
	movq	160(%rax), %r8
	movq	(%r8,%rdi,8), %r8
	testq	%r8, %r8
	je	.L163
	cmpb	$0, 18(%r8)
	je	.L163
	movzwl	88(%r8), %r10d
	testw	%r10w, %r10w
	je	.L163
	movzwl	90(%r8), %r9d
	testw	%r9w, %r9w
	je	.L163
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
	je	.L274
	movl	72(%rsp), %edx
	testl	%edx, %edx
	jne	.L164
.L274:
	movq	(%r14), %rcx
	movq	264(%rcx), %rdx
	.p2align 4,,10
	.p2align 3
.L163:
	movq	272(%rcx), %rax
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %rax
	cmpq	152(%rax), %rdi
	jb	.L170
.L296:
	cmpb	$0, 192(%rax)
	je	.L51
	movzwl	290(%rax), %r8d
	testw	%r8w, %r8w
	je	.L51
	movzwl	292(%rax), %r9d
	testw	%r9w, %r9w
	je	.L51
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
	je	.L275
	movl	72(%rsp), %eax
	testl	%eax, %eax
	jne	.L171
.L275:
	movq	(%r14), %rcx
	movq	264(%rcx), %rdx
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L287:
	movq	32(%r14), %rbx
	cmpq	%rbx, %r15
	jb	.L297
.L229:
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
.L164:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%edx, %ecx
	js	.L298
.L166:
	cmpq	%r15, 32(%r14)
	je	.L299
.L167:
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
	jnb	.L280
	movq	(%r14), %rcx
	movq	%rax, (%rdx,%r15,8)
	movq	%r8, %r15
	movq	264(%rcx), %rdx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L295:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%r9), %xmm0
	movsd	272(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L300
	ucomisd	%xmm8, %xmm6
	jp	.L141
	jne	.L141
	addsd	.LC8(%rip), %xmm8
.L141:
	comisd	%xmm6, %xmm8
	jbe	.L136
.L139:
	movq	%r12, 96(%rsp)
	leaq	128(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L306:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L273
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
	js	.L301
.L149:
	cmpq	%r15, 32(%r14)
	je	.L302
.L155:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	movq	272(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L303
	movq	(%rdx,%rsi), %rdx
	movq	128(%rdx), %r9
	cmpq	120(%rdx), %rdi
	jnb	.L304
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
	jnb	.L269
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L147:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L305
.L159:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %rax
	movq	128(%rax), %rcx
	cmpq	120(%rax), %rdi
	jnb	.L281
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
	jne	.L306
.L273:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L297:
	movq	%r15, 32(%r14)
	movq	40(%r14), %rcx
	testq	%r15, %r15
	je	.L179
	leaq	0(,%r15,8), %rdx
	call	realloc
	movq	%rax, 40(%r14)
	testq	%rax, %rax
	jne	.L229
	subq	%r15, %rbx
	movq	%r15, %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rbx, %r8
	call	_Z6printfPKcz
	jmp	.L282
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
	ja	.L307
	ucomisd	%xmm8, %xmm6
	jp	.L58
	jne	.L58
	addsd	.LC8(%rip), %xmm8
.L58:
	comisd	%xmm6, %xmm8
	jbe	.L53
.L56:
	movq	%r12, 96(%rsp)
	leaq	128(%rsp), %r13
	movq	%rdx, %r8
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L313:
	movl	72(%rsp), %r10d
	testl	%r10d, %r10d
	je	.L270
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
	js	.L308
.L66:
	cmpq	%r15, 32(%r14)
	je	.L309
.L72:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	movq	272(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L310
	movq	(%rdx,%rsi), %rdx
	movq	32(%rdx), %r9
	cmpq	24(%rdx), %rdi
	jnb	.L311
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
	jnb	.L269
	movq	%rax, (%r9,%r15,8)
	movq	%rdx, %r15
.L64:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L312
.L77:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L281
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
	jne	.L313
.L270:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L308:
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
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L65:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 104(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L283
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %rcx
	cmpq	264(%rax), %rbx
	jnb	.L169
	movq	(%rcx,%rsi), %rax
	movq	32(%rax), %rcx
	cmpq	24(%rax), %rdi
	jnb	.L281
	movq	88(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L71
	cmpl	%r11d, 28(%rdx)
	jne	.L71
	cmpl	%r10d, 32(%rdx)
	jne	.L71
	cmpl	%r12d, 36(%rdx)
	jne	.L71
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
	jne	.L71
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L312:
	movq	96(%rsp), %r12
	movq	%r8, %rdx
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L309:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L72
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
	ja	.L314
	ucomisd	%xmm8, %xmm6
	jp	.L86
	jne	.L86
	addsd	.LC8(%rip), %xmm8
.L86:
	comisd	%xmm6, %xmm8
	jbe	.L81
.L84:
	leaq	128(%rsp), %r11
	movq	%r12, 96(%rsp)
	movq	%rdx, %r8
	movq	%r11, %r12
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L320:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L271
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r11d
	movd	%xmm0, %r9d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r13d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r15, %r15
	jne	.L93
.L99:
	sarl	%r13d
	movl	%r13d, %eax
	addl	%r11d, %eax
	js	.L315
.L94:
	cmpq	%r15, 32(%r14)
	je	.L316
.L100:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	%rax, %r13
	movq	264(%rcx), %r8
	movq	272(%rcx), %rax
	cmpq	%r8, %rbx
	jnb	.L317
	movq	(%rax,%rsi), %rax
	movq	64(%rax), %rdx
	cmpq	56(%rax), %rdi
	jnb	.L318
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
	jnb	.L269
	movq	%r13, (%rdx,%r15,8)
	movq	%rax, %r15
.L92:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L319
.L104:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L281
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
	jne	.L320
.L271:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L92
.L293:
	movsd	.LC9(%rip), %xmm0
	mulsd	280(%r9), %xmm0
	movsd	272(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L321
	ucomisd	%xmm6, %xmm8
	jp	.L114
	jne	.L114
	addsd	.LC8(%rip), %xmm8
.L114:
	comisd	%xmm6, %xmm8
	jbe	.L108
.L112:
	leaq	128(%rsp), %r11
	movq	%r12, 104(%rsp)
	movq	%rdx, %r8
	movq	%r11, 88(%rsp)
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L327:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L272
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r10d
	movd	%xmm0, %r13d
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r12d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r9d
	testq	%r15, %r15
	jne	.L121
.L127:
	sarl	%r12d
	movl	%r12d, %eax
	addl	%r10d, %eax
	js	.L322
.L122:
	cmpq	%r15, 32(%r14)
	je	.L323
.L128:
	movl	$48, %ecx
	call	_Znwy
	movq	(%r14), %rcx
	movq	%rax, %r13
	movq	264(%rcx), %r8
	movq	272(%rcx), %rax
	cmpq	%r8, %rbx
	jnb	.L324
	movq	(%rax,%rsi), %rax
	movq	96(%rax), %rdx
	cmpq	88(%rax), %rdi
	jnb	.L325
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
	jnb	.L269
	movq	%r13, (%rdx,%r15,8)
	movq	%rax, %r15
.L120:
	addsd	16(%r14), %xmm6
	movq	272(%rcx), %rax
	comisd	%xmm6, %xmm8
	jbe	.L326
.L132:
	leaq	80(%rcx), %rdx
	cmpq	%r8, %rbx
	jnb	.L169
	movq	(%rax,%rsi), %rax
	movq	96(%rax), %rcx
	cmpq	88(%rax), %rdi
	jnb	.L281
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
	jne	.L327
.L272:
	movq	(%r14), %rcx
	movq	264(%rcx), %r8
	jmp	.L120
.L298:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L166
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %edx
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %r11d
	addl	%edx, %r11d
	jns	.L166
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jge	.L166
	jmp	.L274
.L300:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L141
	jne	.L141
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L301:
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
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L148:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 104(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L283
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %rcx
	cmpq	264(%rax), %rbx
	jnb	.L169
	movq	(%rcx,%rsi), %rax
	movq	128(%rax), %rcx
	cmpq	120(%rax), %rdi
	jnb	.L281
	movq	88(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L154
	cmpl	%r11d, 28(%rdx)
	jne	.L154
	cmpl	%r10d, 32(%rdx)
	jne	.L154
	cmpl	%r12d, 36(%rdx)
	jne	.L154
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
	cmpl	40(%rax), %r9d
	jne	.L154
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L315:
	movzwl	10(%r14), %eax
	subl	%r13d, %r11d
	cmpl	%eax, %r11d
	jle	.L94
	sarl	%r9d
	movl	%r9d, %ecx
	addl	%r10d, %ecx
	jns	.L94
	subl	%r9d, %r10d
	cmpl	%r10d, %eax
	jge	.L94
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L305:
	movq	%r8, %rdx
	movq	96(%rsp), %r12
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L285
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L322:
	movzwl	10(%r14), %eax
	subl	%r12d, %r10d
	cmpl	%eax, %r10d
	jle	.L122
	sarl	%r13d
	movl	%r13d, %ecx
	addl	%r9d, %ecx
	jns	.L122
	subl	%r13d, %r9d
	cmpl	%r9d, %eax
	jge	.L122
	jmp	.L272
	.p2align 4,,10
	.p2align 3
.L93:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 104(%rsp)
	movq	%rcx, 64(%rsp)
	cmpq	%rax, %r8
	jnb	.L283
	movq	(%rcx,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 88(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %rcx
	cmpq	264(%rax), %rbx
	jnb	.L169
	movq	(%rcx,%rsi), %rax
	movq	64(%rax), %rcx
	cmpq	56(%rax), %rdi
	jnb	.L281
	movq	88(%rsp), %rax
	cmpq	(%rcx,%rbp), %rax
	jne	.L99
	cmpl	%r11d, 28(%rdx)
	jne	.L99
	cmpl	%r10d, 32(%rdx)
	jne	.L99
	cmpl	%r13d, 36(%rdx)
	jne	.L99
	movq	64(%rsp), %rdx
	movq	104(%rsp), %rcx
	movl	%r9d, 124(%rsp)
	movq	%r8, 88(%rsp)
	movd	%xmm7, 120(%rsp)
	movd	%xmm0, 116(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movl	124(%rsp), %r9d
	movq	88(%rsp), %r8
	movq	(%rax), %rax
	movl	116(%rsp), %r10d
	movl	120(%rsp), %r11d
	cmpl	%r9d, 40(%rax)
	jne	.L99
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L121:
	movq	40(%r14), %rax
	movq	32(%r14), %rcx
	leaq	-1(%r15), %r8
	movq	%rax, 64(%rsp)
	cmpq	%rcx, %r8
	jnb	.L283
	movq	(%rax,%r8,8), %rdx
	movq	(%rdx), %rax
	movq	%rax, 96(%rsp)
	movq	(%r14), %rax
	movq	272(%rax), %r11
	cmpq	264(%rax), %rbx
	jnb	.L169
	movq	(%r11,%rsi), %rax
	movq	96(%rax), %r11
	cmpq	88(%rax), %rdi
	jnb	.L281
	movq	96(%rsp), %rax
	cmpq	(%r11,%rbp), %rax
	jne	.L127
	cmpl	%r10d, 28(%rdx)
	jne	.L127
	cmpl	%r9d, 32(%rdx)
	jne	.L127
	cmpl	%r12d, 36(%rdx)
	jne	.L127
	movq	64(%rsp), %rdx
	movq	%r8, 96(%rsp)
	movd	%xmm7, 120(%rsp)
	movd	%xmm0, 116(%rsp)
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	96(%rsp), %r8
	movl	116(%rsp), %r9d
	movq	(%rax), %rax
	movl	120(%rsp), %r10d
	cmpl	%r13d, 40(%rax)
	jne	.L127
	movq	40(%r14), %rdx
	movq	32(%r14), %rcx
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEEixEy.isra.0
	movq	(%rax), %rax
	movsd	%xmm6, 16(%rax)
	jmp	.L272
	.p2align 4,,10
	.p2align 3
.L302:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L155
.L319:
	movq	%r8, %rdx
	movq	96(%rsp), %r12
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L80
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L307:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L58
	jne	.L58
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L56
.L326:
	movq	%r8, %rdx
	movq	104(%rsp), %r12
	addq	$1, %rdi
	cmpq	%rdx, %rbx
	jb	.L284
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L316:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L100
.L323:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L128
.L50:
	cmpq	$0, 32(%r14)
	je	.L229
	movq	$0, 32(%r14)
	movq	40(%r14), %rcx
.L179:
	call	free
	movq	$0, 40(%r14)
	jmp	.L229
.L314:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L86
	jne	.L86
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L84
.L321:
	movsd	.LC8(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L114
	jne	.L114
	movapd	%xmm8, %xmm6
	movsd	.LC7(%rip), %xmm8
	jmp	.L112
.L299:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L167
.L171:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %esi
	addl	%edx, %esi
	js	.L328
.L173:
	cmpq	%r15, 32(%r14)
	je	.L329
.L174:
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
	jnb	.L280
	movq	(%r14), %rcx
	movq	%rax, (%rdx,%r15,8)
	movq	%r8, %r15
	movq	264(%rcx), %rdx
	jmp	.L51
.L328:
	movzwl	10(%r14), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L173
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %eax
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %edx
	sarl	%edx
	movl	%edx, %esi
	addl	%eax, %esi
	jns	.L173
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L173
	jmp	.L275
.L329:
	movzwl	24(%r14), %eax
	leaq	32(%r14), %rcx
	movq	%r15, %rdx
	leaq	1(%rax), %r8
	call	_ZN3neo5arrayIPN3wze6engine6render5tokenEE6InsertEyy.isra.0
	jmp	.L174
.L281:
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L269:
	movq	%r15, %rdx
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
.L282:
	movl	$1, %ecx
	call	exit
.L304:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	jmp	.L282
.L310:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB2:
	call	_Z6printfPKcz
.LEHE2:
	jmp	.L282
.L303:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB3:
	call	_Z6printfPKcz
.LEHE3:
	jmp	.L282
.L318:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB4:
	call	_Z6printfPKcz
.LEHE4:
	jmp	.L282
.L324:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB5:
	call	_Z6printfPKcz
.LEHE5:
	jmp	.L282
.L283:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
.LEHB6:
	call	_Z6printfPKcz
.LEHE6:
	movl	$1, %ecx
	call	exit
.L325:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB7:
	call	_Z6printfPKcz
.LEHE7:
	jmp	.L282
.L317:
	movq	%rbx, %rdx
	leaq	.LC2(%rip), %rcx
.LEHB8:
	call	_Z6printfPKcz
.LEHE8:
	jmp	.L282
.L292:
	leaq	.LC2(%rip), %rcx
	movq	%r10, %rdx
.LEHB9:
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L280:
	leaq	.LC2(%rip), %rcx
	movq	%r15, %rdx
	call	_Z6printfPKcz
.LEHE9:
	movl	$1, %ecx
	call	exit
.L311:
	movq	%rdi, %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rax, %r13
.LEHB10:
	call	_Z6printfPKcz
.LEHE10:
	jmp	.L282
.L196:
	movq	%rax, %rbx
	jmp	.L185
.L197:
	movq	%rax, %rbx
	jmp	.L185
.L198:
	movq	%rax, %rbx
	jmp	.L185
.L195:
	movq	%rax, %rbx
	jmp	.L185
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6903:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6903-.LLSDACSB6903
.LLSDACSB6903:
	.uleb128 .LEHB0-.LFB6903
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6903
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L198-.LFB6903
	.uleb128 0
	.uleb128 .LEHB2-.LFB6903
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L195-.LFB6903
	.uleb128 0
	.uleb128 .LEHB3-.LFB6903
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L198-.LFB6903
	.uleb128 0
	.uleb128 .LEHB4-.LFB6903
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L196-.LFB6903
	.uleb128 0
	.uleb128 .LEHB5-.LFB6903
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L197-.LFB6903
	.uleb128 0
	.uleb128 .LEHB6-.LFB6903
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB6903
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L197-.LFB6903
	.uleb128 0
	.uleb128 .LEHB8-.LFB6903
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L196-.LFB6903
	.uleb128 0
	.uleb128 .LEHB9-.LFB6903
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB6903
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L195-.LFB6903
	.uleb128 0
.LLSDACSE6903:
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
.L185:
	movq	%r13, %rcx
	movl	$48, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB11:
	call	_Unwind_Resume
	nop
.LEHE11:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6903:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6903-.LLSDACSBC6903
.LLSDACSBC6903:
	.uleb128 .LEHB11-.LCOLDB11
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC6903:
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
.LFB6906:
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
	jb	.L331
	leaq	0(,%r12,8), %rcx
	movq	%r15, %rsi
	call	_Znay
	subq	%r13, %rsi
	movq	%rax, %rdi
	cmpq	%rsi, %rbp
	jb	.L331
	leaq	0(,%rsi,8), %rcx
	call	_Znay
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.L373
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L356:
	movq	%rax, %rdx
.L338:
	cmpq	%rcx, %rdx
	jnb	.L374
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r13
	jne	.L356
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L353
.L334:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L357:
	movq	%rax, %rdx
.L341:
	cmpq	%rcx, %rdx
	jnb	.L375
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L357
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L343
	xorl	%eax, %eax
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L377:
	cmpq	%rcx, %rbx
	jnb	.L376
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L351
.L379:
	cmpq	%rsi, %rdx
	jnb	.L372
.L349:
	movq	0(%rbp,%rdx,8), %r8
	movq	(%rdi,%rax,8), %r9
	movsd	16(%r9), %xmm0
	comisd	16(%r8), %xmm0
	ja	.L377
	cmpq	%rcx, %rbx
	jnb	.L378
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L379
	.p2align 4,,10
	.p2align 3
.L351:
	cmpq	%rsi, %rdx
	jnb	.L335
.L343:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L355:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L380
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L355
.L335:
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
.L353:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L381
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L372:
	cmpq	%r12, %rax
	jb	.L353
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L373:
	testq	%rsi, %rsi
	je	.L335
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L334
.L374:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L380:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L381:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L375:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L376:
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
.L331:
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
.LFB6905:
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
	jbe	.L383
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L383
	.p2align 4,,10
	.p2align 3
.L384:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L386:
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
	jb	.L386
	cmpq	%r13, %rdi
	jb	.L384
.L383:
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
.LFB6908:
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
	jb	.L392
	leaq	0(,%r12,8), %rcx
	movq	%r15, %rsi
	call	_Znay
	subq	%r13, %rsi
	movq	%rax, %rdi
	cmpq	%rsi, %rbp
	jb	.L392
	leaq	0(,%rsi,8), %rcx
	call	_Znay
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.L431
	movq	%rbx, %rax
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	movq	%rbx, %rdx
	negq	%rax
	leaq	(%rdi,%rax,8), %r8
	jmp	.L399
	.p2align 4,,10
	.p2align 3
.L416:
	movq	%rax, %rdx
.L399:
	cmpq	%rcx, %rdx
	jnb	.L432
	movq	(%r10,%rdx,8), %rax
	movq	%rax, (%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%r13, %rdx
	jne	.L416
	xorl	%edx, %edx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L413
.L395:
	leaq	1(%r13), %rdx
	negq	%r13
	leaq	0(%rbp,%r13,8), %r8
	jmp	.L402
	.p2align 4,,10
	.p2align 3
.L417:
	movq	%rax, %rdx
.L402:
	cmpq	%rcx, %rdx
	jnb	.L433
	movq	(%r10,%rdx,8), %rax
	movq	%rax, -8(%r8,%rdx,8)
	leaq	1(%rdx), %rax
	cmpq	%rdx, %r15
	jne	.L417
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.L404
	xorl	%eax, %eax
	jmp	.L409
	.p2align 4,,10
	.p2align 3
.L435:
	cmpq	%rcx, %rbx
	jnb	.L434
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rdx
	addq	$1, %rbx
	cmpq	%r12, %rax
	jnb	.L411
.L437:
	cmpq	%rsi, %rdx
	jnb	.L430
.L409:
	movq	(%rdi,%rax,8), %r9
	movq	0(%rbp,%rdx,8), %r8
	movzbl	24(%r9), %r11d
	cmpb	%r11b, 24(%r8)
	jb	.L435
	cmpq	%rcx, %rbx
	jnb	.L436
	movq	%r9, %r8
	addq	$1, %rax
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%r12, %rax
	jb	.L437
	.p2align 4,,10
	.p2align 3
.L411:
	cmpq	%rsi, %rdx
	jnb	.L396
.L404:
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	subq	%rbx, %rdx
	leaq	0(%rbp,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L415:
	movq	(%rdx,%rbx,8), %rax
	cmpq	%rcx, %rbx
	jnb	.L438
	movq	%rax, (%r10,%rbx,8)
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jne	.L415
.L396:
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
.L413:
	movq	(%rdi,%rax,8), %r8
	cmpq	%rcx, %rbx
	jnb	.L439
	movq	%r8, (%r10,%rbx,8)
	addq	$1, %rax
	addq	$1, %rbx
.L430:
	cmpq	%r12, %rax
	jb	.L413
	jmp	.L411
	.p2align 4,,10
	.p2align 3
.L431:
	testq	%rsi, %rsi
	je	.L396
	movq	32(%r14), %rcx
	movq	40(%r14), %r10
	jmp	.L395
.L432:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L438:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L439:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L433:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L434:
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
.L392:
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
.LFB6907:
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
	jbe	.L441
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L441
	.p2align 4,,10
	.p2align 3
.L442:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L444:
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
	jb	.L444
	cmpq	%r13, %rdi
	jb	.L442
.L441:
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
	movl	$1, %edi
	movq	32(%rcx), %r13
	leaq	-1(%r13), %rsi
	movq	%rcx, %rbp
	cmpq	$1, %r13
	jbe	.L470
	.p2align 4,,10
	.p2align 3
.L450:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L452:
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
	jb	.L452
	cmpq	%r13, %rdi
	jb	.L450
	movq	32(%rbp), %rdx
	cmpq	$1, %rdx
	jbe	.L470
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L461
	.p2align 4,,10
	.p2align 3
.L455:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jnb	.L478
.L467:
	movq	%r12, %rdi
.L461:
	movq	40(%rbp), %rax
	movq	(%rax,%rdi,8), %rcx
	movsd	16(%rcx), %xmm0
	cmpq	%rdx, %r14
	jnb	.L479
	movq	(%rax,%r14,8), %rax
	ucomisd	16(%rax), %xmm0
	jp	.L469
	je	.L455
.L469:
	cmpq	$1, %rdi
	je	.L480
	cmpq	%rsi, %r14
	jnb	.L460
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L459:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L458:
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
	jb	.L458
	cmpq	%rdi, %r12
	jb	.L459
	movq	32(%rbp), %rdx
.L460:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%rdx, %r12
	jb	.L467
.L478:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L470
	.p2align 4,,10
	.p2align 3
.L462:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L464:
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
	jb	.L464
	cmpq	%r12, %rsi
	jb	.L462
.L470:
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
.L480:
	movl	$1, %r14d
	jmp	.L455
.L479:
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
	.ascii "wze::engine.render.RenderColorbox(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.render.RenderColorbox(): SDL_RenderFillRect failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE:
.LFB6910:
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
	jne	.L484
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L485
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L484:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L485:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC16:
	.ascii "wze::engine.render.RenderTexturebox(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.render.RenderTexturebox(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.render.RenderTexturebox(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE:
.LFB6911:
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
	jnb	.L494
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L495
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	23(%rdx), %ecx
	movq	336(%rax), %r8
	movq	80(%rdx), %rdx
	cmpq	328(%rax), %rdx
	jnb	.L494
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L496
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rcx), %xmm0
	movq	336(%rax), %r8
	xorpd	.LC18(%rip), %xmm0
	movq	80(%rcx), %rcx
	cmpq	328(%rax), %rcx
	jnb	.L497
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
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
.L497:
	movq	%rcx, %rdx
.L494:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L498:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L496:
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L495:
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
.LFB6912:
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
	movq	112(%rax), %r11
	movq	(%rcx), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movq	88(%rax), %rdx
	cmpq	104(%rax), %rdx
	jnb	.L511
	movq	(%r11,%rdx,8), %rdx
	movq	336(%rcx), %rax
	cmpq	328(%rcx), %rdx
	jnb	.L511
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L512
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	23(%rax), %r8d
	movq	88(%rax), %rdx
	movq	112(%rax), %r9
	cmpq	104(%rax), %rdx
	jnb	.L511
	movq	(%r9,%rdx,8), %rdx
	movq	336(%rcx), %rax
	cmpq	328(%rcx), %rdx
	jnb	.L511
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L513
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movzbl	%bl, %edx
	leaq	28(%rsi), %r9
	movsd	24(%rax), %xmm0
	movq	88(%rax), %r8
	xorpd	.LC18(%rip), %xmm0
	movq	112(%rax), %r10
	cmpq	104(%rax), %r8
	jnb	.L514
	movq	(%r10,%r8,8), %rax
	movq	336(%rcx), %r8
	cmpq	328(%rcx), %rax
	jnb	.L515
	movq	(%r8,%rax,8), %rax
	movq	16(%rcx), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movq	%rax, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L516
	movl	$48, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L515:
	movq	%rax, %rdx
.L511:
	leaq	.LC2(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L516:
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L514:
	leaq	.LC2(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L513:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L512:
	leaq	.LC20(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "wze::engine.render.RenderTextbox(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.render.RenderTextbox(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.render.RenderTextbox(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE:
.LFB6913:
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
	jne	.L521
	movq	(%rsi), %rax
	movzbl	19(%rax), %edx
	movq	128(%rax), %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L522
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
.L521:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L523:
	leaq	.LC25(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L522:
	leaq	.LC24(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC26:
	.ascii "wze::engine.render.RenderingStage(): SDL_SetRenderDrawColor() failed\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.render.RenderingStage(): SDL_RenderClear() failed\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.render.RenderOverlapbox(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.render.RenderOverlapbox(): SDL_RenderFillRect failed\12\0"
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
.LFB6909:
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
	jne	.L526
	movq	32(%rsi), %rdx
	testq	%rdx, %rdx
	je	.L528
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.L530
	.p2align 4,,10
	.p2align 3
.L569:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	je	.L568
.L530:
	movq	(%rax,%rbx,8), %rcx
	movsd	16(%rcx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L569
	movq	%rbx, %rbp
	cmpq	%rdx, %rbx
	jnb	.L532
.L531:
	leaq	.L535(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L546:
	movq	(%rax,%rbx,8), %rdi
	cmpl	$5, 8(%rdi)
	ja	.L533
	movl	8(%rdi), %eax
	movslq	(%r12,%rax,4), %rax
	addq	%r12, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L535:
	.long	.L540-.L535
	.long	.L539-.L535
	.long	.L538-.L535
	.long	.L537-.L535
	.long	.L536-.L535
	.long	.L534-.L535
	.text
	.p2align 4,,10
	.p2align 3
.L528:
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
.L536:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L556
	movq	(%rsi), %rax
	leaq	28(%rdi), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L557
.L544:
	movl	$48, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	movq	32(%rsi), %rdx
.L533:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jnb	.L545
.L570:
	movq	40(%rsi), %rax
	jmp	.L546
	.p2align 4,,10
	.p2align 3
.L537:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	addq	$1, %rbx
	call	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
	cmpq	%rdx, %rbx
	jb	.L570
	.p2align 4,,10
	.p2align 3
.L545:
	testq	%rbp, %rbp
	je	.L528
	movq	40(%rsi), %rax
.L532:
	xorl	%ebx, %ebx
	leaq	.L550(%rip), %r12
	.p2align 4,,10
	.p2align 3
.L560:
	cmpq	%rdx, %rbx
	jnb	.L571
	movq	(%rax,%rbx,8), %rdi
	cmpl	$5, 8(%rdi)
	ja	.L548
	movl	8(%rdi), %eax
	movslq	(%r12,%rax,4), %rax
	addq	%r12, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L550:
	.long	.L555-.L550
	.long	.L554-.L550
	.long	.L553-.L550
	.long	.L552-.L550
	.long	.L551-.L550
	.long	.L549-.L550
	.text
	.p2align 4,,10
	.p2align 3
.L538:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L539:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L534:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L558
	movq	(%rsi), %rax
	leaq	28(%rdi), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	je	.L544
.L559:
	leaq	.LC31(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L540:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	movq	32(%rsi), %rdx
	jmp	.L533
	.p2align 4,,10
	.p2align 3
.L551:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L556
	movq	(%rsi), %rax
	leaq	28(%rdi), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L557
.L566:
	movl	$48, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L548:
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	je	.L528
	movq	32(%rsi), %rdx
	movq	40(%rsi), %rax
	jmp	.L560
	.p2align 4,,10
	.p2align 3
.L552:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render13RenderTextboxEPNS1_5tokenE
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L553:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render14RenderFlipbookEPNS1_5tokenE
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L554:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render16RenderTextureboxEPNS1_5tokenE
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L549:
	movq	(%rsi), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L558
	movq	(%rsi), %rax
	leaq	28(%rdi), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	je	.L566
	jmp	.L559
	.p2align 4,,10
	.p2align 3
.L555:
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6render14RenderColorboxEPNS1_5tokenE
	jmp	.L548
	.p2align 4,,10
	.p2align 3
.L568:
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	.L531
.L571:
	leaq	.LC2(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L556:
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L557:
	leaq	.LC29(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L558:
	leaq	.LC30(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L526:
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L567:
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
.LFB6902:
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
	.globl	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE
_ZN3wze6engine6render16RenderOverlapboxEPNS1_5tokenE:
.LFB6914:
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
	leaq	.LC28(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L581:
	leaq	.LC29(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
	.def	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE
_ZN3wze6engine6render12RenderHitboxEPNS1_5tokenE:
.LFB6915:
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
	jne	.L589
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L590
	testq	%rbx, %rbx
	je	.L585
	movl	$48, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
.L585:
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L589:
	leaq	.LC30(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L590:
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
