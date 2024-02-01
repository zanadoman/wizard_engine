	.file	"SEText(s).cpp"
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
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0:
.LFB2436:
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
.LFE2436:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_:
.LFB2232:
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
.LFE2232:
	.size	_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_,_ZN4slay6engine6actors5actor5textsC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5textsD2Ev
	.type	_ZN4slay6engine6actors5actor5textsD2Ev, @function
_ZN4slay6engine6actors5actor5textsD2Ev:
.LFB2235:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2235
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
	movq	96(%rbp), %rdi
	addq	$1, %rbx
	call	SDL_DestroyTexture@PLT
	leaq	72(%rbp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%rbp, %rdi
	movl	$104, %esi
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
.LFE2235:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2235-.LLSDACSB2235
.LLSDACSB2235:
.LLSDACSE2235:
	.text
	.size	_ZN4slay6engine6actors5actor5textsD2Ev, .-_ZN4slay6engine6actors5actor5textsD2Ev
	.globl	_ZN4slay6engine6actors5actor5textsD1Ev
	.set	_ZN4slay6engine6actors5actor5textsD1Ev,_ZN4slay6engine6actors5actor5textsD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"slay::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n"
	.align 8
.LC5:
	.string	"slay::engine.actors[].texts.Delete(): Text does not exists\nParams: ID: %lld\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts6DeleteEy
	.type	_ZN4slay6engine6actors5actor5texts6DeleteEy, @function
_ZN4slay6engine6actors5actor5texts6DeleteEy:
.LFB2238:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2238
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
	movq	96(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	72(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$104, %esi
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
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
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
.LFE2238:
	.section	.gcc_except_table
.LLSDA2238:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2238-.LLSDACSB2238
.LLSDACSB2238:
	.uleb128 .LEHB0-.LFB2238
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
.LLSDACSE2238:
	.text
	.size	_ZN4slay6engine6actors5actor5texts6DeleteEy, .-_ZN4slay6engine6actors5actor5texts6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"slay::engine.actors[].texts.Purge(): Text does not exists\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE, @function
_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE:
.LFB2239:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2239
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
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L60
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L63:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L61
	cmpq	%rsi, %rdx
	jnb	.L62
	movq	24(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L62
.L61:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L63
.L60:
	cmpq	$1, %rsi
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
	cmpq	%rsi, %rbp
	jb	.L65
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
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
	movq	96(%r14), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	72(%r14), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rsi
	movq	24(%r13), %rdx
.L70:
	cmpq	%rsi, %rbp
	jnb	.L100
	movq	$0, (%rdx,%r15)
	jmp	.L69
.L99:
	movq	%rsi, %rcx
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L78:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L101
	cmpq	$0, (%rdx,%rax,8)
	jne	.L102
	movq	%rax, %rcx
.L73:
	cmpq	$1, %rcx
	jne	.L78
.L77:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
.LEHB1:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	jmp	.L95
.L64:
	testq	%rsi, %rsi
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
.L102:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L77
.L62:
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
.L101:
	movq	%rax, %rsi
	jmp	.L97
.L100:
	movq	%rbp, %rsi
	jmp	.L97
	.cfi_endproc
.LFE2239:
	.section	.gcc_except_table
.LLSDA2239:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2239-.LLSDACSB2239
.LLSDACSB2239:
	.uleb128 .LEHB1-.LFB2239
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2239:
	.text
	.size	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"slay::engine.actors[].texts.Purge(): Text does not exists\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE:
.LFB2242:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2242
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rdx
	movq	16(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L104
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L107:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L105
	cmpq	%rsi, %rcx
	jnb	.L106
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L106
.L105:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L107
.L104:
	cmpq	$1, %rsi
	jbe	.L108
	movq	24(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L112
	.p2align 4,,10
	.p2align 3
.L117:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L141:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L112
.L111:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L141
	cmpq	%rax, %rdx
	je	.L112
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L116
.L143:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L117
	.p2align 4,,10
	.p2align 3
.L112:
	movq	(%rdi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L114
	movq	96(%r13), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	72(%r13), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$104, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rsi
	movq	24(%rbp), %rdi
.L114:
	cmpq	%rsi, %rbx
	jnb	.L142
	addq	$1, %rbx
	movq	$0, (%rdi,%r14)
	cmpq	%rsi, %rbx
	jb	.L143
.L116:
	cmpq	$0, -8(%rdi,%rsi,8)
	leaq	-1(%rsi), %rdx
	je	.L144
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
.L144:
	.cfi_restore_state
	movq	%rsi, %rcx
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L123:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L145
	cmpq	$0, (%rdi,%rax,8)
	jne	.L146
	movq	%rax, %rcx
.L118:
	cmpq	$1, %rcx
	jne	.L123
.L122:
	leaq	16(%rbp), %rdi
	movq	%rcx, %rsi
.LEHB2:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
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
.L108:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L138
	orq	$-1, %rsi
.L140:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L146:
	subq	%rcx, %rsi
	movq	%rsi, %rdx
	jmp	.L122
.L106:
	leaq	.LC8(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE2:
	movl	$1, %edi
	call	exit@PLT
.L145:
	movq	%rax, %rsi
	jmp	.L140
.L142:
	movq	%rbx, %rsi
	jmp	.L140
	.cfi_endproc
.LFE2242:
	.section	.gcc_except_table
.LLSDA2242:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2242-.LLSDACSB2242
.LLSDACSB2242:
	.uleb128 .LEHB2-.LFB2242
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2242:
	.text
	.size	_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"slay::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n"
	.align 8
.LC10:
	.string	"slay::engine.actors[].texts[]: Text does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5textsixEy
	.type	_ZN4slay6engine6actors5actor5textsixEy, @function
_ZN4slay6engine6actors5actor5textsixEy:
.LFB2243:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L152
	cmpq	16(%rdi), %rsi
	jnb	.L149
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L149
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L149:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L152:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor5textsixEy, .-_ZN4slay6engine6actors5actor5textsixEy
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii
	.type	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii, @function
_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii:
.LFB2245:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2245
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r9d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	72(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%r8, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	%rdx, 8(%rdi)
	movl	88(%rsp), %r15d
	movq	%rsi, (%rdi)
	movq	%r13, %rdi
.LEHB3:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE3:
	pxor	%xmm0, %xmm0
	movq	8(%rbx), %rax
	movl	$384, %edx
	movw	%dx, 36(%rbx)
	movl	80(%rsp), %ecx
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%r15d, %xmm0
	movl	$-1, 18(%rbx)
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm4
	movw	%r14w, 16(%rbx)
	movl	%r15d, 44(%rbx)
	movq	$0x000000000, 24(%rbx)
	addsd	%xmm1, %xmm0
	movl	$16842752, 32(%rbx)
	movl	%ecx, 40(%rbx)
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm4, %xmm0
	movq	%xmm3, %r14
	cvtsi2sdl	%eax, %xmm2
	movq	(%rbx), %rax
	leaq	552(%rax), %rdi
	movq	%xmm2, %r15
.LEHB4:
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movq	%r14, %xmm3
	movq	%r15, %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	xorl	%eax, %eax
	movsd	%xmm0, 56(%rbx)
	movq	%rsp, %rsi
	movl	$1, %edx
	movw	%ax, 64(%rbx)
	movq	%r13, %rdi
	movq	%r12, (%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
.LEHE4:
	movq	%rbp, 88(%rbx)
	movq	$0, 96(%rbx)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L160
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L160:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L157:
	movq	%rax, %rbx
	jmp	.L154
	.section	.gcc_except_table
.LLSDA2245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2245-.LLSDACSB2245
.LLSDACSB2245:
	.uleb128 .LEHB3-.LFB2245
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2245
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L157-.LFB2245
	.uleb128 0
.LLSDACSE2245:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2245
	.type	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii.cold, @function
_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii.cold:
.LFSB2245:
.L154:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r13, %rdi
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
.LFE2245:
	.section	.gcc_except_table
.LLSDAC2245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2245-.LLSDACSBC2245
.LLSDACSBC2245:
	.uleb128 .LEHB5-.LCOLDB14
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2245:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii, .-_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii.cold, .-_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii.cold
.LCOLDE14:
	.text
.LHOTE14:
	.globl	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_PKcytii
	.set	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_PKcytii,_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_PKcytii
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"slay::engine.actors[].texts.New(): String must not be NULL\nParams: String: %p, FontID: %lld, Height: %d, OffsetX: %d, OffsetY: %d\n"
	.align 8
.LC16:
	.string	"slay::engine.actors[].texts.New(): FontID does not exist\nParams: String: %p, FontID: %lld, Height: %d, OffsetX: %d, OffsetY: %d\n"
	.align 8
.LC17:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC18:
	.string	"slay::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %p, FontID: %lld, Height: %d, OffsetX: %d, OffsetY: %d\n"
	.section	.text.unlikely
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts3NewEPKcytii
	.type	_ZN4slay6engine6actors5actor5texts3NewEPKcytii, @function
_ZN4slay6engine6actors5actor5texts3NewEPKcytii:
.LFB2237:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2237
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	.cfi_offset 15, -24
	movl	%r9d, %r15d
	pushq	%r14
	.cfi_offset 14, -32
	movl	%r8d, %r14d
	pushq	%r13
	pushq	%r12
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdx, %r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movzwl	%cx, %eax
	movl	%eax, -76(%rbp)
	testq	%rsi, %rsi
	je	.L188
	movq	%rsi, %r13
	testq	%rdx, %rdx
	jne	.L164
.L168:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$1, %rax
	jbe	.L166
	movq	-72(%rbp), %rsi
	movl	$1, %ebx
	movq	24(%rsi), %rdx
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L169:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L166
.L172:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L169
	movl	$104, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	%r12, %r8
	movq	%rax, -88(%rbp)
	movq	%rax, %rdi
	movq	8(%rcx), %rdx
	movq	(%rcx), %rsi
	pushq	%r15
	movq	%r13, %rcx
	pushq	%r14
.LEHB7:
	.cfi_escape 0x2e,0x10
	call	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_PKcytii
.LEHE7:
	popq	%rcx
	movq	-72(%rbp), %rcx
	popq	%rsi
	movq	24(%rcx), %rax
	cmpq	16(%rcx), %rbx
	jnb	.L189
	movq	-88(%rbp), %rdi
	movq	%rdi, (%rax,%rbx,8)
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L166:
	movl	$104, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movl	-76(%rbp), %r9d
	movq	%r12, %r8
	movq	%r13, %rcx
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdi
	movq	8(%rax), %rdx
	movq	(%rax), %rsi
	pushq	%r15
	pushq	%r14
.LEHB9:
	call	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_PKcytii
.LEHE9:
	popq	%rax
	popq	%rdx
	movq	%rbx, -64(%rbp)
	movq	-72(%rbp), %rbx
	movq	16(%rbx), %rcx
	movq	24(%rbx), %rdi
	leaq	1(%rcx), %rsi
	movq	%rcx, -88(%rbp)
	movq	%rsi, 16(%rbx)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L190
	movq	-72(%rbp), %rbx
	leaq	-64(%rbp), %rdi
	movq	16(%rbx), %rdx
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB10:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbx), %rax
	movq	%rbx, %rdi
	movq	24(%rdi), %rdx
	movq	%rax, -72(%rbp)
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L191
	cmpq	$0, (%rdx,%rax,8)
	je	.L192
.L162:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L193
	leaq	-40(%rbp), %rsp
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	.cfi_restore_state
	movq	(%rdi), %rax
	cmpq	600(%rax), %rdx
	jnb	.L167
	movq	608(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	jne	.L168
.L167:
	movl	-76(%rbp), %ecx
	leaq	.LC16(%rip), %rdi
	movl	%r15d, %r9d
	movl	%r14d, %r8d
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L189:
	movq	%rbx, %rsi
.L186:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L193:
	call	__stack_chk_fail@PLT
.L192:
	movl	-76(%rbp), %ecx
	leaq	.LC18(%rip), %rdi
	movl	%r15d, %r9d
	movl	%r14d, %r8d
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L188:
	movl	%eax, %ecx
	leaq	.LC15(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L191:
	orq	$-1, %rsi
	jmp	.L186
.L190:
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
	movq	%rax, %r14
	jmp	.L179
	.section	.gcc_except_table
.LLSDA2237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2237-.LLSDACSB2237
.LLSDACSB2237:
	.uleb128 .LEHB6-.LFB2237
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2237
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L182-.LFB2237
	.uleb128 0
	.uleb128 .LEHB8-.LFB2237
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2237
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L183-.LFB2237
	.uleb128 0
	.uleb128 .LEHB10-.LFB2237
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2237:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2237
	.type	_ZN4slay6engine6actors5actor5texts3NewEPKcytii.cold, @function
_ZN4slay6engine6actors5actor5texts3NewEPKcytii.cold:
.LFSB2237:
.L177:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movq	-88(%rbp), %rdi
	movl	$104, %esi
	call	_ZdlPvm@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L187
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L179:
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L187
	movq	%r14, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
.L187:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2237:
	.section	.gcc_except_table
.LLSDAC2237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2237-.LLSDACSBC2237
.LLSDACSBC2237:
	.uleb128 .LEHB11-.LCOLDB19
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSEC2237:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor5texts3NewEPKcytii, .-_ZN4slay6engine6actors5actor5texts3NewEPKcytii
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor5texts3NewEPKcytii.cold, .-_ZN4slay6engine6actors5actor5texts3NewEPKcytii.cold
.LCOLDE19:
	.text
.LHOTE19:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
	.type	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv, @function
_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv:
.LFB2247:
	.cfi_startproc
	movl	40(%rdi), %eax
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv, .-_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
	.type	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi, @function
_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi:
.LFB2248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	cvtsi2sdl	44(%rdi), %xmm0
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm4
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	movq	(%rdi), %rax
	leaq	552(%rax), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 40(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 56(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi, .-_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
	.type	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv, @function
_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv:
.LFB2249:
	.cfi_startproc
	movl	44(%rdi), %eax
	ret
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv, .-_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
	.type	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi, @function
_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi:
.LFB2250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	cvtsi2sdl	%esi, %xmm0
	movq	%rdi, %rbx
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rax
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm4
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	40(%rdi), %xmm0
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm4, %xmm0
	cvttsd2sil	%xmm0, %eax
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	movq	(%rdi), %rax
	leaq	552(%rax), %rdi
	movsd	%xmm2, (%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rdx
	movsd	%xmm0, 48(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 44(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 56(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi, .-_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4textD2Ev
	.type	_ZN4slay6engine6actors5actor5texts4textD2Ev, @function
_ZN4slay6engine6actors5actor5texts4textD2Ev:
.LFB2252:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2252
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	96(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	72(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringD1Ev@PLT
	.cfi_endproc
.LFE2252:
	.section	.gcc_except_table
.LLSDA2252:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2252-.LLSDACSB2252
.LLSDACSB2252:
.LLSDACSE2252:
	.text
	.size	_ZN4slay6engine6actors5actor5texts4textD2Ev, .-_ZN4slay6engine6actors5actor5texts4textD2Ev
	.globl	_ZN4slay6engine6actors5actor5texts4textD1Ev
	.set	_ZN4slay6engine6actors5actor5texts4textD1Ev,_ZN4slay6engine6actors5actor5texts4textD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text9GetStringEv
	.type	_ZN4slay6engine6actors5actor5texts4text9GetStringEv, @function
_ZN4slay6engine6actors5actor5texts4text9GetStringEv:
.LFB2254:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	96(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	72(%rbx), %rax
	movq	$0, 96(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2254:
	.size	_ZN4slay6engine6actors5actor5texts4text9GetStringEv, .-_ZN4slay6engine6actors5actor5texts4text9GetStringEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text7GetFontEv
	.type	_ZN4slay6engine6actors5actor5texts4text7GetFontEv, @function
_ZN4slay6engine6actors5actor5texts4text7GetFontEv:
.LFB2255:
	.cfi_startproc
	movq	88(%rdi), %rax
	ret
	.cfi_endproc
.LFE2255:
	.size	_ZN4slay6engine6actors5actor5texts4text7GetFontEv, .-_ZN4slay6engine6actors5actor5texts4text7GetFontEv
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"slay::engine.actors[].texts[].SetFont(): Font does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text7SetFontEy
	.type	_ZN4slay6engine6actors5actor5texts4text7SetFontEy, @function
_ZN4slay6engine6actors5actor5texts4text7SetFontEy:
.LFB2256:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L206
	movq	(%rdi), %rdx
	cmpq	600(%rdx), %rsi
	jnb	.L207
	movq	608(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L207
.L206:
	movq	%rax, 88(%rdi)
	ret
.L207:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2256:
	.size	_ZN4slay6engine6actors5actor5texts4text7SetFontEy, .-_ZN4slay6engine6actors5actor5texts4text7SetFontEy
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
