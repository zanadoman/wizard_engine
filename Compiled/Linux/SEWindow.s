	.file	"SEWindow.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6windowC2EPS0_
	.type	_ZN4slay6engine6windowC2EPS0_, @function
_ZN4slay6engine6windowC2EPS0_:
.LFB2232:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$0, 24(%rdi)
	ret
	.cfi_endproc
.LFE2232:
	.size	_ZN4slay6engine6windowC2EPS0_, .-_ZN4slay6engine6windowC2EPS0_
	.globl	_ZN4slay6engine6windowC1EPS0_
	.set	_ZN4slay6engine6windowC1EPS0_,_ZN4slay6engine6windowC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window9GetHeightEv
	.type	_ZN4slay6engine6window9GetHeightEv, @function
_ZN4slay6engine6window9GetHeightEv:
.LFB2234:
	.cfi_startproc
	movzwl	26(%rdi), %eax
	ret
	.cfi_endproc
.LFE2234:
	.size	_ZN4slay6engine6window9GetHeightEv, .-_ZN4slay6engine6window9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window8GetWidthEv
	.type	_ZN4slay6engine6window8GetWidthEv, @function
_ZN4slay6engine6window8GetWidthEv:
.LFB2235:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	ret
	.cfi_endproc
.LFE2235:
	.size	_ZN4slay6engine6window8GetWidthEv, .-_ZN4slay6engine6window8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window7IsShownEv
	.type	_ZN4slay6engine6window7IsShownEv, @function
_ZN4slay6engine6window7IsShownEv:
.LFB2236:
	.cfi_startproc
	movl	28(%rdi), %eax
	shrl	$2, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE2236:
	.size	_ZN4slay6engine6window7IsShownEv, .-_ZN4slay6engine6window7IsShownEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window8HasFocusEv
	.type	_ZN4slay6engine6window8HasFocusEv, @function
_ZN4slay6engine6window8HasFocusEv:
.LFB2237:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZN4slay6engine6window8HasFocusEv, .-_ZN4slay6engine6window8HasFocusEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"slay::engine.window.New(): SDL_CreateWindow() failed\nParams: Title: %s, Width: %d, Height: %d\n"
	.align 8
.LC1:
	.string	"slay::engine.window.New(): SDL_CreateRenderer() failed\nParams: Title: %s, Width: %d, Height: %d\n"
	.align 8
.LC2:
	.string	"slay::engine.window.New(): SDL_RenderSetLogicalSize() failed\nParams: Title: %s, Width: %d, Height: %d\n"
	.align 8
.LC3:
	.string	"slay::engine.window.New(): SDL_SetRenderDrawBlendMode() failed\nParams: Title: %s, Width: %d, Height: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window4OpenEPKctt
	.type	_ZN4slay6engine6window4OpenEPKctt, @function
_ZN4slay6engine6window4OpenEPKctt:
.LFB2238:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movzwl	%cx, %r15d
	movl	$4385, %r9d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movzwl	%dx, %r14d
	movl	%r15d, %r8d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	movl	$536805376, %esi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d
	movl	$536805376, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%ecx, %ebp
	movl	%r14d, %ecx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movq	%r13, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	SDL_CreateWindow@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L13
	movq	%rax, %rdi
	movl	$2, %edx
	movl	$-1, %esi
	call	SDL_CreateRenderer@PLT
	movq	%rax, 16(%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L14
	movl	%r15d, %edx
	movl	%r14d, %esi
	call	SDL_RenderSetLogicalSize@PLT
	testl	%eax, %eax
	jne	.L15
	movq	16(%rbx), %rdi
	movl	$1, %esi
	call	SDL_SetRenderDrawBlendMode@PLT
	testl	%eax, %eax
	jne	.L16
	movw	%r12w, 24(%rbx)
	xorl	%eax, %eax
	movw	%bp, 26(%rbx)
	addq	$8, %rsp
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
.L13:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movl	%r15d, %ecx
	movl	%r14d, %edx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L16:
	leaq	.LC3(%rip), %rdi
	movl	%r15d, %ecx
	movl	%r14d, %edx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L15:
	leaq	.LC2(%rip), %rdi
	movl	%r15d, %ecx
	movl	%r14d, %edx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L14:
	leaq	.LC1(%rip), %rdi
	movl	%r15d, %ecx
	movl	%r14d, %edx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6window4OpenEPKctt, .-_ZN4slay6engine6window4OpenEPKctt
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6window5CloseEv
	.type	_ZN4slay6engine6window5CloseEv, @function
_ZN4slay6engine6window5CloseEv:
.LFB2239:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	call	SDL_DestroyRenderer@PLT
	movq	8(%rbx), %rdi
	call	SDL_DestroyWindow@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6window5CloseEv, .-_ZN4slay6engine6window5CloseEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
