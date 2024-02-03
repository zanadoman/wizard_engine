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
	.ascii "slay::engine.render.RenderHitbox(): SDL_RenderFillRect failed\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0:
.LFB8635:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	.LC0(%rip), %rcx
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
	movq	.LC1(%rip), %rax
	movq	%rax, 16(%rcx)
	movl	$128, %eax
	movq	%rdx, (%rcx)
	movl	$0, 8(%rcx)
	movw	%ax, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	$0, 40(%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine6renderC1EPS0_
	.def	_ZN4slay6engine6renderC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6renderC1EPS0_,_ZN4slay6engine6renderC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6renderD2Ev
	.def	_ZN4slay6engine6renderD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6renderD2Ev
_ZN4slay6engine6renderD2Ev:
.LFB8436:
	.seh_endprologue
	movq	40(%rcx), %rcx
	jmp	free
	.seh_endproc
	.globl	_ZN4slay6engine6renderD1Ev
	.def	_ZN4slay6engine6renderD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6renderD1Ev,_ZN4slay6engine6renderD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render5tokenC2Ev
	.def	_ZN4slay6engine6render5tokenC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render5tokenC2Ev
_ZN4slay6engine6render5tokenC2Ev:
.LFB8439:
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
.LFB8442:
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
.LFB8444:
	.seh_endprologue
	movsd	16(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "slay::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\12Params: SamplingStep: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetSamplingStepEd
	.def	_ZN4slay6engine6render15SetSamplingStepEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render15SetSamplingStepEd
_ZN4slay6engine6render15SetSamplingStepEd:
.LFB8445:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jnb	.L14
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 16(%rcx)
	addq	$40, %rsp
	ret
.L14:
	leaq	.LC3(%rip), %rcx
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
.LFB8446:
	.seh_endprologue
	movzwl	24(%rcx), %eax
	leaq	(%rax,%rax,2), %rax
	shrq	$6, %rax
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render15SetBufferSizeKBEt
	.def	_ZN4slay6engine6render15SetBufferSizeKBEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render15SetBufferSizeKBEt
_ZN4slay6engine6render15SetBufferSizeKBEt:
.LFB8447:
	.seh_endprologue
	movabsq	$-6148914691236517205, %rax
	salq	$10, %rdx
	andl	$67107840, %edx
	mulq	%rdx
	shrq	$5, %rdx
	movl	%edx, %eax
	movw	%dx, 24(%rcx)
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC8:
	.ascii "slay::engine.render.SelectionStage(): Memory allocation failed\12\0"
	.align 8
.LC9:
	.ascii "slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed\12\0"
	.align 8
.LC10:
	.ascii "slay::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14SelectionStageEv
	.def	_ZN4slay6engine6render14SelectionStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14SelectionStageEv
_ZN4slay6engine6render14SelectionStageEv:
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
	movq	%rcx, %r14
	cmpq	$1, %rdx
	jbe	.L18
	movl	$1, %r12d
	xorl	%r13d, %r13d
	leaq	112(%rsp), %r15
	movl	%edi, %ebp
	movq	%rcx, 272(%rsp)
	movq	%r13, %r14
	movq	%r12, %r13
	movq	%rcx, %r12
	movsd	.LC7(%rip), %xmm9
	.p2align 4,,10
	.p2align 3
.L146:
	movq	544(%rax), %rcx
	leaq	0(,%r13,8), %rbx
	cmpq	$0, (%rcx,%r13,8)
	je	.L19
	cmpq	%rdx, %r13
	jnb	.L250
	movq	%r15, %rdi
	movl	$1, %esi
	movq	%r13, %r15
	movq	%rdi, %r13
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L46:
	movq	32(%r9), %r8
	leaq	0(,%rsi,8), %rdi
	movq	(%r8,%rsi,8), %r8
	testq	%r8, %r8
	je	.L21
	cmpw	$0, 16(%r8)
	je	.L21
	cmpw	$0, 18(%r8)
	je	.L21
	cmpb	$0, 23(%r8)
	je	.L21
	cmpb	$0, 26(%r8)
	jne	.L258
	.p2align 4,,10
	.p2align 3
.L21:
	addq	$1, %rsi
	cmpq	%rdx, %r15
	jnb	.L249
.L20:
	movq	(%rcx,%rbx), %r9
	cmpq	24(%r9), %rsi
	jb	.L46
	movq	%r13, %rdi
	movq	%r15, %r13
	movq	%rdi, %r15
	cmpq	%rdx, %r13
	jnb	.L250
	movl	$1, %esi
	movl	%ebp, %r10d
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L72:
	movq	64(%r9), %r8
	leaq	0(,%rsi,8), %rdi
	movq	(%r8,%rsi,8), %r8
	testq	%r8, %r8
	je	.L48
	cmpw	$0, 16(%r8)
	je	.L48
	cmpw	$0, 18(%r8)
	je	.L48
	cmpb	$0, 23(%r8)
	je	.L48
	cmpb	$0, 37(%r8)
	je	.L48
	cmpq	$0, 72(%r8)
	jne	.L259
	.p2align 4,,10
	.p2align 3
.L48:
	addq	$1, %rsi
	cmpq	%rdx, %r13
	jnb	.L250
.L47:
	movq	(%rcx,%rbx), %r9
	cmpq	56(%r9), %rsi
	jb	.L72
	cmpq	%rdx, %r13
	jnb	.L250
	movl	$1, %esi
	movl	%r10d, %r11d
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L98:
	movq	96(%r9), %r8
	leaq	0(,%rsi,8), %rdi
	movq	(%r8,%rsi,8), %r8
	testq	%r8, %r8
	je	.L74
	cmpw	$0, 16(%r8)
	je	.L74
	cmpw	$0, 18(%r8)
	je	.L74
	cmpb	$0, 23(%r8)
	je	.L74
	cmpb	$0, 37(%r8)
	je	.L74
	movq	80(%r8), %r10
	movq	104(%r8), %r8
	cmpq	$0, (%r8,%r10,8)
	jne	.L260
	.p2align 4,,10
	.p2align 3
.L74:
	addq	$1, %rsi
	cmpq	%rdx, %r13
	jnb	.L250
.L73:
	movq	(%rcx,%rbx), %r9
	cmpq	88(%r9), %rsi
	jb	.L98
	movl	%r11d, %ebp
	cmpq	%rdx, %r13
	jnb	.L250
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %r14
	.p2align 4,,10
	.p2align 3
.L99:
	movq	(%rcx,%rbx), %rcx
	cmpq	120(%rcx), %rsi
	jnb	.L261
.L138:
	movq	128(%rcx), %rcx
	leaq	0(,%rsi,8), %r15
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L262
	addq	$80, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jbe	.L101
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %r8
	movq	128(%r8), %r9
	cmpq	120(%r8), %rsi
	jnb	.L248
	movq	(%r9,%r15), %r9
	cmpw	$0, 16(%r9)
	jne	.L263
.L105:
	movq	(%rcx,%rbx), %rcx
	addq	$1, %rsi
	cmpq	120(%rcx), %rsi
	jb	.L138
	.p2align 4,,10
	.p2align 3
.L261:
	cmpb	$0, 136(%rcx)
	movq	%r14, %r15
	movq	%rdi, %r14
	jne	.L264
.L19:
	addq	$1, %r13
	cmpq	%rdx, %r13
	jb	.L146
	movq	32(%r12), %rax
	movq	%r14, %r13
	movq	%r12, %r14
	cmpq	%rax, %r13
	jb	.L149
.L147:
	testq	%rax, %rax
	je	.L150
.L190:
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
.L262:
	movq	544(%rax), %rcx
.L101:
	addq	$1, %rsi
	cmpq	%rdx, %r13
	jb	.L99
.L250:
	movq	%r13, %r12
.L247:
	leaq	.LC6(%rip), %rcx
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L263:
	cmpb	$0, 21(%r9)
	je	.L105
	cmpb	$0, 37(%r9)
	je	.L105
	cmpq	$0, 96(%r9)
	je	.L105
	cmpq	$0, 104(%r9)
	je	.L265
.L106:
	movsd	192(%r8), %xmm0
	movsd	184(%r8), %xmm8
	mulsd	%xmm9, %xmm0
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L266
	ucomisd	%xmm8, %xmm6
	jp	.L119
	jne	.L119
	addsd	.LC5(%rip), %xmm8
.L119:
	comisd	%xmm6, %xmm8
	jbe	.L101
	movl	%ebp, 100(%rsp)
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L270:
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r9d
	movd	%xmm0, 64(%rsp)
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r8d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%rdi, %rdi
	jne	.L267
.L124:
	sarl	%r8d
	movl	%r8d, %eax
	addl	%r9d, %eax
	js	.L268
.L128:
	cmpq	%rdi, 32(%r12)
	je	.L131
.L134:
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rsi
	jnb	.L248
	movq	(%r8,%r15), %r8
	leaq	(%rdi,%rdi,2), %rcx
	addq	$1, %rdi
	salq	$4, %rcx
	addq	40(%r12), %rcx
	movzbl	36(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$3, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm7, 28(%rcx)
	movq	544(%rax), %rcx
.L130:
	addsd	16(%r12), %xmm6
	comisd	%xmm6, %xmm8
	jbe	.L269
.L136:
	addq	$80, %rax
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rsi
	jnb	.L248
	movq	(%rcx,%r15), %rdx
	movsd	48(%rdx), %xmm3
	movsd	40(%rdx), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	16(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	56(%rdx), %edx
	movq	%r14, %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm1
	movaps	%xmm1, 64(%rsp)
	movl	72(%rsp), %edx
	movdqa	64(%rsp), %xmm7
	testl	%edx, %edx
	je	.L123
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L270
.L123:
	addsd	16(%r12), %xmm6
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	ja	.L136
.L269:
	movl	100(%rsp), %ebp
	addq	$1, %rsi
	cmpq	%rdx, %r13
	jb	.L99
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L268:
	movzwl	10(%r12), %edx
	subl	%r8d, %r9d
	cmpl	%edx, %r9d
	jle	.L128
	movl	64(%rsp), %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%r10d, %ecx
	jns	.L128
	movl	%r10d, %ecx
	subl	%eax, %ecx
	cmpl	%ecx, %edx
	jl	.L123
	cmpq	%rdi, 32(%r12)
	jne	.L134
	.p2align 4,,10
	.p2align 3
.L131:
	movzwl	24(%r12), %eax
	movq	40(%r12), %rcx
	leaq	1(%rdi,%rax), %rax
	movq	%rax, 32(%r12)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%r12)
	testq	%rax, %rax
	jne	.L134
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L267:
	movq	40(%r12), %rdx
	leaq	(%rdi,%rdi,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 88(%rsp)
	movq	(%rax), %rbp
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %r11
	movq	128(%r11), %r11
	movq	%r11, 80(%rsp)
	movq	(%rcx,%rbx), %r11
	cmpq	120(%r11), %rsi
	jnb	.L248
	movq	80(%rsp), %r11
	cmpq	(%r11,%r15), %rbp
	jne	.L124
	movq	88(%rsp), %r11
	cmpl	%r9d, 28(%r11)
	jne	.L124
	cmpl	%r10d, 32(%r11)
	jne	.L124
	cmpl	%r8d, 36(%r11)
	jne	.L124
	movl	64(%rsp), %ebp
	cmpl	%ebp, 40(%r11)
	jne	.L124
	movsd	%xmm6, 16(%r11)
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L258:
	movsd	.LC7(%rip), %xmm0
	mulsd	192(%r9), %xmm0
	movsd	184(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L271
	ucomisd	%xmm8, %xmm6
	jp	.L26
	jne	.L26
	addsd	.LC5(%rip), %xmm8
.L26:
	comisd	%xmm6, %xmm8
	jbe	.L21
	movl	%ebp, 100(%rsp)
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L275:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L30
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r9d
	movd	%xmm0, 64(%rsp)
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r8d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r14, %r14
	jne	.L272
.L31:
	sarl	%r8d
	movl	%r8d, %eax
	addl	%r9d, %eax
	js	.L273
.L35:
	cmpq	%r14, 32(%r12)
	je	.L38
.L42:
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r15
	jnb	.L249
	movq	(%rcx,%rbx), %rcx
	movq	32(%rcx), %r8
	cmpq	24(%rcx), %rsi
	jnb	.L248
	movq	(%r8,%rdi), %r8
	leaq	(%r14,%r14,2), %rcx
	addq	$1, %r14
	salq	$4, %rcx
	addq	40(%r12), %rcx
	movzbl	25(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$0, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm7, 28(%rcx)
	movq	544(%rax), %rcx
.L37:
	addsd	16(%r12), %xmm6
	comisd	%xmm6, %xmm8
	jbe	.L274
.L44:
	addq	$80, %rax
	cmpq	%rdx, %r15
	jnb	.L249
	movq	(%rcx,%rbx), %rdx
	movq	32(%rdx), %rcx
	cmpq	24(%rdx), %rsi
	jnb	.L248
	movq	(%rcx,%rdi), %rdx
	movsd	40(%rdx), %xmm3
	movsd	32(%rdx), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rdx), %edx
	movq	%r13, %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm4
	movaps	%xmm4, 64(%rsp)
	movl	72(%rsp), %r9d
	movdqa	64(%rsp), %xmm7
	testl	%r9d, %r9d
	jne	.L275
.L30:
	addsd	16(%r12), %xmm6
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	ja	.L44
.L274:
	movl	100(%rsp), %ebp
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L273:
	movzwl	10(%r12), %edx
	subl	%r8d, %r9d
	cmpl	%edx, %r9d
	jle	.L35
	movl	64(%rsp), %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%r10d, %ecx
	jns	.L35
	movl	%r10d, %ecx
	subl	%eax, %ecx
	cmpl	%ecx, %edx
	jl	.L30
	cmpq	%r14, 32(%r12)
	jne	.L42
	.p2align 4,,10
	.p2align 3
.L38:
	movzwl	24(%r12), %eax
	movq	40(%r12), %rcx
	leaq	1(%r14,%rax), %rax
	movq	%rax, 32(%r12)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%r12)
	testq	%rax, %rax
	jne	.L42
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L272:
	movq	40(%r12), %rdx
	leaq	(%r14,%r14,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 88(%rsp)
	movq	(%rax), %rbp
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r15
	jnb	.L249
	movq	(%rcx,%rbx), %r11
	movq	32(%r11), %r11
	movq	%r11, 80(%rsp)
	movq	(%rcx,%rbx), %r11
	cmpq	24(%r11), %rsi
	jnb	.L248
	movq	80(%rsp), %r11
	cmpq	(%r11,%rdi), %rbp
	jne	.L31
	movq	88(%rsp), %r11
	cmpl	%r9d, 28(%r11)
	jne	.L31
	cmpl	%r10d, 32(%r11)
	jne	.L31
	cmpl	%r8d, 36(%r11)
	jne	.L31
	movl	64(%rsp), %ebp
	cmpl	%ebp, 40(%r11)
	jne	.L31
	movsd	%xmm6, 16(%r11)
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L266:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L119
	jne	.L119
	movapd	%xmm8, %xmm6
	movl	%ebp, 100(%rsp)
	movsd	.LC4(%rip), %xmm8
	jmp	.L136
.L264:
	movzwl	200(%rcx), %r8d
	testw	%r8w, %r8w
	je	.L19
	movzwl	202(%rcx), %r9d
	testw	%r9w, %r9w
	je	.L19
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
	je	.L246
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L139
.L246:
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	jmp	.L19
.L265:
	leaq	80(%r9), %rcx
	movb	$-1, %bpl
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	(%r12), %rax
	movq	544(%rax), %rcx
	cmpq	536(%rax), %r13
	jnb	.L250
	movq	(%rcx,%rbx), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rsi
	jnb	.L248
	movq	(%r8,%r15), %rcx
	movq	608(%rax), %r8
	movq	96(%rcx), %rcx
	cmpq	600(%rax), %rcx
	jnb	.L276
	movq	(%r8,%rcx,8), %rcx
	orl	$-256, %ebp
	movl	%ebp, %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %r8
	testq	%rax, %rax
	je	.L277
	movq	(%r12), %rax
	movq	%r8, %rdx
	movq	%r8, 64(%rsp)
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	(%r12), %rdx
	movq	64(%rsp), %r8
	cmpq	536(%rdx), %r13
	movq	544(%rdx), %rcx
	jnb	.L250
	movq	(%rcx,%rbx), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rsi
	jnb	.L248
	movq	(%rcx,%r15), %rcx
	movq	%rax, 104(%rcx)
	testq	%rax, %rax
	je	.L278
	movzwl	16(%rcx), %eax
	imull	16(%r8), %eax
	cltd
	idivl	20(%r8)
	movw	%ax, 56(%rcx)
	movq	%r8, %rcx
	call	SDL_FreeSurface
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %r8
	jmp	.L106
.L259:
	movsd	.LC7(%rip), %xmm0
	mulsd	192(%r9), %xmm0
	movsd	184(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L279
	ucomisd	%xmm8, %xmm6
	jp	.L53
	jne	.L53
	addsd	.LC5(%rip), %xmm8
.L53:
	comisd	%xmm6, %xmm8
	jbe	.L48
.L51:
	movl	%r10d, 100(%rsp)
	leaq	112(%rsp), %rbp
	movq	%r15, 104(%rsp)
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L283:
	movq	72(%rsp), %rax
	sarq	$32, %rax
	testl	%eax, %eax
	je	.L57
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r9d
	movd	%xmm0, 64(%rsp)
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r8d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r14, %r14
	jne	.L280
.L58:
	sarl	%r8d
	movl	%r8d, %eax
	addl	%r9d, %eax
	js	.L281
.L62:
	cmpq	%r14, 32(%r12)
	je	.L65
.L68:
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %rcx
	movq	64(%rcx), %r8
	cmpq	56(%rcx), %rsi
	jnb	.L248
	movq	(%r8,%rdi), %r8
	leaq	(%r14,%r14,2), %rcx
	addq	$1, %r14
	salq	$4, %rcx
	addq	40(%r12), %rcx
	movzbl	36(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$1, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm7, 28(%rcx)
	movq	544(%rax), %rcx
.L64:
	addsd	16(%r12), %xmm6
	comisd	%xmm6, %xmm8
	jbe	.L282
.L70:
	addq	$80, %rax
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %rdx
	movq	64(%rdx), %rcx
	cmpq	56(%rdx), %rsi
	jnb	.L248
	movq	(%rcx,%rdi), %rdx
	movsd	48(%rdx), %xmm3
	movsd	40(%rdx), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rdx), %edx
	movq	%rbp, %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movl	72(%rsp), %r8d
	movdqa	64(%rsp), %xmm7
	testl	%r8d, %r8d
	jne	.L283
.L57:
	addsd	16(%r12), %xmm6
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	ja	.L70
.L282:
	movl	100(%rsp), %r10d
	movq	104(%rsp), %r15
	jmp	.L48
.L260:
	movsd	.LC7(%rip), %xmm0
	mulsd	192(%r9), %xmm0
	movsd	184(%r9), %xmm8
	movapd	%xmm8, %xmm6
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm8
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	ja	.L284
	ucomisd	%xmm8, %xmm6
	jp	.L79
	jne	.L79
	addsd	.LC5(%rip), %xmm8
.L79:
	comisd	%xmm6, %xmm8
	jbe	.L74
.L77:
	movl	%r11d, 100(%rsp)
	leaq	112(%rsp), %rbp
	movq	%r15, 104(%rsp)
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L288:
	movl	72(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L83
	pshufd	$255, %xmm7, %xmm0
	movd	%xmm7, %r9d
	movd	%xmm0, 64(%rsp)
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm7, %xmm0
	movd	%xmm0, %r8d
	pshufd	$85, %xmm7, %xmm0
	movd	%xmm0, %r10d
	testq	%r14, %r14
	jne	.L285
.L84:
	sarl	%r8d
	movl	%r8d, %eax
	addl	%r9d, %eax
	js	.L286
.L88:
	cmpq	%r14, 32(%r12)
	je	.L91
.L94:
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %rcx
	movq	96(%rcx), %r8
	cmpq	88(%rcx), %rsi
	jnb	.L248
	movq	(%r8,%rdi), %r8
	leaq	(%r14,%r14,2), %rcx
	addq	$1, %r14
	salq	$4, %rcx
	addq	40(%r12), %rcx
	movzbl	36(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$2, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm7, 28(%rcx)
	movq	544(%rax), %rcx
.L90:
	addsd	16(%r12), %xmm6
	comisd	%xmm6, %xmm8
	jbe	.L287
.L96:
	addq	$80, %rax
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %rdx
	movq	96(%rdx), %rcx
	cmpq	88(%rdx), %rsi
	jnb	.L248
	movq	(%rcx,%rdi), %rdx
	movsd	48(%rdx), %xmm3
	movsd	40(%rdx), %xmm2
	movsd	%xmm6, 48(%rsp)
	movzwl	18(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	16(%rdx), %edx
	movq	%rbp, %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	112(%rsp), %xmm5
	movaps	%xmm5, 64(%rsp)
	movq	72(%rsp), %rax
	movdqa	64(%rsp), %xmm7
	sarq	$32, %rax
	testl	%eax, %eax
	jne	.L288
.L83:
	addsd	16(%r12), %xmm6
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm8
	ja	.L96
.L287:
	movl	100(%rsp), %r11d
	movq	104(%rsp), %r15
	jmp	.L74
.L271:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L26
	jne	.L26
	movapd	%xmm8, %xmm6
	movl	%ebp, 100(%rsp)
	movsd	.LC4(%rip), %xmm8
	jmp	.L44
.L279:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L53
	jne	.L53
	movapd	%xmm8, %xmm6
	movsd	.LC4(%rip), %xmm8
	jmp	.L51
.L284:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm8
	jp	.L79
	jne	.L79
	movapd	%xmm8, %xmm6
	movsd	.LC4(%rip), %xmm8
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L281:
	movzwl	10(%r12), %eax
	subl	%r8d, %r9d
	cmpl	%eax, %r9d
	jle	.L62
	movl	64(%rsp), %edx
	sarl	%edx
	movl	%edx, %ecx
	addl	%r10d, %ecx
	jns	.L62
	movl	%r10d, %ecx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	.L57
	cmpq	%r14, 32(%r12)
	jne	.L68
	.p2align 4,,10
	.p2align 3
.L65:
	movzwl	24(%r12), %eax
	movq	40(%r12), %rcx
	leaq	1(%r14,%rax), %rax
	movq	%rax, 32(%r12)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%r12)
	testq	%rax, %rax
	jne	.L68
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L286:
	movzwl	10(%r12), %eax
	subl	%r8d, %r9d
	cmpl	%eax, %r9d
	jle	.L88
	movl	64(%rsp), %edx
	sarl	%edx
	movl	%edx, %ecx
	addl	%r10d, %ecx
	jns	.L88
	movl	%r10d, %ecx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	.L83
	cmpq	%r14, 32(%r12)
	jne	.L94
	.p2align 4,,10
	.p2align 3
.L91:
	movzwl	24(%r12), %eax
	movq	40(%r12), %rcx
	leaq	1(%r14,%rax), %rax
	movq	%rax, 32(%r12)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%r12)
	testq	%rax, %rax
	jne	.L94
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L280:
	movq	40(%r12), %rdx
	leaq	(%r14,%r14,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 88(%rsp)
	movq	(%rax), %r15
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %r11
	movq	64(%r11), %r11
	movq	%r11, 80(%rsp)
	movq	(%rcx,%rbx), %r11
	cmpq	56(%r11), %rsi
	jnb	.L248
	movq	80(%rsp), %r11
	cmpq	(%r11,%rdi), %r15
	jne	.L58
	movq	88(%rsp), %r11
	cmpl	%r9d, 28(%r11)
	jne	.L58
	cmpl	%r10d, 32(%r11)
	jne	.L58
	cmpl	36(%r11), %r8d
	jne	.L58
	movl	64(%rsp), %r15d
	cmpl	%r15d, 40(%r11)
	jne	.L58
	movsd	%xmm6, 16(%r11)
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L285:
	movq	40(%r12), %rdx
	leaq	(%r14,%r14,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 88(%rsp)
	movq	(%rax), %r15
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %r11
	movq	96(%r11), %r11
	movq	%r11, 80(%rsp)
	movq	(%rcx,%rbx), %r11
	cmpq	88(%r11), %rsi
	jnb	.L248
	movq	80(%rsp), %r11
	cmpq	(%r11,%rdi), %r15
	jne	.L84
	movq	88(%rsp), %r11
	cmpl	%r9d, 28(%r11)
	jne	.L84
	cmpl	%r10d, 32(%r11)
	jne	.L84
	cmpl	%r8d, 36(%r11)
	jne	.L84
	movl	64(%rsp), %r15d
	cmpl	%r15d, 40(%r11)
	jne	.L84
	movsd	%xmm6, 16(%r11)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L248:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L150:
	movq	$0, 40(%r14)
	jmp	.L190
.L139:
	movdqa	%xmm6, %xmm0
	movd	%xmm6, %edx
	punpckhdq	%xmm6, %xmm0
	movd	%xmm0, %eax
	sarl	%eax
	movl	%eax, %edi
	addl	%edx, %edi
	js	.L289
.L141:
	cmpq	%r14, 32(%r12)
	je	.L142
.L145:
	movq	(%r12), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %r13
	jnb	.L250
	movq	(%rcx,%rbx), %r8
	leaq	(%r14,%r14,2), %rcx
	addq	$1, %r14
	salq	$4, %rcx
	addq	40(%r12), %rcx
	movq	%r8, (%rcx)
	movl	$4, 8(%rcx)
	movq	$0x000000000, 16(%rcx)
	movb	$-1, 24(%rcx)
	movups	%xmm6, 28(%rcx)
	jmp	.L19
.L18:
	cmpq	$0, 32(%rcx)
	je	.L150
	xorl	%r13d, %r13d
.L149:
	movq	%r13, 32(%r14)
	movq	40(%r14), %rcx
	leaq	0(%r13,%r13,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%r14)
	testq	%rax, %rax
	je	.L41
	movq	32(%r14), %rax
	jmp	.L147
.L249:
	movq	%r15, %r12
	jmp	.L247
.L142:
	movzwl	24(%r12), %eax
	movq	40(%r12), %rcx
	leaq	1(%r14,%rax), %rax
	movq	%rax, 32(%r12)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%r12)
	testq	%rax, %rax
	jne	.L145
.L41:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L289:
	movzwl	10(%r12), %ecx
	subl	%eax, %edx
	cmpl	%ecx, %edx
	jle	.L141
	pshufd	$85, %xmm6, %xmm0
	movd	%xmm0, %eax
	pshufd	$255, %xmm6, %xmm0
	movd	%xmm0, %edx
	sarl	%edx
	movl	%edx, %edi
	addl	%eax, %edi
	jns	.L141
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.L141
	jmp	.L246
.L277:
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L276:
	movq	%rcx, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L278:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "slay::engine.render.OrderByLayerMerge(): Memory allocation failed\12Params: Left: %llu, Middle: %lld, Right: %lld\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render17OrderByLayerMergeEyyy
	.def	_ZN4slay6engine6render17OrderByLayerMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render17OrderByLayerMergeEyyy
_ZN4slay6engine6render17OrderByLayerMergeEyyy:
.LFB8452:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, %rbx
	movq	%rcx, 128(%rsp)
	movq	%rdx, %rbp
	movq	%r8, %r14
	subq	%rdx, %rbx
	movq	%r9, 152(%rsp)
	leaq	1(%rbx), %r12
	leaq	(%r12,%r12,2), %r10
	movq	%r10, %r15
	salq	$4, %r15
	movq	%r15, %rcx
	call	malloc
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L292
	movq	152(%rsp), %r13
	subq	%r14, %r13
	leaq	0(%r13,%r13,2), %rcx
	salq	$4, %rcx
	movq	%rcx, 40(%rsp)
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L292
	testq	%r12, %r12
	movq	40(%rsp), %rcx
	je	.L329
	movq	128(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	leaq	(%rax,%rbp), %r11
	salq	$4, %r11
	addq	%r9, %r11
	.p2align 4,,10
	.p2align 3
.L297:
	movdqu	(%r11,%rdx), %xmm1
	movdqu	16(%r11,%rdx), %xmm2
	movdqu	28(%r11,%rdx), %xmm3
	movups	%xmm2, 16(%rsi,%rdx)
	movups	%xmm1, (%rsi,%rdx)
	movups	%xmm3, 28(%rsi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r15
	jne	.L297
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	testq	%r13, %r13
	je	.L296
.L294:
	leaq	(%r14,%r14,2), %r8
	xorl	%edx, %edx
	salq	$4, %r8
	addq	%r9, %r8
	.p2align 4,,10
	.p2align 3
.L299:
	movdqu	48(%r8,%rdx), %xmm4
	movdqu	64(%r8,%rdx), %xmm5
	movdqu	76(%r8,%rdx), %xmm0
	movups	%xmm5, 16(%rdi,%rdx)
	movups	%xmm4, (%rdi,%rdx)
	movups	%xmm0, 28(%rdi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rcx
	jne	.L299
	testq	%r12, %r12
	je	.L310
	addq	%rbp, %rax
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	salq	$4, %rax
	addq	%r9, %rax
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L331:
	movdqu	(%rcx), %xmm1
	addq	$1, %r10
	addq	$1, %rbp
	addq	$48, %rax
	movdqu	16(%rcx), %xmm2
	movdqu	28(%rcx), %xmm3
	movups	%xmm1, -48(%rax)
	movups	%xmm2, -32(%rax)
	movups	%xmm3, -20(%rax)
	cmpq	%r12, %r8
	jnb	.L307
.L332:
	cmpq	%r13, %r10
	jnb	.L330
.L305:
	leaq	(%r10,%r10,2), %rcx
	leaq	(%r8,%r8,2), %rdx
	salq	$4, %rcx
	salq	$4, %rdx
	addq	%rsi, %rdx
	addq	%rdi, %rcx
	movsd	16(%rdx), %xmm0
	comisd	16(%rcx), %xmm0
	ja	.L331
	movdqu	(%rdx), %xmm4
	addq	$1, %r8
	addq	$1, %rbp
	addq	$48, %rax
	movdqu	16(%rdx), %xmm5
	movdqu	28(%rdx), %xmm1
	movups	%xmm4, -48(%rax)
	movups	%xmm5, -32(%rax)
	movups	%xmm1, -20(%rax)
	cmpq	%r12, %r8
	jb	.L332
	.p2align 4,,10
	.p2align 3
.L307:
	cmpq	%r13, %r10
	jnb	.L295
	leaq	(%rbp,%rbp), %rax
.L301:
	subq	%r10, %r13
	leaq	(%r10,%r10,2), %rdx
	addq	%rbp, %rax
	salq	$4, %rax
	leaq	0(%r13,%r13,2), %rcx
	salq	$4, %rdx
	addq	%rax, %r9
	salq	$4, %rcx
	addq	%rdi, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L309:
	movdqu	(%rdx,%rax), %xmm4
	movdqu	16(%rdx,%rax), %xmm5
	movdqu	28(%rdx,%rax), %xmm0
	movups	%xmm5, 16(%r9,%rax)
	movups	%xmm4, (%r9,%rax)
	movups	%xmm0, 28(%r9,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L309
.L295:
	movq	%rsi, %rcx
	call	free
	movq	%rdi, %rcx
	call	free
	xorl	%eax, %eax
	addq	$56, %rsp
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
.L330:
	cmpq	%r12, %r8
	jnb	.L307
	leaq	(%rbp,%rbp), %rax
.L296:
	leaq	(%r8,%r8,2), %rcx
	addq	%rbp, %rax
	movq	%r8, %r11
	salq	$4, %rax
	salq	$4, %rcx
	leaq	(%r9,%rax), %rdx
	addq	%rsi, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L308:
	movdqu	(%rcx,%rax), %xmm1
	movdqu	16(%rcx,%rax), %xmm2
	addq	$1, %r11
	movdqu	28(%rcx,%rax), %xmm3
	movups	%xmm2, 16(%rdx,%rax)
	movups	%xmm1, (%rdx,%rax)
	movups	%xmm3, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r12, %r11
	jb	.L308
	subq	%r8, %rbx
	addq	$1, %r8
	xorl	%eax, %eax
	cmpq	%r8, %r12
	cmovb	%rax, %rbx
	leaq	1(%rbp,%rbx), %rbp
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L329:
	testq	%r13, %r13
	je	.L295
	movq	128(%rsp), %rax
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	jmp	.L294
.L310:
	xorl	%r10d, %r10d
	jmp	.L301
.L292:
	movq	152(%rsp), %r9
	leaq	.LC11(%rip), %rcx
	movq	%r14, %r8
	movq	%rbp, %rdx
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
.LFB8451:
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
	jbe	.L334
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L334
	.p2align 4,,10
	.p2align 3
.L335:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L337:
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
	jb	.L337
	cmpq	%r13, %rdi
	jb	.L335
.L334:
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
.LC12:
	.ascii "slay::engine.render.OrderByPriorityMerge(): Memory allocation failed\12Params: Left: %llu, Middle: %lld, Right: %lld\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
	.def	_ZN4slay6engine6render20OrderByPriorityMergeEyyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
_ZN4slay6engine6render20OrderByPriorityMergeEyyy:
.LFB8454:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%r8, %rbx
	movq	%rcx, 128(%rsp)
	movq	%rdx, %rbp
	movq	%r8, %r14
	subq	%rdx, %rbx
	movq	%r9, 152(%rsp)
	leaq	1(%rbx), %r12
	leaq	(%r12,%r12,2), %r10
	movq	%r10, %r15
	salq	$4, %r15
	movq	%r15, %rcx
	call	malloc
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L344
	movq	152(%rsp), %r13
	subq	%r14, %r13
	leaq	0(%r13,%r13,2), %rcx
	salq	$4, %rcx
	movq	%rcx, 40(%rsp)
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L344
	testq	%r12, %r12
	movq	40(%rsp), %rcx
	je	.L378
	movq	128(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	leaq	(%rax,%rbp), %r11
	salq	$4, %r11
	addq	%r9, %r11
	.p2align 4,,10
	.p2align 3
.L349:
	movdqu	(%r11,%rdx), %xmm0
	movdqu	16(%r11,%rdx), %xmm1
	movdqu	28(%r11,%rdx), %xmm2
	movups	%xmm1, 16(%rsi,%rdx)
	movups	%xmm0, (%rsi,%rdx)
	movups	%xmm2, 28(%rsi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r15
	jne	.L349
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	testq	%r13, %r13
	je	.L348
.L346:
	leaq	(%r14,%r14,2), %r8
	xorl	%edx, %edx
	salq	$4, %r8
	addq	%r9, %r8
	.p2align 4,,10
	.p2align 3
.L351:
	movdqu	48(%r8,%rdx), %xmm3
	movdqu	64(%r8,%rdx), %xmm4
	movdqu	76(%r8,%rdx), %xmm5
	movups	%xmm4, 16(%rdi,%rdx)
	movups	%xmm3, (%rdi,%rdx)
	movups	%xmm5, 28(%rdi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rcx
	jne	.L351
	testq	%r12, %r12
	je	.L361
	addq	%rbp, %rax
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	salq	$4, %rax
	addq	%r9, %rax
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L380:
	movdqu	(%rcx), %xmm0
	addq	$1, %r10
	addq	$1, %rbp
	addq	$48, %rax
	movdqu	16(%rcx), %xmm1
	movdqu	28(%rcx), %xmm2
	movups	%xmm0, -48(%rax)
	movups	%xmm1, -32(%rax)
	movups	%xmm2, -20(%rax)
	cmpq	%r12, %r8
	jnb	.L358
.L381:
	cmpq	%r13, %r10
	jnb	.L379
.L356:
	leaq	(%r10,%r10,2), %rcx
	leaq	(%r8,%r8,2), %rdx
	salq	$4, %rcx
	salq	$4, %rdx
	addq	%rsi, %rdx
	addq	%rdi, %rcx
	movzbl	24(%rdx), %r14d
	cmpb	%r14b, 24(%rcx)
	jb	.L380
	movdqu	(%rdx), %xmm3
	addq	$1, %r8
	addq	$1, %rbp
	addq	$48, %rax
	movdqu	16(%rdx), %xmm4
	movdqu	28(%rdx), %xmm5
	movups	%xmm3, -48(%rax)
	movups	%xmm4, -32(%rax)
	movups	%xmm5, -20(%rax)
	cmpq	%r12, %r8
	jb	.L381
	.p2align 4,,10
	.p2align 3
.L358:
	cmpq	%r13, %r10
	jnb	.L347
	leaq	(%rbp,%rbp), %rax
.L353:
	subq	%r10, %r13
	leaq	(%r10,%r10,2), %rdx
	addq	%rbp, %rax
	salq	$4, %rax
	leaq	0(%r13,%r13,2), %rcx
	salq	$4, %rdx
	addq	%rax, %r9
	salq	$4, %rcx
	addq	%rdi, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L360:
	movdqu	(%rdx,%rax), %xmm3
	movdqu	16(%rdx,%rax), %xmm4
	movdqu	28(%rdx,%rax), %xmm5
	movups	%xmm4, 16(%r9,%rax)
	movups	%xmm3, (%r9,%rax)
	movups	%xmm5, 28(%r9,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L360
.L347:
	movq	%rsi, %rcx
	call	free
	movq	%rdi, %rcx
	call	free
	xorl	%eax, %eax
	addq	$56, %rsp
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
.L379:
	cmpq	%r12, %r8
	jnb	.L358
	leaq	(%rbp,%rbp), %rax
.L348:
	leaq	(%r8,%r8,2), %rcx
	addq	%rbp, %rax
	movq	%r8, %r11
	salq	$4, %rax
	salq	$4, %rcx
	leaq	(%r9,%rax), %rdx
	addq	%rsi, %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L359:
	movdqu	(%rcx,%rax), %xmm0
	movdqu	16(%rcx,%rax), %xmm1
	addq	$1, %r11
	movdqu	28(%rcx,%rax), %xmm2
	movups	%xmm1, 16(%rdx,%rax)
	movups	%xmm0, (%rdx,%rax)
	movups	%xmm2, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r12, %r11
	jb	.L359
	subq	%r8, %rbx
	addq	$1, %r8
	xorl	%eax, %eax
	cmpq	%r8, %r12
	cmovb	%rax, %rbx
	leaq	1(%rbp,%rbx), %rbp
	jmp	.L358
	.p2align 4,,10
	.p2align 3
.L378:
	testq	%r13, %r13
	je	.L347
	movq	128(%rsp), %rax
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	jmp	.L346
.L361:
	xorl	%r10d, %r10d
	jmp	.L353
.L344:
	movq	152(%rsp), %r9
	leaq	.LC12(%rip), %rcx
	movq	%r14, %r8
	movq	%rbp, %rdx
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
.LFB8453:
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
	call	_ZN4slay6engine6render20OrderByPriorityMergeEyyy
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
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13OrderingStageEv
	.def	_ZN4slay6engine6render13OrderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render13OrderingStageEv
_ZN4slay6engine6render13OrderingStageEv:
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
	movl	$1, %edi
	movq	32(%rcx), %r13
	leaq	-1(%r13), %rsi
	movq	%rcx, %rbp
	cmpq	$1, %r13
	jbe	.L411
	.p2align 4,,10
	.p2align 3
.L392:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L394:
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
	jb	.L394
	cmpq	%r13, %rdi
	jb	.L392
	movq	32(%rbp), %r8
	cmpq	$1, %r8
	jbe	.L411
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L402
	.p2align 4,,10
	.p2align 3
.L396:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%r8, %r12
	jnb	.L419
.L408:
	movq	%r12, %rdi
.L402:
	movq	40(%rbp), %rcx
	leaq	(%rdi,%rdi,2), %rdx
	leaq	(%r14,%r14,2), %rax
	salq	$4, %rdx
	salq	$4, %rax
	movsd	16(%rcx,%rdx), %xmm0
	ucomisd	16(%rcx,%rax), %xmm0
	jp	.L410
	je	.L396
.L410:
	cmpq	$1, %rdi
	je	.L420
	cmpq	%rsi, %r14
	jnb	.L401
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L400:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L399:
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
	jb	.L399
	cmpq	%rdi, %r12
	jb	.L400
	movq	32(%rbp), %r8
.L401:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%r8, %r12
	jb	.L408
.L419:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L411
	.p2align 4,,10
	.p2align 3
.L403:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L405:
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
	jb	.L405
	cmpq	%r12, %rsi
	jb	.L403
.L411:
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
.L420:
	movl	$1, %r14d
	jmp	.L396
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed\12\0"
	.align 8
.LC14:
	.ascii "slay::engine.render.RenderColor(): SDL_RenderFillRect failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render11RenderColorENS1_5tokenE
	.def	_ZN4slay6engine6render11RenderColorENS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render11RenderColorENS1_5tokenE
_ZN4slay6engine6render11RenderColorENS1_5tokenE:
.LFB8456:
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
	jne	.L424
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L425
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L424:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L425:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC16:
	.ascii "slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC18:
	.ascii "slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	.def	_ZN4slay6engine6render13RenderTextureENS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
_ZN4slay6engine6render13RenderTextureENS1_5tokenE:
.LFB8457:
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
	jnb	.L434
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L435
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	23(%rdx), %ecx
	movq	576(%rax), %r8
	movq	72(%rdx), %rdx
	cmpq	568(%rax), %rdx
	jnb	.L434
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L436
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	movsd	24(%rcx), %xmm0
	movq	576(%rax), %r8
	xorpd	.LC17(%rip), %xmm0
	movq	72(%rcx), %rcx
	cmpq	568(%rax), %rcx
	jnb	.L437
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	leaq	28(%rsi), %r9
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L438
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L437:
	movq	%rcx, %rdx
.L434:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L438:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L436:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L435:
	leaq	.LC15(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "slay::engine.render.RenderFlipbook(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC20:
	.ascii "slay::engine.render.RenderFlipbook(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC21:
	.ascii "slay::engine.render.RenderFlipbook(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	.def	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE:
.LFB8458:
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
	movq	104(%rax), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L447
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L448
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movq	80(%rax), %rdx
	movzbl	23(%rax), %r8d
	movq	104(%rax), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L447
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L449
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	movq	80(%rcx), %r8
	movsd	24(%rcx), %xmm0
	movq	104(%rcx), %rcx
	xorpd	.LC17(%rip), %xmm0
	movq	(%rcx,%r8,8), %rcx
	movq	576(%rax), %r8
	cmpq	568(%rax), %rcx
	jnb	.L450
	movq	(%r8,%rcx,8), %r10
	movq	16(%rax), %rcx
	movl	%edx, 48(%rsp)
	xorl	%r8d, %r8d
	movq	$0, 40(%rsp)
	leaq	28(%rsi), %r9
	movsd	%xmm0, 32(%rsp)
	movq	%r10, %rdx
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L451
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L450:
	movq	%rcx, %rdx
.L447:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L451:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L449:
	leaq	.LC20(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L448:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "slay::engine.render.RenderText(): SDL_SetTextureColorMod failed\12\0"
	.align 8
.LC23:
	.ascii "slay::engine.render.RenderText(): SDL_SetTextureAlphaMod failed\12\0"
	.align 8
.LC24:
	.ascii "slay::engine.render.RenderText(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.def	_ZN4slay6engine6render10RenderTextENS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render10RenderTextENS1_5tokenE
_ZN4slay6engine6render10RenderTextENS1_5tokenE:
.LFB8459:
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
	jne	.L456
	movq	(%rsi), %rax
	movzbl	21(%rax), %edx
	movq	104(%rax), %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L457
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
	xorpd	.LC17(%rip), %xmm0
	movq	%r10, %rdx
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L458
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L456:
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L458:
	leaq	.LC24(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L457:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\12\0"
	.align 8
.LC26:
	.ascii "slay::engine.render.OpenFrame(): SDL_RenderClear() failed\12\0"
	.align 8
.LC27:
	.ascii "slay::engine.render.RenderHitbox(): SDL_SetRenderDrawColor failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.def	_ZN4slay6engine6render14RenderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14RenderingStageEv
_ZN4slay6engine6render14RenderingStageEv:
.LFB8455:
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
	subq	$192, %rsp
	.seh_stackalloc	192
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
	jne	.L500
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderClear
	testl	%eax, %eax
	jne	.L461
	movq	32(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L480
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	leaq	16(%rax), %rdx
	jmp	.L464
	.p2align 4,,10
	.p2align 3
.L502:
	addq	$1, %rbx
	addq	$48, %rdx
	cmpq	%rcx, %rbx
	je	.L501
.L464:
	movsd	(%rdx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L502
	movq	%rbx, %rbp
	cmpq	%rcx, %rbx
	jnb	.L466
.L465:
	leaq	.L469(%rip), %rdi
	leaq	124(%rsp), %r13
	leaq	48(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L479:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	cmpl	$4, 8(%rax)
	ja	.L467
	movl	8(%rax), %edx
	movslq	(%rdi,%rdx,4), %rdx
	addq	%rdi, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L469:
	.long	.L473-.L469
	.long	.L472-.L469
	.long	.L471-.L469
	.long	.L470-.L469
	.long	.L468-.L469
	.text
	.p2align 4,,10
	.p2align 3
.L480:
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderPresent
	xorl	%eax, %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.p2align 4,,10
	.p2align 3
.L470:
	movdqu	(%rax), %xmm3
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movaps	%xmm3, 48(%rsp)
	movdqu	16(%rax), %xmm4
	movaps	%xmm4, 64(%rsp)
	movdqu	32(%rax), %xmm5
	movaps	%xmm5, 80(%rsp)
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	movq	32(%rsi), %rcx
.L467:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L478
.L503:
	movq	40(%rsi), %rax
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L471:
	movdqu	(%rax), %xmm4
	movq	%rsi, %rcx
	movq	%r12, %rdx
	addq	$1, %rbx
	movaps	%xmm4, 48(%rsp)
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 64(%rsp)
	movdqu	32(%rax), %xmm2
	movaps	%xmm2, 80(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	movq	32(%rsi), %rcx
	cmpq	%rcx, %rbx
	jb	.L503
	.p2align 4,,10
	.p2align 3
.L478:
	testq	%rbp, %rbp
	je	.L480
	movq	40(%rsi), %rax
.L466:
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	leaq	.L483(%rip), %rbx
	leaq	172(%rsp), %r12
	leaq	48(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L492:
	addq	%r14, %rax
	cmpl	$4, 8(%rax)
	ja	.L481
	movl	8(%rax), %edx
	movslq	(%rbx,%rdx,4), %rdx
	addq	%rbx, %rdx
	jmp	*%rdx
	.section .rdata,"dr"
	.align 4
.L483:
	.long	.L487-.L483
	.long	.L486-.L483
	.long	.L485-.L483
	.long	.L484-.L483
	.long	.L482-.L483
	.text
	.p2align 4,,10
	.p2align 3
.L472:
	movdqu	(%rax), %xmm5
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movaps	%xmm5, 48(%rsp)
	movdqu	16(%rax), %xmm2
	movaps	%xmm2, 64(%rsp)
	movdqu	32(%rax), %xmm3
	movaps	%xmm3, 80(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	movq	32(%rsi), %rcx
	jmp	.L467
	.p2align 4,,10
	.p2align 3
.L468:
	movdqu	(%rax), %xmm2
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movaps	%xmm2, 96(%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 112(%rsp)
	movdqu	32(%rax), %xmm4
	movq	(%rsi), %rax
	movaps	%xmm4, 128(%rsp)
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L490
	movq	(%rsi), %rax
	movq	%r13, %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L491
.L477:
	movq	32(%rsi), %rcx
	jmp	.L467
	.p2align 4,,10
	.p2align 3
.L473:
	movdqu	(%rax), %xmm2
	movq	(%rsi), %rcx
	movaps	%xmm2, 96(%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 112(%rsp)
	movdqu	32(%rax), %xmm4
	movq	96(%rsp), %rax
	movaps	%xmm4, 128(%rsp)
	movzbl	20(%rax), %edx
	movq	16(%rcx), %rcx
	movzbl	22(%rax), %r9d
	movzbl	21(%rax), %r8d
	movzbl	23(%rax), %eax
	movl	%eax, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L488
	movq	(%rsi), %rax
	movq	%r13, %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	je	.L477
.L489:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L484:
	movdqu	(%rax), %xmm4
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movaps	%xmm4, 48(%rsp)
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 64(%rsp)
	movdqu	32(%rax), %xmm1
	movaps	%xmm1, 80(%rsp)
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE
.L481:
	addq	$1, %r13
	addq	$48, %r14
	cmpq	%rbp, %r13
	je	.L480
	movq	40(%rsi), %rax
	jmp	.L492
	.p2align 4,,10
	.p2align 3
.L485:
	movdqu	(%rax), %xmm1
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movaps	%xmm1, 48(%rsp)
	movdqu	16(%rax), %xmm2
	movaps	%xmm2, 64(%rsp)
	movdqu	32(%rax), %xmm3
	movaps	%xmm3, 80(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L486:
	movdqu	(%rax), %xmm3
	movq	%rdi, %rdx
	movq	%rsi, %rcx
	movaps	%xmm3, 48(%rsp)
	movdqu	16(%rax), %xmm4
	movaps	%xmm4, 64(%rsp)
	movdqu	32(%rax), %xmm5
	movaps	%xmm5, 80(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L487:
	movdqu	(%rax), %xmm5
	movq	(%rsi), %rcx
	movaps	%xmm5, 144(%rsp)
	movdqu	16(%rax), %xmm1
	movaps	%xmm1, 160(%rsp)
	movdqu	32(%rax), %xmm2
	movq	144(%rsp), %rax
	movaps	%xmm2, 176(%rsp)
	movzbl	20(%rax), %edx
	movq	16(%rcx), %rcx
	movzbl	22(%rax), %r9d
	movzbl	21(%rax), %r8d
	movzbl	23(%rax), %eax
	movl	%eax, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L488
	movq	(%rsi), %rax
	movq	%r12, %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	je	.L481
	jmp	.L489
	.p2align 4,,10
	.p2align 3
.L482:
	movdqu	(%rax), %xmm2
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$255, %edx
	movaps	%xmm2, 144(%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 160(%rsp)
	movdqu	32(%rax), %xmm4
	movq	(%rsi), %rax
	movaps	%xmm4, 176(%rsp)
	movq	16(%rax), %rcx
	movl	$128, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L490
	movq	(%rsi), %rax
	movq	%r12, %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	je	.L481
.L491:
	call	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	.p2align 4,,10
	.p2align 3
.L501:
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	.L465
.L490:
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L488:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L461:
	leaq	.LC26(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L500:
	leaq	.LC25(%rip), %rcx
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
.LFB8448:
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
	.globl	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE
	.def	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE
_ZN4slay6engine6render12RenderHitboxENS1_5tokenE:
.LFB8460:
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
	jne	.L508
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L509
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L508:
	leaq	.LC27(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L509:
	call	_ZN4slay6engine6render12RenderHitboxENS1_5tokenE.part.0
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	-755914244
	.long	1063281229
	.align 8
.LC4:
	.long	-350469331
	.long	1059731170
	.align 8
.LC5:
	.long	-350469331
	.long	1058682594
	.align 8
.LC7:
	.long	0
	.long	1071644672
	.align 16
.LC17:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6string6LengthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6camera9TransformEddttd;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	TTF_RenderText_Blended;	.scl	2;	.type	32;	.endef
	.def	SDL_CreateTextureFromSurface;	.scl	2;	.type	32;	.endef
	.def	SDL_FreeSurface;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	SDL_SetRenderDrawColor;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderFillRect;	.scl	2;	.type	32;	.endef
	.def	SDL_SetTextureColorMod;	.scl	2;	.type	32;	.endef
	.def	SDL_SetTextureAlphaMod;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderCopyEx;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderClear;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderPresent;	.scl	2;	.type	32;	.endef
