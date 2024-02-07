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
.LFB8336:
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
.LFE8336:
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
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actorsD2Ev
	.type	_ZN3wze6engine6actorsD2Ev, @function
_ZN3wze6engine6actorsD2Ev:
.LFB8150:
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
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movq	%rbp, %rdi
	movl	$320, %esi
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
.LFE8150:
	.size	_ZN3wze6engine6actorsD2Ev, .-_ZN3wze6engine6actorsD2Ev
	.globl	_ZN3wze6engine6actorsD1Ev
	.set	_ZN3wze6engine6actorsD1Ev,_ZN3wze6engine6actorsD2Ev
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
	jp	.L77
	ucomisd	%xmm1, %xmm1
	jp	.L78
	ucomisd	%xmm2, %xmm2
	jp	.L79
	pxor	%xmm0, %xmm0
	comisd	(%rsp), %xmm0
	ja	.L49
	movq	8(%rdi), %rax
	movq	%rdi, %rbp
	movq	%rsi, %r15
	cmpq	$1, %rax
	jbe	.L51
	movq	16(%rdi), %rdx
	movl	$1, %ebx
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L52:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L51
.L55:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L52
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
	jnb	.L80
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax,%rbx,8)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L51:
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
	je	.L81
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
	jnc	.L82
	cmpq	$0, (%rdx,%rax,8)
	je	.L83
.L42:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L84
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
.L80:
	.cfi_restore_state
	movq	%rbx, %rsi
.L75:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L49:
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
.L79:
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
.L78:
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
.L77:
	leaq	.LC4(%rip), %rdi
	movl	%r14d, %ecx
	movl	%r13d, %edx
	movq	%r12, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L84:
	call	__stack_chk_fail@PLT
.L83:
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
.L82:
	orq	$-1, %rsi
	jmp	.L75
