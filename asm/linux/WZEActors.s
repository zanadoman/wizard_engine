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
.LFB8349:
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
.LFE8349:
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
.LFB8163:
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
.LFE8163:
	.size	_ZN3wze6engine6actorsC2EPS0_, .-_ZN3wze6engine6actorsC2EPS0_
	.globl	_ZN3wze6engine6actorsC1EPS0_
	.set	_ZN3wze6engine6actorsC1EPS0_,_ZN3wze6engine6actorsC2EPS0_
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors.New(): X must not be NaN\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine.actors.New(): Y must not be NaN\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.actors.New(): Layer must not be NaN\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC8:
	.string	"wze::engine.actors.New(): Layer must not be less than 0\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.align 8
.LC9:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC10:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC11:
	.string	"wze::engine.actors.New(): Memory allocation failed\nParams: Data: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
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
.LFB8165:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8165
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	.cfi_offset 15, -24
	movzwl	%r8w, %r15d
	pushq	%r14
	.cfi_offset 14, -32
	movzwl	%cx, %r14d
	pushq	%r13
	.cfi_offset 13, -40
	movq	%rdx, %r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -80(%rbp)
	movq	%rsi, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm2, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm0
	jp	.L70
	ucomisd	%xmm1, %xmm1
	jp	.L71
	ucomisd	%xmm2, %xmm2
	jp	.L72
	pxor	%xmm0, %xmm0
	comisd	-72(%rbp), %xmm0
	ja	.L43
	movq	8(%rdi), %rax
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
	movl	$328, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	-80(%rbp), %rcx
	subq	$8, %rsp
	movl	%r14d, %r9d
	movsd	-72(%rbp), %xmm2
	movsd	-88(%rbp), %xmm1
	movq	%r13, %r8
	movq	%rbx, %rdx
	movq	(%rcx), %rsi
	pushq	%r15
	movq	%rax, %rdi
	movq	%rax, %r12
	movsd	-104(%rbp), %xmm0
	movq	-96(%rbp), %rcx
.LEHB1:
	.cfi_escape 0x2e,0x10
	call	_ZN3wze6engine6actors5actorC1EPS0_yPvyddttd@PLT
.LEHE1:
	popq	%rcx
	movq	-80(%rbp), %rcx
	popq	%rsi
	movq	16(%rcx), %rax
	cmpq	8(%rcx), %rbx
	jnb	.L73
	movq	%r12, (%rax,%rbx,8)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L45:
	movl	$328, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	-80(%rbp), %r12
	subq	$8, %rsp
	movl	%r14d, %r9d
	movsd	-72(%rbp), %xmm2
	movsd	-88(%rbp), %xmm1
	movq	%r13, %r8
	movq	%rax, %rdi
	movq	8(%r12), %rdx
	movq	(%r12), %rsi
	pushq	%r15
	movq	%rax, %rbx
	movsd	-104(%rbp), %xmm0
	movq	-96(%rbp), %rcx
.LEHB3:
	call	_ZN3wze6engine6actors5actorC1EPS0_yPvyddttd@PLT
