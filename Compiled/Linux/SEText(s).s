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
	.globl	_ZN4slay6engine6actors5actor5textsC2EPS0_PS2_
	.type	_ZN4slay6engine6actors5actor5textsC2EPS0_PS2_, @function
_ZN4slay6engine6actors5actor5textsC2EPS0_PS2_:
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
	.size	_ZN4slay6engine6actors5actor5textsC2EPS0_PS2_, .-_ZN4slay6engine6actors5actor5textsC2EPS0_PS2_
	.globl	_ZN4slay6engine6actors5actor5textsC1EPS0_PS2_
	.set	_ZN4slay6engine6actors5actor5textsC1EPS0_PS2_,_ZN4slay6engine6actors5actor5textsC2EPS0_PS2_
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
	.string	"slay::engine.actors[].texts.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n"
	.align 8
.LC5:
	.string	"slay::engine.actors[].texts.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n"
	.align 8
.LC9:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC10:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC11:
	.string	"slay::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts3NewEPKcy
	.type	_ZN4slay6engine6actors5actor5texts3NewEPKcy, @function
_ZN4slay6engine6actors5actor5texts3NewEPKcy:
.LFB2237:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2237
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
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L76
	movq	%rdi, %rbp
	movq	%rsi, %r13
	testq	%rdx, %rdx
	jne	.L44
.L48:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L46
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L49:
	addq	$1, %rbx
	cmpq	%rbx, %rax
	je	.L46
.L55:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L49
	movl	$104, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movdqu	0(%rbp), %xmm2
	leaq	72(%rax), %r15
	movq	%rax, %r14
	movups	%xmm2, (%rax)
	movq	%r15, %rdi
.LEHB1:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE1:
	movq	8(%r14), %rax
	xorl	%esi, %esi
	movl	$384, %ecx
	pxor	%xmm0, %xmm0
	movl	$1, %edx
	movq	%r15, %rdi
	movzwl	170(%rax), %eax
	movw	%si, 64(%r14)
	movq	%rsp, %rsi
	movl	$-1, 18(%r14)
	movw	%ax, 16(%r14)
	movq	$0x000000000, 24(%r14)
	movl	$16842752, 32(%r14)
	movw	%cx, 36(%r14)
	movq	$0, 40(%r14)
	movups	%xmm0, 48(%r14)
	movq	%r13, (%rsp)
.LEHB2:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
.LEHE2:
	movq	%r12, 88(%r14)
	movq	24(%rbp), %rax
	movq	$0, 96(%r14)
	cmpq	16(%rbp), %rbx
	jnb	.L77
	movq	%r14, (%rax,%rbx,8)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L46:
	movl	$104, %edi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movdqu	0(%rbp), %xmm1
	leaq	72(%rax), %r15
	movq	%rax, %rbx
	movups	%xmm1, (%rax)
	movq	%r15, %rdi
