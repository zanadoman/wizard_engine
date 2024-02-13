	.file	"WZEEngine.cpp"
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
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.def	_ZN3wze6engineD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineD2Ev
_ZN3wze6engineD2Ev:
.LFB8460:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rsi
	leaq	32(%rsp), %rbx
	leaq	256(%rcx), %rcx
	movq	$0, 32(%rsp)
	leaq	320(%rsi), %rdi
	movq	%rbx, %rdx
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE
	movq	%rsi, %rcx
	call	_ZN3wze6engine6window5CloseEv
	call	SDLNet_Quit
	call	TTF_Quit
	call	Mix_CloseAudio
	call	Mix_Quit
	call	SDL_Quit
	movq	440(%rsi), %rcx
	call	free
	movq	384(%rsi), %rcx
	call	free
	movq	368(%rsi), %rcx
	call	free
	movq	352(%rsi), %rcx
	call	free
	movq	336(%rsi), %rcx
	call	free
	cmpq	$0, 296(%rsi)
	je	.L4
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	304(%rsi), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	296(%rsi), %rbx
	jb	.L5
.L4:
	movq	304(%rsi), %rcx
	call	free
	movq	272(%rsi), %rcx
	call	free
	leaq	176(%rsi), %rcx
	call	_ZN3wze6engine4keysD1Ev
	movq	72(%rsi), %rcx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8460:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8460-.LLSDACSB8460
.LLSDACSB8460:
.LLSDACSE8460:
	.text
	.seh_endproc
	.globl	_ZN3wze6engineD1Ev
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5SleepEj
	.def	_ZN3wze6engine5SleepEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5SleepEj
_ZN3wze6engine5SleepEj:
.LFB8463:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %ecx
	call	SDL_Delay
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.def	_ZN3wze6engine6RandomEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6RandomEii
_ZN3wze6engine6RandomEii:
.LFB8464:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %esi
	movl	%r8d, %ebx
	call	rand
	subl	%esi, %ebx
	cltd
	idivl	%ebx
	leal	(%rdx,%rsi), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine15UpdateFlipbooksEv
	.def	_ZN3wze6engine15UpdateFlipbooksEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine15UpdateFlipbooksEv
_ZN3wze6engine15UpdateFlipbooksEv:
.LFB8465:
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
	movq	264(%rcx), %rsi
	movq	%rcx, %r11
	cmpq	$1, %rsi
	jbe	.L28
	movq	272(%rcx), %rdi
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L12:
	movq	(%rdi,%r9,8), %r10
	testq	%r10, %r10
	je	.L25
	cmpq	264(%r11), %r9
	jnb	.L30
	movq	88(%r10), %rbx
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L23:
	cmpq	%rbx, %r8
	jnb	.L25
.L24:
	movq	96(%r10), %rax
	movq	(%rax,%r8,8), %rcx
	testq	%rcx, %rcx
	je	.L29
	cmpb	$0, 39(%rcx)
	jne	.L29
	movl	96(%rcx), %eax
	xorl	%edx, %edx
	addl	424(%r11), %eax
	divl	80(%rcx)
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	cmpq	264(%r11), %r9
	jnb	.L30
	cmpq	88(%r10), %r8
	jnb	.L31
	movq	104(%rcx), %rbp
	movl	%edx, 96(%rcx)
	cmpq	%rbp, %rax
	jnb	.L32
	addq	$1, %r8
	cmpq	%rbx, %r8
	jb	.L24
	.p2align 4,,10
	.p2align 3
.L25:
	addq	$1, %r9
	cmpq	%rsi, %r9
	jne	.L12
.L28:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	subq	$1, %rbp
	movq	%rbp, 88(%rcx)
	.p2align 4,,10
	.p2align 3
.L29:
	movq	264(%r11), %rax
.L16:
	addq	$1, %r8
	cmpq	%rax, %r9
	jb	.L23
