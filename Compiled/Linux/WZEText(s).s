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
.LFB2439:
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
.LFE2439:
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
	.size	_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_,_ZN3wze6engine6actors5actor5textsC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsD2Ev
	.type	_ZN3wze6engine6actors5actor5textsD2Ev, @function
_ZN3wze6engine6actors5actor5textsD2Ev:
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
	movq	104(%rbp), %rdi
	addq	$1, %rbx
	call	SDL_DestroyTexture@PLT
	leaq	80(%rbp), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	%rbp, %rdi
	movl	$112, %esi
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
	.size	_ZN3wze6engine6actors5actor5textsD2Ev, .-_ZN3wze6engine6actors5actor5textsD2Ev
	.globl	_ZN3wze6engine6actors5actor5textsD1Ev
	.set	_ZN3wze6engine6actors5actor5textsD1Ev,_ZN3wze6engine6actors5actor5textsD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors[].texts.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n"
	.align 8
.LC5:
	.string	"wze::engine.actors[].texts.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n"
	.align 8
.LC9:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC10:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC11:
	.string	"wze::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.type	_ZN3wze6engine6actors5actor5texts3NewEPKcy, @function
_ZN3wze6engine6actors5actor5texts3NewEPKcy:
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
	movl	$112, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movdqu	0(%rbp), %xmm3
	leaq	80(%rax), %r15
	movq	%rax, %r14
	movups	%xmm3, (%rax)
	movq	%r15, %rdi
.LEHB1:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE1:
	movq	8(%r14), %rax
	movl	$384, %esi
	xorl	%edi, %edi
	pxor	%xmm0, %xmm0
	movzwl	186(%rax), %edx
	movw	%si, 36(%r14)
	movq	%rsp, %rsi
	movl	$-1, 18(%r14)
	movw	%dx, 16(%r14)
	movl	$1, %edx
	movq	$0x000000000, 24(%r14)
	movupd	152(%rax), %xmm4
	movl	$16842752, 32(%r14)
	movw	%di, 56(%r14)
	movq	%r15, %rdi
	movups	%xmm4, 40(%r14)
	movups	%xmm0, 64(%r14)
	movq	%r13, (%rsp)
.LEHB2:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
.LEHE2:
	movq	%r12, 96(%r14)
	movq	24(%rbp), %rax
	movq	$0, 104(%r14)
	cmpq	16(%rbp), %rbx
	jnb	.L77
	movq	%r14, (%rax,%rbx,8)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L46:
	movl	$112, %edi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movdqu	0(%rbp), %xmm1
	leaq	80(%rax), %r15
	movq	%rax, %rbx
	movups	%xmm1, (%rax)
	movq	%r15, %rdi
.LEHB4:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE4:
	movq	8(%rbx), %rax
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	movq	%rsp, %r14
	movq	%r14, %rsi
	movq	%r15, %rdi
	movzwl	186(%rax), %edx
	movl	$-1, 18(%rbx)
	movq	$0x000000000, 24(%rbx)
	movw	%dx, 16(%rbx)
	movl	$384, %edx
	movw	%dx, 36(%rbx)
	movupd	152(%rax), %xmm2
	movl	$1, %edx
	movl	$16842752, 32(%rbx)
	movw	%cx, 56(%rbx)
	movups	%xmm2, 40(%rbx)
	movups	%xmm0, 64(%rbx)
	movq	%r13, (%rsp)
.LEHB5:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
.LEHE5:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%r12, 96(%rbx)
	movq	$0, 104(%rbx)
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
	cmpq	608(%rax), %rdx
	jnb	.L47
	movq	616(%rax), %rax
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
	.type	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold, @function
_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold:
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
	movl	$112, %esi
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
	movl	$112, %esi
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
	.size	_ZN3wze6engine6actors5actor5texts3NewEPKcy, .-_ZN3wze6engine6actors5actor5texts3NewEPKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold, .-_ZN3wze6engine6actors5actor5texts3NewEPKcy.cold
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n"
	.align 8
.LC15:
	.string	"wze::engine.actors[].texts.Delete(): Text does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts6DeleteEy
	.type	_ZN3wze6engine6actors5actor5texts6DeleteEy, @function
_ZN3wze6engine6actors5actor5texts6DeleteEy:
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
	movq	104(%r12), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	80(%r12), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$112, %esi
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
	.size	_ZN3wze6engine6actors5actor5texts6DeleteEy, .-_ZN3wze6engine6actors5actor5texts6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE:
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
	movq	16(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L100
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L103:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L101
	cmpq	%rcx, %rdx
	jnb	.L102
	movq	24(%r13), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.L102
.L101:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L103
.L100:
	cmpq	$1, %rcx
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
	cmpq	%rcx, %rbp
	jb	.L105
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
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
	movq	104(%r14), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	80(%r14), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$112, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r13), %rcx
	movq	24(%r13), %rdx
.L110:
	cmpq	%rcx, %rbp
	jnb	.L140
	movq	$0, (%rdx,%r15)
	jmp	.L109
