	.file	"WZEOverlapbox(es).cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array.Insert(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC1:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0, @function
_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0:
.LFB8396:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	movq	(%rdi), %rsi
	cmpq	%rbx, %rsi
	jb	.L15
	testq	%rdx, %rdx
	jne	.L16
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
.L16:
	.cfi_restore_state
	addq	%rdx, %rsi
	movq	%rdi, %r12
	movq	%rsi, (%rdi)
	movq	8(%rdi), %rdi
	salq	$4, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L17
	movq	(%r12), %rdx
	leaq	(%rbx,%rbp), %rdi
	leaq	-1(%rdx), %rcx
	cmpq	%rdi, %rcx
	jb	.L5
	movq	%rbp, %rsi
	salq	$4, %rdx
	negq	%rsi
	addq	%rax, %rdx
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L6:
	movdqu	-16(%rdx,%rsi), %xmm0
	subq	$1, %rcx
	subq	$16, %rdx
	movups	%xmm0, (%rdx)
	cmpq	%rdi, %rcx
	jnb	.L6
.L5:
	cmpq	%rdi, %rbx
	jnb	.L1
	salq	$4, %rbx
	salq	$4, %rdi
	leaq	(%rax,%rbx), %rdx
	addq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L7:
	movq	$0, (%rdx)
	addq	$16, %rdx
	movq	$0, -8(%rdx)
	cmpq	%rdx, %rax
	jne	.L7
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L17:
	leaq	.LC1(%rip), %rdi
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8396:
	.size	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0, .-_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC3:
	.string	"neo::array.Remove(): Length out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC4:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0:
.LFB8397:
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
	jnb	.L42
	leaq	(%rsi,%rbx), %rax
	cmpq	%rax, %rdx
	jb	.L43
	testq	%rbx, %rbx
	je	.L18
	movq	%rdx, %rcx
	movq	%rdi, %r12
	subq	%rbx, %rcx
	movq	%rcx, (%rdi)
	movq	8(%rdi), %rdi
	je	.L22
	cmpq	%rcx, %rsi
	jnb	.L29
	movq	%rcx, %r8
	subq	%rsi, %r8
	leaq	-1(%r8), %rsi
	cmpq	$2, %rsi
	jbe	.L26
	leaq	0(,%rbp,8), %rsi
	leaq	8(,%rax,8), %r9
	cmpq	%rsi, %r9
	jne	.L44
.L26:
	movq	%rbx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rdx,8), %r8
	negq	%rsi
	salq	$3, %rsi
	.p2align 4,,10
	.p2align 3
.L31:
	movq	(%rax), %rdx
	addq	$8, %rax
	movq	%rdx, -8(%rax,%rsi)
	cmpq	%rax, %r8
	jne	.L31
	.p2align 4,,10
	.p2align 3
.L29:
	leaq	0(,%rcx,8), %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L45
.L18:
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
.L44:
	.cfi_restore_state
	leaq	(%rdi,%rsi), %rdx
	movq	%r8, %rsi
	leaq	-8(%rdi,%r9), %r9
	xorl	%eax, %eax
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L27:
	movdqu	(%r9,%rax), %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L27
	movq	%r8, %rax
	andq	$-2, %rax
	addq	%rbp, %rax
	andl	$1, %r8d
	je	.L29
	leaq	(%rbx,%rax), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%rdi,%rax,8)
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L22:
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
.L42:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	leaq	.LC3(%rip), %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L45:
	leaq	.LC4(%rip), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8397:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_:
