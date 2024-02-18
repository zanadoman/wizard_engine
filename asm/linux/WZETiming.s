	.file	"WZETiming.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timingC2EPS0_
	.type	_ZN3wze6engine6timingC2EPS0_, @function
_ZN3wze6engine6timingC2EPS0_:
.LFB8157:
	.cfi_startproc
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movw	%ax, 28(%rdi)
	movq	.LC0(%rip), %rax
	movb	$0, 8(%rdi)
	movq	%rax, 32(%rdi)
	movl	$0, 40(%rdi)
	movups	%xmm0, 12(%rdi)
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6timingC2EPS0_, .-_ZN3wze6engine6timingC2EPS0_
	.globl	_ZN3wze6engine6timingC1EPS0_
	.set	_ZN3wze6engine6timingC1EPS0_,_ZN3wze6engine6timingC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing18GetTargetFrameTimeEv
	.type	_ZN3wze6engine6timing18GetTargetFrameTimeEv, @function
_ZN3wze6engine6timing18GetTargetFrameTimeEv:
.LFB8159:
	.cfi_startproc
	movzbl	8(%rdi), %eax
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6timing18GetTargetFrameTimeEv, .-_ZN3wze6engine6timing18GetTargetFrameTimeEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"wze::engine.timing.SetTargetFrameTime(): TargetFrameTime must not be equal to 0\nParams: TargetFrameTime: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing18SetTargetFrameTimeEh
	.type	_ZN3wze6engine6timing18SetTargetFrameTimeEh, @function
_ZN3wze6engine6timing18SetTargetFrameTimeEh:
.LFB8160:
	.cfi_startproc
	testb	%sil, %sil
	je	.L9
	movb	%sil, 8(%rdi)
	movl	%esi, %eax
	ret
.L9:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC2(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6timing18SetTargetFrameTimeEh, .-_ZN3wze6engine6timing18SetTargetFrameTimeEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing14GetCurrentTickEv
	.type	_ZN3wze6engine6timing14GetCurrentTickEv, @function
_ZN3wze6engine6timing14GetCurrentTickEv:
.LFB8161:
	.cfi_startproc
	movl	12(%rdi), %eax
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6timing14GetCurrentTickEv, .-_ZN3wze6engine6timing14GetCurrentTickEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetGameTimeEv
	.type	_ZN3wze6engine6timing11GetGameTimeEv, @function
_ZN3wze6engine6timing11GetGameTimeEv:
.LFB8162:
	.cfi_startproc
	movl	16(%rdi), %eax
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6timing11GetGameTimeEv, .-_ZN3wze6engine6timing11GetGameTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing13GetRenderTimeEv
	.type	_ZN3wze6engine6timing13GetRenderTimeEv, @function
_ZN3wze6engine6timing13GetRenderTimeEv:
.LFB8163:
	.cfi_startproc
	movl	20(%rdi), %eax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6timing13GetRenderTimeEv, .-_ZN3wze6engine6timing13GetRenderTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing14GetWorkingTimeEv
	.type	_ZN3wze6engine6timing14GetWorkingTimeEv, @function
_ZN3wze6engine6timing14GetWorkingTimeEv:
.LFB8164:
	.cfi_startproc
	movl	24(%rdi), %eax
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6timing14GetWorkingTimeEv, .-_ZN3wze6engine6timing14GetWorkingTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing11GetIdleTimeEv
	.type	_ZN3wze6engine6timing11GetIdleTimeEv, @function
_ZN3wze6engine6timing11GetIdleTimeEv:
.LFB8165:
	.cfi_startproc
	movzwl	28(%rdi), %eax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6timing11GetIdleTimeEv, .-_ZN3wze6engine6timing11GetIdleTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing12GetFrameTimeEv
	.type	_ZN3wze6engine6timing12GetFrameTimeEv, @function
_ZN3wze6engine6timing12GetFrameTimeEv:
.LFB8166:
	.cfi_startproc
	movl	32(%rdi), %eax
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6timing12GetFrameTimeEv, .-_ZN3wze6engine6timing12GetFrameTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing15GetMaxDeltaTimeEv
	.type	_ZN3wze6engine6timing15GetMaxDeltaTimeEv, @function
_ZN3wze6engine6timing15GetMaxDeltaTimeEv:
.LFB8167:
	.cfi_startproc
	movl	36(%rdi), %eax
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6timing15GetMaxDeltaTimeEv, .-_ZN3wze6engine6timing15GetMaxDeltaTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing15SetMaxDeltaTimeEj
	.type	_ZN3wze6engine6timing15SetMaxDeltaTimeEj, @function
_ZN3wze6engine6timing15SetMaxDeltaTimeEj:
.LFB8168:
	.cfi_startproc
	movl	%esi, 36(%rdi)
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6timing15SetMaxDeltaTimeEj, .-_ZN3wze6engine6timing15SetMaxDeltaTimeEj
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing12GetDeltaTimeEv
	.type	_ZN3wze6engine6timing12GetDeltaTimeEv, @function
_ZN3wze6engine6timing12GetDeltaTimeEv:
.LFB8169:
	.cfi_startproc
	movl	40(%rdi), %eax
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6timing12GetDeltaTimeEv, .-_ZN3wze6engine6timing12GetDeltaTimeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing5SleepEj
	.type	_ZN3wze6engine6timing5SleepEj, @function
_ZN3wze6engine6timing5SleepEj:
.LFB8170:
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
.LFE8170:
	.size	_ZN3wze6engine6timing5SleepEj, .-_ZN3wze6engine6timing5SleepEj
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6timing6UpdateEv
	.type	_ZN3wze6engine6timing6UpdateEv, @function
_ZN3wze6engine6timing6UpdateEv:
.LFB8171:
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
	jle	.L22
	movzwl	%di, %edi
	call	SDL_Delay@PLT
.L22:
	call	SDL_GetTicks@PLT
	subl	12(%rbx), %eax
	movl	%eax, 32(%rbx)
	call	SDL_GetTicks@PLT
	movl	32(%rbx), %edx
	movl	%eax, 12(%rbx)
	movl	36(%rbx), %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 40(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6timing6UpdateEv, .-_ZN3wze6engine6timing6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1000
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
