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
.LFB8359:
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
.LFE8359:
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
	movq	120(%rbp), %rdi
	addq	$1, %rbx
	call	SDL_DestroyTexture@PLT
	leaq	88(%rbp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%rbp, %rdi
	movl	$128, %esi
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
.LFB8153:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8153
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
	movq	120(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$128, %esi
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
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
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
	testq	%rbp, %rbp
	je	.L60
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%r12,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L61
	cmpq	%rdx, %rcx
	jnb	.L62
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.L62
.L61:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L63
.L60:
	cmpq	$1, %rdx
	jbe	.L64
	movq	24(%r13), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L65:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L66
.L72:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L67
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L72
.L66:
	movq	(%rcx,%rbx,8), %r14
	leaq	0(,%rbx,8), %r15
	testq	%r14, %r14
	je	.L69
	movq	120(%r14), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%r14), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$128, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rdx
	movq	24(%r13), %rcx
.L69:
	cmpq	%rdx, %rbx
	jnb	.L98
	movq	$0, (%rcx,%r15)
.L67:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L65
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
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
.L99:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L78:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L97
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L100
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
	testq	%rdx, %rdx
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
.L100:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L77
.L62:
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
.L98:
	movq	%rbx, %rsi
	jmp	.L97
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
.LC8:
	.string	"wze::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE:
.LFB8157:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8157
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
	movq	(%rsi), %rcx
	movq	16(%rdi), %rdi
	testq	%rcx, %rcx
	je	.L102
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L103:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L102
.L105:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L103
	cmpq	%rdi, %rdx
	jnb	.L104
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L103
.L104:
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
.L102:
	cmpq	$1, %rdi
	jbe	.L106
	movq	24(%r12), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L114:
	movq	8(%rbp), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L107
.L108:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L109
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L108
	.p2align 4,,10
	.p2align 3
.L107:
	movq	(%rsi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L111
	movq	120(%r13), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%r13), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$128, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L111:
	cmpq	%rdi, %rbx
	jnb	.L141
	movq	$0, (%rsi,%r14)
.L109:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L113
	movq	0(%rbp), %rcx
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L113:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L142
.L138:
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
.L142:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L120:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L143
	cmpq	$0, (%rsi,%rax,8)
	jne	.L144
	movq	%rax, %rcx
.L115:
	cmpq	$1, %rcx
	jne	.L120
.L119:
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
.L106:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L138
	orq	$-1, %rsi
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L144:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L119
.L141:
	movq	%rbx, %rsi
.L140:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE3:
	movl	$1, %edi
	call	exit@PLT
.L143:
	movq	%rax, %rsi
	jmp	.L140
	.cfi_endproc
.LFE8157:
	.section	.gcc_except_table
.LLSDA8157:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8157-.LLSDACSB8157
.LLSDACSB8157:
	.uleb128 .LEHB2-.LFB8157
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8157
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE8157:
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
.LFB8158:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L150
	cmpq	16(%rdi), %rsi
	jnb	.L147
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L147
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L147:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L150:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor5textsixEy, .-_ZN3wze6engine6actors5actor5textsixEy
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].texts[].text(): TTF_RenderUTF8_Blended failed\nParams: String: %s\n"
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
.LFB8160:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8160
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	88(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%r8, %rbp
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
	movupd	216(%rax), %xmm2
	movzwl	250(%rax), %eax
	movw	%dx, 56(%rbx)
	movl	$1, %edx
	movl	$16842752, 32(%rbx)
	movq	%rax, 64(%rbx)
	movups	%xmm2, 40(%rbx)
	movups	%xmm0, 72(%rbx)
	movq	%r12, (%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	cmpq	$0, 64(%rbx)
	movq	%rbp, 104(%rbx)
	movl	$0, 112(%rbx)
	movq	$0, 120(%rbx)
	je	.L151
	testq	%rbp, %rbp
	jne	.L169
.L151:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L170
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
.L169:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L151
	movq	%r13, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	104(%rbx), %rax
	movq	480(%rdx), %rcx
	cmpq	472(%rdx), %rax
	jnb	.L171
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L172
	movq	(%rbx), %rax
	movq	%rbp, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L173
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%rbp), %xmm0
	testq	%rax, %rax
	js	.L159
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L160:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%rbp, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	jmp	.L151
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
.L170:
	call	__stack_chk_fail@PLT
.L173:
	movq	%r12, %rsi
	leaq	.LC15(%rip), %rdi
	call	printf@PLT
.L157:
	movl	$1, %edi
	call	exit@PLT
.L172:
	movq	%r12, %rsi
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	jmp	.L157
.L171:
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
.LLSDA8160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8160-.LLSDACSB8160
.LLSDACSB8160:
	.uleb128 .LEHB4-.LFB8160
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8160
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L164-.LFB8160
	.uleb128 0
.LLSDACSE8160:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8160
	.type	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold, @function
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold:
.LFSB8160:
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
	jne	.L174
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L174:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8160:
	.section	.gcc_except_table
.LLSDAC8160:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8160-.LLSDACSBC8160
.LLSDACSBC8160:
	.uleb128 .LEHB6-.LCOLDB17
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8160:
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
	je	.L201
	movq	%rdi, %rbp
	movq	%rsi, %r13
	testq	%rdx, %rdx
	jne	.L177
.L181:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L179
	movq	24(%rbp), %rcx
	movl	$1, %ebx
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L182:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L179
.L185:
	cmpq	$0, (%rcx,%rbx,8)
	jne	.L182
	movl	$128, %edi
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
	jnb	.L202
	movq	%r14, (%rax,%rbx,8)
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L179:
	movl	$128, %edi
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
	je	.L203
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
	jnc	.L204
	cmpq	$0, (%rdx,%rax,8)
	je	.L205
.L175:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L206
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
.L177:
	.cfi_restore_state
	movq	(%rdi), %rax
	cmpq	472(%rax), %rdx
	jnb	.L180
	movq	480(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	jne	.L181
.L180:
	leaq	.LC19(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L202:
	movq	%rbx, %rsi
.L199:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L206:
	call	__stack_chk_fail@PLT
.L205:
	leaq	.LC21(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L201:
	leaq	.LC18(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L204:
	orq	$-1, %rsi
	jmp	.L199
.L203:
	leaq	.LC20(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE11:
	movl	$1, %edi
	call	exit@PLT
.L195:
	movq	%rax, %rbx
	jmp	.L190
.L196:
	movq	%rax, %rbp
	jmp	.L192
	.section	.gcc_except_table
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB7-.LFB8152
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB8152
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L195-.LFB8152
	.uleb128 0
	.uleb128 .LEHB9-.LFB8152
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB8152
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L196-.LFB8152
	.uleb128 0
	.uleb128 .LEHB11-.LFB8152
	.uleb128 .LEHE11-.LEHB11
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
.L190:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$128, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L200
	movq	%rbx, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.L192:
	movl	$128, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L200
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE12:
.L200:
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
	.uleb128 .LEHB12-.LCOLDB22
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
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
.LFB8163:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8163
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	120(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	88(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringD1Ev@PLT
	.cfi_endproc
.LFE8163:
	.section	.gcc_except_table
.LLSDA8163:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8163-.LLSDACSB8163
.LLSDACSB8163:
.LLSDACSE8163:
	.text
	.size	_ZN3wze6engine6actors5actor5texts4textD2Ev, .-_ZN3wze6engine6actors5actor5texts4textD2Ev
	.globl	_ZN3wze6engine6actors5actor5texts4textD1Ev
	.set	_ZN3wze6engine6actors5actor5texts4textD1Ev,_ZN3wze6engine6actors5actor5texts4textD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetXEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetXEv:
.LFB8165:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8165:
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
.LFB8166:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L228
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L213
	jne	.L213
	ucomisd	%xmm3, %xmm1
	jp	.L213
	jne	.L213
	movq	$0x000000000, 72(%rdi)
.L221:
	pxor	%xmm0, %xmm0
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L213:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	48(%rbx), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 72(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L217
	jne	.L217
	ucomisd	%xmm3, %xmm1
	jp	.L217
	je	.L221
.L217:
	movq	(%rbx), %rax
	movsd	%xmm2, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L220:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L228:
	.cfi_restore_state
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetXEd, .-_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetYEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetYEv:
.LFB8167:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8167:
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
.LFB8168:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L248
	movq	8(%rdi), %rax
	movsd	40(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L233
	jne	.L233
	ucomisd	%xmm1, %xmm3
	jp	.L233
	jne	.L233
	movq	$0x000000000, 72(%rdi)
.L241:
	pxor	%xmm0, %xmm0
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L233:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	40(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	216(%rax), %xmm0
	movsd	224(%rax), %xmm1
	movsd	%xmm4, 72(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L237
	jne	.L237
	ucomisd	%xmm1, %xmm3
	jp	.L237
	je	.L241
.L237:
	movq	(%rbx), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	400(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L240:
	movsd	%xmm0, 80(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L248:
	.cfi_restore_state
	leaq	.LC24(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetYEd, .-_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	.type	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv, @function
_ZN3wze6engine6actors5actor5texts4text8GetWidthEv:
.LFB8169:
	.cfi_startproc
	movzwl	56(%rdi), %eax
	ret
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor5texts4text8GetWidthEv, .-_ZN3wze6engine6actors5actor5texts4text8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetHeightEv:
.LFB8170:
	.cfi_startproc
	movzwl	64(%rdi), %eax
	ret
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetHeightEv, .-_ZN3wze6engine6actors5actor5texts4text9GetHeightEv
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"wze::engine.actors[].texts[].SetHeight(): TTF_RenderUTF8_Blended failed\nParams: Height: %d\n"
	.align 8
.LC26:
	.string	"wze::engine.actors[].texts[].SetHeight(): SDL_CreateTextureFromSurface failed\nParams: Height: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.type	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt, @function
_ZN3wze6engine6actors5actor5texts4text9SetHeightEt:
.LFB8171:
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
	cmpq	%r12, 64(%rdi)
	je	.L252
	cmpq	$0, 104(%rdi)
	je	.L252
	movl	%esi, %ebp
	testw	%si, %si
	jne	.L270
.L252:
	xorl	%edx, %edx
	movq	120(%rbx), %rdi
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 120(%rbx)
.L255:
	movq	%r12, 64(%rbx)
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
.L270:
	.cfi_restore_state
	leaq	88(%rdi), %r14
	movq	%r14, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L252
	movl	112(%rbx), %esi
	testl	%esi, %esi
	jne	.L271
.L254:
	movq	%r14, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	104(%rbx), %rax
	movq	480(%rdx), %rcx
	cmpq	472(%rdx), %rax
	jnb	.L268
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	je	.L272
	movq	(%rbx), %rax
	movq	%r14, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L273
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
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L255
	movq	(%rbx), %rax
	movq	104(%rbx), %rsi
	movq	480(%rax), %rdx
	cmpq	472(%rax), %rsi
	jnb	.L269
	movq	(%rdx,%rsi,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L255
	.p2align 4,,10
	.p2align 3
.L271:
	movq	(%rbx), %rdx
	movq	104(%rbx), %rax
	movq	480(%rdx), %rcx
	cmpq	472(%rdx), %rax
	jnb	.L268
	movq	(%rcx,%rax,8), %rdi
	call	TTF_SetFontStyle@PLT
	jmp	.L254
.L268:
	movq	%rax, %rsi
.L269:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L273:
	leaq	.LC26(%rip), %rdi
	movzwl	%bp, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L272:
	leaq	.LC25(%rip), %rdi
	movzwl	%bp, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetHeightEt, .-_ZN3wze6engine6actors5actor5texts4text9SetHeightEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetStringEv:
.LFB8172:
	.cfi_startproc
	addq	$88, %rdi
	jmp	_ZN3neo6stringclEv@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, .-_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.actors[].texts[].SetString(): String must not be NULL\nParams: String: %p\n"
	.align 8
.LC28:
	.string	"wze::engine.actors[].texts[].SetString(): TTF_RenderUTF8_Blended failed\nParams: String: %s\n"
	.align 8
.LC29:
	.string	"wze::engine.actors[].texts[].SetString(): SDL_CreateTextureFromSurface failed\nParams: String: %s\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.type	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, @function
_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc:
.LFB8173:
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
	je	.L295
	leaq	88(%rdi), %r12
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movq	%r12, %rdi
	call	_ZN3neo6stringneEPKc@PLT
	testb	%al, %al
	je	.L277
	cmpq	$0, 104(%rbx)
	jne	.L296
.L277:
	xorl	%edx, %edx
	movq	120(%rbx), %rdi
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 120(%rbx)
.L280:
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rsp, %rsi
	movq	%rbp, (%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	%rax, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L297
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
.L296:
	.cfi_restore_state
	cmpq	$0, 64(%rbx)
	je	.L277
	movq	%rbp, %rdi
	call	_ZN3neo9strLengthEPKc@PLT
	cmpq	$1, %rax
	jbe	.L277
	movl	112(%rbx), %esi
	testl	%esi, %esi
	jne	.L298
.L279:
	movq	%r12, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	104(%rbx), %rax
	movq	480(%rdx), %rcx
	cmpq	472(%rdx), %rax
	jnb	.L293
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.L299
	movq	(%rbx), %rax
	movq	%r13, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L300
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r13), %xmm0
	testq	%rax, %rax
	js	.L285
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L286:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r13), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r13, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L280
	movq	(%rbx), %rax
	movq	104(%rbx), %rsi
	movq	480(%rax), %rdx
	cmpq	472(%rax), %rsi
	jnb	.L294
	movq	(%rdx,%rsi,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L285:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L298:
	movq	(%rbx), %rdx
	movq	104(%rbx), %rax
	movq	480(%rdx), %rcx
	cmpq	472(%rdx), %rax
	jnb	.L293
	movq	(%rcx,%rax,8), %rdi
	call	TTF_SetFontStyle@PLT
	jmp	.L279
.L295:
	leaq	.LC27(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L297:
	call	__stack_chk_fail@PLT
.L300:
	leaq	.LC29(%rip), %rdi
	movq	%rbp, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L299:
	leaq	.LC28(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L293:
	movq	%rax, %rsi
.L294:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, .-_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.type	_ZN3wze6engine6actors5actor5texts4text7GetFontEv, @function
_ZN3wze6engine6actors5actor5texts4text7GetFontEv:
.LFB8174:
	.cfi_startproc
	movq	104(%rdi), %rax
	ret
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine6actors5actor5texts4text7GetFontEv, .-_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.section	.rodata.str1.8
	.align 8
.LC30:
	.string	"wze::engine.actors[].texts[].SetFont(): Font does not exist\nParams: ID: %lld\n"
	.align 8
.LC31:
	.string	"wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\nParams: ID: %lld\n"
	.align 8
.LC32:
	.string	"wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7SetFontEy
	.type	_ZN3wze6engine6actors5actor5texts4text7SetFontEy, @function
_ZN3wze6engine6actors5actor5texts4text7SetFontEy:
.LFB8175:
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
	je	.L307
	movq	(%rdi), %rax
	cmpq	472(%rax), %rsi
	jnb	.L305
	movq	480(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L305
	cmpq	104(%rdi), %rsi
	je	.L307
	cmpq	$0, 64(%rdi)
	jne	.L319
.L307:
	xorl	%edx, %edx
	movq	120(%rbx), %rdi
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 120(%rbx)
.L304:
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
.L319:
	.cfi_restore_state
	leaq	88(%rdi), %r12
	movq	%r12, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L307
	movl	112(%rbx), %esi
	testl	%esi, %esi
	jne	.L320
.L308:
	movq	%r12, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	%rax, %rsi
	movq	(%rbx), %rax
	movq	480(%rax), %rdx
	cmpq	472(%rax), %rbp
	jnb	.L310
	movq	(%rdx,%rbp,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L321
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L322
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r12), %xmm0
	testq	%rax, %rax
	js	.L313
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L314:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r12), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r12, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L304
	movq	(%rbx), %rax
	movq	480(%rax), %rdx
	cmpq	472(%rax), %rbp
	jnb	.L310
	movq	(%rdx,%rbp,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L313:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L314
.L305:
	leaq	.LC30(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L320:
	movq	(%rbx), %rax
	movq	480(%rax), %rdx
	cmpq	472(%rax), %rbp
	jnb	.L310
	movq	(%rdx,%rbp,8), %rdi
	call	TTF_SetFontStyle@PLT
	jmp	.L308
.L310:
	leaq	.LC6(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L322:
	leaq	.LC32(%rip), %rdi
	movq	%rbp, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L321:
	leaq	.LC31(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine6actors5actor5texts4text7SetFontEy, .-_ZN3wze6engine6actors5actor5texts4text7SetFontEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv
	.type	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv, @function
_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv:
.LFB8176:
	.cfi_startproc
	movl	112(%rdi), %eax
	ret
	.cfi_endproc
.LFE8176:
	.size	_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv, .-_ZN3wze6engine6actors5actor5texts4text12GetFontStyleEv
	.section	.rodata.str1.8
	.align 8
.LC33:
	.string	"wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\nParams: FontStyle: %d\n"
	.align 8
.LC34:
	.string	"wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\nParams: FontStyle: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE
	.type	_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE, @function
_ZN3wze6engine6actors5actor5texts4text12SetFontStyleENS_5styleE:
.LFB8177:
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
	cmpl	%esi, 112(%rdi)
	je	.L325
	cmpq	$0, 104(%rdi)
	jne	.L338
.L325:
	xorl	%edx, %edx
	movq	120(%rbx), %rdi
	movw	%dx, 56(%rbx)
	call	SDL_DestroyTexture@PLT
	movq	$0, 120(%rbx)
.L328:
	movl	%ebp, 112(%rbx)
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
.L338:
	.cfi_restore_state
	cmpq	$0, 64(%rdi)
	je	.L325
	leaq	88(%rdi), %r12
	movq	%r12, %rdi
	call	_ZN3neo6string6LengthEv@PLT
	cmpq	$1, %rax
	jbe	.L325
	testl	%ebp, %ebp
	jne	.L339
.L327:
	movq	%r12, %rdi
	call	_ZN3neo6stringclEv@PLT
	movq	(%rbx), %rdx
	movq	%rax, %rsi
	movq	104(%rbx), %rax
	movq	480(%rdx), %rcx
	cmpq	472(%rdx), %rax
	jnb	.L340
	movq	(%rcx,%rax,8), %rdi
	movl	$-1, %edx
	call	TTF_RenderUTF8_Blended@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L341
	movq	(%rbx), %rax
	movq	%r12, %rsi
	movq	16(%rax), %rdi
	call	SDL_CreateTextureFromSurface@PLT
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.L342
	movq	64(%rbx), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	16(%r12), %xmm0
	testq	%rax, %rax
	js	.L333
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L334:
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	20(%r12), %xmm1
	divsd	%xmm1, %xmm0
	call	round@PLT
	movq	%r12, %rdi
	cvttsd2sil	%xmm0, %eax
	movw	%ax, 56(%rbx)
	call	SDL_FreeSurface@PLT
	movl	112(%rbx), %eax
	testl	%eax, %eax
	je	.L328
	movq	(%rbx), %rax
	movq	104(%rbx), %rsi
	movq	480(%rax), %rdx
	cmpq	472(%rax), %rsi
	jnb	.L337
	movq	(%rdx,%rsi,8), %rdi
	xorl	%esi, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L328
	.p2align 4,,10
	.p2align 3
.L333:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L334
	.p2align 4,,10
	.p2align 3
.L339:
	movq	(%rbx), %rax
	movq	104(%rbx), %rsi
	movq	480(%rax), %rdx
	cmpq	472(%rax), %rsi
	jnb	.L337
	movq	(%rdx,%rsi,8), %rdi
	movl	%ebp, %esi
	call	TTF_SetFontStyle@PLT
	jmp	.L327
.L340:
	movq	%rax, %rsi
.L337:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L342:
	leaq	.LC34(%rip), %rdi
	movl	%ebp, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L341:
	leaq	.LC33(%rip), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8177:
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