.LEHE3:
	movq	8(%r12), %rcx
	popq	%rax
	popq	%rdx
	movq	16(%r12), %rdi
	movq	%rbx, -64(%rbp)
	leaq	1(%rcx), %rsi
	movq	%rcx, -112(%rbp)
	movq	%rsi, 8(%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 16(%r12)
	testq	%rax, %rax
	je	.L74
	movq	-80(%rbp), %rbx
	leaq	-64(%rbp), %rdi
	movq	8(%rbx), %rdx
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	8(%rbx), %rax
	movq	16(%rbx), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L75
	movq	(%rdx,%rcx,8), %r12
	testq	%r12, %r12
	je	.L76
.L36:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L77
	leaq	-40(%rbp), %rsp
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L73:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	movsd	-72(%rbp), %xmm2
	movsd	-88(%rbp), %xmm1
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movsd	-104(%rbp), %xmm0
	movq	-96(%rbp), %rsi
	movl	$3, %eax
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	movsd	-88(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	-96(%rbp), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L71:
	movsd	-72(%rbp), %xmm2
	movsd	-104(%rbp), %xmm0
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	-96(%rbp), %rsi
	leaq	.LC5(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L70:
	leaq	.LC4(%rip), %rdi
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L77:
	call	__stack_chk_fail@PLT
.L76:
	movsd	-72(%rbp), %xmm2
	movsd	-88(%rbp), %xmm1
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movsd	-104(%rbp), %xmm0
	movq	-96(%rbp), %rsi
	movq	%r13, %rdx
	movl	$3, %eax
	leaq	.LC11(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	leaq	.LC9(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L74:
	leaq	.LC10(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L59:
	movq	%rax, %r14
	jmp	.L56
.L60:
	movq	%rax, %rbx
	jmp	.L54
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8165-.LLSDACSB8165
.LLSDACSB8165:
	.uleb128 .LEHB0-.LFB8165
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8165
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L60-.LFB8165
	.uleb128 0
	.uleb128 .LEHB2-.LFB8165
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8165
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L59-.LFB8165
	.uleb128 0
	.uleb128 .LEHB4-.LFB8165
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8165:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8165
	.type	_ZN3wze6engine6actors3NewEPvyddttd.cold, @function
_ZN3wze6engine6actors3NewEPvyddttd.cold:
.LFSB8165:
.L56:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	movl	$328, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L69
	movq	%r14, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.L54:
	movl	$328, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L69
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L69:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8165:
	.section	.gcc_except_table
.LLSDAC8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8165-.LLSDACSBC8165
.LLSDACSBC8165:
	.uleb128 .LEHB5-.LCOLDB12
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8165:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors3NewEPvyddttd, .-_ZN3wze6engine6actors3NewEPvyddttd
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors3NewEPvyddttd.cold, .-_ZN3wze6engine6actors3NewEPvyddttd.cold
.LCOLDE12:
	.text
.LHOTE12:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors6DeleteEy
	.type	_ZN3wze6engine6actors6DeleteEy, @function
_ZN3wze6engine6actors6DeleteEy:
.LFB8166:
	.cfi_startproc
	cmpq	8(%rdi), %rsi
	jb	.L101
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L101:
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
	movq	16(%rdi), %rax
	movq	%rdi, %rbx
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L80
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$328, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rbx), %rax
	movq	16(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L102
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L80
	cmpq	$1, %rax
	je	.L80
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L86:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L103
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L104
	cmpq	$1, %rsi
	jne	.L86
.L85:
	leaq	8(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
.L80:
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
.L104:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L85
.L103:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L102:
	leaq	.LC9(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors6DeleteEy, .-_ZN3wze6engine6actors6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5PurgeESt16initializer_listIyE:
.LFB8167:
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
	movq	8(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L106
	movq	16(%rdi), %rcx
	movq	%rdi, %r14
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L113:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L108
.L107:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L109
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L107
.L108:
	movq	(%rcx,%rbx,8), %r13
	leaq	0(,%rbx,8), %r15
	testq	%r13, %r13
	je	.L111
	movq	%r13, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movl	$328, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%r14), %rdx
	movq	16(%r14), %rcx
.L111:
	cmpq	%rdx, %rbx
	jnb	.L133
	movq	$0, (%rcx,%r15)
.L109:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L113
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L134
.L130:
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
.L134:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L119:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L132
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L135
	movq	%rsi, %rax
.L114:
	cmpq	$1, %rax
	jne	.L119
.L118:
	leaq	8(%r14), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	jmp	.L130
.L106:
	testq	%rdx, %rdx
	jne	.L130
	orq	$-1, %rsi
.L132:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L135:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L118
.L133:
	movq	%rbx, %rsi
	jmp	.L132
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"wze::engine.actors.Purge(): KeepActorIDs must not be NULL\nParams: KeepActorIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE:
.LFB8168:
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
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	testq	%rsi, %rsi
	je	.L137
	movq	8(%rdi), %rcx
	movq	%rdi, %r13
	cmpq	$1, %rcx
	jbe	.L168
	movq	16(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L146:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L140
.L141:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L142
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L141
	.p2align 4,,10
	.p2align 3
.L140:
	movq	(%rdi,%rbx,8), %r12
	leaq	0(,%rbx,8), %r14
	testq	%r12, %r12
	je	.L144
	movq	%r12, %rdi
	call	_ZN3wze6engine6actors5actorD1Ev@PLT
	movq	%r12, %rdi
	movl	$328, %esi
	call	_ZdlPvm@PLT
	movq	8(%r13), %rcx
	movq	16(%r13), %rdi
.L144:
	cmpq	%rcx, %rbx
	jnb	.L169
	movq	$0, (%rdi,%r14)
.L142:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L146
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L170
.L165:
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
.L170:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L152:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L167
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L171
	movq	%rsi, %rax
.L147:
	cmpq	$1, %rax
	jne	.L152
.L151:
	leaq	8(%r13), %rdi
	movq	%rax, %rsi
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
.L168:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L165
	orq	$-1, %rsi
.L167:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L171:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L151
.L137:
	leaq	.LC13(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L169:
	movq	%rbx, %rsi
	jmp	.L167
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[]: Illegal access to NULL Actor\nParams: ActorID: %lld\n"
	.align 8
.LC15:
	.string	"wze::engine.actors[]: Actor does not exist\nParams: ActorID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actorsixEy
	.type	_ZN3wze6engine6actorsixEy, @function
_ZN3wze6engine6actorsixEy:
.LFB8169:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L177
	cmpq	8(%rdi), %rsi
	jnb	.L174
	movq	16(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L174
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L174:
	.cfi_restore_state
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L177:
	leaq	.LC14(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
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
