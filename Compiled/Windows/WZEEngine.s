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
.LFB6911:
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
.LLSDA6911:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6911-.LLSDACSB6911
.LLSDACSB6911:
.LLSDACSE6911:
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
.LFB6914:
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
.LFB6915:
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
.LFB6916:
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
	jbe	.L28
	movq	256(%rcx), %rdi
	movl	$1, %r9d
	.p2align 4,,10
	.p2align 3
.L12:
	movq	(%rdi,%r9,8), %r10
	testq	%r10, %r10
	je	.L25
	cmpq	248(%r11), %r9
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
	addl	432(%r11), %eax
	divl	80(%rcx)
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	cmpq	248(%r11), %r9
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
	movq	248(%r11), %rax
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
	movq	248(%r11), %rax
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
.LFB6917:
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
	jbe	.L79
	movq	256(%rcx), %r9
	movl	$1, %r15d
	leaq	184(%rcx), %rbp
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
	movq	256(%r13), %rax
	movapd	%xmm0, %xmm6
	cmpq	248(%r13), %r15
	jnb	.L85
	movq	(%rax,%rsi), %rax
	movq	%rbp, %rcx
	movsd	272(%rax), %xmm1
	call	_ZN3wze6engine5mouse4GetYEd
	movq	248(%r13), %r8
	movq	256(%r13), %r9
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
	leaq	160(%r13), %r14
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
	movq	248(%r13), %r8
	movq	256(%r13), %r9
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
	movq	256(%r13), %rax
	cmpq	248(%r13), %r15
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
	movq	256(%r13), %rax
	cmpq	248(%r13), %r15
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
.LFB6913:
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
	movq	440(%rbx), %rax
	movq	448(%rbx), %rcx
	cmpq	%rax, %rdi
	jne	.L92
	leaq	11(%rdi), %r12
	movq	%r12, 440(%rbx)
	leaq	0(,%r12,8), %rdx
	subq	%r12, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 448(%rbx)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L106
	movq	440(%rbx), %rax
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
	jnb	.L95
.L96:
	movq	440(%rbx), %rax
	movq	448(%rbx), %rcx
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L105:
	movq	440(%rbx), %rsi
	cmpq	%rsi, %rdi
	jb	.L107
.L101:
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
	movq	%rdi, 440(%rbx)
	movq	448(%rbx), %rcx
	testq	%rdi, %rdi
	je	.L108
	leaq	0(,%rdi,8), %rdx
	subq	%rdi, %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 448(%rbx)
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
	movq	$0, 448(%rbx)
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
	.ascii "engine/wizard.png\0"
	.align 8
.LC5:
	.ascii "neo::array(): Memory allocation failed\12Params: Length: %lld\12\0"
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
.LC12:
	.ascii ".png\0"
.LC13:
	.ascii "engine/logo/logo\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.def	_ZN3wze6engineC2EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth
_ZN3wze6engineC2EPKcS2_tth:
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
	subq	$232, %rsp
	.seh_stackalloc	232
	.seh_endprologue
	movl	336(%rsp), %r13d
	movl	344(%rsp), %r12d
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	%r8, %rbp
	movl	%r9d, %esi
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
	movq	%rax, 120(%rsp)
	call	_ZN3wze6engine4keysC1EPS0_
