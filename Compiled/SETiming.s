	.file	"SETiming.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine6timingC2ERS0_
	.type	_ZN4slay6engine6timingC2ERS0_, @function
_ZN4slay6engine6timingC2ERS0_:
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
	movb	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine6timingC2ERS0_, .-_ZN4slay6engine6timingC2ERS0_
	.globl	_ZN4slay6engine6timingC1ERS0_
	.set	_ZN4slay6engine6timingC1ERS0_,_ZN4slay6engine6timingC2ERS0_
	.align 2
	.globl	_ZN4slay6engine6timing11GetPrevTickEv
	.type	_ZN4slay6engine6timing11GetPrevTickEv, @function
_ZN4slay6engine6timing11GetPrevTickEv:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine6timing11GetPrevTickEv, .-_ZN4slay6engine6timing11GetPrevTickEv
	.align 2
	.globl	_ZN4slay6engine6timing11GetGameTimeEv
	.type	_ZN4slay6engine6timing11GetGameTimeEv, @function
_ZN4slay6engine6timing11GetGameTimeEv:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine6timing11GetGameTimeEv, .-_ZN4slay6engine6timing11GetGameTimeEv
	.align 2
	.globl	_ZN4slay6engine6timing13GetRenderTimeEv
	.type	_ZN4slay6engine6timing13GetRenderTimeEv, @function
_ZN4slay6engine6timing13GetRenderTimeEv:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine6timing13GetRenderTimeEv, .-_ZN4slay6engine6timing13GetRenderTimeEv
	.align 2
	.globl	_ZN4slay6engine6timing14GetWorkingTimeEv
	.type	_ZN4slay6engine6timing14GetWorkingTimeEv, @function
_ZN4slay6engine6timing14GetWorkingTimeEv:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine6timing14GetWorkingTimeEv, .-_ZN4slay6engine6timing14GetWorkingTimeEv
	.align 2
	.globl	_ZN4slay6engine6timing11GetIdleTimeEv
	.type	_ZN4slay6engine6timing11GetIdleTimeEv, @function
_ZN4slay6engine6timing11GetIdleTimeEv:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	28(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine6timing11GetIdleTimeEv, .-_ZN4slay6engine6timing11GetIdleTimeEv
	.align 2
	.globl	_ZN4slay6engine6timing12GetFrameTimeEv
	.type	_ZN4slay6engine6timing12GetFrameTimeEv, @function
_ZN4slay6engine6timing12GetFrameTimeEv:
.LFB2204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine6timing12GetFrameTimeEv, .-_ZN4slay6engine6timing12GetFrameTimeEv
	.align 2
	.globl	_ZN4slay6engine6timing12GetDeltaTimeEv
	.type	_ZN4slay6engine6timing12GetDeltaTimeEv, @function
_ZN4slay6engine6timing12GetDeltaTimeEv:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine6timing12GetDeltaTimeEv, .-_ZN4slay6engine6timing12GetDeltaTimeEv
	.align 2
	.globl	_ZN4slay6engine6timing6UpdateEv
	.type	_ZN4slay6engine6timing6UpdateEv, @function
_ZN4slay6engine6timing6UpdateEv:
.LFB2206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	call	SDL_GetTicks@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	leal	(%rdx,%rax), %ebx
	call	SDL_GetTicks@PLT
	movl	%eax, %edx
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 28(%rax)
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	testw	%ax, %ax
	setg	%al
	testb	%al, %al
	je	.L17
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	cwtl
	movl	%eax, %edi
	call	SDL_Delay@PLT
.L17:
	call	SDL_GetTicks@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	call	SDL_GetTicks@PLT
	movq	-24(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$40, %eax
	seta	%al
	testb	%al, %al
	je	.L18
	movq	-24(%rbp), %rax
	movl	$40, 36(%rax)
.L18:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine6timing6UpdateEv, .-_ZN4slay6engine6timing6UpdateEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
