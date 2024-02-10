	.file	"WZEThreads.cpp"
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
	.type	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0:
.LFB8332:
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
.LFE8332:
	.size	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0, .-_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threadsC2EPS0_
	.type	_ZN3wze6engine7threadsC2EPS0_, @function
_ZN3wze6engine7threadsC2EPS0_:
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
	movq	$1, 8(%rdi)
	movl	$8, %edi
	movq	$0, (%rsp)
	call	malloc@PLT
	movq	%rax, 16(%rbx)
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
	.size	_ZN3wze6engine7threadsC2EPS0_, .-_ZN3wze6engine7threadsC2EPS0_
	.globl	_ZN3wze6engine7threadsC1EPS0_
	.set	_ZN3wze6engine7threadsC1EPS0_,_ZN3wze6engine7threadsC2EPS0_
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.threads.Start(): Function must not be NULL\nParams: Function: %p, Parameter: %p\n"
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC6:
	.string	"wze::engine.threads.Start(): SDL_CreateThread failed\nParams: Function: %p, Parameter: %p\n"
	.align 8
.LC7:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads5StartEPFiPvES2_
	.type	_ZN3wze6engine7threads5StartEPFiPvES2_, @function
_ZN3wze6engine7threads5StartEPFiPvES2_:
.LFB8149:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L37
	movq	8(%rdi), %rax
	movq	%rdi, %r13
	movq	%rsi, %rbp
	cmpq	$1, %rax
	jbe	.L39
	movq	16(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L40:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L39
.L43:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L40
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	SDL_CreateThread@PLT
	movq	16(%r13), %rdx
	cmpq	8(%r13), %rbx
	jnb	.L56
	movq	%rax, (%rdx,%rbx,8)
	testq	%rax, %rax
	jne	.L36
.L48:
	leaq	.LC6(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L39:
	movq	%r12, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	SDL_CreateThread@PLT
	movq	16(%r13), %rdi
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	leaq	1(%rax), %rsi
	movq	%rsi, 8(%r13)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 16(%r13)
	testq	%rax, %rax
	je	.L57
	movq	8(%r13), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%r13), %rbx
	movq	16(%r13), %rax
	addq	$-1, %rbx
	jnc	.L58
	cmpq	$0, (%rax,%rbx,8)
	je	.L48
.L36:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L59
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L56:
	.cfi_restore_state
	movq	%rbx, %rsi
.L55:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L37:
	leaq	.LC4(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L59:
	call	__stack_chk_fail@PLT
.L58:
	orq	$-1, %rsi
	jmp	.L55
.L57:
	leaq	.LC7(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8149:
	.size	_ZN3wze6engine7threads5StartEPFiPvES2_, .-_ZN3wze6engine7threads5StartEPFiPvES2_
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.threads.Wait(): Illegal use of NULL Thread\nParams: ThreadID: %lld\n"
	.align 8
.LC9:
	.string	"wze::engine.threads.Wait(): Thread does not exist\nParams: ThreadID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads4WaitEy
	.type	_ZN3wze6engine7threads4WaitEy, @function
_ZN3wze6engine7threads4WaitEy:
.LFB8150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L74
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	8(%rdi), %rsi
	jnb	.L62
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.L62
	leaq	4(%rsp), %rsi
	call	SDL_WaitThread@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L75
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L76
.L65:
	movl	4(%rsp), %eax
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L77
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L69:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L73
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L78
	cmpq	$1, %rsi
	jne	.L69
.L68:
	leaq	8(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L78:
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L68
.L75:
	movq	%rbx, %rsi
.L73:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L62:
	leaq	.LC9(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	leaq	.LC8(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine7threads4WaitEy, .-_ZN3wze6engine7threads4WaitEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine7threads5PurgeESt16initializer_listIyE:
.LFB8151:
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
	movq	8(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L80
	movq	16(%rdi), %rcx
	movq	%rdi, %r12
	movq	%rsi, %rbp
	movq	%rdx, %r13
	movl	$1, %ebx
.L86:
	testq	%r13, %r13
	je	.L81
.L98:
	xorl	%eax, %eax
.L82:
	cmpq	%rbx, 0(%rbp,%rax,8)
	je	.L117
	addq	$1, %rax
	cmpq	%r13, %rax
	jne	.L82
.L81:
	movq	(%rcx,%rbx,8), %rdi
	xorl	%esi, %esi
	call	SDL_WaitThread@PLT
	movq	8(%r12), %rax
	movq	16(%r12), %rcx
	cmpq	%rax, %rbx
	jnb	.L118
	movq	$0, (%rcx,%rbx,8)
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L86
.L99:
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L96
	cmpq	$0, (%rcx,%rdx,8)
	jne	.L104
	cmpq	$1, %rax
	jne	.L119
.L104:
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
.L117:
	.cfi_restore_state
	movq	8(%r12), %rax
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L98
	jmp	.L99
.L119:
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L90:
	movq	%rsi, %rdi
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L116
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L120
	cmpq	$1, %rsi
	jne	.L90
.L95:
	leaq	8(%r12), %rdi
	call	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
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
.L80:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L104
.L96:
	orq	$-1, %rsi
.L116:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L120:
	subq	%rdi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdx
	jmp	.L95
.L118:
	movq	%rbx, %rsi
	jmp	.L116
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine7threads5PurgeESt16initializer_listIyE, .-_ZN3wze6engine7threads5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.threads.Purge(): KeepThreadIDs must not be NULL\nParams: KeepThreadIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE:
.LFB8152:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	testq	%rsi, %rsi
	je	.L122
	movq	8(%rdi), %rax
	movq	%rdi, %r12
	cmpq	$1, %rax
	jbe	.L160
	movq	%rsi, %rbp
	movq	16(%rdi), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L130:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L125
.L126:
	cmpq	(%rcx,%rax,8), %rbx
	je	.L161
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L126
	.p2align 4,,10
	.p2align 3
.L125:
	movq	(%rsi,%rbx,8), %rdi
	xorl	%esi, %esi
	call	SDL_WaitThread@PLT
	movq	8(%r12), %rax
	movq	16(%r12), %rsi
	cmpq	%rax, %rbx
	jnb	.L162
	movq	$0, (%rsi,%rbx,8)
.L142:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L130
	movq	%rax, %rdx
	addq	$-1, %rdx
	jnc	.L140
	cmpq	$0, (%rsi,%rdx,8)
	jne	.L147
	cmpq	$1, %rax
	jne	.L163
.L147:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L161:
	.cfi_restore_state
	movq	8(%r12), %rax
	jmp	.L142
.L163:
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L134:
	movq	%rcx, %rdi
	subq	$1, %rcx
	cmpq	%rax, %rcx
	jnb	.L164
	cmpq	$0, (%rsi,%rcx,8)
	jne	.L165
	cmpq	$1, %rcx
	jne	.L134
.L139:
	leaq	8(%r12), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIP10SDL_ThreadE6RemoveEyy.isra.0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L160:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L147
.L140:
	orq	$-1, %rsi
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L165:
	subq	%rdi, %rax
	movq	%rdi, %rcx
	movq	%rax, %rdx
	jmp	.L139
.L164:
	movq	%rcx, %rsi
.L159:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L162:
	movq	%rbx, %rsi
	jmp	.L159
.L122:
	leaq	.LC10(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine7threads5PurgeEPN3neo5arrayIyEE
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
