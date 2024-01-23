	.file	"SEWindow.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6windowC2ERS0_
	.type	_ZN4slay6engine6windowC2ERS0_, @function
_ZN4slay6engine6windowC2ERS0_:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 26(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6windowC2ERS0_, .-_ZN4slay6engine6windowC2ERS0_
	.globl	_ZN4slay6engine6windowC1ERS0_
	.set	_ZN4slay6engine6windowC1ERS0_,_ZN4slay6engine6windowC2ERS0_
	.align 2
	.globl	_ZN4slay6engine6window10destructorEv
	.type	_ZN4slay6engine6window10destructorEv, @function
_ZN4slay6engine6window10destructorEv:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyRenderer@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	SDL_DestroyWindow@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine6window10destructorEv, .-_ZN4slay6engine6window10destructorEv
	.align 2
	.globl	_ZN4slay6engine6window9GetHeightEv
	.type	_ZN4slay6engine6window9GetHeightEv, @function
_ZN4slay6engine6window9GetHeightEv:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	26(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6window9GetHeightEv, .-_ZN4slay6engine6window9GetHeightEv
	.align 2
	.globl	_ZN4slay6engine6window8GetWidthEv
	.type	_ZN4slay6engine6window8GetWidthEv, @function
_ZN4slay6engine6window8GetWidthEv:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6window8GetWidthEv, .-_ZN4slay6engine6window8GetWidthEv
	.section	.rodata
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
	.globl	_ZN4slay6engine6window3NewEPKctt
	.type	_ZN4slay6engine6window3NewEPKctt, @function
_ZN4slay6engine6window3NewEPKctt:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%ecx, %eax
	movw	%dx, -20(%rbp)
	movw	%ax, -24(%rbp)
	movzwl	-24(%rbp), %ecx
	movzwl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$4385, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$536805376, %edx
	movl	$536805376, %esi
	movq	%rax, %rdi
	call	SDL_CreateWindow@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L9
	movzwl	-24(%rbp), %ecx
	movzwl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L9:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$2, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	SDL_CreateRenderer@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L10
	movzwl	-24(%rbp), %ecx
	movzwl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	movzwl	-24(%rbp), %edx
	movzwl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SDL_RenderSetLogicalSize@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L11
	movzwl	-24(%rbp), %ecx
	movzwl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L11:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SDL_SetRenderDrawBlendMode@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L12
	movzwl	-24(%rbp), %ecx
	movzwl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L12:
	movq	-8(%rbp), %rax
	movzwl	-20(%rbp), %edx
	movw	%dx, 24(%rax)
	movq	-8(%rbp), %rax
	movzwl	-24(%rbp), %edx
	movw	%dx, 26(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine6window3NewEPKctt, .-_ZN4slay6engine6window3NewEPKctt
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
