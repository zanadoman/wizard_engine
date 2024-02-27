	.file	"WZEEngine.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.type	_ZN3wze6engineD2Ev, @function
_ZN3wze6engineD2Ev:
.LFB8172:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8172
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	xorl	%esi, %esi
	addq	$272, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%edx, %edx
	leaq	344(%rbp), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6assets11PurgeSoundsESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6assets10PurgeFontsESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZN3wze6engine6assets19PurgeCursorTexturesESt16initializer_listIyE@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6window5CloseEv@PLT
	call	SDLNet_Quit@PLT
	call	TTF_Quit@PLT
	call	Mix_CloseAudio@PLT
	call	Mix_Quit@PLT
	call	SDL_Quit@PLT
	movq	472(%rbp), %rdi
	call	free@PLT
	movq	408(%rbp), %rdi
	call	free@PLT
	movq	392(%rbp), %rdi
	call	free@PLT
	movq	376(%rbp), %rdi
	call	free@PLT
	movq	360(%rbp), %rdi
	call	free@PLT
	cmpq	$0, 312(%rbp)
	je	.L2
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	320(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	312(%rbp), %rbx
	jb	.L3
.L2:
	movq	320(%rbp), %rdi
	call	free@PLT
	movq	288(%rbp), %rdi
	call	free@PLT
	leaq	192(%rbp), %rdi
	call	_ZN3wze6engine4keysD1Ev@PLT
	leaq	160(%rbp), %rdi
	call	_ZN3wze6engine5audioD1Ev@PLT
	movq	72(%rbp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8172:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8172:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8172-.LLSDACSB8172
.LLSDACSB8172:
.LLSDACSE8172:
	.text
	.size	_ZN3wze6engineD2Ev, .-_ZN3wze6engineD2Ev
	.globl	_ZN3wze6engineD1Ev
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine15UpdateFlipbooksEv
	.type	_ZN3wze6engine15UpdateFlipbooksEv, @function
_ZN3wze6engine15UpdateFlipbooksEv:
.LFB8175:
	.cfi_startproc
	movq	280(%rdi), %r11
	cmpq	$1, %r11
	jbe	.L28
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	288(%rdi), %rbx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L10:
	movq	(%rbx,%rdi,8), %r8
	testq	%r8, %r8
	je	.L23
	cmpq	280(%r9), %rdi
	jnb	.L20
	movq	88(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L21:
	cmpq	%r10, %rsi
	jnb	.L23
.L22:
	movq	96(%r8), %rax
	movq	(%rax,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L31
	cmpb	$0, 39(%rcx)
	jne	.L31
	movl	96(%rcx), %eax
	xorl	%edx, %edx
	addl	448(%r9), %eax
	divl	80(%rcx)
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	cmpq	280(%r9), %rdi
	jnb	.L32
	cmpq	88(%r8), %rsi
	jnb	.L33
	movq	104(%rcx), %rbp
	movl	%edx, 96(%rcx)
	cmpq	%rbp, %rax
	jnb	.L34
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jb	.L22
	.p2align 4,,10
	.p2align 3
.L23:
	addq	$1, %rdi
	cmpq	%r11, %rdi
	jne	.L10
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	subq	$1, %rbp
	movq	%rbp, 88(%rcx)
	.p2align 4,,10
	.p2align 3
.L31:
	movq	280(%r9), %rax
.L14:
	addq	$1, %rsi
	cmpq	%rax, %rdi
	jb	.L21
.L20:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L34:
	cmpb	$0, 38(%rcx)
	je	.L19
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 88(%rcx)
	movq	280(%r9), %rax
	jmp	.L14
.L28:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
.L33:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L32:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine15UpdateFlipbooksEv, .-_ZN3wze6engine15UpdateFlipbooksEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine18UpdateOverlapboxesEv
	.type	_ZN3wze6engine18UpdateOverlapboxesEv, @function
_ZN3wze6engine18UpdateOverlapboxesEv:
.LFB8176:
	.cfi_startproc
	movq	280(%rdi), %rcx
	cmpq	$1, %rcx
	jbe	.L87
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	216(%r15), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	288(%rdi), %rdi
	movq	%r13, (%rsp)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L37:
	addq	$1, %r14
	cmpq	%rcx, %r14
	jnb	.L90
.L36:
	movq	(%rdi,%r14,8), %rax
	leaq	0(,%r14,8), %rbp
	testq	%rax, %rax
	je	.L37
	cmpq	$1, 152(%rax)
	jbe	.L37
	movsd	272(%rax), %xmm0
	movq	(%rsp), %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	288(%r15), %rax
	cmpq	280(%r15), %r14
	jnb	.L91
	movq	(%rax,%rbp), %rax
	movq	(%rsp), %rdi
	movsd	%xmm0, 8(%rsp)
	movsd	272(%rax), %xmm0
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	280(%r15), %rcx
	movq	288(%r15), %rdi
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm4
	cmpq	%rcx, %r14
	jnb	.L60
	movl	$1, %ebx
	movq	%r15, %r13
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L61:
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L41
	movzwl	88(%rax), %r8d
	pxor	%xmm2, %xmm2
	movsd	40(%rax), %xmm0
	movsd	48(%rax), %xmm3
	movzwl	90(%rax), %eax
	movl	%r8d, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm2
	subsd	%xmm2, %xmm0
	comisd	%xmm0, %xmm1
	jb	.L85
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r8d, %xmm2
	addsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L85
	movl	%eax, %esi
	pxor	%xmm0, %xmm0
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm0
	addsd	%xmm3, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm0, %xmm2
	subsd	%xmm3, %xmm2
	comisd	%xmm2, %xmm4
	jb	.L85
	comisd	%xmm4, %xmm0
	jnb	.L92
	.p2align 4,,10
	.p2align 3
.L85:
	xorl	%r15d, %r15d
.L42:
	cmpq	%rcx, %r14
	jnb	.L93
	movq	(%rdi,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L94
.L59:
	movq	(%rsi,%r12), %rax
	movl	%r15d, 120(%rax)
.L41:
	addq	$1, %rbx
	cmpq	%rcx, %r14
	jnb	.L60
.L39:
	movq	(%rdi,%rbp), %rax
	cmpq	152(%rax), %rbx
	jb	.L61
	addq	$1, %r14
	movq	%r13, %r15
	cmpq	%rcx, %r14
	jb	.L36
.L90:
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	.cfi_restore_state
	leaq	192(%r13), %rax
	movl	$232, %esi
	movsd	%xmm4, 24(%rsp)
	movq	%rax, %rdi
	movsd	%xmm1, 16(%rsp)
	movq	%rax, 8(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm4
	testb	%al, %al
	je	.L95
	movl	$11, 56(%rsp)
	movl	$43, %r15d
	movl	$35, %r8d
	movl	$3, %r10d
	movl	$67, %r11d
	movl	$19, %edx
	movl	$83, %ecx
	movl	$75, 52(%rsp)
	movl	$51, 60(%rsp)
.L47:
	movq	8(%rsp), %rdi
	movl	$233, %esi
	movl	%r8d, 48(%rsp)
	movl	%r10d, 44(%rsp)
	movl	%edx, 40(%rsp)
	movl	%ecx, 36(%rsp)
	movl	%r11d, 32(%rsp)
	movsd	%xmm4, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm4
	testb	%al, %al
	movl	32(%rsp), %r11d
	movl	36(%rsp), %ecx
	movl	40(%rsp), %edx
	movl	44(%rsp), %r10d
	movl	48(%rsp), %r8d
	je	.L96
.L50:
	movq	8(%rsp), %rdi
	movl	$234, %esi
	movsd	%xmm4, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movq	280(%r13), %rcx
	movq	288(%r13), %rdi
	testb	%al, %al
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm4
	jne	.L42
	cmpq	%rcx, %r14
	jnb	.L97
	movq	(%rdi,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L98
	movq	(%rsi,%r12), %rax
	movl	56(%rsp), %r15d
	testb	$32, 120(%rax)
	cmovne	52(%rsp), %r15d
	jmp	.L59
.L96:
	movq	288(%r13), %rax
	cmpq	280(%r13), %r14
	jnb	.L99
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L100
	movq	(%rsi,%r12), %rax
	testb	$8, 120(%rax)
	jne	.L71
	movl	%r10d, 56(%rsp)
	movl	%r8d, %r15d
	movl	%r11d, 52(%rsp)
	jmp	.L50
.L95:
	movq	288(%r13), %rax
	cmpq	280(%r13), %r14
	jnb	.L101
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rcx
	cmpq	152(%rax), %rbx
	jnb	.L102
	movq	(%rcx,%r12), %rax
	movl	120(%rax), %eax
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%r15d, %r15d
	andl	$-4, %r15d
	addl	$45, %r15d
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$13, %edx
	cmpl	$1, %eax
	movl	%edx, 56(%rsp)
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$77, %edx
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	movl	%edx, 52(%rsp)
	andl	$-4, %r8d
	addl	$37, %r8d
	cmpl	$1, %eax
	sbbl	%r10d, %r10d
	andl	$-4, %r10d
	addl	$5, %r10d
	cmpl	$1, %eax
	sbbl	%r11d, %r11d
	andl	$-4, %r11d
	addl	$69, %r11d
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$53, %edx
	cmpl	$1, %eax
	movl	%edx, 60(%rsp)
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$21, %edx
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$85, %ecx
	jmp	.L47
.L87:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	xorl	%eax, %eax
	ret
.L71:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	%edx, 56(%rsp)
	movl	60(%rsp), %r15d
	movl	%ecx, 52(%rsp)
	jmp	.L50
.L60:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L93:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L102:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L97:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L101:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L100:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L99:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine18UpdateOverlapboxesEv, .-_ZN3wze6engine18UpdateOverlapboxesEv
	.section	.rodata.str1.8
	.align 8
.LC1:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC2:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6UpdateEv
	.type	_ZN3wze6engine6UpdateEv, @function
_ZN3wze6engine6UpdateEv:
.LFB8174:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	call	SDL_GetTicks@PLT
	subl	428(%rbx), %eax
	leaq	80(%rbx), %rdi
	movl	%eax, 432(%rbx)
	call	_ZN3wze6engine6camera6UpdateEv@PLT
	leaq	32(%rbx), %rdi
	call	_ZN3wze6engine6render6UpdateEv@PLT
	call	SDL_GetTicks@PLT
	subl	432(%rbx), %eax
	subl	428(%rbx), %eax
	leaq	160(%rbx), %rdi
	movl	%eax, 436(%rbx)
	call	_ZN3wze6engine5audio6UpdateEv@PLT
	leaq	416(%rbx), %rdi
	call	_ZN3wze6engine6timing6UpdateEv@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbx), %rdi
	call	SDL_GetWindowFlags@PLT
	movl	%eax, 28(%rbx)
	jmp	.L104
	.p2align 4,,10
	.p2align 3
.L106:
	cmpq	%rax, %rbp
	jnb	.L120
	leaq	0(,%rbp,8), %rax
	movdqa	(%rsp), %xmm3
	subq	%rbp, %rax
	addq	$1, %rbp
	leaq	(%rdi,%rax,8), %rax
	movups	%xmm3, (%rax)
	movdqa	16(%rsp), %xmm4
	movups	%xmm4, 16(%rax)
	movdqa	32(%rsp), %xmm5
	movups	%xmm5, 32(%rax)
	movq	48(%rsp), %rdx
	movq	%rdx, 48(%rax)
.L104:
	movq	%r12, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	je	.L121
	cmpl	$256, (%rsp)
	je	.L117
	movq	464(%rbx), %rax
	movq	472(%rbx), %rdi
	cmpq	%rax, %rbp
	jne	.L106
	leaq	11(%rbp), %r13
	movq	%r13, 464(%rbx)
	leaq	0(,%r13,8), %rsi
	subq	%r13, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 472(%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L122
	movq	464(%rbx), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r13, %rdx
	jb	.L106
	leaq	0(,%rdx,8), %rcx
	leaq	-12(%rax), %rsi
	subq	%rdx, %rcx
	leaq	(%rdi,%rcx,8), %rdx
	leaq	0(,%rsi,8), %rcx
	subq	%rsi, %rcx
	leaq	(%rdi,%rcx,8), %rcx
	movdqu	(%rcx), %xmm6
	movups	%xmm6, (%rdx)
	movdqu	16(%rcx), %xmm7
	movups	%xmm7, 16(%rdx)
	movdqu	32(%rcx), %xmm6
	movups	%xmm6, 32(%rdx)
	movq	48(%rcx), %rcx
	movq	%rcx, 48(%rdx)
	leaq	-2(%rax), %rcx
	cmpq	%r13, %rcx
	jb	.L110
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L109:
	movq	472(%rbx), %rdx
	subq	$1, %rcx
	movdqu	(%rdx,%rax), %xmm0
	movdqu	16(%rdx,%rax), %xmm1
	movdqu	32(%rdx,%rax), %xmm2
	movq	48(%rdx,%rax), %rsi
	movups	%xmm0, 616(%rdx,%rax)
	movq	%rsi, 664(%rdx,%rax)
	movups	%xmm1, 632(%rdx,%rax)
	movups	%xmm2, 648(%rdx,%rax)
	subq	$56, %rax
	cmpq	%r13, %rcx
	jnb	.L109
.L110:
	movq	464(%rbx), %rax
	movq	472(%rbx), %rdi
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L121:
	movq	464(%rbx), %r12
	cmpq	%r12, %rbp
	jb	.L123
.L115:
	leaq	192(%rbx), %rdi
	call	_ZN3wze6engine4keys6UpdateEv@PLT
	leaq	216(%rbx), %rdi
	call	_ZN3wze6engine5mouse6UpdateEv@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engine18UpdateOverlapboxesEv
	movl	$1, %eax
.L103:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L124
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L117:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L123:
	movq	%rbp, 464(%rbx)
	movq	472(%rbx), %rdi
	testq	%rbp, %rbp
	je	.L125
	leaq	0(,%rbp,8), %rsi
	subq	%rbp, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 472(%rbx)
	testq	%rax, %rax
	jne	.L115
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rbp, %rsi
	subq	%rbp, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L125:
	call	free@PLT
	movq	$0, 472(%rbx)
	jmp	.L115
.L120:
	leaq	.LC0(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L122:
	leaq	.LC1(%rip), %rdi
	movl	$11, %edx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L124:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6UpdateEv, .-_ZN3wze6engine6UpdateEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Wizard Engine"
.LC4:
	.string	"engine/icon.png"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.engine(): TargetFrameTime must not be equal to 0\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC8:
	.string	"wze::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC9:
	.string	"wze::engine.engine(): Mix_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC10:
	.string	"wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC11:
	.string	"wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC12:
	.string	"wze::engine.engine(): SDLNet_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.section	.rodata.str1.1
.LC14:
	.string	"engine/logo.png"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.type	_ZN3wze6engineC2EPKcS2_tth, @function
_ZN3wze6engineC2EPKcS2_tth:
.LFB8169:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8169
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	movq	%rdi, %rsi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movl	%r9d, 8(%rsp)
.LEHB0:
	call	_ZN3wze6engine6windowC1EPS0_@PLT
	leaq	32(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine6renderC1EPS0_@PLT
.LEHE0:
	leaq	80(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB1:
	call	_ZN3wze6engine6cameraC1EPS0_@PLT
	leaq	160(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	call	_ZN3wze6engine5audioC1EPS0_@PLT
.LEHE1:
	leaq	192(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB2:
	call	_ZN3wze6engine4keysC1EPS0_@PLT
.LEHE2:
	leaq	216(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB3:
	call	_ZN3wze6engine5mouseC1EPS0_@PLT
	leaq	272(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	call	_ZN3wze6engine6actorsC1EPS0_@PLT
.LEHE3:
	leaq	296(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB4:
	call	_ZN3wze6engine9collisionC1EPS0_@PLT
.LEHE4:
	leaq	328(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB5:
	call	_ZN3wze6engine6vectorC1EPS0_@PLT
.LEHE5:
	leaq	336(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB6:
	call	_ZN3wze6engine4mathC1EPS0_@PLT
.LEHE6:
	leaq	344(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
.LEHB7:
	call	_ZN3wze6engine6assetsC1EPS0_@PLT
.LEHE7:
	leaq	416(%rbx), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
.LEHB8:
	call	_ZN3wze6engine6timingC1EPS0_@PLT
.LEHE8:
	testq	%r14, %r14
	leaq	.LC3(%rip), %rax
	movq	$0, 464(%rbx)
	movq	$0, 472(%rbx)
	cmove	%rax, %r14
	testq	%r15, %r15
	leaq	.LC4(%rip), %rax
	cmove	%rax, %r15
	cmpb	$0, 8(%rsp)
	je	.L186
	movl	$62001, %edi
.LEHB9:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L187
	movl	$251, %edi
	call	Mix_Init@PLT
	testl	%eax, %eax
	je	.L188
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	testl	%eax, %eax
	jne	.L189
	call	TTF_Init@PLT
	testl	%eax, %eax
	jne	.L190
	call	SDLNet_Init@PLT
	movzwl	%r12w, %r8d
	movzwl	%r13w, %ecx
	testl	%eax, %eax
	jne	.L191
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_ZN3wze6engine6window4OpenEPKcS3_tt@PLT
	leal	-1(%r13), %eax
	shrw	%r13w
	pxor	%xmm2, %xmm2
	xorl	%edi, %edi
	movzwl	%r13w, %r13d
	movw	%ax, 40(%rbx)
	leal	-1(%r12), %eax
	shrw	%r12w
	cvtsi2sdl	%r13d, %xmm2
	movzwl	%r12w, %r12d
	movq	.LC13(%rip), %xmm0
	movw	%ax, 42(%rbx)
	movq	%xmm2, %r15
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r12d, %xmm2
	movq	%r15, %xmm1
	movq	%xmm2, %r13
	movq	%r15, %xmm2
	xorpd	%xmm0, %xmm2
	movq	%r13, %xmm6
	unpcklpd	%xmm2, %xmm1
	xorpd	%xmm6, %xmm0
	movups	%xmm1, 104(%rbx)
	movq	%r13, %xmm1
	unpcklpd	%xmm0, %xmm1
	movups	%xmm1, 120(%rbx)
	call	SDL_GetKeyboardState@PLT
	movq	%rax, 200(%rbx)
	movzbl	8(%rsp), %eax
	leaq	.LC14(%rip), %rsi
	movq	24(%rsp), %rdi
	movb	%al, 424(%rbx)
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movq	16(%rsp), %rdi
	pxor	%xmm2, %xmm2
	movl	%r12d, %r8d
	movl	%r12d, %ecx
	movq	%r13, %xmm1
	movq	%r15, %xmm0
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%rax, %r14
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movzbl	%r14b, %r14d
	leaq	40(%rax), %rdi
	movq	%rax, %r13
	movq	%r14, %rsi
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy@PLT
	pxor	%xmm0, %xmm0
	movq	%rax, %r12
	movsd	%xmm0, 8(%rsp)
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L141:
	movq	%rbp, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	.LC6(%rip), %xmm4
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC15(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	comisd	%xmm0, %xmm4
	movsd	%xmm0, 8(%rsp)
	jb	.L178
	call	round@PLT
.L147:
	cvttsd2sil	%xmm0, %eax
	movq	%rbx, %rdi
	movb	%al, 23(%r12)
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L141
.L179:
	movq	200(%r13), %rsi
	movq	16(%rsp), %rdi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	movq	24(%rsp), %rdi
	movq	%r14, %rsi
	call	_ZN3wze6engine6assets13UnloadTextureEy@PLT
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L178:
	.cfi_restore_state
	movapd	%xmm4, %xmm0
	movq	%xmm4, %r15
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L148:
	movq	%rbp, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%r15, %xmm5
	pxor	%xmm7, %xmm7
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC15(%rip), %xmm0
	subsd	%xmm0, %xmm5
	comisd	%xmm7, %xmm5
	movq	%xmm5, %r15
	jb	.L179
	movapd	%xmm5, %xmm0
	call	round@PLT
.L145:
	cvttsd2sil	%xmm0, %eax
	movq	%rbx, %rdi
	movb	%al, 23(%r12)
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L148
	jmp	.L179
.L191:
	movzbl	8(%rsp), %r9d
	movq	%r15, %rdx
	movq	%r14, %rsi
	xorl	%eax, %eax
	leaq	.LC12(%rip), %rdi
	call	printf@PLT
.L136:
	movl	$1, %edi
	call	exit@PLT
.L190:
	movzbl	8(%rsp), %r9d
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%r14, %rsi
	leaq	.LC11(%rip), %rdi
	call	printf@PLT
	jmp	.L136
.L189:
	movzbl	8(%rsp), %r9d
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%r14, %rsi
	leaq	.LC10(%rip), %rdi
	call	printf@PLT
	jmp	.L136
.L188:
	movzbl	8(%rsp), %r9d
	movzwl	%r13w, %ecx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movzwl	%r12w, %r8d
	leaq	.LC9(%rip), %rdi
	call	printf@PLT
	jmp	.L136
.L187:
	movzbl	8(%rsp), %r9d
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%r14, %rsi
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	jmp	.L136
.L186:
	movzwl	%r13w, %ecx
	xorl	%r9d, %r9d
	movzwl	%r12w, %r8d
	movq	%r15, %rdx
	movq	%r14, %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE9:
	jmp	.L136
.L170:
	movq	%rax, %rbp
	jmp	.L153
.L166:
	movq	%rax, %rbp
	jmp	.L160
.L169:
	movq	%rax, %rbp
	jmp	.L154
.L172:
	movq	%rax, %rbp
	jmp	.L156
.L168:
	movq	%rax, %rbp
	jmp	.L158
.L165:
	movq	%rax, %rbp
	jmp	.L161
.L173:
	movq	%rax, %rbp
	jmp	.L156
.L171:
	movq	%rax, %rbp
	jmp	.L156
.L167:
	movq	%rax, %rbp
	jmp	.L159
	.section	.gcc_except_table
.LLSDA8169:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8169-.LLSDACSB8169
.LLSDACSB8169:
	.uleb128 .LEHB0-.LFB8169
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8169
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L165-.LFB8169
	.uleb128 0
	.uleb128 .LEHB2-.LFB8169
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L166-.LFB8169
	.uleb128 0
	.uleb128 .LEHB3-.LFB8169
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L167-.LFB8169
	.uleb128 0
	.uleb128 .LEHB4-.LFB8169
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L168-.LFB8169
	.uleb128 0
	.uleb128 .LEHB5-.LFB8169
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L171-.LFB8169
	.uleb128 0
	.uleb128 .LEHB6-.LFB8169
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L172-.LFB8169
	.uleb128 0
	.uleb128 .LEHB7-.LFB8169
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L173-.LFB8169
	.uleb128 0
	.uleb128 .LEHB8-.LFB8169
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L169-.LFB8169
	.uleb128 0
	.uleb128 .LEHB9-.LFB8169
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L170-.LFB8169
	.uleb128 0
.LLSDACSE8169:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8169
	.type	_ZN3wze6engineC2EPKcS2_tth.cold, @function
_ZN3wze6engineC2EPKcS2_tth.cold:
.LFSB8169:
.L153:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	472(%rbx), %rdi
	call	free@PLT
.L154:
	movq	408(%rbx), %rdi
	xorl	%r12d, %r12d
	call	free@PLT
	movq	392(%rbx), %rdi
	call	free@PLT
	movq	376(%rbx), %rdi
	call	free@PLT
	movq	360(%rbx), %rdi
	call	free@PLT
.L155:
	movq	320(%rbx), %rdi
	cmpq	312(%rbx), %r12
	jnb	.L192
	movq	%r12, %rax
	addq	$1, %r12
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L155
.L192:
	call	free@PLT
.L158:
	movq	288(%rbx), %rdi
	call	free@PLT
.L159:
	movq	40(%rsp), %rdi
	call	_ZN3wze6engine4keysD1Ev@PLT
.L160:
	movq	32(%rsp), %rdi
	call	_ZN3wze6engine5audioD1Ev@PLT
.L161:
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L156:
	xorl	%r12d, %r12d
	jmp	.L155
	.cfi_endproc
.LFE8169:
	.section	.gcc_except_table
.LLSDAC8169:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8169-.LLSDACSBC8169
.LLSDACSBC8169:
	.uleb128 .LEHB10-.LCOLDB16
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC8169:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engineC2EPKcS2_tth, .-_ZN3wze6engineC2EPKcS2_tth
	.section	.text.unlikely
	.size	_ZN3wze6engineC2EPKcS2_tth.cold, .-_ZN3wze6engineC2EPKcS2_tth.cold
.LCOLDE16:
	.text
.LHOTE16:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
	.long	0
	.long	1081073664
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	-1717986918
	.long	1069128089
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