.L81:
	leaq	.LC10(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L65:
	movq	%rax, %rbp
	jmp	.L62
.L66:
	movq	%rax, %rbx
	jmp	.L60
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8152:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8152-.LLSDACSB8152
.LLSDACSB8152:
	.uleb128 .LEHB0-.LFB8152
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8152
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L66-.LFB8152
	.uleb128 0
	.uleb128 .LEHB2-.LFB8152
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8152
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L65-.LFB8152
	.uleb128 0
	.uleb128 .LEHB4-.LFB8152
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8152:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8152
	.type	_ZN3wze6engine6actors3NewEPvyddttd.cold, @function
_ZN3wze6engine6actors3NewEPvyddttd.cold:
.LFSB8152:
.L62:
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
	jne	.L76
	movq	%rbp, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L60:
	movq	24(%rsp), %rdi
	movl	$320, %esi
	call	_ZdlPvm@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L76
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L76:
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
	.uleb128 .LEHB5-.LCOLDB12
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8152:
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
.LFB8153:
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
	je	.L98
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	cmpq	8(%rdi), %rsi
	jnb	.L87
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L87
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$320, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdx
	cmpq	%rax, %rbx
	jnb	.L99
	movq	$0, (%rdx,%rbx,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	je	.L100
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
.L100:
	.cfi_restore_state
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L94:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L97
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L101
	cmpq	$1, %rsi
	jne	.L94
.L93:
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
.L101:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L93
.L99:
	movq	%rbx, %rsi
.L97:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L87:
	leaq	.LC14(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
	leaq	.LC13(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8153:
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
.LFB8154:
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
	movq	8(%rdi), %rcx
	testq	%rdx, %rdx
	je	.L103
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L106:
	movq	(%r12,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L104
	cmpq	%rcx, %rdx
	jnb	.L105
	movq	16(%r13), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.L105
.L104:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L106
.L103:
	cmpq	$1, %rcx
	jbe	.L107
	movq	16(%r13), %rdx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L108:
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.L110
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L141:
	addq	$1, %rax
	cmpq	%rax, %rbx
	je	.L111
.L110:
	cmpq	%rbp, (%r12,%rax,8)
	jne	.L141
	cmpq	%rax, %rbx
	je	.L111
.L112:
	addq	$1, %rbp
	cmpq	%rcx, %rbp
	jb	.L108
	cmpq	$0, -8(%rdx,%rcx,8)
	leaq	-1(%rcx), %r8
	je	.L142
.L138:
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
.L111:
	.cfi_restore_state
	movq	(%rdx,%rbp,8), %r14
	leaq	0(,%rbp,8), %r15
	testq	%r14, %r14
	je	.L113
	movq	%r14, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$320, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%r13), %rcx
	movq	16(%r13), %rdx
.L113:
	cmpq	%rcx, %rbp
	jnb	.L143
	movq	$0, (%rdx,%r15)
	jmp	.L112
.L142:
	movq	%rcx, %rax
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L121:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L140
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L144
	movq	%rsi, %rax
.L116:
	cmpq	$1, %rax
	jne	.L121
.L120:
	leaq	8(%r13), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	jmp	.L138
.L107:
	testq	%rcx, %rcx
	jne	.L138
	orq	$-1, %rsi
.L140:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L144:
	subq	%rax, %rcx
	movq	%rcx, %r8
	jmp	.L120
.L105:
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L143:
	movq	%rbp, %rsi
	jmp	.L140
	.cfi_endproc
.LFE8154:
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
.LFB8157:
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
	movq	(%rsi), %rdx
	movq	8(%rdi), %rdi
	testq	%rdx, %rdx
	je	.L146
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L147:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L146
.L149:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L147
	cmpq	%rdi, %rcx
	jnb	.L148
	movq	16(%r12), %r8
	cmpq	$0, (%r8,%rcx,8)
	jne	.L147
.L148:
	leaq	.LC16(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L146:
	cmpq	$1, %rdi
	jbe	.L150
	movq	16(%r12), %rsi
	movl	$1, %ebx
	testq	%rdx, %rdx
	je	.L154
	.p2align 4,,10
	.p2align 3
.L159:
	movq	8(%rbp), %rcx
	xorl	%eax, %eax
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L183:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L154
.L153:
	cmpq	%rbx, (%rcx,%rax,8)
	jne	.L183
	cmpq	%rax, %rdx
	je	.L154
	addq	$1, %rbx
	cmpq	%rdi, %rbx
	jnb	.L158
.L185:
	movq	0(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.L159
	.p2align 4,,10
	.p2align 3
.L154:
	movq	(%rsi,%rbx,8), %r13
	leaq	0(,%rbx,8), %r14
	testq	%r13, %r13
	je	.L156
	movq	%r13, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$320, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%r12), %rdi
	movq	16(%r12), %rsi
.L156:
	cmpq	%rdi, %rbx
	jnb	.L184
	addq	$1, %rbx
	movq	$0, (%rsi,%r14)
	cmpq	%rdi, %rbx
	jb	.L185
.L158:
	cmpq	$0, -8(%rsi,%rdi,8)
	leaq	-1(%rdi), %rdx
	je	.L186
.L180:
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
.L186:
	.cfi_restore_state
	movq	%rdi, %rcx
	jmp	.L160
	.p2align 4,,10
	.p2align 3
.L165:
	leaq	-1(%rcx), %rax
	cmpq	%rdi, %rax
	jnb	.L187
	cmpq	$0, (%rsi,%rax,8)
	jne	.L188
	movq	%rax, %rcx
.L160:
	cmpq	$1, %rcx
	jne	.L165
.L164:
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
.L150:
	.cfi_restore_state
	testq	%rdi, %rdi
	jne	.L180
	orq	$-1, %rsi
.L182:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L188:
	subq	%rcx, %rdi
	movq	%rdi, %rdx
	jmp	.L164
.L187:
	movq	%rax, %rsi
	jmp	.L182
.L184:
	movq	%rbx, %rsi
	jmp	.L182
	.cfi_endproc
.LFE8157:
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
.LFB8158:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L194
	cmpq	8(%rdi), %rsi
	jnb	.L191
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L191
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L191:
	.cfi_restore_state
	leaq	.LC18(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L194:
	leaq	.LC17(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8158:
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
