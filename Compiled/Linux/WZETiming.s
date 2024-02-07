	.file	"WZETiming.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timingC2EPS0_
	.type	_ZN3wze6engine6timingC2EPS0_, @function
_ZN3wze6engine6timingC2EPS0_:
.LFB8147:
	.cfi_startproc
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movb	$0, 8(%rdi)
	movw	%ax, 28(%rdi)
	movq	$0, 32(%rdi)
	movups	%xmm0, 12(%rdi)
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6timingC2EPS0_, .-_ZN3wze6engine6timingC2EPS0_
	.globl	_ZN3wze6engine6timingC1EPS0_
	.set	_ZN3wze6engine6timingC1EPS0_,_ZN3wze6engine6timingC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetPrevTickEv
	.type	_ZN3wze6engine6timing11GetPrevTickEv, @function
_ZN3wze6engine6timing11GetPrevTickEv:
.LFB8149:
	.cfi_startproc
	movl	12(%rdi), %eax
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine6timing11GetPrevTickEv, .-_ZN3wze6engine6timing11GetPrevTickEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetGameTimeEv
	.type	_ZN3wze6engine6timing11GetGameTimeEv, @function
_ZN3wze6engine6timing11GetGameTimeEv:
.LFB8150:
	.cfi_startproc
	movl	16(%rdi), %eax
	ret
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6timing11GetGameTimeEv, .-_ZN3wze6engine6timing11GetGameTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing13GetRenderTimeEv
	.type	_ZN3wze6engine6timing13GetRenderTimeEv, @function
_ZN3wze6engine6timing13GetRenderTimeEv:
.LFB8151:
	.cfi_startproc
	movl	20(%rdi), %eax
	ret
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6timing13GetRenderTimeEv, .-_ZN3wze6engine6timing13GetRenderTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing14GetWorkingTimeEv
	.type	_ZN3wze6engine6timing14GetWorkingTimeEv, @function
_ZN3wze6engine6timing14GetWorkingTimeEv:
.LFB8152:
	.cfi_startproc
	movl	24(%rdi), %eax
	ret
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6timing14GetWorkingTimeEv, .-_ZN3wze6engine6timing14GetWorkingTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetIdleTimeEv
	.type	_ZN3wze6engine6timing11GetIdleTimeEv, @function
_ZN3wze6engine6timing11GetIdleTimeEv:
.LFB8153:
	.cfi_startproc
	movzwl	28(%rdi), %eax
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6timing11GetIdleTimeEv, .-_ZN3wze6engine6timing11GetIdleTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing12GetFrameTimeEv
	.type	_ZN3wze6engine6timing12GetFrameTimeEv, @function
_ZN3wze6engine6timing12GetFrameTimeEv:
.LFB8154:
	.cfi_startproc
	movl	32(%rdi), %eax
	ret
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6timing12GetFrameTimeEv, .-_ZN3wze6engine6timing12GetFrameTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing12GetDeltaTimeEv
	.type	_ZN3wze6engine6timing12GetDeltaTimeEv, @function
_ZN3wze6engine6timing12GetDeltaTimeEv:
.LFB8155:
	.cfi_startproc
	movl	36(%rdi), %eax
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6timing12GetDeltaTimeEv, .-_ZN3wze6engine6timing12GetDeltaTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing6UpdateEv
	.type	_ZN3wze6engine6timing6UpdateEv, @function
_ZN3wze6engine6timing6UpdateEv:
.LFB8156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	SDL_GetTicks@PLT
	movl	12(%rbx), %edx
	movzbl	8(%rbx), %edi
	subl	%edx, %eax
	leal	(%rdi,%rdx), %ebp
	movl	%eax, 24(%rbx)
	call	SDL_GetTicks@PLT
	movl	%ebp, %edi
	subl	%eax, %edi
	movw	%di, 28(%rbx)
	testw	%di, %di
	jle	.L11
	movzwl	%di, %edi
	call	SDL_Delay@PLT
.L11:
	call	SDL_GetTicks@PLT
	subl	12(%rbx), %eax
	movl	%eax, 32(%rbx)
	call	SDL_GetTicks@PLT
	movl	$40, %edx
	movl	%eax, 12(%rbx)
	movl	32(%rbx), %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 36(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6timing6UpdateEv, .-_ZN3wze6engine6timing6UpdateEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
