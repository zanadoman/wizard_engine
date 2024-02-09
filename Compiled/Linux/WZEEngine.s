	.file	"WZEEngine.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineD2Ev
	.type	_ZN3wze6engineD2Ev, @function
_ZN3wze6engineD2Ev:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	xorl	%esi, %esi
	addq	$640, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%edx, %edx
	leaq	664(%rbp), %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE@PLT
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
	leaq	576(%rbp), %rdi
	call	_ZN3wze6engine6actorsD1Ev@PLT
	movq	72(%rbp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8162:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
.LLSDACSE8162:
	.text
	.size	_ZN3wze6engineD2Ev, .-_ZN3wze6engineD2Ev
	.globl	_ZN3wze6engineD1Ev
	.set	_ZN3wze6engineD1Ev,_ZN3wze6engineD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6RandomEii
	.type	_ZN3wze6engine6RandomEii, @function
_ZN3wze6engine6RandomEii:
.LFB8165:
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
.LFE8165:
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
.LFB8166:
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
.LFE8166:
	.size	_ZN3wze6engine15UpdateFlipbooksEv, .-_ZN3wze6engine15UpdateFlipbooksEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine18UpdateOverlapboxesEv
	.type	_ZN3wze6engine18UpdateOverlapboxesEv, @function
_ZN3wze6engine18UpdateOverlapboxesEv:
.LFB8167:
	.cfi_startproc
	movq	584(%rdi), %rcx
	cmpq	$1, %rcx
	jbe	.L90
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
	leaq	520(%rdi), %r13
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
	movq	592(%rdi), %r8
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L39:
	addq	$1, %r14
	cmpq	%rcx, %r14
	jnb	.L94
.L38:
	movq	(%r8,%r14,8), %rax
	leaq	0(,%r14,8), %rbp
	testq	%rax, %rax
	je	.L39
	cmpq	$1, 152(%rax)
	ja	.L95
	cmpq	%rcx, %r14
	jnb	.L63
	addq	$1, %r14
	cmpq	%rcx, %r14
	jb	.L38
.L94:
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
.L95:
	.cfi_restore_state
	movsd	264(%rax), %xmm0
	movq	%r13, %rdi
	call	_ZN3wze6engine5mouse4GetXEd@PLT
	movq	592(%r15), %rax
	cmpq	584(%r15), %r14
	jnb	.L96
	movq	(%rax,%rbp), %rax
	movsd	%xmm0, 8(%rsp)
	movq	%r13, %rdi
	movsd	264(%rax), %xmm0
	call	_ZN3wze6engine5mouse4GetYEd@PLT
	movq	584(%r15), %rcx
	movq	592(%r15), %r8
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	cmpq	%rcx, %r14
	jnb	.L63
	movq	%r13, 8(%rsp)
	movl	$1, %ebx
	movq	%r14, %r13
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L64:
	movq	160(%rax), %rax
	leaq	0(,%rbx,8), %r14
	movq	(%rax,%rbx,8), %rax
	testq	%rax, %rax
	je	.L44
	movzwl	80(%rax), %edi
	pxor	%xmm1, %xmm1
	movsd	32(%rax), %xmm0
	movsd	40(%rax), %xmm3
	movzwl	82(%rax), %eax
	movl	%edi, %esi
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm1
	subsd	%xmm1, %xmm0
	comisd	%xmm0, %xmm2
	jb	.L88
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edi, %xmm1
	addsd	%xmm1, %xmm0
	comisd	%xmm2, %xmm0
	jb	.L88
	movl	%eax, %esi
	pxor	%xmm0, %xmm0
	shrw	%si
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm0
	addsd	%xmm3, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	comisd	%xmm1, %xmm4
	jb	.L88
	comisd	%xmm4, %xmm0
	jnb	.L97
	.p2align 4,,10
	.p2align 3
.L88:
	xorl	%r12d, %r12d
.L45:
	cmpq	%rcx, %r13
	jnb	.L98
	movq	(%r8,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L99
.L62:
	movq	(%rsi,%r14), %rax
	movl	%r12d, 112(%rax)
.L44:
	addq	$1, %rbx
	cmpq	%rcx, %r13
	jnb	.L100
.L42:
	movq	(%r8,%rbp), %rax
	cmpq	152(%rax), %rbx
	jb	.L64
	movq	%r13, %r14
	movq	8(%rsp), %r13
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L97:
	leaq	264(%r15), %rax
	movl	$232, %esi
	movsd	%xmm4, 32(%rsp)
	movq	%rax, %rdi
	movsd	%xmm2, 24(%rsp)
	movq	%rax, 16(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm4
	testb	%al, %al
	je	.L101
	movl	$11, 76(%rsp)
	movl	$43, %r12d
	movl	$35, %r8d
	movl	$3, %r11d
	movl	$67, %r10d
	movl	$51, %r9d
	movl	$19, %edx
	movl	$75, 72(%rsp)
	movl	$83, %ecx
.L50:
	movq	16(%rsp), %rdi
	movl	$233, %esi
	movl	%r8d, 68(%rsp)
	movl	%r11d, 64(%rsp)
	movl	%ecx, 60(%rsp)
	movl	%r9d, 56(%rsp)
	movl	%r10d, 52(%rsp)
	movl	%edx, 24(%rsp)
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm2, 32(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movl	24(%rsp), %edx
	movsd	32(%rsp), %xmm2
	testb	%al, %al
	movsd	40(%rsp), %xmm4
	movl	52(%rsp), %r10d
	movl	56(%rsp), %r9d
	movl	60(%rsp), %ecx
	movl	64(%rsp), %r11d
	movl	68(%rsp), %r8d
	je	.L102
.L53:
	movq	16(%rsp), %rdi
	movl	$234, %esi
	movsd	%xmm4, 32(%rsp)
	movsd	%xmm2, 24(%rsp)
	call	_ZN3wze6engine4keysixENS_3keyE@PLT
	movq	584(%r15), %rcx
	movq	592(%r15), %r8
	testb	%al, %al
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm4
	jne	.L45
	cmpq	%rcx, %r13
	jnb	.L103
	movq	(%r8,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L104
	movq	(%rsi,%r14), %rax
	movl	76(%rsp), %r12d
	testb	$32, 112(%rax)
	cmovne	72(%rsp), %r12d
	jmp	.L62
.L101:
	movq	592(%r15), %rax
	cmpq	584(%r15), %r13
	jnb	.L105
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rcx
	cmpq	152(%rax), %rbx
	jnb	.L106
	movq	(%rcx,%r14), %rax
	movl	112(%rax), %eax
	andl	$2, %eax
	cmpl	$1, %eax
	sbbl	%r12d, %r12d
	andl	$-4, %r12d
	addl	$45, %r12d
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$13, %edx
	cmpl	$1, %eax
	movl	%edx, 76(%rsp)
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$77, %edx
	cmpl	$1, %eax
	sbbl	%r8d, %r8d
	movl	%edx, 72(%rsp)
	andl	$-4, %r8d
	addl	$37, %r8d
	cmpl	$1, %eax
	sbbl	%r11d, %r11d
	andl	$-4, %r11d
	addl	$5, %r11d
	cmpl	$1, %eax
	sbbl	%r10d, %r10d
	andl	$-4, %r10d
	addl	$69, %r10d
	cmpl	$1, %eax
	sbbl	%r9d, %r9d
	andl	$-4, %r9d
	addl	$53, %r9d
	cmpl	$1, %eax
	sbbl	%edx, %edx
	andl	$-4, %edx
	addl	$21, %edx
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	andl	$-4, %ecx
	addl	$85, %ecx
	jmp	.L50
.L102:
	movq	592(%r15), %rax
	cmpq	584(%r15), %r13
	jnb	.L107
	movq	(%rax,%rbp), %rax
	movq	160(%rax), %rsi
	cmpq	152(%rax), %rbx
	jnb	.L108
	movq	(%rsi,%r14), %rax
	testb	$8, 112(%rax)
	je	.L109
	movl	%edx, 76(%rsp)
	movl	%r9d, %r12d
	movl	%ecx, 72(%rsp)
	jmp	.L53
.L109:
	movl	%r11d, 76(%rsp)
	movl	%r8d, %r12d
	movl	%r10d, 72(%rsp)
	jmp	.L53
.L90:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	xorl	%eax, %eax
	ret
.L100:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %r14
.L63:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L99:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
	leaq	.LC0(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L96:
	leaq	.LC0(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L105:
	leaq	.LC0(%rip), %rdi
	movq	%r13, %rsi
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
.L107:
	leaq	.LC0(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L108:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L103:
	leaq	.LC0(%rip), %rdi
	movq	%r13, %rsi
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
	.cfi_endproc
.LFE8167:
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
.LFB8164:
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
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L113:
	cmpq	%rax, %rbx
	jnb	.L127
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
.L111:
	movq	%r12, %rdi
	call	SDL_PollEvent@PLT
	testl	%eax, %eax
	je	.L128
	cmpl	$256, (%rsp)
	je	.L124
	movq	776(%rbp), %rax
	movq	784(%rbp), %rdi
	cmpq	%rax, %rbx
	jne	.L113
	leaq	11(%rbx), %r13
	movq	%r13, 776(%rbp)
	leaq	0(,%r13,8), %rsi
	subq	%r13, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 784(%rbp)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L129
	movq	776(%rbp), %rax
	leaq	-1(%rax), %rdx
	cmpq	%r13, %rdx
	jb	.L113
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
	jb	.L117
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	-728(,%rdx,8), %rax
	.p2align 4,,10
	.p2align 3
.L116:
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
	jnb	.L116
.L117:
	movq	776(%rbp), %rax
	movq	784(%rbp), %rdi
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L128:
	movq	776(%rbp), %r12
	cmpq	%r12, %rbx
	jb	.L130
.L122:
	leaq	264(%rbp), %rdi
	call	_ZN3wze6engine4keys6UpdateEv@PLT
	leaq	520(%rbp), %rdi
	call	_ZN3wze6engine5mouse6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine18UpdateOverlapboxesEv
	movl	$1, %eax
.L110:
	movq	56(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L131
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
.L124:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L130:
	movq	%rbx, 776(%rbp)
	movq	784(%rbp), %rdi
	testq	%rbx, %rbx
	je	.L132
	leaq	0(,%rbx,8), %rsi
	subq	%rbx, %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 784(%rbp)
	testq	%rax, %rax
	jne	.L122
	movq	%r12, %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rsi
	subq	%rbx, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L132:
	call	free@PLT
	movq	$0, 784(%rbp)
	jmp	.L122
.L127:
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L129:
	leaq	.LC1(%rip), %rdi
	movl	$11, %edx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L131:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6UpdateEv, .-_ZN3wze6engine6UpdateEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Wizard Engine"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC6:
	.string	"wze::engine.engine(): Mix_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC7:
	.string	"wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.align 8
.LC8:
	.string	"wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n"
	.section	.rodata.str1.1
.LC9:
	.string	"engine/wizard.png"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engineC2EPKcS2_tth
	.type	_ZN3wze6engineC2EPKcS2_tth, @function
_ZN3wze6engineC2EPKcS2_tth:
.LFB8159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8159
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
	testq	%r15, %r15
	leaq	.LC3(%rip), %rax
	movq	$0, 776(%rbx)
	movl	$62001, %edi
	movq	$0, 784(%rbx)
	cmove	%rax, %r15
.LEHB7:
	call	SDL_Init@PLT
	testl	%eax, %eax
	jne	.L183
	movl	$251, %edi
	call	Mix_Init@PLT
	testl	%eax, %eax
	je	.L184
	movl	$2048, %ecx
	movl	$2, %edx
	movl	$32784, %esi
	movl	$44100, %edi
	call	Mix_OpenAudio@PLT
	testl	%eax, %eax
	jne	.L185
	call	TTF_Init@PLT
	movzwl	%r12w, %r8d
	movzwl	%r13w, %ecx
	testl	%eax, %eax
	jne	.L186
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
	movd	%r12d, %xmm6
	punpckldq	%xmm6, %xmm1
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
	leaq	.LC9(%rip), %rsi
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
	movq	%rax, %r13
	call	_ZN3wze6engine6actorsixEy@PLT
	movzbl	%r13b, %r13d
	leaq	40(%rax), %rdi
	movq	%r13, %rsi
	call	_ZN3wze6engine6actors5actor8texturesixEy@PLT
	movb	$0, 23(%rax)
	movq	$0x000000000, 8(%rsp)
	jmp	.L143
	.p2align 4,,10
	.p2align 3
.L187:
	movq	%r14, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	.LC11(%rip), %xmm5
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC10(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	comisd	%xmm0, %xmm5
	movsd	%xmm0, 8(%rsp)
	jb	.L148
	call	round@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	cvttsd2sil	%xmm0, %r15d
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	40(%rax), %rdi
	movq	%r13, %rsi
	call	_ZN3wze6engine6actors5actor8texturesixEy@PLT
	movb	%r15b, 23(%rax)
.L143:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L187
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L150:
	movq	%r14, %rdi
	call	_ZN3wze6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	8(%rsp), %xmm3
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC10(%rip), %xmm0
	subsd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	comisd	%xmm0, %xmm3
	movsd	%xmm3, 8(%rsp)
	jb	.L154
	movapd	%xmm3, %xmm0
	call	round@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	cvttsd2sil	%xmm0, %r15d
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	40(%rax), %rdi
	movq	%r13, %rsi
	call	_ZN3wze6engine6actors5actor8texturesixEy@PLT
	movb	%r15b, 23(%rax)
.L148:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv
	testb	%al, %al
	jne	.L150
.L154:
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actorsixEy@PLT
	leaq	40(%rax), %rdi
	movq	%r13, %rsi
	call	_ZN3wze6engine6actors5actor8textures6DeleteEy@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors6DeleteEy@PLT
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdi
	call	_ZN3wze6engine6assets13UnloadTextureEy@PLT
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
.L183:
	.cfi_restore_state
	movzbl	24(%rsp), %r9d
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	xorl	%eax, %eax
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	leaq	.LC5(%rip), %rdi
	call	printf@PLT
.L140:
	movl	$1, %edi
	call	exit@PLT
.L186:
	movzbl	24(%rsp), %r9d
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	jmp	.L140
.L185:
	movzbl	24(%rsp), %r9d
	movq	8(%rsp), %rdx
	movq	%r15, %rsi
	xorl	%eax, %eax
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	leaq	.LC7(%rip), %rdi
	call	printf@PLT
	jmp	.L140
.L184:
	movq	8(%rsp), %rdx
	movzwl	%r13w, %ecx
	movzwl	%r12w, %r8d
	movq	%r15, %rsi
	movzbl	24(%rsp), %r9d
	leaq	.LC6(%rip), %rdi
	call	printf@PLT
.LEHE7:
	jmp	.L140
.L166:
	movq	%rax, %r12
	jmp	.L164
.L170:
	movq	%rax, %r12
	jmp	.L157
.L169:
	movq	%rax, %r12
	jmp	.L158
.L168:
	movq	%rax, %r12
	jmp	.L159
.L171:
	movq	%rax, %r12
	jmp	.L161
.L167:
	movq	%rax, %r12
	jmp	.L163
.L172:
	movq	%rax, %r12
	jmp	.L161
	.section	.gcc_except_table
.LLSDA8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8159-.LLSDACSB8159
.LLSDACSB8159:
	.uleb128 .LEHB0-.LFB8159
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8159
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L166-.LFB8159
	.uleb128 0
	.uleb128 .LEHB2-.LFB8159
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L167-.LFB8159
	.uleb128 0
	.uleb128 .LEHB3-.LFB8159
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L171-.LFB8159
	.uleb128 0
	.uleb128 .LEHB4-.LFB8159
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L172-.LFB8159
	.uleb128 0
	.uleb128 .LEHB5-.LFB8159
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L168-.LFB8159
	.uleb128 0
	.uleb128 .LEHB6-.LFB8159
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L169-.LFB8159
	.uleb128 0
	.uleb128 .LEHB7-.LFB8159
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L170-.LFB8159
	.uleb128 0
.LLSDACSE8159:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8159
	.type	_ZN3wze6engineC2EPKcS2_tth.cold, @function
_ZN3wze6engineC2EPKcS2_tth.cold:
.LFSB8159:
.L157:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	784(%rbx), %rdi
	call	free@PLT
.L158:
	movq	728(%rbx), %rdi
	call	free@PLT
	movq	712(%rbx), %rdi
	call	free@PLT
	movq	696(%rbx), %rdi
	call	free@PLT
	movq	680(%rbx), %rdi
	call	free@PLT
.L159:
	movq	656(%rbx), %rdi
	xorl	%r13d, %r13d
	call	free@PLT
.L160:
	movq	624(%rbx), %rdi
	cmpq	616(%rbx), %r13
	jb	.L162
	call	free@PLT
.L163:
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actorsD1Ev@PLT
.L164:
	movq	72(%rbx), %rdi
	call	free@PLT
	movq	%r12, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L161:
	xorl	%r13d, %r13d
	jmp	.L160
.L162:
	movq	%r13, %rax
	addq	$1, %r13
	salq	$4, %rax
	movq	8(%rdi,%rax), %rdi
	call	free@PLT
	jmp	.L160
	.cfi_endproc
.LFE8159:
	.section	.gcc_except_table
.LLSDAC8159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8159-.LLSDACSBC8159
.LLSDACSBC8159:
	.uleb128 .LEHB8-.LCOLDB12
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC8159:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engineC2EPKcS2_tth, .-_ZN3wze6engineC2EPKcS2_tth
	.section	.text.unlikely
	.size	_ZN3wze6engineC2EPKcS2_tth.cold, .-_ZN3wze6engineC2EPKcS2_tth.cold
.LCOLDE12:
	.text
.LHOTE12:
	.globl	_ZN3wze6engineC1EPKcS2_tth
	.set	_ZN3wze6engineC1EPKcS2_tth,_ZN3wze6engineC2EPKcS2_tth
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC10:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC11:
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
