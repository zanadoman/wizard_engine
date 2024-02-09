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
.LFB8453:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	32(%rsp), %rsi
	movq	%rcx, %rbx
	leaq	304(%rcx), %rcx
	movq	$0, 32(%rsp)
	movq	%rsi, %rdx
	leaq	328(%rbx), %rdi
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE
	leaq	240(%rbx), %rcx
	movq	%rsi, %rdx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE
	movq	%rsi, %rdx
	movq	%rdi, %rcx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	call	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE
	movq	%rbx, %rcx
	call	_ZN3wze6engine6window5CloseEv
	call	TTF_Quit
	call	Mix_CloseAudio
	call	Mix_Quit
	call	SDL_Quit
	movq	448(%rbx), %rcx
	call	free
	movq	392(%rbx), %rcx
	call	free
	movq	376(%rbx), %rcx
	call	free
	movq	360(%rbx), %rcx
	call	free
	movq	344(%rbx), %rcx
	call	free
	movq	320(%rbx), %rcx
	call	free
	cmpq	$0, 280(%rbx)
	je	.L4
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rsi, %rax
	addq	$1, %rsi
	salq	$4, %rax
	addq	288(%rbx), %rax
	movq	8(%rax), %rcx
	call	free
	cmpq	280(%rbx), %rsi
	jb	.L5
.L4:
	movq	288(%rbx), %rcx
	call	free
	movq	256(%rbx), %rcx
	call	free
	leaq	160(%rbx), %rcx
	call	_ZN3wze6engine4keysD1Ev
	movq	72(%rbx), %rcx
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	free
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8453:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8453-.LLSDACSB8453
.LLSDACSB8453:
.LLSDACSE8453:
	.text
	.seh_endproc
	.globl	_ZN3wze6engineD1Ev
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.def	_ZN3wze6engine6RandomEii;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine6RandomEii
_ZN3wze6engine6RandomEii:
.LFB8456:
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
.LFB8457:
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
	movq	248(%rcx), %rsi
	movq	%rcx, %r11
	cmpq	$1, %rsi
	jbe	.L27
	movq	256(%rcx), %rdi
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L11:
	movq	(%rdi,%r9,8), %r10
	testq	%r10, %r10
	je	.L24
	cmpq	248(%r11), %r9
	jnb	.L29
	movq	88(%r10), %rbx
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L22:
	cmpq	%rbx, %r8
	jnb	.L24
.L23:
	movq	96(%r10), %rax
	movq	(%rax,%r8,8), %rcx
	testq	%rcx, %rcx
	je	.L28
	cmpb	$0, 39(%rcx)
	jne	.L28
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	432(%r11), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	248(%r11), %r9
	jnb	.L29
	cmpq	88(%r10), %r8
	jnb	.L30
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L31
	addq	$1, %r8
	cmpq	%rbx, %r8
	jb	.L23
	.p2align 4,,10
	.p2align 3
.L24:
	addq	$1, %r9
	cmpq	%rsi, %r9
	jne	.L11
.L27:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	248(%r11), %rax
.L15:
	addq	$1, %r8
	cmpq	%rax, %r9
	jb	.L22
.L29:
	leaq	.LC0(%rip), %rcx
	movq	%r9, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L31:
	cmpb	$0, 38(%rcx)
	je	.L20
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	248(%r11), %rax
	jmp	.L15
.L30:
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
.LFB8458:
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
	movq	248(%rcx), %r8
	movq	%rcx, %r13
	cmpq	$1, %r8
	jbe	.L78
	movq	256(%rcx), %r9
	movl	$1, %r15d
	leaq	184(%rcx), %rbp
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$1, %r15
	cmpq	%r8, %r15
	jnb	.L78
.L33:
	movq	(%r9,%r15,8), %rax
	leaq	0(,%r15,8), %rsi
	testq	%rax, %rax
	je	.L34
	cmpq	$1, 152(%rax)
	jbe	.L34
	movsd	264(%rax), %xmm1
	movq	%rbp, %rcx
	call	_ZN3wze6engine5mouse4GetXEd
	movq	256(%r13), %rax
	movapd	%xmm0, %xmm6
	cmpq	248(%r13), %r15
	jnb	.L84
	movq	(%rax,%rsi), %rax
	movq	%rbp, %rcx
	movsd	264(%rax), %xmm1
	call	_ZN3wze6engine5mouse4GetYEd
	movq	248(%r13), %r8
	movq	256(%r13), %r9
	movapd	%xmm0, %xmm7
	cmpq	%r8, %r15
	jnb	.L84
	movl	$1, %ebx
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L82:
	xorl	%r12d, %r12d
