	.file	"SEActors.cpp"
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
	.type	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0:
.LFB2421:
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
.LFE2421:
	.size	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actorsC2EPS0_
	.type	_ZN4slay6engine6actorsC2EPS0_, @function
_ZN4slay6engine6actorsC2EPS0_:
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
	.size	_ZN4slay6engine6actorsC2EPS0_, .-_ZN4slay6engine6actorsC2EPS0_
	.globl	_ZN4slay6engine6actorsC1EPS0_
	.set	_ZN4slay6engine6actorsC1EPS0_,_ZN4slay6engine6actorsC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actorsD2Ev
	.type	_ZN4slay6engine6actorsD2Ev, @function
_ZN4slay6engine6actorsD2Ev:
.LFB2235:
	.cfi_startproc
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
	movq	8(%rdi), %rax
	movq	16(%rdi), %rdi
	cmpq	$1, %rax
	jbe	.L37
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L40:
	movq	(%rdi,%rbx,8), %rbp
	testq	%rbp, %rbp
	je	.L38
	movq	%rbp, %rdi
	addq	$1, %rbx
	call	_ZN4slay6engine6actors5actorD1Ev@PLT
	movq	%rbp, %rdi
	movl	$232, %esi
	call	_ZdlPvm@PLT
	movq	8(%r12), %rax
	movq	16(%r12), %rdi
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
	.size	_ZN4slay6engine6actorsD2Ev, .-_ZN4slay6engine6actorsD2Ev
	.globl	_ZN4slay6engine6actorsD1Ev
	.set	_ZN4slay6engine6actorsD1Ev,_ZN4slay6engine6actorsD2Ev
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"slay::engine.actors.New(): Layer must not be less than 0\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC6:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC7:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC8:
	.string	"slay::engine.actors.New(): Memory allocation failed\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB9:
	.text
.LHOTB9:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors3NewEyddttd
	.type	_ZN4slay6engine6actors3NewEyddttd, @function
