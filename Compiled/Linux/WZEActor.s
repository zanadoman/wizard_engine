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
.LFB8354:
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
.LFE8354:
	.size	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0, .-_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd
	.type	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd, @function
_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd:
.LFB8147:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8147
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movapd	%xmm0, %xmm4
	movq	%r8, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	movzwl	%r9w, %edx
	unpcklpd	%xmm1, %xmm4
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r9d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movl	144(%rsp), %r13d
	movq	%rcx, 16(%rsp)
	movq	%rsi, (%rdi)
	leaq	8(%rdi), %rsi
	movzwl	%r13w, %ecx
	movq	%rsi, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rbp, %rsi
	movq	%rcx, %rax
	movsd	%xmm2, 24(%rsp)
	salq	$16, %rax
	movaps	%xmm4, (%rsp)
	orq	%rdx, %rax
	salq	$16, %rax
	orq	%rcx, %rax
	salq	$16, %rax
	orq	%rdx, %rax
	movq	%rbx, %rdx
	movq	%rax, 32(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors5actor10colorboxesC1EPS0_PS2_@PLT
.LEHE0:
	leaq	40(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rsi, 48(%rsp)
	movq	%rsi, %rdi
	movq	%rbp, %rsi
.LEHB1:
	call	_ZN3wze6engine6actors5actor12textureboxesC1EPS0_PS2_@PLT
.LEHE1:
	leaq	72(%rbx), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 56(%rsp)
	movq	%rdx, %rdi
	movq	%rbx, %rdx
.LEHB2:
	call	_ZN3wze6engine6actors5actor9flipbooksC1EPS0_PS2_@PLT
.LEHE2:
	leaq	104(%rbx), %rsi
	movq	%rbx, %rdx
	movq	%rsi, 64(%rsp)
	movq	%rsi, %rdi
	movq	%rbp, %rsi
.LEHB3:
	call	_ZN3wze6engine6actors5actor9textboxesC1EPS0_PS2_@PLT
.LEHE3:
	leaq	136(%rbx), %rdx
	movq	%rbp, %rsi
	movq	%rdx, 72(%rsp)
	movq	%rdx, %rdi
	movq	%rbx, %rdx
.LEHB4:
	call	_ZN3wze6engine6actors5actor12overlapboxesC1EPS0_PS2_@PLT
.LEHE4:
	movw	%r12w, 256(%rbx)
	pxor	%xmm6, %xmm6
	movzwl	%r12w, %r12d
	pxor	%xmm7, %xmm7
	cvtsi2sdl	%r12d, %xmm7
	movq	16(%rsp), %rcx
	movq	32(%rsp), %rax
	movw	%r13w, 258(%rbx)
	movzwl	%r13w, %r13d
	movapd	(%rsp), %xmm4
	movsd	24(%rsp), %xmm5
	movb	$1, 168(%rbx)
	cvtsi2sdl	%r13d, %xmm6
	movb	$0, 192(%rbx)
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	%r14, 200(%rbx)
	movq	%rcx, 208(%rbx)
	movapd	%xmm7, %xmm2
	movq	%xmm7, %r12
	movq	%r15, 216(%rbx)
	movb	$0, 288(%rbx)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %rbp
	movq	$0x000000000, 264(%rbx)
	movq	$0x000000000, 280(%rbx)
	movq	%rax, 290(%rbx)
	movups	%xmm0, 176(%rbx)
	movapd	%xmm1, %xmm0
	movups	%xmm4, 224(%rbx)
	movups	%xmm4, 240(%rbx)
	movsd	%xmm5, 272(%rbx)
.LEHB5:
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 304(%rbx)
	jp	.L31
	jne	.L31
	movsd	%xmm1, 312(%rbx)
.L33:
	pxor	%xmm0, %xmm0
.L35:
	movsd	%xmm0, 320(%rbx)
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
	.p2align 4,,10
	.p2align 3
.L31:
	.cfi_restore_state
	pxor	%xmm1, %xmm1
	movq	%rbp, %xmm3
	movq	%r12, %xmm2
	movapd	%xmm1, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	304(%rbx), %xmm1
	movsd	%xmm0, 312(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L47
	je	.L33
.L47:
	pxor	%xmm2, %xmm2
	movq	%rbp, %xmm3
	movq	%r12, %xmm0
	movapd	%xmm2, %xmm1
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
.LLSDA8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8147-.LLSDACSB8147
.LLSDACSB8147:
	.uleb128 .LEHB0-.LFB8147
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8147
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L41-.LFB8147
	.uleb128 0
	.uleb128 .LEHB2-.LFB8147
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L42-.LFB8147
	.uleb128 0
	.uleb128 .LEHB3-.LFB8147
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L43-.LFB8147
	.uleb128 0
	.uleb128 .LEHB4-.LFB8147
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L44-.LFB8147
	.uleb128 0
	.uleb128 .LEHB5-.LFB8147
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L45-.LFB8147
	.uleb128 0
.LLSDACSE8147:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8147
	.type	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd.cold, @function
_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd.cold:
.LFSB8147:
.L36:
	.cfi_def_cfa_offset 144
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	72(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxesD1Ev@PLT
.L37:
	movq	64(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor9textboxesD1Ev@PLT
.L38:
	movq	56(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev@PLT
.L39:
	movq	48(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor12textureboxesD1Ev@PLT
.L40:
	movq	40(%rsp), %rdi
	call	_ZN3wze6engine6actors5actor10colorboxesD1Ev@PLT
	movq	%rbx, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE8147:
	.section	.gcc_except_table
.LLSDAC8147:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8147-.LLSDACSBC8147
.LLSDACSBC8147:
	.uleb128 .LEHB6-.LCOLDB6
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC8147:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd, .-_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd
	.section	.text.unlikely
	.size	_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd.cold, .-_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd.cold
.LCOLDE6:
	.text
.LHOTE6:
	.globl	_ZN3wze6engine6actors5actorC1EPS0_yPvyddttd
	.set	_ZN3wze6engine6actors5actorC1EPS0_yPvyddttd,_ZN3wze6engine6actors5actorC2EPS0_yPvyddttd
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
.LFB8150:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8150
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rcx
	movq	%rdi, %rbx
	movzbl	288(%rdi), %esi
	movq	288(%rcx), %rdi
	cmpq	280(%rcx), %rsi
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
	movq	128(%rcx), %rsi
	movq	248(%rcx), %rdx
	movq	256(%rcx), %rax
	cmpq	%rdx, %rsi
	jnb	.L62
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L64
.L57:
	movq	136(%rcx), %rsi
	cmpq	%rdx, %rsi
	jnb	.L62
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L65
.L59:
	leaq	136(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxesD1Ev@PLT
	leaq	104(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor9textboxesD1Ev@PLT
	leaq	72(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor9flipbooksD1Ev@PLT
	leaq	40(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12textureboxesD1Ev@PLT
	leaq	8(%rbx), %rdi
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	_ZN3wze6engine6actors5actor10colorboxesD1Ev@PLT
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
	movq	$0, 136(%rcx)
	jmp	.L59
	.p2align 4,,10
	.p2align 3
.L64:
	movq	$0, 128(%rcx)
	jmp	.L57
.L62:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8150:
	.section	.gcc_except_table
.LLSDA8150:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8150-.LLSDACSB8150
.LLSDACSB8150:
.LLSDACSE8150:
	.text
	.size	_ZN3wze6engine6actors5actorD2Ev, .-_ZN3wze6engine6actors5actorD2Ev
	.globl	_ZN3wze6engine6actors5actorD1Ev
	.set	_ZN3wze6engine6actors5actorD1Ev,_ZN3wze6engine6actors5actorD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor5GetIDEv
	.type	_ZN3wze6engine6actors5actor5GetIDEv, @function
_ZN3wze6engine6actors5actor5GetIDEv:
.LFB8152:
	.cfi_startproc
	movq	200(%rdi), %rax
	ret
	.cfi_endproc
.LFE8152:
	.size	_ZN3wze6engine6actors5actor5GetIDEv, .-_ZN3wze6engine6actors5actor5GetIDEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor7GetTypeEv
	.type	_ZN3wze6engine6actors5actor7GetTypeEv, @function
_ZN3wze6engine6actors5actor7GetTypeEv:
.LFB8153:
	.cfi_startproc
	movq	216(%rdi), %rax
	ret
	.cfi_endproc
.LFE8153:
	.size	_ZN3wze6engine6actors5actor7GetTypeEv, .-_ZN3wze6engine6actors5actor7GetTypeEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetXEv
	.type	_ZN3wze6engine6actors5actor4GetXEv, @function
_ZN3wze6engine6actors5actor4GetXEv:
.LFB8154:
	.cfi_startproc
	movsd	224(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8154:
	.size	_ZN3wze6engine6actors5actor4GetXEv, .-_ZN3wze6engine6actors5actor4GetXEv
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"wze::engine.actors[].SetX(): X must not be NaN\nParams: X: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetXEd
	.type	_ZN3wze6engine6actors5actor4SetXEd, @function
_ZN3wze6engine6actors5actor4SetXEd:
.LFB8155:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L75
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movzbl	288(%rdi), %esi
	movsd	%xmm0, 224(%rdi)
	movq	%rbx, %rdx
	leaq	264(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movsd	224(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L75:
	.cfi_restore_state
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8155:
	.size	_ZN3wze6engine6actors5actor4SetXEd, .-_ZN3wze6engine6actors5actor4SetXEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4GetYEv
	.type	_ZN3wze6engine6actors5actor4GetYEv, @function
_ZN3wze6engine6actors5actor4GetYEv:
.LFB8156:
	.cfi_startproc
	movsd	232(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8156:
	.size	_ZN3wze6engine6actors5actor4GetYEv, .-_ZN3wze6engine6actors5actor4GetYEv
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"wze::engine.actors[].SetY(): Y must not be NaN\nParams: Y: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor4SetYEd
	.type	_ZN3wze6engine6actors5actor4SetYEd, @function
_ZN3wze6engine6actors5actor4SetYEd:
.LFB8157:
	.cfi_startproc
	ucomisd	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	jp	.L83
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movzbl	288(%rdi), %esi
	movsd	%xmm0, 232(%rdi)
	movq	%rbx, %rdx
	leaq	264(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movsd	232(%rbx), %xmm0
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L83:
	.cfi_restore_state
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine6actors5actor4SetYEd, .-_ZN3wze6engine6actors5actor4SetYEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetWidthEv
	.type	_ZN3wze6engine6actors5actor8GetWidthEv, @function
_ZN3wze6engine6actors5actor8GetWidthEv:
.LFB8158:
	.cfi_startproc
	movzwl	256(%rdi), %eax
	ret
	.cfi_endproc
.LFE8158:
	.size	_ZN3wze6engine6actors5actor8GetWidthEv, .-_ZN3wze6engine6actors5actor8GetWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9GetHeightEv
	.type	_ZN3wze6engine6actors5actor9GetHeightEv, @function
_ZN3wze6engine6actors5actor9GetHeightEv:
.LFB8160:
	.cfi_startproc
	movzwl	258(%rdi), %eax
	ret
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine6actors5actor9GetHeightEv, .-_ZN3wze6engine6actors5actor9GetHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetAngleEv
	.type	_ZN3wze6engine6actors5actor8GetAngleEv, @function
_ZN3wze6engine6actors5actor8GetAngleEv:
.LFB8162:
	.cfi_startproc
	movsd	264(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine6actors5actor8GetAngleEv, .-_ZN3wze6engine6actors5actor8GetAngleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetLayerEv
	.type	_ZN3wze6engine6actors5actor8GetLayerEv, @function
_ZN3wze6engine6actors5actor8GetLayerEv:
.LFB8164:
	.cfi_startproc
	movsd	272(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8164:
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
.LFB8165:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L106
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L107
	ucomisd	%xmm1, %xmm0
	jp	.L95
	je	.L108
.L95:
	movsd	%xmm0, 272(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	.cfi_restore_state
	movq	$0x000000000, 280(%rdi)
	movq	(%rdi), %rax
	movq	128(%rax), %rsi
	movq	248(%rax), %rcx
	movq	256(%rax), %rdx
	cmpq	%rcx, %rsi
	jnb	.L105
	cmpq	%rdi, (%rdx,%rsi,8)
	je	.L109
.L97:
	movq	136(%rax), %rsi
	cmpq	%rcx, %rsi
	jnb	.L105
	cmpq	%rdi, (%rdx,%rsi,8)
	jne	.L95
	movq	$0, 136(%rax)
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L109:
	movq	$0, 128(%rax)
	jmp	.L97
.L106:
	leaq	.LC10(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L107:
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L105:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine6actors5actor8SetLayerEd, .-_ZN3wze6engine6actors5actor8SetLayerEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8GetDepthEv
	.type	_ZN3wze6engine6actors5actor8GetDepthEv, @function
_ZN3wze6engine6actors5actor8GetDepthEv:
.LFB8166:
	.cfi_startproc
	movsd	280(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine6actors5actor8GetDepthEv, .-_ZN3wze6engine6actors5actor8GetDepthEv
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.actors[].SetDepth(): Depth must not be NaN\nParams: Depth: %lf\n"
	.align 8
.LC13:
	.string	"wze::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n"
	.align 8
.LC14:
	.string	"wze::engine.actors[].SetDepth(): Illegal to set non-zero Depth when Layer is 0\nParams: Depth: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetDepthEd
	.type	_ZN3wze6engine6actors5actor8SetDepthEd, @function
_ZN3wze6engine6actors5actor8SetDepthEd:
.LFB8167:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L126
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L127
	comisd	%xmm1, %xmm0
	jbe	.L116
	ucomisd	272(%rdi), %xmm1
	jp	.L116
	je	.L128
.L116:
	movsd	%xmm0, 280(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L126:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L127:
	leaq	.LC13(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L128:
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine6actors5actor8SetDepthEd, .-_ZN3wze6engine6actors5actor8SetDepthEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17GetCollisionLayerEv
	.type	_ZN3wze6engine6actors5actor17GetCollisionLayerEv, @function
_ZN3wze6engine6actors5actor17GetCollisionLayerEv:
.LFB8168:
	.cfi_startproc
	movzbl	288(%rdi), %eax
	ret
	.cfi_endproc
.LFE8168:
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
.LFB8169:
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
	movzbl	288(%rdi), %esi
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	movq	(%rdi), %rax
	movq	288(%rax), %rdi
	cmpq	280(%rax), %rsi
	jnb	.L141
	salq	$4, %rsi
	addq	%rsi, %rdi
	xorl	%esi, %esi
	movq	(%rdi), %rdx
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L135:
	movq	8(%rdi), %rax
	cmpq	%rbx, (%rax,%rsi,8)
	je	.L142
	addq	$1, %rsi
.L132:
	cmpq	%rsi, %rdx
	jne	.L135
	testb	%r12b, %r12b
	jne	.L143
.L136:
	movb	%r12b, 288(%rbx)
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L144
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
.L142:
	.cfi_restore_state
	movl	$1, %edx
	call	_ZN3neo5arrayIPN3wze6engine6actors5actorEE6RemoveEyy.isra.0
	testb	%r12b, %r12b
	je	.L136
.L143:
	movq	(%rbx), %rax
	movq	%rbx, (%rsp)
	movzbl	%r12b, %esi
	movq	288(%rax), %r13
	cmpq	280(%rax), %rsi
	jnb	.L141
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
	je	.L145
	movq	0(%r13), %rdx
	movq	%rsp, %rdi
	leaq	-8(%rax,%rdx,8), %rsi
	movl	$8, %edx
	call	_ZN3neo6memory6CopyToEPKvPvy@PLT
	jmp	.L136
.L141:
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L144:
	call	__stack_chk_fail@PLT
.L145:
	leaq	.LC15(%rip), %rdi
	movl	$1, %edx
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine6actors5actor17SetCollisionLayerEh, .-_ZN3wze6engine6actors5actor17SetCollisionLayerEh
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor14GetHitboxWidthEv
	.type	_ZN3wze6engine6actors5actor14GetHitboxWidthEv, @function
_ZN3wze6engine6actors5actor14GetHitboxWidthEv:
.LFB8170:
	.cfi_startproc
	movzwl	290(%rdi), %eax
	ret
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine6actors5actor14GetHitboxWidthEv, .-_ZN3wze6engine6actors5actor14GetHitboxWidthEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.type	_ZN3wze6engine6actors5actor15GetHitboxHeightEv, @function
_ZN3wze6engine6actors5actor15GetHitboxHeightEv:
.LFB8171:
	.cfi_startproc
	movzwl	292(%rdi), %eax
	ret
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine6actors5actor15GetHitboxHeightEv, .-_ZN3wze6engine6actors5actor15GetHitboxHeightEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.type	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv, @function
_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv:
.LFB8172:
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
	movsd	264(%rdi), %xmm0
	movsd	312(%rdi), %xmm3
	movsd	320(%rdi), %xmm4
	movsd	304(%rdi), %xmm1
	addsd	%xmm0, %xmm3
	addsd	%xmm0, %xmm4
	movsd	.LC16(%rip), %xmm0
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
	movsd	(%rsp), %xmm2
	movsd	304(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r12d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	304(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %esi
	pxor	%xmm0, %xmm0
	movl	%esi, 20(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	8(%rsp), %xmm2
	movsd	304(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ecx
	pxor	%xmm0, %xmm0
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	call	round@PLT
	movsd	24(%rsp), %xmm3
	movsd	304(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r15d
	pxor	%xmm0, %xmm0
	movapd	%xmm3, %xmm2
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movsd	(%rsp), %xmm2
	movsd	304(%rbx), %xmm1
	cvttsd2sil	%xmm0, %ebp
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movsd	304(%rbx), %xmm1
	movq	%r13, %xmm2
	cvttsd2sil	%xmm0, %r14d
	pxor	%xmm0, %xmm0
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	call	round@PLT
	movsd	8(%rsp), %xmm2
	movsd	304(%rbx), %xmm1
	cvttsd2sil	%xmm0, %r13d
	pxor	%xmm0, %xmm0
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
	movw	%ax, 290(%rbx)
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
	movw	%ax, 292(%rbx)
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
.LFE8172:
	.size	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv, .-_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetWidthEt
	.type	_ZN3wze6engine6actors5actor8SetWidthEt, @function
_ZN3wze6engine6actors5actor8SetWidthEt:
.LFB8159:
	.cfi_startproc
	movzwl	%si, %eax
	pxor	%xmm4, %xmm4
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm4
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pxor	%xmm1, %xmm1
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzwl	258(%rdi), %eax
	movapd	%xmm1, %xmm0
	movq	%rdi, %rbx
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm4, %xmm2
	movq	%xmm4, %r14
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	mulsd	.LC4(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 304(%rbx)
	jp	.L151
	jne	.L151
	movsd	%xmm1, 312(%rbx)
.L153:
	pxor	%xmm0, %xmm0
.L156:
	movw	%bp, 256(%rbx)
	movq	%rbx, %rdi
	movsd	%xmm0, 320(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	288(%rbx), %esi
	movq	%rbx, %rdx
	leaq	264(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movzwl	256(%rbx), %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L151:
	.cfi_restore_state
	movzwl	258(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm1, %xmm1
	movq	%r14, %xmm2
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	304(%rbx), %xmm1
	movsd	%xmm0, 312(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L154
	je	.L153
.L154:
	movzwl	258(%rbx), %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movq	%r14, %xmm0
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm3
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L156
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine6actors5actor8SetWidthEt, .-_ZN3wze6engine6actors5actor8SetWidthEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor9SetHeightEt
	.type	_ZN3wze6engine6actors5actor9SetHeightEt, @function
_ZN3wze6engine6actors5actor9SetHeightEt:
.LFB8161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%si, %eax
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	cvtsi2sdl	%eax, %xmm3
	pxor	%xmm1, %xmm1
	movq	%rdi, %rbx
	movapd	%xmm1, %xmm0
	movl	%esi, %ebp
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movzwl	256(%rdi), %eax
	movsd	%xmm3, 8(%rsp)
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector6LengthEdddd@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm3
	mulsd	.LC4(%rip), %xmm0
	ucomisd	%xmm1, %xmm0
	movsd	%xmm0, 304(%rbx)
	jp	.L160
	jne	.L160
	movsd	%xmm1, 312(%rbx)
.L162:
	pxor	%xmm0, %xmm0
.L165:
	movw	%bp, 258(%rbx)
	movq	%rbx, %rdi
	movsd	%xmm0, 320(%rbx)
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	(%rbx), %rax
	movzbl	288(%rbx), %esi
	movq	%rbx, %rdx
	leaq	264(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movzwl	258(%rbx), %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	.cfi_restore_state
	movzwl	256(%rbx), %eax
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	movsd	%xmm3, 8(%rsp)
	movapd	%xmm1, %xmm0
	cvtsi2sdl	%eax, %xmm2
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	movsd	304(%rbx), %xmm1
	movsd	8(%rsp), %xmm3
	movsd	%xmm0, 312(%rbx)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L163
	je	.L162
.L163:
	movzwl	256(%rbx), %eax
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	movapd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm0
	call	_ZN3wze6engine6vector5AngleEdddd@PLT
	jmp	.L165
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine6actors5actor9SetHeightEt, .-_ZN3wze6engine6actors5actor9SetHeightEt
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.actors[].SetAngle(): Angle must not be NaN\nParams: Angle: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor8SetAngleEd
	.type	_ZN3wze6engine6actors5actor8SetAngleEd, @function
_ZN3wze6engine6actors5actor8SetAngleEd:
.LFB8163:
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	ucomisd	%xmm0, %xmm0
	jp	.L219
	movq	24(%rdi), %rdx
	movapd	%xmm0, %xmm1
	movq	%rdi, %rbp
	subsd	264(%rdi), %xmm1
	cmpq	$1, %rdx
	jbe	.L176
	movq	32(%rdi), %rcx
	leaq	8(%rcx), %rax
	leaq	(%rcx,%rdx,8), %rcx
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L174:
	addq	$8, %rax
	cmpq	%rcx, %rax
	je	.L176
.L175:
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	je	.L174
	cmpb	$0, 24(%rdx)
	je	.L174
	movsd	64(%rdx), %xmm2
	addq	$8, %rax
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 64(%rdx)
	cmpq	%rcx, %rax
	jne	.L175
.L176:
	movq	56(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L173
	movq	64(%rbp), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L181:
	cmpb	$0, 35(%rax)
	jne	.L220
.L180:
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	je	.L173
.L183:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L180
	cmpb	$0, 34(%rax)
	je	.L181
	movsd	24(%rax), %xmm2
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rax)
	je	.L180
.L220:
	movsd	72(%rax), %xmm2
	addq	$8, %rdx
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 72(%rax)
	cmpq	%rcx, %rdx
	jne	.L183
.L173:
	movq	88(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L178
	movq	96(%rbp), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L188:
	cmpb	$0, 35(%rax)
	jne	.L221
.L187:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L178
.L190:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L187
	cmpb	$0, 34(%rax)
	je	.L188
	movsd	24(%rax), %xmm2
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rax)
	je	.L187
.L221:
	movsd	72(%rax), %xmm2
	addq	$8, %rdx
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 72(%rax)
	cmpq	%rdx, %rcx
	jne	.L190
.L178:
	movq	120(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L185
	movq	128(%rbp), %rcx
	leaq	8(%rcx), %rdx
	leaq	(%rcx,%rax,8), %rcx
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L195:
	cmpb	$0, 35(%rax)
	jne	.L222
.L194:
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	je	.L185
.L197:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.L194
	cmpb	$0, 34(%rax)
	je	.L195
	movsd	24(%rax), %xmm2
	cmpb	$0, 35(%rax)
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rax)
	je	.L194
.L222:
	movsd	88(%rax), %xmm2
	addq	$8, %rdx
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 88(%rax)
	cmpq	%rdx, %rcx
	jne	.L197
.L185:
	movq	152(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L192
	movq	160(%rbp), %rdx
	movl	$1, %ebx
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L199:
	cmpq	%rax, %rbx
	jnb	.L223
	movq	(%rdx,%r12), %rcx
	cmpb	$0, 17(%rcx)
	jne	.L224
.L198:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L192
.L203:
	movq	(%rdx,%rbx,8), %rdi
	leaq	0(,%rbx,8), %r12
	testq	%rdi, %rdi
	je	.L198
	cmpb	$0, 16(%rdi)
	je	.L199
	movapd	%xmm1, %xmm2
	addsd	64(%rdi), %xmm2
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm1, (%rsp)
	movsd	%xmm2, 64(%rdi)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox27UpdateOverlapboxActiveScaleEv@PLT
	movsd	8(%rsp), %xmm0
	movsd	(%rsp), %xmm1
	movq	152(%rbp), %rax
	movq	160(%rbp), %rdx
	jmp	.L199
	.p2align 4,,10
	.p2align 3
.L224:
	movsd	80(%rcx), %xmm2
	addq	$1, %rbx
	addsd	%xmm1, %xmm2
	movsd	%xmm2, 80(%rcx)
	cmpq	%rax, %rbx
	jb	.L203
.L192:
	movsd	%xmm0, 264(%rbp)
	movq	%rbp, %rdi
	call	_ZN3wze6engine6actors5actor17UpdateHitboxScaleEv
	movq	0(%rbp), %rax
	movzbl	288(%rbp), %esi
	movq	%rbp, %rdx
	leaq	264(%rax), %rdi
	call	_ZN3wze6engine9collision21ResolveCollisionLayerEyPNS0_6actors5actorE@PLT
	movsd	264(%rbp), %xmm0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L223:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L219:
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine6actors5actor8SetAngleEd, .-_ZN3wze6engine6actors5actor8SetAngleEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv
	.type	_ZN3wze6engine6actors5actor21UpdateMembersPositionEv, @function
_ZN3wze6engine6actors5actor21UpdateMembersPositionEv:
.LFB8173:
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
	jbe	.L233
	movq	32(%rdi), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L232:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L229
	movsd	64(%rax), %xmm2
	movsd	56(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	32(%rbx), %rax
	cmpq	24(%rbx), %rbp
	jnb	.L279
	movq	(%rax,%r12), %rax
	movsd	%xmm0, 40(%rax)
	movsd	64(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	56(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	24(%rbx), %rdx
	movq	32(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L279
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L229:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L232
.L233:
	movq	56(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L228
	movq	64(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L239:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L236
	movsd	72(%rax), %xmm2
	movsd	64(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	64(%rbx), %rax
	cmpq	56(%rbx), %rbp
	jnb	.L279
	movq	(%rax,%r12), %rax
	movsd	%xmm0, 48(%rax)
	movsd	72(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	64(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	56(%rbx), %rdx
	movq	64(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L279
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 56(%rax)
.L236:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L239
.L228:
	movq	88(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L235
	movq	96(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L245:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L242
	movsd	72(%rax), %xmm2
	movsd	64(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	96(%rbx), %rax
	cmpq	88(%rbx), %rbp
	jnb	.L279
	movq	(%rax,%r12), %rax
	movsd	%xmm0, 48(%rax)
	movsd	72(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	64(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	88(%rbx), %rdx
	movq	96(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L279
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 56(%rax)
.L242:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L245
.L235:
	movq	120(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L241
	movq	128(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L251:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L248
	movsd	88(%rax), %xmm2
	movsd	80(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	128(%rbx), %rax
	cmpq	120(%rbx), %rbp
	jnb	.L279
	movq	(%rax,%r12), %rax
	movsd	%xmm0, 48(%rax)
	movsd	88(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	80(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	120(%rbx), %rdx
	movq	128(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L279
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 56(%rax)
.L248:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L251
.L241:
	movq	152(%rbx), %rdx
	cmpq	$1, %rdx
	jbe	.L276
	movq	160(%rbx), %rcx
	movl	$1, %ebp
	.p2align 4,,10
	.p2align 3
.L255:
	movq	(%rcx,%rbp,8), %rax
	leaq	0(,%rbp,8), %r12
	testq	%rax, %rax
	je	.L252
	movsd	80(%rax), %xmm2
	movsd	72(%rax), %xmm1
	movsd	224(%rbx), %xmm0
	call	_ZN3wze6engine6vector9TerminalXEddd@PLT
	movq	160(%rbx), %rax
	cmpq	152(%rbx), %rbp
	jnb	.L279
	movq	(%rax,%r12), %rax
	movsd	%xmm0, 40(%rax)
	movsd	80(%rax), %xmm2
	movsd	232(%rbx), %xmm0
	movsd	72(%rax), %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd@PLT
	movq	152(%rbx), %rdx
	movq	160(%rbx), %rcx
	cmpq	%rdx, %rbp
	jnb	.L279
	movq	(%rcx,%r12), %rax
	movsd	%xmm0, 48(%rax)
.L252:
	addq	$1, %rbp
	cmpq	%rdx, %rbp
	jb	.L255
.L276:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L279:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8173:
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