.L139:
	movq	%rcx, %rax
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L118:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L137
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L141
	movq	%rsi, %rax
.L113:
	cmpq	$1, %rax
	jne	.L118
.L117:
	leaq	16(%r13), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
.LEHB9:
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor5texts4textEE6RemoveEyy.isra.0
	jmp	.L135
.L104:
	testq	%rcx, %rcx
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
.L141:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L117
.L102:
	leaq	.LC16(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE9:
	movl	$1, %edi
	call	exit@PLT
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
	.size	_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor5texts5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE:
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
	je	.L143
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L144:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L143
.L146:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L144
	cmpq	%rdi, %rcx
	jnb	.L145
	movq	24(%r12), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L144
.L145:
	leaq	.LC17(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
.LEHB10:
	call	printf@PLT
.LEHE10:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L143:
	cmpq	$1, %rdi
	jbe	.L147
	movq	24(%r12), %rsi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L151
	.p2align 4,,10
	.p2align 3
.L156:
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	jmp	.L150
	.p2align 4,,10
	.p2align 3
.L180:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L151
.L150:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L180
	cmpq	%rax, %rdx
	je	.L151
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L155
.L182:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L156
	.p2align 4,,10
	.p2align 3
.L151:
	movq	(%rsi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L153
	movq	104(%r13), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	80(%r13), %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movl	$112, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
.L153:
	cmpq	%rdi, %rbx
	jnb	.L181
	addq	$1, %rbx
	movq	$0, (%rsi,%r14)
	cmpq	%rdi, %rbx
	jb	.L182
.L155:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L183
.L177:
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
.L183:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L162:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L184
	cmpq	$0, (%rsi,%rax,8)
	jne	.L185
	movq	%rax, %rcx
.L157:
	cmpq	$1, %rcx
	jne	.L162
.L161:
	leaq	16(%r12), %rdi
	movq	%rcx, %rsi
.LEHB11:
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
.L147:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L177
	orq	$-1, %rsi
.L179:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE11:
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L185:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L161
.L184:
	movq	%rax, %rsi
	jmp	.L179
.L181:
	movq	%rbx, %rsi
	jmp	.L179
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
	.uleb128 .LEHB11-.LFB2242
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2242:
	.text
	.size	_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor5texts5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n"
	.align 8
.LC19:
	.string	"wze::engine.actors[].texts[]: Text does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5textsixEy
	.type	_ZN3wze6engine6actors5actor5textsixEy, @function
_ZN3wze6engine6actors5actor5textsixEy:
.LFB2243:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L191
	cmpq	16(%rdi), %rsi
	jnb	.L188
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L188
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L188:
	.cfi_restore_state
	leaq	.LC19(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L191:
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN3wze6engine6actors5actor5textsixEy, .-_ZN3wze6engine6actors5actor5textsixEy
	.section	.text.unlikely
	.align 2
.LCOLDB20:
	.text
.LHOTB20:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.type	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy, @function
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy:
.LFB2245:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2245
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	80(%rdi), %r13
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
.LEHB12:
	call	_ZN3neo6stringC1Ev@PLT
.LEHE12:
	movq	8(%rbx), %rax
	xorl	%ecx, %ecx
	pxor	%xmm0, %xmm0
	movq	%rsp, %rsi
	movq	%r13, %rdi
	movq	%r12, (%rsp)
	movzwl	186(%rax), %edx
	movl	$-1, 18(%rbx)
	movq	$0x000000000, 24(%rbx)
	movw	%dx, 16(%rbx)
	movl	$384, %edx
	movw	%dx, 36(%rbx)
	movupd	152(%rax), %xmm1
	movl	$1, %edx
	movl	$16842752, 32(%rbx)
	movw	%cx, 56(%rbx)
	movups	%xmm1, 40(%rbx)
	movups	%xmm0, 64(%rbx)
.LEHB13:
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
.LEHE13:
	movq	%rbp, 96(%rbx)
	movq	$0, 104(%rbx)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L199
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
.L199:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L196:
	movq	%rax, %rbx
	jmp	.L193
	.section	.gcc_except_table
.LLSDA2245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2245-.LLSDACSB2245
.LLSDACSB2245:
	.uleb128 .LEHB12-.LFB2245
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2245
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L196-.LFB2245
	.uleb128 0
.LLSDACSE2245:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2245
	.type	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold, @function
_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold:
.LFSB2245:
.L193:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r13, %rdi
	call	_ZN3neo6stringD1Ev@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L200
	movq	%rbx, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L200:
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
	.uleb128 .LEHB14-.LCOLDB20
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSEC2245:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy, .-_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold, .-_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy.cold
.LCOLDE20:
	.text
.LHOTE20:
	.globl	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy
	.set	_ZN3wze6engine6actors5actor5texts4textC1EPS0_PS2_PKcy,_ZN3wze6engine6actors5actor5texts4textC2EPS0_PS2_PKcy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4textD2Ev
	.type	_ZN3wze6engine6actors5actor5texts4textD2Ev, @function
_ZN3wze6engine6actors5actor5texts4textD2Ev:
.LFB2248:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2248
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	104(%rdi), %rdi
	call	SDL_DestroyTexture@PLT
	leaq	80(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringD1Ev@PLT
	.cfi_endproc
.LFE2248:
	.section	.gcc_except_table
.LLSDA2248:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2248-.LLSDACSB2248
.LLSDACSB2248:
.LLSDACSE2248:
	.text
	.size	_ZN3wze6engine6actors5actor5texts4textD2Ev, .-_ZN3wze6engine6actors5actor5texts4textD2Ev
	.globl	_ZN3wze6engine6actors5actor5texts4textD1Ev
	.set	_ZN3wze6engine6actors5actor5texts4textD1Ev,_ZN3wze6engine6actors5actor5texts4textD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetXEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetXEv:
.LFB2250:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZN3wze6engine6actors5actor5texts4text4GetXEv, .-_ZN3wze6engine6actors5actor5texts4text4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.type	_ZN3wze6engine6actors5actor5texts4text4SetXEd, @function
_ZN3wze6engine6actors5actor5texts4text4SetXEd:
.LFB2251:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rax
	movq	(%rdi), %rdx
	movsd	48(%rbx), %xmm3
	movsd	%xmm2, 8(%rsp)
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm0
	leaq	560(%rdx), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rcx
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 64(%rbx)
	movsd	48(%rbx), %xmm3
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	560(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 72(%rbx)
	movsd	%xmm2, 40(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movapd	%xmm2, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2251:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetXEd, .-_ZN3wze6engine6actors5actor5texts4text4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.type	_ZN3wze6engine6actors5actor5texts4text4GetYEv, @function
_ZN3wze6engine6actors5actor5texts4text4GetYEv:
.LFB2438:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2438:
	.size	_ZN3wze6engine6actors5actor5texts4text4GetYEv, .-_ZN3wze6engine6actors5actor5texts4text4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.type	_ZN3wze6engine6actors5actor5texts4text4SetYEd, @function
_ZN3wze6engine6actors5actor5texts4text4SetYEd:
.LFB2253:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rax
	movq	(%rdi), %rdx
	movsd	40(%rbx), %xmm2
	movsd	%xmm3, 8(%rsp)
	movsd	160(%rax), %xmm1
	movsd	152(%rax), %xmm0
	leaq	560(%rdx), %rdi
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movq	(%rbx), %rcx
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 64(%rbx)
	movsd	40(%rbx), %xmm2
	movsd	152(%rax), %xmm0
	movsd	160(%rax), %xmm1
	leaq	560(%rcx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 72(%rbx)
	movsd	%xmm3, 48(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movapd	%xmm3, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2253:
	.size	_ZN3wze6engine6actors5actor5texts4text4SetYEd, .-_ZN3wze6engine6actors5actor5texts4text4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.type	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, @function
_ZN3wze6engine6actors5actor5texts4text9GetStringEv:
.LFB2254:
	.cfi_startproc
	addq	$80, %rdi
	jmp	_ZN3neo6stringclEv@PLT
	.cfi_endproc
.LFE2254:
	.size	_ZN3wze6engine6actors5actor5texts4text9GetStringEv, .-_ZN3wze6engine6actors5actor5texts4text9GetStringEv
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"wze::engine.actors[].texts[].SetString(): String must not be NULL\nParams: String: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.type	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, @function
_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc:
.LFB2255:
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
	je	.L215
	movq	%rdi, %rbx
	movq	104(%rdi), %rdi
	movq	%rsi, %rbp
	addq	$80, %rbx
	call	SDL_DestroyTexture@PLT
	movq	$0, 24(%rbx)
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	%rbp, (%rsp)
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L216
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZN3neo6stringclEv@PLT
.L215:
	.cfi_restore_state
	leaq	.LC21(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L216:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2255:
	.size	_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc, .-_ZN3wze6engine6actors5actor5texts4text9SetStringEPKc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.type	_ZN3wze6engine6actors5actor5texts4text7GetFontEv, @function
_ZN3wze6engine6actors5actor5texts4text7GetFontEv:
.LFB2256:
	.cfi_startproc
	movq	96(%rdi), %rax
	ret
	.cfi_endproc
.LFE2256:
	.size	_ZN3wze6engine6actors5actor5texts4text7GetFontEv, .-_ZN3wze6engine6actors5actor5texts4text7GetFontEv
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.actors[].texts[].SetFont(): Font does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5texts4text7SetFontEy
	.type	_ZN3wze6engine6actors5actor5texts4text7SetFontEy, @function
_ZN3wze6engine6actors5actor5texts4text7SetFontEy:
.LFB2257:
	.cfi_startproc
	movq	%rsi, %rax
	testq	%rsi, %rsi
	je	.L219
	movq	(%rdi), %rdx
	cmpq	608(%rdx), %rsi
	jnb	.L220
	movq	616(%rdx), %rdx
	cmpq	$0, (%rdx,%rsi,8)
	je	.L220
.L219:
	movq	%rax, 96(%rdi)
	ret
.L220:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2257:
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