_ZN4slay6engine6actors3NewEyddttd:
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
	movzwl	%cx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movzwl	%dx, %r13d
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm2, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	comisd	%xmm2, %xmm0
	ja	.L43
	movq	8(%rdi), %rax
	movq	%rdi, %rbp
	cmpq	$1, %rax
	jbe	.L45
	movq	16(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L46:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L45
.L49:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L46
	movl	$232, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	0(%rbp), %rsi
	movl	%r14d, %r8d
	movl	%r13d, %ecx
	movsd	24(%rsp), %xmm2
	movq	%r12, %rdx
	movq	%rax, %rdi
	movq	%rax, %r15
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm0
.LEHB1:
	call	_ZN4slay6engine6actors5actorC1EPS0_yddttd@PLT
.LEHE1:
	movq	16(%rbp), %rax
	cmpq	8(%rbp), %rbx
	jnb	.L65
	movq	%r15, (%rax,%rbx,8)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L45:
	movl	$232, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	0(%rbp), %rsi
	movl	%r14d, %r8d
	movl	%r13d, %ecx
	movsd	24(%rsp), %xmm2
	movq	%r12, %rdx
	movq	%rax, %rdi
	movq	%rax, %rbx
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm0
.LEHB3:
	call	_ZN4slay6engine6actors5actorC1EPS0_yddttd@PLT
.LEHE3:
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdi
	movq	%rbx, 32(%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 8(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 16(%rbp)
	testq	%rax, %rax
	je	.L66
	movq	8(%rbp), %rdx
	leaq	32(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	addq	$-1, %rax
	movq	%rax, %rbx
	jnc	.L67
	cmpq	$0, (%rdx,%rax,8)
	je	.L68
.L42:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L69
	addq	$56, %rsp
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
.L65:
	.cfi_restore_state
	movq	%rbx, %rsi
.L63:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	movsd	24(%rsp), %xmm2
	movsd	16(%rsp), %xmm1
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movsd	8(%rsp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L69:
	call	__stack_chk_fail@PLT
.L68:
	movsd	24(%rsp), %xmm2
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movsd	16(%rsp), %xmm1
	movsd	8(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L67:
	orq	$-1, %rsi
	jmp	.L63
.L66:
	leaq	.LC7(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L59:
	movq	%rax, %rbp
	jmp	.L56
.L60:
	movq	%rax, %rbx
	jmp	.L54
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
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
	.uleb128 .L60-.LFB2237
	.uleb128 0
	.uleb128 .LEHB2-.LFB2237
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2237
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L59-.LFB2237
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
	.type	_ZN4slay6engine6actors3NewEyddttd.cold, @function
_ZN4slay6engine6actors3NewEyddttd.cold:
.LFSB2237:
.L56:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$232, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L64
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L54:
	movl	$232, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L64
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L64:
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
	.size	_ZN4slay6engine6actors3NewEyddttd, .-_ZN4slay6engine6actors3NewEyddttd
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors3NewEyddttd.cold, .-_ZN4slay6engine6actors3NewEyddttd.cold
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"slay::engine.actors.Delete(): Illegal deletion of NULL Actor\nParams: ID: %lld\n"
	.align 8
.LC11:
	.string	"slay::engine.actors.Delete(): Actor does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors6DeleteEy
	.type	_ZN4slay6engine6actors6DeleteEy, @function
_ZN4slay6engine6actors6DeleteEy:
.LFB2238:
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
	je	.L83
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	8(%rdi), %rsi
	jnb	.L72
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L72
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actorD1Ev@PLT
	movl	$232, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L84
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L85
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
.L85:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L79:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L82
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L86
	cmpq	$1, %rsi
	jne	.L79
.L78:
	leaq	8(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
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
.L86:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L78
.L84:
	movq	%rbx, %rsi
.L82:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	leaq	.LC11(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L83:
	leaq	.LC10(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6actors6DeleteEy, .-_ZN4slay6engine6actors6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"slay::engine.actors.Purge(): Actor does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE
	.type	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE, @function
_ZN4slay6engine6actors5PurgeESt16initializer_listIyE:
.LFB2239:
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
	movq	8(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L88
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L91:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L89
	cmpq	%rsi, %rdx
	jnb	.L90
	movq	16(%r13), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L90
.L89:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L91
.L88:
	cmpq	$1, %rsi
	jbe	.L92
	movq	16(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L93:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L95
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L126:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L96
.L95:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L126
	cmpq	%rax, %rbx
	je	.L96
.L97:
	addq	$1, %rbp
	cmpq	%rsi, %rbp
	jb	.L93
	cmpq	$0, -8(%rdx,%rsi,8)
	leaq	-1(%rsi), %r8
	je	.L127
.L123:
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
.L96:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %r14
	leaq	0(,%rbp,8), %r15
	testq	%r14, %r14
	je	.L98
	movq	%r14, %rdi
	call	_ZN4slay6engine6actors5actorD1Ev@PLT
	movl	$232, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%r13), %rsi
	movq	16(%r13), %rdx
.L98:
	cmpq	%rsi, %rbp
	jnb	.L128
	movq	$0, (%rdx,%r15)
	jmp	.L97
.L127:
	movq	%rsi, %rcx
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L106:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L129
	cmpq	$0, (%rdx,%rax,8)
	jne	.L130
	movq	%rax, %rcx
.L101:
	cmpq	$1, %rcx
	jne	.L106
.L105:
	leaq	8(%r13), %rdi
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
	jmp	.L123
.L92:
	testq	%rsi, %rsi
	jne	.L123
	orq	$-1, %rsi
.L125:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L130:
	subq	%rcx, %rsi
	movq	%rsi, %r8
	jmp	.L105
.L90:
	leaq	.LC12(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L129:
	movq	%rax, %rsi
	jmp	.L125
.L128:
	movq	%rbp, %rsi
	jmp	.L125
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6actors5PurgeESt16initializer_listIyE, .-_ZN4slay6engine6actors5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"slay::engine.actors.Purge(): Actor does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE
	.type	_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE, @function
_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE:
.LFB2242:
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
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rdx
	movq	8(%rdi), %rsi
	testq	%rdx, %rdx
	je	.L132
	movq	8(%r12), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L135:
	movq	(%rdi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L133
	cmpq	%rsi, %rcx
	jnb	.L134
	movq	16(%rbp), %r8
	cmpq	$0, (%r8,%rcx,8)
	je	.L134
.L133:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L135
.L132:
	cmpq	$1, %rsi
	jbe	.L136
	movq	16(%rbp), %rdi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L140
	.p2align 4,,10
	.p2align 3
.L145:
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L169:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L140
.L139:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L169
	cmpq	%rax, %rdx
	je	.L140
	addq	$1, %rbx
	cmpq	%rsi, %rbx
	jnb	.L144
.L171:
	movq	(%r12), %rdx
	testq	%rdx, %rdx
	jne	.L145
	.p2align 4,,10
	.p2align 3
.L140:
	movq	(%rdi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L142
	movq	%r13, %rdi
	call	_ZN4slay6engine6actors5actorD1Ev@PLT
	movl	$232, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rbp), %rsi
	movq	16(%rbp), %rdi
.L142:
	cmpq	%rsi, %rbx
	jnb	.L170
	addq	$1, %rbx
	movq	$0, (%rdi,%r14)
	cmpq	%rsi, %rbx
	jb	.L171
.L144:
	cmpq	$0, -8(%rdi,%rsi,8)
	leaq	-1(%rsi), %rdx
	je	.L172
.L166:
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
.L172:
	.cfi_restore_state
	movq	%rsi, %rcx
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L151:
	leaq	-1(%rcx), %rax
	cmpq	%rsi, %rax
	jnb	.L173
	cmpq	$0, (%rdi,%rax,8)
	jne	.L174
	movq	%rax, %rcx
.L146:
	cmpq	$1, %rcx
	jne	.L151
.L150:
	leaq	8(%rbp), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN4slay6engine6actors5actorEE6RemoveEyy.isra.0
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
.L136:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L166
	orq	$-1, %rsi
.L168:
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L174:
	subq	%rcx, %rsi
	movq	%rsi, %rdx
	jmp	.L150
.L134:
	leaq	.LC13(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L173:
	movq	%rax, %rsi
	jmp	.L168
.L170:
	movq	%rbx, %rsi
	jmp	.L168
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE, .-_ZN4slay6engine6actors5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"slay::engine.actors[]: Illegal access to NULL Actor"
	.align 8
.LC15:
	.string	"slay::engine.actors[]: Actor does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actorsixEy
	.type	_ZN4slay6engine6actorsixEy, @function
_ZN4slay6engine6actorsixEy:
.LFB2243:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L180
	cmpq	8(%rdi), %rsi
	jnb	.L177
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L177
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L177:
	.cfi_restore_state
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L180:
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actorsixEy, .-_ZN4slay6engine6actorsixEy
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
