	.file	"SEActor.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"slay::engine.actors.actor.actor(): Layer must not be less than 0\nParams: Engine: %p, Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actorC2ERS0_yddttd
	.type	_ZN4slay6engine6actors5actorC2ERS0_yddttd, @function
_ZN4slay6engine6actors5actorC2ERS0_yddttd:
.LFB2232:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2232
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	8(%rdi), %rax
	movapd	%xmm0, %xmm3
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	unpcklpd	%xmm1, %xmm3
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	movq	%rdi, %rdx
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsi, (%rdi)
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movsd	%xmm1, (%rsp)
	movsd	%xmm2, 8(%rsp)
	movaps	%xmm3, 16(%rsp)
.LEHB0:
	call	_ZN4slay6engine6actors5actor6colorsC1ERS0_RS2_@PLT
.LEHE0:
	leaq	40(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
.LEHB1:
	call	_ZN4slay6engine6actors5actor8texturesC1ERS0_RS2_@PLT
.LEHE1:
	leaq	72(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
.LEHB2:
	call	_ZN4slay6engine6actors5actor9flipbooksC1ERS0_RS2_@PLT
.LEHE2:
	leaq	104(%rbx), %r15
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB3:
	call	_ZN4slay6engine6actors5actor5textsC1ERS0_RS2_@PLT
.LEHE3:
	movsd	8(%rsp), %xmm4
	pxor	%xmm0, %xmm0
	movapd	16(%rsp), %xmm3
	movw	%r12w, 136(%rbx)
	movw	%r14w, 138(%rbx)
	comisd	%xmm4, %xmm0
	movq	%r13, 144(%rbx)
	movq	$0x000000000, 168(%rbx)
	movups	%xmm3, 152(%rbx)
	movsd	%xmm4, 176(%rbx)
	ja	.L2
.L3:
	movq	$0x000000000, 184(%rbx)
	addq	$72, %rsp
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
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	movsd	(%rsp), %xmm1
	movapd	%xmm4, %xmm2
	movzwl	%r12w, %ecx
	movq	%r13, %rdx
	movsd	32(%rsp), %xmm0
	movzwl	%r14w, %r8d
	movq	%rbp, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$3, %eax
.LEHB4:
	call	printf@PLT
.LEHE4:
	jmp	.L3
.L11:
	movq	%rax, %rbx
	jmp	.L4
.L10:
	movq	%rax, %rbx
	jmp	.L5
.L9:
	movq	%rax, %rbx
	jmp	.L6
.L8:
	movq	%rax, %rbx
	jmp	.L7
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
	.uleb128 .L8-.LFB2232
	.uleb128 0
	.uleb128 .LEHB2-.LFB2232
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L9-.LFB2232
	.uleb128 0
	.uleb128 .LEHB3-.LFB2232
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L10-.LFB2232
	.uleb128 0
	.uleb128 .LEHB4-.LFB2232
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L11-.LFB2232
	.uleb128 0
.LLSDACSE2232:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2232
	.type	_ZN4slay6engine6actors5actorC2ERS0_yddttd.cold, @function
_ZN4slay6engine6actors5actorC2ERS0_yddttd.cold:
.LFSB2232:
.L4:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	_ZN4slay6engine6actors5actor5textsD1Ev@PLT
.L5:
	movq	56(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev@PLT
.L6:
	movq	48(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor8texturesD1Ev@PLT
.L7:
	movq	40(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor6colorsD1Ev@PLT
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE2232:
	.section	.gcc_except_table
.LLSDAC2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2232-.LLSDACSBC2232
.LLSDACSBC2232:
	.uleb128 .LEHB5-.LCOLDB2
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC2232:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actorC2ERS0_yddttd, .-_ZN4slay6engine6actors5actorC2ERS0_yddttd
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actorC2ERS0_yddttd.cold, .-_ZN4slay6engine6actors5actorC2ERS0_yddttd.cold
.LCOLDE2:
	.text
.LHOTE2:
	.globl	_ZN4slay6engine6actors5actorC1ERS0_yddttd
	.set	_ZN4slay6engine6actors5actorC1ERS0_yddttd,_ZN4slay6engine6actors5actorC2ERS0_yddttd
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actorD2Ev
	.type	_ZN4slay6engine6actors5actorD2Ev, @function
_ZN4slay6engine6actors5actorD2Ev:
.LFB2235:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2235
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	104(%rax), %rsi
	movq	536(%rax), %rdx
	movq	544(%rax), %rcx
	cmpq	%rdx, %rsi
	jnb	.L21
	movq	%rdi, %rbx
	cmpq	%rdi, (%rcx,%rsi,8)
	je	.L22
.L17:
	movq	112(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L21
	cmpq	%rbx, (%rcx,%rsi,8)
	je	.L23
.L19:
	leaq	104(%rbx), %rdi
	call	_ZN4slay6engine6actors5actor5textsD1Ev@PLT
	leaq	72(%rbx), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev@PLT
	leaq	40(%rbx), %rdi
	call	_ZN4slay6engine6actors5actor8texturesD1Ev@PLT
	leaq	8(%rbx), %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN4slay6engine6actors5actor6colorsD1Ev@PLT
	.p2align 4,,10
	.p2align 3
.L22:
	.cfi_restore_state
	movq	$0, 104(%rax)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L23:
	movq	$0, 112(%rax)
	jmp	.L19
.L21:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
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
	.size	_ZN4slay6engine6actors5actorD2Ev, .-_ZN4slay6engine6actors5actorD2Ev
	.globl	_ZN4slay6engine6actors5actorD1Ev
	.set	_ZN4slay6engine6actors5actorD1Ev,_ZN4slay6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor7GetTypeEv
	.type	_ZN4slay6engine6actors5actor7GetTypeEv, @function
_ZN4slay6engine6actors5actor7GetTypeEv:
.LFB2237:
	.cfi_startproc
	movq	144(%rdi), %rax
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZN4slay6engine6actors5actor7GetTypeEv, .-_ZN4slay6engine6actors5actor7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4GetXEv
	.type	_ZN4slay6engine6actors5actor4GetXEv, @function
_ZN4slay6engine6actors5actor4GetXEv:
.LFB2238:
	.cfi_startproc
	movsd	152(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2238:
	.size	_ZN4slay6engine6actors5actor4GetXEv, .-_ZN4slay6engine6actors5actor4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4SetXEd
	.type	_ZN4slay6engine6actors5actor4SetXEd, @function
_ZN4slay6engine6actors5actor4SetXEd:
.LFB2239:
	.cfi_startproc
	movsd	%xmm0, 152(%rdi)
	ret
	.cfi_endproc
.LFE2239:
	.size	_ZN4slay6engine6actors5actor4SetXEd, .-_ZN4slay6engine6actors5actor4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4GetYEv
	.type	_ZN4slay6engine6actors5actor4GetYEv, @function
_ZN4slay6engine6actors5actor4GetYEv:
.LFB2240:
	.cfi_startproc
	movsd	160(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2240:
	.size	_ZN4slay6engine6actors5actor4GetYEv, .-_ZN4slay6engine6actors5actor4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor4SetYEd
	.type	_ZN4slay6engine6actors5actor4SetYEd, @function
_ZN4slay6engine6actors5actor4SetYEd:
.LFB2241:
	.cfi_startproc
	movsd	%xmm0, 160(%rdi)
	ret
	.cfi_endproc
.LFE2241:
	.size	_ZN4slay6engine6actors5actor4SetYEd, .-_ZN4slay6engine6actors5actor4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetAngleEv
	.type	_ZN4slay6engine6actors5actor8GetAngleEv, @function
_ZN4slay6engine6actors5actor8GetAngleEv:
.LFB2242:
	.cfi_startproc
	movsd	168(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2242:
	.size	_ZN4slay6engine6actors5actor8GetAngleEv, .-_ZN4slay6engine6actors5actor8GetAngleEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetAngleEd
	.type	_ZN4slay6engine6actors5actor8SetAngleEd, @function
_ZN4slay6engine6actors5actor8SetAngleEd:
.LFB2243:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movapd	%xmm0, %xmm3
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%xmm0, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	subsd	168(%rdi), %xmm3
	movq	24(%rdi), %rdx
	movq	%xmm3, %r15
	cmpq	$1, %rdx
	jbe	.L38
	movq	32(%rdi), %rcx
	movl	$1, %ebp
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L38
.L37:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L34
	cmpb	$0, 24(%rax)
	je	.L34
	movq	(%rbx), %rsi
	movq	%r14, %xmm2
	addsd	48(%rax), %xmm2
	movsd	40(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	subsd	152(%rbx), %xmm0
	call	round@PLT
	cmpq	24(%rbx), %rbp
	movq	32(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	8(%rsp), %xmm2
	jnb	.L86
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	160(%rbx), %xmm0
	movl	%edx, 28(%rax)
	movsd	40(%rax), %xmm1
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	subsd	160(%rbx), %xmm0
	call	round@PLT
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cvttsd2sil	%xmm0, %esi
	cmpq	%rdx, %rbp
	jnb	.L86
	movq	(%rcx,%r12), %rax
	addq	$1, %rbp
	movl	%esi, 32(%rax)
	cmpq	%rdx, %rbp
	jb	.L37
.L38:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L33
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L42:
	cmpq	%rdx, %rbp
	jnb	.L86
	cmpb	$0, 35(%rax)
	jne	.L87
.L41:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L33
.L32:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L41
	cmpb	$0, 34(%rax)
	je	.L42
	movq	(%rbx), %rsi
	movq	%r14, %xmm2
	addsd	56(%rax), %xmm2
	movsd	48(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	subsd	152(%rbx), %xmm0
	call	round@PLT
	cmpq	56(%rbx), %rbp
	movq	64(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	8(%rsp), %xmm2
	jnb	.L86
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	160(%rbx), %xmm0
	movl	%edx, 40(%rax)
	movsd	48(%rax), %xmm1
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	subsd	160(%rbx), %xmm0
	call	round@PLT
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cvttsd2sil	%xmm0, %esi
	cmpq	%rdx, %rbp
	jnb	.L86
	movq	(%rcx,%r12), %rax
	cmpb	$0, 35(%rax)
	movl	%esi, 44(%rax)
	je	.L41
.L87:
	movq	%r15, %xmm0
	addsd	24(%rax), %xmm0
	addq	$1, %rbp
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rbp
	jb	.L32
.L33:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L40
	movq	96(%rbx), %rcx
	movl	$1, %ebp
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L51:
	cmpq	%rdx, %rbp
	jnb	.L86
	cmpb	$0, 35(%rax)
	jne	.L88
.L50:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L40
.L39:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L50
	cmpb	$0, 34(%rax)
	je	.L51
	movq	(%rbx), %rsi
	movq	%r14, %xmm2
	addsd	56(%rax), %xmm2
	movsd	48(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	subsd	152(%rbx), %xmm0
	call	round@PLT
	cmpq	88(%rbx), %rbp
	movq	96(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	8(%rsp), %xmm2
	jnb	.L86
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	160(%rbx), %xmm0
	movl	%edx, 40(%rax)
	movsd	48(%rax), %xmm1
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	subsd	160(%rbx), %xmm0
	call	round@PLT
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cvttsd2sil	%xmm0, %esi
	cmpq	%rdx, %rbp
	jnb	.L86
	movq	(%rcx,%r12), %rax
	cmpb	$0, 35(%rax)
	movl	%esi, 44(%rax)
	je	.L50
.L88:
	movq	%r15, %xmm0
	addsd	24(%rax), %xmm0
	addq	$1, %rbp
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rbp
	jb	.L39
.L40:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L49
	movq	128(%rbx), %rcx
	movl	$1, %ebp
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L58:
	cmpq	%rdx, %rbp
	jnb	.L86
	cmpb	$0, 35(%rax)
	jne	.L89
.L57:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L49
.L48:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L57
	cmpb	$0, 34(%rax)
	je	.L58
	movq	(%rbx), %rsi
	movq	%r14, %xmm2
	addsd	56(%rax), %xmm2
	movsd	48(%rax), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rsi), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	subsd	152(%rbx), %xmm0
	call	round@PLT
	cmpq	120(%rbx), %rbp
	movq	128(%rbx), %rax
	cvttsd2sil	%xmm0, %edx
	movsd	8(%rsp), %xmm2
	jnb	.L86
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	160(%rbx), %xmm0
	movl	%edx, 40(%rax)
	movsd	48(%rax), %xmm1
	leaq	552(%rsi), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	subsd	160(%rbx), %xmm0
	call	round@PLT
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cvttsd2sil	%xmm0, %esi
	cmpq	%rdx, %rbp
	jnb	.L86
	movq	(%rcx,%r12), %rax
	cmpb	$0, 35(%rax)
	movl	%esi, 44(%rax)
	je	.L57
.L89:
	movq	%r15, %xmm0
	addsd	24(%rax), %xmm0
	addq	$1, %rbp
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rbp
	jb	.L48
.L49:
	movq	%r14, 168(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r14, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L86:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay6engine6actors5actor8SetAngleEd, .-_ZN4slay6engine6actors5actor8SetAngleEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetLayerEv
	.type	_ZN4slay6engine6actors5actor8GetLayerEv, @function
_ZN4slay6engine6actors5actor8GetLayerEv:
.LFB2244:
	.cfi_startproc
	movsd	176(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay6engine6actors5actor8GetLayerEv, .-_ZN4slay6engine6actors5actor8GetLayerEv
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"slay::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetLayerEd
	.type	_ZN4slay6engine6actors5actor8SetLayerEd, @function
_ZN4slay6engine6actors5actor8SetLayerEd:
.LFB2245:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L99
	movsd	%xmm0, 176(%rdi)
	ret
.L99:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6actors5actor8SetLayerEd, .-_ZN4slay6engine6actors5actor8SetLayerEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetDepthEv
	.type	_ZN4slay6engine6actors5actor8GetDepthEv, @function
_ZN4slay6engine6actors5actor8GetDepthEv:
.LFB2246:
	.cfi_startproc
	movsd	184(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6actors5actor8GetDepthEv, .-_ZN4slay6engine6actors5actor8GetDepthEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"slay::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetDepthEd
	.type	_ZN4slay6engine6actors5actor8SetDepthEd, @function
_ZN4slay6engine6actors5actor8SetDepthEd:
.LFB2247:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L109
	movsd	%xmm0, 184(%rdi)
	ret
.L109:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6actors5actor8SetDepthEd, .-_ZN4slay6engine6actors5actor8SetDepthEd
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