.LFB8163:
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
	je	.L50
	movq	%rax, %rsi
	movq	%rsp, %rdi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L51
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L51:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L50:
	leaq	.LC5(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_,_ZN3wze6engine6actors5actor12overlapboxesC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.type	_ZN3wze6engine6actors5actor12overlapboxesD2Ev, @function
_ZN3wze6engine6actors5actor12overlapboxesD2Ev:
.LFB8166:
	.cfi_startproc
	movq	16(%rdi), %rdx
	movq	24(%rdi), %rax
	cmpq	$1, %rdx
	jbe	.L58
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
.L56:
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L54
	movl	$128, %esi
	addq	$1, %rbx
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	cmpq	%rdx, %rbx
	jb	.L56
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
.L54:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L56
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
.L58:
	movq	%rax, %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor12overlapboxesD2Ev, .-_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.globl	_ZN3wze6engine6actors5actor12overlapboxesD1Ev
	.set	_ZN3wze6engine6actors5actor12overlapboxesD1Ev,_ZN3wze6engine6actors5actor12overlapboxesD2Ev
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.type	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy, @function
_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy:
.LFB8169:
	.cfi_startproc
	cmpq	16(%rdi), %rsi
	jb	.L84
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L84:
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
	je	.L63
	movl	$128, %esi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L85
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L63
	cmpq	$1, %rax
	je	.L63
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L69:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L86
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L87
	cmpq	$1, %rsi
	jne	.L69
.L68:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
.L63:
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
.L87:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L68
.L86:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L85:
	leaq	.LC6(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy, .-_ZN3wze6engine6actors5actor12overlapboxes6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE:
.LFB8170:
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
	jbe	.L89
	movq	24(%rdi), %rcx
	movq	%rdi, %r13
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L96:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L91
.L90:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L92
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L90
.L91:
	movq	(%rcx,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r14
	testq	%rdi, %rdi
	je	.L94
	movl	$128, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L94:
	cmpq	%rdx, %rbx
	jnb	.L116
	movq	$0, (%rcx,%r14)
.L92:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L96
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L117
.L113:
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
.L117:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L102:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L115
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L118
	movq	%rsi, %rax
.L97:
	cmpq	$1, %rax
	jne	.L102
.L101:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
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
.L89:
	.cfi_restore_state
	testq	%rdx, %rdx
	jne	.L113
	orq	$-1, %rsi
.L115:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L118:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L101
.L116:
	movq	%rbx, %rsi
	jmp	.L115
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor12overlapboxes5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.actors[].overlapboxes.Purge(): KeepOverlapboxIDs must not be NULL\nParams: KeepOverlapboxIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE:
.LFB8171:
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
	je	.L120
	movq	16(%rdi), %rcx
	movq	%rdi, %r12
	cmpq	$1, %rcx
	jbe	.L151
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L129:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L123
.L124:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L125
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L124
	.p2align 4,,10
	.p2align 3
.L123:
	movq	(%rdi,%rbx,8), %rax
	leaq	0(,%rbx,8), %r13
	testq	%rax, %rax
	je	.L127
	movq	%rax, %rdi
	movl	$128, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rcx
	movq	24(%r12), %rdi
.L127:
	cmpq	%rcx, %rbx
	jnb	.L152
	movq	$0, (%rdi,%r13)
.L125:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L129
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L153
.L148:
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
	movq	%rcx, %rax
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L135:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L150
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L154
	movq	%rsi, %rax
.L130:
	cmpq	$1, %rax
	jne	.L135
.L134:
	leaq	16(%r12), %rdi
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor12overlapboxes10overlapboxEE6RemoveEyy.isra.0
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
.L151:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L148
	orq	$-1, %rsi
.L150:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L154:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L134
.L120:
	leaq	.LC7(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L152:
	movq	%rbx, %rsi
	jmp	.L150
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor12overlapboxes5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].overlapboxes[]: Illegal access to NULL Overlapbox\nParams: OverlapboxID: %lld\n"
	.align 8
.LC9:
	.string	"wze::engine.actors[].overlapboxes[]: Overlapbox does not exist\nParams: OverlapboxID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxesixEy
	.type	_ZN3wze6engine6actors5actor12overlapboxesixEy, @function
_ZN3wze6engine6actors5actor12overlapboxesixEy:
.LFB8172:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L160
	cmpq	16(%rdi), %rsi
	jnb	.L157
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L157
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L157:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L160:
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor12overlapboxesixEy, .-_ZN3wze6engine6actors5actor12overlapboxesixEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev:
.LFB8177:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD1Ev,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv:
.LFB8179:
	.cfi_startproc
	movq	24(%rdi), %rax
	ret
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv:
.LFB8180:
	.cfi_startproc
	movq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv:
.LFB8181:
	.cfi_startproc
	movq	8(%rdi), %rax
	movq	200(%rax), %rax
	ret
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox10GetActorIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv:
.LFB8182:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.actors[].overlapboxes[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd:
.LFB8183:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L184
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L169
	jne	.L169
	ucomisd	%xmm3, %xmm1
	jp	.L169
	jne	.L169
	movq	$0x000000000, 72(%rdi)
.L177:
	pxor	%xmm0, %xmm0
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L169:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	48(%rbx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 72(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L173
	jne	.L173
	ucomisd	%xmm3, %xmm1
	jp	.L173
	je	.L177
.L173:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L176:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L184:
	.cfi_restore_state
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv:
.LFB8184:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8184:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].overlapboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd:
.LFB8185:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L204
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L189
	jne	.L189
	ucomisd	%xmm1, %xmm3
	jp	.L189
	jne	.L189
	movq	$0x000000000, 72(%rdi)
.L197:
	pxor	%xmm0, %xmm0
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L189:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 72(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L193
	jne	.L193
	ucomisd	%xmm1, %xmm3
	jp	.L193
	je	.L197
.L193:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L196:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L204:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8185:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv:
.LFB8186:
	.cfi_startproc
	movsd	72(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8186:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOffsetLengthEv
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors[].overlapboxes[].SetOffsetLength(): OffsetLength must not be NaN\nParams: OffsetLength: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd:
.LFB8187:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm1
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L212
	movq	8(%rdi), %rax
	movsd	80(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	%xmm1, 8(%rsp)
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm1
	movsd	%xmm0, 40(%rbx)
	movsd	80(%rbx), %xmm2
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movsd	8(%rsp), %xmm1
	movsd	%xmm0, 48(%rbx)
	movsd	%xmm1, 72(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movapd	%xmm1, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L212:
	.cfi_restore_state
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8187:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15SetOffsetLengthEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv:
.LFB8188:
	.cfi_startproc
	movsd	80(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8188:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetOffsetAngleEv
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].overlapboxes[].SetOffsetAngle(): OffsetAngle must not be NaN\nParams: OffsetAngle %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd:
.LFB8189:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L220
	movq	8(%rdi), %rax
	movsd	72(%rdi), %xmm1
	movq	%rdi, %rbx
	movsd	%xmm2, 8(%rsp)
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 40(%rbx)
	movsd	72(%rbx), %xmm1
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 48(%rbx)
	movsd	%xmm2, 80(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movapd	%xmm2, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L220:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8189:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14SetOffsetAngleEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv:
.LFB8190:
	.cfi_startproc
	movzwl	56(%rdi), %eax
	ret
	.cfi_endproc
.LFE8190:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv:
.LFB8192:
	.cfi_startproc
	movzwl	58(%rdi), %eax
	ret
	.cfi_endproc
.LFE8192:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv:
.LFB8194:
	.cfi_startproc
	movsd	64(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8194:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetAngleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv:
.LFB8196:
	.cfi_startproc
	movzwl	88(%rdi), %eax
	ret
	.cfi_endproc
.LFE8196:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetActiveWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv:
.LFB8197:
	.cfi_startproc
	movzwl	90(%rdi), %eax
	ret
	.cfi_endproc
.LFE8197:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetActiveHeightEv
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Actor\nParams: ActorID: %lld, OverlapboxID: %lld\n"
	.align 8
.LC16:
	.string	"wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Actor does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n"
	.align 8
.LC17:
	.string	"wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Illegal use of NULL Overlapbox\nParams: ActorID: %lld, OverlapboxID: %lld\n"
	.align 8
.LC18:
	.string	"wze::engine.actors[].overlapboxes[].IsOverlappingWith(): Overlapbox does not exist\nParams: ActorID: %lld, OverlapboxID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy:
.LFB8198:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L236
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	cmpq	280(%rdi), %rsi
	jnb	.L228
	movq	288(%rdi), %rcx
	movq	(%rcx,%rsi,8), %rcx
	testq	%rcx, %rcx
	je	.L228
	testq	%rdx, %rdx
	je	.L237
	cmpq	152(%rcx), %rdx
	jnb	.L231
	movq	160(%rcx), %rcx
	movq	(%rcx,%rdx,8), %r8
	testq	%r8, %r8
	je	.L231
	movzwl	88(%rax), %edx
	pxor	%xmm1, %xmm1
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movsd	40(%rax), %xmm0
	addq	$296, %rdi
	movl	%edx, %ecx
	cvtsi2sdl	%edx, %xmm2
	shrw	%cx
	movzwl	%cx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzwl	90(%rax), %ecx
	movl	%ecx, %esi
	cvtsi2sdl	%ecx, %xmm3
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	48(%rax), %xmm1
	movq	%r8, %rsi
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm4
	subsd	%xmm3, %xmm4
	movapd	%xmm4, %xmm3
	jmp	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
.L228:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L231:
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L236:
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L237:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8198:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox17IsOverlappingWithEyy
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC20:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_:
.LFB8199:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r10
	movq	%rcx, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%r8, 16(%rsp)
	movq	%fs:40, %rdx
	movq	%rdx, 88(%rsp)
	xorl	%edx, %edx
	testq	%rsi, %rsi
	je	.L239
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r15
	movq	%rsi, %rbp
	movq	%r10, %r12
	movq	%rcx, %r13
	je	.L243
	.p2align 4,,10
	.p2align 3
.L240:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	0(%rbp), %rbx
	jb	.L240
	movq	%r12, %r10
	movq	%r13, %rax
.L243:
	movq	8(%rbp), %rdi
	movq	%rax, 8(%rsp)
	movl	$1, %ebx
	movq	$0, 0(%rbp)
	movq	%r10, (%rsp)
	call	free@PLT
	movq	(%r15), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	$0, 8(%rbp)
	movq	280(%rdx), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%r15), %ecx
	pxor	%xmm1, %xmm1
	movsd	40(%r15), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	(%rsp), %r10
	movq	8(%rsp), %rax
	movl	%ecx, %edx
	cvtsi2sdl	%ecx, %xmm2
	shrw	%dx
	movzwl	%dx, %edx
	cvtsi2sdl	%edx, %xmm1
	movzwl	90(%r15), %edx
	movl	%edx, %esi
	cvtsi2sdl	%edx, %xmm4
	movq	(%r15), %rdx
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	movq	280(%rdx), %rdi
	cvtsi2sdl	%esi, %xmm1
	addsd	48(%r15), %xmm1
	cmpq	$1, %rdi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L242
	movq	16(%rsp), %r9
	movq	%rbp, %r13
	movq	%r14, %r8
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L244:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L242
.L241:
	movq	288(%rdx), %rsi
	leaq	0(,%rbx,8), %r14
	movq	(%rsi,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L244
	cmpq	8(%r15), %rcx
	je	.L244
	movq	216(%rcx), %rbp
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.L244
	cmpq	(%r10,%rcx,8), %rbp
	je	.L288
.L277:
	addq	$1, %rcx
	cmpq	%rcx, %rax
	je	.L244
	cmpq	(%r10,%rcx,8), %rbp
	jne	.L277
.L288:
	xorl	%ecx, %ecx
	testq	%r8, %r8
	je	.L248
.L258:
	cmpq	%rbx, (%r9,%rcx,8)
	je	.L244
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.L258
.L248:
	cmpq	%rdi, %rbx
	jnb	.L287
	movq	%rbx, %rcx
	movl	$1, %r12d
	movq	%r10, 48(%rsp)
	salq	$4, %rcx
	movq	%rax, 56(%rsp)
	movq	%r12, %rbp
	movq	%rcx, 32(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	%r9, 64(%rsp)
	movq	%r8, 72(%rsp)
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 24(%rsp)
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L286:
	movq	(%r15), %rdx
	movq	280(%rdx), %rdi
.L251:
	movq	288(%rdx), %rsi
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L287
.L256:
	movq	(%rsi,%r14), %rax
	cmpq	152(%rax), %rbp
	jnb	.L289
	movq	160(%rax), %rax
	movq	(%rax,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L251
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	leaq	296(%rdx), %rdi
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L286
	movq	%rbp, 80(%rsp)
	movq	8(%r13), %rdx
	cmpq	0(%r13), %rbx
	jnb	.L287
	movq	32(%rsp), %rax
	leaq	(%rdx,%rax), %r12
	movq	(%r12), %rax
	movq	8(%r12), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L290
	movq	(%r12), %rdx
	movq	40(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L242:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L291
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L289:
	.cfi_restore_state
	movsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm1
	movsd	16(%rsp), %xmm2
	movsd	24(%rsp), %xmm3
	movq	48(%rsp), %r10
	movq	56(%rsp), %rax
	movq	64(%rsp), %r9
	movq	72(%rsp), %r8
	jmp	.L244
.L287:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L290:
	leaq	.LC20(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L239:
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rdi
	movq	%r9, %rcx
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L291:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8199:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\n"
	.align 8
.LC22:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE:
.LFB8201:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L343
	movq	%rsi, %r15
	testq	%rdx, %rdx
	je	.L294
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r14
	movq	%rcx, %r13
	movq	%rdx, %r12
	je	.L298
	.p2align 4,,10
	.p2align 3
.L295:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%r15), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	(%r15), %rbx
	jb	.L295
	movq	%r12, %r9
.L298:
	movq	$0, (%r15)
	movq	8(%r15), %rdi
	movl	$1, %ebx
	movq	%r9, 8(%rsp)
	call	free@PLT
	movq	(%r14), %rax
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	$0, 8(%r15)
	movq	280(%rax), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%r14), %edx
	pxor	%xmm1, %xmm1
	movsd	40(%r14), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	8(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm2
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	90(%r14), %eax
	movl	%eax, %ecx
	cvtsi2sdl	%eax, %xmm4
	movq	(%r14), %rax
	shrw	%cx
	subsd	%xmm1, %xmm0
	movzwl	%cx, %ecx
	pxor	%xmm1, %xmm1
	movq	280(%rax), %rsi
	cvtsi2sdl	%ecx, %xmm1
	addsd	48(%r14), %xmm1
	cmpq	$1, %rsi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L297
	movq	%r15, 40(%rsp)
	movq	%r13, %r10
	movq	%r9, %r15
	.p2align 4,,10
	.p2align 3
.L296:
	movq	288(%rax), %rdx
	leaq	0(,%rbx,8), %r13
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L299
	cmpq	8(%r14), %rcx
	je	.L299
	movq	(%r15), %rdi
	movq	216(%rcx), %r8
	xorl	%ecx, %ecx
	movq	8(%r15), %r9
	testq	%rdi, %rdi
	je	.L299
.L300:
	cmpq	(%r9,%rcx,8), %r8
	je	.L344
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L300
	.p2align 4,,10
	.p2align 3
.L299:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L296
.L297:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L345
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L344:
	.cfi_restore_state
	xorl	%ecx, %ecx
	testq	%rbp, %rbp
	je	.L303
.L313:
	cmpq	%rbx, (%r10,%rcx,8)
	je	.L299
	addq	$1, %rcx
	cmpq	%rcx, %rbp
	jne	.L313
.L303:
	cmpq	%rsi, %rbx
	jnb	.L342
	movq	%rbx, %rcx
	movl	$1, %r12d
	movq	%rbp, 72(%rsp)
	movq	%rsi, %rdi
	salq	$4, %rcx
	movq	%r10, 64(%rsp)
	movq	%r12, %rbp
	movq	%rcx, 48(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm3, 32(%rsp)
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L341:
	movq	(%r14), %rax
	movq	280(%rax), %rdi
.L306:
	movq	288(%rax), %rdx
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L342
.L311:
	movq	(%rdx,%r13), %rdx
	cmpq	152(%rdx), %rbp
	jnb	.L346
	movq	160(%rdx), %rdx
	movq	(%rdx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L306
	movsd	32(%rsp), %xmm3
	movsd	24(%rsp), %xmm2
	leaq	296(%rax), %rdi
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L341
	movq	40(%rsp), %rax
	movq	%rbp, 80(%rsp)
	movq	8(%rax), %rdx
	cmpq	(%rax), %rbx
	jnb	.L342
	movq	48(%rsp), %rax
	leaq	(%rdx,%rax), %r12
	movq	(%r12), %rax
	movq	8(%r12), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.L347
	movq	(%r12), %rdx
	movq	56(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L346:
	movq	%rdi, %rsi
	addq	$1, %rbx
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm3
	movq	64(%rsp), %r10
	movq	72(%rsp), %rbp
	cmpq	%rsi, %rbx
	jb	.L296
	jmp	.L297
.L342:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L345:
	call	__stack_chk_fail@PLT
.L294:
	leaq	.LC22(%rip), %rdi
	movq	%r8, %rcx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L343:
	leaq	.LC21(%rip), %rdi
	movq	%r8, %rcx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L347:
	leaq	.LC20(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8201:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_St16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\n"
	.align 8
.LC24:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist(length): %ld, ActorIDBlacklist: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_:
.LFB8202:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rcx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L399
	movq	%rsi, %rbp
	testq	%r8, %r8
	je	.L350
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r12
	movq	%rdx, %r9
	movq	%r8, %r13
	movq	%rdx, %r14
	je	.L354
	.p2align 4,,10
	.p2align 3
.L351:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%rbp), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	0(%rbp), %rbx
	jb	.L351
	movq	%r13, %r8
	movq	%r14, %r9
.L354:
	movq	8(%rbp), %rdi
	movq	%r9, 16(%rsp)
	movl	$1, %ebx
	movq	$0, 0(%rbp)
	movq	%r8, 8(%rsp)
	call	free@PLT
	movq	(%r12), %rax
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	$0, 8(%rbp)
	movq	280(%rax), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%r12), %edx
	pxor	%xmm1, %xmm1
	movsd	40(%r12), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	8(%rsp), %r8
	movq	16(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm2
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	90(%r12), %eax
	movl	%eax, %ecx
	cvtsi2sdl	%eax, %xmm4
	movq	(%r12), %rax
	shrw	%cx
	subsd	%xmm1, %xmm0
	movzwl	%cx, %ecx
	pxor	%xmm1, %xmm1
	movq	280(%rax), %rsi
	cvtsi2sdl	%ecx, %xmm1
	addsd	48(%r12), %xmm1
	cmpq	$1, %rsi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L353
	movq	%rbp, 40(%rsp)
	movq	%r9, %r14
	jmp	.L352
	.p2align 4,,10
	.p2align 3
.L355:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L353
.L352:
	movq	288(%rax), %rdx
	leaq	0(,%rbx,8), %r13
	movq	(%rdx,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L355
	cmpq	8(%r12), %rcx
	je	.L355
	movq	216(%rcx), %rdi
	xorl	%ecx, %ecx
	testq	%r15, %r15
	je	.L355
	cmpq	(%r14,%rcx,8), %rdi
	je	.L400
.L389:
	addq	$1, %rcx
	cmpq	%rcx, %r15
	je	.L355
	cmpq	(%r14,%rcx,8), %rdi
	jne	.L389
.L400:
	movq	(%r8), %rdi
	movq	8(%r8), %r9
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.L359
.L369:
	cmpq	%rbx, (%r9,%rcx,8)
	je	.L355
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.L369
	.p2align 4,,10
	.p2align 3
.L359:
	cmpq	%rsi, %rbx
	jnb	.L398
	movq	%rbx, %rcx
	movq	%r8, 64(%rsp)
	movl	$1, %ebp
	movq	%rsi, %rdi
	salq	$4, %rcx
	movq	%r14, 72(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm3, 32(%rsp)
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L397:
	movq	(%r12), %rax
	movq	280(%rax), %rdi
.L362:
	movq	288(%rax), %rdx
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L398
.L367:
	movq	(%rdx,%r13), %rdx
	cmpq	152(%rdx), %rbp
	jnb	.L401
	movq	160(%rdx), %rdx
	movq	(%rdx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L362
	movsd	32(%rsp), %xmm3
	movsd	24(%rsp), %xmm2
	leaq	296(%rax), %rdi
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L397
	movq	40(%rsp), %rax
	movq	%rbp, 80(%rsp)
	movq	8(%rax), %rdx
	cmpq	(%rax), %rbx
	jnb	.L398
	movq	48(%rsp), %rax
	leaq	(%rdx,%rax), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r14)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L402
	movq	(%r14), %rdx
	movq	56(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L353:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L403
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L401:
	.cfi_restore_state
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	movq	%rdi, %rsi
	movsd	24(%rsp), %xmm2
	movsd	32(%rsp), %xmm3
	movq	64(%rsp), %r8
	movq	72(%rsp), %r14
	jmp	.L355
.L398:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L350:
	leaq	.LC24(%rip), %rdi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L399:
	leaq	.LC23(%rip), %rdi
	movq	%r8, %rcx
	movq	%r15, %rdx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L403:
	call	__stack_chk_fail@PLT
.L402:
	leaq	.LC20(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8202:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyEPS7_
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): OverlapboxesByActors must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\n"
	.align 8
.LC26:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorTypeWhitelist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\n"
	.align 8
.LC27:
	.string	"wze::engine.actors[].overlapboxes[].GetOverlapState(): ActorIDBlacklist must not be NULL\nParams: OverlapboxesByActors: %p, ActorTypeWhitelist: %p, ActorIDBlacklist: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_:
.LFB8203:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L456
	movq	%rsi, %r12
	testq	%rdx, %rdx
	je	.L457
	testq	%rcx, %rcx
	je	.L407
	xorl	%ebx, %ebx
	cmpq	$0, (%rsi)
	movq	%rdi, %r14
	movq	%rcx, %rbp
	je	.L411
	.p2align 4,,10
	.p2align 3
.L408:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	addq	8(%r12), %rax
	movq	8(%rax), %rdi
	call	free@PLT
	cmpq	(%r12), %rbx
	jb	.L408
	movq	%rbp, %rcx
.L411:
	movq	8(%r12), %rdi
	movq	%rcx, (%rsp)
	movl	$1, %ebx
	movq	$0, (%r12)
	call	free@PLT
	movq	(%r14), %rax
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	$0, 8(%r12)
	movq	280(%rax), %rdx
	call	_ZN3neo5arrayINS0_IyEEE6InsertEyy.isra.0
	movzwl	88(%r14), %edx
	pxor	%xmm1, %xmm1
	movsd	40(%r14), %xmm0
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movq	(%rsp), %rcx
	leaq	64(%rsp), %r9
	movl	%edx, %eax
	cvtsi2sdl	%edx, %xmm2
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm1
	movzwl	90(%r14), %eax
	movl	%eax, %esi
	cvtsi2sdl	%eax, %xmm4
	movq	(%r14), %rax
	shrw	%si
	subsd	%xmm1, %xmm0
	movzwl	%si, %esi
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%esi, %xmm1
	addsd	48(%r14), %xmm1
	movq	280(%rax), %rsi
	cmpq	$1, %rsi
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm4, %xmm3
	jbe	.L410
	movq	%r9, 40(%rsp)
	movq	%r12, %r13
	movq	%r15, %r9
	movq	%r14, %r12
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm3, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L409:
	movq	288(%rax), %rdx
	leaq	0(,%rbx,8), %r15
	movq	(%rdx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.L412
	cmpq	8(%r12), %rdi
	je	.L412
	movq	(%r9), %r10
	movq	216(%rdi), %r11
	xorl	%edi, %edi
	movq	8(%r9), %rbp
	testq	%r10, %r10
	je	.L412
.L413:
	cmpq	0(%rbp,%rdi,8), %r11
	je	.L458
	addq	$1, %rdi
	cmpq	%rdi, %r10
	jne	.L413
	.p2align 4,,10
	.p2align 3
.L412:
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jb	.L409
.L410:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L459
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L458:
	.cfi_restore_state
	movq	(%rcx), %r10
	movq	8(%rcx), %r11
	xorl	%edi, %edi
	testq	%r10, %r10
	je	.L416
.L426:
	cmpq	%rbx, (%r11,%rdi,8)
	je	.L412
	addq	$1, %rdi
	cmpq	%rdi, %r10
	jne	.L426
	.p2align 4,,10
	.p2align 3
.L416:
	cmpq	%rsi, %rbx
	jnb	.L455
	movq	%rbx, %rdi
	movq	%r9, 48(%rsp)
	movl	$1, %ebp
	salq	$4, %rdi
	movq	%rcx, 56(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rsi, %rdi
	movsd	%xmm0, (%rsp)
	jmp	.L424
	.p2align 4,,10
	.p2align 3
.L454:
	movq	(%r12), %rax
	movq	280(%rax), %rdi
.L419:
	movq	288(%rax), %rdx
	addq	$1, %rbp
	cmpq	%rdi, %rbx
	jnb	.L455
.L424:
	movq	(%rdx,%r15), %rdx
	cmpq	152(%rdx), %rbp
	jnb	.L460
	movq	160(%rdx), %rdx
	movq	(%rdx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.L419
	movsd	24(%rsp), %xmm3
	movsd	16(%rsp), %xmm2
	leaq	296(%rax), %rdi
	movsd	8(%rsp), %xmm1
	movsd	(%rsp), %xmm0
	call	_ZN3wze6engine9collision12CheckOverlapEddddPNS0_6actors5actor12overlapboxes10overlapboxE@PLT
	testb	%al, %al
	je	.L454
	movq	%rbp, 64(%rsp)
	movq	8(%r13), %rdx
	cmpq	0(%r13), %rbx
	jnb	.L455
	movq	32(%rsp), %rax
	leaq	(%rdx,%rax), %r14
	movq	(%r14), %rax
	movq	8(%r14), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%r14)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.L461
	movq	(%r14), %rdx
	movq	40(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L454
	.p2align 4,,10
	.p2align 3
.L460:
	movq	%rdi, %rsi
	addq	$1, %rbx
	movsd	(%rsp), %xmm0
	movq	48(%rsp), %r9
	movq	56(%rsp), %rcx
	cmpq	%rsi, %rbx
	jb	.L409
	jmp	.L410
.L455:
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L459:
	call	__stack_chk_fail@PLT
.L407:
	leaq	.LC27(%rip), %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L457:
	leaq	.LC26(%rip), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L456:
	leaq	.LC25(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L461:
	leaq	.LC20(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8203:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEEPS7_SA_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv:
.LFB8204:
	.cfi_startproc
	movl	120(%rdi), %eax
	ret
	.cfi_endproc
.LFE8204:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv:
.LFB8205:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movsd	64(%rdi), %xmm0
	movsd	104(%rdi), %xmm3
	movsd	112(%rdi), %xmm4
	movsd	96(%rdi), %xmm1
	addsd	%xmm0, %xmm3
	addsd	%xmm0, %xmm4
	movsd	.LC28(%rip), %xmm0
	movapd	%xmm3, %xmm5
	movapd	%xmm3, %xmm2
	movsd	%xmm3, 24(%rsp)
	addsd	%xmm0, %xmm5
	addsd	%xmm4, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	movq	%xmm5, %r13
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	(%rsp), %xmm2
	movsd	96(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	96(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	movl	%esi, 20(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	8(%rsp), %xmm2
	movsd	96(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ecx
	pxor	%xmm0, %xmm0
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	24(%rsp), %xmm3
	movsd	96(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movsd	(%rsp), %xmm2
	movsd	96(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movsd	96(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movsd	8(%rsp), %xmm2
	movsd	96(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movl	20(%rsp), %esi
	movl	16(%rsp), %ecx
	cvttsd2sil	%xmm0, %edx
	cmpl	%esi, %r12d
	movl	%esi, %eax
	cmovge	%r12d, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	%r15d, %eax
	cmovl	%r15d, %eax
	cmpl	%esi, %r12d
	cmovg	%esi, %r12d
	cmpl	%ecx, %r12d
	cmovg	%ecx, %r12d
	cmpl	%r15d, %r12d
	cmovg	%r15d, %r12d
	subl	%r12d, %eax
	cmpl	%r14d, %ebp
	movw	%ax, 88(%rbx)
	movl	%r14d, %eax
	cmovge	%ebp, %eax
	cmpl	%r13d, %eax
	cmovl	%r13d, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%r14d, %ebp
	cmovg	%r14d, %ebp
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	cmpl	%edx, %ebp
	cmovg	%edx, %ebp
	subl	%ebp, %eax
	movw	%ax, 90(%rbx)
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8205:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy:
.LFB8174:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movd	256(%rdx), %xmm0
	pxor	%xmm3, %xmm3
	movq	%rdi, %rbx
	movl	$257, %eax
	movsd	264(%rdx), %xmm1
	movq	%rdx, 8(%rdi)
	pxor	%xmm2, %xmm2
	movupd	224(%rdx), %xmm4
	movw	%ax, 16(%rdi)
	pextrw	$1, %xmm0, %edx
	pextrw	$0, %xmm0, %eax
	cvtsi2sdl	%edx, %xmm3
	movq	%rsi, (%rdi)
	cvtsi2sdl	%eax, %xmm2
	movb	$0, 18(%rdi)
	movq	%rcx, 24(%rdi)
	movq	%r8, 32(%rdi)
	movq	$0x000000000, 72(%rdi)
	movq	$0x000000000, 80(%rdi)
	movl	$0, 88(%rdi)
	movsd	%xmm1, 64(%rdi)
	pxor	%xmm1, %xmm1
	movd	%xmm0, 56(%rdi)
	movapd	%xmm1, %xmm0
	movups	%xmm4, 40(%rdi)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC30(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
	jp	.L466
	jne	.L466
	movsd	%xmm1, 104(%rbx)
.L468:
	pxor	%xmm0, %xmm0
.L471:
	movl	$0, 120(%rbx)
	movq	%rbx, %rdi
	movsd	%xmm0, 112(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	.p2align 4,,10
	.p2align 3
.L466:
	.cfi_restore_state
	movzwl	58(%rbx), %edx
	movzwl	56(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm3
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	96(%rbx), %xmm1
	movsd	%xmm0, 104(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L469
	je	.L468
.L469:
	movzwl	58(%rbx), %eax
	movzwl	56(%rbx), %edx
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%edx, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L471
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy
	.set	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy,_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC2EPS0_PS2_yy
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"wze::engine.actors[].overlapboxes.New(): Memory allocation failed\nParams: Type: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB32:
	.text
.LHOTB32:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.type	_ZN3wze6engine6actors5actor12overlapboxes3NewEy, @function
_ZN3wze6engine6actors5actor12overlapboxes3NewEy:
.LFB8168:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8168
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L475
	movq	24(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L479
	.p2align 4,,10
	.p2align 3
.L476:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L475
.L479:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L476
	movl	$128, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r13, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB1:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy
.LEHE1:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L494
	movq	%r12, (%rax,%rbx,8)
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L475:
	movl	$128, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	16(%rbp), %rcx
	movq	8(%rbp), %rdx
	movq	%r13, %r8
	movq	0(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB3:
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapboxC1EPS0_PS2_yy
.LEHE3:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L495
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L496
	movq	(%rdx,%rcx,8), %r12
	testq	%r12, %r12
	je	.L497
.L474:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L498
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L494:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L498:
	call	__stack_chk_fail@PLT
.L497:
	leaq	.LC31(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L496:
	leaq	.LC6(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L495:
	leaq	.LC20(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L489:
	movq	%rax, %rbp
	jmp	.L486
.L490:
	movq	%rax, %rbx
	jmp	.L484
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8168-.LLSDACSB8168
.LLSDACSB8168:
	.uleb128 .LEHB0-.LFB8168
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8168
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L490-.LFB8168
	.uleb128 0
	.uleb128 .LEHB2-.LFB8168
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8168
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L489-.LFB8168
	.uleb128 0
	.uleb128 .LEHB4-.LFB8168
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8168:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8168
	.type	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold, @function
_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold:
.LFSB8168:
.L486:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movl	$128, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L493
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L484:
	movl	$128, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L493
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L493:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8168:
	.section	.gcc_except_table
.LLSDAC8168:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8168-.LLSDACSBC8168
.LLSDACSBC8168:
	.uleb128 .LEHB5-.LCOLDB32
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8168:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor12overlapboxes3NewEy, .-_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold, .-_ZN3wze6engine6actors5actor12overlapboxes3NewEy.cold
.LCOLDE32:
	.text
.LHOTE32:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt:
.LFB8191:
	.cfi_startproc
	movzwl	%si, %eax
	pxor	%xmm4, %xmm4
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm4
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pxor	%xmm1, %xmm1
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzwl	58(%rdi), %eax
	movapd	%xmm1, %xmm0
	movq	%rdi, %rbx
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm4, %xmm2
	movq	%xmm4, %r14
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC30(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
	jp	.L500
	jne	.L500
	movsd	%xmm1, 104(%rbx)
.L502:
	pxor	%xmm0, %xmm0
.L505:
	movw	%bp, 56(%rbx)
	movq	%rbx, %rdi
	movsd	%xmm0, 112(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movzwl	56(%rbx), %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L500:
	.cfi_restore_state
	movzwl	58(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	movq	%r14, %xmm2
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	96(%rbx), %xmm1
	movsd	%xmm0, 104(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L503
	je	.L502
.L503:
	movzwl	58(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movq	%r14, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L505
	.cfi_endproc
.LFE8191:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt:
.LFB8193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%si, %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	cvtsi2sdl	%eax, %xmm3
	pxor	%xmm1, %xmm1
	movq	%rdi, %rbx
	movapd	%xmm1, %xmm0
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	56(%rdi), %eax
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm3
	mulsd	.LC30(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rbx)
	jp	.L509
	jne	.L509
	movsd	%xmm1, 104(%rbx)
.L511:
	pxor	%xmm0, %xmm0
.L514:
	movw	%bp, 58(%rbx)
	movq	%rbx, %rdi
	movsd	%xmm0, 112(%rbx)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movzwl	58(%rbx), %eax
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
.L509:
	.cfi_restore_state
	movzwl	56(%rbx), %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movsd	%xmm3, 8(%rsp)
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	96(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 104(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L512
	je	.L511
.L512:
	movzwl	56(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L514
	.cfi_endproc
.LFE8193:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"wze::engine.actors[].overlapboxes[].SetAngle(): Angle must not be NaN\nParams: Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.type	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd, @function
_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd:
.LFB8195:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L523
	movq	%rdi, %rbx
	movsd	%xmm0, 64(%rdi)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv
	movsd	64(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L523:
	.cfi_restore_state
	leaq	.LC33(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8195:
	.size	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd, .-_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetAngleEd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC28:
	.long	0
	.long	1080459264
	.align 8
.LC30:
	.long	0
	.long	1071644672
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
