	.file	"WZEEngine.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.type	_ZN3wze6engineD2Ev, @function
_ZN3wze6engineD2Ev:
.LFB8165:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8165
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movq	%rdi, %rbp
	xorl	%edx, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	addq	$640, %rdi
	leaq	664(%rbp), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE@PLT
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	576(%rbp), %rdi
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
	call	_ZN3wze6engine6assets12PurgeCursorsESt16initializer_listIyE@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6window5CloseEv@PLT
	call	TTF_Quit@PLT
	call	Mix_CloseAudio@PLT
	call	Mix_Quit@PLT
	call	SDL_Quit@PLT
	movq	784(%rbp), %rdi
	call	free@PLT
	movq	728(%rbp), %rdi
	call	free@PLT
	movq	712(%rbp), %rdi
	call	free@PLT
	movq	696(%rbp), %rdi
	call	free@PLT
	movq	680(%rbp), %rdi
	call	free@PLT
	movq	656(%rbp), %rdi
	call	free@PLT
	cmpq	$0, 616(%rbp)
	je	.L2
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	624(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	616(%rbp), %rbx
	jb	.L3
.L2:
	movq	624(%rbp), %rdi
	call	free@PLT
	movq	592(%rbp), %rdi
	call	free@PLT
	movq	72(%rbp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8165:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8165-.LLSDACSB8165
.LLSDACSB8165:
.LLSDACSE8165:
	.text
	.size	_ZN3wze6engineD2Ev, .-_ZN3wze6engineD2Ev
	.globl	_ZN3wze6engineD1Ev
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.type	_ZN3wze6engine6RandomEii, @function
_ZN3wze6engine6RandomEii:
.LFB8168:
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
.LFE8168:
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
.LFB8169:
	.cfi_startproc
	movq	584(%rdi), %r11
	cmpq	$1, %r11
	jbe	.L30
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	592(%rdi), %rbx
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L12:
	movq	(%rbx,%rdi,8), %r8
	testq	%r8, %r8
	je	.L25
	cmpq	584(%r9), %rdi
	jnb	.L22
	movq	88(%r8), %r10
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L23:
	cmpq	%r10, %rsi
	jnb	.L25
.L24:
	movq	96(%r8), %rax
	movq	(%rax,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L33
	cmpb	$0, 39(%rcx)
	jne	.L33
	movl	88(%rcx), %eax
	xorl	%edx, %edx
	addl	768(%r9), %eax
	divl	72(%rcx)
	addq	80(%rcx), %rax
	movq	%rax, 80(%rcx)
	cmpq	584(%r9), %rdi
	jnb	.L34
	cmpq	88(%r8), %rsi
	jnb	.L35
	movq	96(%rcx), %rbp
	movl	%edx, 88(%rcx)
	cmpq	%rbp, %rax
	jnb	.L36
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jb	.L24
	.p2align 4,,10
	.p2align 3
.L25:
	addq	$1, %rdi
	cmpq	%r11, %rdi
	jne	.L12
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
.L21:
	.cfi_restore_state
	subq	$1, %rbp
	movq	%rbp, 80(%rcx)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	584(%r9), %rax
.L16:
	addq	$1, %rsi
	cmpq	%rax, %rdi
	jb	.L23
.L22:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L36:
	cmpb	$0, 38(%rcx)
	je	.L21
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, 80(%rcx)
	movq	584(%r9), %rax
	jmp	.L16
.L30:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%eax, %eax
	ret
.L35:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L34:
	movq	%rdi, %rsi
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine15UpdateFlipbooksEv, .-_ZN3wze6engine15UpdateFlipbooksEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine18UpdateOverlapboxesEv
	.type	_ZN3wze6engine18UpdateOverlapboxesEv, @function
_ZN3wze6engine18UpdateOverlapboxesEv:
.LFB8170:
	.cfi_startproc
	movq	584(%rdi), %rcx
	cmpq	$1, %rcx
	jbe	.L89
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
	leaq	520(%r15), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	592(%rdi), %rdi
	movq	%r13, 8(%rsp)
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L39:
	addq	$1, %r14
	cmpq	%rcx, %r14
	jnb	.L92
.L38:
	movq	(%rdi,%r14,8), %rax
	leaq	0(,%r14,8), %rbp
	testq	%rax, %rax
	je	.L39
	cmpq	$1, 152(%rax)
	jbe	.L39
	movsd	264(%rax), %xmm0
	movq	8(%rsp), %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	592(%r15), %rax
	cmpq	584(%r15), %r14
	jnb	.L93
	movq	(%rax,%rbp), %rax
	movq	8(%rsp), %rdi
	movsd	%xmm0, 16(%rsp)
	movsd	264(%rax), %xmm0
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	584(%r15), %rcx
	movq	592(%r15), %rdi
	movsd	16(%rsp), %xmm1
	movapd	%xmm0, %xmm4
	cmpq	%rcx, %r14
	jnb	.L62
	movl	$1, %ebx
	movq	%r15, %r13
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L63:
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r12
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L43
	movzwl	80(%rax), %r8d
	pxor	%xmm2, %xmm2
	movsd	32(%rax), %xmm0
	movsd	40(%rax), %xmm3
	movzwl	82(%rax), %eax
	movl	%r8d, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm2
	subsd	%xmm2, %xmm0
	comisd	%xmm0, %xmm1
	jb	.L87
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r8d, %xmm2
	addsd	%xmm2, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L87
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
	jb	.L87
	comisd	%xmm4, %xmm0
	jnb	.L94
	.p2align 4,,10
	.p2align 3
.L87:
	xorl	%r15d, %r15d
.L44:
	cmpq	%rcx, %r14
	jnb	.L95
	movq	(%rdi,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L96
.L61:
	movq	(%rsi,%r12), %rax
	movl	%r15d, 112(%rax)
.L43:
	addq	$1, %rbx
	cmpq	%rcx, %r14
	jnb	.L62
.L41:
	movq	(%rdi,%rbp), %rax
	cmpq	152(%rax), %rbx
	jb	.L63
	addq	$1, %r14
	movq	%r13, %r15
	cmpq	%rcx, %r14
	jb	.L38
.L92:
	addq	$88, %rsp
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
.L94:
	.cfi_restore_state
	leaq	264(%r13), %rax
	movl	$232, %esi
	movsd	%xmm4, 32(%rsp)
	movq	%rax, %rdi
	movsd	%xmm1, 24(%rsp)
	movq	%rax, 16(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movsd	24(%rsp), %xmm1
	movsd	32(%rsp), %xmm4
	testb	%al, %al
	je	.L97
	movl	$11, 68(%rsp)
	movl	$43, %r15d
	movl	$35, %r8d
	movl	$3, %r10d
	movl	$67, %r11d
	movl	$19, %edx
	movl	$83, %ecx
	movl	$75, 72(%rsp)
	movl	$51, 76(%rsp)
.L49:
	movq	16(%rsp), %rdi
	movl	$233, %esi
	movl	%r10d, 64(%rsp)
	movl	%r11d, 60(%rsp)
	movl	%edx, 56(%rsp)
	movl	%ecx, 52(%rsp)
	movl	%r8d, 24(%rsp)
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm1, 32(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movl	24(%rsp), %r8d
	movsd	32(%rsp), %xmm1
	testb	%al, %al
	movsd	40(%rsp), %xmm4
	movl	52(%rsp), %ecx
	movl	56(%rsp), %edx
	movl	60(%rsp), %r11d
	movl	64(%rsp), %r10d
	je	.L98
.L52:
	movq	16(%rsp), %rdi
	movl	$234, %esi
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm1, 24(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movq	584(%r13), %rcx
	movq	592(%r13), %rdi
	testb	%al, %al
	movsd	24(%rsp), %xmm1
	movsd	32(%rsp), %xmm4
	jne	.L44
	cmpq	%rcx, %r14
	jnb	.L99
	movq	(%rdi,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L100
	movq	(%rsi,%r12), %rax
	movl	68(%rsp), %r15d
	testb	$32, 112(%rax)
	cmovne	72(%rsp), %r15d
	jmp	.L61
.L98:
	movq	592(%r13), %rax
	cmpq	584(%r13), %r14
	jnb	.L101
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L102
	movq	(%rsi,%r12), %rax
	testb	$8, 112(%rax)
	jne	.L73
	movl	%r10d, 68(%rsp)
	movl	%r8d, %r15d
	movl	%r11d, 72(%rsp)
	jmp	.L52
.L97:
	movq	592(%r13), %rax
	cmpq	584(%r13), %r14
	jnb	.L103
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rcx
	cmpq	152(%rax), %rbx
	jnb	.L104
	movq	(%rcx,%r12), %rax
	movl	112(%rax), %eax
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
	movl	%edx, 68(%rsp)
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$77, %edx
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	movl	%edx, 72(%rsp)
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
	movl	%edx, 76(%rsp)
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$21, %edx
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$85, %ecx
	jmp	.L49
.L89:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	xorl	%eax, %eax
	ret
.L73:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	%edx, 68(%rsp)
	movl	76(%rsp), %r15d
	movl	%ecx, 72(%rsp)
	jmp	.L52
.L62:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L96:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
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
.L104:
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
.L93:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
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
	.cfi_endproc
.LFE8170:
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
.LFB8167:
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
	subl	748(%rbp), %eax
	leaq	80(%rbp), %rdi
	movl	%eax, 752(%rbp)
	call	_ZN3wze6engine6camera6UpdateEv@PLT
	leaq	32(%rbp), %rdi
	call	_ZN3wze6engine6render6UpdateEv@PLT
	call	SDL_GetTicks@PLT
	subl	752(%rbp), %eax
	subl	748(%rbp), %eax
	leaq	736(%rbp), %rdi
	movl	%eax, 756(%rbp)
	call	_ZN3wze6engine6timing6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine15UpdateFlipbooksEv
	movq	8(%rbp), %rdi
	call	SDL_GetWindowFlags@PLT
	movl	%eax, 28(%rbp)
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L108:
	cmpq	%rax, %rbx
	jnb	.L122
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
.L106:
	movq	%r12, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	je	.L123
	cmpl	$256, (%rsp)
	je	.L119
	movq	776(%rbp), %rax
	movq	784(%rbp), %rdi
	cmpq	%rax, %rbx
	jne	.L108
	leaq	11(%rbx), %r13
	movq	%r13, 776(%rbp)
	leaq	0(,%r13,8), %rsi
	subq	%r13, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 784(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L124
	movq	776(%rbp), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r13, %rdx
	jb	.L108
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
	jb	.L112
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L111:
	movq	784(%rbp), %rdx
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
	jnb	.L111
.L112:
	movq	776(%rbp), %rax
	movq	784(%rbp), %rdi
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L123:
	movq	776(%rbp), %r12
	cmpq	%r12, %rbx
	jb	.L125
.L117:
	leaq	264(%rbp), %rdi
	call	_ZN3wze6engine4keys6UpdateEv@PLT
	leaq	520(%rbp), %rdi
	call	_ZN3wze6engine5mouse6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine18UpdateOverlapboxesEv
	movl	$1, %eax
.L105:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L126
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
.L119:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L125:
	movq	%rbx, 776(%rbp)
	movq	784(%rbp), %rdi
	testq	%rbx, %rbx
	je	.L127
	leaq	0(,%rbx,8), %rsi
	subq	%rbx, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 784(%rbp)
	testq	%rax, %rax
	jne	.L117
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	subq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L127:
	call	free@PLT
	movq	$0, 784(%rbp)
	jmp	.L117
.L122:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L124:
	leaq	.LC1(%rip), %rdi
	movl	$11, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L126:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6UpdateEv, .-_ZN3wze6engine6UpdateEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Wizard Engine"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.align 8
.LC6:
	.string	"wze::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %p, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC7:
	.string	"wze::engine.engine(): Mix_Init() failed\nParams: Title: %s, IconPath: %p, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC8:
	.string	"wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %p, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.align 8
.LC9:
	.string	"wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %p, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n"
	.section	.rodata.str1.1
.LC10:
	.string	"engine/wizard.png"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.type	_ZN3wze6engineC2EPKcS2_tth, @function
_ZN3wze6engineC2EPKcS2_tth:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	movq	%rdi, %rsi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdx, 8(%rsp)
	movl	%r9d, 24(%rsp)
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
	leaq	248(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine5audioC1EPS0_@PLT
	leaq	264(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine4keysC1EPS0_@PLT
	leaq	520(%rbx), %rdi
	movq	%rbx, %rsi
	call	_ZN3wze6engine5mouseC1EPS0_@PLT
	leaq	576(%rbx), %rbp
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actorsC1EPS0_@PLT
.LEHE1:
	leaq	600(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB2:
	call	_ZN3wze6engine9collisionC1EPS0_@PLT
.LEHE2:
	leaq	632(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB3:
	call	_ZN3wze6engine6vectorC1EPS0_@PLT
.LEHE3:
	leaq	640(%rbx), %rdi
	movq	%rbx, %rsi
.LEHB4:
	call	_ZN3wze6engine7threadsC1EPS0_@PLT
.LEHE4:
	leaq	664(%rbx), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
.LEHB5:
	call	_ZN3wze6engine6assetsC1EPS0_@PLT
.LEHE5:
	leaq	736(%rbx), %r14
	movq	%rbx, %rsi
	movq	%r14, %rdi
.LEHB6:
	call	_ZN3wze6engine6timingC1EPS0_@PLT
.LEHE6:
	movq	$10, 776(%rbx)
	movl	$560, %edi
	call	malloc@PLT
	movq	%rax, 784(%rbx)
	testq	%rax, %rax
	je	.L180
	testq	%r15, %r15
	leaq	.LC3(%rip), %rax
	movl	$62001, %edi
	cmove	%rax, %r15
.LEHB7:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L181
	movl	$251, %edi
	call	Mix_Init@PLT
	testl	%eax, %eax
	je	.L182
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	testl	%eax, %eax
	jne	.L183
	call	TTF_Init@PLT
	movzwl	%r12w, %r8d
	movzwl	%r13w, %ecx
	testl	%eax, %eax
	jne	.L184
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	_ZN3wze6engine6window4OpenEPKcS3_tt@PLT
	leal	-1(%r13), %eax
	shrw	%r13w
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	movw	%ax, 40(%rbx)
	leal	-1(%r12), %eax
	shrw	%r12w
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	movd	%r13d, %xmm1
	movw	%ax, 42(%rbx)
	movd	%r12d, %xmm7
	punpckldq	%xmm7, %xmm1
	psubd	%xmm1, %xmm0
	cvtdq2pd	%xmm0, %xmm0
	movups	%xmm0, 88(%rbx)
	call	SDL_GetKeyboardState@PLT
	movq	%rax, 272(%rbx)
	movzbl	24(%rsp), %eax
	xorl	%edi, %edi
	movb	%al, 744(%rbx)
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movq	16(%rsp), %rdi
	leaq	.LC10(%rip), %rsi
	call	_ZN3wze6engine6assets11LoadTextureEPKc@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movl	%r12d, %r8d
	cvtsi2sdl	%r13d, %xmm0
	movl	%r12d, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	cvtsi2sdl	%r12d, %xmm1
	movq	%rbp, %rdi
	movq	%rax, %r15
	call	_ZN3wze6engine6actors3NewEPvyddttd@PLT
	movzbl	%al, %r12d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	call	_ZN3wze6engine6actorsixEy@PLT
	movzbl	%r15b, %esi
	leaq	40(%rax), %rdi
	movq	%rsi, 24(%rsp)
	call	_ZN3wze6engine6actors5actor8textures3NewEy@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%rax, %r15
	call	_ZN3wze6engine6actorsixEy@PLT
	movzbl	%r15b, %r15d
	leaq	40(%rax), %rdi
	movq	%r15, %rsi
	call	_ZN3wze6engine6actors5actor8texturesixEy@PLT
	movb	$0, 23(%rax)
	movq	$0x000000000, 8(%rsp)
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L144:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	je	.L178
	movsd	8(%rsp), %xmm0
	call	round@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	cvttsd2sil	%xmm0, %r13d
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	40(%rax), %rdi
	movq	%r15, %rsi
	call	_ZN3wze6engine6actors5actor8texturesixEy@PLT
	movb	%r13b, 23(%rax)
.L139:
	movq	%r14, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	.LC12(%rip), %xmm5
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC11(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	comisd	%xmm0, %xmm5
	movsd	%xmm0, 8(%rsp)
	jnb	.L144
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L149:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	je	.L178
	movsd	8(%rsp), %xmm0
	call	round@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	cvttsd2sil	%xmm0, %r13d
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	40(%rax), %rdi
	movq	%r15, %rsi
	call	_ZN3wze6engine6actors5actor8texturesixEy@PLT
	movb	%r13b, 23(%rax)
.L145:
	movq	%r14, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	8(%rsp), %xmm3
	pxor	%xmm6, %xmm6
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC11(%rip), %xmm0
	subsd	%xmm0, %xmm3
	comisd	%xmm6, %xmm3
	movsd	%xmm3, 8(%rsp)
	jnb	.L149
.L178:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	40(%rax), %rdi
	movq	%r15, %rsi
	call	_ZN3wze6engine6actors5actor8textures6DeleteEy@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdi
	call	_ZN3wze6engine6assets13UnloadTextureEy@PLT
.LEHE7:
	addq	$40, %rsp
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
.L180:
	.cfi_restore_state
	movl	$10, %esi
	leaq	.LC5(%rip), %rdi
.LEHB8:
	call	printf@PLT
.LEHE8:
.L135:
	movl	$1, %edi
	call	exit@PLT
.L184:
	movzbl	24(%rsp), %r9d
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	xorl	%eax, %eax
	leaq	.LC9(%rip), %rdi
.LEHB9:
	call	printf@PLT
	jmp	.L135
.L183:
	movzbl	24(%rsp), %r9d
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	xorl	%eax, %eax
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	jmp	.L135
.L182:
	movq	8(%rsp), %rdx
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	movq	%r15, %rsi
	movzbl	24(%rsp), %r9d
	leaq	.LC7(%rip), %rdi
	call	printf@PLT
	jmp	.L135
.L181:
	movzbl	24(%rsp), %r9d
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	xorl	%eax, %eax
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	leaq	.LC6(%rip), %rdi
	call	printf@PLT
.LEHE9:
	jmp	.L135
.L163:
	movq	%rax, %rbp
	jmp	.L150
.L161:
	movq	%rax, %rbp
	jmp	.L152
.L165:
	movq	%rax, %rbp
	jmp	.L154
.L162:
	movq	%rax, %rbp
	jmp	.L151
.L159:
	movq	%rax, %rbp
	jmp	.L157
.L164:
	movq	%rax, %rbp
	jmp	.L154
.L160:
	movq	%rax, %rbp
	jmp	.L156
	.section	.gcc_except_table
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
	.uleb128 .LEHB0-.LFB8162
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8162
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L159-.LFB8162
	.uleb128 0
	.uleb128 .LEHB2-.LFB8162
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L160-.LFB8162
	.uleb128 0
	.uleb128 .LEHB3-.LFB8162
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L164-.LFB8162
	.uleb128 0
	.uleb128 .LEHB4-.LFB8162
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L165-.LFB8162
	.uleb128 0
	.uleb128 .LEHB5-.LFB8162
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L161-.LFB8162
	.uleb128 0
	.uleb128 .LEHB6-.LFB8162
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L162-.LFB8162
	.uleb128 0
	.uleb128 .LEHB7-.LFB8162
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L163-.LFB8162
	.uleb128 0
	.uleb128 .LEHB8-.LFB8162
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L162-.LFB8162
	.uleb128 0
	.uleb128 .LEHB9-.LFB8162
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L163-.LFB8162
	.uleb128 0
.LLSDACSE8162:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8162
	.type	_ZN3wze6engineC2EPKcS2_tth.cold, @function
_ZN3wze6engineC2EPKcS2_tth.cold:
.LFSB8162:
.L150:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	784(%rbx), %rdi
	call	free@PLT
.L151:
	movq	728(%rbx), %rdi
	call	free@PLT
	movq	712(%rbx), %rdi
	call	free@PLT
	movq	696(%rbx), %rdi
	call	free@PLT
	movq	680(%rbx), %rdi
	call	free@PLT
.L152:
	movq	656(%rbx), %rdi
	xorl	%r12d, %r12d
	call	free@PLT
.L153:
	movq	624(%rbx), %rdi
	cmpq	616(%rbx), %r12
	jb	.L155
	call	free@PLT
.L156:
	movq	592(%rbx), %rdi
	call	free@PLT
.L157:
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	%rbp, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L154:
	xorl	%r12d, %r12d
	jmp	.L153
.L155:
	movq	%r12, %rax
	addq	$1, %r12
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L153
	.cfi_endproc
.LFE8162:
	.section	.gcc_except_table
.LLSDAC8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8162-.LLSDACSBC8162
.LLSDACSBC8162:
	.uleb128 .LEHB10-.LCOLDB13
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC8162:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engineC2EPKcS2_tth, .-_ZN3wze6engineC2EPKcS2_tth
	.section	.text.unlikely
	.size	_ZN3wze6engineC2EPKcS2_tth.cold, .-_ZN3wze6engineC2EPKcS2_tth.cold
.LCOLDE13:
	.text
.LHOTE13:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC11:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC12:
	.long	0
	.long	1081073664
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
