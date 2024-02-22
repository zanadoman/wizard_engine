	.file	"WZEWindow.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6windowC2EPS0_
	.type	_ZN3wze6engine6windowC2EPS0_, @function
_ZN3wze6engine6windowC2EPS0_:
.LFB8157:
	.cfi_startproc
	movq	%rsi, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 24(%rdi)
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6windowC2EPS0_, .-_ZN3wze6engine6windowC2EPS0_
	.globl	_ZN3wze6engine6windowC1EPS0_
	.set	_ZN3wze6engine6windowC1EPS0_,_ZN3wze6engine6windowC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6window8GetWidthEv
	.type	_ZN3wze6engine6window8GetWidthEv, @function
_ZN3wze6engine6window8GetWidthEv:
.LFB8159:
	.cfi_startproc
	movzwl	24(%rdi), %eax
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6window8GetWidthEv, .-_ZN3wze6engine6window8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6window9GetHeightEv
	.type	_ZN3wze6engine6window9GetHeightEv, @function
_ZN3wze6engine6window9GetHeightEv:
.LFB8160:
	.cfi_startproc
	movzwl	26(%rdi), %eax
	ret
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6window9GetHeightEv, .-_ZN3wze6engine6window9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6window7IsShownEv
	.type	_ZN3wze6engine6window7IsShownEv, @function
_ZN3wze6engine6window7IsShownEv:
.LFB8161:
	.cfi_startproc
	movl	28(%rdi), %eax
	shrl	$2, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6window7IsShownEv, .-_ZN3wze6engine6window7IsShownEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6window8HasFocusEv
	.type	_ZN3wze6engine6window8HasFocusEv, @function
_ZN3wze6engine6window8HasFocusEv:
.LFB8162:
	.cfi_startproc
	movl	28(%rdi), %eax
	shrl	$9, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6window8HasFocusEv, .-_ZN3wze6engine6window8HasFocusEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::engine.window.New(): SDL_CreateWindow() failed\nParams: Title: %s, IconPath: %s, Width: %d, Height: %d\n"
	.align 8
.LC1:
	.string	"wze::engine.window.New(): SDL_CreateRenderer() failed\nParams: Title: %s, IconPath: %s, Width: %d, Height: %d\n"
	.align 8
.LC2:
	.string	"wze::engine.window.New(): SDL_RenderSetLogicalSize() failed\nParams: Title: %s, IconPath: %s, Width: %d, Height: %d\n"
	.align 8
.LC3:
	.string	"wze::engine.window.New(): SDL_SetRenderDrawBlendMode() failed\nParams: Title: %s, IconPath: %s, Width: %d, Height: %d\n"
	.align 8
.LC4:
	.string	"wze::engine.window.New(): IMG_Load() failed\nParams: Title: %s, IconPath: %s, Width: %d, Height: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6window4OpenEPKcS3_tt
	.type	_ZN3wze6engine6window4OpenEPKcS3_tt, @function
_ZN3wze6engine6window4OpenEPKcS3_tt:
.LFB8163:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movzwl	%r8w, %r15d
	movl	$4129, %r9d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movzwl	%cx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	movl	$536805376, %esi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	movl	%r14d, %ecx
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%r8d, %ebp
	movl	%r15d, %r8d
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	movq	%r13, %rdi
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, 8(%rsp)
	movl	$536805376, %edx
	call	SDL_CreateWindow@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L14
	movq	%rax, %rdi
	movl	$2, %edx
	movl	$-1, %esi
	call	SDL_CreateRenderer@PLT
	movq	%rax, 16(%rbx)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L15
	movl	%r15d, %edx
	movl	%r14d, %esi
	call	SDL_RenderSetLogicalSize@PLT
	testl	%eax, %eax
	jne	.L16
	movq	16(%rbx), %rdi
	movl	$1, %esi
	call	SDL_SetRenderDrawBlendMode@PLT
	testl	%eax, %eax
	jne	.L17
	movq	8(%rsp), %rdi
	call	IMG_Load@PLT
	testq	%rax, %rax
	je	.L18
	movq	8(%rbx), %rdi
	movq	%rax, %rsi
	movq	%rax, 8(%rsp)
	call	SDL_SetWindowIcon@PLT
	movq	8(%rsp), %rdi
	call	SDL_FreeSurface@PLT
	movw	%r12w, 24(%rbx)
	xorl	%eax, %eax
	movw	%bp, 26(%rbx)
	addq	$24, %rsp
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
.L14:
	.cfi_restore_state
	movq	8(%rsp), %rdx
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	%r13, %rsi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L18:
	movq	8(%rsp), %rdx
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	%r13, %rsi
	leaq	.LC4(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L17:
	movq	8(%rsp), %rdx
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	%r13, %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L16:
	movq	8(%rsp), %rdx
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	%r13, %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L15:
	movq	8(%rsp), %rdx
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	%r13, %rsi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6window4OpenEPKcS3_tt, .-_ZN3wze6engine6window4OpenEPKcS3_tt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6window5CloseEv
	.type	_ZN3wze6engine6window5CloseEv, @function
_ZN3wze6engine6window5CloseEv:
.LFB8164:
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
.LFE8164:
	.size	_ZN3wze6engine6window5CloseEv, .-_ZN3wze6engine6window5CloseEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits