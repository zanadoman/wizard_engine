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
.LFB8353:
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
.LFE8353:
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
.LFB8145:
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
	call	_ZN3neo9memCopyToEPKvPvy@PLT
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
.LFE8145:
	.size	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_,_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsD2Ev
	.type	_ZN3wze6engine6actors5actor5textsD2Ev, @function
_ZN3wze6engine6actors5actor5textsD2Ev:
.LFB8148:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8148
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
	movq	112(%rbp), %rdi
	addq	$1, %rbx
	call	SDL_DestroyTexture@PLT
	leaq	88(%rbp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%rbp, %rdi
	movl	$120, %esi
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
.LFE8148:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8148:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8148-.LLSDACSB8148
.LLSDACSB8148:
.LLSDACSE8148:
	.text
	.size	_ZN3wze6engine6actors5actor5textsD2Ev, .-_ZN3wze6engine6actors5actor5textsD2Ev
	.globl	_ZN3wze6engine6actors5actor5textsD1Ev
	.set	_ZN3wze6engine6actors5actor5textsD1Ev,_ZN3wze6engine6actors5actor5textsD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n"
	.align 8
.LC5:
	.string	"wze::engine.actors[].texts.Delete(): Text does not exist\nParams: ID: %lld\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts6DeleteEy
	.type	_ZN3wze6engine6actors5actor5texts6DeleteEy, @function
_ZN3wze6engine6actors5actor5texts6DeleteEy:
.LFB8151:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8151
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
	je	.L55
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L44
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L44
	movq	112(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$120, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L56
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L57
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
.L57:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L54
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L58
	cmpq	$1, %rsi
	jne	.L51
.L50:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
.LEHB0:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
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
.L58:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L50
.L56:
	movq	%rbx, %rsi
.L54:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L55:
	leaq	.LC4(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8151:
	.section	.gcc_except_table
.LLSDA8151:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8151-.LLSDACSB8151
.LLSDACSB8151:
	.uleb128 .LEHB0-.LFB8151
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE8151:
	.text
	.size	_ZN3wze6engine6actors5actor5texts6DeleteEy, .-_ZN3wze6engine6actors5actor5texts6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE:
.LFB8152:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8152
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L60
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L61
	cmpq	%rcx, %rdx
	jnb	.L62
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.L62
.L61:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L63
.L60:
	cmpq	$1, %rcx
	jbe	.L64
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L65:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L67
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L98:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L68
.L67:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L98
	cmpq	%rax, %rbx
	je	.L68
.L69:
	addq	$1, %rbp
	cmpq	%rcx, %rbp
	jb	.L65
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L99
.L95:
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
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %r14
	leaq	0(,%rbp,8), %r15
	testq	%r14, %r14
	je	.L70
	movq	112(%r14), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%r14), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$120, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rcx
	movq	24(%r13), %rdx
.L70:
	cmpq	%rcx, %rbp
	jnb	.L100
	movq	$0, (%rdx,%r15)
	jmp	.L69
.L99:
	movq	%rcx, %rax
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L78:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L97
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L101
	movq	%rsi, %rax
.L73:
	cmpq	$1, %rax
	jne	.L78
.L77:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
.LEHB1:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	jmp	.L95
.L64:
	testq	%rcx, %rcx
	jne	.L95
	orq	$-1, %rsi
.L97:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L101:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L77
.L62:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
.L100:
	movq	%rbp, %rsi
	jmp	.L97
	.cfi_endproc
.LFE8152:
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB1-.LFB8152
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8152:
	.text
	.size	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep: %p\n"
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rdx
	movq	16(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L103
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L104:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L103
.L106:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L104
	cmpq	%rdi, %rcx
	jnb	.L105
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L104
.L105:
	leaq	.LC8(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
.LEHB2:
	call	printf@PLT
.LEHE2:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L103:
	cmpq	$1, %rdi
	jbe	.L107
	movq	24(%r12), %rsi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L111
	.p2align 4,,10
	.p2align 3
.L116:
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L111
.L110:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L140
	cmpq	%rax, %rdx
	je	.L111
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L115
.L142:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L116
	.p2align 4,,10
	.p2align 3
.L111:
	movq	(%rsi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L113
	movq	112(%r13), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%r13), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$120, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L113:
	cmpq	%rdi, %rbx
	jnb	.L141
	addq	$1, %rbx
	movq	$0, (%rsi,%r14)
	cmpq	%rdi, %rbx
	jb	.L142
.L115:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L143
.L137:
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
.L143:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L122:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L144
	cmpq	$0, (%rsi,%rax,8)
	jne	.L145
	movq	%rax, %rcx
.L117:
	cmpq	$1, %rcx
	jne	.L122
.L121:
	leaq	16(%r12), %rdi
	movq	%rcx, %rsi
.LEHB3:
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
.L107:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L137
	orq	$-1, %rsi
.L139:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE3:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L145:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L121
.L144:
	movq	%rax, %rsi
	jmp	.L139
.L141:
	movq	%rbx, %rsi
	jmp	.L139
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
	.uleb128 .LEHB3-.LFB8155
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE8155:
	.text
	.size	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n"
	.align 8
.LC10:
	.string	"wze::engine.actors[].texts[]: Text does not exist\nParams: ID: %lld\n"
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
	je	.L151
	cmpq	16(%rdi), %rsi
	jnb	.L148
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L148
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L148:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L151:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor5textsixEy, .-_ZN3wze6engine6actors5actor5textsixEy
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].texts[].text(): TTF_RenderText_Blended failed\nParams: String: %s\n"
	.align 8
.LC15:
	.string	"wze::engine.actors[].texts[].text(): SDL_CreateTextureFromSurface failed\nParams: String: %s\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.type	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy, @function
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy:
.LFB8158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8158
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	88(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%r13, %rdi
.LEHB4:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE4:
	movl	$384, %eax
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movw	%ax, 36(%rbx)
	movq	8(%rbx), %rax
	movq	%rsp, %rsi
	movq	%r13, %rdi
	movl	$-1, 16(%rbx)
	movq	$0x000000000, 24(%rbx)
	movupd	208(%rax), %xmm2
	movzwl	242(%rax), %eax
	movw	%dx, 56(%rbx)
	movl	$1, %edx
	movl	$16842752, 32(%rbx)
	movq	%rax, 64(%rbx)
	movups	%xmm2, 40(%rbx)
	movups	%xmm0, 72(%rbx)
	movq	%rbp, (%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	cmpq	$0, 64(%rbx)
	movq	%r12, 104(%rbx)
	movq	$0, 112(%rbx)
	jne	.L166
.L152:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L167
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
.L166:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L152
	cmpq	$0, 104(%rbx)
	je	.L152
	movq	%r13, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	104(%rbx), %rax
	movq	744(%rdx), %rcx
	cmpq	736(%rdx), %rax
	jnb	.L168
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L169
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L170
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r12), %xmm0
	testq	%rax, %rax
	js	.L159
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L160:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r12), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r12, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L159:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L160
.L167:
	call	__stack_chk_fail@PLT
.L170:
	movq	%rbp, %rsi
	leaq	.LC15(%rip), %rdi
	call	printf@PLT
.L157:
	movl	$1, %edi
	call	exit@PLT
.L169:
	movq	%rbp, %rsi
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L157
.L168:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE5:
	jmp	.L157
.L164:
	movq	%rax, %rbx
	jmp	.L161
	.section	.gcc_except_table
.LLSDA8158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8158-.LLSDACSB8158
.LLSDACSB8158:
	.uleb128 .LEHB4-.LFB8158
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8158
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L164-.LFB8158
	.uleb128 0
.LLSDACSE8158:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8158
	.type	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold, @function
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold:
.LFSB8158:
.L161:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r13, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L171
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L171:
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
	.uleb128 .LEHB6-.LCOLDB17
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8158:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy, .-_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold, .-_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold
.LCOLDE17:
	.text
.LHOTE17:
	.globl	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
	.set	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy,_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.actors[].texts.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n"
	.align 8
.LC19:
	.string	"wze::engine.actors[].texts.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n"
	.align 8
.LC20:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC21:
	.string	"wze::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n"
	.section	.text.unlikely
	.align 2
.LCOLDB22:
	.text
.LHOTB22:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.type	_ZN3wze6engine6actors5actor5texts3NewEPKcy, @function
_ZN3wze6engine6actors5actor5texts3NewEPKcy:
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
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
	je	.L198
	movq	%rdi, %rbp
	movq	%rsi, %r13
	testq	%rdx, %rdx
	jne	.L174
.L178:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L176
	movq	24(%rbp), %rcx
	movl	$1, %ebx
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L179:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L176
.L182:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L179
	movl	$120, %edi
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB8:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
.LEHE8:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L199
	movq	%r14, (%rax,%rbx,8)
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L176:
	movl	$120, %edi
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB10:
	call	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
.LEHE10:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L200
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB11:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L201
	cmpq	$0, (%rdx,%rax,8)
	je	.L202
.L172:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L203
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rbx, %rax
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
.L174:
	.cfi_restore_state
	movq	(%rdi), %rax
	cmpq	736(%rax), %rdx
	jnb	.L177
	movq	744(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	jne	.L178
.L177:
	leaq	.LC19(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L199:
	movq	%rbx, %rsi
.L196:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L203:
	call	__stack_chk_fail@PLT
.L202:
	leaq	.LC21(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L198:
	leaq	.LC18(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L201:
	orq	$-1, %rsi
	jmp	.L196
.L200:
	leaq	.LC20(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE11:
	movl	$1, %edi
	call	exit@PLT
.L192:
	movq	%rax, %rbx
	jmp	.L187
.L193:
	movq	%rax, %rbp
	jmp	.L189
	.section	.gcc_except_table
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
	.uleb128 .LEHB7-.LFB8150
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB8150
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L192-.LFB8150
	.uleb128 0
	.uleb128 .LEHB9-.LFB8150
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8150
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L193-.LFB8150
	.uleb128 0
	.uleb128 .LEHB11-.LFB8150
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE8150:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8150
	.type	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold, @function
_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold:
.LFSB8150:
.L187:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$120, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L197
	movq	%rbx, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.L189:
	movl	$120, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L197
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE12:
.L197:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
.LLSDAC8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8150-.LLSDACSBC8150
.LLSDACSBC8150:
	.uleb128 .LEHB12-.LCOLDB22
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC8150:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor5texts3NewEPKcy, .-_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold, .-_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold
.LCOLDE22:
	.text
.LHOTE22:
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
	movq	112(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%rbx), %rdi
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
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetXEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetXEv:
.LFB8163:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor5texts4text4GetXEv, .-_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"wze::engine.actors[].texts[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.type	_ZN3wze6engine6actors5actor5texts4text4SetXEd, @function
_ZN3wze6engine6actors5actor5texts4text4SetXEd:
.LFB8164:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L225
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L210
	jne	.L210
	ucomisd	%xmm3, %xmm1
	jp	.L210
	jne	.L210
	movq	$0x000000000, 72(%rdi)
.L218:
	pxor	%xmm0, %xmm0
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L210:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	48(%rbx), %xmm3
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	movsd	%xmm4, 72(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L214
	jne	.L214
	ucomisd	%xmm3, %xmm1
	jp	.L214
	je	.L218
.L214:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L217:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L225:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetXEd, .-_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetYEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetYEv:
.LFB8165:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor5texts4text4GetYEv, .-_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"wze::engine.actors[].texts[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.type	_ZN3wze6engine6actors5actor5texts4text4SetYEd, @function
_ZN3wze6engine6actors5actor5texts4text4SetYEd:
.LFB8166:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L245
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L230
	jne	.L230
	ucomisd	%xmm1, %xmm3
	jp	.L230
	jne	.L230
	movq	$0x000000000, 72(%rdi)
.L238:
	pxor	%xmm0, %xmm0
	jmp	.L237
	.p2align 4,,10
	.p2align 3
.L230:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	208(%rax), %xmm0
	movsd	216(%rax), %xmm1
	movsd	%xmm4, 72(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L234
	jne	.L234
	ucomisd	%xmm1, %xmm3
	jp	.L234
	je	.L238
.L234:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L237:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L245:
	.cfi_restore_state
	leaq	.LC24(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetYEd, .-_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	.type	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv, @function
_ZN3wze6engine6actors5actor5texts4text8GetWidthEv:
.LFB8167:
	.cfi_startproc
	movzwl	56(%rdi), %eax
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv, .-_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetHeightEv:
.LFB8168:
	.cfi_startproc
	movzwl	64(%rdi), %eax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv, .-_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"wze::engine.actors[].texts[].SetHeight(): TTF_RenderText_Blended failed\nParams: Height: %d\n"
	.align 8
.LC26:
	.string	"wze::engine.actors[].texts[].SetHeight(): SDL_CreateTextureFromSurface failed\nParams: Height: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.type	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt, @function
_ZN3wze6engine6actors5actor5texts4text9SetHeightEt:
.LFB8169:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	xorl	%eax, %eax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movw	%ax, 56(%rdi)
	movq	112(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	movq	$0, 112(%rbp)
	testw	%bx, %bx
	jne	.L256
.L250:
	movzwl	%bx, %ebx
	movl	%r12d, %eax
	movq	%rbx, 64(%rbp)
	addq	$8, %rsp
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
.L256:
	.cfi_restore_state
	leaq	88(%rbp), %r13
	movq	%r13, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L250
	cmpq	$0, 104(%rbp)
	je	.L250
	movq	%r13, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	0(%rbp), %rdx
	movq	%rax, %rsi
	movq	104(%rbp), %rax
	movq	744(%rdx), %rcx
	cmpq	736(%rdx), %rax
	jnb	.L257
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L258
	movq	0(%rbp), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 112(%rbp)
	testq	%rax, %rax
	je	.L259
	movzwl	%bx, %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	16(%r13), %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r13), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r13, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbp)
	call	SDL_FreeSurface@PLT
	jmp	.L250
.L257:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L259:
	leaq	.LC26(%rip), %rdi
	movzwl	%bx, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L258:
	leaq	.LC25(%rip), %rdi
	movzwl	%bx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt, .-_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetStringEv:
.LFB8170:
	.cfi_startproc
	addq	$88, %rdi
	jmp	_ZN3neo6stringclEv@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, .-_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.actors[].texts[].SetString(): String must not be NULL\nParams: String: %p\n"
	.align 8
.LC28:
	.string	"wze::engine.actors[].texts[].SetString(): TTF_RenderText_Blended failed\nParams: String: %s\n"
	.align 8
.LC29:
	.string	"wze::engine.actors[].texts[].SetString(): SDL_CreateTextureFromSurface failed\nParams: String: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.type	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, @function
_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L274
	leaq	88(%rdi), %r12
	movq	%rdi, %rbx
	movq	%rsi, (%rsp)
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rsi, %rbp
	movq	%rsp, %rsi
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	xorl	%eax, %eax
	movq	112(%rbx), %rdi
	movw	%ax, 56(%rbx)
	call	SDL_DestroyTexture@PLT
	cmpq	$0, 64(%rbx)
	movq	$0, 112(%rbx)
	je	.L264
	movq	%r12, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L264
	cmpq	$0, 104(%rbx)
	jne	.L275
	.p2align 4,,10
	.p2align 3
.L264:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L276
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringclEv@PLT
	.p2align 4,,10
	.p2align 3
.L275:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	104(%rbx), %rax
	movq	744(%rdx), %rcx
	cmpq	736(%rdx), %rax
	jnb	.L277
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L278
	movq	(%rbx), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L279
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r13), %xmm0
	testq	%rax, %rax
	js	.L269
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L270:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r13), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r13, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L269:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L270
.L274:
	leaq	.LC27(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L276:
	call	__stack_chk_fail@PLT
.L279:
	leaq	.LC29(%rip), %rdi
	movq	%rbp, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L278:
	leaq	.LC28(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L277:
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, .-_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.type	_ZN3wze6engine6actors5actor5texts4text7GetFontEv, @function
_ZN3wze6engine6actors5actor5texts4text7GetFontEv:
.LFB8172:
	.cfi_startproc
	movq	104(%rdi), %rax
	ret
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor5texts4text7GetFontEv, .-_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.actors[].texts[].SetFont(): Font does not exist\nParams: ID: %lld\n"
	.align 8
.LC31:
	.string	"wze::engine.actors[].texts[].SetFont(): TTF_RenderText_Blended failed\nParams: ID: %lld\n"
	.align 8
.LC32:
	.string	"wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7SetFontEy
	.type	_ZN3wze6engine6actors5actor5texts4text7SetFontEy, @function
_ZN3wze6engine6actors5actor5texts4text7SetFontEy:
.LFB8173:
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
	je	.L282
	movq	(%rdi), %rax
	cmpq	736(%rax), %rsi
	jnb	.L283
	movq	744(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L283
.L282:
	xorl	%eax, %eax
	movq	112(%rbx), %rdi
	movw	%ax, 56(%rbx)
	call	SDL_DestroyTexture@PLT
	cmpq	$0, 64(%rbx)
	movq	$0, 112(%rbx)
	jne	.L302
.L285:
	movq	%rbp, 104(%rbx)
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
.L302:
	.cfi_restore_state
	leaq	88(%rbx), %r12
	movq	%r12, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L285
	testq	%rbp, %rbp
	je	.L285
	movq	%r12, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	744(%rax), %rdx
	cmpq	736(%rax), %rbp
	jnb	.L303
	movq	(%rdx,%rbp,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderText_Blended@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L304
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.L305
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r12), %xmm0
	testq	%rax, %rax
	js	.L290
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L291:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r12), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r12, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L290:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L291
.L283:
	leaq	.LC30(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L303:
	leaq	.LC6(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L305:
	leaq	.LC32(%rip), %rdi
	movq	%rbp, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L304:
	leaq	.LC31(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor5texts4text7SetFontEy, .-_ZN3wze6engine6actors5actor5texts4text7SetFontEy
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
