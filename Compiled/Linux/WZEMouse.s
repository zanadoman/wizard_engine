	.file	"WZEMouse.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouseC2EPS0_
	.type	_ZN3wze6engine5mouseC2EPS0_, @function
_ZN3wze6engine5mouseC2EPS0_:
.LFB8147:
	.cfi_startproc
	movq	.LC0(%rip), %rax
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movq	$0, 16(%rdi)
	movq	%rax, 8(%rdi)
	movb	$0, 40(%rdi)
	movq	$0, 48(%rdi)
	movups	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine5mouseC2EPS0_, .-_ZN3wze6engine5mouseC2EPS0_
	.globl	_ZN3wze6engine5mouseC1EPS0_
	.set	_ZN3wze6engine5mouseC1EPS0_,_ZN3wze6engine5mouseC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse14GetSensitivityEv
	.type	_ZN3wze6engine5mouse14GetSensitivityEv, @function
_ZN3wze6engine5mouse14GetSensitivityEv:
.LFB8149:
	.cfi_startproc
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine5mouse14GetSensitivityEv, .-_ZN3wze6engine5mouse14GetSensitivityEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"wze::engine.mouse.SetSensitivity(): Sensitivity must not be NaN\nParams: Sensitivity: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse14SetSensitivityEd
	.type	_ZN3wze6engine5mouse14SetSensitivityEd, @function
_ZN3wze6engine5mouse14SetSensitivityEd:
.LFB8150:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	jp	.L12
	movsd	%xmm0, 8(%rdi)
	ret
