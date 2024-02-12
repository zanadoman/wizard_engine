	.file	"WZEKeys.cpp"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keysC2EPS0_
	.type	_ZN3wze6engine4keysC2EPS0_, @function
_ZN3wze6engine4keysC2EPS0_:
.LFB8156:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	$0, 8(%rdi)
	movl	$237, %edi
	call	_Znam@PLT
	movq	%rax, 16(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine4keysC2EPS0_, .-_ZN3wze6engine4keysC2EPS0_
	.globl	_ZN3wze6engine4keysC1EPS0_
	.set	_ZN3wze6engine4keysC1EPS0_,_ZN3wze6engine4keysC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keysD2Ev
	.type	_ZN3wze6engine4keysD2Ev, @function
_ZN3wze6engine4keysD2Ev:
.LFB8159:
	.cfi_startproc
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L4
	jmp	_ZdaPv@PLT
	.p2align 4,,10
	.p2align 3
.L4:
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine4keysD2Ev, .-_ZN3wze6engine4keysD2Ev
	.globl	_ZN3wze6engine4keysD1Ev
	.set	_ZN3wze6engine4keysD1Ev,_ZN3wze6engine4keysD2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"wze::engine.keys[]: Key does not exist\nParams: Key: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keysixENS_3keyE
	.type	_ZN3wze6engine4keysixENS_3keyE, @function
_ZN3wze6engine4keysixENS_3keyE:
.LFB8161:
	.cfi_startproc
	cmpl	$236, %esi
	jg	.L11
	movq	16(%rdi), %rax
	movslq	%esi, %rsi
	cmpb	$0, (%rax,%rsi)
	setne	%al
	ret
.L11:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine4keysixENS_3keyE, .-_ZN3wze6engine4keysixENS_3keyE
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine4keys6UpdateEv
	.type	_ZN3wze6engine4keys6UpdateEv, @function
_ZN3wze6engine4keys6UpdateEv:
.LFB8162:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	16(%rdi), %rsi
	movl	$237, %edx
	movq	8(%rdi), %rdi
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	SDL_GetMouseState@PLT
	movq	16(%rbx), %rdx
	testb	$1, %al
	je	.L13
	movb	$1, 232(%rdx)
.L14:
	movl	%eax, %edx
	movq	16(%rbx), %rcx
	shrl	$2, %eax
	shrl	%edx
	andl	$1, %eax
	andl	$1, %edx
	movb	%dl, 233(%rcx)
	movq	16(%rbx), %rdx
	movb	%al, 234(%rdx)
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	416(%rsi), %rdi
	testq	%rdi, %rdi
	jne	.L15
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L16:
	addq	$1, %rdx
	addq	$56, %rax
	cmpq	%rdi, %rdx
	jnb	.L23
.L15:
	movq	424(%rsi), %rcx
	addq	%rax, %rcx
	cmpl	$1027, (%rcx)
	jne	.L16
	movl	20(%rcx), %ecx
	movq	16(%rbx), %rsi
	testl	%ecx, %ecx
	jns	.L17
	movb	$1, 235(%rsi)
	movq	16(%rbx), %rcx
	addq	$1, %rdx
	addq	$56, %rax
	movb	$0, 236(%rcx)
	movq	(%rbx), %rsi
	movq	416(%rsi), %rdi
	cmpq	%rdi, %rdx
	jb	.L15
.L23:
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	movb	$0, 235(%rsi)
	movq	16(%rbx), %rcx
	je	.L18
	movb	$1, 236(%rcx)
	movq	(%rbx), %rsi
	movq	416(%rsi), %rdi
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L13:
	movb	$0, 232(%rdx)
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L18:
	movb	$0, 236(%rcx)
	movq	(%rbx), %rsi
	movq	416(%rsi), %rdi
	jmp	.L16
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine4keys6UpdateEv, .-_ZN3wze6engine4keys6UpdateEv
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
