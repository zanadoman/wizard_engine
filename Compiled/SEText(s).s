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
.LFB2433:
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
.LFE2433:
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
	leaq	40(%rbp), %rdi
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
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC6:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC7:
	.string	"slay::engine.actors[].texts.New(): Memory allocation failed"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB9:
	.text
.LHOTB9:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts3NewEv
	.type	_ZN4slay6engine6actors5actor5texts3NewEv, @function
_ZN4slay6engine6actors5actor5texts3NewEv:
.LFB2237:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2237
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rdi), %rax
	cmpq	$1, %rax
	jbe	.L43
	movq	24(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L44:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L43
.L47:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L44
	movl	$104, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movdqu	0(%rbp), %xmm2
	leaq	40(%rax), %rdi
	movq	%rax, %r12
	movups	%xmm2, (%rax)
.LEHB1:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE1:
	movabsq	$108367866033537024, %rax
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movl	$0, 16(%r12)
	movq	%rax, 32(%r12)
	movq	24(%rbp), %rax
	movq	$0x000000000, 24(%r12)
	movq	$0, 56(%r12)
	movw	%dx, 80(%r12)
	movq	$0, 88(%r12)
	movq	$0, 96(%r12)
	movups	%xmm0, 64(%r12)
	cmpq	16(%rbp), %rbx
	jnb	.L63
	movq	%r12, (%rax,%rbx,8)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L43:
	movl	$104, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movdqu	0(%rbp), %xmm1
	leaq	40(%rax), %rdi
	movq	%rax, %rbx
	movups	%xmm1, (%rax)
.LEHB3:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE3:
	movl	$0, 16(%rbx)
	pxor	%xmm0, %xmm0
	movq	24(%rbp), %rdi
	movabsq	$108367866033537024, %rax
	movq	%rax, 32(%rbx)
	xorl	%eax, %eax
	movw	%ax, 80(%rbx)
	movq	16(%rbp), %rax
	movq	$0x000000000, 24(%rbx)
	leaq	1(%rax), %rsi
	movq	$0, 56(%rbx)
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	movq	$0, 88(%rbx)
	movq	$0, 96(%rbx)
	movups	%xmm0, 64(%rbx)
	movq	%rbx, (%rsp)
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L64
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L65
	cmpq	$0, (%rdx,%rax,8)
	je	.L66
.L42:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L67
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L63:
	.cfi_restore_state
	movq	%rbx, %rsi
.L61:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L67:
	call	__stack_chk_fail@PLT
.L66:
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L65:
	orq	$-1, %rsi
	jmp	.L61
.L64:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L57:
	movq	%rax, %rbp
	jmp	.L54
.L58:
	movq	%rax, %rbx
	jmp	.L52
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
	.uleb128 .L58-.LFB2237
	.uleb128 0
	.uleb128 .LEHB2-.LFB2237
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2237
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L57-.LFB2237
	.uleb128 0
	.uleb128 .LEHB4-.LFB2237
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2237:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2237
	.type	_ZN4slay6engine6actors5actor5texts3NewEv.cold, @function
_ZN4slay6engine6actors5actor5texts3NewEv.cold:
.LFSB2237:
.L54:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movl	$104, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L62
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L52:
	movl	$104, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L62
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L62:
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
	.uleb128 .LEHB5-.LCOLDB9
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2237:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actor5texts3NewEv, .-_ZN4slay6engine6actors5actor5texts3NewEv
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actor5texts3NewEv.cold, .-_ZN4slay6engine6actors5actor5texts3NewEv.cold
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"slay::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n"
	.align 8
.LC11:
	.string	"slay::engine.actors[].texts.Delete(): Text does not exists\nParams: ID: %lld\n"
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
	je	.L81
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	16(%rdi), %rsi
	jnb	.L70
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L70
	movq	96(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	40(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$104, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L82
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L83
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
.L83:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L77:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L80
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L84
	cmpq	$1, %rsi
	jne	.L77
.L76:
	leaq	16(%rbp), %rdi
	movq	%r8, %rdx
.LEHB6:
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
.L84:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L76
.L82:
	movq	%rbx, %rsi
.L80:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	leaq	.LC11(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	leaq	.LC10(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE6:
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
	.uleb128 .LEHB6-.LFB2238
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2238:
	.text
	.size	_ZN4slay6engine6actors5actor5texts6DeleteEy, .-_ZN4slay6engine6actors5actor5texts6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"slay::engine.actors[].texts.Purge(): Text does not exists\nParams: Keep(length) %ld\n"
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
	je	.L86
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L89:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L87
	cmpq	%rsi, %rdx
	jnb	.L88
	movq	24(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L88
.L87:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L89
.L86:
	cmpq	$1, %rsi
	jbe	.L90
	movq	24(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L91:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L93
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L124:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L94
.L93:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L124
	cmpq	%rax, %rbx
	je	.L94
.L95:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L91
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
	je	.L125
.L121:
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
.L94:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %r14
	leaq	0(,%rbp,8), %r15
	testq	%r14, %r14
	je	.L96
	movq	96(%r14), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	40(%r14), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$104, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rsi
	movq	24(%r13), %rdx
.L96:
	cmpq	%rsi, %rbp
	jnb	.L126
	movq	$0, (%rdx,%r15)
	jmp	.L95
.L125:
	movq	%rsi, %rcx
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L104:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L127
	cmpq	$0, (%rdx,%rax,8)
	jne	.L128
	movq	%rax, %rcx
.L99:
	cmpq	$1, %rcx
	jne	.L104
.L103:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
.LEHB7:
	call	_ZN3neo5arrayIPN4slay6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	jmp	.L121
.L90:
	testq	%rsi, %rsi
	jne	.L121
	orq	$-1, %rsi
.L123:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L128:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L103
.L88:
	leaq	.LC12(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE7:
	movl	$1, %edi
	call	exit@PLT
.L127:
	movq	%rax, %rsi
	jmp	.L123
.L126:
	movq	%rbp, %rsi
	jmp	.L123
	.cfi_endproc
.LFE2239:
	.section	.gcc_except_table
.LLSDA2239:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2239-.LLSDACSB2239
.LLSDACSB2239:
	.uleb128 .LEHB7-.LFB2239
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2239:
	.text
	.size	_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"slay::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n"
	.align 8
.LC14:
	.string	"slay::engine.actors[].texts[]: Text does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5textsixEy
	.type	_ZN4slay6engine6actors5actor5textsixEy, @function
_ZN4slay6engine6actors5actor5textsixEy:
.LFB2242:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L134
	cmpq	16(%rdi), %rsi
	jnb	.L131
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L131
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L131:
	.cfi_restore_state
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L134:
	leaq	.LC13(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5actor5textsixEy, .-_ZN4slay6engine6actors5actor5textsixEy
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.type	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_, @function
_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_:
.LFB2244:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	leaq	40(%rdi), %rdi
	movq	%rsi, -40(%rdi)
	movq	%rdx, -32(%rdi)
	call	_ZN3neo6stringC1Ev@PLT
	pxor	%xmm0, %xmm0
	movabsq	$108367866033537024, %rax
	movl	$0, 16(%rbx)
	movq	%rax, 32(%rbx)
	xorl	%eax, %eax
	movq	$0x000000000, 24(%rbx)
	movq	$0, 56(%rbx)
	movw	%ax, 80(%rbx)
	movq	$0, 88(%rbx)
	movq	$0, 96(%rbx)
	movups	%xmm0, 64(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_, .-_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.globl	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_
	.set	_ZN4slay6engine6actors5actor5texts4textC1ERS0_RS2_,_ZN4slay6engine6actors5actor5texts4textC2ERS0_RS2_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
	.type	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv, @function
_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv:
.LFB2246:
	.cfi_startproc
	movl	56(%rdi), %eax
	ret
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv, .-_ZN4slay6engine6actors5actor5texts4text10GetOffsetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
	.type	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi, @function
_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi:
.LFB2247:
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
	cvtsi2sdl	60(%rdi), %xmm0
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
	movsd	%xmm0, 64(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 56(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 72(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi, .-_ZN4slay6engine6actors5actor5texts4text10SetOffsetXEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
	.type	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv, @function
_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv:
.LFB2248:
	.cfi_startproc
	movl	60(%rdi), %eax
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv, .-_ZN4slay6engine6actors5actor5texts4text10GetOffsetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
	.type	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi, @function
_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi:
.LFB2249:
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
	cvtsi2sdl	56(%rdi), %xmm0
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
	movsd	%xmm0, 64(%rbx)
	movsd	8(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	552(%rdx), %rdi
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	movl	%ebp, 60(%rbx)
	movl	%ebp, %eax
	movsd	%xmm0, 72(%rbx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi, .-_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4textD2Ev
	.type	_ZN4slay6engine6actors5actor5texts4textD2Ev, @function
_ZN4slay6engine6actors5actor5texts4textD2Ev:
.LFB2251:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2251
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	96(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	40(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringD1Ev@PLT
	.cfi_endproc
.LFE2251:
	.section	.gcc_except_table
.LLSDA2251:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2251-.LLSDACSB2251
.LLSDACSB2251:
.LLSDACSE2251:
	.text
	.size	_ZN4slay6engine6actors5actor5texts4textD2Ev, .-_ZN4slay6engine6actors5actor5texts4textD2Ev
	.globl	_ZN4slay6engine6actors5actor5texts4textD1Ev
	.set	_ZN4slay6engine6actors5actor5texts4textD1Ev,_ZN4slay6engine6actors5actor5texts4textD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text6StringEv
	.type	_ZN4slay6engine6actors5actor5texts4text6StringEv, @function
_ZN4slay6engine6actors5actor5texts4text6StringEv:
.LFB2253:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	96(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	40(%rbx), %rax
	movq	$0, 96(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2253:
	.size	_ZN4slay6engine6actors5actor5texts4text6StringEv, .-_ZN4slay6engine6actors5actor5texts4text6StringEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text7GetFontEv
	.type	_ZN4slay6engine6actors5actor5texts4text7GetFontEv, @function
_ZN4slay6engine6actors5actor5texts4text7GetFontEv:
.LFB2254:
	.cfi_startproc
	movq	88(%rdi), %rax
	ret
	.cfi_endproc
.LFE2254:
	.size	_ZN4slay6engine6actors5actor5texts4text7GetFontEv, .-_ZN4slay6engine6actors5actor5texts4text7GetFontEv
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"slay::engine.actors[].texts[].SetFont(): Font does not exists\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor5texts4text7SetFontEy
	.type	_ZN4slay6engine6actors5actor5texts4text7SetFontEy, @function
_ZN4slay6engine6actors5actor5texts4text7SetFontEy:
.LFB2255:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L151
	movq	(%rdi), %rdx
	cmpq	600(%rdx), %rsi
	jnb	.L150
	movq	608(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L150
	movq	%rsi, %rdx
	movq	%rdx, 88(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L151:
	xorl	%edx, %edx
	movq	%rdx, 88(%rdi)
	ret
.L150:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2255:
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
