	.file	"SEActor.cpp"
	.text
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.type	_ZN4slay6engine6actors5actorC2EPS0_yddttd, @function
_ZN4slay6engine6actors5actorC2EPS0_yddttd:
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
	movq	%rdx, %r14
	movq	%rdi, %rdx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rsi, (%rdi)
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
	movsd	%xmm2, 24(%rsp)
	movaps	%xmm3, (%rsp)
.LEHB0:
	call	_ZN4slay6engine6actors5actor6colorsC1EPS0_PS2_@PLT
.LEHE0:
	leaq	40(%rbx), %rax
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB1:
	call	_ZN4slay6engine6actors5actor8texturesC1EPS0_PS2_@PLT
.LEHE1:
	leaq	72(%rbx), %r15
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB2:
	call	_ZN4slay6engine6actors5actor9flipbooksC1EPS0_PS2_@PLT
.LEHE2:
	leaq	104(%rbx), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
.LEHB3:
	call	_ZN4slay6engine6actors5actor5textsC1EPS0_PS2_@PLT
.LEHE3:
	movapd	(%rsp), %xmm3
	movsd	24(%rsp), %xmm4
	movw	%r13w, 136(%rbx)
	movw	%r12w, 138(%rbx)
	movb	$0, 140(%rbx)
	movq	%r14, 144(%rbx)
	movq	$0x000000000, 168(%rbx)
	movq	$0x000000000, 184(%rbx)
	movw	%r13w, 192(%rbx)
	movw	%r12w, 194(%rbx)
	movups	%xmm3, 152(%rbx)
	movsd	%xmm4, 176(%rbx)
	addq	$56, %rsp
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
.L5:
	.cfi_restore_state
	movq	%rax, %rbx
	jmp	.L4
.L7:
	movq	%rax, %rbx
	jmp	.L2
.L6:
	movq	%rax, %rbx
	jmp	.L3
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
	.uleb128 .L5-.LFB2232
	.uleb128 0
	.uleb128 .LEHB2-.LFB2232
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L6-.LFB2232
	.uleb128 0
	.uleb128 .LEHB3-.LFB2232
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L7-.LFB2232
	.uleb128 0
.LLSDACSE2232:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2232
	.type	_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold, @function
