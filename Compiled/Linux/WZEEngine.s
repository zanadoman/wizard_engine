	.file	"WZEEngine.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.type	_ZN3wze6engineD2Ev, @function
_ZN3wze6engineD2Ev:
.LFB8171:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8171
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	xorl	%esi, %esi
	addq	$240, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%edx, %edx
	leaq	304(%rbp), %rbx
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
	movq	424(%rbp), %rdi
	call	free@PLT
	movq	368(%rbp), %rdi
	call	free@PLT
	movq	352(%rbp), %rdi
	call	free@PLT
	movq	336(%rbp), %rdi
	call	free@PLT
	movq	320(%rbp), %rdi
	call	free@PLT
	cmpq	$0, 280(%rbp)
	je	.L2
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	288(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	280(%rbp), %rbx
	jb	.L3
.L2:
	movq	288(%rbp), %rdi
	call	free@PLT
	movq	256(%rbp), %rdi
	call	free@PLT
	leaq	160(%rbp), %rdi
	call	_ZN3wze6engine4keysD1Ev@PLT
	movq	72(%rbp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8171:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8171:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8171-.LLSDACSB8171
.LLSDACSB8171:
.LLSDACSE8171:
	.text
	.size	_ZN3wze6engineD2Ev, .-_ZN3wze6engineD2Ev
	.globl	_ZN3wze6engineD1Ev
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5SleepEj
	.type	_ZN3wze6engine5SleepEj, @function
_ZN3wze6engine5SleepEj:
.LFB8174:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	%esi, %edi
	call	SDL_Delay@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine5SleepEj, .-_ZN3wze6engine5SleepEj
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.type	_ZN3wze6engine6RandomEii, @function
_ZN3wze6engine6RandomEii:
.LFB8175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	rand@PLT
	movl	%ebx, %ecx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	subl	%ebp, %ecx
	cltd
	popq	%rbx
	.cfi_def_cfa_offset 16
	idivl	%ecx
	leal	(%rdx,%rbp), %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6RandomEii, .-_ZN3wze6engine6RandomEii
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
.LFB8176:
	.cfi_startproc
	movq	248(%rdi), %r11
	cmpq	$1, %r11
	jbe	.L32
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	256(%rdi), %rbx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%rbx,%rdi,8), %r8
	testq	%r8, %r8
	je	.L27
	cmpq	248(%r9), %rdi
	jnb	.L24
	movq	88(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L25:
	cmpq	%r10, %rsi
	jnb	.L27
.L26:
	movq	96(%r8), %rax
	movq	(%rax,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L35
	cmpb	$0, 39(%rcx)
	jne	.L35
	movl	96(%rcx), %eax
	xorl	%edx, %edx
	addl	408(%r9), %eax
	divl	80(%rcx)
	addq	88(%rcx), %rax
	movq	%rax, 88(%rcx)
	cmpq	248(%r9), %rdi
	jnb	.L36
	cmpq	88(%r8), %rsi
	jnb	.L37
	movq	104(%rcx), %rbp
	movl	%edx, 96(%rcx)
	cmpq	%rbp, %rax
	jnb	.L38
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jb	.L26
	.p2align 4,,10
	.p2align 3
.L27:
	addq	$1, %rdi
	cmpq	%r11, %rdi
	jne	.L14
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
.L23:
	.cfi_restore_state
	subq	$1, %rbp
	movq	%rbp, 88(%rcx)
	.p2align 4,,10
	.p2align 3
.L35:
	movq	248(%r9), %rax
.L18:
	addq	$1, %rsi
	cmpq	%rax, %rdi
	jb	.L25
.L24:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	cmpb	$0, 38(%rcx)
	je	.L23
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 88(%rcx)
	movq	248(%r9), %rax
	jmp	.L18
.L32:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
.L37:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L36:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine15UpdateFlipbooksEv, .-_ZN3wze6engine15UpdateFlipbooksEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine18UpdateOverlapboxesEv
	.type	_ZN3wze6engine18UpdateOverlapboxesEv, @function
_ZN3wze6engine18UpdateOverlapboxesEv:
.LFB8177:
	.cfi_startproc
	movq	248(%rdi), %rcx
	cmpq	$1, %rcx
	jbe	.L91
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
	leaq	184(%r15), %r13
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
	movq	256(%rdi), %rdi
	movq	%r13, (%rsp)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L41:
	addq	$1, %r14
	cmpq	%rcx, %r14
	jnb	.L94
.L40:
	movq	(%rdi,%r14,8), %rax
	leaq	0(,%r14,8), %rbp
	testq	%rax, %rax
	je	.L41
	cmpq	$1, 152(%rax)
	jbe	.L41
	movsd	272(%rax), %xmm0
	movq	(%rsp), %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	256(%r15), %rax
	cmpq	248(%r15), %r14
	jnb	.L95
	movq	(%rax,%rbp), %rax
	movq	(%rsp), %rdi
	movsd	%xmm0, 8(%rsp)
	movsd	272(%rax), %xmm0
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	248(%r15), %rcx
	movq	256(%r15), %rdi
	movsd	8(%rsp), %xmm1
	movapd	%xmm0, %xmm4
	cmpq	%rcx, %r14
	jnb	.L64
	movl	$1, %ebx
	movq	%r15, %r13
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L65:
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L45
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
	jb	.L89
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r8d, %xmm2
	addsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L89
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
	jb	.L89
	comisd	%xmm4, %xmm0
	jnb	.L96
	.p2align 4,,10
	.p2align 3
.L89:
	xorl	%r15d, %r15d
.L46:
	cmpq	%rcx, %r14
	jnb	.L97
	movq	(%rdi,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L98
.L63:
	movq	(%rsi,%r12), %rax
	movl	%r15d, 120(%rax)
.L45:
	addq	$1, %rbx
	cmpq	%rcx, %r14
	jnb	.L64
.L43:
	movq	(%rdi,%rbp), %rax
	cmpq	152(%rax), %rbx
	jb	.L65
	addq	$1, %r14
	movq	%r13, %r15
	cmpq	%rcx, %r14
	jb	.L40
.L94:
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
.L96:
	.cfi_restore_state
	leaq	160(%r13), %rax
	movl	$232, %esi
	movsd	%xmm4, 24(%rsp)
	movq	%rax, %rdi
	movsd	%xmm1, 16(%rsp)
	movq	%rax, 8(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm4
	testb	%al, %al
	je	.L99
	movl	$11, 56(%rsp)
	movl	$43, %r15d
	movl	$35, %r8d
	movl	$3, %r10d
	movl	$67, %r11d
	movl	$19, %edx
	movl	$83, %ecx
	movl	$75, 52(%rsp)
	movl	$51, 60(%rsp)
.L51:
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
	je	.L100
.L54:
	movq	8(%rsp), %rdi
	movl	$234, %esi
	movsd	%xmm4, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movq	248(%r13), %rcx
	movq	256(%r13), %rdi
	testb	%al, %al
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm4
	jne	.L46
	cmpq	%rcx, %r14
	jnb	.L101
	movq	(%rdi,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L102
	movq	(%rsi,%r12), %rax
	movl	56(%rsp), %r15d
	testb	$32, 120(%rax)
	cmovne	52(%rsp), %r15d
	jmp	.L63
.L100:
	movq	256(%r13), %rax
	cmpq	248(%r13), %r14
	jnb	.L103
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L104
	movq	(%rsi,%r12), %rax
	testb	$8, 120(%rax)
	jne	.L75
	movl	%r10d, 56(%rsp)
	movl	%r8d, %r15d
	movl	%r11d, 52(%rsp)
	jmp	.L54
.L99:
	movq	256(%r13), %rax
	cmpq	248(%r13), %r14
	jnb	.L105
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rcx
	cmpq	152(%rax), %rbx
	jnb	.L106
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
	jmp	.L51
.L91:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	xorl	%eax, %eax
	ret
.L75:
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
	jmp	.L54
.L64:
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
.L97:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L106:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
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
.L95:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L105:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L104:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L103:
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
	.cfi_endproc
.LFE8177:
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
.LFB8173:
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	call	SDL_GetTicks@PLT
	subl	388(%rbp), %eax
	leaq	80(%rbp), %rdi
	movl	%eax, 392(%rbp)
	call	_ZN3wze6engine6camera6UpdateEv@PLT
	leaq	32(%rbp), %rdi
	call	_ZN3wze6engine6render6UpdateEv@PLT
	call	SDL_GetTicks@PLT
	subl	392(%rbp), %eax
	subl	388(%rbp), %eax
	leaq	376(%rbp), %rdi
	movl	%eax, 396(%rbp)
	call	_ZN3wze6engine6timing6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbp), %rdi
	call	SDL_GetWindowFlags@PLT
	movl	%eax, 28(%rbp)
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L110:
	cmpq	%rax, %rbx
	jnb	.L124
	leaq	0(,%rbx,8), %rax
	movdqa	(%rsp), %xmm3
	subq	%rbx, %rax
	addq	$1, %rbx
	leaq	(%rdi,%rax,8), %rax
	movups	%xmm3, (%rax)
	movdqa	16(%rsp), %xmm4
	movups	%xmm4, 16(%rax)
	movdqa	32(%rsp), %xmm5
	movups	%xmm5, 32(%rax)
	movq	48(%rsp), %rdx
	movq	%rdx, 48(%rax)
.L108:
	movq	%r12, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	je	.L125
	cmpl	$256, (%rsp)
	je	.L121
	movq	416(%rbp), %rax
	movq	424(%rbp), %rdi
	cmpq	%rax, %rbx
	jne	.L110
	leaq	11(%rbx), %r13
	movq	%r13, 416(%rbp)
	leaq	0(,%r13,8), %rsi
	subq	%r13, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 424(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L126
	movq	416(%rbp), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r13, %rdx
	jb	.L110
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
	jb	.L114
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L113:
	movq	424(%rbp), %rdx
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
	jnb	.L113
.L114:
	movq	416(%rbp), %rax
	movq	424(%rbp), %rdi
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L125:
	movq	416(%rbp), %r12
	cmpq	%r12, %rbx
	jb	.L127
.L119:
	leaq	160(%rbp), %rdi
	call	_ZN3wze6engine4keys6UpdateEv@PLT
	leaq	184(%rbp), %rdi
	call	_ZN3wze6engine5mouse6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine18UpdateOverlapboxesEv
	movl	$1, %eax
.L107:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L128
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
.L121:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L127:
	movq	%rbx, 416(%rbp)
	movq	424(%rbp), %rdi
	testq	%rbx, %rbx
	je	.L129
	leaq	0(,%rbx,8), %rsi
	subq	%rbx, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 424(%rbp)
	testq	%rax, %rax
	jne	.L119
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	subq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L129:
	call	free@PLT
	movq	$0, 424(%rbp)
	jmp	.L119
.L124:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L126:
	leaq	.LC1(%rip), %rdi
	movl	$11, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L128:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6UpdateEv, .-_ZN3wze6engine6UpdateEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Wizard Engine"
.LC4:
	.string	"engine/wizard.png"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.align 8
.LC6:
	.string	"wze::engine.engine(): TargetFrameTime must not be equal to 0\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC7:
	.string	"wze::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC8:
	.string	"wze::engine.engine(): Mix_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC9:
	.string	"wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC10:
	.string	"wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC11:
	.string	"wze::engine.engine(): SDLNet_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.section	.rodata.str1.1
.LC12:
	.string	".png"
.LC13:
	.string	"engine/logo/logo"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"neo::array-=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC15:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.type	_ZN3wze6engineC2EPKcS2_tth, @function
_ZN3wze6engineC2EPKcS2_tth:
.LFB8168:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8168
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%r9d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	movq	%rdi, %rsi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%ecx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
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
	leaq	144(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine5audioC1EPS0_@PLT
	leaq	160(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
	call	_ZN3wze6engine4keysC1EPS0_@PLT
.LEHE1:
	leaq	184(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZN3wze6engine5mouseC1EPS0_@PLT
	leaq	240(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	_ZN3wze6engine6actorsC1EPS0_@PLT
.LEHE2:
	leaq	264(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB3:
	call	_ZN3wze6engine9collisionC1EPS0_@PLT
.LEHE3:
	leaq	296(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB4:
	call	_ZN3wze6engine6vectorC1EPS0_@PLT
.LEHE4:
	leaq	304(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
.LEHB5:
	call	_ZN3wze6engine6assetsC1EPS0_@PLT
.LEHE5:
	leaq	376(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB6:
	call	_ZN3wze6engine6timingC1EPS0_@PLT
.LEHE6:
	movq	$0, 416(%rbx)
	movl	$240, %edi
	movq	$0, 424(%rbx)
	movq	$30, 64(%rsp)
	call	malloc@PLT
	movq	%rax, 72(%rsp)
	testq	%rax, %rax
	je	.L191
	leaq	80(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
.LEHB7:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE7:
	testq	%r13, %r13
	leaq	.LC3(%rip), %rax
	cmove	%rax, %r13
	testq	%r14, %r14
	leaq	.LC4(%rip), %rax
	cmove	%rax, %r14
	testb	%r15b, %r15b
	je	.L192
	movl	$62001, %edi
.LEHB8:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L193
	movl	$251, %edi
	call	Mix_Init@PLT
	testl	%eax, %eax
	je	.L194
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	testl	%eax, %eax
	jne	.L195
	call	TTF_Init@PLT
	testl	%eax, %eax
	jne	.L196
	call	SDLNet_Init@PLT
	movzwl	%r12w, %r8d
	movzwl	%bp, %ecx
	testl	%eax, %eax
	jne	.L197
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_ZN3wze6engine6window4OpenEPKcS3_tt@PLT
	leal	-1(%rbp), %eax
	shrw	%bp
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	movw	%ax, 40(%rbx)
	leal	-1(%r12), %eax
	shrw	%r12w
	movzwl	%r12w, %ecx
	movw	%ax, 42(%rbx)
	movzwl	%bp, %eax
	movd	%eax, %xmm1
	movd	%ecx, %xmm3
	movl	%eax, 48(%rsp)
	punpckldq	%xmm3, %xmm1
	movl	%ecx, 52(%rsp)
	psubd	%xmm1, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, 104(%rbx)
	call	SDL_GetKeyboardState@PLT
	movq	%rax, 168(%rbx)
	xorl	%edi, %edi
	movb	%r15b, 384(%rbx)
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	cmpq	$0, 64(%rsp)
	je	.L144
	leaq	104(%rsp), %rax
	xorl	%r12d, %r12d
	leaq	112(%rsp), %r15
	xorl	%ebp, %ebp
	movq	%rax, 32(%rsp)
	leaq	96(%rsp), %rax
	leaq	.LC12(%rip), %r13
	movq	%rax, 24(%rsp)
	leaq	.LC13(%rip), %r14
	.p2align 4,,10
	.p2align 3
.L146:
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdi
	leaq	1(%rbp), %rax
	movl	$1, %edx
	movq	%r13, 112(%rsp)
	movq	%rax, 104(%rsp)
	movq	%r14, 96(%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	32(%rsp), %rsi
	movq	%rax, %rdi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIyE@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringpLESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	16(%rsp), %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	movq	72(%rsp), %rdi
	cmpq	64(%rsp), %rbp
	jnb	.L198
	movq	%rax, (%rdi,%rbp,8)
	addl	$1, %r12d
	movq	64(%rsp), %rax
	movzbl	%r12b, %ebp
	cmpq	%rax, %rbp
	jb	.L146
	addq	$1, %rax
	leaq	0(,%rax,8), %rsi
.L147:
	movq	$0, 120(%rsp)
	movq	%rax, 64(%rsp)
	call	realloc@PLT
	movq	%rax, 72(%rsp)
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L199
	movq	64(%rsp), %rdx
	subq	$1, %rdx
	je	.L151
	salq	$3, %rdx
	leaq	8(%rax), %rdi
	movq	%rax, %rsi
	call	memmove@PLT
.L151:
	leaq	120(%rsp), %rdi
	movl	$8, %edx
	movq	%rbp, %rsi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
	movq	$0, 128(%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 64(%rsp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 72(%rsp)
	testq	%rax, %rax
	je	.L200
	movq	64(%rsp), %rdx
	leaq	128(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movl	52(%rsp), %ecx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	cvtsi2sdl	48(%rsp), %xmm0
	movq	40(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	cvtsi2sdl	%ecx, %xmm1
	movl	%ecx, %r8d
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	leaq	64(%rsp), %rdx
	leaq	72(%rax), %rdi
	movl	$100, %esi
	movq	%rax, %r12
	call	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movb	$0, 38(%rax)
	movq	%rax, %rbp
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L153:
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv@PLT
	testb	%al, %al
	je	.L190
.L155:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L153
.L190:
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actor5GetIDEv@PLT
	movq	40(%rsp), %rdi
	movq	%rax, %rsi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	call	_ZN3wze6engine6assets13PurgeTexturesESt16initializer_listIyE@PLT
	movq	8(%rsp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	72(%rsp), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L201
	addq	$152, %rsp
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
.L144:
	.cfi_restore_state
	movq	72(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %eax
	jmp	.L147
.L198:
	movq	%rbp, %rsi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L138:
	movl	$1, %edi
	call	exit@PLT
.L192:
	movzwl	%bp, %ecx
	xorl	%r9d, %r9d
	movzwl	%r12w, %r8d
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L138
.L196:
	movzwl	%bp, %ecx
	movzbl	%r15b, %r9d
	movzwl	%r12w, %r8d
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L138
.L195:
	movzwl	%bp, %ecx
	movzbl	%r15b, %r9d
	movzwl	%r12w, %r8d
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L138
.L194:
	movzwl	%bp, %ecx
	movzbl	%r15b, %r9d
	movzwl	%r12w, %r8d
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	jmp	.L138
.L193:
	movzwl	%bp, %ecx
	movzbl	%r15b, %r9d
	movzwl	%r12w, %r8d
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE8:
	jmp	.L138
.L191:
	movl	$30, %esi
	leaq	.LC5(%rip), %rdi
.LEHB9:
	call	printf@PLT
.LEHE9:
	jmp	.L138
.L197:
	movzbl	%r15b, %r9d
	movq	%r14, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rdi
.LEHB10:
	call	printf@PLT
	jmp	.L138
.L201:
	call	__stack_chk_fail@PLT
.L200:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC15(%rip), %rdi
	call	printf@PLT
	jmp	.L138
.L199:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE10:
	jmp	.L138
.L174:
	movq	%rax, %rbp
	jmp	.L158
.L171:
	movq	%rax, %rbp
	jmp	.L164
.L173:
	movq	%rax, %rbp
	jmp	.L159
.L176:
	movq	%rax, %rbp
	jmp	.L156
.L175:
	movq	%rax, %rbp
	jmp	.L157
.L170:
	movq	%rax, %rbp
	jmp	.L165
.L178:
	movq	%rax, %rbp
	jmp	.L161
.L177:
	movq	%rax, %rbp
	jmp	.L161
.L172:
	movq	%rax, %rbp
	jmp	.L163
	.section	.gcc_except_table
.LLSDA8168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8168-.LLSDACSB8168
.LLSDACSB8168:
	.uleb128 .LEHB0-.LFB8168
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8168
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L170-.LFB8168
	.uleb128 0
	.uleb128 .LEHB2-.LFB8168
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L171-.LFB8168
	.uleb128 0
	.uleb128 .LEHB3-.LFB8168
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L172-.LFB8168
	.uleb128 0
	.uleb128 .LEHB4-.LFB8168
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L177-.LFB8168
	.uleb128 0
	.uleb128 .LEHB5-.LFB8168
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L178-.LFB8168
	.uleb128 0
	.uleb128 .LEHB6-.LFB8168
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L173-.LFB8168
	.uleb128 0
	.uleb128 .LEHB7-.LFB8168
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L175-.LFB8168
	.uleb128 0
	.uleb128 .LEHB8-.LFB8168
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L176-.LFB8168
	.uleb128 0
	.uleb128 .LEHB9-.LFB8168
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L174-.LFB8168
	.uleb128 0
	.uleb128 .LEHB10-.LFB8168
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L176-.LFB8168
	.uleb128 0
.LLSDACSE8168:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8168
	.type	_ZN3wze6engineC2EPKcS2_tth.cold, @function
_ZN3wze6engineC2EPKcS2_tth.cold:
.LFSB8168:
.L156:
	.cfi_def_cfa_offset 208
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	8(%rsp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
.L157:
	movq	72(%rsp), %rdi
	call	free@PLT
.L158:
	movq	424(%rbx), %rdi
	call	free@PLT
.L159:
	movq	368(%rbx), %rdi
	xorl	%r12d, %r12d
	call	free@PLT
	movq	352(%rbx), %rdi
	call	free@PLT
	movq	336(%rbx), %rdi
	call	free@PLT
	movq	320(%rbx), %rdi
	call	free@PLT
.L160:
	movq	288(%rbx), %rdi
	cmpq	280(%rbx), %r12
	jnb	.L202
	movq	%r12, %rax
	addq	$1, %r12
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L160
.L202:
	call	free@PLT
.L163:
	movq	256(%rbx), %rdi
	call	free@PLT
.L164:
	movq	56(%rsp), %rdi
	call	_ZN3wze6engine4keysD1Ev@PLT
.L165:
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L203
	movq	%rbp, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L203:
	call	__stack_chk_fail@PLT
.L161:
	xorl	%r12d, %r12d
	jmp	.L160
	.cfi_endproc
.LFE8168:
	.section	.gcc_except_table
.LLSDAC8168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8168-.LLSDACSBC8168
.LLSDACSBC8168:
	.uleb128 .LEHB11-.LCOLDB17
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8168:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engineC2EPKcS2_tth, .-_ZN3wze6engineC2EPKcS2_tth
	.section	.text.unlikely
	.size	_ZN3wze6engineC2EPKcS2_tth.cold, .-_ZN3wze6engineC2EPKcS2_tth.cold
.LCOLDE17:
	.text
.LHOTE17:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
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
