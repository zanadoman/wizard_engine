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
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.type	_ZN3wze6engine6actors5actorC2EPS0_yddttd, @function
_ZN3wze6engine6actors5actorC2EPS0_yddttd:
.LFB8145:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8145
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movzwl	%r8w, %edx
	movzwl	%cx, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movapd	%xmm0, %xmm4
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	unpcklpd	%xmm1, %xmm4
	movl	%r8d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	salq	$16, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	orq	%rax, %rbp
	salq	$16, %rbp
	orq	%rdx, %rbp
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsi, (%rdi)
	movq	%rdi, %rdx
	salq	$16, %rbp
	movsd	%xmm2, 24(%rsp)
	orq	%rax, %rbp
	leaq	8(%rdi), %rax
	movaps	%xmm4, (%rsp)
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
	leaq	656(%rax), %rdi
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
	leaq	656(%rax), %rdi
	movsd	%xmm0, 248(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movq	%rbp, %xmm3
	movsd	%xmm0, 256(%rbx)
	movapd	%xmm2, %xmm1
	movq	%r12, %xmm0
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
.LEHE4:
	movsd	%xmm0, 264(%rbx)
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
.L35:
	.cfi_restore_state
	movq	%rax, %rbx
	jmp	.L34
.L38:
	movq	%rax, %rbx
	jmp	.L31
.L37:
	movq	%rax, %rbx
	jmp	.L32
.L36:
	movq	%rax, %rbx
	jmp	.L33
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8145-.LLSDACSB8145
.LLSDACSB8145:
	.uleb128 .LEHB0-.LFB8145
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8145
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L35-.LFB8145
	.uleb128 0
	.uleb128 .LEHB2-.LFB8145
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L36-.LFB8145
	.uleb128 0
	.uleb128 .LEHB3-.LFB8145
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L37-.LFB8145
	.uleb128 0
	.uleb128 .LEHB4-.LFB8145
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L38-.LFB8145
	.uleb128 0
.LLSDACSE8145:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8145
	.type	_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold, @function
_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold:
.LFSB8145:
.L31:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	56(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor5textsD1Ev@PLT
.L32:
	movq	48(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev@PLT
.L33:
	movq	40(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor8texturesD1Ev@PLT
.L34:
	movq	32(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor6colorsD1Ev@PLT
	movq	%rbx, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
	.cfi_endproc
.LFE8145:
	.section	.gcc_except_table
.LLSDAC8145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8145-.LLSDACSBC8145
.LLSDACSBC8145:
	.uleb128 .LEHB5-.LCOLDB6
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC8145:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actorC2EPS0_yddttd, .-_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold, .-_ZN3wze6engine6actors5actorC2EPS0_yddttd.cold
.LCOLDE6:
	.text
.LHOTE6:
	.globl	_ZN3wze6engine6actors5actorC1EPS0_yddttd
	.set	_ZN3wze6engine6actors5actorC1EPS0_yddttd,_ZN3wze6engine6actors5actorC2EPS0_yddttd
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorD2Ev
	.type	_ZN3wze6engine6actors5actorD2Ev, @function
_ZN3wze6engine6actors5actorD2Ev:
.LFB8148:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8148
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	112(%rax), %rsi
	movq	640(%rax), %rcx
	movq	648(%rax), %rdx
	cmpq	%rcx, %rsi
	jnb	.L46
	movq	%rdi, %rbx
	cmpq	%rdi, (%rdx,%rsi,8)
	je	.L53
.L43:
	movq	120(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L46
	cmpq	%rbx, (%rdx,%rsi,8)
	je	.L54
.L45:
	movzbl	232(%rbx), %esi
	movq	792(%rax), %rdi
	cmpq	784(%rax), %rsi
	jnb	.L46
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	movq	(%rdi), %rdx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L50:
	movq	8(%rdi), %rax
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L55
	addq	$1, %rsi
.L47:
	cmpq	%rsi, %rdx
	jne	.L50
.L49:
	leaq	104(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor5textsD1Ev@PLT
	leaq	72(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev@PLT
	leaq	40(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor8texturesD1Ev@PLT
	leaq	8(%rbx), %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor6colorsD1Ev@PLT
	.p2align 4,,10
	.p2align 3
.L55:
	.cfi_restore_state
	movl	$1, %edx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L54:
	movq	$0, 120(%rax)
	jmp	.L45
	.p2align 4,,10
	.p2align 3
.L53:
	movq	$0, 112(%rax)
	jmp	.L43
.L46:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8148:
	.section	.gcc_except_table
.LLSDA8148:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8148-.LLSDACSB8148
.LLSDACSB8148:
.LLSDACSE8148:
	.text
	.size	_ZN3wze6engine6actors5actorD2Ev, .-_ZN3wze6engine6actors5actorD2Ev
	.globl	_ZN3wze6engine6actors5actorD1Ev
	.set	_ZN3wze6engine6actors5actorD1Ev,_ZN3wze6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor7GetTypeEv
	.type	_ZN3wze6engine6actors5actor7GetTypeEv, @function
_ZN3wze6engine6actors5actor7GetTypeEv:
.LFB8150:
	.cfi_startproc
	movq	160(%rdi), %rax
	ret
	.cfi_endproc
.LFE8150:
	.size	_ZN3wze6engine6actors5actor7GetTypeEv, .-_ZN3wze6engine6actors5actor7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetXEv
	.type	_ZN3wze6engine6actors5actor4GetXEv, @function
_ZN3wze6engine6actors5actor4GetXEv:
.LFB8151:
	.cfi_startproc
	movsd	168(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6actors5actor4GetXEv, .-_ZN3wze6engine6actors5actor4GetXEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetYEv
	.type	_ZN3wze6engine6actors5actor4GetYEv, @function
_ZN3wze6engine6actors5actor4GetYEv:
.LFB8153:
	.cfi_startproc
	movsd	176(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor4GetYEv, .-_ZN3wze6engine6actors5actor4GetYEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetWidthEv
	.type	_ZN3wze6engine6actors5actor8GetWidthEv, @function
_ZN3wze6engine6actors5actor8GetWidthEv:
.LFB8155:
	.cfi_startproc
	movzwl	200(%rdi), %eax
	ret
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actors5actor8GetWidthEv, .-_ZN3wze6engine6actors5actor8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9GetHeightEv
	.type	_ZN3wze6engine6actors5actor9GetHeightEv, @function
_ZN3wze6engine6actors5actor9GetHeightEv:
.LFB8157:
	.cfi_startproc
	movzwl	202(%rdi), %eax
	ret
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6actors5actor9GetHeightEv, .-_ZN3wze6engine6actors5actor9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetAngleEv
	.type	_ZN3wze6engine6actors5actor8GetAngleEv, @function
_ZN3wze6engine6actors5actor8GetAngleEv:
.LFB8159:
	.cfi_startproc
	movsd	208(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6actors5actor8GetAngleEv, .-_ZN3wze6engine6actors5actor8GetAngleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetLayerEv
	.type	_ZN3wze6engine6actors5actor8GetLayerEv, @function
_ZN3wze6engine6actors5actor8GetLayerEv:
.LFB8161:
	.cfi_startproc
	movsd	216(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor8GetLayerEv, .-_ZN3wze6engine6actors5actor8GetLayerEv
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetLayerEd
	.type	_ZN3wze6engine6actors5actor8SetLayerEd, @function
_ZN3wze6engine6actors5actor8SetLayerEd:
.LFB8162:
	.cfi_startproc
	pxor	%xmm1, %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	comisd	%xmm0, %xmm1
	ja	.L77
	ucomisd	%xmm1, %xmm0
	jp	.L68
	je	.L78
.L68:
	movsd	%xmm0, 216(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L78:
	.cfi_restore_state
	movq	$0x000000000, 224(%rdi)
	movq	(%rdi), %rax
	movq	112(%rax), %rsi
	movq	640(%rax), %rcx
	movq	648(%rax), %rdx
	cmpq	%rcx, %rsi
	jnb	.L76
	cmpq	%rdi, (%rdx,%rsi,8)
	je	.L79
.L70:
	movq	120(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L76
	cmpq	%rdi, (%rdx,%rsi,8)
	jne	.L68
	movq	$0, 120(%rax)
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L79:
	movq	$0, 112(%rax)
	jmp	.L70
.L77:
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L76:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6actors5actor8SetLayerEd, .-_ZN3wze6engine6actors5actor8SetLayerEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetDepthEv
	.type	_ZN3wze6engine6actors5actor8GetDepthEv, @function
_ZN3wze6engine6actors5actor8GetDepthEv:
.LFB8163:
	.cfi_startproc
	movsd	224(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor8GetDepthEv, .-_ZN3wze6engine6actors5actor8GetDepthEv
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].SetDepth(): Illegal to set Depth when Layer is 0\nParams: Depth: %lf\n"
	.align 8
.LC10:
	.string	"wze::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetDepthEd
	.type	_ZN3wze6engine6actors5actor8SetDepthEd, @function
_ZN3wze6engine6actors5actor8SetDepthEd:
.LFB8164:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pxor	%xmm1, %xmm1
	ucomisd	216(%rdi), %xmm1
	jp	.L82
	je	.L90
.L82:
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L91
	movsd	%xmm0, 224(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L90:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L91:
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine6actors5actor8SetDepthEd, .-_ZN3wze6engine6actors5actor8SetDepthEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17GetCollisionLayerEv
	.type	_ZN3wze6engine6actors5actor17GetCollisionLayerEv, @function
_ZN3wze6engine6actors5actor17GetCollisionLayerEv:
.LFB8165:
	.cfi_startproc
	movzbl	232(%rdi), %eax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor17GetCollisionLayerEv, .-_ZN3wze6engine6actors5actor17GetCollisionLayerEv
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"neo::array+=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	.type	_ZN3wze6engine6actors5actor17SetCollisionLayerEh, @function
_ZN3wze6engine6actors5actor17SetCollisionLayerEh:
.LFB8166:
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
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movzbl	232(%rdi), %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	(%rdi), %rax
	movq	792(%rax), %rdi
	cmpq	784(%rax), %rsi
	jnb	.L104
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	movq	(%rdi), %rdx
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L98:
	movq	8(%rdi), %rax
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L105
	addq	$1, %rsi
.L95:
	cmpq	%rsi, %rdx
	jne	.L98
	testb	%r12b, %r12b
	jne	.L106
.L99:
	movb	%r12b, 232(%rbx)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L107
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L105:
	.cfi_restore_state
	movl	$1, %edx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	testb	%r12b, %r12b
	je	.L99
.L106:
	movq	(%rbx), %rax
	movq	%rbx, (%rsp)
	movzbl	%r12b, %esi
	movq	792(%rax), %r13
	cmpq	784(%rax), %rsi
	jnb	.L104
	salq	$4, %rsi
	addq	%rsi, %r13
	movq	0(%r13), %rax
	movq	8(%r13), %rdi
	leaq	1(%rax), %rsi
	movq	%rsi, 0(%r13)
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.L108
	movq	0(%r13), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movupd	168(%rbx), %xmm0
	movl	234(%rbx), %eax
	movups	%xmm0, 184(%rbx)
	movl	%eax, 238(%rbx)
	jmp	.L99
.L104:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L107:
	call	__stack_chk_fail@PLT
.L108:
	leaq	.LC11(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor17SetCollisionLayerEh, .-_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor14GetHitboxWidthEv
	.type	_ZN3wze6engine6actors5actor14GetHitboxWidthEv, @function
_ZN3wze6engine6actors5actor14GetHitboxWidthEv:
.LFB8167:
	.cfi_startproc
	movzwl	234(%rdi), %eax
	ret
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor14GetHitboxWidthEv, .-_ZN3wze6engine6actors5actor14GetHitboxWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.type	_ZN3wze6engine6actors5actor15GetHitboxHeightEv, @function
_ZN3wze6engine6actors5actor15GetHitboxHeightEv:
.LFB8168:
	.cfi_startproc
	movzwl	236(%rdi), %eax
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine6actors5actor15GetHitboxHeightEv, .-_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.type	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv, @function
_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv:
.LFB8169:
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
	leaq	656(%rax), %rdi
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
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	leaq	656(%rax), %rdi
	movl	%esi, 20(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ecx
	movsd	248(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	leaq	656(%rax), %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	24(%rsp), %xmm3
	movq	(%rbx), %rax
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	(%rsp), %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	248(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	leaq	656(%rax), %rdi
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
.LFE8169:
	.size	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv, .-_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	.type	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv, @function
_ZN3wze6engine6actors5actor21UpdateMembersPositionEv:
.LFB8170:
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
	jbe	.L121
	movq	32(%rdi), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L120:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L117
	movq	(%rbx), %rsi
	movsd	56(%rax), %xmm2
	movsd	48(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rbp
	jnb	.L157
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 32(%rax)
	movsd	56(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L157
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 40(%rax)
.L117:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L120
.L121:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L116
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L127:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L124
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rbp
	jnb	.L157
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L157
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L124:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L127
.L116:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L123
	movq	96(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L133:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L130
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rbp
	jnb	.L157
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L157
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L130:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L133
.L123:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L154
	movq	128(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L137:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L134
	movq	(%rbx), %rsi
	movsd	72(%rax), %xmm2
	movsd	64(%rax), %xmm1
	movsd	168(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rbp
	jnb	.L157
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	72(%rax), %xmm2
	movsd	176(%rbx), %xmm0
	leaq	656(%rsi), %rdi
	movsd	64(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L157
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L134:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L137
.L154:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L157:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv, .-_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetXEd
	.type	_ZN3wze6engine6actors5actor4SetXEd, @function
_ZN3wze6engine6actors5actor4SetXEd:
.LFB8152:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzbl	232(%rdi), %esi
	movq	%rdi, %rbx
	movsd	%xmm0, 168(%rdi)
	testb	%sil, %sil
	je	.L159
	movq	(%rdi), %rax
	leaq	776(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy@PLT
	movsd	168(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L159:
	.cfi_restore_state
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movsd	168(%rbx), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor4SetXEd, .-_ZN3wze6engine6actors5actor4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetYEd
	.type	_ZN3wze6engine6actors5actor4SetYEd, @function
_ZN3wze6engine6actors5actor4SetYEd:
.LFB8154:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzbl	232(%rdi), %esi
	movq	%rdi, %rbx
	movsd	%xmm0, 176(%rdi)
	testb	%sil, %sil
	je	.L163
	movq	(%rdi), %rax
	leaq	776(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy@PLT
	movsd	176(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L163:
	.cfi_restore_state
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movsd	176(%rbx), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor4SetYEd, .-_ZN3wze6engine6actors5actor4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetWidthEt
	.type	_ZN3wze6engine6actors5actor8SetWidthEt, @function
_ZN3wze6engine6actors5actor8SetWidthEt:
.LFB8156:
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
	leaq	656(%rdx), %rdi
	movq	%xmm2, %r14
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	mulsd	.LC4(%rip), %xmm0
	movzwl	202(%rbx), %eax
	movq	%r14, %xmm2
	leaq	656(%rcx), %rdi
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
	leaq	656(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 264(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movzbl	232(%rbx), %esi
	testb	%sil, %sil
	je	.L167
	movq	(%rbx), %rax
	leaq	776(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy@PLT
	movzwl	200(%rbx), %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L167:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movzwl	200(%rbx), %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor8SetWidthEt, .-_ZN3wze6engine6actors5actor8SetWidthEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9SetHeightEt
	.type	_ZN3wze6engine6actors5actor9SetHeightEt, @function
_ZN3wze6engine6actors5actor9SetHeightEt:
.LFB8158:
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
	leaq	656(%rdx), %rdi
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rcx
	pxor	%xmm1, %xmm1
	mulsd	.LC4(%rip), %xmm0
	movzwl	200(%rbx), %eax
	movsd	8(%rsp), %xmm3
	leaq	656(%rcx), %rdi
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm0, 248(%rbx)
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movzwl	200(%rbx), %eax
	pxor	%xmm2, %xmm2
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 256(%rbx)
	pxor	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	movq	(%rbx), %rax
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 264(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movzbl	232(%rbx), %esi
	testb	%sil, %sil
	je	.L171
	movq	(%rbx), %rax
	leaq	776(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy@PLT
	movzwl	202(%rbx), %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movzwl	202(%rbx), %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor9SetHeightEt, .-_ZN3wze6engine6actors5actor9SetHeightEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetAngleEd
	.type	_ZN3wze6engine6actors5actor8SetAngleEd, @function
_ZN3wze6engine6actors5actor8SetAngleEd:
.LFB8160:
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
	jbe	.L175
	movq	32(%rdi), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L176:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L175
.L177:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L176
	cmpb	$0, 24(%rdx)
	je	.L176
	movsd	56(%rdx), %xmm0
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rdx)
	cmpq	%rcx, %rax
	jne	.L177
.L175:
	movq	56(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L178
	movq	64(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L181:
	cmpb	$0, 35(%rax)
	jne	.L206
.L180:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L178
.L183:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L180
	cmpb	$0, 34(%rax)
	je	.L181
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L180
.L206:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rcx, %rdx
	jne	.L183
.L178:
	movq	88(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L184
	movq	96(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L187:
	cmpb	$0, 35(%rax)
	jne	.L207
.L186:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L184
.L189:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L186
	cmpb	$0, 34(%rax)
	je	.L187
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L186
.L207:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rdx, %rcx
	jne	.L189
.L184:
	movq	120(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L190
	movq	128(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L193:
	cmpb	$0, 35(%rax)
	jne	.L208
.L192:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L190
.L195:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L192
	cmpb	$0, 34(%rax)
	je	.L193
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L192
.L208:
	movsd	72(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rax)
	cmpq	%rdx, %rcx
	jne	.L195
.L190:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movzbl	232(%rbx), %esi
	testb	%sil, %sil
	jne	.L209
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	movsd	208(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L209:
	.cfi_restore_state
	movq	(%rbx), %rax
	leaq	776(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEy@PLT
	movsd	208(%rbx), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8160:
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
