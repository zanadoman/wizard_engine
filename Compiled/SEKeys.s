	.file	"SEKeys.cpp"
	.text
	.align 2
	.globl	_ZN4slay6engine4keysC2ERS0_
	.type	_ZN4slay6engine4keysC2ERS0_, @function
_ZN4slay6engine4keysC2ERS0_:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZN4slay6engine4keysC2ERS0_, .-_ZN4slay6engine4keysC2ERS0_
	.globl	_ZN4slay6engine4keysC1ERS0_
	.set	_ZN4slay6engine4keysC1ERS0_,_ZN4slay6engine4keysC2ERS0_
	.align 2
	.globl	_ZN4slay6engine4keys8GetStateENS_3keyE
	.type	_ZN4slay6engine4keys8GetStateENS_3keyE, @function
_ZN4slay6engine4keys8GetStateENS_3keyE:
.LFB2199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	cltq
	movzbl	16(%rdx,%rax), %eax
	testb	%al, %al
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2199:
	.size	_ZN4slay6engine4keys8GetStateENS_3keyE, .-_ZN4slay6engine4keys8GetStateENS_3keyE
	.align 2
	.globl	_ZN4slay6engine4keys6UpdateEv
	.type	_ZN4slay6engine4keys6UpdateEv, @function
_ZN4slay6engine4keys6UpdateEv:
.LFB2200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$296, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movl	$0, %esi
	movl	$0, %edi
	call	SDL_GetMouseState@PLT
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L5
	movq	-24(%rbp), %rax
	movb	$1, 307(%rax)
	jmp	.L6
.L5:
	movq	-24(%rbp), %rax
	movb	$0, 307(%rax)
.L6:
	movzbl	-9(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L7
	movq	-24(%rbp), %rax
	movb	$1, 308(%rax)
	jmp	.L8
.L7:
	movq	-24(%rbp), %rax
	movb	$0, 308(%rax)
.L8:
	movzbl	-9(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L9
	movq	-24(%rbp), %rax
	movb	$1, 309(%rax)
	jmp	.L10
.L9:
	movq	-24(%rbp), %rax
	movb	$0, 309(%rax)
.L10:
	movq	$0, -8(%rbp)
	jmp	.L11
.L15:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	640(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayI9SDL_EventEixEy
	movl	(%rax), %eax
	cmpl	$1027, %eax
	sete	%al
	testb	%al, %al
	je	.L12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	640(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayI9SDL_EventEixEy
	movl	20(%rax), %eax
	shrl	$31, %eax
	testb	%al, %al
	je	.L13
	movq	-24(%rbp), %rax
	movb	$1, 310(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 311(%rax)
	jmp	.L12
.L13:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	640(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayI9SDL_EventEixEy
	movl	20(%rax), %eax
	testl	%eax, %eax
	setg	%al
	testb	%al, %al
	je	.L14
	movq	-24(%rbp), %rax
	movb	$0, 310(%rax)
	movq	-24(%rbp), %rax
	movb	$1, 311(%rax)
	jmp	.L12
.L14:
	movq	-24(%rbp), %rax
	movb	$0, 310(%rax)
	movq	-24(%rbp), %rax
	movb	$0, 311(%rax)
.L12:
	addq	$1, -8(%rbp)
.L11:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$640, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayI9SDL_EventE6LengthEv
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L15
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.size	_ZN4slay6engine4keys6UpdateEv, .-_ZN4slay6engine4keys6UpdateEv
	.section	.text._ZN3neo5arrayI9SDL_EventE6LengthEv,"axG",@progbits,_ZN3neo5arrayI9SDL_EventE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventE6LengthEv
	.type	_ZN3neo5arrayI9SDL_EventE6LengthEv, @function
_ZN3neo5arrayI9SDL_EventE6LengthEv:
.LFB2265:
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
.LFE2265:
	.size	_ZN3neo5arrayI9SDL_EventE6LengthEv, .-_ZN3neo5arrayI9SDL_EventE6LengthEv
	.section	.rodata
	.align 8
.LC0:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayI9SDL_EventEixEy,"axG",@progbits,_ZN3neo5arrayI9SDL_EventEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayI9SDL_EventEixEy
	.type	_ZN3neo5arrayI9SDL_EventEixEy, @function
_ZN3neo5arrayI9SDL_EventEixEy:
.LFB2266:
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
	jb	.L20
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L20:
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
.LFE2266:
	.size	_ZN3neo5arrayI9SDL_EventEixEy, .-_ZN3neo5arrayI9SDL_EventEixEy
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