.LEHE1:
	leaq	184(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN3wze6engine5mouseC1EPS0_
	leaq	240(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, 104(%rsp)
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
	movq	%rax, 80(%rsp)
.LEHB6:
	call	_ZN3wze6engine6assetsC1EPS0_
.LEHE6:
	leaq	400(%rbx), %rcx
	movq	%rbx, %rdx
.LEHB7:
	call	_ZN3wze6engine6timingC1EPS0_
.LEHE7:
	movq	$0, 440(%rbx)
	movl	$240, %ecx
	movq	$0, 448(%rbx)
	movq	$30, 192(%rsp)
	call	malloc
	movq	%rax, 200(%rsp)
	testq	%rax, %rax
	je	.L162
	leaq	208(%rsp), %rax
	movq	%rax, %rcx
	movq	%rax, 72(%rsp)
.LEHB8:
	call	_ZN3neo6stringC1Ev
.LEHE8:
	testq	%rdi, %rdi
	leaq	.LC3(%rip), %rax
	cmove	%rax, %rdi
	testq	%rbp, %rbp
	leaq	.LC4(%rip), %rax
	cmove	%rax, %rbp
	testb	%r12b, %r12b
	je	.L163
	movl	$62001, %ecx
.LEHB9:
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
	movzwl	%si, %r9d
	movzwl	%r13w, %eax
	testl	%edx, %edx
	jne	.L167
	movl	%eax, 32(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	_ZN3wze6engine6window4OpenEPKcS3_tt
	leal	-1(%rsi), %eax
	shrw	%si
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movw	%ax, 40(%rbx)
	leal	-1(%r13), %eax
	shrw	%r13w
	movzwl	%r13w, %edi
	movw	%ax, 42(%rbx)
	movzwl	%si, %eax
	movd	%eax, %xmm1
	movd	%edi, %xmm2
	movl	%eax, 112(%rsp)
	punpckldq	%xmm2, %xmm1
	movl	%edi, 116(%rsp)
	psubd	%xmm1, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, 104(%rbx)
	call	SDL_GetKeyboardState
	movq	%rax, 168(%rbx)
	xorl	%ecx, %ecx
	movb	%r12b, 408(%rbx)
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	call	srand
	cmpq	$0, 192(%rsp)
	je	.L125
	leaq	168(%rsp), %rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%rax, 88(%rsp)
	leaq	128(%rsp), %rax
	leaq	.LC12(%rip), %r14
	movq	%rax, 96(%rsp)
	leaq	184(%rsp), %r13
	leaq	176(%rsp), %r12
	leaq	.LC13(%rip), %r15
	leaq	144(%rsp), %rbp
	.p2align 4,,10
	.p2align 3
.L122:
	leaq	1(%rsi), %rax
	movq	72(%rsp), %rcx
	movq	%rbp, %rdx
	movq	%r14, 184(%rsp)
	movq	%rax, 176(%rsp)
	movq	88(%rsp), %rax
	movq	%r15, 168(%rsp)
	movq	%rax, 144(%rsp)
	movq	$1, 152(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE
	movq	96(%rsp), %rdx
	movq	%rax, %rcx
	movq	%r12, 128(%rsp)
	movq	$1, 136(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIyE
	movq	%rax, %rcx
	movq	%rbp, %rdx
	movq	%r13, 144(%rsp)
	movq	$1, 152(%rsp)
	call	_ZN3neo6stringpLESt16initializer_listIPKcE
	movq	%rax, %rcx
	call	_ZN3neo6stringclEv
	movq	80(%rsp), %rcx
	movq	%rax, %rdx
	call	_ZN3wze6engine6assets11LoadTextureEPKc
	movq	200(%rsp), %rdx
	cmpq	192(%rsp), %rsi
	jnb	.L168
	addl	$1, %edi
	movq	%rax, (%rdx,%rsi,8)
	movzbl	%dil, %esi
	cmpq	192(%rsp), %rsi
	jb	.L122
.L125:
	movl	116(%rsp), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	xorl	%r8d, %r8d
	cvtsi2sdl	112(%rsp), %xmm3
	movq	104(%rsp), %rcx
	xorl	%edx, %edx
	movq	$0x000000000, 56(%rsp)
	cvtsi2sdl	%eax, %xmm0
	movl	%eax, 48(%rsp)
	movl	%eax, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	leaq	72(%rax), %rcx
	leaq	192(%rsp), %r8
	movl	$100, %edx
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	movq	%rax, %rsi
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L126:
	movq	%rsi, %rcx
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	movq	%rax, %rdx
	movq	192(%rsp), %rax
	subq	$1, %rax
	cmpq	%rdx, %rax
	je	.L161
.L128:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L126
.L161:
	leaq	128(%rsp), %rsi
	movq	80(%rsp), %rcx
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	%rsi, %rdx
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE
	movq	104(%rsp), %rcx
	movq	%rsi, %rdx
	movq	$0, 128(%rsp)
	movq	$0, 136(%rsp)
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	movq	72(%rsp), %rcx
	call	_ZN3neo6stringD1Ev
	movq	200(%rsp), %rcx
	call	free
	nop
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L168:
	movq	%rsi, %rdx
	leaq	.LC0(%rip), %rcx
	call	_Z6printfPKcz
.L117:
	movl	$1, %ecx
	call	exit
.L167:
	movzbl	%r12b, %r12d
	movl	%eax, 32(%rsp)
	movq	%rbp, %r8
	movq	%rdi, %rdx
	movl	%r12d, 40(%rsp)
	leaq	.LC10(%rip), %rcx
	call	_Z6printfPKcz
	jmp	.L117
.L166:
	movzbl	%r12b, %r12d
	movzwl	%r13w, %r13d
	movzwl	%si, %r9d
	movq	%rbp, %r8
	movl	%r12d, 40(%rsp)
	movq	%rdi, %rdx
	leaq	.LC9(%rip), %rcx
	movl	%r13d, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L165:
	movzbl	%r12b, %r12d
	movzwl	%r13w, %r13d
	movzwl	%si, %r9d
	movq	%rbp, %r8
	movl	%r12d, 40(%rsp)
	movq	%rdi, %rdx
	leaq	.LC8(%rip), %rcx
	movl	%r13d, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L164:
	movzbl	%r12b, %r12d
	movzwl	%r13w, %r13d
	movzwl	%si, %r9d
	movq	%rbp, %r8
	movl	%r12d, 40(%rsp)
	movq	%rdi, %rdx
	leaq	.LC7(%rip), %rcx
	movl	%r13d, 32(%rsp)
	call	_Z6printfPKcz
	jmp	.L117
.L163:
	xorl	%eax, %eax
	movzwl	%r13w, %r13d
	movzwl	%si, %r9d
	movq	%rbp, %r8
	movl	%eax, 40(%rsp)
	movq	%rdi, %rdx
	leaq	.LC6(%rip), %rcx
	movl	%r13d, 32(%rsp)
	call	_Z6printfPKcz
.LEHE9:
	jmp	.L117
.L162:
	movl	$30, %edx
	leaq	.LC5(%rip), %rcx
.LEHB10:
	call	_Z6printfPKcz
.LEHE10:
	jmp	.L117
.L147:
	movq	%rax, %rsi
	jmp	.L132
.L148:
	movq	%rax, %rsi
	jmp	.L131
.L144:
	movq	%rax, %rsi
	jmp	.L138
.L149:
	movq	%rax, %rsi
	jmp	.L130
.L150:
	movq	%rax, %rsi
	jmp	.L129
.L145:
	movq	%rax, %rsi
	jmp	.L137
.L151:
	movq	%rax, %rsi
	jmp	.L135
.L143:
	movq	%rax, %rsi
	jmp	.L139
.L146:
	movq	%rax, %rsi
	jmp	.L133
.L152:
	movq	%rax, %rsi
	jmp	.L135
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6908:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6908-.LLSDACSB6908
.LLSDACSB6908:
	.uleb128 .LEHB0-.LFB6908
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6908
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L143-.LFB6908
	.uleb128 0
	.uleb128 .LEHB2-.LFB6908
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L144-.LFB6908
	.uleb128 0
	.uleb128 .LEHB3-.LFB6908
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L145-.LFB6908
	.uleb128 0
	.uleb128 .LEHB4-.LFB6908
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L151-.LFB6908
	.uleb128 0
	.uleb128 .LEHB5-.LFB6908
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L152-.LFB6908
	.uleb128 0
	.uleb128 .LEHB6-.LFB6908
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L146-.LFB6908
	.uleb128 0
	.uleb128 .LEHB7-.LFB6908
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L147-.LFB6908
	.uleb128 0
	.uleb128 .LEHB8-.LFB6908
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L149-.LFB6908
	.uleb128 0
	.uleb128 .LEHB9-.LFB6908
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L150-.LFB6908
	.uleb128 0
	.uleb128 .LEHB10-.LFB6908
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L148-.LFB6908
	.uleb128 0
.LLSDACSE6908:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engineC2EPKcS2_tth.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engineC2EPKcS2_tth.cold
	.seh_stackalloc	296
	.seh_savereg	%rbx, 232
	.seh_savereg	%rsi, 240
	.seh_savereg	%rdi, 248
	.seh_savereg	%rbp, 256
	.seh_savereg	%r12, 264
	.seh_savereg	%r13, 272
	.seh_savereg	%r14, 280
	.seh_savereg	%r15, 288
	.seh_endprologue
_ZN3wze6engineC2EPKcS2_tth.cold:
.L129:
	movq	72(%rsp), %rcx
	call	_ZN3neo6stringD1Ev
.L130:
	movq	200(%rsp), %rcx
	call	free
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
	jnb	.L169
	movq	%rdi, %rax
	addq	$1, %rdi
	salq	$4, %rax
	movq	8(%rcx,%rax), %rcx
	call	free
	jmp	.L134
.L169:
	call	free
.L137:
	movq	256(%rbx), %rcx
	call	free
.L138:
	movq	120(%rsp), %rcx
	call	_ZN3wze6engine4keysD1Ev
.L139:
	movq	72(%rbx), %rcx
	call	free
	movq	%rsi, %rcx
.LEHB11:
	call	_Unwind_Resume
.LEHE11:
.L135:
	xorl	%edi, %edi
	jmp	.L134
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6908:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6908-.LLSDACSBC6908
.LLSDACSBC6908:
	.uleb128 .LEHB11-.LCOLDB14
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC6908:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE14:
	.text
.LHOTE14:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
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
	.def	_ZN3wze6engine7threadsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assetsC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timingC1EPS0_;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringC1Ev;	.scl	2;	.type	32;	.endef
	.def	SDL_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_Init;	.scl	2;	.type	32;	.endef
	.def	Mix_OpenAudio;	.scl	2;	.type	32;	.endef
	.def	TTF_Init;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window4OpenEPKcS3_tt;	.scl	2;	.type	32;	.endef
	.def	SDL_GetKeyboardState;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringaSESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringpLESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringpLESt16initializer_listIPKcE;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringclEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6assets11LoadTextureEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3neo6stringD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
