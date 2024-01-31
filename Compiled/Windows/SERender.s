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
	.ascii "slay::engine.render.RenderText(): SDL_RenderCopyEx failed\12\0"
	.text
	.align 2
	.p2align 4
	.def	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0
_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0:
.LFB8634:
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
	.globl	_ZN4slay6engine6renderC2ERS0_
	.def	_ZN4slay6engine6renderC2ERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6renderC2ERS0_
_ZN4slay6engine6renderC2ERS0_:
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
	.globl	_ZN4slay6engine6renderC1ERS0_
	.def	_ZN4slay6engine6renderC1ERS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine6renderC1ERS0_,_ZN4slay6engine6renderC2ERS0_
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
	subq	$216, %rsp
	.seh_stackalloc	216
	movaps	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movaps	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movaps	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	movaps	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	movaps	%xmm10, 176(%rsp)
	.seh_savexmm	%xmm10, 176
	movaps	%xmm11, 192(%rsp)
	.seh_savexmm	%xmm11, 192
	.seh_endprologue
	movq	(%rcx), %rax
	movq	536(%rax), %rdx
	movq	%rcx, %rbp
	cmpq	$1, %rdx
	jbe	.L18
	xorl	%r14d, %r14d
	movl	$1, %r12d
	leaq	96(%rsp), %r15
	movsd	.LC7(%rip), %xmm7
	movq	%r14, %rdi
	movq	%r12, %r14
	.p2align 4,,10
	.p2align 3
.L140:
	movq	544(%rax), %rcx
	leaq	0(,%r14,8), %r12
	cmpq	$0, (%rcx,%r14,8)
	je	.L19
	cmpq	%rdx, %r14
	jnb	.L226
	movq	%r14, %rbx
	movl	$1, %esi
	movq	%r15, %r14
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L46:
	movq	32(%r9), %r8
	leaq	0(,%rsi,8), %r15
	movq	(%r8,%rsi,8), %r8
	testq	%r8, %r8
	je	.L21
	cmpw	$0, 18(%r8)
	je	.L21
	cmpw	$0, 20(%r8)
	je	.L21
	cmpb	$0, 25(%r8)
	je	.L21
	cmpb	$0, 27(%r8)
	jne	.L227
	.p2align 4,,10
	.p2align 3
.L21:
	addq	$1, %rsi
	cmpq	%rdx, %rbx
	jnb	.L225
.L20:
	movq	(%rcx,%r12), %r9
	cmpq	24(%r9), %rsi
	jb	.L46
	movq	%r14, %r15
	movq	%rbx, %r14
	cmpq	%rdx, %rbx
	jnb	.L226
	movl	$1, %esi
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L72:
	movq	64(%r9), %r8
	leaq	0(,%rsi,8), %r14
	movq	(%r8,%rsi,8), %r8
	testq	%r8, %r8
	je	.L48
	cmpw	$0, 18(%r8)
	je	.L48
	cmpw	$0, 20(%r8)
	je	.L48
	cmpb	$0, 37(%r8)
	je	.L48
	cmpb	$0, 39(%r8)
	je	.L48
	cmpq	$0, 64(%r8)
	jne	.L228
	.p2align 4,,10
	.p2align 3
.L48:
	addq	$1, %rsi
	cmpq	%rdx, %rbx
	jnb	.L225
.L47:
	movq	(%rcx,%r12), %r9
	cmpq	56(%r9), %rsi
	jb	.L72
	movq	%rbx, %r14
	cmpq	%rdx, %rbx
	jnb	.L226
	movl	$1, %esi
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L98:
	movq	96(%r9), %r8
	leaq	0(,%rsi,8), %r14
	movq	(%r8,%rsi,8), %r8
	testq	%r8, %r8
	je	.L74
	cmpw	$0, 18(%r8)
	je	.L74
	cmpw	$0, 20(%r8)
	je	.L74
	cmpb	$0, 38(%r8)
	je	.L74
	cmpb	$0, 40(%r8)
	je	.L74
	movq	72(%r8), %r11
	movq	96(%r8), %r10
	cmpq	$0, (%r10,%r11,8)
	jne	.L229
	.p2align 4,,10
	.p2align 3
.L74:
	addq	$1, %rsi
	cmpq	%rdx, %rbx
	jnb	.L225
.L73:
	movq	(%rcx,%r12), %r9
	cmpq	88(%r9), %rsi
	jb	.L98
	movq	%rbx, %r14
	cmpq	%rdx, %rbx
	jnb	.L226
	movl	$1, %esi
	movq	%r15, %r14
	.p2align 4,,10
	.p2align 3
.L99:
	movq	(%rcx,%r12), %rcx
	cmpq	120(%rcx), %rsi
	jnb	.L230
.L139:
	movq	128(%rcx), %rcx
	leaq	0(,%rsi,8), %r15
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L231
	addq	$40, %rcx
	call	_ZN3neo6string6LengthEv
	cmpq	$1, %rax
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	jbe	.L101
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %r8
	movq	128(%r8), %r10
	cmpq	120(%r8), %rsi
	jnb	.L224
	movq	(%r10,%r15), %r9
	cmpw	$0, 18(%r9)
	jne	.L232
.L105:
	movq	(%rcx,%r12), %rcx
	addq	$1, %rsi
	cmpq	120(%rcx), %rsi
	jb	.L139
	.p2align 4,,10
	.p2align 3
.L230:
	movq	%r14, %r15
	movq	%rbx, %r14
.L19:
	addq	$1, %r14
	cmpq	%rdx, %r14
	jb	.L140
	movq	32(%rbp), %rax
	movq	%rdi, %r14
	cmpq	%rax, %rdi
	jb	.L143
.L141:
	testq	%rax, %rax
	je	.L144
