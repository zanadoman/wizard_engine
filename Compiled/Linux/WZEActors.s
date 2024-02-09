	.file	"WZEActors.cpp"
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
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0:
.LFB8335:
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
.LFE8335:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actorsC2EPS0_
	.type	_ZN3wze6engine6actorsC2EPS0_, @function
_ZN3wze6engine6actorsC2EPS0_:
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
	.size	_ZN3wze6engine6actorsC2EPS0_, .-_ZN3wze6engine6actorsC2EPS0_
	.globl	_ZN3wze6engine6actorsC1EPS0_
	.set	_ZN3wze6engine6actorsC1EPS0_,_ZN3wze6engine6actorsC2EPS0_
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors.New(): X must not be NaN\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine.actors.New(): Y must not be NaN\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.actors.New(): Layer must not be NaN\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC8:
	.string	"wze::engine.actors.New(): Layer must not be less than 0\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC9:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC10:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC11:
	.string	"wze::engine.actors.New(): Memory allocation failed\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors3NewEPvyddttd
	.type	_ZN3wze6engine6actors3NewEPvyddttd, @function
_ZN3wze6engine6actors3NewEPvyddttd:
.LFB8149:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8149
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movzwl	%r8w, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movzwl	%cx, %r13d
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movsd	%xmm0, 16(%rsp)
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm0
	jp	.L71
	ucomisd	%xmm1, %xmm1
	jp	.L72
	ucomisd	%xmm2, %xmm2
	jp	.L73
	pxor	%xmm0, %xmm0
	comisd	(%rsp), %xmm0
	ja	.L43
	movq	8(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r15
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
	movl	$320, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	0(%rbp), %rsi
	movl	%r14d, %r9d
	movl	%r13d, %r8d
	movsd	(%rsp), %xmm2
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	movq	%rax, 24(%rsp)
.LEHB1:
	call	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd@PLT
.LEHE1:
	movq	16(%rbp), %rax
	cmpq	8(%rbp), %rbx
	jnb	.L74
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax,%rbx,8)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L45:
	movl	$320, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	0(%rbp), %rsi
	movl	%r14d, %r9d
	movl	%r13d, %r8d
	movsd	(%rsp), %xmm2
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%rax, %rdi
	movsd	8(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	movq	%rax, %rbx
.LEHB3:
	call	_ZN3wze6engine6actors5actorC1EPS0_Pvyddttd@PLT
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
	je	.L75
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
	jnc	.L76
	cmpq	$0, (%rdx,%rax,8)
	je	.L77
.L36:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L78
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
.L74:
	.cfi_restore_state
	movq	%rbx, %rsi
.L69:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	movsd	(%rsp), %xmm2
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movsd	8(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L73:
	movsd	8(%rsp), %xmm1
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movsd	16(%rsp), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	movsd	(%rsp), %xmm2
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movsd	16(%rsp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L71:
	leaq	.LC4(%rip), %rdi
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L78:
	call	__stack_chk_fail@PLT
.L77:
	movsd	(%rsp), %xmm2
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movsd	8(%rsp), %xmm1
	movsd	16(%rsp), %xmm0
	movl	$3, %eax
	leaq	.LC11(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L76:
	orq	$-1, %rsi
	jmp	.L69
.L75:
	leaq	.LC10(%rip), %rdi
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
.LLSDA8149:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8149-.LLSDACSB8149
.LLSDACSB8149:
	.uleb128 .LEHB0-.LFB8149
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8149
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L60-.LFB8149
	.uleb128 0
	.uleb128 .LEHB2-.LFB8149
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8149
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L59-.LFB8149
	.uleb128 0
	.uleb128 .LEHB4-.LFB8149
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8149:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8149
	.type	_ZN3wze6engine6actors3NewEPvyddttd.cold, @function
_ZN3wze6engine6actors3NewEPvyddttd.cold:
.LFSB8149:
.L56:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movl	$320, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L70
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L54:
	movq	24(%rsp), %rdi
	movl	$320, %esi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L70
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L70:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8149:
	.section	.gcc_except_table
.LLSDAC8149:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8149-.LLSDACSBC8149
.LLSDACSBC8149:
	.uleb128 .LEHB5-.LCOLDB12
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8149:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors3NewEPvyddttd, .-_ZN3wze6engine6actors3NewEPvyddttd
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors3NewEPvyddttd.cold, .-_ZN3wze6engine6actors3NewEPvyddttd.cold
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors.Delete(): Illegal deletion of NULL Actor\nParams: ID: %lld\n"
	.align 8
.LC14:
	.string	"wze::engine.actors.Delete(): Actor does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors6DeleteEy
	.type	_ZN3wze6engine6actors6DeleteEy, @function
_ZN3wze6engine6actors6DeleteEy:
.LFB8150:
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
	je	.L92
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	8(%rdi), %rsi
	jnb	.L81
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L81
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$320, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L93
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L94
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
.L94:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L88:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L91
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L95
	cmpq	$1, %rsi
	jne	.L88
.L87:
	leaq	8(%rbp), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
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
.L95:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L87
.L93:
	movq	%rbx, %rsi
.L91:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	leaq	.LC14(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L92:
	leaq	.LC13(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6actors6DeleteEy, .-_ZN3wze6engine6actors6DeleteEy
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.actors.Purge(): Actor does not exist\nParams: Keep(length): %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5PurgeESt16initializer_listIyE:
.LFB8151:
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
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	8(%rdi), %rdx
	testq	%rbp, %rbp
	je	.L97
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L100:
	movq	(%r12,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L98
	cmpq	%rdx, %rcx
	jnb	.L99
	movq	16(%r13), %rsi
	cmpq	$0, (%rsi,%rcx,8)
	je	.L99
.L98:
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L100
.L97:
	cmpq	$1, %rdx
	jbe	.L101
	movq	16(%r13), %rcx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L102:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L103
.L109:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L104
	addq	$1, %rax
	cmpq	%rax, %rbp
	jne	.L109
.L103:
	movq	(%rcx,%rbx,8), %r14
	leaq	0(,%rbx,8), %r15
	testq	%r14, %r14
	je	.L106
	movq	%r14, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$320, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%r13), %rdx
	movq	16(%r13), %rcx
.L106:
	cmpq	%rdx, %rbx
	jnb	.L135
	movq	$0, (%rcx,%r15)
.L104:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L102
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L136
.L132:
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
.L136:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L115:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L134
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L137
	movq	%rsi, %rax
.L110:
	cmpq	$1, %rax
	jne	.L115
.L114:
	leaq	8(%r13), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	jmp	.L132
.L101:
	testq	%rdx, %rdx
	jne	.L132
	orq	$-1, %rsi
.L134:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L137:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L114
.L99:
	leaq	.LC15(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L135:
	movq	%rbx, %rsi
	jmp	.L134
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"wze::engine.actors.Purge(): Actor does not exist\nParams: Keep: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE:
.LFB8154:
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rsi), %rcx
	movq	8(%rdi), %rdi
	testq	%rcx, %rcx
	je	.L139
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$1, %rax
	cmpq	%rax, %rcx
	je	.L139
.L142:
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L140
	cmpq	%rdi, %rdx
	jnb	.L141
	movq	16(%r12), %r8
	cmpq	$0, (%r8,%rdx,8)
	jne	.L140
.L141:
	leaq	.LC16(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L139:
	cmpq	$1, %rdi
	jbe	.L143
	movq	16(%r12), %rsi
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L151:
	movq	8(%rbp), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.L144
.L145:
	cmpq	%rbx, (%rdx,%rax,8)
	je	.L146
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.L145
	.p2align 4,,10
	.p2align 3
.L144:
	movq	(%rsi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L148
	movq	%r13, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$320, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%r12), %rdi
	movq	16(%r12), %rsi
.L148:
	cmpq	%rdi, %rbx
	jnb	.L178
	movq	$0, (%rsi,%r14)
.L146:
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L150
	movq	0(%rbp), %rcx
	jmp	.L151
	.p2align 4,,10
	.p2align 3
.L150:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L179
.L175:
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
.L179:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L157:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L180
	cmpq	$0, (%rsi,%rax,8)
	jne	.L181
	movq	%rax, %rcx
.L152:
	cmpq	$1, %rcx
	jne	.L157
.L156:
	leaq	8(%r12), %rdi
	movq	%rcx, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
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
	testq	%rdi, %rdi
	jne	.L175
	orq	$-1, %rsi
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L181:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L156
.L178:
	movq	%rbx, %rsi
.L177:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L180:
	movq	%rax, %rsi
	jmp	.L177
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.actors[]: Illegal access to NULL Actor"
	.align 8
.LC18:
	.string	"wze::engine.actors[]: Actor does not exist\nParams: ID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actorsixEy
	.type	_ZN3wze6engine6actorsixEy, @function
_ZN3wze6engine6actorsixEy:
.LFB8155:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L187
	cmpq	8(%rdi), %rsi
	jnb	.L184
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L184
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L184:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L187:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actorsixEy, .-_ZN3wze6engine6actorsixEy
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
