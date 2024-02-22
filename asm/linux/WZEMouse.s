	.file	"WZEMouse.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouseC2EPS0_
	.type	_ZN3wze6engine5mouseC2EPS0_, @function
_ZN3wze6engine5mouseC2EPS0_:
.LFB8157:
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
.LFE8157:
	.size	_ZN3wze6engine5mouseC2EPS0_, .-_ZN3wze6engine5mouseC2EPS0_
	.globl	_ZN3wze6engine5mouseC1EPS0_
	.set	_ZN3wze6engine5mouseC1EPS0_,_ZN3wze6engine5mouseC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse14GetSensitivityEv
	.type	_ZN3wze6engine5mouse14GetSensitivityEv, @function
_ZN3wze6engine5mouse14GetSensitivityEv:
.LFB8159:
	.cfi_startproc
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine5mouse14GetSensitivityEv, .-_ZN3wze6engine5mouse14GetSensitivityEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"wze::engine.mouse.SetSensitivity(): Sensitivity must not be NaN\nParams: Sensitivity: %lf\n"
	.align 8
.LC4:
	.string	"wze::engine.mouse.SetSensitivity(): Sensitivity must not be less than or equal to 0\nParams: Sensitivity: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse14SetSensitivityEd
	.type	_ZN3wze6engine5mouse14SetSensitivityEd, @function