.LEHB4:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE4:
	movq	8(%rbx), %rax
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movq	%rsp, %r14
	movq	%r14, %rsi
	movq	%r15, %rdi
	movzwl	170(%rax), %eax
	movw	%dx, 64(%rbx)
	movl	$1, %edx
	movl	$-1, 18(%rbx)
	movw	%ax, 16(%rbx)
	movl	$384, %eax
	movq	$0x000000000, 24(%rbx)
	movl	$16842752, 32(%rbx)
	movw	%ax, 36(%rbx)
	movq	$0, 40(%rbx)
	movups	%xmm0, 48(%rbx)
	movq	%r13, (%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
.LEHE5:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%r12, 88(%rbx)
	movq	$0, 96(%rbx)
	leaq	1(%rax), %rsi
	movq	%rbx, (%rsp)
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L78
	movq	16(%rbp), %rdx
	movq	%r14, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB6:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L79
	cmpq	$0, (%rdx,%rax,8)
	je	.L80
.L42:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L81
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
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
.L44:
	.cfi_restore_state
	movq	(%rdi), %rax
	cmpq	600(%rax), %rdx
	jnb	.L47
	movq	608(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	jne	.L48
.L47:
	leaq	.LC5(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
	movq	%rbx, %rsi
.L74:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L78:
	leaq	.LC10(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L76:
	leaq	.LC4(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	call	__stack_chk_fail@PLT
.L80:
	leaq	.LC11(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
	movl	$1, %edi
	call	exit@PLT
.L79:
	orq	$-1, %rsi
	jmp	.L74
.L66:
	movq	%rax, %rbx
	jmp	.L53
.L68:
	movq	%rax, %rbx
	jmp	.L52
.L67:
	movq	%rax, %rbp
	jmp	.L59
.L69:
	movq	%rax, %rbp
	jmp	.L58
	.section	.gcc_except_table
.LLSDA2237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2237-.LLSDACSB2237
.LLSDACSB2237:
	.uleb128 .LEHB0-.LFB2237
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2237
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L66-.LFB2237
	.uleb128 0
	.uleb128 .LEHB2-.LFB2237
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L68-.LFB2237
	.uleb128 0
	.uleb128 .LEHB3-.LFB2237
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2237
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L67-.LFB2237
	.uleb128 0
	.uleb128 .LEHB5-.LFB2237
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L69-.LFB2237
	.uleb128 0
	.uleb128 .LEHB6-.LFB2237
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2237:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2237
	.type	_ZN4slay6engine6actors5actor5texts3NewEPKcy.cold, @function
_ZN4slay6engine6actors5actor5texts3NewEPKcy.cold:
.LFSB2237:
.L52:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	_ZN3neo6stringD1Ev@PLT
.L53:
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L75
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.L58:
	movq	%r15, %rdi
	call	_ZN3neo6stringD1Ev@PLT
.L59:
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	je	.L64
.L75:
	call	__stack_chk_fail@PLT
.L64:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE2237:
	.section	.gcc_except_table
.LLSDAC2237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2237-.LLSDACSBC2237
.LLSDACSBC2237:
	.uleb128 .LEHB7-.LCOLDB13
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC2237:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor5texts3NewEPKcy, .-_ZN4slay6engine6actors5actor5texts3NewEPKcy
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor5texts3NewEPKcy.cold, .-_ZN4slay6engine6actors5actor5texts3NewEPKcy.cold
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"slay::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n"
	.align 8
.LC15:
	.string	"slay::engine.actors[].texts.Delete(): Text does not exist\nParams: ID: %lld\n"
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
	je	.L95
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L84
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L84
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
	jnb	.L96
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L97
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
.L97:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L91:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L94
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L98
	cmpq	$1, %rsi
	jne	.L91
.L90:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
.LEHB8:
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
.L98:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L90
.L96:
	movq	%rbx, %rsi
.L94:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L84:
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L95:
	leaq	.LC14(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE8:
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
	.uleb128 .LEHB8-.LFB2238
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2238:
	.text
	.size	_ZN4slay6engine6actors5actor5texts6DeleteEy, .-_ZN4slay6engine6actors5actor5texts6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"slay::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep(length): %ld\n"
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
	je	.L100
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L103:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L101
	cmpq	%rsi, %rdx
	jnb	.L102
	movq	24(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L102
.L101:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L103
.L100:
	cmpq	$1, %rsi
	jbe	.L104
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L105:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L107
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L138:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L108
.L107:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L138
	cmpq	%rax, %rbx
	je	.L108
.L109:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L105
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
	je	.L139
.L135:
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
.L108:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %r14
	leaq	0(,%rbp,8), %r15
	testq	%r14, %r14
	je	.L110
	movq	96(%r14), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	72(%r14), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rsi
	movq	24(%r13), %rdx
.L110:
	cmpq	%rsi, %rbp
	jnb	.L140
	movq	$0, (%rdx,%r15)
	jmp	.L109
.L139:
	movq	%rsi, %rcx
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L118:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L141
	cmpq	$0, (%rdx,%rax,8)
	jne	.L142
	movq	%rax, %rcx
.L113:
	cmpq	$1, %rcx
	jne	.L118
.L117:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
.LEHB9:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	jmp	.L135
.L104:
	testq	%rsi, %rsi
	jne	.L135
	orq	$-1, %rsi
.L137:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L142:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L117
.L102:
	leaq	.LC16(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE9:
	movl	$1, %edi
	call	exit@PLT
.L141:
	movq	%rax, %rsi
	jmp	.L137
.L140:
	movq	%rbp, %rsi
	jmp	.L137
	.cfi_endproc
.LFE2239:
	.section	.gcc_except_table
.LLSDA2239:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2239-.LLSDACSB2239
.LLSDACSB2239:
	.uleb128 .LEHB9-.LFB2239
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE2239:
	.text
	.size	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"slay::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep: %p\n"
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
	je	.L144
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L147:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L145
	cmpq	%rsi, %rcx
	jnb	.L146
	movq	24(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L146
.L145:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L147
.L144:
	cmpq	$1, %rsi
	jbe	.L148
	movq	24(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L152
	.p2align 4,,10
	.p2align 3
.L157:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L181:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L152
.L151:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L181
	cmpq	%rax, %rdx
	je	.L152
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L156
.L183:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L157
	.p2align 4,,10
	.p2align 3
.L152:
	movq	(%rdi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L154
	movq	96(%r13), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	72(%r13), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$104, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rsi
	movq	24(%rbp), %rdi
.L154:
	cmpq	%rsi, %rbx
	jnb	.L182
	addq	$1, %rbx
	movq	$0, (%rdi,%r14)
	cmpq	%rsi, %rbx
	jb	.L183
.L156:
	cmpq	$0, -8(%rdi,%rsi,8)
	leaq	-1(%rsi), %rdx
	je	.L184
.L178:
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
.L184:
	.cfi_restore_state
	movq	%rsi, %rcx
	jmp	.L158
	.p2align 4,,10
	.p2align 3
.L163:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L185
	cmpq	$0, (%rdi,%rax,8)
	jne	.L186
	movq	%rax, %rcx
.L158:
	cmpq	$1, %rcx
	jne	.L163
.L162:
	leaq	16(%rbp), %rdi
	movq	%rcx, %rsi
.LEHB10:
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
.L148:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L178
	orq	$-1, %rsi
.L180:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L186:
	subq	%rcx, %rsi
	movq	%rsi, %rdx
	jmp	.L162
.L146:
	leaq	.LC17(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE10:
	movl	$1, %edi
	call	exit@PLT
.L185:
	movq	%rax, %rsi
	jmp	.L180
.L182:
	movq	%rbx, %rsi
	jmp	.L180
	.cfi_endproc
.LFE2242:
	.section	.gcc_except_table
.LLSDA2242:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2242-.LLSDACSB2242
.LLSDACSB2242:
	.uleb128 .LEHB10-.LFB2242
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE2242:
	.text
	.size	_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"slay::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n"
	.align 8
.LC19:
	.string	"slay::engine.actors[].texts[]: Text does not exist\nParams: ID: %lld\n"
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
	je	.L192
	cmpq	16(%rdi), %rsi
	jnb	.L189
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L189
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L189:
	.cfi_restore_state
	leaq	.LC19(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L192:
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor5textsixEy, .-_ZN4slay6engine6actors5actor5textsixEy
	.section	.text.unlikely
	.align 2
.LCOLDB20:
	.text
.LHOTB20:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.type	_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy, @function
_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy:
.LFB2245:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2245
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	72(%rdi), %r13
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
.LEHB11:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE11:
	movq	8(%rbx), %rax
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movq	%rsp, %rsi
	movq	%r13, %rdi
	movq	%r12, (%rsp)
	movzwl	170(%rax), %eax
	movw	%dx, 64(%rbx)
	movl	$1, %edx
	movl	$-1, 18(%rbx)
	movw	%ax, 16(%rbx)
	movl	$384, %eax
	movq	$0x000000000, 24(%rbx)
	movl	$16842752, 32(%rbx)
	movw	%ax, 36(%rbx)
	movq	$0, 40(%rbx)
	movups	%xmm0, 48(%rbx)
.LEHB12:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
.LEHE12:
	movq	%rbp, 88(%rbx)
	movq	$0, 96(%rbx)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L200
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
.L200:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L197:
	movq	%rax, %rbx
	jmp	.L194
	.section	.gcc_except_table
.LLSDA2245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2245-.LLSDACSB2245
.LLSDACSB2245:
	.uleb128 .LEHB11-.LFB2245
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB2245
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L197-.LFB2245
	.uleb128 0
.LLSDACSE2245:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2245
	.type	_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold, @function
_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold:
.LFSB2245:
.L194:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r13, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L201
	movq	%rbx, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L201:
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
	.uleb128 .LEHB13-.LCOLDB20
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSEC2245:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy, .-_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold, .-_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold
.LCOLDE20:
	.text
.LHOTE20:
	.globl	_ZN4slay6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
	.set	_ZN4slay6engine6actors5actor5texts4textC1EPS0_PS2_PKcy,_ZN4slay6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
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
.LC21:
	.string	"slay::engine.actors[].texts[].SetFont(): Font does not exist\nParams: ID: %lld\n"
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
	je	.L214
	movq	(%rdi), %rdx
	cmpq	600(%rdx), %rsi
	jnb	.L215
	movq	608(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L215
.L214:
	movq	%rax, 88(%rdi)
	ret
.L215:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rdi
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