.L39:
	cmpq	%r8, %r15
	jnb	.L84
	movq	(%r9,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L85
.L56:
	movq	(%rdx,%rdi), %rax
	movl	%r12d, 112(%rax)
.L38:
	addq	$1, %rbx
	cmpq	%r8, %r15
	jnb	.L84
.L36:
	movq	(%r9,%rsi), %rax
	cmpq	152(%rax), %rbx
	jnb	.L34
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %rdi
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L38
	movzwl	80(%rax), %ecx
	pxor	%xmm1, %xmm1
	movsd	32(%rax), %xmm0
	movsd	40(%rax), %xmm2
	movzwl	82(%rax), %eax
	movl	%ecx, %edx
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm0, %xmm6
	jb	.L82
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm1, %xmm0
	comisd	%xmm6, %xmm0
	jb	.L82
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
	jb	.L82
	comisd	%xmm7, %xmm0
	jb	.L82
	leaq	160(%r13), %r14
	movl	$232, %edx
	movq	%r14, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	je	.L86
	movl	$11, 48(%rsp)
	movl	$43, %r12d
	movl	$35, %r9d
	movl	$3, %r10d
	movl	$75, 52(%rsp)
	movl	$67, %r11d
	movl	$83, %r8d
	movl	$51, 56(%rsp)
	movl	$19, 60(%rsp)
.L44:
	movl	$233, %edx
	movq	%r14, %rcx
	movl	%r10d, 44(%rsp)
	movl	%r11d, 40(%rsp)
	movl	%r8d, 36(%rsp)
	movl	%r9d, 32(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE
	movl	32(%rsp), %r9d
	movl	36(%rsp), %r8d
	testb	%al, %al
	movl	40(%rsp), %r11d
	movl	44(%rsp), %r10d
	je	.L87
.L47:
	movl	$234, %edx
	movq	%r14, %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	movq	248(%r13), %r8
	movq	256(%r13), %r9
	testb	%al, %al
	jne	.L39
	cmpq	%r8, %r15
	jnb	.L84
	movq	(%r9,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L85
	movq	(%rdx,%rdi), %rax
	movl	48(%rsp), %r12d
	testb	$32, 112(%rax)
	cmovne	52(%rsp), %r12d
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L78:
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
.L87:
	movq	256(%r13), %rax
	cmpq	248(%r13), %r15
	jnb	.L84
	movq	(%rax,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L85
	movq	(%rdx,%rdi), %rax
	testb	$8, 112(%rax)
	jne	.L68
	movl	%r10d, 48(%rsp)
	movl	%r9d, %r12d
	movl	%r11d, 52(%rsp)
	jmp	.L47
.L86:
	movq	256(%r13), %rax
	cmpq	248(%r13), %r15
	jnb	.L84
	movq	(%rax,%rsi), %rax
	movq	160(%rax), %rdx
	cmpq	152(%rax), %rbx
	jnb	.L85
	movq	(%rdx,%rdi), %rax
	movl	112(%rax), %eax
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
	movl	%ecx, 48(%rsp)
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$77, %ecx
	cmpl	$1, %eax
	sbbl	%r9d, %r9d
	movl	%ecx, 52(%rsp)
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
	movl	%ecx, 56(%rsp)
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$21, %ecx
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	movl	%ecx, 60(%rsp)
	andl	$-4, %r8d
	addl	$85, %r8d
	jmp	.L44
.L68:
	movl	60(%rsp), %eax
	movl	56(%rsp), %r12d
	movl	%r8d, 52(%rsp)
	movl	%eax, 48(%rsp)
	jmp	.L47
.L84:
	leaq	.LC0(%rip), %rcx
	movq	%r15, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L85:
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
.LFB8455:
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
	subl	412(%rbx), %eax
	leaq	80(%rbx), %rcx
	movl	%eax, 416(%rbx)
	call	_ZN3wze6engine6camera6UpdateEv
	leaq	32(%rbx), %rcx
	call	_ZN3wze6engine6render6UpdateEv
	call	SDL_GetTicks
	subl	416(%rbx), %eax
	subl	412(%rbx), %eax
	leaq	400(%rbx), %rcx
	movl	%eax, 420(%rbx)
	call	_ZN3wze6engine6timing6UpdateEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbx), %rcx
	call	SDL_GetWindowFlags
	movl	%eax, 28(%rbx)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L91:
	cmpq	%rax, %rdi
	jnb	.L103
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
.L89:
	movq	%rbp, %rcx
	call	SDL_PollEvent
	testl	%eax, %eax
	je	.L104
	cmpl	$256, 32(%rsp)
	je	.L101
	movq	440(%rbx), %rax
	movq	448(%rbx), %rcx
	cmpq	%rax, %rdi
	jne	.L91
	leaq	11(%rdi), %r12
	movq	%r12, 440(%rbx)
	leaq	0(,%r12,8), %rdx
	subq	%r12, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 448(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L105
	movq	440(%rbx), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r12, %rdx
	jb	.L91
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
	jb	.L95
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L94:
	movq	448(%rbx), %rdx
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
	jnb	.L94
.L95:
	movq	440(%rbx), %rax
	movq	448(%rbx), %rcx
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L104:
	movq	440(%rbx), %rsi
	cmpq	%rsi, %rdi
	jb	.L106
.L100:
	leaq	160(%rbx), %rcx
	call	_ZN3wze6engine4keys6UpdateEv
	leaq	184(%rbx), %rcx
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
.L101:
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
.L106:
	movq	%rdi, 440(%rbx)
	movq	448(%rbx), %rcx
	testq	%rdi, %rdi
	je	.L107
	leaq	0(,%rdi,8), %rdx
	subq	%rdi, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 448(%rbx)
	testq	%rax, %rax
	jne	.L100
	subq	%rdi, %rsi
	leaq	.LC2(%rip), %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L107:
	call	free
	movq	$0, 448(%rbx)
	jmp	.L100
.L103:
	leaq	.LC0(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L105:
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
	.ascii "engine/wizard.png\0"
	.align 8
.LC6:
	.ascii "wze::engine.engine(): TargetFrameTime must not be equal to 0\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC7:
	.ascii "wze::engine.engine(): SDL_Init() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.engine(): Mix_Init() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.engine(): Mix_OpenAudio() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.engine(): TTF_Init() failed\12Params: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.def	_ZN3wze6engineC2EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth
_ZN3wze6engineC2EPKcS2_tth:
.LFB8450:
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
	movl	240(%rsp), %ebp
	movl	248(%rsp), %r15d
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rcx, %rdx
	movq	%r8, %r14
	movl	%r9d, %r12d
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
	leaq	144(%rbx), %rcx
	movq	%rbx, %rdx
	call	_ZN3wze6engine5audioC1EPS0_
	leaq	160(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
	call	_ZN3wze6engine4keysC1EPS0_
.LEHE1:
	leaq	184(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN3wze6engine5mouseC1EPS0_
	leaq	240(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actorsC1EPS0_
.LEHE2:
	leaq	264(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB3:
	call	_ZN3wze6engine9collisionC1EPS0_
.LEHE3:
	leaq	296(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB4:
	call	_ZN3wze6engine6vectorC1EPS0_
.LEHE4:
	leaq	304(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB5:
	call	_ZN3wze6engine7threadsC1EPS0_
.LEHE5:
	leaq	328(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, 64(%rsp)
.LEHB6:
	call	_ZN3wze6engine6assetsC1EPS0_
.LEHE6:
	leaq	400(%rbx), %rdi
	movq	%rbx, %rdx
	movq	%rdi, %rcx
.LEHB7:
	call	_ZN3wze6engine6timingC1EPS0_
.LEHE7:
	testq	%r13, %r13
	leaq	.LC3(%rip), %rax
	movq	$0, 440(%rbx)
	movq	$0, 448(%rbx)
	cmove	%rax, %r13
	testq	%r14, %r14
	leaq	.LC4(%rip), %rax
	cmove	%rax, %r14
	testb	%r15b, %r15b
	je	.L163
	movl	$62001, %ecx
.LEHB8:
	call	SDL_Init
	testl	%eax, %eax
	jne	.L164
	movl	$251, %ecx
	call	Mix_Init
	testl	%eax, %eax
	je	.L165
	movl	$2048, %r9d
	movl	$2, %r8d
	movl	$32784, %edx
	movl	$44100, %ecx
	call	Mix_OpenAudio
	testl	%eax, %eax
	jne	.L166
	call	TTF_Init
	movl	%eax, %edx
	movzwl	%r12w, %r9d
	movzwl	%bp, %eax
	testl	%edx, %edx
	jne	.L167
	movl	%eax, 32(%rsp)
	movq	%r14, %r8
	movq	%r13, %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine6window4OpenEPKcS3_tt
	leal	-1(%r12), %eax
	shrw	%r12w
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movw	%ax, 40(%rbx)
	leal	-1(%rbp), %eax
	shrw	%bp
	movzwl	%r12w, %r12d
	movzwl	%bp, %ebp
	movd	%r12d, %xmm1
	movw	%ax, 42(%rbx)
	movd	%ebp, %xmm2
	punpckldq	%xmm2, %xmm1
	psubd	%xmm1, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, 104(%rbx)
	call	SDL_GetKeyboardState
	movq	%rax, 168(%rbx)
	xorl	%ecx, %ecx
	movb	%r15b, 408(%rbx)
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	call	srand
	movq	64(%rsp), %rcx
	leaq	.LC4(%rip), %rdx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	movl	%ebp, 48(%rsp)
	xorl	%r8d, %r8d
	cvtsi2sdl	%ebp, %xmm0
	movl	%ebp, 40(%rsp)
	xorl	%edx, %edx
	movq	%rsi, %rcx
	cvtsi2sdl	%r12d, %xmm3
	movq	%rax, %r14
	movq	$0x000000000, 56(%rsp)
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movzbl	%al, %r12d
	movq	%rsi, %rcx
	movq	%r12, %rdx
	call	_ZN3wze6engine6actorsixEy
	movzbl	%r14b, %r14d
	leaq	40(%rax), %rcx
	movq	%r14, %rdx
	call	_ZN3wze6engine6actors5actor8textures3NewEy
	movq	%r12, %rdx
	movq	%rsi, %rcx
	movq	%rax, %rbp
	call	_ZN3wze6engine6actorsixEy
	movzbl	%bpl, %ebp
	leaq	40(%rax), %rcx
	movq	%rbp, %rdx
	call	_ZN3wze6engine6actors5actor8texturesixEy
	movb	$0, 23(%rax)
	movsd	.LC11(%rip), %xmm7
	pxor	%xmm6, %xmm6
	movsd	.LC12(%rip), %xmm8
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L125:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	je	.L161
	movapd	%xmm6, %xmm0
	call	round
	movq	%r12, %rdx
	movq	%rsi, %rcx
	cvttsd2sil	%xmm0, %r13d
	call	_ZN3wze6engine6actorsixEy
	leaq	40(%rax), %rcx
	movq	%rbp, %rdx
	call	_ZN3wze6engine6actors5actor8texturesixEy
	movb	%r13b, 23(%rax)
.L120:
	movq	%rdi, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm7, %xmm0
	addsd	%xmm0, %xmm6
	comisd	%xmm6, %xmm8
	jnb	.L125
	pxor	%xmm8, %xmm8
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L130:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	je	.L161
	movapd	%xmm6, %xmm0
	call	round
	movq	%r12, %rdx
	movq	%rsi, %rcx
	cvttsd2sil	%xmm0, %r13d
	call	_ZN3wze6engine6actorsixEy
	leaq	40(%rax), %rcx
	movq	%rbp, %rdx
	call	_ZN3wze6engine6actors5actor8texturesixEy
	movb	%r13b, 23(%rax)
.L126:
	movq	%rdi, %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm7, %xmm0
	subsd	%xmm0, %xmm6
	comisd	%xmm8, %xmm6
	jnb	.L130
.L161:
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actorsixEy
	leaq	40(%rax), %rcx
	movq	%rbp, %rdx
	call	_ZN3wze6engine6actors5actor8textures6DeleteEy
	movq	%r12, %rdx
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors6DeleteEy
	movq	64(%rsp), %rcx
	movq	%r14, %rdx
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
.L163:
	xorl	%eax, %eax
	movzwl	%bp, %ebp
	movzwl	%r12w, %r9d
	movq	%r14, %r8
	movl	%eax, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC6(%rip), %rcx
	movl	%ebp, 32(%rsp)
	call	_Z6printfPKcz
.L116:
	movl	$1, %ecx
	call	exit
.L167:
	movzbl	%r15b, %r15d
	movl	%eax, 32(%rsp)
	movq	%r14, %r8
	movq	%r13, %rdx
	movl	%r15d, 40(%rsp)
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L116
.L166:
	movzbl	%r15b, %r15d
	movzwl	%bp, %ebp
	movzwl	%r12w, %r9d
	movq	%r14, %r8
	movl	%r15d, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC9(%rip), %rcx
	movl	%ebp, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L116
.L165:
	movzbl	%r15b, %r15d
	movzwl	%bp, %ebp
	movzwl	%r12w, %r9d
	movq	%r14, %r8
	movl	%r15d, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC8(%rip), %rcx
	movl	%ebp, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L116
.L164:
	movzbl	%r15b, %r15d
	movzwl	%bp, %ebp
	movzwl	%r12w, %r9d
	movq	%r14, %r8
	movl	%r15d, 40(%rsp)
	movq	%r13, %rdx
	leaq	.LC7(%rip), %rcx
	movl	%ebp, 32(%rsp)
	call	_Z6printfPKcz
.LEHE8:
	jmp	.L116
.L142:
	movq	%rax, %rsi
	jmp	.L139
.L147:
	movq	%rax, %rsi
	jmp	.L131
.L144:
	movq	%rax, %rsi
	jmp	.L137
.L143:
	movq	%rax, %rsi
	jmp	.L138
.L146:
	movq	%rax, %rsi
	jmp	.L132
.L145:
	movq	%rax, %rsi
	jmp	.L133
.L149:
	movq	%rax, %rsi
	jmp	.L135
.L148:
	movq	%rax, %rsi
	jmp	.L135
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8450:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8450-.LLSDACSB8450
.LLSDACSB8450:
	.uleb128 .LEHB0-.LFB8450
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8450
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L142-.LFB8450
	.uleb128 0
	.uleb128 .LEHB2-.LFB8450
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L143-.LFB8450
	.uleb128 0
	.uleb128 .LEHB3-.LFB8450
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L144-.LFB8450
	.uleb128 0
	.uleb128 .LEHB4-.LFB8450
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L148-.LFB8450
	.uleb128 0
	.uleb128 .LEHB5-.LFB8450
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L149-.LFB8450
	.uleb128 0
	.uleb128 .LEHB6-.LFB8450
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L145-.LFB8450
	.uleb128 0
	.uleb128 .LEHB7-.LFB8450
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L146-.LFB8450
	.uleb128 0
	.uleb128 .LEHB8-.LFB8450
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L147-.LFB8450
	.uleb128 0
.LLSDACSE8450:
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
.L131:
	movq	448(%rbx), %rcx
	call	free
.L132:
	movq	392(%rbx), %rcx
	call	free
	movq	376(%rbx), %rcx
	call	free
	movq	360(%rbx), %rcx
	call	free
	movq	344(%rbx), %rcx
	call	free
.L133:
	movq	320(%rbx), %rcx
	xorl	%edi, %edi
	call	free
.L134:
	movq	288(%rbx), %rcx
	cmpq	280(%rbx), %rdi
	jb	.L136
	call	free
.L137:
	movq	256(%rbx), %rcx
	call	free
.L138:
	movq	72(%rsp), %rcx
	call	_ZN3wze6engine4keysD1Ev
.L139:
	movq	72(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L136:
	movq	%rdi, %rax
	addq	$1, %rdi
	salq	$4, %rax
	movq	8(%rcx,%rax), %rcx
	call	free
	jmp	.L134
.L135:
	xorl	%edi, %edi
	jmp	.L134
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8450:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8450-.LLSDACSBC8450
.LLSDACSBC8450:
	.uleb128 .LEHB9-.LCOLDB13
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSEC8450:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE13:
	.text
.LHOTE13:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.section .rdata,"dr"
	.align 8
.LC11:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC12:
	.long	0
	.long	1081073664
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window5CloseEv;	.scl	2;	.type	32;	.endef
	.def	TTF_Quit;	.scl	2;	.type	32;	.endef
	.def	Mix_CloseAudio;	.scl	2;	.type	32;	.endef
	.def	Mix_Quit;	.scl	2;	.type	32;	.endef
	.def	SDL_Quit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysD1Ev;	.scl	2;	.type	32;	.endef
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
	.def	_ZN3wze6engine7threadsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assetsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timingC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	TTF_Init;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window4OpenEPKcS3_tt;	.scl	2;	.type	32;	.endef
	.def	SDL_GetKeyboardState;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8texturesixEy;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8textures6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets13UnloadTextureEy;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