.L12:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine5mouse14SetSensitivityEd, .-_ZN3wze6engine5mouse14SetSensitivityEd
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.mouse.GetX(): Layer must not be NaN\nParams: Layer: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine.mouse.GetX(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse4GetXEd
	.type	_ZN3wze6engine5mouse4GetXEd, @function
_ZN3wze6engine5mouse4GetXEd:
.LFB8151:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L27
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L28
	cmpb	$0, 40(%rdi)
	pxor	%xmm2, %xmm2
	jne	.L13
	ucomisd	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	16(%rdi), %xmm2
	jp	.L23
	je	.L13
.L23:
	movq	(%rdi), %rax
	movsd	112(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	96(%rax), %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm2
	addsd	136(%rax), %xmm2
	addsd	%xmm0, %xmm2
.L13:
	movapd	%xmm2, %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L28:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine5mouse4GetXEd, .-_ZN3wze6engine5mouse4GetXEd
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"wze::engine.mouse.GetY(): Layer must not be NaN\nParams: Layer: %lf\n"
	.align 8
.LC7:
	.string	"wze::engine.mouse.GetY(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse4GetYEd
	.type	_ZN3wze6engine5mouse4GetYEd, @function
_ZN3wze6engine5mouse4GetYEd:
.LFB8152:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L43
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L44
	cmpb	$0, 40(%rdi)
	pxor	%xmm2, %xmm2
	jne	.L29
	ucomisd	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	20(%rdi), %xmm2
	jp	.L39
	je	.L29
.L39:
	movq	(%rdi), %rax
	movsd	112(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	104(%rax), %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm2
	addsd	144(%rax), %xmm2
	addsd	%xmm0, %xmm2
.L29:
	movapd	%xmm2, %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L44:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine5mouse4GetYEd, .-_ZN3wze6engine5mouse4GetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10GetMotionXEv
	.type	_ZN3wze6engine5mouse10GetMotionXEv, @function
_ZN3wze6engine5mouse10GetMotionXEv:
.LFB8153:
	.cfi_startproc
	movsd	24(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine5mouse10GetMotionXEv, .-_ZN3wze6engine5mouse10GetMotionXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10GetMotionYEv
	.type	_ZN3wze6engine5mouse10GetMotionYEv, @function
_ZN3wze6engine5mouse10GetMotionYEv:
.LFB8154:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine5mouse10GetMotionYEv, .-_ZN3wze6engine5mouse10GetMotionYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10IsAbsoluteEv
	.type	_ZN3wze6engine5mouse10IsAbsoluteEv, @function
_ZN3wze6engine5mouse10IsAbsoluteEv:
.LFB8155:
	.cfi_startproc
	movzbl	40(%rdi), %eax
	xorl	$1, %eax
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine5mouse10IsAbsoluteEv, .-_ZN3wze6engine5mouse10IsAbsoluteEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse11SetAbsoluteEv
	.type	_ZN3wze6engine5mouse11SetAbsoluteEv, @function
_ZN3wze6engine5mouse11SetAbsoluteEv:
.LFB8156:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	xorl	%edi, %edi
	call	SDL_SetRelativeMouseMode@PLT
	movb	$0, 40(%rbx)
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine5mouse11SetAbsoluteEv, .-_ZN3wze6engine5mouse11SetAbsoluteEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10IsRelativeEv
	.type	_ZN3wze6engine5mouse10IsRelativeEv, @function
_ZN3wze6engine5mouse10IsRelativeEv:
.LFB8157:
	.cfi_startproc
	movzbl	40(%rdi), %eax
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine5mouse10IsRelativeEv, .-_ZN3wze6engine5mouse10IsRelativeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse11SetRelativeEv
	.type	_ZN3wze6engine5mouse11SetRelativeEv, @function
_ZN3wze6engine5mouse11SetRelativeEv:
.LFB8158:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movl	$1, %edi
	call	SDL_SetRelativeMouseMode@PLT
	movb	$1, 40(%rbx)
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine5mouse11SetRelativeEv, .-_ZN3wze6engine5mouse11SetRelativeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse9GetCursorEv
	.type	_ZN3wze6engine5mouse9GetCursorEv, @function
_ZN3wze6engine5mouse9GetCursorEv:
.LFB8159:
	.cfi_startproc
	movq	48(%rdi), %rax
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine5mouse9GetCursorEv, .-_ZN3wze6engine5mouse9GetCursorEv
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.mouse.SetCursor(): Illegal use of NULL Cursor\nParams: CursorID: %lld\n"
	.align 8
.LC9:
	.string	"wze::engine.mouse.SetCursor(): Cursor does not exist\nParams: CursorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse9SetCursorEy
	.type	_ZN3wze6engine5mouse9SetCursorEy, @function
_ZN3wze6engine5mouse9SetCursorEy:
.LFB8160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rsi, %rsi
	je	.L59
	movq	(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	488(%rax), %rsi
	jnb	.L56
	movq	496(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L56
	call	SDL_SetCursor@PLT
	movq	%rbx, 48(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L56:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L59:
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine5mouse9SetCursorEy, .-_ZN3wze6engine5mouse9SetCursorEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse6UpdateEv
	.type	_ZN3wze6engine5mouse6UpdateEv, @function
_ZN3wze6engine5mouse6UpdateEv:
.LFB8161:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	leaq	4(%rsp), %rsi
	movq	%rsp, %rdi
	call	SDL_GetRelativeMouseState@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	(%rbx), %rsi
	cvtsi2sdl	(%rsp), %xmm0
	movsd	8(%rbx), %xmm2
	cvtsi2sdl	4(%rsp), %xmm1
	movq	544(%rsi), %rdx
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	xorpd	.LC10(%rip), %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 24(%rbx)
	testq	%rdx, %rdx
	je	.L61
	movq	552(%rsi), %rax
	leaq	0(,%rdx,8), %rcx
	subq	%rdx, %rcx
	leaq	(%rax,%rcx,8), %rcx
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L63:
	addq	$56, %rax
	cmpq	%rax, %rcx
	je	.L61
.L68:
	cmpl	$1024, (%rax)
	jne	.L63
	movl	20(%rax), %edx
	movl	%edx, 16(%rbx)
	testl	%edx, %edx
	js	.L75
	movzwl	24(%rsi), %edi
	cmpl	%edi, %edx
	jge	.L76
.L65:
	movzwl	42(%rsi), %edx
	subl	24(%rax), %edx
	movl	%edx, 20(%rbx)
	js	.L77
.L66:
	movzwl	26(%rsi), %edi
	cmpl	%edi, %edx
	jl	.L63
	subl	$1, %edi
	addq	$56, %rax
	movl	%edi, 20(%rbx)
	cmpq	%rax, %rcx
	jne	.L68
	.p2align 4,,10
	.p2align 3
.L61:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L78
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	.cfi_restore_state
	movzwl	42(%rsi), %edx
	movl	$0, 16(%rbx)
	subl	24(%rax), %edx
	movl	%edx, 20(%rbx)
	jns	.L66
.L77:
	movl	$0, 20(%rbx)
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L76:
	subl	$1, %edi
	movl	%edi, 16(%rbx)
	jmp	.L65
.L78:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine5mouse6UpdateEv, .-_ZN3wze6engine5mouse6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC10:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