.L30:
	leaq	.LC0(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L32:
	cmpb	$0, 38(%rcx)
	je	.L21
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 88(%rcx)
	movq	264(%r11), %rax
	jmp	.L16
.L31:
	leaq	.LC0(%rip), %rcx
	movq	%r8, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine18UpdateOverlapboxesEv
	.def	_ZN3wze6engine18UpdateOverlapboxesEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine18UpdateOverlapboxesEv
_ZN3wze6engine18UpdateOverlapboxesEv:
.LFB8466:
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
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movq	264(%rcx), %r8
	movq	%rcx, %r13
	cmpq	$1, %r8
	jbe	.L79
	movq	272(%rcx), %r9
	movl	$1, %r15d
	leaq	200(%rcx), %rbp
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L35:
	addq	$1, %r15
	cmpq	%r8, %r15
	jnb	.L79
.L34:
	movq	(%r9,%r15,8), %rax
	leaq	0(,%r15,8), %rsi
	testq	%rax, %rax
	je	.L35
	cmpq	$1, 152(%rax)
	jbe	.L35
	movsd	272(%rax), %xmm1
	movq	%rbp, %rcx
	call	_ZN3wze6engine5mouse4GetXEd
	movq	272(%r13), %rax
	movapd	%xmm0, %xmm6
	cmpq	264(%r13), %r15
	jnb	.L85
	movq	(%rax,%rsi), %rax
	movq	%rbp, %rcx
	movsd	272(%rax), %xmm1
	call	_ZN3wze6engine5mouse4GetYEd
	movq	264(%r13), %r8
	movq	272(%r13), %r9
	movapd	%xmm0, %xmm7
	cmpq	%r8, %r15
	jnb	.L85
	movl	$1, %ebx
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L83:
	xorl	%r12d, %r12d
.L40:
	cmpq	%r8, %r15
	jnb	.L85
	movq	(%r9,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L86
.L57:
	movq	(%rdx,%rdi), %rax
	movl	%r12d, 120(%rax)
.L39:
	addq	$1, %rbx
	cmpq	%r8, %r15
	jnb	.L85
.L37:
	movq	(%r9,%rsi), %rax
	cmpq	152(%rax), %rbx
	jnb	.L35
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %rdi
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L39
	movzwl	88(%rax), %ecx
	pxor	%xmm1, %xmm1
	movsd	40(%rax), %xmm0
	movsd	48(%rax), %xmm2
	movzwl	90(%rax), %eax
	movl	%ecx, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm0, %xmm6
	jb	.L83
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm1, %xmm0
	comisd	%xmm6, %xmm0
	jb	.L83
	movl	%eax, %edx
	pxor	%xmm0, %xmm0
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	comisd	%xmm1, %xmm7
	jb	.L83
	comisd	%xmm7, %xmm0
	jb	.L83
	leaq	176(%r13), %r14
	movl	$232, %edx
	movq	%r14, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L87
	movl	$11, 52(%rsp)
	movl	$43, %r12d
	movl	$35, %r9d
	movl	$3, %r10d
	movl	$75, 48(%rsp)
	movl	$67, %r11d
	movl	$83, %r8d
	movl	$51, 60(%rsp)
	movl	$19, 56(%rsp)
.L45:
	movl	$233, %edx
	movq	%r14, %rcx
	movl	%r9d, 44(%rsp)
	movl	%r10d, 40(%rsp)
	movl	%r8d, 36(%rsp)
	movl	%r11d, 32(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE
	movl	32(%rsp), %r11d
	movl	36(%rsp), %r8d
	testb	%al, %al
	movl	40(%rsp), %r10d
	movl	44(%rsp), %r9d
	je	.L88
.L48:
	movl	$234, %edx
	movq	%r14, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	movq	264(%r13), %r8
	movq	272(%r13), %r9
	testb	%al, %al
	jne	.L40
	cmpq	%r8, %r15
	jnb	.L85
	movq	(%r9,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L86
	movq	(%rdx,%rdi), %rax
	movl	52(%rsp), %r12d
	testb	$32, 120(%rax)
	cmovne	48(%rsp), %r12d
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L79:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L88:
	movq	272(%r13), %rax
	cmpq	264(%r13), %r15
	jnb	.L85
	movq	(%rax,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L86
	movq	(%rdx,%rdi), %rax
	testb	$8, 120(%rax)
	jne	.L69
	movl	%r10d, 52(%rsp)
	movl	%r9d, %r12d
	movl	%r11d, 48(%rsp)
	jmp	.L48
.L87:
	movq	272(%r13), %rax
	cmpq	264(%r13), %r15
	jnb	.L85
	movq	(%rax,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L86
	movq	(%rdx,%rdi), %rax
	movl	120(%rax), %eax
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%r12d, %r12d
	andl	$-4, %r12d
	addl	$45, %r12d
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$13, %ecx
	cmpl	$1, %eax
	movl	%ecx, 52(%rsp)
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$77, %ecx
	cmpl	$1, %eax
	sbbl	%r9d, %r9d
	movl	%ecx, 48(%rsp)
	andl	$-4, %r9d
	addl	$37, %r9d
	cmpl	$1, %eax
	sbbl	%r10d, %r10d
	andl	$-4, %r10d
	addl	$5, %r10d
	cmpl	$1, %eax
	sbbl	%r11d, %r11d
	andl	$-4, %r11d
	addl	$69, %r11d
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$53, %ecx
	cmpl	$1, %eax
	movl	%ecx, 60(%rsp)
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$21, %ecx
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	movl	%ecx, 56(%rsp)
	andl	$-4, %r8d
	addl	$85, %r8d
	jmp	.L45
.L69:
	movl	56(%rsp), %eax
	movl	60(%rsp), %r12d
	movl	%r8d, 48(%rsp)
	movl	%eax, 52(%rsp)
	jmp	.L48
.L85:
	leaq	.LC0(%rip), %rcx
	movq	%r15, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L86:
	leaq	.LC0(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC2:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6UpdateEv
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6UpdateEv
_ZN3wze6engine6UpdateEv:
.LFB8462:
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
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	%rcx, %rbx
	leaq	32(%rsp), %rbp
	call	SDL_GetTicks
	subl	404(%rbx), %eax
	leaq	80(%rbx), %rcx
	movl	%eax, 408(%rbx)
	call	_ZN3wze6engine6camera6UpdateEv
	leaq	32(%rbx), %rcx
	call	_ZN3wze6engine6render6UpdateEv
	call	SDL_GetTicks
	subl	408(%rbx), %eax
	subl	404(%rbx), %eax
	leaq	392(%rbx), %rcx
	movl	%eax, 412(%rbx)
	call	_ZN3wze6engine6timing6UpdateEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbx), %rcx
	call	SDL_GetWindowFlags
	movl	%eax, 28(%rbx)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L92:
	cmpq	%rax, %rdi
	jnb	.L104
	movdqa	32(%rsp), %xmm3
	addq	$1, %rdi
	movups	%xmm3, (%rcx,%rsi)
	movdqa	48(%rsp), %xmm4
	movups	%xmm4, 16(%rcx,%rsi)
	movdqa	64(%rsp), %xmm5
	movups	%xmm5, 32(%rcx,%rsi)
	movq	80(%rsp), %rax
	movq	%rax, 48(%rcx,%rsi)
	addq	$56, %rsi
.L90:
	movq	%rbp, %rcx
	call	SDL_PollEvent
	testl	%eax, %eax
	je	.L105
	cmpl	$256, 32(%rsp)
	je	.L102
	movq	432(%rbx), %rax
	movq	440(%rbx), %rcx
	cmpq	%rax, %rdi
	jne	.L92
	leaq	11(%rdi), %r12
	movq	%r12, 432(%rbx)
	leaq	0(,%r12,8), %rdx
	subq	%r12, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 440(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L106
	movq	432(%rbx), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r12, %rdx
	jb	.L92
	leaq	0(,%rdx,8), %r8
	leaq	-12(%rax), %r9
	subq	%rdx, %r8
	leaq	(%rcx,%r8,8), %rdx
	leaq	0(,%r9,8), %r8
	subq	%r9, %r8
	leaq	(%rcx,%r8,8), %rcx
	movdqu	(%rcx), %xmm3
	movups	%xmm3, (%rdx)
	movdqu	16(%rcx), %xmm4
	movups	%xmm4, 16(%rdx)
	movdqu	32(%rcx), %xmm5
	movups	%xmm5, 32(%rdx)
	movq	48(%rcx), %rcx
	movq	%rcx, 48(%rdx)
	leaq	-2(%rax), %rcx
	cmpq	%r12, %rcx
	jb	.L96
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L95:
	movq	440(%rbx), %rdx
	subq	$1, %rcx
	movdqu	(%rdx,%rax), %xmm0
	movdqu	16(%rdx,%rax), %xmm1
	movdqu	32(%rdx,%rax), %xmm2
	movq	48(%rdx,%rax), %r8
	movups	%xmm0, 616(%rdx,%rax)
	movq	%r8, 664(%rdx,%rax)
	movups	%xmm1, 632(%rdx,%rax)
	movups	%xmm2, 648(%rdx,%rax)
	subq	$56, %rax
	cmpq	%r12, %rcx
	jnb	.L95
.L96:
	movq	432(%rbx), %rax
	movq	440(%rbx), %rcx
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L105:
	movq	432(%rbx), %rsi
	cmpq	%rsi, %rdi
	jb	.L107
.L101:
	leaq	176(%rbx), %rcx
	call	_ZN3wze6engine4keys6UpdateEv
	leaq	200(%rbx), %rcx
	call	_ZN3wze6engine5mouse6UpdateEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine18UpdateOverlapboxesEv
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L102:
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	movq	%rdi, 432(%rbx)
	movq	440(%rbx), %rcx
	testq	%rdi, %rdi
	je	.L108
	leaq	0(,%rdi,8), %rdx
	subq	%rdi, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 440(%rbx)
	testq	%rax, %rax
	jne	.L101
	subq	%rdi, %rsi
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L108:
	call	free
	movq	$0, 440(%rbx)
	jmp	.L101
.L104:
	leaq	.LC0(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L106:
	leaq	.LC1(%rip), %rcx
	movl	$11, %r8d
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "Wizard Engine\0"
.LC4:
	.ascii "engine/icon.png\0"
	.align 8
.LC7:
	.ascii "wze::engine.engine(): TargetFrameTime must not be equal to 0\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.engine(): SDL_Init() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.engine(): Mix_Init() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.engine(): Mix_OpenAudio() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.engine(): TTF_Init() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC12:
	.ascii "wze::engine.engine(): SDLNet_Init() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
.LC14:
	.ascii "engine/logo.png\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.def	_ZN3wze6engineC2EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth
_ZN3wze6engineC2EPKcS2_tth:
.LFB8457:
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
	subq	$136, %rsp
	.seh_stackalloc	136
	movaps	%xmm6, 80(%rsp)
	.seh_savexmm	%xmm6, 80
	movaps	%xmm7, 96(%rsp)
	.seh_savexmm	%xmm7, 96
	movaps	%xmm8, 112(%rsp)
	.seh_savexmm	%xmm8, 112
	.seh_endprologue
	movl	240(%rsp), %edi
	movl	248(%rsp), %r15d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rcx, %rdx
	movq	%r8, %r13
	movl	%r9d, %ebp
.LEHB0:
	call	_ZN3wze6engine6windowC1EPS0_
	leaq	32(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine6renderC1EPS0_
.LEHE0:
	leaq	80(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB1:
	call	_ZN3wze6engine6cameraC1EPS0_
	leaq	160(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine5audioC1EPS0_
	leaq	176(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	call	_ZN3wze6engine4keysC1EPS0_
.LEHE1:
	leaq	200(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN3wze6engine5mouseC1EPS0_
	leaq	256(%rbx), %r14
	movq	%rbx, %rdx
	movq	%r14, %rcx
	call	_ZN3wze6engine6actorsC1EPS0_
.LEHE2:
	leaq	280(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB3:
	call	_ZN3wze6engine9collisionC1EPS0_
.LEHE3:
	leaq	312(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB4:
	call	_ZN3wze6engine6vectorC1EPS0_
.LEHE4:
	leaq	320(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, 64(%rsp)
.LEHB5:
	call	_ZN3wze6engine6assetsC1EPS0_
.LEHE5:
	leaq	392(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
.LEHB6:
	call	_ZN3wze6engine6timingC1EPS0_
.LEHE6:
	testq	%r12, %r12
	leaq	.LC3(%rip), %rax
	movq	$0, 432(%rbx)
	movq	$0, 440(%rbx)
	cmove	%rax, %r12
	testq	%r13, %r13
	leaq	.LC4(%rip), %rax
	cmove	%rax, %r13
	testb	%r15b, %r15b
	je	.L162
	movl	$62001, %ecx
.LEHB7:
	call	SDL_Init
	testl	%eax, %eax
	jne	.L163
	movl	$251, %ecx
	call	Mix_Init
	testl	%eax, %eax
	je	.L164
	movl	$2048, %r9d
	movl	$2, %r8d
	movl	$32784, %edx
	movl	$44100, %ecx
	call	Mix_OpenAudio
	testl	%eax, %eax
	jne	.L165
	call	TTF_Init
	testl	%eax, %eax
	jne	.L166
	call	SDLNet_Init
	testl	%eax, %eax
	jne	.L167
	xorl	%ecx, %ecx
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	call	srand
	movzwl	%di, %eax
	movzwl	%bp, %r9d
	movq	%r13, %r8
	movl	%eax, 32(%rsp)
	movq	%r12, %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine6window4OpenEPKcS3_tt
	leal	-1(%rbp), %eax
	shrw	%bp
	pxor	%xmm6, %xmm6
	xorl	%ecx, %ecx
	movzwl	%bp, %ebp
	movw	%ax, 40(%rbx)
	leal	-1(%rdi), %eax
	shrw	%di
	cvtsi2sdl	%ebp, %xmm6
	movzwl	%di, %edi
	pxor	%xmm7, %xmm7
	movw	%ax, 42(%rbx)
	cvtsi2sdl	%edi, %xmm7
	movq	.LC13(%rip), %xmm0
	movapd	%xmm6, %xmm2
	movapd	%xmm6, %xmm1
	xorpd	%xmm0, %xmm2
	xorpd	%xmm7, %xmm0
	unpcklpd	%xmm2, %xmm1
	movups	%xmm1, 104(%rbx)
	movapd	%xmm7, %xmm1
	unpcklpd	%xmm0, %xmm1
	movups	%xmm1, 120(%rbx)
	call	SDL_GetKeyboardState
	movq	%rax, 184(%rbx)
	movq	64(%rsp), %rcx
	leaq	.LC14(%rip), %rdx
	movb	%r15b, 400(%rbx)
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movl	%edi, 48(%rsp)
	movapd	%xmm6, %xmm3
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	$0x000000000, 56(%rsp)
	movq	%r14, %rcx
	movq	%rax, %rbp
	movl	%edi, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movzbl	%bpl, %ebp
	leaq	40(%rax), %rcx
	movq	%rax, %r12
	movq	%rbp, %rdx
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	pxor	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm7
	movq	%rax, %rdi
	movsd	.LC15(%rip), %xmm8
	movapd	%xmm0, %xmm6
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L122:
	movq	%rsi, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm8, %xmm1
	addsd	%xmm1, %xmm6
	comisd	%xmm6, %xmm7
	jb	.L155
	movapd	%xmm6, %xmm0
	call	round
.L128:
	cvttsd2sil	%xmm0, %eax
	movq	%rbx, %rcx
	movb	%al, 23(%rdi)
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L122
.L156:
	movq	200(%r12), %rdx
	movq	%r14, %rcx
	call	_ZN3wze6engine6actors6DeleteEy
	movq	64(%rsp), %rcx
	movq	%rbp, %rdx
	call	_ZN3wze6engine6assets13UnloadTextureEy
	nop
	movaps	80(%rsp), %xmm6
	movaps	96(%rsp), %xmm7
	movaps	112(%rsp), %xmm8
	addq	$136, %rsp
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
.L155:
	movapd	%xmm7, %xmm0
	movapd	%xmm7, %xmm6
	pxor	%xmm7, %xmm7
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L129:
	movq	%rsi, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm8, %xmm0
	subsd	%xmm0, %xmm6
	comisd	%xmm7, %xmm6
	jb	.L156
	movapd	%xmm6, %xmm0
	call	round
.L126:
	cvttsd2sil	%xmm0, %eax
	movq	%rbx, %rcx
	movb	%al, 23(%rdi)
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L129
	jmp	.L156
.L167:
	movzbl	%r15b, %r15d
	movzwl	%di, %edi
	movzwl	%bp, %r9d
	movq	%r13, %r8
	movl	%r15d, 40(%rsp)
	movq	%r12, %rdx
	leaq	.LC12(%rip), %rcx
	movl	%edi, 32(%rsp)
	call	_Z6printfPKcz
.L117:
	movl	$1, %ecx
	call	exit
.L166:
	movzbl	%r15b, %r15d
	movzwl	%di, %edi
	movzwl	%bp, %r9d
	movq	%r13, %r8
	movl	%r15d, 40(%rsp)
	movq	%r12, %rdx
	leaq	.LC11(%rip), %rcx
	movl	%edi, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L165:
	movzbl	%r15b, %r15d
	movzwl	%di, %edi
	movzwl	%bp, %r9d
	movq	%r13, %r8
	movl	%r15d, 40(%rsp)
	movq	%r12, %rdx
	leaq	.LC10(%rip), %rcx
	movl	%edi, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L164:
	movzbl	%r15b, %r15d
	movzwl	%di, %edi
	movzwl	%bp, %r9d
	movq	%r13, %r8
	movl	%r15d, 40(%rsp)
	movq	%r12, %rdx
	leaq	.LC9(%rip), %rcx
	movl	%edi, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L163:
	movzbl	%r15b, %r15d
	movzwl	%di, %edi
	movzwl	%bp, %r9d
	movq	%r13, %r8
	movl	%r15d, 40(%rsp)
	movq	%r12, %rdx
	leaq	.LC8(%rip), %rcx
	movl	%edi, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L162:
	xorl	%eax, %eax
	movzwl	%di, %edi
	movzwl	%bp, %r9d
	movq	%r13, %r8
	movl	%eax, 40(%rsp)
	movq	%r12, %rdx
	leaq	.LC7(%rip), %rcx
	movl	%edi, 32(%rsp)
	call	_Z6printfPKcz
.LEHE7:
	jmp	.L117
.L149:
	movq	%rax, %rsi
	jmp	.L134
.L148:
	movq	%rax, %rsi
	jmp	.L135
.L151:
	movq	%rax, %rsi
	jmp	.L137
.L150:
	movq	%rax, %rsi
	jmp	.L137
.L147:
	movq	%rax, %rsi
	jmp	.L139
.L146:
	movq	%rax, %rsi
	jmp	.L140
.L145:
	movq	%rax, %rsi
	jmp	.L141
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8457:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8457-.LLSDACSB8457
.LLSDACSB8457:
	.uleb128 .LEHB0-.LFB8457
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8457
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L145-.LFB8457
	.uleb128 0
	.uleb128 .LEHB2-.LFB8457
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L146-.LFB8457
	.uleb128 0
	.uleb128 .LEHB3-.LFB8457
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L147-.LFB8457
	.uleb128 0
	.uleb128 .LEHB4-.LFB8457
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L150-.LFB8457
	.uleb128 0
	.uleb128 .LEHB5-.LFB8457
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L151-.LFB8457
	.uleb128 0
	.uleb128 .LEHB6-.LFB8457
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L148-.LFB8457
	.uleb128 0
	.uleb128 .LEHB7-.LFB8457
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L149-.LFB8457
	.uleb128 0
.LLSDACSE8457:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engineC2EPKcS2_tth.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth.cold
	.seh_stackalloc	200
	.seh_savereg	%rbx, 136
	.seh_savereg	%rsi, 144
	.seh_savereg	%rdi, 152
	.seh_savereg	%rbp, 160
	.seh_savexmm	%xmm6, 80
	.seh_savexmm	%xmm7, 96
	.seh_savereg	%r12, 168
	.seh_savereg	%r13, 176
	.seh_savereg	%r14, 184
	.seh_savereg	%r15, 192
	.seh_savexmm	%xmm8, 112
	.seh_endprologue
_ZN3wze6engineC2EPKcS2_tth.cold:
.L134:
	movq	440(%rbx), %rcx
	call	free
.L135:
	movq	384(%rbx), %rcx
	xorl	%edi, %edi
	call	free
	movq	368(%rbx), %rcx
	call	free
	movq	352(%rbx), %rcx
	call	free
	movq	336(%rbx), %rcx
	call	free
.L136:
	movq	304(%rbx), %rcx
	cmpq	296(%rbx), %rdi
	jb	.L138
	call	free
.L139:
	movq	272(%rbx), %rcx
	call	free
.L140:
	movq	72(%rsp), %rcx
	call	_ZN3wze6engine4keysD1Ev
.L141:
	movq	72(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB8:
	call	_Unwind_Resume
.LEHE8:
.L137:
	xorl	%edi, %edi
	jmp	.L136
.L138:
	movq	%rdi, %rax
	addq	$1, %rdi
	salq	$4, %rax
	movq	8(%rcx,%rax), %rcx
	call	free
	jmp	.L136
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8457:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8457-.LLSDACSBC8457
.LLSDACSBC8457:
	.uleb128 .LEHB8-.LCOLDB16
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC8457:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE16:
	.text
.LHOTE16:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.section .rdata,"dr"
	.align 8
.LC6:
	.long	0
	.long	1081073664
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC15:
	.long	-1717986918
	.long	1069128089
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window5CloseEv;	.scl	2;	.type	32;	.endef
	.def	SDLNet_Quit;	.scl	2;	.type	32;	.endef
	.def	TTF_Quit;	.scl	2;	.type	32;	.endef
	.def	Mix_CloseAudio;	.scl	2;	.type	32;	.endef
	.def	Mix_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysD1Ev;	.scl	2;	.type	32;	.endef
	.def	SDL_Delay;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse4GetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	SDL_GetTicks;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6render6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	SDL_GetWindowFlags;	.scl	2;	.type	32;	.endef
	.def	SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keys6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouse6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6windowC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6renderC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6cameraC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5audioC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5mouseC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine9collisionC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vectorC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assetsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timingC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	TTF_Init;	.scl	2;	.type	32;	.endef
	.def	SDLNet_Init;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window4OpenEPKcS3_tt;	.scl	2;	.type	32;	.endef
	.def	SDL_GetKeyboardState;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12textureboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
