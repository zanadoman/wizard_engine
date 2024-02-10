	.file	"WZEText(s).cpp"
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
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0:
.LFB8358:
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
.LFE8358:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_:
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
	.size	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_,_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsD2Ev
	.type	_ZN3wze6engine6actors5actor5textsD2Ev, @function
_ZN3wze6engine6actors5actor5textsD2Ev:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdi
	cmpq	$1, %rax
	jbe	.L37
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L40:
	movq	(%rdi,%rbx,8), %rbp
	testq	%rbp, %rbp
	je	.L38
	movq	128(%rbp), %rdi
	addq	$1, %rbx
	call	SDL_DestroyTexture@PLT
	leaq	96(%rbp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%rbp, %rdi
	movl	$136, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
	cmpq	%rax, %rbx
	jb	.L40
.L37:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L40
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8150:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
.LLSDACSE8150:
	.text
	.size	_ZN3wze6engine6actors5actor5textsD2Ev, .-_ZN3wze6engine6actors5actor5textsD2Ev
	.globl	_ZN3wze6engine6actors5actor5textsD1Ev
	.set	_ZN3wze6engine6actors5actor5textsD1Ev,_ZN3wze6engine6actors5actor5textsD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts6DeleteEy
	.type	_ZN3wze6engine6actors5actor5texts6DeleteEy, @function
_ZN3wze6engine6actors5actor5texts6DeleteEy:
.LFB8153:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8153
	cmpq	16(%rdi), %rsi
	jb	.L65
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L65:
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
	movq	24(%rdi), %rax
	movq	%rdi, %rbx
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L44
	movq	128(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$136, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L66
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L44
	cmpq	$1, %rax
	je	.L44
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L50:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L67
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L68
	cmpq	$1, %rsi
	jne	.L50
.L49:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
.LEHB0:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
.L44:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L49
.L67:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L66:
	leaq	.LC4(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
	.section	.gcc_except_table
.LLSDA8153:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8153-.LLSDACSB8153
.LLSDACSB8153:
	.uleb128 .LEHB0-.LFB8153
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE8153:
	.text
	.size	_ZN3wze6engine6actors5actor5texts6DeleteEy, .-_ZN3wze6engine6actors5actor5texts6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE:
.LFB8154:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8154
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
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L70
	movq	24(%rdi), %rcx
	movq	%rdi, %r14
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L77:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L72
.L71:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L73
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L71
.L72:
	movq	(%rcx,%rbx,8), %r13
	leaq	0(,%rbx,8), %r15
	testq	%r13, %r13
	je	.L75
	movq	128(%r13), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%r13), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$136, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r14), %rdx
	movq	24(%r14), %rcx
.L75:
	cmpq	%rdx, %rbx
	jnb	.L97
	movq	$0, (%rcx,%r15)
.L73:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L77
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L98
.L94:
	addq	$8, %rsp
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
.L98:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L83:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L96
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L99
	movq	%rsi, %rax
.L78:
	cmpq	$1, %rax
	jne	.L83
.L82:
	leaq	16(%r14), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
.LEHB1:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	jmp	.L94
.L70:
	testq	%rdx, %rdx
	jne	.L94
	orq	$-1, %rsi
.L96:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L99:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L82
.L97:
	movq	%rbx, %rsi
	jmp	.L96
	.cfi_endproc
.LFE8154:
	.section	.gcc_except_table
.LLSDA8154:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8154-.LLSDACSB8154
.LLSDACSB8154:
	.uleb128 .LEHB1-.LFB8154
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8154:
	.text
	.size	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.actors[].texts.Purge(): KeepTextIDs must not be NULL\nParams: KeepTextIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE:
.LFB8155:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8155
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
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	testq	%rsi, %rsi
	je	.L101
	movq	16(%rdi), %rcx
	movq	%rdi, %r13
	cmpq	$1, %rcx
	jbe	.L132
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L110:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L104
.L105:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L106
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L105
	.p2align 4,,10
	.p2align 3
.L104:
	movq	(%rdi,%rbx,8), %r12
	leaq	0(,%rbx,8), %r14
	testq	%r12, %r12
	je	.L108
	movq	128(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%r12, %rdi
	movl	$136, %esi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rcx
	movq	24(%r13), %rdi
.L108:
	cmpq	%rcx, %rbx
	jnb	.L133
	movq	$0, (%rdi,%r14)
.L106:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L110
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L134
.L129:
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
.L134:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L116:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L131
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L135
	movq	%rsi, %rax
.L111:
	cmpq	$1, %rax
	jne	.L116
.L115:
	leaq	16(%r13), %rdi
	movq	%rax, %rsi
.LEHB2:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
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
.L132:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L129
	orq	$-1, %rsi
.L131:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L135:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L115
.L101:
	leaq	.LC5(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	movl	$1, %edi
	call	exit@PLT
.L133:
	movq	%rbx, %rsi
	jmp	.L131
	.cfi_endproc
.LFE8155:
	.section	.gcc_except_table
.LLSDA8155:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8155-.LLSDACSB8155
.LLSDACSB8155:
	.uleb128 .LEHB2-.LFB8155
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE8155:
	.text
	.size	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"wze::engine.actors[].texts[]: Illegal access to NULL Text\nParams: TextID: %lld\n"
	.align 8
.LC7:
	.string	"wze::engine.actors[].texts[]: Text does not exist\nParams: TextID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsixEy
	.type	_ZN3wze6engine6actors5actor5textsixEy, @function
_ZN3wze6engine6actors5actor5textsixEy:
.LFB8156:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L141
	cmpq	16(%rdi), %rsi
	jnb	.L138
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L138
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L138:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L141:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor5textsixEy, .-_ZN3wze6engine6actors5actor5textsixEy
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.actors[].texts[].text(): TTF_RenderUTF8_Blended failed\nParams: String: %s\n"
	.align 8
.LC12:
	.string	"wze::engine.actors[].texts[].text(): SDL_CreateTextureFromSurface failed\nParams: String: %s\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy
	.type	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy, @function
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy:
.LFB8158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8158
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	96(%rdi), %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%r9, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%r14, %rdi
.LEHB3:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE3:
	movl	$384, %eax
	xorl	%edx, %edx
	movq	%r13, 40(%rbx)
	movw	%ax, 36(%rbx)
	movq	8(%rbx), %rax
	pxor	%xmm0, %xmm0
	movq	%rsp, %rsi
	movl	$-1, 16(%rbx)
	movq	%r14, %rdi
	movq	$0x000000000, 24(%rbx)
	movupd	224(%rax), %xmm2
	movzwl	258(%rax), %eax
	movw	%dx, 64(%rbx)
	movl	$1, %edx
	movl	$16842752, 32(%rbx)
	movq	%rax, 72(%rbx)
	movups	%xmm2, 48(%rbx)
	movups	%xmm0, 80(%rbx)
	movq	%r12, (%rsp)
.LEHB4:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rbp, 112(%rbx)
	movl	$0, 120(%rbx)
	movq	$0, 128(%rbx)
	testq	%rbp, %rbp
	je	.L142
	cmpq	$0, 72(%rbx)
	jne	.L156
.L142:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L157
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L156:
	.cfi_restore_state
	movq	%r14, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L142
	movq	%r14, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	112(%rbx), %rax
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rax
	jnb	.L158
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L159
	movq	(%rbx), %rax
	movq	%rbp, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	je	.L160
	movq	72(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L149
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L150:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%rbp, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 64(%rbx)
	call	SDL_FreeSurface@PLT
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L149:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L150
.L157:
	call	__stack_chk_fail@PLT
.L160:
	movq	%r12, %rsi
	leaq	.LC12(%rip), %rdi
	call	printf@PLT
.L147:
	movl	$1, %edi
	call	exit@PLT
.L159:
	movq	%r12, %rsi
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L147
.L158:
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
	jmp	.L147
.L154:
	movq	%rax, %rbx
	jmp	.L151
	.section	.gcc_except_table
.LLSDA8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8158-.LLSDACSB8158
.LLSDACSB8158:
	.uleb128 .LEHB3-.LFB8158
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB8158
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L154-.LFB8158
	.uleb128 0
.LLSDACSE8158:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8158
	.type	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy.cold, @function
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy.cold:
.LFSB8158:
.L151:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movq	%r14, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L161
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L161:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8158:
	.section	.gcc_except_table
.LLSDAC8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8158-.LLSDACSBC8158
.LLSDACSBC8158:
	.uleb128 .LEHB5-.LCOLDB14
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8158:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy, .-_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy.cold, .-_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy.cold
.LCOLDE14:
	.text
.LHOTE14:
	.globl	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_yPKcy
	.set	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_yPKcy,_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_yPKcy
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.actors[].texts.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n"
	.align 8
.LC16:
	.string	"wze::engine.actors[].texts.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n"
	.align 8
.LC17:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC18:
	.string	"wze::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.type	_ZN3wze6engine6actors5actor5texts3NewEPKcy, @function
_ZN3wze6engine6actors5actor5texts3NewEPKcy:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L187
	movq	%rdi, %rbp
	movq	%rsi, %r13
	testq	%rdx, %rdx
	jne	.L164
.L168:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L166
	movq	24(%rbp), %rcx
	movl	$1, %ebx
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L169:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L166
.L172:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L169
	movl	$136, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r9
	movq	%r13, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB7:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_yPKcy
.LEHE7:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L188
	movq	%r14, (%rax,%rbx,8)
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L166:
	movl	$136, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	16(%rbp), %rcx
	movq	8(%rbp), %rdx
	movq	%r12, %r9
	movq	0(%rbp), %rsi
	movq	%r13, %r8
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB9:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_yPKcy
.LEHE9:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L189
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB10:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L190
	movq	(%rdx,%rcx,8), %r14
	testq	%r14, %r14
	je	.L191
.L162:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L192
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r14, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	.cfi_restore_state
	movq	(%rdi), %rax
	cmpq	368(%rax), %rdx
	jnb	.L167
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	jne	.L168
.L167:
	leaq	.LC16(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L188:
	leaq	.LC4(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L192:
	call	__stack_chk_fail@PLT
.L191:
	leaq	.LC18(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L187:
	leaq	.LC15(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L190:
	leaq	.LC4(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L189:
	leaq	.LC17(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE10:
	movl	$1, %edi
	call	exit@PLT
.L182:
	movq	%rax, %rbx
	jmp	.L177
.L183:
	movq	%rax, %rbp
	jmp	.L179
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB6-.LFB8152
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8152
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L182-.LFB8152
	.uleb128 0
	.uleb128 .LEHB8-.LFB8152
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB8152
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L183-.LFB8152
	.uleb128 0
	.uleb128 .LEHB10-.LFB8152
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE8152:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8152
	.type	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold, @function
_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold:
.LFSB8152:
.L177:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$136, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L186
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L179:
	movl	$136, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L186
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
.L186:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8152:
	.section	.gcc_except_table
.LLSDAC8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8152-.LLSDACSBC8152
.LLSDACSBC8152:
	.uleb128 .LEHB11-.LCOLDB19
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor5texts3NewEPKcy, .-_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold, .-_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold
.LCOLDE19:
	.text
.LHOTE19:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textD2Ev
	.type	_ZN3wze6engine6actors5actor5texts4textD2Ev, @function
_ZN3wze6engine6actors5actor5texts4textD2Ev:
.LFB8161:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8161
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	128(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	96(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringD1Ev@PLT
	.cfi_endproc
.LFE8161:
	.section	.gcc_except_table
.LLSDA8161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8161-.LLSDACSB8161
.LLSDACSB8161:
.LLSDACSE8161:
	.text
	.size	_ZN3wze6engine6actors5actor5texts4textD2Ev, .-_ZN3wze6engine6actors5actor5texts4textD2Ev
	.globl	_ZN3wze6engine6actors5actor5texts4textD1Ev
	.set	_ZN3wze6engine6actors5actor5texts4textD1Ev,_ZN3wze6engine6actors5actor5texts4textD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text5GetIDEv
	.type	_ZN3wze6engine6actors5actor5texts4text5GetIDEv, @function
_ZN3wze6engine6actors5actor5texts4text5GetIDEv:
.LFB8163:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor5texts4text5GetIDEv, .-_ZN3wze6engine6actors5actor5texts4text5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetXEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetXEv:
.LFB8164:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor5texts4text4GetXEv, .-_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.actors[].texts[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.type	_ZN3wze6engine6actors5actor5texts4text4SetXEd, @function
_ZN3wze6engine6actors5actor5texts4text4SetXEd:
.LFB8165:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L215
	movq	8(%rdi), %rax
	movsd	56(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L200
	jne	.L200
	ucomisd	%xmm3, %xmm1
	jp	.L200
	jne	.L200
	movq	$0x000000000, 80(%rdi)
.L208:
	pxor	%xmm0, %xmm0
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L200:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	56(%rbx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 80(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L204
	jne	.L204
	ucomisd	%xmm3, %xmm1
	jp	.L204
	je	.L208
.L204:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L207:
	movsd	%xmm0, 88(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L215:
	.cfi_restore_state
	leaq	.LC20(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetXEd, .-_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetYEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetYEv:
.LFB8166:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor5texts4text4GetYEv, .-_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wze::engine.actors[].texts[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.type	_ZN3wze6engine6actors5actor5texts4text4SetYEd, @function
_ZN3wze6engine6actors5actor5texts4text4SetYEd:
.LFB8167:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L235
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L220
	jne	.L220
	ucomisd	%xmm1, %xmm3
	jp	.L220
	jne	.L220
	movq	$0x000000000, 80(%rdi)
.L228:
	pxor	%xmm0, %xmm0
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L220:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 80(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L224
	jne	.L224
	ucomisd	%xmm1, %xmm3
	jp	.L224
	je	.L228
.L224:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L227:
	movsd	%xmm0, 88(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 56(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L235:
	.cfi_restore_state
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetYEd, .-_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	.type	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv, @function
_ZN3wze6engine6actors5actor5texts4text8GetWidthEv:
.LFB8168:
	.cfi_startproc
	movzwl	64(%rdi), %eax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv, .-_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetHeightEv:
.LFB8169:
	.cfi_startproc
	movzwl	72(%rdi), %eax
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv, .-_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.actors[].texts[].SetHeight(): TTF_RenderUTF8_Blended failed\nParams: Height: %d\n"
	.align 8
.LC23:
	.string	"wze::engine.actors[].texts[].SetHeight(): SDL_CreateTextureFromSurface failed\nParams: Height: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.type	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt, @function
_ZN3wze6engine6actors5actor5texts4text9SetHeightEt:
.LFB8170:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movzwl	%si, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	cmpq	%r12, 72(%rdi)
	je	.L239
	cmpq	$0, 112(%rdi)
	je	.L239
	movl	%esi, %ebp
	testw	%si, %si
	jne	.L257
.L239:
	xorl	%edx, %edx
	movq	128(%rbx), %rdi
	movw	%dx, 64(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 128(%rbx)
.L242:
	movq	%r12, 72(%rbx)
	movl	%r13d, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L257:
	.cfi_restore_state
	leaq	96(%rdi), %r14
	movq	%r14, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L239
	movl	120(%rbx), %esi
	testl	%esi, %esi
	jne	.L258
.L241:
	movq	%r14, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	112(%rbx), %rax
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rax
	jnb	.L255
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L259
	movq	(%rbx), %rax
	movq	%r14, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	je	.L260
	pxor	%xmm0, %xmm0
	movzwl	%bp, %ebp
	pxor	%xmm1, %xmm1
	cvtsi2sdl	16(%r14), %xmm0
	cvtsi2sdl	%ebp, %xmm1
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r14), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r14, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 64(%rbx)
	call	SDL_FreeSurface@PLT
	movl	120(%rbx), %eax
	testl	%eax, %eax
	je	.L242
	movq	(%rbx), %rax
	movq	112(%rbx), %rsi
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L256
	movq	(%rdx,%rsi,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L258:
	movq	(%rbx), %rdx
	movq	112(%rbx), %rax
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rax
	jnb	.L255
	movq	(%rcx,%rax,8), %rdi
	call	TTF_SetFontStyle@PLT
	jmp	.L241
.L255:
	movq	%rax, %rsi
.L256:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L260:
	leaq	.LC23(%rip), %rdi
	movzwl	%bp, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L259:
	leaq	.LC22(%rip), %rdi
	movzwl	%bp, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt, .-_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetStringEv:
.LFB8171:
	.cfi_startproc
	addq	$96, %rdi
	jmp	_ZN3neo6stringclEv@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, .-_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.actors[].texts[].SetString(): String must not be NULL\nParams: String: %p\n"
	.align 8
.LC25:
	.string	"wze::engine.actors[].texts[].SetString(): TTF_RenderUTF8_Blended failed\nParams: String: %s\n"
	.align 8
.LC26:
	.string	"wze::engine.actors[].texts[].SetString(): SDL_CreateTextureFromSurface failed\nParams: String: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.type	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, @function
_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc:
.LFB8172:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L282
	leaq	96(%rdi), %r12
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%r12, %rdi
	call	_ZN3neo6stringneEPKc@PLT
	testb	%al, %al
	je	.L264
	cmpq	$0, 112(%rbx)
	jne	.L283
.L264:
	xorl	%edx, %edx
	movq	128(%rbx), %rdi
	movw	%dx, 64(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 128(%rbx)
.L267:
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rsp, %rsi
	movq	%rbp, (%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L284
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L283:
	.cfi_restore_state
	cmpq	$0, 72(%rbx)
	je	.L264
	movq	%rbp, %rdi
	call	_ZN3neo6string13LiteralLengthEPKc@PLT
	cmpq	$1, %rax
	jbe	.L264
	movq	(%rbx), %rax
	movl	120(%rbx), %edx
	movq	112(%rbx), %rsi
	movq	368(%rax), %rcx
	testl	%edx, %edx
	jne	.L285
.L266:
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L281
	movq	(%rdx,%rsi,8), %rdi
	movl	$-1, %edx
	movq	%rbp, %rsi
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L286
	movq	(%rbx), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	je	.L287
	movq	72(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r13), %xmm0
	testq	%rax, %rax
	js	.L272
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L273:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r13), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r13, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 64(%rbx)
	call	SDL_FreeSurface@PLT
	movl	120(%rbx), %eax
	testl	%eax, %eax
	je	.L267
	movq	(%rbx), %rax
	movq	112(%rbx), %rsi
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L281
	movq	(%rdx,%rsi,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L272:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L285:
	movq	376(%rax), %rax
	cmpq	%rcx, %rsi
	jnb	.L281
	movq	(%rax,%rsi,8), %rdi
	movl	%edx, %esi
	call	TTF_SetFontStyle@PLT
	movq	(%rbx), %rax
	movq	112(%rbx), %rsi
	jmp	.L266
.L282:
	leaq	.LC24(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L284:
	call	__stack_chk_fail@PLT
.L281:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L287:
	leaq	.LC26(%rip), %rdi
	movq	%rbp, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L286:
	leaq	.LC25(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, .-_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv:
.LFB8173:
	.cfi_startproc
	movq	112(%rdi), %rax
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv, .-_ZN3wze6engine6actors5actor5texts4text9GetFontIDEv
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.actors[].texts[].SetFontID(): Font does not exist\nParams: FontID: %lld\n"
	.align 8
.LC28:
	.string	"wze::engine.actors[].texts[].SetFontID(): TTF_RenderUTF8_Blended failed\nParams: FontID: %lld\n"
	.align 8
.LC29:
	.string	"wze::engine.actors[].texts[].SetFontID(): SDL_CreateTextureFromSurface failed\nParams: FontID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy
	.type	_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy, @function
_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy:
.LFB8174:
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
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.L294
	movq	(%rdi), %rax
	cmpq	368(%rax), %rsi
	jnb	.L292
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L292
	cmpq	112(%rdi), %rsi
	je	.L294
	cmpq	$0, 72(%rdi)
	jne	.L306
.L294:
	xorl	%edx, %edx
	movq	128(%rbx), %rdi
	movw	%dx, 64(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 128(%rbx)
.L291:
	movq	%rbp, 112(%rbx)
	movq	%rbp, %rax
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
.L306:
	.cfi_restore_state
	leaq	96(%rdi), %r12
	movq	%r12, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L294
	movl	120(%rbx), %esi
	testl	%esi, %esi
	jne	.L307
.L295:
	movq	%r12, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rbp
	jnb	.L297
	movq	(%rdx,%rbp,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L308
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	je	.L309
	movq	72(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r12), %xmm0
	testq	%rax, %rax
	js	.L300
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L301:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r12), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r12, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 64(%rbx)
	call	SDL_FreeSurface@PLT
	movl	120(%rbx), %eax
	testl	%eax, %eax
	je	.L291
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rbp
	jnb	.L297
	movq	(%rdx,%rbp,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L300:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L301
.L292:
	leaq	.LC27(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L307:
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rbp
	jnb	.L297
	movq	(%rdx,%rbp,8), %rdi
	call	TTF_SetFontStyle@PLT
	jmp	.L295
.L297:
	leaq	.LC4(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L309:
	leaq	.LC29(%rip), %rdi
	movq	%rbp, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L308:
	leaq	.LC28(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy, .-_ZN3wze6engine6actors5actor5texts4text9SetFontIDEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv
	.type	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv, @function
_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv:
.LFB8175:
	.cfi_startproc
	movl	120(%rdi), %eax
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv, .-_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\nParams: FontStyle: %d\n"
	.align 8
.LC31:
	.string	"wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\nParams: FontStyle: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
	.type	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE, @function
_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE:
.LFB8176:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	cmpl	%esi, 120(%rdi)
	je	.L312
	cmpq	$0, 112(%rdi)
	jne	.L328
.L312:
	xorl	%eax, %eax
	movq	128(%rbx), %rdi
	movw	%ax, 64(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 128(%rbx)
.L315:
	movl	%ebp, 120(%rbx)
	movl	%ebp, %eax
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
.L328:
	.cfi_restore_state
	cmpq	$0, 72(%rdi)
	je	.L312
	leaq	96(%rdi), %r12
	movq	%r12, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L312
	testl	%ebp, %ebp
	jne	.L329
.L314:
	movq	%r12, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	112(%rbx), %rax
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rax
	jnb	.L330
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L331
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 128(%rbx)
	testq	%rax, %rax
	je	.L332
	movq	72(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r12), %xmm0
	testq	%rax, %rax
	js	.L320
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L321:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r12), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r12, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 64(%rbx)
	call	SDL_FreeSurface@PLT
	testl	%ebp, %ebp
	je	.L315
	movq	(%rbx), %rax
	movq	112(%rbx), %rsi
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L327
	movq	(%rdx,%rsi,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L315
	.p2align 4,,10
	.p2align 3
.L320:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L329:
	movq	(%rbx), %rax
	movq	112(%rbx), %rsi
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L327
	movq	(%rdx,%rsi,8), %rdi
	movl	%ebp, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L314
.L330:
	movq	%rax, %rsi
.L327:
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L332:
	leaq	.LC31(%rip), %rdi
	movl	%ebp, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L331:
	leaq	.LC30(%rip), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE, .-_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
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
