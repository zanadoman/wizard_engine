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
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	unpcklpd	%xmm1, %xmm4
	movl	%ecx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
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
	movsd	%xmm2, 16(%rsp)
	orq	%rax, %rbp
	leaq	8(%rdi), %rax
	movaps	%xmm4, (%rsp)
	movq	%rax, %rdi
	movq	%rax, 24(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors5actor6colorsC1EPS0_PS2_@PLT
.LEHE0:
	leaq	40(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
.LEHB1:
	call	_ZN3wze6engine6actors5actor8texturesC1EPS0_PS2_@PLT
.LEHE1:
	leaq	72(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB2:
	call	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_@PLT
.LEHE2:
	leaq	104(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
.LEHB3:
	call	_ZN3wze6engine6actors5actor5textsC1EPS0_PS2_@PLT
.LEHE3:
	leaq	136(%rbx), %rax
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
.LEHB4:
	call	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_@PLT
.LEHE4:
	pxor	%xmm6, %xmm6
	pxor	%xmm7, %xmm7
	movapd	(%rsp), %xmm4
	movq	(%rbx), %rax
	movw	%r13w, 240(%rbx)
	movzwl	%r13w, %r13d
	movsd	16(%rsp), %xmm5
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm7
	movw	%r14w, 242(%rbx)
	movzwl	%r14w, %r14d
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm6
	movq	%rbp, 274(%rbx)
	leaq	688(%rax), %rdi
	movb	$1, 168(%rbx)
	movb	$0, 192(%rbx)
	movq	%r15, 200(%rbx)
	movapd	%xmm7, %xmm2
	movq	%xmm7, %r12
	movb	$0, 272(%rbx)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %rbp
	movq	$0x000000000, 248(%rbx)
	movq	$0x000000000, 264(%rbx)
	movups	%xmm0, 176(%rbx)
	movapd	%xmm1, %xmm0
	movups	%xmm4, 208(%rbx)
	movups	%xmm4, 224(%rbx)
	movsd	%xmm5, 256(%rbx)
.LEHB5:
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 288(%rbx)
	jp	.L31
	jne	.L31
	movsd	%xmm1, 296(%rbx)
.L33:
	pxor	%xmm0, %xmm0
.L35:
	movsd	%xmm0, 304(%rbx)
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
.L31:
	.cfi_restore_state
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movq	%rbp, %xmm3
	movq	%r12, %xmm2
	movapd	%xmm1, %xmm0
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	288(%rbx), %xmm1
	movsd	%xmm0, 296(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L47
	je	.L33
.L47:
	movq	(%rbx), %rax
	pxor	%xmm2, %xmm2
	movq	%rbp, %xmm3
	movq	%r12, %xmm0
	movapd	%xmm2, %xmm1
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
.LEHE5:
	jmp	.L35
.L45:
	movq	%rax, %rbx
	jmp	.L36
.L44:
	movq	%rax, %rbx
	jmp	.L37
.L42:
	movq	%rax, %rbx
	jmp	.L39
.L43:
	movq	%rax, %rbx
	jmp	.L38
.L41:
	movq	%rax, %rbx
	jmp	.L40
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
	.uleb128 .L41-.LFB8145
	.uleb128 0
	.uleb128 .LEHB2-.LFB8145
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L42-.LFB8145
	.uleb128 0
	.uleb128 .LEHB3-.LFB8145
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L43-.LFB8145
	.uleb128 0
	.uleb128 .LEHB4-.LFB8145
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L44-.LFB8145
	.uleb128 0
	.uleb128 .LEHB5-.LFB8145
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L45-.LFB8145
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
.L36:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	56(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxesD1Ev@PLT
.L37:
	movq	48(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor5textsD1Ev@PLT
.L38:
	movq	40(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev@PLT
.L39:
	movq	32(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor8texturesD1Ev@PLT
.L40:
	movq	24(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor6colorsD1Ev@PLT
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE8145:
	.section	.gcc_except_table
.LLSDAC8145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8145-.LLSDACSBC8145
.LLSDACSBC8145:
	.uleb128 .LEHB6-.LCOLDB6
	.uleb128 .LEHE6-.LEHB6
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
	movq	(%rdi), %rcx
	movq	%rdi, %rbx
	movzbl	272(%rdi), %esi
	movq	680(%rcx), %rdi
	cmpq	672(%rcx), %rsi
	jnb	.L62
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	movq	(%rdi), %rdx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L55:
	movq	8(%rdi), %rax
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L63
	addq	$1, %rsi
.L52:
	cmpq	%rsi, %rdx
	jne	.L55
.L54:
	movq	112(%rcx), %rsi
	movq	640(%rcx), %rdx
	movq	648(%rcx), %rax
	cmpq	%rdx, %rsi
	jnb	.L62
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L64
.L57:
	movq	120(%rcx), %rsi
	cmpq	%rdx, %rsi
	jnb	.L62
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L65
.L59:
	leaq	136(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxesD1Ev@PLT
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
.L63:
	.cfi_restore_state
	movl	$1, %edx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	movq	(%rbx), %rcx
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L65:
	movq	$0, 120(%rcx)
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L64:
	movq	$0, 112(%rcx)
	jmp	.L57
.L62:
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
	movq	200(%rdi), %rax
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
	movsd	208(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8151:
	.size	_ZN3wze6engine6actors5actor4GetXEv, .-_ZN3wze6engine6actors5actor4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"engine.actors[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetXEd
	.type	_ZN3wze6engine6actors5actor4SetXEd, @function
_ZN3wze6engine6actors5actor4SetXEd:
.LFB8152:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L74
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movzbl	272(%rdi), %esi
	movsd	%xmm0, 208(%rdi)
	movq	%rbx, %rdx
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movsd	208(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L74:
	.cfi_restore_state
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor4SetXEd, .-_ZN3wze6engine6actors5actor4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetYEv
	.type	_ZN3wze6engine6actors5actor4GetYEv, @function
_ZN3wze6engine6actors5actor4GetYEv:
.LFB8153:
	.cfi_startproc
	movsd	216(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor4GetYEv, .-_ZN3wze6engine6actors5actor4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"engine.actors[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetYEd
	.type	_ZN3wze6engine6actors5actor4SetYEd, @function
_ZN3wze6engine6actors5actor4SetYEd:
.LFB8154:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L82
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movzbl	272(%rdi), %esi
	movsd	%xmm0, 216(%rdi)
	movq	%rbx, %rdx
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movsd	216(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L82:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor4SetYEd, .-_ZN3wze6engine6actors5actor4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetWidthEv
	.type	_ZN3wze6engine6actors5actor8GetWidthEv, @function
_ZN3wze6engine6actors5actor8GetWidthEv:
.LFB8155:
	.cfi_startproc
	movzwl	240(%rdi), %eax
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
	movzwl	242(%rdi), %eax
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
	movsd	248(%rdi), %xmm0
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
	movsd	256(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor8GetLayerEv, .-_ZN3wze6engine6actors5actor8GetLayerEv
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"wze::engine.actors[].SetLayer(): Layer must not be NaN\nParams: Layer: %lf\n"
	.align 8
.LC11:
	.string	"wze::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetLayerEd
	.type	_ZN3wze6engine6actors5actor8SetLayerEd, @function
_ZN3wze6engine6actors5actor8SetLayerEd:
.LFB8162:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L105
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L106
	ucomisd	%xmm1, %xmm0
	jp	.L94
	je	.L107
.L94:
	movsd	%xmm0, 256(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	.cfi_restore_state
	movq	$0x000000000, 264(%rdi)
	movq	(%rdi), %rax
	movq	112(%rax), %rsi
	movq	640(%rax), %rcx
	movq	648(%rax), %rdx
	cmpq	%rcx, %rsi
	jnb	.L104
	cmpq	%rdi, (%rdx,%rsi,8)
	je	.L108
.L96:
	movq	120(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L104
	cmpq	%rdi, (%rdx,%rsi,8)
	jne	.L94
	movq	$0, 120(%rax)
	jmp	.L94
	.p2align 4,,10
	.p2align 3
.L108:
	movq	$0, 112(%rax)
	jmp	.L96
.L105:
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L106:
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L104:
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
	movsd	264(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor8GetDepthEv, .-_ZN3wze6engine6actors5actor8GetDepthEv
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].SetDepth(): Depth must not be NaN\nParams: Depth: %lf\n"
	.align 8
.LC13:
	.string	"wze::engine.actors[].SetDepth(): Illegal to set Depth when Layer is 0\nParams: Depth: %lf\n"
	.align 8
.LC14:
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
	ucomisd	%xmm0, %xmm0
	jp	.L123
	pxor	%xmm1, %xmm1
	ucomisd	256(%rdi), %xmm1
	jp	.L113
	je	.L124
.L113:
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L125
	movsd	%xmm0, 264(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L123:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L125:
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L124:
	leaq	.LC13(%rip), %rdi
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
	movzbl	272(%rdi), %eax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor17GetCollisionLayerEv, .-_ZN3wze6engine6actors5actor17GetCollisionLayerEv
	.section	.rodata.str1.8
	.align 8
.LC15:
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
	movzbl	272(%rdi), %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	(%rdi), %rax
	movq	680(%rax), %rdi
	cmpq	672(%rax), %rsi
	jnb	.L138
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	movq	(%rdi), %rdx
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L132:
	movq	8(%rdi), %rax
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L139
	addq	$1, %rsi
.L129:
	cmpq	%rsi, %rdx
	jne	.L132
	testb	%r12b, %r12b
	jne	.L140
.L133:
	movb	%r12b, 272(%rbx)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L141
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
.L139:
	.cfi_restore_state
	movl	$1, %edx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	testb	%r12b, %r12b
	je	.L133
.L140:
	movq	(%rbx), %rax
	movq	%rbx, (%rsp)
	movzbl	%r12b, %esi
	movq	680(%rax), %r13
	cmpq	672(%rax), %rsi
	jnb	.L138
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
	je	.L142
	movq	0(%r13), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	jmp	.L133
.L138:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L141:
	call	__stack_chk_fail@PLT
.L142:
	leaq	.LC15(%rip), %rdi
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
	movzwl	274(%rdi), %eax
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
	movzwl	276(%rdi), %eax
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
	movsd	248(%rdi), %xmm0
	movsd	296(%rdi), %xmm3
	movsd	304(%rdi), %xmm4
	movq	(%rdi), %rax
	addsd	%xmm0, %xmm3
	movsd	288(%rbx), %xmm1
	addsd	%xmm0, %xmm4
	movsd	.LC16(%rip), %xmm0
	leaq	688(%rax), %rdi
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
	movsd	288(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	288(%rbx), %xmm1
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	movl	%esi, 20(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	cvttsd2sil	%xmm0, %ecx
	movsd	288(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	24(%rsp), %xmm3
	movq	(%rbx), %rax
	movsd	288(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	(%rsp), %xmm2
	movsd	288(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movq	%r13, %xmm2
	movsd	288(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movq	(%rbx), %rax
	movsd	8(%rsp), %xmm2
	movsd	288(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
	leaq	688(%rax), %rdi
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
	movw	%ax, 274(%rbx)
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
	movw	%ax, 276(%rbx)
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
	movzwl	242(%rdi), %eax
	movw	%si, 240(%rdi)
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm2
	movq	(%rdi), %rcx
	cvtsi2sdl	%eax, %xmm3
	leaq	688(%rcx), %rdi
	movq	%xmm2, %r14
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 288(%rbx)
	jp	.L148
	jne	.L148
	movsd	%xmm1, 296(%rbx)
.L150:
	pxor	%xmm0, %xmm0
.L153:
	movsd	%xmm0, 304(%rbx)
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	272(%rbx), %esi
	movq	%rbx, %rdx
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movzwl	240(%rbx), %eax
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
.L148:
	.cfi_restore_state
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rdx
	pxor	%xmm1, %xmm1
	movq	%r14, %xmm2
	movzwl	242(%rbx), %eax
	movapd	%xmm1, %xmm0
	leaq	688(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	288(%rbx), %xmm1
	movsd	%xmm0, 296(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L151
	je	.L150
.L151:
	pxor	%xmm3, %xmm3
	movq	(%rbx), %rdx
	pxor	%xmm2, %xmm2
	movq	%r14, %xmm0
	movzwl	242(%rbx), %eax
	movapd	%xmm2, %xmm1
	leaq	688(%rdx), %rdi
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L153
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
	movzwl	240(%rdi), %eax
	movw	%si, 242(%rdi)
	movzwl	%si, %esi
	cvtsi2sdl	%esi, %xmm3
	movq	(%rdi), %rcx
	cvtsi2sdl	%eax, %xmm2
	leaq	688(%rcx), %rdi
	movsd	%xmm3, 8(%rsp)
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm3
	mulsd	.LC4(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 288(%rbx)
	jp	.L157
	jne	.L157
	movsd	%xmm1, 296(%rbx)
.L159:
	pxor	%xmm0, %xmm0
.L162:
	movsd	%xmm0, 304(%rbx)
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	272(%rbx), %esi
	movq	%rbx, %rdx
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movzwl	242(%rbx), %eax
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	.cfi_restore_state
	movzwl	240(%rbx), %eax
	pxor	%xmm2, %xmm2
	movq	(%rbx), %rdx
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	leaq	688(%rdx), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	288(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 296(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L160
	je	.L159
.L160:
	movzwl	240(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	movq	(%rbx), %rax
	leaq	688(%rax), %rdi
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L162
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor9SetHeightEt, .-_ZN3wze6engine6actors5actor9SetHeightEt
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"engine.actors[].SetAngle(): Angle must not be NaN\nParams: Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetAngleEd
	.type	_ZN3wze6engine6actors5actor8SetAngleEd, @function
_ZN3wze6engine6actors5actor8SetAngleEd:
.LFB8160:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L199
	movq	24(%rdi), %rdx
	movapd	%xmm0, %xmm1
	movq	%rdi, %rbx
	subsd	248(%rdi), %xmm1
	movsd	%xmm0, 248(%rdi)
	cmpq	$1, %rdx
	jbe	.L168
	movq	32(%rdi), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L169:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L168
.L170:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L169
	cmpb	$0, 24(%rdx)
	je	.L169
	movsd	56(%rdx), %xmm0
	addq	$8, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rdx)
	cmpq	%rcx, %rax
	jne	.L170
.L168:
	movq	56(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L171
	movq	64(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L174:
	cmpb	$0, 35(%rax)
	jne	.L200
.L173:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L171
.L176:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L173
	cmpb	$0, 34(%rax)
	je	.L174
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L173
.L200:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rcx, %rdx
	jne	.L176
.L171:
	movq	88(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L177
	movq	96(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L180:
	cmpb	$0, 35(%rax)
	jne	.L201
.L179:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L177
.L182:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L179
	cmpb	$0, 34(%rax)
	je	.L180
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L179
.L201:
	movsd	64(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%rax)
	cmpq	%rdx, %rcx
	jne	.L182
.L177:
	movq	120(%rbx), %rax
	cmpq	$1, %rax
	jbe	.L183
	movq	128(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L186:
	cmpb	$0, 35(%rax)
	jne	.L202
.L185:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L183
.L188:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L185
	cmpb	$0, 34(%rax)
	je	.L186
	movsd	24(%rax), %xmm0
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 24(%rax)
	je	.L185
.L202:
	movsd	80(%rax), %xmm0
	addq	$8, %rdx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rax)
	cmpq	%rdx, %rcx
	jne	.L188
.L183:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	272(%rbx), %esi
	movq	%rbx, %rdx
	leaq	656(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movsd	248(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L199:
	.cfi_restore_state
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6actors5actor8SetAngleEd, .-_ZN3wze6engine6actors5actor8SetAngleEd
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
	jbe	.L211
	movq	32(%rdi), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L210:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L207
	movq	(%rbx), %rsi
	movsd	56(%rax), %xmm2
	movsd	48(%rax), %xmm1
	movsd	208(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rbp
	jnb	.L247
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 32(%rax)
	movsd	56(%rax), %xmm2
	movsd	216(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	movsd	48(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L247
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 40(%rax)
.L207:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L210
.L211:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L206
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L217:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L214
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	208(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rbp
	jnb	.L247
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	216(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L247
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L214:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L217
.L206:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L213
	movq	96(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L223:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L220
	movq	(%rbx), %rsi
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	208(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rbp
	jnb	.L247
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	216(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L247
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L220:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L223
.L213:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L244
	movq	128(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L227:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L224
	movq	(%rbx), %rsi
	movsd	80(%rax), %xmm2
	movsd	72(%rax), %xmm1
	movsd	208(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rbp
	jnb	.L247
	movq	(%rax,%r12), %rax
	movq	(%rbx), %rsi
	movsd	%xmm0, 40(%rax)
	movsd	80(%rax), %xmm2
	movsd	216(%rbx), %xmm0
	leaq	688(%rsi), %rdi
	movsd	72(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L247
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L224:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L227
.L244:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L247:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.align 8
.LC16:
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