.L179:
	movaps	112(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	128(%rsp), %xmm7
	movaps	144(%rsp), %xmm8
	movaps	160(%rsp), %xmm9
	movaps	176(%rsp), %xmm10
	movaps	192(%rsp), %xmm11
	addq	$216, %rsp
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
.L231:
	movq	544(%rax), %rcx
.L101:
	addq	$1, %rsi
	cmpq	%rdx, %rbx
	jb	.L99
.L225:
	movq	%rbx, %r12
.L223:
	leaq	.LC6(%rip), %rcx
	movq	%r12, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L232:
	cmpb	$0, 37(%r9)
	je	.L105
	cmpb	$0, 39(%r9)
	je	.L105
	cmpq	$0, 88(%r9)
	je	.L105
	cmpq	$0, 96(%r9)
	je	.L233
	movsd	152(%r8), %xmm0
.L115:
	movq	(%r10,%r15), %r9
	pxor	%xmm10, %xmm10
	pxor	%xmm11, %xmm11
	movsd	176(%r8), %xmm9
	cvtsi2sdl	56(%r9), %xmm10
	movapd	%xmm9, %xmm6
	cvtsi2sdl	60(%r9), %xmm11
	addsd	160(%r8), %xmm11
	addsd	%xmm0, %xmm10
	movsd	184(%r8), %xmm0
	mulsd	%xmm7, %xmm0
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm9
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	jnb	.L234
	ucomisd	%xmm9, %xmm6
	jp	.L120
	jne	.L120
	addsd	.LC5(%rip), %xmm9
.L120:
	comisd	%xmm6, %xmm9
	jbe	.L101
	movq	%r14, 64(%rsp)
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L128:
	cmpq	%rdi, 32(%rbp)
	je	.L132
.L135:
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rsi
	jnb	.L224
	movq	(%r8,%r15), %r8
	leaq	(%rdi,%rdi,2), %rcx
	addq	$1, %rdi
	salq	$4, %rcx
	addq	40(%rbp), %rcx
	movzbl	38(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$3, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm8, 28(%rcx)
	movq	544(%rax), %rcx
.L130:
	addsd	16(%rbp), %xmm6
	comisd	%xmm6, %xmm9
	jbe	.L235
.L137:
	addq	$80, %rax
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rsi
	jnb	.L224
	movq	(%rcx,%r15), %rdx
	movsd	%xmm6, 48(%rsp)
	movapd	%xmm11, %xmm3
	movapd	%xmm10, %xmm2
	movzwl	18(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	80(%rdx), %edx
	movq	64(%rsp), %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	96(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm1
	movdqa	%xmm0, %xmm8
	movd	%xmm0, %r8d
	movd	%xmm1, %r14d
	movdqa	%xmm0, %xmm1
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %r9d
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %r10d
	testq	%rdi, %rdi
	jne	.L236
.L124:
	sarl	%r9d
	movl	%r9d, %eax
	addl	%r8d, %eax
	jns	.L128
	movzwl	10(%rbp), %ecx
	subl	%r9d, %r8d
	cmpl	%ecx, %r8d
	jle	.L128
	movl	%r14d, %eax
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	jns	.L128
	movl	%r10d, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jge	.L128
	addsd	16(%rbp), %xmm6
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm9
	ja	.L137
	.p2align 4,,10
	.p2align 3
.L235:
	movq	64(%rsp), %r14
	addq	$1, %rsi
	cmpq	%rdx, %rbx
	jb	.L99
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L236:
	movq	40(%rbp), %rdx
	leaq	(%rdi,%rdi,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	(%rax), %r13
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %r11
	movq	128(%r11), %r11
	movq	%r11, 72(%rsp)
	movq	(%rcx,%r12), %r11
	cmpq	120(%r11), %rsi
	jnb	.L224
	movq	72(%rsp), %r11
	cmpq	(%r11,%r15), %r13
	jne	.L124
	movq	80(%rsp), %r11
	cmpl	%r8d, 28(%r11)
	jne	.L124
	cmpl	%r10d, 32(%r11)
	jne	.L124
	cmpl	%r9d, 36(%r11)
	jne	.L124
	cmpl	%r14d, 40(%r11)
	jne	.L124
	movsd	%xmm6, 16(%r11)
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L132:
	movzwl	24(%rbp), %eax
	movq	40(%rbp), %rcx
	leaq	1(%rdi,%rax), %rax
	movq	%rax, 32(%rbp)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	jne	.L135
.L41:
	leaq	.LC8(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L227:
	movsd	.LC7(%rip), %xmm0
	pxor	%xmm10, %xmm10
	pxor	%xmm11, %xmm11
	movsd	176(%r9), %xmm9
	mulsd	184(%r9), %xmm0
	cvtsi2sdl	28(%r8), %xmm10
	addsd	152(%r9), %xmm10
	movapd	%xmm9, %xmm6
	cvtsi2sdl	32(%r8), %xmm11
	addsd	160(%r9), %xmm11
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm9
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	jnb	.L237
	ucomisd	%xmm9, %xmm6
	jp	.L26
	jne	.L26
	addsd	.LC5(%rip), %xmm9
.L26:
	comisd	%xmm6, %xmm9
	jbe	.L21
	movq	%r14, 64(%rsp)
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L34:
	cmpq	%rdi, 32(%rbp)
	je	.L38
.L42:
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rcx
	movq	32(%rcx), %r8
	cmpq	24(%rcx), %rsi
	jnb	.L224
	movq	(%r8,%r15), %r8
	leaq	(%rdi,%rdi,2), %rcx
	addq	$1, %rdi
	salq	$4, %rcx
	addq	40(%rbp), %rcx
	movzbl	26(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$0, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm8, 28(%rcx)
	movq	544(%rax), %rcx
.L36:
	addsd	16(%rbp), %xmm6
	comisd	%xmm6, %xmm9
	jbe	.L238
.L44:
	addq	$80, %rax
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rdx
	movq	32(%rdx), %rcx
	cmpq	24(%rdx), %rsi
	jnb	.L224
	movq	(%rcx,%r15), %rdx
	movsd	%xmm6, 48(%rsp)
	movapd	%xmm11, %xmm3
	movapd	%xmm10, %xmm2
	movzwl	20(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	18(%rdx), %edx
	movq	64(%rsp), %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	96(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm1
	movdqa	%xmm0, %xmm8
	movd	%xmm0, %r8d
	movd	%xmm1, %r14d
	movdqa	%xmm0, %xmm1
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %r9d
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %r10d
	testq	%rdi, %rdi
	jne	.L239
.L30:
	sarl	%r9d
	movl	%r9d, %eax
	addl	%r8d, %eax
	jns	.L34
	movzwl	10(%rbp), %ecx
	subl	%r9d, %r8d
	cmpl	%ecx, %r8d
	jle	.L34
	movl	%r14d, %eax
	sarl	%eax
	movl	%eax, %edx
	addl	%r10d, %edx
	jns	.L34
	movl	%r10d, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jge	.L34
	addsd	16(%rbp), %xmm6
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm9
	ja	.L44
	.p2align 4,,10
	.p2align 3
.L238:
	movq	64(%rsp), %r14
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L239:
	movq	40(%rbp), %rdx
	leaq	(%rdi,%rdi,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	(%rax), %r13
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %r11
	movq	32(%r11), %r11
	movq	%r11, 72(%rsp)
	movq	(%rcx,%r12), %r11
	cmpq	24(%r11), %rsi
	jnb	.L224
	movq	72(%rsp), %r11
	cmpq	(%r11,%r15), %r13
	jne	.L30
	movq	80(%rsp), %r11
	cmpl	%r8d, 28(%r11)
	jne	.L30
	cmpl	%r10d, 32(%r11)
	jne	.L30
	cmpl	%r9d, 36(%r11)
	jne	.L30
	cmpl	%r14d, 40(%r11)
	jne	.L30
	movsd	%xmm6, 16(%r11)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L38:
	movzwl	24(%rbp), %eax
	movq	40(%rbp), %rcx
	leaq	1(%rdi,%rax), %rax
	movq	%rax, 32(%rbp)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	jne	.L42
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L234:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm9
	jp	.L120
	jne	.L120
	movapd	%xmm9, %xmm6
	movq	%r14, 64(%rsp)
	movsd	.LC4(%rip), %xmm9
	jmp	.L137
.L233:
	leaq	40(%r9), %rcx
	movl	34(%r9), %r13d
	call	_ZN3neo6stringclEv
	movq	%rax, %rdx
	movq	0(%rbp), %rax
	movq	544(%rax), %rcx
	cmpq	536(%rax), %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rcx
	movq	128(%rcx), %r8
	cmpq	120(%rcx), %rsi
	jnb	.L224
	movq	(%r8,%r15), %rcx
	movq	608(%rax), %r8
	movq	88(%rcx), %rcx
	cmpq	600(%rax), %rcx
	jnb	.L240
	movq	(%r8,%rcx,8), %rcx
	movl	%r13d, %r8d
	call	TTF_RenderText_Blended
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L241
	movq	0(%rbp), %rax
	movq	%r13, %rdx
	movq	16(%rax), %rcx
	call	SDL_CreateTextureFromSurface
	movq	0(%rbp), %rdx
	movq	544(%rdx), %rcx
	cmpq	536(%rdx), %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rdx
	movq	128(%rdx), %rcx
	cmpq	120(%rdx), %rsi
	jnb	.L224
	movq	(%rcx,%r15), %rcx
	movq	%rax, 96(%rcx)
	testq	%rax, %rax
	je	.L242
	movzwl	18(%rcx), %eax
	imull	16(%r13), %eax
	cltd
	idivl	20(%r13)
	movw	%ax, 80(%rcx)
	movq	%r13, %rcx
	call	SDL_FreeSurface
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %r8
	movsd	152(%r8), %xmm0
	movq	128(%r8), %r10
	cmpq	120(%r8), %rsi
	jb	.L115
.L224:
	leaq	.LC6(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L228:
	movsd	.LC7(%rip), %xmm0
	pxor	%xmm9, %xmm9
	pxor	%xmm10, %xmm10
	movsd	176(%r9), %xmm11
	mulsd	184(%r9), %xmm0
	cvtsi2sdl	40(%r8), %xmm9
	addsd	152(%r9), %xmm9
	movapd	%xmm11, %xmm6
	cvtsi2sdl	44(%r8), %xmm10
	addsd	160(%r9), %xmm10
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	jnb	.L243
	ucomisd	%xmm11, %xmm6
	jp	.L53
	jne	.L53
	addsd	.LC5(%rip), %xmm11
.L53:
	comisd	%xmm6, %xmm11
	jbe	.L48
.L51:
	leaq	96(%rsp), %r13
	movq	%r15, 88(%rsp)
	movq	%r13, 64(%rsp)
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L61:
	cmpq	%rdi, 32(%rbp)
	je	.L65
.L68:
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rcx
	movq	64(%rcx), %r8
	cmpq	56(%rcx), %rsi
	jnb	.L224
	movq	(%r8,%r14), %r8
	leaq	(%rdi,%rdi,2), %rcx
	addq	$1, %rdi
	salq	$4, %rcx
	addq	40(%rbp), %rcx
	movzbl	38(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$1, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm8, 28(%rcx)
	movq	544(%rax), %rcx
.L63:
	addsd	16(%rbp), %xmm6
	comisd	%xmm6, %xmm11
	jbe	.L244
.L70:
	addq	$80, %rax
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rdx
	movq	64(%rdx), %rcx
	cmpq	56(%rdx), %rsi
	jnb	.L224
	movq	(%rcx,%r14), %rdx
	movsd	%xmm6, 48(%rsp)
	movapd	%xmm10, %xmm3
	movapd	%xmm9, %xmm2
	movzwl	20(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	18(%rdx), %edx
	movq	64(%rsp), %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	96(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm1
	movdqa	%xmm0, %xmm8
	movd	%xmm0, %r8d
	movd	%xmm1, %r15d
	movdqa	%xmm0, %xmm1
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %r9d
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %r10d
	testq	%rdi, %rdi
	jne	.L245
.L57:
	sarl	%r9d
	movl	%r9d, %eax
	addl	%r8d, %eax
	jns	.L61
	movzwl	10(%rbp), %edx
	subl	%r9d, %r8d
	cmpl	%edx, %r8d
	jle	.L61
	movl	%r15d, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%r10d, %ecx
	jns	.L61
	movl	%r10d, %ecx
	subl	%eax, %ecx
	cmpl	%ecx, %edx
	jge	.L61
	addsd	16(%rbp), %xmm6
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm11
	ja	.L70
.L244:
	movq	88(%rsp), %r15
	jmp	.L48
.L229:
	movsd	.LC7(%rip), %xmm0
	pxor	%xmm9, %xmm9
	pxor	%xmm10, %xmm10
	movsd	176(%r9), %xmm11
	mulsd	184(%r9), %xmm0
	cvtsi2sdl	48(%r8), %xmm9
	addsd	152(%r9), %xmm9
	movapd	%xmm11, %xmm6
	cvtsi2sdl	52(%r8), %xmm10
	addsd	160(%r9), %xmm10
	subsd	%xmm0, %xmm6
	addsd	%xmm0, %xmm11
	pxor	%xmm0, %xmm0
	comisd	%xmm6, %xmm0
	jnb	.L246
	ucomisd	%xmm11, %xmm6
	jp	.L79
	jne	.L79
	addsd	.LC5(%rip), %xmm11
.L79:
	comisd	%xmm6, %xmm11
	jbe	.L74
.L77:
	leaq	96(%rsp), %r13
	movq	%r15, 88(%rsp)
	movq	%r13, 64(%rsp)
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L87:
	cmpq	%rdi, 32(%rbp)
	je	.L91
.L94:
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rcx
	movq	96(%rcx), %r8
	cmpq	88(%rcx), %rsi
	jnb	.L224
	movq	(%r8,%r14), %r8
	leaq	(%rdi,%rdi,2), %rcx
	addq	$1, %rdi
	salq	$4, %rcx
	addq	40(%rbp), %rcx
	movzbl	39(%r8), %r9d
	movq	%r8, (%rcx)
	movl	$2, 8(%rcx)
	movb	%r9b, 24(%rcx)
	movsd	%xmm6, 16(%rcx)
	movups	%xmm8, 28(%rcx)
	movq	544(%rax), %rcx
.L89:
	addsd	16(%rbp), %xmm6
	comisd	%xmm6, %xmm11
	jbe	.L247
.L96:
	addq	$80, %rax
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %rdx
	movq	96(%rdx), %rcx
	cmpq	88(%rdx), %rsi
	jnb	.L224
	movq	(%rcx,%r14), %rdx
	movsd	%xmm6, 48(%rsp)
	movapd	%xmm10, %xmm3
	movapd	%xmm9, %xmm2
	movzwl	20(%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movzwl	18(%rdx), %edx
	movq	64(%rsp), %rcx
	movl	%edx, 32(%rsp)
	movq	%rax, %rdx
	call	_ZN4slay6engine6camera9TransformEddttd
	movdqu	96(%rsp), %xmm0
	pshufd	$255, %xmm0, %xmm1
	movdqa	%xmm0, %xmm8
	movd	%xmm0, %r8d
	movd	%xmm1, %r15d
	movdqa	%xmm0, %xmm1
	punpckhdq	%xmm0, %xmm1
	movd	%xmm1, %r9d
	pshufd	$85, %xmm0, %xmm1
	movd	%xmm1, %r10d
	testq	%rdi, %rdi
	jne	.L248
.L83:
	sarl	%r9d
	movl	%r9d, %eax
	addl	%r8d, %eax
	jns	.L87
	movzwl	10(%rbp), %edx
	subl	%r9d, %r8d
	cmpl	%edx, %r8d
	jle	.L87
	movl	%r15d, %eax
	sarl	%eax
	movl	%eax, %ecx
	addl	%r10d, %ecx
	jns	.L87
	movl	%r10d, %ecx
	subl	%eax, %ecx
	cmpl	%ecx, %edx
	jge	.L87
	addsd	16(%rbp), %xmm6
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	comisd	%xmm6, %xmm11
	ja	.L96
.L247:
	movq	88(%rsp), %r15
	jmp	.L74
.L237:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm9
	jp	.L26
	jne	.L26
	movapd	%xmm9, %xmm6
	movq	%r14, 64(%rsp)
	movsd	.LC4(%rip), %xmm9
	jmp	.L44
.L243:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm11
	jp	.L53
	jne	.L53
	movapd	%xmm11, %xmm6
	movsd	.LC4(%rip), %xmm11
	jmp	.L51
.L246:
	movsd	.LC5(%rip), %xmm6
	ucomisd	%xmm6, %xmm11
	jp	.L79
	jne	.L79
	movapd	%xmm11, %xmm6
	movsd	.LC4(%rip), %xmm11
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L245:
	movq	40(%rbp), %rdx
	leaq	(%rdi,%rdi,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	(%rax), %r13
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %r11
	movq	64(%r11), %r11
	movq	%r11, 72(%rsp)
	movq	(%rcx,%r12), %r11
	cmpq	56(%r11), %rsi
	jnb	.L224
	movq	72(%rsp), %r11
	cmpq	(%r11,%r14), %r13
	jne	.L57
	movq	80(%rsp), %r11
	cmpl	%r8d, 28(%r11)
	jne	.L57
	cmpl	%r10d, 32(%r11)
	jne	.L57
	cmpl	%r9d, 36(%r11)
	jne	.L57
	cmpl	%r15d, 40(%r11)
	jne	.L57
	movsd	%xmm6, 16(%r11)
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L65:
	movzwl	24(%rbp), %eax
	movq	40(%rbp), %rcx
	leaq	1(%rdi,%rax), %rax
	movq	%rax, 32(%rbp)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	jne	.L68
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L248:
	movq	40(%rbp), %rdx
	leaq	(%rdi,%rdi,2), %rax
	salq	$4, %rax
	leaq	-48(%rdx,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	(%rax), %r13
	movq	0(%rbp), %rax
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rbx
	jnb	.L225
	movq	(%rcx,%r12), %r11
	movq	96(%r11), %r11
	movq	%r11, 72(%rsp)
	movq	(%rcx,%r12), %r11
	cmpq	88(%r11), %rsi
	jnb	.L224
	movq	72(%rsp), %r11
	cmpq	(%r11,%r14), %r13
	jne	.L83
	movq	80(%rsp), %r11
	cmpl	%r8d, 28(%r11)
	jne	.L83
	cmpl	%r10d, 32(%r11)
	jne	.L83
	cmpl	%r9d, 36(%r11)
	jne	.L83
	cmpl	%r15d, 40(%r11)
	jne	.L83
	movsd	%xmm6, 16(%r11)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L91:
	movzwl	24(%rbp), %eax
	movq	40(%rbp), %rcx
	leaq	1(%rdi,%rax), %rax
	movq	%rax, 32(%rbp)
	leaq	(%rax,%rax,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	jne	.L94
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L144:
	movq	$0, 40(%rbp)
	jmp	.L179
.L18:
	cmpq	$0, 32(%rcx)
	je	.L144
	xorl	%r14d, %r14d
.L143:
	movq	%r14, 32(%rbp)
	movq	40(%rbp), %rcx
	leaq	(%r14,%r14,2), %rdx
	salq	$4, %rdx
	call	realloc
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	je	.L41
	movq	32(%rbp), %rax
	jmp	.L141
.L226:
	movq	%r14, %r12
	jmp	.L223
.L240:
	movq	%rcx, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L242:
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L241:
	leaq	.LC9(%rip), %rcx
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
	je	.L251
	movq	152(%rsp), %r13
	subq	%r14, %r13
	leaq	0(%r13,%r13,2), %rcx
	salq	$4, %rcx
	movq	%rcx, 40(%rsp)
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L251
	testq	%r12, %r12
	movq	40(%rsp), %rcx
	je	.L288
	movq	128(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	leaq	(%rax,%rbp), %r11
	salq	$4, %r11
	addq	%r9, %r11
	.p2align 4,,10
	.p2align 3
.L256:
	movdqu	(%r11,%rdx), %xmm1
	movdqu	16(%r11,%rdx), %xmm2
	movdqu	28(%r11,%rdx), %xmm3
	movups	%xmm2, 16(%rsi,%rdx)
	movups	%xmm1, (%rsi,%rdx)
	movups	%xmm3, 28(%rsi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r15
	jne	.L256
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	testq	%r13, %r13
	je	.L255
.L253:
	leaq	(%r14,%r14,2), %r8
	xorl	%edx, %edx
	salq	$4, %r8
	addq	%r9, %r8
	.p2align 4,,10
	.p2align 3
.L258:
	movdqu	48(%r8,%rdx), %xmm4
	movdqu	64(%r8,%rdx), %xmm5
	movdqu	76(%r8,%rdx), %xmm0
	movups	%xmm5, 16(%rdi,%rdx)
	movups	%xmm4, (%rdi,%rdx)
	movups	%xmm0, 28(%rdi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rcx
	jne	.L258
	testq	%r12, %r12
	je	.L269
	addq	%rbp, %rax
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	salq	$4, %rax
	addq	%r9, %rax
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L290:
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
	jnb	.L266
.L291:
	cmpq	%r13, %r10
	jnb	.L289
.L264:
	leaq	(%r10,%r10,2), %rcx
	leaq	(%r8,%r8,2), %rdx
	salq	$4, %rcx
	salq	$4, %rdx
	addq	%rsi, %rdx
	addq	%rdi, %rcx
	movsd	16(%rdx), %xmm0
	comisd	16(%rcx), %xmm0
	ja	.L290
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
	jb	.L291
	.p2align 4,,10
	.p2align 3
.L266:
	cmpq	%r13, %r10
	jnb	.L254
	leaq	(%rbp,%rbp), %rax
.L260:
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
.L268:
	movdqu	(%rdx,%rax), %xmm4
	movdqu	16(%rdx,%rax), %xmm5
	movdqu	28(%rdx,%rax), %xmm0
	movups	%xmm5, 16(%r9,%rax)
	movups	%xmm4, (%r9,%rax)
	movups	%xmm0, 28(%r9,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L268
.L254:
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
.L289:
	cmpq	%r12, %r8
	jnb	.L266
	leaq	(%rbp,%rbp), %rax
.L255:
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
.L267:
	movdqu	(%rcx,%rax), %xmm1
	movdqu	16(%rcx,%rax), %xmm2
	addq	$1, %r11
	movdqu	28(%rcx,%rax), %xmm3
	movups	%xmm2, 16(%rdx,%rax)
	movups	%xmm1, (%rdx,%rax)
	movups	%xmm3, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r12, %r11
	jb	.L267
	subq	%r8, %rbx
	addq	$1, %r8
	xorl	%eax, %eax
	cmpq	%r8, %r12
	cmovb	%rax, %rbx
	leaq	1(%rbp,%rbx), %rbp
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L288:
	testq	%r13, %r13
	je	.L254
	movq	128(%rsp), %rax
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	jmp	.L253
.L269:
	xorl	%r10d, %r10d
	jmp	.L260
.L251:
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
	jbe	.L293
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L293
	.p2align 4,,10
	.p2align 3
.L294:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L296:
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
	jb	.L296
	cmpq	%r13, %rdi
	jb	.L294
.L293:
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
	je	.L303
	movq	152(%rsp), %r13
	subq	%r14, %r13
	leaq	0(%r13,%r13,2), %rcx
	salq	$4, %rcx
	movq	%rcx, 40(%rsp)
	call	malloc
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L303
	testq	%r12, %r12
	movq	40(%rsp), %rcx
	je	.L337
	movq	128(%rsp), %rax
	xorl	%edx, %edx
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	leaq	(%rax,%rbp), %r11
	salq	$4, %r11
	addq	%r9, %r11
	.p2align 4,,10
	.p2align 3
.L308:
	movdqu	(%r11,%rdx), %xmm0
	movdqu	16(%r11,%rdx), %xmm1
	movdqu	28(%r11,%rdx), %xmm2
	movups	%xmm1, 16(%rsi,%rdx)
	movups	%xmm0, (%rsi,%rdx)
	movups	%xmm2, 28(%rsi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %r15
	jne	.L308
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	testq	%r13, %r13
	je	.L307
.L305:
	leaq	(%r14,%r14,2), %r8
	xorl	%edx, %edx
	salq	$4, %r8
	addq	%r9, %r8
	.p2align 4,,10
	.p2align 3
.L310:
	movdqu	48(%r8,%rdx), %xmm3
	movdqu	64(%r8,%rdx), %xmm4
	movdqu	76(%r8,%rdx), %xmm5
	movups	%xmm4, 16(%rdi,%rdx)
	movups	%xmm3, (%rdi,%rdx)
	movups	%xmm5, 28(%rdi,%rdx)
	addq	$48, %rdx
	cmpq	%rdx, %rcx
	jne	.L310
	testq	%r12, %r12
	je	.L320
	addq	%rbp, %rax
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	salq	$4, %rax
	addq	%r9, %rax
	jmp	.L315
	.p2align 4,,10
	.p2align 3
.L339:
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
	jnb	.L317
.L340:
	cmpq	%r13, %r10
	jnb	.L338
.L315:
	leaq	(%r10,%r10,2), %rcx
	leaq	(%r8,%r8,2), %rdx
	salq	$4, %rcx
	salq	$4, %rdx
	addq	%rsi, %rdx
	addq	%rdi, %rcx
	movzbl	24(%rdx), %r14d
	cmpb	%r14b, 24(%rcx)
	jb	.L339
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
	jb	.L340
	.p2align 4,,10
	.p2align 3
.L317:
	cmpq	%r13, %r10
	jnb	.L306
	leaq	(%rbp,%rbp), %rax
.L312:
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
.L319:
	movdqu	(%rdx,%rax), %xmm3
	movdqu	16(%rdx,%rax), %xmm4
	movdqu	28(%rdx,%rax), %xmm5
	movups	%xmm4, 16(%r9,%rax)
	movups	%xmm3, (%r9,%rax)
	movups	%xmm5, 28(%r9,%rax)
	addq	$48, %rax
	cmpq	%rax, %rcx
	jne	.L319
.L306:
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
.L338:
	cmpq	%r12, %r8
	jnb	.L317
	leaq	(%rbp,%rbp), %rax
.L307:
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
.L318:
	movdqu	(%rcx,%rax), %xmm0
	movdqu	16(%rcx,%rax), %xmm1
	addq	$1, %r11
	movdqu	28(%rcx,%rax), %xmm2
	movups	%xmm1, 16(%rdx,%rax)
	movups	%xmm0, (%rdx,%rax)
	movups	%xmm2, 28(%rdx,%rax)
	addq	$48, %rax
	cmpq	%r12, %r11
	jb	.L318
	subq	%r8, %rbx
	addq	$1, %r8
	xorl	%eax, %eax
	cmpq	%r8, %r12
	cmovb	%rax, %rbx
	leaq	1(%rbp,%rbx), %rbp
	jmp	.L317
	.p2align 4,,10
	.p2align 3
.L337:
	testq	%r13, %r13
	je	.L306
	movq	128(%rsp), %rax
	movq	40(%rax), %r9
	leaq	(%rbp,%rbp), %rax
	jmp	.L305
.L320:
	xorl	%r10d, %r10d
	jmp	.L312
.L303:
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
	jbe	.L342
	movl	$1, %edi
	cmpq	%rsi, %rdx
	jnb	.L342
	.p2align 4,,10
	.p2align 3
.L343:
	movq	%rdi, %rbp
	movq	%r14, %rbx
	addq	%rdi, %rdi
	subq	$1, %rbp
	.p2align 4,,10
	.p2align 3
.L345:
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
	jb	.L345
	cmpq	%r13, %rdi
	jb	.L343
.L342:
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
	jbe	.L370
	.p2align 4,,10
	.p2align 3
.L351:
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	addq	%rdi, %rdi
	subq	$1, %r12
	.p2align 4,,10
	.p2align 3
.L353:
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
	jb	.L353
	cmpq	%r13, %rdi
	jb	.L351
	movq	32(%rbp), %r8
	cmpq	$1, %r8
	jbe	.L370
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	movl	$1, %edi
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L355:
	leaq	1(%rdi), %r12
	addq	$1, %rsi
	cmpq	%r8, %r12
	jnb	.L378
.L367:
	movq	%r12, %rdi
.L361:
	movq	40(%rbp), %rcx
	leaq	(%rdi,%rdi,2), %rdx
	leaq	(%r14,%r14,2), %rax
	salq	$4, %rdx
	salq	$4, %rax
	movsd	16(%rcx,%rdx), %xmm0
	ucomisd	16(%rcx,%rax), %xmm0
	jp	.L369
	je	.L355
.L369:
	cmpq	$1, %rdi
	je	.L379
	cmpq	%rsi, %r14
	jnb	.L360
	movl	$1, %r12d
	.p2align 4,,10
	.p2align 3
.L359:
	movq	%r12, %r13
	movq	%r14, %rbx
	addq	%r12, %r12
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L358:
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
	jb	.L358
	cmpq	%rdi, %r12
	jb	.L359
	movq	32(%rbp), %r8
.L360:
	leaq	1(%rdi), %r12
	movq	%rdi, %r14
	addq	$1, %rsi
	cmpq	%r8, %r12
	jb	.L367
.L378:
	movl	$1, %esi
	cmpq	%rdi, %r14
	jnb	.L370
	.p2align 4,,10
	.p2align 3
.L362:
	movq	%rsi, %r13
	movq	%r14, %rbx
	addq	%rsi, %rsi
	subq	$1, %r13
	.p2align 4,,10
	.p2align 3
.L364:
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
	jb	.L364
	cmpq	%r12, %rsi
	jb	.L362
.L370:
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
.L379:
	movl	$1, %r14d
	jmp	.L355
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
	movzbl	24(%rax), %r9d
	movzbl	23(%rax), %r8d
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	movq	(%rcx), %rcx
	movzbl	22(%rax), %edx
	movzbl	25(%rax), %eax
	movq	16(%rcx), %rcx
	movl	%eax, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L383
	movq	(%rsi), %rax
	leaq	28(%rbx), %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	jne	.L384
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L383:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L384:
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
	movzbl	36(%rax), %r9d
	movzbl	35(%rax), %r8d
	movzbl	34(%rax), %r10d
	movq	%rdx, %rsi
	movzbl	33(%rax), %edx
	movq	%rcx, %rdi
	movq	(%rcx), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movq	64(%rax), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L393
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L394
	movq	(%rsi), %rdx
	movq	(%rdi), %rax
	movzbl	37(%rdx), %ecx
	movq	576(%rax), %r8
	movq	64(%rdx), %rdx
	cmpq	568(%rax), %rdx
	jnb	.L393
	movq	(%r8,%rdx,8), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L395
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	movsd	24(%rcx), %xmm0
	movq	576(%rax), %r8
	xorpd	.LC17(%rip), %xmm0
	movq	64(%rcx), %rcx
	cmpq	568(%rax), %rcx
	jnb	.L396
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
	jne	.L397
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L396:
	movq	%rcx, %rdx
.L393:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L397:
	leaq	.LC18(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L395:
	leaq	.LC16(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L394:
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
	movzbl	37(%rax), %r9d
	movzbl	36(%rax), %r8d
	movzbl	35(%rax), %r10d
	movq	%rdx, %rsi
	movzbl	33(%rax), %edx
	movq	%rcx, %rdi
	movq	(%rcx), %rcx
	negl	%edx
	andl	$2, %edx
	orl	%edx, %ebx
	movq	72(%rax), %rdx
	movq	96(%rax), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L406
	movq	(%rax,%rdx,8), %rcx
	movl	%r10d, %edx
	call	SDL_SetTextureColorMod
	testl	%eax, %eax
	jne	.L407
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	movq	72(%rax), %rdx
	movzbl	38(%rax), %r8d
	movq	96(%rax), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	576(%rcx), %rax
	cmpq	568(%rcx), %rdx
	jnb	.L406
	movq	(%rax,%rdx,8), %rcx
	movl	%r8d, %edx
	call	SDL_SetTextureAlphaMod
	testl	%eax, %eax
	jne	.L408
	movq	(%rsi), %rcx
	movq	(%rdi), %rax
	movzbl	%bl, %edx
	movq	72(%rcx), %r8
	movsd	24(%rcx), %xmm0
	movq	96(%rcx), %rcx
	xorpd	.LC17(%rip), %xmm0
	movq	(%rcx,%r8,8), %rcx
	movq	576(%rax), %r8
	cmpq	568(%rax), %rcx
	jnb	.L409
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
	jne	.L410
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L409:
	movq	%rcx, %rdx
.L406:
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L410:
	leaq	.LC21(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L408:
	leaq	.LC20(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L407:
	leaq	.LC19(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\12\0"
	.align 8
.LC23:
	.ascii "slay::engine.render.OpenFrame(): SDL_RenderClear() failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6render14RenderingStageEv
	.def	_ZN4slay6engine6render14RenderingStageEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render14RenderingStageEv
_ZN4slay6engine6render14RenderingStageEv:
.LFB8455:
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
	subq	$232, %rsp
	.seh_stackalloc	232
	movaps	%xmm6, 208(%rsp)
	.seh_savexmm	%xmm6, 208
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
	jne	.L450
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderClear
	testl	%eax, %eax
	jne	.L413
	movq	32(%rsi), %rcx
	testq	%rcx, %rcx
	je	.L430
	movq	40(%rsi), %rax
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	leaq	16(%rax), %rdx
	jmp	.L416
	.p2align 4,,10
	.p2align 3
.L452:
	addq	$1, %rbx
	addq	$48, %rdx
	cmpq	%rcx, %rbx
	je	.L451
.L416:
	movsd	(%rdx), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L452
	movq	%rbx, %rdi
	cmpq	%rcx, %rbx
	jnb	.L418
.L417:
	movq	.LC17(%rip), %xmm6
	leaq	64(%rsp), %r12
	leaq	140(%rsp), %rbp
	jmp	.L429
	.p2align 4,,10
	.p2align 3
.L454:
	testl	%edx, %edx
	je	.L453
	movdqu	(%rax), %xmm5
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movaps	%xmm5, 64(%rsp)
	movdqu	16(%rax), %xmm2
	movaps	%xmm2, 80(%rsp)
	movdqu	32(%rax), %xmm3
	movaps	%xmm3, 96(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
	movq	32(%rsi), %rcx
.L424:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jnb	.L428
.L455:
	movq	40(%rsi), %rax
.L429:
	leaq	(%rbx,%rbx,2), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L419
	jbe	.L454
	cmpl	$3, %edx
	jne	.L424
	movdqu	(%rax), %xmm3
	xorl	%r8d, %r8d
	movq	%rbp, %r9
	movaps	%xmm3, 112(%rsp)
	movdqu	16(%rax), %xmm4
	movq	112(%rsp), %rdx
	movaps	%xmm4, 128(%rsp)
	movdqu	32(%rax), %xmm5
	movq	(%rsi), %rax
	movq	96(%rdx), %r10
	movaps	%xmm5, 144(%rsp)
	movq	16(%rax), %rcx
	movzbl	33(%rdx), %eax
	negl	%eax
	andl	$2, %eax
	orb	32(%rdx), %al
	movq	$0, 40(%rsp)
	movzbl	%al, %eax
	movl	%eax, 48(%rsp)
	movsd	24(%rdx), %xmm0
	movq	%r10, %rdx
	xorpd	%xmm6, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L439
.L427:
	movq	32(%rsi), %rcx
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L455
.L428:
	testq	%rdi, %rdi
	je	.L430
	movq	40(%rsi), %rax
.L418:
	movq	.LC17(%rip), %xmm6
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	leaq	64(%rsp), %r13
	leaq	188(%rsp), %r12
	jmp	.L440
	.p2align 4,,10
	.p2align 3
.L457:
	testl	%edx, %edx
	je	.L456
	movdqu	(%rax), %xmm5
	movq	%r13, %rdx
	movq	%rsi, %rcx
	movaps	%xmm5, 64(%rsp)
	movdqu	16(%rax), %xmm1
	movaps	%xmm1, 80(%rsp)
	movdqu	32(%rax), %xmm2
	movaps	%xmm2, 96(%rsp)
	call	_ZN4slay6engine6render13RenderTextureENS1_5tokenE
.L436:
	addq	$1, %rbx
	addq	$48, %rbp
	cmpq	%rdi, %rbx
	je	.L430
	movq	40(%rsi), %rax
.L440:
	addq	%rbp, %rax
	movl	8(%rax), %edx
	cmpl	$2, %edx
	je	.L431
	jbe	.L457
	cmpl	$3, %edx
	jne	.L436
	movdqu	(%rax), %xmm1
	xorl	%r8d, %r8d
	movq	%r12, %r9
	movaps	%xmm1, 160(%rsp)
	movdqu	16(%rax), %xmm2
	movq	160(%rsp), %rdx
	movaps	%xmm2, 176(%rsp)
	movdqu	32(%rax), %xmm3
	movq	(%rsi), %rax
	movq	96(%rdx), %r10
	movaps	%xmm3, 192(%rsp)
	movq	16(%rax), %rcx
	movzbl	33(%rdx), %eax
	negl	%eax
	andl	$2, %eax
	orb	32(%rdx), %al
	movq	$0, 40(%rsp)
	movzbl	%al, %eax
	movl	%eax, 48(%rsp)
	movsd	24(%rdx), %xmm0
	movq	%r10, %rdx
	xorpd	%xmm6, %xmm0
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	je	.L436
.L439:
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0
	.p2align 4,,10
	.p2align 3
.L430:
	movq	(%rsi), %rax
	movq	16(%rax), %rcx
	call	SDL_RenderPresent
	nop
	movaps	208(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
	.p2align 3
.L419:
	movdqu	(%rax), %xmm4
	movq	%rsi, %rcx
	movq	%r12, %rdx
	movaps	%xmm4, 64(%rsp)
	movdqu	16(%rax), %xmm5
	movaps	%xmm5, 80(%rsp)
	movdqu	32(%rax), %xmm2
	movaps	%xmm2, 96(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	movq	32(%rsi), %rcx
	jmp	.L424
	.p2align 4,,10
	.p2align 3
.L453:
	movdqu	(%rax), %xmm2
	movq	(%rsi), %rcx
	movaps	%xmm2, 112(%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 128(%rsp)
	movdqu	32(%rax), %xmm4
	movq	112(%rsp), %rax
	movaps	%xmm4, 144(%rsp)
	movzbl	22(%rax), %edx
	movq	16(%rcx), %rcx
	movzbl	24(%rax), %r9d
	movzbl	23(%rax), %r8d
	movzbl	25(%rax), %eax
	movl	%eax, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L437
	movq	(%rsi), %rax
	movq	%rbp, %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	je	.L427
.L438:
	leaq	.LC14(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L431:
	movdqu	(%rax), %xmm3
	movq	%r13, %rdx
	movq	%rsi, %rcx
	movaps	%xmm3, 64(%rsp)
	movdqu	16(%rax), %xmm4
	movaps	%xmm4, 80(%rsp)
	movdqu	32(%rax), %xmm5
	movaps	%xmm5, 96(%rsp)
	call	_ZN4slay6engine6render14RenderFlipbookENS1_5tokenE
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L456:
	movdqu	(%rax), %xmm2
	movq	(%rsi), %rcx
	movaps	%xmm2, 160(%rsp)
	movdqu	16(%rax), %xmm3
	movaps	%xmm3, 176(%rsp)
	movdqu	32(%rax), %xmm4
	movq	160(%rsp), %rax
	movaps	%xmm4, 192(%rsp)
	movzbl	22(%rax), %edx
	movq	16(%rcx), %rcx
	movzbl	24(%rax), %r9d
	movzbl	23(%rax), %r8d
	movzbl	25(%rax), %eax
	movl	%eax, 32(%rsp)
	call	SDL_SetRenderDrawColor
	testl	%eax, %eax
	jne	.L437
	movq	(%rsi), %rax
	movq	%r12, %rdx
	movq	16(%rax), %rcx
	call	SDL_RenderFillRect
	testl	%eax, %eax
	je	.L436
	jmp	.L438
	.p2align 4,,10
	.p2align 3
.L451:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	.L417
.L437:
	leaq	.LC13(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L413:
	leaq	.LC23(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L450:
	leaq	.LC22(%rip), %rcx
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
	.globl	_ZN4slay6engine6render10RenderTextENS1_5tokenE
	.def	_ZN4slay6engine6render10RenderTextENS1_5tokenE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine6render10RenderTextENS1_5tokenE
_ZN4slay6engine6render10RenderTextENS1_5tokenE:
.LFB8459:
	subq	$72, %rsp
	.seh_stackalloc	72
	.seh_endprologue
	xorl	%r8d, %r8d
	movq	%rcx, %rax
	movq	(%rdx), %rcx
	leaq	28(%rdx), %r9
	movq	(%rax), %rax
	movq	96(%rcx), %r11
	movq	16(%rax), %r10
	movzbl	33(%rcx), %eax
	movq	%r11, %rdx
	negl	%eax
	andl	$2, %eax
	orb	32(%rcx), %al
	movq	$0, 40(%rsp)
	movzbl	%al, %eax
	movl	%eax, 48(%rsp)
	movsd	24(%rcx), %xmm0
	movq	%r10, %rcx
	xorpd	.LC17(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	call	SDL_RenderCopyEx
	testl	%eax, %eax
	jne	.L461
	xorl	%eax, %eax
	addq	$72, %rsp
	ret
.L461:
	call	_ZN4slay6engine6render10RenderTextENS1_5tokenE.part.0
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