_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold:
.LFSB2232:
.L2:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r15, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksD1Ev@PLT
.L3:
	movq	40(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor8texturesD1Ev@PLT
.L4:
	movq	32(%rsp), %rdi
	call	_ZN4slay6engine6actors5actor6colorsD1Ev@PLT
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE2232:
	.section	.gcc_except_table
.LLSDAC2232:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2232-.LLSDACSBC2232
.LLSDACSBC2232:
	.uleb128 .LEHB4-.LCOLDB1
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC2232:
	.section	.text.unlikely
	.text
	.size	_ZN4slay6engine6actors5actorC2EPS0_yddttd, .-_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.section	.text.unlikely
	.size	_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold, .-_ZN4slay6engine6actors5actorC2EPS0_yddttd.cold
.LCOLDE1:
	.text
.LHOTE1:
	.globl	_ZN4slay6engine6actors5actorC1EPS0_yddttd
	.set	_ZN4slay6engine6actors5actorC1EPS0_yddttd,_ZN4slay6engine6actors5actorC2EPS0_yddttd
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
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
	jnb	.L17
	movq	%rdi, %rbx
	cmpq	%rdi, (%rcx,%rsi,8)
	je	.L18
.L13:
	movq	112(%rax), %rsi
	cmpq	%rdx, %rsi
	jnb	.L17
	cmpq	%rbx, (%rcx,%rsi,8)
	je	.L19
.L15:
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
.L18:
	.cfi_restore_state
	movq	$0, 104(%rax)
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L19:
	movq	$0, 112(%rax)
	jmp	.L15
.L17:
	leaq	.LC2(%rip), %rdi
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
	.p2align 4
	.globl	_ZN4slay3minEii
	.type	_ZN4slay3minEii, @function
_ZN4slay3minEii:
.LFB2243:
	.cfi_startproc
	cmpl	%esi, %edi
	movl	%esi, %eax
	cmovle	%edi, %eax
	ret
	.cfi_endproc
.LFE2243:
	.size	_ZN4slay3minEii, .-_ZN4slay3minEii
	.p2align 4
	.globl	_ZN4slay3maxEii
	.type	_ZN4slay3maxEii, @function
_ZN4slay3maxEii:
.LFB2244:
	.cfi_startproc
	cmpl	%edi, %esi
	movl	%edi, %eax
	cmovge	%esi, %eax
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZN4slay3maxEii, .-_ZN4slay3maxEii
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetAngleEd
	.type	_ZN4slay6engine6actors5actor8SetAngleEd, @function
_ZN4slay6engine6actors5actor8SetAngleEd:
.LFB2245:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movapd	%xmm0, %xmm5
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pxor	%xmm1, %xmm1
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movzwl	138(%rdi), %edx
	movzwl	136(%rdi), %eax
	subsd	168(%rdi), %xmm5
	movq	(%rdi), %rsi
	movsd	%xmm0, (%rsp)
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%edx, %xmm3
	cvtsi2sdl	%eax, %xmm2
	leaq	552(%rsi), %rdi
	movsd	%xmm5, 16(%rsp)
	call	_ZN4slay6engine6vector6LengthEdddd@PLT
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rsi
	movsd	.LC3(%rip), %xmm7
	movzwl	138(%rbx), %edx
	pxor	%xmm1, %xmm1
	movzwl	136(%rbx), %eax
	leaq	552(%rsi), %rdi
	mulsd	%xmm0, %xmm7
	cvtsi2sdl	%edx, %xmm3
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm7, 8(%rsp)
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rsi
	pxor	%xmm2, %xmm2
	movsd	(%rsp), %xmm6
	movzwl	136(%rbx), %edx
	movapd	%xmm2, %xmm1
	movzwl	138(%rbx), %eax
	leaq	552(%rsi), %rdi
	addsd	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm6, 24(%rsp)
	call	_ZN4slay6engine6vector5AngleEdddd@PLT
	addsd	(%rsp), %xmm0
	movq	(%rbx), %rax
	movsd	24(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	leaq	552(%rax), %rdi
	movsd	%xmm0, 32(%rsp)
	movsd	152(%rbx), %xmm0
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rax
	movsd	32(%rsp), %xmm2
	cvttsd2sil	%xmm0, %r12d
	movsd	8(%rsp), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movsd	.LC4(%rip), %xmm4
	movq	(%rbx), %rax
	cvttsd2sil	%xmm0, %esi
	addsd	24(%rsp), %xmm4
	movsd	8(%rsp), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rax), %rdi
	movapd	%xmm4, %xmm2
	movsd	%xmm4, 48(%rsp)
	movl	%esi, 60(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movsd	.LC4(%rip), %xmm3
	movq	(%rbx), %rax
	cvttsd2sil	%xmm0, %ecx
	addsd	32(%rsp), %xmm3
	movsd	8(%rsp), %xmm1
	movsd	152(%rbx), %xmm0
	leaq	552(%rax), %rdi
	movapd	%xmm3, %xmm2
	movsd	%xmm3, 40(%rsp)
	movl	%ecx, 56(%rsp)
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	(%rbx), %rax
	movsd	24(%rsp), %xmm2
	cvttsd2sil	%xmm0, %r15d
	movsd	8(%rsp), %xmm1
	movsd	160(%rbx), %xmm0
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rax
	movsd	32(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ebp
	movsd	8(%rsp), %xmm1
	movsd	160(%rbx), %xmm0
	leaq	552(%rax), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rax
	movsd	48(%rsp), %xmm4
	cvttsd2sil	%xmm0, %r14d
	movsd	8(%rsp), %xmm1
	movsd	160(%rbx), %xmm0
	leaq	552(%rax), %rdi
	movapd	%xmm4, %xmm2
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	(%rbx), %rax
	movsd	40(%rsp), %xmm3
	cvttsd2sil	%xmm0, %r13d
	movsd	8(%rsp), %xmm1
	movsd	160(%rbx), %xmm0
	leaq	552(%rax), %rdi
	movapd	%xmm3, %xmm2
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movl	60(%rsp), %esi
	movl	56(%rsp), %ecx
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
	movw	%ax, 192(%rbx)
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
	movq	24(%rbx), %rdx
	subl	%ebp, %eax
	movw	%ax, 194(%rbx)
	cmpq	$1, %rdx
	jbe	.L36
	movq	32(%rbx), %rcx
	movl	$1, %ebp
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L32:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L36
.L35:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L32
	cmpb	$0, 24(%rax)
	je	.L32
	movq	(%rbx), %rsi
	movsd	(%rsp), %xmm2
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
	jnb	.L84
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
	jnb	.L84
	movq	(%rcx,%r12), %rax
	addq	$1, %rbp
	movl	%esi, 32(%rax)
	cmpq	%rdx, %rbp
	jb	.L35
.L36:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L31
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L40:
	cmpq	%rdx, %rbp
	jnb	.L84
	cmpb	$0, 35(%rax)
	jne	.L85
.L39:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L31
.L30:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L39
	cmpb	$0, 34(%rax)
	je	.L40
	movq	(%rbx), %rsi
	movsd	(%rsp), %xmm2
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
	jnb	.L84
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
	jnb	.L84
	movq	(%rcx,%r12), %rax
	cmpb	$0, 35(%rax)
	movl	%esi, 44(%rax)
	je	.L39
.L85:
	movsd	16(%rsp), %xmm0
	addsd	24(%rax), %xmm0
	addq	$1, %rbp
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rbp
	jb	.L30
.L31:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L38
	movq	96(%rbx), %rcx
	movl	$1, %ebp
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L49:
	cmpq	%rdx, %rbp
	jnb	.L84
	cmpb	$0, 35(%rax)
	jne	.L86
.L48:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L38
.L37:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L48
	cmpb	$0, 34(%rax)
	je	.L49
	movq	(%rbx), %rsi
	movsd	(%rsp), %xmm2
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
	jnb	.L84
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
	jnb	.L84
	movq	(%rcx,%r12), %rax
	cmpb	$0, 35(%rax)
	movl	%esi, 44(%rax)
	je	.L48
.L86:
	movsd	16(%rsp), %xmm0
	addsd	24(%rax), %xmm0
	addq	$1, %rbp
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rbp
	jb	.L37
.L38:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L47
	movq	128(%rbx), %rcx
	movl	$1, %ebp
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L56:
	cmpq	%rdx, %rbp
	jnb	.L84
	cmpb	$0, 35(%rax)
	jne	.L87
.L55:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jnb	.L47
.L46:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L55
	cmpb	$0, 34(%rax)
	je	.L56
	movq	(%rbx), %rsi
	movsd	(%rsp), %xmm2
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
	jnb	.L84
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
	jnb	.L84
	movq	(%rcx,%r12), %rax
	cmpb	$0, 35(%rax)
	movl	%esi, 44(%rax)
	je	.L55
.L87:
	movsd	16(%rsp), %xmm0
	addsd	24(%rax), %xmm0
	addq	$1, %rbp
	movsd	%xmm0, 24(%rax)
	cmpq	%rdx, %rbp
	jb	.L46
.L47:
	movsd	(%rsp), %xmm7
	movsd	%xmm7, 168(%rbx)
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movapd	%xmm7, %xmm0
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
.L84:
	.cfi_restore_state
	leaq	.LC2(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2245:
	.size	_ZN4slay6engine6actors5actor8SetAngleEd, .-_ZN4slay6engine6actors5actor8SetAngleEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetLayerEv
	.type	_ZN4slay6engine6actors5actor8GetLayerEv, @function
_ZN4slay6engine6actors5actor8GetLayerEv:
.LFB2246:
	.cfi_startproc
	movsd	176(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2246:
	.size	_ZN4slay6engine6actors5actor8GetLayerEv, .-_ZN4slay6engine6actors5actor8GetLayerEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"slay::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetLayerEd
	.type	_ZN4slay6engine6actors5actor8SetLayerEd, @function
_ZN4slay6engine6actors5actor8SetLayerEd:
.LFB2247:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L97
	movsd	%xmm0, 176(%rdi)
	ret
.L97:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2247:
	.size	_ZN4slay6engine6actors5actor8SetLayerEd, .-_ZN4slay6engine6actors5actor8SetLayerEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8GetDepthEv
	.type	_ZN4slay6engine6actors5actor8GetDepthEv, @function
_ZN4slay6engine6actors5actor8GetDepthEv:
.LFB2248:
	.cfi_startproc
	movsd	184(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE2248:
	.size	_ZN4slay6engine6actors5actor8GetDepthEv, .-_ZN4slay6engine6actors5actor8GetDepthEv
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"slay::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor8SetDepthEd
	.type	_ZN4slay6engine6actors5actor8SetDepthEd, @function
_ZN4slay6engine6actors5actor8SetDepthEd:
.LFB2249:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L107
	movsd	%xmm0, 184(%rdi)
	ret
.L107:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2249:
	.size	_ZN4slay6engine6actors5actor8SetDepthEd, .-_ZN4slay6engine6actors5actor8SetDepthEd
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor14GetHitboxWidthEv
	.type	_ZN4slay6engine6actors5actor14GetHitboxWidthEv, @function
_ZN4slay6engine6actors5actor14GetHitboxWidthEv:
.LFB2250:
	.cfi_startproc
	movzwl	192(%rdi), %eax
	ret
	.cfi_endproc
.LFE2250:
	.size	_ZN4slay6engine6actors5actor14GetHitboxWidthEv, .-_ZN4slay6engine6actors5actor14GetHitboxWidthEv
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine6actors5actor15GetHitboxHeightEv
	.type	_ZN4slay6engine6actors5actor15GetHitboxHeightEv, @function
_ZN4slay6engine6actors5actor15GetHitboxHeightEv:
.LFB2251:
	.cfi_startproc
	movzwl	194(%rdi), %eax
	ret
	.cfi_endproc
.LFE2251:
	.size	_ZN4slay6engine6actors5actor15GetHitboxHeightEv, .-_ZN4slay6engine6actors5actor15GetHitboxHeightEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
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
