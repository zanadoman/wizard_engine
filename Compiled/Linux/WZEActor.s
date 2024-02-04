	.file	"WZEActor.cpp"
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
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC6:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.type	_ZN3wze6engine6actors5actorC2EPS0_yddttd, @function
_ZN3wze6engine6actors5actorC2EPS0_yddttd:
.LFB2232:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2232
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movzwl	%r8w, %edx
	movapd	%xmm0, %xmm4
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	unpcklpd	%xmm1, %xmm4
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r8d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	salq	$16, %rbp
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movsd	%xmm2, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movzwl	%cx, %eax
	movq	%rsi, (%rdi)
	orq	%rax, %rbp
	movaps	%xmm4, (%rsp)
	salq	$16, %rbp
	orq	%rdx, %rbp
	movq	%rdi, %rdx
	salq	$16, %rbp
	orq	%rax, %rbp
	leaq	8(%rdi), %rax
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_@PLT
.LEHE0:
	leaq	40(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB1:
	call	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_@PLT
.LEHE1:
	leaq	72(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
.LEHB2:
	call	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_@PLT
.LEHE2:
	leaq	104(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
.LEHB3:
	call	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_@PLT
.LEHE3:
	pxor	%xmm6, %xmm6
	pxor	%xmm7, %xmm7
	movapd	(%rsp), %xmm4
	movq	(%rbx), %rax
	movw	%r12w, 200(%rbx)
	movzwl	%r12w, %r12d
	movsd	24(%rsp), %xmm5
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm7
	movw	%r13w, 202(%rbx)
	movzwl	%r13w, %r13d
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r13d, %xmm6
	movq	%rbp, 234(%rbx)
	leaq	576(%rax), %rdi
	movb	$0, 152(%rbx)
	movq	%r15, 160(%rbx)
	movb	$0, 232(%rbx)
	movapd	%xmm7, %xmm2
	movq	%xmm7, %r12
	movups	%xmm0, 136(%rbx)
	movapd	%xmm6, %xmm3
	movapd	%xmm1, %xmm0
	movq	%xmm6, %rbp
	movq	$0x000000000, 208(%rbx)
	movq	$0x000000000, 224(%rbx)
	movups	%xmm4, 168(%rbx)
	movups	%xmm4, 184(%rbx)
	movsd	%xmm5, 216(%rbx)
.LEHB4:
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC4(%rip), %xmm0
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movq	%rbp, %xmm3
	movq	%r12, %xmm2
	leaq	576(%rax), %rdi
	movsd	%xmm0, 248(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movq	%rbp, %xmm3
	movsd	%xmm0, 256(%rbx)
	movapd	%xmm2, %xmm1
	movq	%r12, %xmm0
	leaq	576(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	movq	%rbx, 64(%rsp)
	movsd	%xmm0, 264(%rbx)
	cmpq	$0, 560(%rax)
	movq	568(%rax), %rbx
	je	.L46
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%rbx)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L47
	movq	(%rbx), %rdx
	leaq	64(%rsp), %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L48
	addq	$88, %rsp
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
.L46:
	.cfi_restore_state
	xorl	%esi, %esi
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L33:
	movl	$1, %edi
	call	exit@PLT
.L48:
	call	__stack_chk_fail@PLT
.L47:
	movl	$1, %edx
	movl	$8, %esi
	leaq	.LC6(%rip), %rdi
	call	printf@PLT
.LEHE4:
	jmp	.L33
.L43:
	movq	%rax, %rbx
	jmp	.L34
.L42:
	movq	%rax, %rbx
	jmp	.L35
.L41:
	movq	%rax, %rbx
	jmp	.L36
.L40:
	movq	%rax, %rbx
	jmp	.L37
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2232-.LLSDACSB2232
.LLSDACSB2232:
	.uleb128 .LEHB0-.LFB2232
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2232
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L40-.LFB2232
	.uleb128 0
	.uleb128 .LEHB2-.LFB2232
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L41-.LFB2232
	.uleb128 0
	.uleb128 .LEHB3-.LFB2232
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L42-.LFB2232
	.uleb128 0
	.uleb128 .LEHB4-.LFB2232
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L43-.LFB2232
	.uleb128 0
.LLSDACSE2232:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2232
	.type	_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold, @function
_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold:
.LFSB2232:
.L34:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	56(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor5textsD1Ev@PLT
.L35:
	movq	48(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev@PLT
.L36:
	movq	40(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor8texturesD1Ev@PLT
.L37:
	movq	32(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor6colorsD1Ev@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L49
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L49:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2232:
	.section	.gcc_except_table
.LLSDAC2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2232-.LLSDACSBC2232
.LLSDACSBC2232:
	.uleb128 .LEHB5-.LCOLDB8
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2232:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actorC2EPS0_yddttd, .-_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold, .-_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold
.LCOLDE8:
	.text
.LHOTE8:
	.globl	_ZN3wze6engine6actors5actorC1EPS0_yddttd
	.set	_ZN3wze6engine6actors5actorC1EPS0_yddttd,_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorD2Ev
	.type	_ZN3wze6engine6actors5actorD2Ev, @function
_ZN3wze6engine6actors5actorD2Ev:
.LFB2235:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2235
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	104(%rax), %rsi
	movq	536(%rax), %rcx
	movq	544(%rax), %rdx
	cmpq	%rcx, %rsi
	jnb	.L55
	movq	%rdi, %rbp
	cmpq	%rdi, (%rdx,%rsi,8)
	je	.L63
.L52:
	movq	112(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L55
	cmpq	%rbp, (%rdx,%rsi,8)
	je	.L64
.L54:
	movzbl	232(%rbp), %esi
	movq	568(%rax), %rdi
	cmpq	560(%rax), %rsi
	jnb	.L55
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L56:
	movq	%rsi, %rdx
	salq	$4, %rdx
	addq	%rdx, %rdi
	cmpq	(%rdi), %rbx
	jnb	.L65
.L59:
	movq	8(%rdi), %rdx
	cmpq	%rbp, (%rdx,%rbx,8)
	je	.L66
	movq	568(%rax), %rdi
	addq	$1, %rbx
	cmpq	560(%rax), %rsi
	jb	.L56
.L55:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L66:
	movq	%rbx, %rsi
	movl	$1, %edx
	addq	$1, %rbx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	movq	0(%rbp), %rax
	movzbl	232(%rbp), %esi
	movq	568(%rax), %rdi
	cmpq	560(%rax), %rsi
	jnb	.L55
	movq	%rsi, %rdx
	salq	$4, %rdx
	addq	%rdx, %rdi
	cmpq	(%rdi), %rbx
	jb	.L59
.L65:
	leaq	104(%rbp), %rdi
	call	_ZN3wze6engine6actors5actor5textsD1Ev@PLT
	leaq	72(%rbp), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev@PLT
	leaq	40(%rbp), %rdi
	call	_ZN3wze6engine6actors5actor8texturesD1Ev@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	leaq	8(%rbp), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor6colorsD1Ev@PLT
	.p2align 4,,10
	.p2align 3
.L63:
	.cfi_restore_state
	movq	$0, 104(%rax)
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L64:
	movq	$0, 112(%rax)
	jmp	.L54
	.cfi_endproc
.LFE2235:
	.section	.gcc_except_table
.LLSDA2235:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2235-.LLSDACSB2235
.LLSDACSB2235:
.LLSDACSE2235:
	.text
	.size	_ZN3wze6engine6actors5actorD2Ev, .-_ZN3wze6engine6actors5actorD2Ev
	.globl	_ZN3wze6engine6actors5actorD1Ev
	.set	_ZN3wze6engine6actors5actorD1Ev,_ZN3wze6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor7GetTypeEv
	.type	_ZN3wze6engine6actors5actor7GetTypeEv, @function
_ZN3wze6engine6actors5actor7GetTypeEv:
.LFB2237:
	.cfi_startproc
	movq	160(%rdi), %rax
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZN3wze6engine6actors5actor7GetTypeEv, .-_ZN3wze6engine6actors5actor7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetXEv
	.type	_ZN3wze6engine6actors5actor4GetXEv, @function
_ZN3wze6engine6actors5actor4GetXEv:
.LFB2238:
	.cfi_startproc
	movsd	168(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2238:
	.size	_ZN3wze6engine6actors5actor4GetXEv, .-_ZN3wze6engine6actors5actor4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetYEv
	.type	_ZN3wze6engine6actors5actor4GetYEv, @function
_ZN3wze6engine6actors5actor4GetYEv:
.LFB2240:
	.cfi_startproc
	movsd	176(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2240:
	.size	_ZN3wze6engine6actors5actor4GetYEv, .-_ZN3wze6engine6actors5actor4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetWidthEv
	.type	_ZN3wze6engine6actors5actor8GetWidthEv, @function
_ZN3wze6engine6actors5actor8GetWidthEv:
.LFB2242:
	.cfi_startproc
	movzwl	200(%rdi), %eax
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN3wze6engine6actors5actor8GetWidthEv, .-_ZN3wze6engine6actors5actor8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9GetHeightEv
	.type	_ZN3wze6engine6actors5actor9GetHeightEv, @function
_ZN3wze6engine6actors5actor9GetHeightEv:
.LFB2244:
	.cfi_startproc
	movzwl	202(%rdi), %eax
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZN3wze6engine6actors5actor9GetHeightEv, .-_ZN3wze6engine6actors5actor9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetAngleEv
	.type	_ZN3wze6engine6actors5actor8GetAngleEv, @function
_ZN3wze6engine6actors5actor8GetAngleEv:
.LFB2246:
	.cfi_startproc
	movsd	208(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2246:
	.size	_ZN3wze6engine6actors5actor8GetAngleEv, .-_ZN3wze6engine6actors5actor8GetAngleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetLayerEv
	.type	_ZN3wze6engine6actors5actor8GetLayerEv, @function
_ZN3wze6engine6actors5actor8GetLayerEv:
.LFB2248:
	.cfi_startproc
	movsd	216(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZN3wze6engine6actors5actor8GetLayerEv, .-_ZN3wze6engine6actors5actor8GetLayerEv
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetLayerEd
	.type	_ZN3wze6engine6actors5actor8SetLayerEd, @function
_ZN3wze6engine6actors5actor8SetLayerEd:
.LFB2249:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	ja	.L88
	ucomisd	%xmm1, %xmm0
	jp	.L79
	je	.L89
.L79:
	movsd	%xmm0, 216(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	.cfi_restore_state
	movq	$0x000000000, 224(%rdi)
	movq	(%rdi), %rax
	movq	104(%rax), %rsi
	movq	536(%rax), %rcx
	movq	544(%rax), %rdx
	cmpq	%rcx, %rsi
	jnb	.L87
	cmpq	%rdi, (%rdx,%rsi,8)
	je	.L90
.L81:
	movq	112(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L87
	cmpq	%rdi, (%rdx,%rsi,8)
	jne	.L79
	movq	$0, 112(%rax)
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L90:
	movq	$0, 104(%rax)
	jmp	.L81
.L88:
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L87:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2249:
	.size	_ZN3wze6engine6actors5actor8SetLayerEd, .-_ZN3wze6engine6actors5actor8SetLayerEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetDepthEv
	.type	_ZN3wze6engine6actors5actor8GetDepthEv, @function
_ZN3wze6engine6actors5actor8GetDepthEv:
.LFB2250:
	.cfi_startproc
	movsd	224(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZN3wze6engine6actors5actor8GetDepthEv, .-_ZN3wze6engine6actors5actor8GetDepthEv
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.actors[].SetDepth(): Illegal to set Depth when Layer is 0\nParams: Depth: %lf\n"
	.align 8
.LC11:
	.string	"wze::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetDepthEd
	.type	_ZN3wze6engine6actors5actor8SetDepthEd, @function
_ZN3wze6engine6actors5actor8SetDepthEd:
.LFB2251:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pxor	%xmm1, %xmm1
	ucomisd	216(%rdi), %xmm1
	jp	.L93
	je	.L101
.L93:
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L102
	movsd	%xmm0, 224(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L101:
	.cfi_restore_state
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L102:
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2251:
	.size	_ZN3wze6engine6actors5actor8SetDepthEd, .-_ZN3wze6engine6actors5actor8SetDepthEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17GetCollisionLayerEv
	.type	_ZN3wze6engine6actors5actor17GetCollisionLayerEv, @function
_ZN3wze6engine6actors5actor17GetCollisionLayerEv:
.LFB2252:
	.cfi_startproc
	movzbl	232(%rdi), %eax
	ret
	.cfi_endproc
.LFE2252:
	.size	_ZN3wze6engine6actors5actor17GetCollisionLayerEv, .-_ZN3wze6engine6actors5actor17GetCollisionLayerEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	.type	_ZN3wze6engine6actors5actor17SetCollisionLayerEh, @function
_ZN3wze6engine6actors5actor17SetCollisionLayerEh:
.LFB2253:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rdx
	movzbl	232(%rdi), %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	560(%rdx), %rcx
	movq	568(%rdx), %rax
	cmpq	%rcx, %rsi
	jnb	.L114
	movq	%rdi, %r13
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L106:
	movq	%rsi, %rdi
	salq	$4, %rdi
	addq	%rax, %rdi
	cmpq	(%rdi), %rbx
	jnb	.L116
.L109:
	movq	8(%rdi), %rax
	cmpq	%r13, (%rax,%rbx,8)
	je	.L117
	movq	560(%rdx), %rcx
	movq	568(%rdx), %rax
	addq	$1, %rbx
	cmpq	%rcx, %rsi
	jb	.L106
.L114:
	leaq	.LC5(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L117:
	movq	%rbx, %rsi
	movl	$1, %edx
	addq	$1, %rbx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	movq	0(%r13), %rdx
	movzbl	232(%r13), %esi
	movq	560(%rdx), %rcx
	movq	568(%rdx), %rax
	cmpq	%rcx, %rsi
	jnb	.L114
	movq	%rsi, %rdi
	salq	$4, %rdi
	addq	%rax, %rdi
	cmpq	(%rdi), %rbx
	jb	.L109
	.p2align 4,,10
	.p2align 3
.L116:
	movzbl	%bpl, %esi
	movq	%r13, (%rsp)
	cmpq	%rcx, %rsi
	jnb	.L114
	salq	$4, %rsi
	leaq	(%rax,%rsi), %rbx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, (%rbx)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.L118
	movq	(%rbx), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movb	%bpl, 232(%r13)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L119
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L119:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L118:
	leaq	.LC6(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2253:
	.size	_ZN3wze6engine6actors5actor17SetCollisionLayerEh, .-_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor14GetHitboxWidthEv
	.type	_ZN3wze6engine6actors5actor14GetHitboxWidthEv, @function
_ZN3wze6engine6actors5actor14GetHitboxWidthEv:
.LFB2254:
	.cfi_startproc
	movzwl	234(%rdi), %eax
	ret
	.cfi_endproc
.LFE2254:
	.size	_ZN3wze6engine6actors5actor14GetHitboxWidthEv, .-_ZN3wze6engine6actors5actor14GetHitboxWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.type	_ZN3wze6engine6actors5actor15GetHitboxHeightEv, @function
_ZN3wze6engine6actors5actor15GetHitboxHeightEv:
.LFB2255:
	.cfi_startproc
	movzwl	236(%rdi), %eax
	ret
	.cfi_endproc
.LFE2255:
	.size	_ZN3wze6engine6actors5actor15GetHitboxHeightEv, .-_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.type	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv, @function
_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv:
.LFB2256:
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movsd	208(%rdi), %xmm0
	movsd	256(%rdi), %xmm3
	movsd	264(%rdi), %xmm4
	movq	(%rdi), %rax
	addsd	%xmm0, %xmm3
	movsd	248(%rbx), %xmm1
	addsd	%xmm0, %xmm4
	movsd	.LC12(%rip), %xmm0
	leaq	576(%rax), %rdi
	movapd	%xmm3, %xmm5
	movapd	%xmm3, %xmm2
	movsd	%xmm3, 24(%rsp)
	addsd	%xmm0, %xmm5
	addsd	%xmm4, %xmm0
	movsd	%xmm4, (%rsp)
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	movq	%xmm5, %r13
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	(%rsp), %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	leaq	576(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	leaq	576(%rax), %rdi
	movl	%esi, 20(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ecx
	movsd	248(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	leaq	576(%rax), %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	24(%rsp), %xmm3
	movq	(%rbx), %rax
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	576(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	(%rsp), %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	leaq	576(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	leaq	576(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	leaq	576(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movl	20(%rsp), %esi
	movl	16(%rsp), %ecx
	cvttsd2sil	%xmm0, %edx
	cmpl	%esi, %r12d
	movl	%esi, %eax
	cmovge	%r12d, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	%r15d, %eax
	cmovl	%r15d, %eax
	cmpl	%esi, %r12d
	cmovg	%esi, %r12d
	cmpl	%ecx, %r12d
	cmovg	%ecx, %r12d
	cmpl	%r15d, %r12d
	cmovg	%r15d, %r12d
	subl	%r12d, %eax
	cmpl	%r14d, %ebp
	movw	%ax, 234(%rbx)
	movl	%r14d, %eax
	cmovge	%ebp, %eax
	cmpl	%r13d, %eax
	cmovl	%r13d, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	%r14d, %ebp
	cmovg	%r14d, %ebp
	cmpl	%r13d, %ebp
	cmovg	%r13d, %ebp
	cmpl	%edx, %ebp
	cmovg	%edx, %ebp
	subl	%ebp, %eax
	movw	%ax, 236(%rbx)
	addq	$40, %rsp
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
	.cfi_endproc
.LFE2256:
	.size	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv, .-_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	.type	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv, @function
_ZN3wze6engine6actors5actor21UpdateMembersPositionEv:
.LFB2257:
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
	movq	24(%rdi), %rdx
	movq	%rdi, %rbx
	cmpq	$1, %rdx
	jbe	.L132
	movq	32(%rdi), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L131:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L128
	movq	(%rbx), %rsi
	movsd	56(%rax), %xmm2
	movsd	48(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rbp
	jnb	.L168
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 32(%rax)
	movsd	56(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L168
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 40(%rax)
.L128:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L131
.L132:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L127
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L138:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L135
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rbp
	jnb	.L168
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L168
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L135:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L138
.L127:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L134
	movq	96(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L144:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L141
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rbp
	jnb	.L168
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L168
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L141:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L144
.L134:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L165
	movq	128(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L148:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L145
	movq	(%rbx), %rsi
	movsd	72(%rax), %xmm2
	movsd	64(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rbp
	jnb	.L168
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	72(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	576(%rsi), %rdi
	movsd	64(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L168
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L145:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L148
.L165:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L168:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2257:
	.size	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv, .-_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetXEd
	.type	_ZN3wze6engine6actors5actor4SetXEd, @function
_ZN3wze6engine6actors5actor4SetXEd:
.LFB2239:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movsd	%xmm0, 168(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movupd	168(%rbx), %xmm0
	movl	234(%rbx), %eax
	movl	%eax, 238(%rbx)
	movups	%xmm0, 184(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2239:
	.size	_ZN3wze6engine6actors5actor4SetXEd, .-_ZN3wze6engine6actors5actor4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetYEd
	.type	_ZN3wze6engine6actors5actor4SetYEd, @function
_ZN3wze6engine6actors5actor4SetYEd:
.LFB2241:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movsd	%xmm0, 176(%rdi)
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movupd	168(%rbx), %xmm0
	movl	234(%rbx), %eax
	movups	%xmm0, 184(%rbx)
	unpckhpd	%xmm0, %xmm0
	movl	%eax, 238(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2241:
	.size	_ZN3wze6engine6actors5actor4SetYEd, .-_ZN3wze6engine6actors5actor4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetWidthEt
	.type	_ZN3wze6engine6actors5actor8SetWidthEt, @function
_ZN3wze6engine6actors5actor8SetWidthEt:
.LFB2243:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movapd	%xmm1, %xmm0
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movzwl	202(%rdi), %eax
	movw	%si, 200(%rdi)
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm2
	movq	(%rdi), %rdx
	cvtsi2sdl	%eax, %xmm3
	leaq	576(%rdx), %rdi
	movq	%xmm2, %r14
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movzwl	202(%rbx), %eax
	mulsd	.LC4(%rip), %xmm0
	movq	%r14, %xmm2
	leaq	576(%rcx), %rdi
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, 248(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rdx
	pxor	%xmm2, %xmm2
	movzwl	202(%rbx), %eax
	movsd	%xmm0, 256(%rbx)
	movapd	%xmm2, %xmm1
	movq	%r14, %xmm0
	leaq	576(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 264(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movl	234(%rbx), %eax
	movupd	168(%rbx), %xmm4
	movl	%eax, 238(%rbx)
	movzwl	200(%rbx), %eax
	movups	%xmm4, 184(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2243:
	.size	_ZN3wze6engine6actors5actor8SetWidthEt, .-_ZN3wze6engine6actors5actor8SetWidthEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9SetHeightEt
	.type	_ZN3wze6engine6actors5actor9SetHeightEt, @function
_ZN3wze6engine6actors5actor9SetHeightEt:
.LFB2245:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movq	%rdi, %rbx
	movapd	%xmm1, %xmm0
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movzwl	200(%rdi), %eax
	movw	%si, 202(%rdi)
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm3
	movq	(%rdi), %rdx
	cvtsi2sdl	%eax, %xmm2
	leaq	576(%rdx), %rdi
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	movzwl	200(%rbx), %eax
	mulsd	.LC4(%rip), %xmm0
	movsd	8(%rsp), %xmm3
	leaq	576(%rcx), %rdi
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm0, 248(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movzwl	200(%rbx), %eax
	movsd	8(%rsp), %xmm3
	pxor	%xmm2, %xmm2
	movsd	%xmm0, 256(%rbx)
	pxor	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	movq	(%rbx), %rax
	leaq	576(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 264(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movl	234(%rbx), %eax
	movupd	168(%rbx), %xmm4
	movl	%eax, 238(%rbx)
	movzwl	202(%rbx), %eax
	movups	%xmm4, 184(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZN3wze6engine6actors5actor9SetHeightEt, .-_ZN3wze6engine6actors5actor9SetHeightEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetAngleEd
	.type	_ZN3wze6engine6actors5actor8SetAngleEd, @function
_ZN3wze6engine6actors5actor8SetAngleEd:
.LFB2247:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	24(%rdi), %rdx
	movapd	%xmm0, %xmm1
	movq	%rdi, %rbx
	subsd	208(%rdi), %xmm1
	movsd	%xmm0, 208(%rdi)
	cmpq	$1, %rdx
	jbe	.L178
	movq	32(%rdi), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L179:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L178
.L180:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L179
	cmpb	$0, 24(%rdx)
	je	.L179
	movsd	56(%rdx), %xmm0
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rdx)
	cmpq	%rcx, %rax
	jne	.L180
.L178:
	movq	56(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L181
	movq	64(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L186
	.p2align 4,,10
	.p2align 3
.L184:
	cmpb	$0, 35(%rax)
	jne	.L207
.L183:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L181
.L186:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L183
	cmpb	$0, 34(%rax)
	je	.L184
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L183
.L207:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rcx, %rdx
	jne	.L186
.L181:
	movq	88(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L187
	movq	96(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L192
	.p2align 4,,10
	.p2align 3
.L190:
	cmpb	$0, 35(%rax)
	jne	.L208
.L189:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L187
.L192:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L189
	cmpb	$0, 34(%rax)
	je	.L190
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L189
.L208:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rdx, %rcx
	jne	.L192
.L187:
	movq	120(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L193
	movq	128(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L198
	.p2align 4,,10
	.p2align 3
.L196:
	cmpb	$0, 35(%rax)
	jne	.L209
.L195:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L193
.L198:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L195
	cmpb	$0, 34(%rax)
	je	.L196
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L195
.L209:
	movsd	72(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rax)
	cmpq	%rcx, %rdx
	jne	.L198
.L193:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movupd	168(%rbx), %xmm2
	movl	234(%rbx), %eax
	movsd	208(%rbx), %xmm0
	movl	%eax, 238(%rbx)
	movups	%xmm2, 184(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2247:
	.size	_ZN3wze6engine6actors5actor8SetAngleEd, .-_ZN3wze6engine6actors5actor8SetAngleEd
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1080459264
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
