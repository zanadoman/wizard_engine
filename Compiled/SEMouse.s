	.file	"SEMouse.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine5mouseC2ERS0_
	.type	_ZN4slay6engine5mouseC2ERS0_, @function
_ZN4slay6engine5mouseC2ERS0_:
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
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine5mouseC2ERS0_, .-_ZN4slay6engine5mouseC2ERS0_
	.globl	_ZN4slay6engine5mouseC1ERS0_
	.set	_ZN4slay6engine5mouseC1ERS0_,_ZN4slay6engine5mouseC2ERS0_
	.section	.rodata
	.align 8
.LC2:
	.string	"engine.mouse.GetY(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.globl	_ZN4slay6engine5mouse4GetXEd
	.type	_ZN4slay6engine5mouse4GetXEd, @function
_ZN4slay6engine5mouse4GetXEd:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-32(%rbp), %xmm0
	jbe	.L10
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L10:
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jp	.L5
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jne	.L5
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	jmp	.L7
.L5:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	128(%rax), %xmm0
	movsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm1
	divsd	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	112(%rax), %xmm0
	addsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	80(%rax), %xmm0
	divsd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
.L7:
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine5mouse4GetXEd, .-_ZN4slay6engine5mouse4GetXEd
	.section	.rodata
	.align 8
.LC3:
	.string	"engine.mouse.GetX(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.globl	_ZN4slay6engine5mouse4GetYEd
	.type	_ZN4slay6engine5mouse4GetYEd, @function
_ZN4slay6engine5mouse4GetYEd:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-32(%rbp), %xmm0
	jbe	.L19
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L19:
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jp	.L14
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jne	.L14
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	jmp	.L16
.L14:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	128(%rax), %xmm0
	movsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movapd	%xmm0, %xmm1
	divsd	-8(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	120(%rax), %xmm0
	addsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsd	88(%rax), %xmm0
	divsd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
.L16:
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine5mouse4GetYEd, .-_ZN4slay6engine5mouse4GetYEd
	.align 2
	.globl	_ZN4slay6engine5mouse10GetMotionXEv
	.type	_ZN4slay6engine5mouse10GetMotionXEv, @function
_ZN4slay6engine5mouse10GetMotionXEv:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZN4slay6engine5mouse10GetMotionXEv, .-_ZN4slay6engine5mouse10GetMotionXEv
	.align 2
	.globl	_ZN4slay6engine5mouse10GetMotionYEv
	.type	_ZN4slay6engine5mouse10GetMotionYEv, @function
_ZN4slay6engine5mouse10GetMotionYEv:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN4slay6engine5mouse10GetMotionYEv, .-_ZN4slay6engine5mouse10GetMotionYEv
	.align 2
	.globl	_ZN4slay6engine5mouse10IsAbsoluteEv
	.type	_ZN4slay6engine5mouse10IsAbsoluteEv, @function
_ZN4slay6engine5mouse10IsAbsoluteEv:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %eax
	xorl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN4slay6engine5mouse10IsAbsoluteEv, .-_ZN4slay6engine5mouse10IsAbsoluteEv
	.align 2
	.globl	_ZN4slay6engine5mouse10IsRelativeEv
	.type	_ZN4slay6engine5mouse10IsRelativeEv, @function
_ZN4slay6engine5mouse10IsRelativeEv:
.LFB2204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2204:
	.size	_ZN4slay6engine5mouse10IsRelativeEv, .-_ZN4slay6engine5mouse10IsRelativeEv
	.align 2
	.globl	_ZN4slay6engine5mouse11SetAbsoluteEv
	.type	_ZN4slay6engine5mouse11SetAbsoluteEv, @function
_ZN4slay6engine5mouse11SetAbsoluteEv:
.LFB2205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, %edi
	call	SDL_SetRelativeMouseMode@PLT
	movq	-8(%rbp), %rax
	movb	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2205:
	.size	_ZN4slay6engine5mouse11SetAbsoluteEv, .-_ZN4slay6engine5mouse11SetAbsoluteEv
	.align 2
	.globl	_ZN4slay6engine5mouse11SetRelativeEv
	.type	_ZN4slay6engine5mouse11SetRelativeEv, @function
_ZN4slay6engine5mouse11SetRelativeEv:
.LFB2206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, %edi
	call	SDL_SetRelativeMouseMode@PLT
	movq	-8(%rbp), %rax
	movb	$1, 40(%rax)
	movq	-8(%rbp), %rax
	movzbl	40(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN4slay6engine5mouse11SetRelativeEv, .-_ZN4slay6engine5mouse11SetRelativeEv
	.align 2
	.globl	_ZN4slay6engine5mouse6UpdateEv
	.type	_ZN4slay6engine5mouse6UpdateEv, @function
_ZN4slay6engine5mouse6UpdateEv:
.LFB2207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-36(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SDL_GetRelativeMouseState@PLT
	movl	-40(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movl	-36(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	.LC4(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	$0, -32(%rbp)
	jmp	.L33
.L38:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	640(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayI9SDL_EventEixEy
	movl	(%rax), %eax
	cmpl	$1024, %eax
	sete	%al
	testb	%al, %al
	je	.L34
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	640(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayI9SDL_EventEixEy
	movl	20(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jns	.L35
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	jmp	.L36
.L35:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jg	.L36
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
.L36:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzwl	58(%rax), %eax
	movzwl	%ax, %ebx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	640(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayI9SDL_EventEixEy
	movl	24(%rax), %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	jns	.L37
	movq	-56(%rbp), %rax
	movl	$0, 20(%rax)
	jmp	.L34
.L37:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	jg	.L34
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
.L34:
	addq	$1, -32(%rbp)
.L33:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$640, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventE6LengthEv
	cmpq	%rax, -32(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L38
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2207:
	.size	_ZN4slay6engine5mouse6UpdateEv, .-_ZN4slay6engine5mouse6UpdateEv
	.section	.text._ZN3neo5arrayI9SDL_EventE6LengthEv,"axG",@progbits,_ZN3neo5arrayI9SDL_EventE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventE6LengthEv
	.type	_ZN3neo5arrayI9SDL_EventE6LengthEv, @function
_ZN3neo5arrayI9SDL_EventE6LengthEv:
.LFB2272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2272:
	.size	_ZN3neo5arrayI9SDL_EventE6LengthEv, .-_ZN3neo5arrayI9SDL_EventE6LengthEv
	.section	.rodata
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayI9SDL_EventEixEy,"axG",@progbits,_ZN3neo5arrayI9SDL_EventEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventEixEy
	.type	_ZN3neo5arrayI9SDL_EventEixEy, @function
_ZN3neo5arrayI9SDL_EventEixEy:
.LFB2273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L44
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2273:
	.size	_ZN3neo5arrayI9SDL_EventEixEy, .-_ZN3neo5arrayI9SDL_EventEixEy
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 16
.LC4:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits