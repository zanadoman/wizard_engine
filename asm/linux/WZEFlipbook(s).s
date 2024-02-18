	.file	"WZEFlipbook(s).cpp"
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
	.type	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0, @function
_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0:
.LFB8374:
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
.LFE8374:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array(): Memory allocation failed\nParams: Elements(size, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.type	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_, @function
_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_:
.LFB8157:
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
.LFE8157:
	.size	_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_, .-_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.globl	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_
	.set	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_,_ZN3wze6engine6actors5actor9flipbooksC2EPS0_PS2_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.type	_ZN3wze6engine6actors5actor9flipbooksD2Ev, @function
_ZN3wze6engine6actors5actor9flipbooksD2Ev:
.LFB8160:
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
	testq	%rdi, %rdi
	je	.L39
	call	_ZdaPv@PLT
.L39:
	movq	%rbp, %rdi
	movl	$120, %esi
	call	_ZdlPvm@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
.L38:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L40
.L37:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6actors5actor9flipbooksD2Ev, .-_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.globl	_ZN3wze6engine6actors5actor9flipbooksD1Ev
	.set	_ZN3wze6engine6actors5actor9flipbooksD1Ev,_ZN3wze6engine6actors5actor9flipbooksD2Ev
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC5:
	.string	"wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC6:
	.string	"wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %ld\n"
	.align 8
.LC9:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC10:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.align 8
.LC11:
	.string	"wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE:
.LFB8162:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8162
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L92
	movl	%esi, %r15d
	cmpq	$1, %rcx
	jbe	.L93
	movq	%rdi, %r12
	movq	%rdx, %rbp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L51:
	movq	0(%rbp,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.L52
	movq	(%r12), %rcx
	cmpq	336(%rcx), %rdx
	jnb	.L53
	movq	344(%rcx), %rcx
	cmpq	$0, (%rcx,%rdx,8)
	je	.L53
.L52:
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L51
	movq	16(%r12), %rax
	cmpq	$1, %rax
	jbe	.L54
	movq	24(%r12), %rdx
	movl	$1, %r13d
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$1, %r13
	cmpq	%r13, %rax
	je	.L54
.L61:
	cmpq	$0, (%rdx,%r13,8)
	jne	.L55
	movl	$120, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movdqu	(%r12), %xmm3
	pxor	%xmm0, %xmm0
	movabsq	$283124260995072, %rsi
	movq	%rax, %r14
	movq	8(%r12), %rax
	movl	$-1, 20(%r14)
	movl	256(%rax), %edx
	movupd	224(%rax), %xmm4
	movq	%rbx, %rax
	movq	%rsi, 32(%r14)
	shrq	$60, %rax
	movq	$0x000000000, 24(%r14)
	movl	%edx, 16(%r14)
	movq	%r13, 40(%r14)
	movl	%r15d, 80(%r14)
	movq	$0, 88(%r14)
	movl	$0, 96(%r14)
	movq	%rbx, 104(%r14)
	movups	%xmm3, (%r14)
	movups	%xmm4, 48(%r14)
	movups	%xmm0, 64(%r14)
	jne	.L56
	salq	$3, %rbx
	movq	%rbx, %rdi
.LEHB1:
	call	_Znam@PLT
.LEHE1:
	movq	%rax, 112(%r14)
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	call	memcpy@PLT
	movq	24(%r12), %rax
	cmpq	16(%r12), %r13
	jnb	.L94
	movq	%r14, (%rax,%r13,8)
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L54:
	movl	$120, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	16(%r12), %rdx
	movdqu	(%r12), %xmm1
	movabsq	$283124260995072, %rsi
	movq	%rax, %r13
	movq	8(%r12), %rax
	pxor	%xmm0, %xmm0
	movl	$-1, 20(%r13)
	movl	256(%rax), %ecx
	movupd	224(%rax), %xmm2
	movq	%rbx, %rax
	movq	%rsi, 32(%r13)
	shrq	$60, %rax
	movq	$0x000000000, 24(%r13)
	movl	%ecx, 16(%r13)
	movq	%rdx, 40(%r13)
	movl	%r15d, 80(%r13)
	movq	$0, 88(%r13)
	movl	$0, 96(%r13)
	movq	%rbx, 104(%r13)
	movups	%xmm1, 0(%r13)
	movups	%xmm2, 48(%r13)
	movups	%xmm0, 64(%r13)
	jne	.L62
	leaq	0(,%rbx,8), %r14
	movq	%r14, %rdi
.LEHB3:
	call	_Znam@PLT
.LEHE3:
	movq	%rax, 112(%r13)
	movq	%rax, %rdi
	movq	%r14, %rdx
	movq	%rbp, %rsi
	call	memcpy@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdi
	movq	%r13, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%r12)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.L95
	movq	16(%r12), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB4:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L96
	movq	(%rdx,%rcx,8), %r14
	testq	%r14, %r14
	je	.L97
.L49:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L98
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
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
.L53:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	movq	%rbx, %rdx
	movl	%r15d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L93:
	leaq	.LC5(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L92:
	leaq	.LC4(%rip), %rdi
	movq	%rcx, %rdx
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L98:
	call	__stack_chk_fail@PLT
.L97:
	leaq	.LC11(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L96:
	leaq	.LC9(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L95:
	leaq	.LC10(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L94:
	leaq	.LC9(%rip), %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE4:
	movl	$1, %edi
	call	exit@PLT
.L84:
	jmp	.L85
.L82:
	jmp	.L83
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8162-.LLSDACSB8162
.LLSDACSB8162:
	.uleb128 .LEHB0-.LFB8162
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8162
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L82-.LFB8162
	.uleb128 0
	.uleb128 .LEHB2-.LFB8162
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8162
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L84-.LFB8162
	.uleb128 0
	.uleb128 .LEHB4-.LFB8162
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8162:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8162
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold:
.LFSB8162:
.L62:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L91
.LEHB5:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE5:
.L56:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L91
.LEHB6:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE6:
.L76:
.L85:
	movl	$120, %esi
	movq	%r13, %rdi
	movq	%rax, %rbx
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	je	.L72
.L91:
	call	__stack_chk_fail@PLT
.L75:
.L83:
	movl	$120, %esi
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L91
.L72:
	movq	%rbx, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
	.cfi_endproc
.LFE8162:
	.section	.gcc_except_table
.LLSDAC8162:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8162-.LLSDACSBC8162
.LLSDACSBC8162:
	.uleb128 .LEHB5-.LCOLDB13
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L76-.LCOLDB13
	.uleb128 0
	.uleb128 .LEHB6-.LCOLDB13
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L75-.LCOLDB13
	.uleb128 0
	.uleb128 .LEHB7-.LCOLDB13
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8162:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjSt16initializer_listIyE.cold
.LCOLDE13:
	.text
.LHOTE13:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.type	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy, @function
_ZN3wze6engine6actors5actor9flipbooks6DeleteEy:
.LFB8166:
	.cfi_startproc
	cmpq	16(%rdi), %rsi
	jb	.L126
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L126:
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
	movq	24(%rdi), %rax
	movq	%rdi, %rbx
	movq	(%rax,%rsi,8), %r12
	testq	%r12, %r12
	je	.L101
	movq	112(%r12), %rdi
	testq	%rdi, %rdi
	je	.L103
	call	_ZdaPv@PLT
.L103:
	movl	$120, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	cmpq	%rax, %rbp
	jnb	.L127
	movq	$0, (%rdx,%rbp,8)
	cmpq	$0, -8(%rdx,%rax,8)
	leaq	-1(%rax), %r8
	jne	.L101
	cmpq	$1, %rax
	je	.L101
	movq	%rax, %rsi
	.p2align 4,,10
	.p2align 3
.L108:
	movq	%rsi, %rcx
	subq	$1, %rsi
	cmpq	%rax, %rsi
	jnb	.L128
	cmpq	$0, (%rdx,%rsi,8)
	jne	.L129
	cmpq	$1, %rsi
	jne	.L108
.L107:
	leaq	16(%rbx), %rdi
	movq	%r8, %rdx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
.L101:
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
.L129:
	.cfi_restore_state
	subq	%rcx, %rax
	movq	%rcx, %rsi
	movq	%rax, %r8
	jmp	.L107
.L128:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L127:
	leaq	.LC9(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor9flipbooks6DeleteEy, .-_ZN3wze6engine6actors5actor9flipbooks6DeleteEy
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE:
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
	movq	16(%rdi), %rdx
	cmpq	$1, %rdx
	jbe	.L131
	movq	24(%rdi), %rcx
	movq	%rdi, %r15
	movq	%rsi, %r12
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L139:
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.L133
.L132:
	cmpq	%rbx, (%r12,%rax,8)
	je	.L134
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L132
.L133:
	movq	(%rcx,%rbx,8), %r14
	leaq	0(,%rbx,8), %r13
	testq	%r14, %r14
	je	.L136
	movq	112(%r14), %rdi
	testq	%rdi, %rdi
	je	.L137
	call	_ZdaPv@PLT
.L137:
	movl	$120, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	16(%r15), %rdx
	movq	24(%r15), %rcx
.L136:
	cmpq	%rdx, %rbx
	jnb	.L162
	movq	$0, (%rcx,%r13)
.L134:
	addq	$1, %rbx
	cmpq	%rdx, %rbx
	jb	.L139
	cmpq	$0, -8(%rcx,%rdx,8)
	leaq	-1(%rdx), %r8
	je	.L163
.L159:
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
.L163:
	.cfi_restore_state
	movq	%rdx, %rax
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L145:
	leaq	-1(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L161
	cmpq	$0, (%rcx,%rsi,8)
	jne	.L164
	movq	%rsi, %rax
.L140:
	cmpq	$1, %rax
	jne	.L145
.L144:
	leaq	16(%r15), %rdi
	movq	%r8, %rdx
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
	jmp	.L159
.L131:
	testq	%rdx, %rdx
	jne	.L159
	orq	$-1, %rsi
.L161:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L164:
	subq	%rax, %rdx
	movq	%rdx, %r8
	jmp	.L144
.L162:
	movq	%rbx, %rsi
	jmp	.L161
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks5PurgeESt16initializer_listIyE
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.actors[].flipbooks.Purge(): KeepFlipbookIDs must not be NULL\nParams: KeepFlipbookIDs: %p\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE:
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
	je	.L166
	movq	16(%rdi), %rcx
	movq	%rdi, %r14
	cmpq	$1, %rcx
	jbe	.L201
	movq	24(%rdi), %rdi
	movq	%rsi, %rbp
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L176:
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.L169
.L170:
	cmpq	(%rsi,%rax,8), %rbx
	je	.L171
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L170
	.p2align 4,,10
	.p2align 3
.L169:
	movq	(%rdi,%rbx,8), %r12
	leaq	0(,%rbx,8), %r13
	testq	%r12, %r12
	je	.L173
	movq	112(%r12), %rdi
	testq	%rdi, %rdi
	je	.L174
	call	_ZdaPv@PLT
.L174:
	movq	%r12, %rdi
	movl	$120, %esi
	call	_ZdlPvm@PLT
	movq	16(%r14), %rcx
	movq	24(%r14), %rdi
.L173:
	cmpq	%rcx, %rbx
	jnb	.L202
	movq	$0, (%rdi,%r13)
.L171:
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.L176
	cmpq	$0, -8(%rdi,%rcx,8)
	leaq	-1(%rcx), %rdx
	je	.L203
.L198:
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
.L203:
	.cfi_restore_state
	movq	%rcx, %rax
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L182:
	leaq	-1(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L200
	cmpq	$0, (%rdi,%rsi,8)
	jne	.L204
	movq	%rsi, %rax
.L177:
	cmpq	$1, %rax
	jne	.L182
.L181:
	leaq	16(%r14), %rdi
	movq	%rax, %rsi
	call	_ZN3neo5arrayIPN3wze6engine6actors5actor9flipbooks8flipbookEE6RemoveEyy.isra.0
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
.L201:
	.cfi_restore_state
	testq	%rcx, %rcx
	jne	.L198
	orq	$-1, %rsi
.L200:
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L204:
	subq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.L181
.L166:
	leaq	.LC14(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L202:
	movq	%rbx, %rsi
	jmp	.L200
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks5PurgeEPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: FlipbookID: %lld\n"
	.align 8
.LC16:
	.string	"wze::engine.actors[].flipbooks[]: Flipbook does not exist\nParams: FlipbookID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooksixEy
	.type	_ZN3wze6engine6actors5actor9flipbooksixEy, @function
_ZN3wze6engine6actors5actor9flipbooksixEy:
.LFB8169:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.L210
	cmpq	16(%rdi), %rsi
	jnb	.L207
	movq	24(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.L207
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L207:
	.cfi_restore_state
	leaq	.LC16(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L210:
	leaq	.LC15(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor9flipbooksixEy, .-_ZN3wze6engine6actors5actor9flipbooksixEy
	.section	.text.unlikely
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE:
.LFB8171:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pxor	%xmm0, %xmm0
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movl	256(%rdx), %eax
	movupd	224(%rdx), %xmm1
	movq	%rsi, (%rdi)
	movq	56(%rsp), %rbp
	movq	%rdx, 8(%rdi)
	movl	%eax, 16(%rdi)
	movq	48(%rsp), %r13
	movabsq	$283124260995072, %rax
	movq	%rax, 32(%rdi)
	movq	%rbp, %rax
	shrq	$60, %rax
	movl	$-1, 20(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rcx, 40(%rdi)
	movl	%r8d, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movq	%rbp, 104(%rdi)
	movups	%xmm1, 48(%rdi)
	movups	%xmm0, 64(%rdi)
	jne	.L212
	leaq	0(,%rbp,8), %r12
	movq	%rdi, %rbx
	movq	%r12, %rdi
	call	_Znam@PLT
	movq	%rax, 112(%rbx)
	movq	%rax, %rdi
	testq	%rbp, %rbp
	je	.L217
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rdx
	movq	%r13, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	memcpy@PLT
	.p2align 4,,10
	.p2align 3
.L217:
	.cfi_restore_state
	addq	$8, %rsp
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
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold:
.LFSB8171:
.L212:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE8171:
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE.cold
.LCOLDE17:
	.text
.LHOTE17:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjSt16initializer_listIyE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjSt16initializer_listIyE
	.section	.text.unlikely
	.align 2
.LCOLDB18:
	.text
.LHOTB18:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE:
.LFB8174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	256(%rdx), %eax
	movupd	224(%rdx), %xmm2
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%eax, 16(%rdi)
	movabsq	$283124260995072, %rax
	movq	%rax, 32(%rdi)
	movl	$-1, 20(%rdi)
	movq	$0x000000000, 24(%rdi)
	movq	%rcx, 40(%rdi)
	movl	%r8d, 80(%rdi)
	movq	$0, 88(%rdi)
	movl	$0, 96(%rdi)
	movups	%xmm2, 48(%rdi)
	movups	%xmm0, 64(%rdi)
	movq	(%r9), %rdi
	movq	%rdi, %rax
	movq	%rdi, 104(%rbx)
	shrq	$60, %rax
	jne	.L219
	movq	%r9, %rbp
	salq	$3, %rdi
	call	_Znam@PLT
	movq	0(%rbp), %rdi
	movq	%rax, 112(%rbx)
	testq	%rdi, %rdi
	je	.L218
	leaq	-1(%rdi), %rdx
	movq	8(%rbp), %rcx
	cmpq	$2, %rdx
	jbe	.L228
	leaq	8(%rcx), %rsi
	xorl	%edx, %edx
	cmpq	%rsi, %rax
	jne	.L236
	.p2align 4,,10
	.p2align 3
.L226:
	movq	(%rcx,%rdx,8), %rsi
	movq	%rsi, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	jne	.L226
.L218:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L236:
	.cfi_restore_state
	movq	%rdi, %rsi
	shrq	%rsi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L222:
	movdqu	(%rcx,%rdx), %xmm1
	movups	%xmm1, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jne	.L222
	movq	%rdi, %rdx
	andq	$-2, %rdx
	andl	$1, %edi
	je	.L218
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L228:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L226
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold:
.LFSB8174:
.L219:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	call	__cxa_throw_bad_array_new_length@PLT
	.cfi_endproc
.LFE8174:
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE.cold
.LCOLDE18:
	.text
.LHOTE18:
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE,_ZN3wze6engine6actors5actor9flipbooks8flipbookC2EPS0_PS2_yjPN3neo5arrayIyEE
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs: %p\n"
	.align 8
.LC20:
	.string	"wze::engine.actors[].flipbooks.New(): TextureIDs must not be NULL\nParams: Delay: %d, TextureIDs: %p\n"
	.align 8
.LC21:
	.string	"wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs: %p\n"
	.align 8
.LC22:
	.string	"wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs: %p\n"
	.align 8
.LC23:
	.string	"wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: Delay: %d, TextureIDs: %p\n"
	.section	.text.unlikely
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE:
.LFB8165:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8165
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
	testl	%esi, %esi
	je	.L267
	movl	%esi, %r13d
	testq	%rdx, %rdx
	je	.L268
	movq	(%rdx), %rdx
	cmpq	$1, %rdx
	jbe	.L269
	movq	8(%r12), %rsi
	movq	%rdi, %rbp
	xorl	%eax, %eax
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L241:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L270
.L243:
	movq	(%rsi,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L241
	movq	0(%rbp), %rdi
	cmpq	336(%rdi), %rcx
	jnb	.L242
	movq	344(%rdi), %rdi
	cmpq	$0, (%rdi,%rcx,8)
	jne	.L241
.L242:
	leaq	.LC22(%rip), %rdi
	movq	%r12, %rdx
	movl	%r13d, %esi
	xorl	%eax, %eax
.LEHB8:
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L270:
	movq	16(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L244
	movq	24(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L245:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	je	.L244
.L248:
	cmpq	$0, (%rdx,%rbx,8)
	jne	.L245
	movl	$120, %edi
	call	_Znwm@PLT
.LEHE8:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rsi
	movq	%r12, %r9
	movl	%r13d, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB9:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
.LEHE9:
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %rbx
	jnb	.L271
	movq	%r14, (%rax,%rbx,8)
.L237:
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L272
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r14, %rax
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
.L244:
	.cfi_restore_state
	movl	$120, %edi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	16(%rbp), %rcx
	movq	8(%rbp), %rdx
	movq	%r12, %r9
	movq	0(%rbp), %rsi
	movl	%r13d, %r8d
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB11:
	call	_ZN3wze6engine6actors5actor9flipbooks8flipbookC1EPS0_PS2_yjPN3neo5arrayIyEE
.LEHE11:
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdi
	movq	%rbx, (%rsp)
	leaq	1(%rax), %rsi
	movq	%rsi, 16(%rbp)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L273
	movq	16(%rbp), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
.LEHB12:
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	-1(%rax), %rcx
	testq	%rax, %rax
	je	.L274
	movq	(%rdx,%rcx,8), %r14
	testq	%r14, %r14
	jne	.L237
	leaq	.LC23(%rip), %rdi
	movq	%r12, %rdx
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L273:
	leaq	.LC10(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L274:
	leaq	.LC9(%rip), %rdi
	orq	$-1, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L269:
	leaq	.LC21(%rip), %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L268:
	leaq	.LC20(%rip), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L267:
	leaq	.LC19(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L271:
	leaq	.LC9(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE12:
	movl	$1, %edi
	call	exit@PLT
.L272:
	call	__stack_chk_fail@PLT
.L259:
	movq	%rax, %rbp
	jmp	.L255
.L258:
	movq	%rax, %rbx
	jmp	.L253
	.section	.gcc_except_table
.LLSDA8165:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8165-.LLSDACSB8165
.LLSDACSB8165:
	.uleb128 .LEHB8-.LFB8165
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB8165
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L258-.LFB8165
	.uleb128 0
	.uleb128 .LEHB10-.LFB8165
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8165
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L259-.LFB8165
	.uleb128 0
	.uleb128 .LEHB12-.LFB8165
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8165:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8165
	.type	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, @function
_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold:
.LFSB8165:
.L255:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	movl	$120, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L266
	movq	%rbp, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.L253:
	movl	$120, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L266
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE13:
.L266:
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
	.uleb128 .LEHB13-.LCOLDB24
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSEC8165:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold, .-_ZN3wze6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE.cold
.LCOLDE24:
	.text
.LHOTE24:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev:
.LFB8177:
	.cfi_startproc
	movq	112(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L275
	jmp	_ZdaPv@PLT
	.p2align 4,,10
	.p2align 3
.L275:
	ret
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev, .-_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev
	.set	_ZN3wze6engine6actors5actor9flipbooks8flipbookD1Ev,_ZN3wze6engine6actors5actor9flipbooks8flipbookD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv:
.LFB8179:
	.cfi_startproc
	movq	40(%rdi), %rax
	ret
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv:
.LFB8180:
	.cfi_startproc
	movsd	48(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"wze::engine.actors[].flipbooks[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd:
.LFB8181:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L297
	movq	8(%rdi), %rax
	movsd	56(%rdi), %xmm3
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L282
	jne	.L282
	ucomisd	%xmm3, %xmm1
	jp	.L282
	jne	.L282
	movq	$0x000000000, 64(%rdi)
.L290:
	pxor	%xmm0, %xmm0
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L282:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movapd	%xmm0, %xmm4
	movsd	56(%rbx), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm0, %xmm2
	jp	.L286
	jne	.L286
	ucomisd	%xmm3, %xmm1
	jp	.L286
	je	.L290
.L286:
	movsd	%xmm2, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm2
.L289:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 48(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L297:
	.cfi_restore_state
	leaq	.LC25(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv:
.LFB8182:
	.cfi_startproc
	movsd	56(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"wze::engine.actors[].flipbooks[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd:
.LFB8183:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm3
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L317
	movq	8(%rdi), %rax
	movsd	48(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	ucomisd	%xmm2, %xmm0
	jp	.L302
	jne	.L302
	ucomisd	%xmm1, %xmm3
	jp	.L302
	jne	.L302
	movq	$0x000000000, 64(%rdi)
.L310:
	pxor	%xmm0, %xmm0
	jmp	.L309
	.p2align 4,,10
	.p2align 3
.L302:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	movq	8(%rbx), %rax
	movsd	48(%rbx), %xmm2
	movapd	%xmm0, %xmm4
	movsd	8(%rsp), %xmm3
	movsd	224(%rax), %xmm0
	movsd	232(%rax), %xmm1
	movsd	%xmm4, 64(%rbx)
	ucomisd	%xmm2, %xmm0
	jp	.L306
	jne	.L306
	ucomisd	%xmm1, %xmm3
	jp	.L306
	je	.L310
.L306:
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	8(%rsp), %xmm3
.L309:
	movsd	%xmm0, 72(%rbx)
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 56(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L317:
	.cfi_restore_state
	leaq	.LC26(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv:
.LFB8184:
	.cfi_startproc
	movsd	64(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8184:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetOffsetLengthEv
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"wze::engine.actors[].flipbooks[].SetOffsetLength(): OffsetLength must not be NaN\nParams: OffsetLength: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd:
.LFB8185:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm1
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L325
	movq	8(%rdi), %rax
	movsd	72(%rdi), %xmm2
	movq	%rdi, %rbx
	movsd	%xmm1, 8(%rsp)
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm1
	movsd	%xmm0, 48(%rbx)
	movsd	72(%rbx), %xmm2
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movsd	8(%rsp), %xmm1
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, 56(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movapd	%xmm1, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L325:
	.cfi_restore_state
	leaq	.LC27(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8185:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook15SetOffsetLengthEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv:
.LFB8186:
	.cfi_startproc
	movsd	72(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8186:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook14GetOffsetAngleEv
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"wze::engine.actors[].flipbooks[].SetOffsetAngle(): OffsetAngle must not be NaN\nParams: OffsetAngle %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd:
.LFB8187:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movapd	%xmm0, %xmm2
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	ucomisd	%xmm0, %xmm0
	jp	.L333
	movq	8(%rdi), %rax
	movsd	64(%rdi), %xmm1
	movq	%rdi, %rbx
	movsd	%xmm2, 8(%rsp)
	movsd	224(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	8(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 48(%rbx)
	movsd	64(%rbx), %xmm1
	movsd	232(%rax), %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movsd	8(%rsp), %xmm2
	movsd	%xmm0, 56(%rbx)
	movsd	%xmm2, 72(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movapd	%xmm2, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L333:
	.cfi_restore_state
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8187:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook14SetOffsetAngleEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv:
.LFB8188:
	.cfi_startproc
	movl	80(%rdi), %eax
	ret
	.cfi_endproc
.LFE8188:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8GetDelayEv
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"wze::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\nParams: Delay: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj:
.LFB8189:
	.cfi_startproc
	movl	%esi, %eax
	testl	%esi, %esi
	je	.L340
	movl	%esi, 80(%rdi)
	ret
.L340:
	pushq	%rdx
	.cfi_def_cfa_offset 16
	leaq	.LC29(%rip), %rdi
	xorl	%esi, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8189:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook8SetDelayEj
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv:
.LFB8190:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	$0, 39(%rdi)
	jne	.L341
	movzbl	38(%rdi), %eax
	testb	%al, %al
	je	.L344
.L341:
	ret
	.p2align 4,,10
	.p2align 3
.L344:
	movq	104(%rdi), %rax
	subq	$1, %rax
	cmpq	88(%rdi), %rax
	setne	%al
	ret
	.cfi_endproc
.LFE8190:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook9IsPlayingEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv:
.LFB8191:
	.cfi_startproc
	movq	88(%rdi), %rax
	ret
	.cfi_endproc
.LFE8191:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook15GetCurrentFrameEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
	.type	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv, @function
_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv:
.LFB8192:
	.cfi_startproc
	movq	$0, 88(%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8192:
	.size	_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv, .-_ZN3wze6engine6actors5actor9flipbooks8flipbook5ResetEv
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