_ZN3wze6engine5mouse14SetSensitivityEd:
.LFB8160:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L14
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jnb	.L15
	movsd	%xmm0, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L15:
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine5mouse14SetSensitivityEd, .-_ZN3wze6engine5mouse14SetSensitivityEd
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.mouse.GetX(): Layer must not be NaN\nParams: Layer: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.mouse.GetX(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse4GetXEd
	.type	_ZN3wze6engine5mouse4GetXEd, @function
_ZN3wze6engine5mouse4GetXEd:
.LFB8161:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L30
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L31
	cmpb	$0, 40(%rdi)
	pxor	%xmm2, %xmm2
	jne	.L16
	ucomisd	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	16(%rdi), %xmm2
	jp	.L26
	je	.L16
.L26:
	movq	(%rdi), %rax
	movsd	136(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	112(%rax), %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm2
	addsd	88(%rax), %xmm2
	addsd	%xmm0, %xmm2
.L16:
	movapd	%xmm2, %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L31:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L30:
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine5mouse4GetXEd, .-_ZN3wze6engine5mouse4GetXEd
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.mouse.GetY(): Layer must not be NaN\nParams: Layer: %lf\n"
	.align 8
.LC8:
	.string	"wze::engine.mouse.GetY(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse4GetYEd
	.type	_ZN3wze6engine5mouse4GetYEd, @function
_ZN3wze6engine5mouse4GetYEd:
.LFB8162:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L46
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L47
	cmpb	$0, 40(%rdi)
	pxor	%xmm2, %xmm2
	jne	.L32
	ucomisd	%xmm1, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdl	20(%rdi), %xmm2
	jp	.L42
	je	.L32
.L42:
	movq	(%rdi), %rax
	movsd	136(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	128(%rax), %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm2
	addsd	96(%rax), %xmm2
	addsd	%xmm0, %xmm2
.L32:
	movapd	%xmm2, %xmm0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L47:
	.cfi_restore_state
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L46:
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine5mouse4GetYEd, .-_ZN3wze6engine5mouse4GetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10GetMotionXEv
	.type	_ZN3wze6engine5mouse10GetMotionXEv, @function
_ZN3wze6engine5mouse10GetMotionXEv:
.LFB8163:
	.cfi_startproc
	movsd	24(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine5mouse10GetMotionXEv, .-_ZN3wze6engine5mouse10GetMotionXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10GetMotionYEv
	.type	_ZN3wze6engine5mouse10GetMotionYEv, @function
_ZN3wze6engine5mouse10GetMotionYEv:
.LFB8164:
	.cfi_startproc
	movsd	32(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine5mouse10GetMotionYEv, .-_ZN3wze6engine5mouse10GetMotionYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10IsAbsoluteEv
	.type	_ZN3wze6engine5mouse10IsAbsoluteEv, @function
_ZN3wze6engine5mouse10IsAbsoluteEv:
.LFB8165:
	.cfi_startproc
	movzbl	40(%rdi), %eax
	xorl	$1, %eax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine5mouse10IsAbsoluteEv, .-_ZN3wze6engine5mouse10IsAbsoluteEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse11SetAbsoluteEv
	.type	_ZN3wze6engine5mouse11SetAbsoluteEv, @function
_ZN3wze6engine5mouse11SetAbsoluteEv:
.LFB8166:
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
.LFE8166:
	.size	_ZN3wze6engine5mouse11SetAbsoluteEv, .-_ZN3wze6engine5mouse11SetAbsoluteEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse10IsRelativeEv
	.type	_ZN3wze6engine5mouse10IsRelativeEv, @function
_ZN3wze6engine5mouse10IsRelativeEv:
.LFB8167:
	.cfi_startproc
	movzbl	40(%rdi), %eax
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine5mouse10IsRelativeEv, .-_ZN3wze6engine5mouse10IsRelativeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse11SetRelativeEv
	.type	_ZN3wze6engine5mouse11SetRelativeEv, @function
_ZN3wze6engine5mouse11SetRelativeEv:
.LFB8168:
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
.LFE8168:
	.size	_ZN3wze6engine5mouse11SetRelativeEv, .-_ZN3wze6engine5mouse11SetRelativeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse18GetCursorTextureIDEv
	.type	_ZN3wze6engine5mouse18GetCursorTextureIDEv, @function
_ZN3wze6engine5mouse18GetCursorTextureIDEv:
.LFB8169:
	.cfi_startproc
	movq	48(%rdi), %rax
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine5mouse18GetCursorTextureIDEv, .-_ZN3wze6engine5mouse18GetCursorTextureIDEv
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.mouse.SetCursorTextureID(): Illegal use of NULL CursorTexture\nParams: CursorTextureID: %lld\n"
	.align 8
.LC10:
	.string	"wze::engine.mouse.SetCursorTextureID(): CursorTexture does not exist\nParams: CursorTextureID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse18SetCursorTextureIDEy
	.type	_ZN3wze6engine5mouse18SetCursorTextureIDEy, @function
_ZN3wze6engine5mouse18SetCursorTextureIDEy:
.LFB8170:
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
	je	.L62
	movq	(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	400(%rax), %rsi
	jnb	.L59
	movq	408(%rax), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L59
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
.L59:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L62:
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine5mouse18SetCursorTextureIDEy, .-_ZN3wze6engine5mouse18SetCursorTextureIDEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5mouse6UpdateEv
	.type	_ZN3wze6engine5mouse6UpdateEv, @function
_ZN3wze6engine5mouse6UpdateEv:
.LFB8171:
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
	movq	464(%rsi), %rdx
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	xorpd	.LC11(%rip), %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 24(%rbx)
	testq	%rdx, %rdx
	je	.L64
	movq	472(%rsi), %rax
	leaq	0(,%rdx,8), %rcx
	subq	%rdx, %rcx
	leaq	(%rax,%rcx,8), %rcx
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L66:
	addq	$56, %rax
	cmpq	%rax, %rcx
	je	.L64
.L71:
	cmpl	$1024, (%rax)
	jne	.L66
	movl	20(%rax), %edx
	movl	%edx, 16(%rbx)
	testl	%edx, %edx
	js	.L78
	movzwl	24(%rsi), %edi
	cmpl	%edi, %edx
	jge	.L79
.L68:
	movzwl	42(%rsi), %edx
	subl	24(%rax), %edx
	movl	%edx, 20(%rbx)
	js	.L80
.L69:
	movzwl	26(%rsi), %edi
	cmpl	%edi, %edx
	jl	.L66
	subl	$1, %edi
	addq	$56, %rax
	movl	%edi, 20(%rbx)
	cmpq	%rax, %rcx
	jne	.L71
	.p2align 4,,10
	.p2align 3
.L64:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L81
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	.cfi_restore_state
	movzwl	42(%rsi), %edx
	movl	$0, 16(%rbx)
	subl	24(%rax), %edx
	movl	%edx, 20(%rbx)
	jns	.L69
.L80:
	movl	$0, 20(%rbx)
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L79:
	subl	$1, %edi
	movl	%edi, 16(%rbx)
	jmp	.L68
.L81:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine5mouse6UpdateEv, .-_ZN3wze6engine5mouse6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC11:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
