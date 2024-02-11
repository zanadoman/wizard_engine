	.file	"WZEColor(s).cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC2:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0:
.LFB8347:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx
	movq	(%rdi), %rdx
	cmpq	%rdx, %rsi
	jnb	.L26
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L27
	testq	%rbx, %rbx
	je	.L1
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L5
	cmpq	%rcx, %rsi
	jnb	.L12
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L9
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L28
.L9:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L14:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L14
	.p2align 4,,10
	.p2align 3
.L12:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L29
.L1:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L28:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L10:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L10
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L12
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L5:
	call	free@PLT
	movq	$0, 8(%r12)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC1(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L29:
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8347:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_:
.LFB8147:
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
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	$1, 16(%rdi)
	movl	$8, %edi
	movq	$0, (%rsp)
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L34
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L35
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L35:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L34:
	leaq	.LC3(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8147:
	.size	_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor10colorboxesC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor10colorboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor10colorboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxesD2Ev
	.type	_ZN3wze6engine6actors5actor10colorboxesD2Ev, @function
_ZN3wze6engine6actors5actor10colorboxesD2Ev:
.LFB8150:
	.cfi_startproc
	movq	16(%rdi), %rdx
	movq	24(%rdi), %rax
	cmpq	$1, %rdx
	jbe	.L42
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$1, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L40:
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L38
	movl	$72, %esi
	addq	$1, %rbx
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	cmpq	%rdx, %rbx
	jb	.L40
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L40
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rax, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L42:
	movq	%rax, %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6actors5actor10colorboxesD2Ev, .-_ZN3wze6engine6actors5actor10colorboxesD2Ev
	.globl	_ZN3wze6engine6actors5actor10colorboxesD1Ev
	.set	_ZN3wze6engine6actors5actor10colorboxesD1Ev,_ZN3wze6engine6actors5actor10colorboxesD2Ev
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC6:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC7:
	.string	"wze::engine.actors[].colorboxes.New(): Memory allocation failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	.type	_ZN3wze6engine6actors5actor10colorboxes3NewEv, @function
_ZN3wze6engine6actors5actor10colorboxes3NewEv:
.LFB8152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L46
	movq	24(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L47:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L46
.L50:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L47
	movl	$72, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movdqu	0(%rbp), %xmm3
	movl	$-32767, %esi
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%rax)
	movl	256(%rdx), %ecx
	movupd	224(%rdx), %xmm4
	movw	%si, 24(%rax)
	movb	$1, 26(%rax)
	movq	24(%rbp), %rdx
	movl	%ecx, 16(%rax)
	movq	%rbx, 32(%rax)
	movups	%xmm3, (%rax)
	movups	%xmm4, 40(%rax)
	movups	%xmm0, 56(%rax)
	cmpq	16(%rbp), %rbx
	jnb	.L58
	movq	%rax, (%rdx,%rbx,8)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L46:
	movl	$72, %edi
	call	_Znwm@PLT
	movq	8(%rbp), %rdx
	movq	16(%rbp), %rsi
	pxor	%xmm0, %xmm0
	movdqu	0(%rbp), %xmm1
	movq	24(%rbp), %rdi
	movl	$-1, 20(%rax)
	movl	256(%rdx), %ecx
	movupd	224(%rdx), %xmm2
	movq	%rsi, 32(%rax)
	addq	$1, %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	movl	%ecx, 16(%rax)
	movl	$-32767, %ecx
	movw	%cx, 24(%rax)
	movb	$1, 26(%rax)
	movups	%xmm1, (%rax)
	movups	%xmm2, 40(%rax)
	movups	%xmm0, 56(%rax)
	movq	%rax, (%rsp)
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L59
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L60
	movq	(%rdx,%rcx,8), %rax
	testq	%rax, %rax
	je	.L61
.L45:
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L62
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L58:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L62:
	call	__stack_chk_fail@PLT
.L61:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L60:
	leaq	.LC5(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L59:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor10colorboxes3NewEv, .-_ZN3wze6engine6actors5actor10colorboxes3NewEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes6DeleteEy
	.type	_ZN3wze6engine6actors5actor10colorboxes6DeleteEy, @function
_ZN3wze6engine6actors5actor10colorboxes6DeleteEy:
.LFB8153:
	.cfi_startproc
	cmpq	16(%rdi), %rsi
	jb	.L86
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L86:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L65
	movl	$72, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L87
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L65
	cmpq	$1, %rax
	je	.L65
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L71:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L88
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L89
	cmpq	$1, %rsi
	jne	.L71
.L70:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
.L65:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L70
.L88:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L87:
	leaq	.LC5(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor10colorboxes6DeleteEy, .-_ZN3wze6engine6actors5actor10colorboxes6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE:
.LFB8154:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	16(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L91
	movq	24(%rdi), %rcx
	movq	%rdi, %r13
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L98:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L93
.L92:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L94
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L92
.L93:
	movq	(%rcx,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r14
	testq	%rdi, %rdi
	je	.L96
	movl	$72, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L96:
	cmpq	%rdx, %rbx
	jnb	.L118
	movq	$0, (%rcx,%r14)
.L94:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L98
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L119
.L115:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L119:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L104:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L117
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L120
	movq	%rsi, %rax
.L99:
	cmpq	$1, %rax
	jne	.L104
.L103:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L91:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L115
	orq	$-1, %rsi
.L117:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L120:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L103
.L118:
	movq	%rbx, %rsi
	jmp	.L117
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor10colorboxes5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].colorboxes.Purge(): KeepColorboxIDs must not be NULL\nParams: KeepColorboxIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE:
.LFB8155:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	testq	%rsi, %rsi
	je	.L122
	movq	16(%rdi), %rcx
	movq	%rdi, %r12
	cmpq	$1, %rcx
	jbe	.L153
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L131:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L125
.L126:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L127
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L126
	.p2align 4,,10
	.p2align 3
.L125:
	movq	(%rdi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L129
	movq	%rax, %rdi
	movl	$72, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rcx
	movq	24(%r12), %rdi
.L129:
	cmpq	%rcx, %rbx
	jnb	.L154
	movq	$0, (%rdi,%r13)
.L127:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L131
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L155
.L150:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L155:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L137:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L152
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L156
	movq	%rsi, %rax
.L132:
	cmpq	$1, %rax
	jne	.L137
.L136:
	leaq	16(%r12), %rdi
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor10colorboxes8colorboxEE6RemoveEyy.isra.0
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L153:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L150
	orq	$-1, %rsi
.L152:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L156:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L136
.L122:
	leaq	.LC9(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L154:
	movq	%rbx, %rsi
	jmp	.L152
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor10colorboxes5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.actors[].colorboxes[]: Illegal access to NULL Colorbox\nParams: ColorboxID: %lld\n"
	.align 8
.LC11:
	.string	"wze::engine.actors[].colorboxes[]: Colorbox does not exist\nParams: ColorboxID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxesixEy
	.type	_ZN3wze6engine6actors5actor10colorboxesixEy, @function
_ZN3wze6engine6actors5actor10colorboxesixEy:
.LFB8156:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L162
	cmpq	16(%rdi), %rsi
	jnb	.L159
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L159
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L159:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L162:
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor10colorboxesixEy, .-_ZN3wze6engine6actors5actor10colorboxesixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y
	.type	_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y, @function
_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y:
.LFB8158:
	.cfi_startproc
	movl	256(%rdx), %eax
	movupd	224(%rdx), %xmm1
	pxor	%xmm0, %xmm0
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%eax, 16(%rdi)
	movl	$-32767, %eax
	movl	$-1, 20(%rdi)
	movw	%ax, 24(%rdi)
	movb	$1, 26(%rdi)
	movq	%rcx, 32(%rdi)
	movups	%xmm1, 40(%rdi)
	movups	%xmm0, 56(%rdi)
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y, .-_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxC1EPS0_PS2_y
	.set	_ZN3wze6engine6actors5actor10colorboxes8colorboxC1EPS0_PS2_y,_ZN3wze6engine6actors5actor10colorboxes8colorboxC2EPS0_PS2_y
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev
	.type	_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev, @function
_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev:
.LFB8161:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev, .-_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorboxD1Ev
	.set	_ZN3wze6engine6actors5actor10colorboxes8colorboxD1Ev,_ZN3wze6engine6actors5actor10colorboxes8colorboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv
	.type	_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv, @function
_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv:
.LFB8163:
	.cfi_startproc
	movq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv, .-_ZN3wze6engine6actors5actor10colorboxes8colorbox5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv
	.type	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv, @function
_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv:
.LFB8164:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv, .-_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors[].colors[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd
	.type	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd, @function
_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd:
.LFB8165:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L185
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L170
	jne	.L170
	ucomisd	%xmm3, %xmm1
	jp	.L170
	jne	.L170
	movq	$0x000000000, 56(%rdi)
.L178:
	pxor	%xmm0, %xmm0
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L170:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	48(%rbx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 56(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L174
	jne	.L174
	ucomisd	%xmm3, %xmm1
	jp	.L174
	je	.L178
.L174:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L177:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L185:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd, .-_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv
	.type	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv, @function
_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv:
.LFB8166:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv, .-_ZN3wze6engine6actors5actor10colorboxes8colorbox4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].colors[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
	.type	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd, @function
_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd:
.LFB8167:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L205
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L190
	jne	.L190
	ucomisd	%xmm1, %xmm3
	jp	.L190
	jne	.L190
	movq	$0x000000000, 56(%rdi)
.L198:
	pxor	%xmm0, %xmm0
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L190:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 56(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L194
	jne	.L194
	ucomisd	%xmm1, %xmm3
	jp	.L194
	je	.L198
.L194:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L197:
	movsd	%xmm0, 64(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L205:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd, .-_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
