	.file	"player.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"assets/player/player1.png"
.LC1:
	.string	"assets/player/player2.png"
.LC2:
	.string	"assets/player/player3.png"
.LC3:
	.string	"assets/player/player4.png"
.LC4:
	.string	"assets/player/player5.png"
.LC5:
	.string	"assets/player/player6.png"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"neo::array=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.rodata.str1.1
.LC7:
	.string	"assets/FreeSans.ttf"
.LC10:
	.string	"Player"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.p2align 4
	.globl	_ZN6playerC2EPN4slay6engineE
	.type	_ZN6playerC2EPN4slay6engineE, @function
_ZN6playerC2EPN4slay6engineE:
.LFB2232:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2232
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	movq	%rsi, (%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 32(%rdi)
	leaq	560(%rsi), %rdi
	leaq	.LC0(%rip), %rsi
.LEHB0:
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, (%rsp)
	movq	(%rbx), %rax
	leaq	.LC1(%rip), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, 8(%rsp)
	movq	(%rbx), %rax
	leaq	.LC2(%rip), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, 16(%rsp)
	movq	(%rbx), %rax
	leaq	.LC3(%rip), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, 24(%rsp)
	movq	(%rbx), %rax
	leaq	.LC4(%rip), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, 32(%rsp)
	movq	(%rbx), %rax
	leaq	.LC5(%rip), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	24(%rbx), %rdx
	movq	%rax, 40(%rsp)
	leaq	24(%rbx), %rbp
	cmpq	$6, %rdx
	jne	.L12
	movq	32(%rbx), %rsi
.L4:
	salq	$3, %rdx
	movq	%rsp, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	movl	$48, %edx
	leaq	.LC7(%rip), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets8LoadFontEPKch@PLT
	movq	%rax, 48(%rbx)
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	movl	$70, %ecx
	movl	$46, %edx
	movapd	%xmm1, %xmm0
	movl	$1, %esi
	movsd	.LC8(%rip), %xmm2
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actors3NewEyddttd@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rsi
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdi
	movq	%rbp, %rdx
	movl	$100, %esi
	call	_ZN4slay6engine6actors5actor9flipbooks3NewEjPN3neo5arrayIyEE@PLT
	movq	%rax, 16(%rbx)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	48(%rbx), %rdx
	leaq	104(%rax), %rdi
	leaq	.LC10(%rip), %rsi
	call	_ZN4slay6engine6actors5actor5texts3NewEPKcy@PLT
	movq	%rax, 40(%rbx)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movb	$1, 136(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movl	$100, %esi
	movw	%si, 16(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movl	$100, %ecx
	movq	8(%rbx), %rsi
	movw	%cx, 18(%rax)
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movq	%rax, %rbp
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	addsd	.LC11(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbook4SetYEd@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movl	$20, %edx
	movq	8(%rbx), %rsi
	movw	%dx, 16(%rax)
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	%rax, %rbp
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	addsd	.LC12(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text4SetYEd@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	movq	$6, 24(%rbx)
	movq	32(%rbx), %rdi
	movl	$48, %esi
	call	realloc@PLT
	movq	%rax, 32(%rbx)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.L3
	movq	24(%rbx), %rdx
	jmp	.L4
.L13:
	call	__stack_chk_fail@PLT
.L3:
	movl	$6, %edx
	movl	$8, %esi
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L8:
	movq	%rax, %rbp
	jmp	.L5
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
	.uleb128 .L8-.LFB2232
	.uleb128 0
.LLSDACSE2232:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2232
	.type	_ZN6playerC2EPN4slay6engineE.cold, @function
_ZN6playerC2EPN4slay6engineE.cold:
.LFSB2232:
.L5:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	32(%rbx), %rdi
	call	free@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L14
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L14:
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
	.uleb128 .LEHB1-.LCOLDB13
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC2232:
	.section	.text.unlikely
	.text
	.size	_ZN6playerC2EPN4slay6engineE, .-_ZN6playerC2EPN4slay6engineE
	.section	.text.unlikely
	.size	_ZN6playerC2EPN4slay6engineE.cold, .-_ZN6playerC2EPN4slay6engineE.cold
.LCOLDE13:
	.text
.LHOTE13:
	.globl	_ZN6playerC1EPN4slay6engineE
	.set	_ZN6playerC1EPN4slay6engineE,_ZN6playerC2EPN4slay6engineE
	.align 2
	.p2align 4
	.globl	_ZN6playerD2Ev
	.type	_ZN6playerD2Ev, @function
_ZN6playerD2Ev:
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
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$0, 24(%rdi)
	je	.L16
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L17:
	movq	32(%rbx), %rdx
	addl	$1, %ebp
	movq	(%rdx,%rax,8), %rsi
	movq	(%rbx), %rax
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets13UnloadTextureEy@PLT
	movzbl	%bpl, %eax
	cmpq	24(%rbx), %rax
	jb	.L17
.L16:
	movq	(%rbx), %rax
	movq	48(%rbx), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets10UnloadFontEy@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actors6DeleteEy@PLT
	movq	32(%rbx), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT
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
	.size	_ZN6playerD2Ev, .-_ZN6playerD2Ev
	.globl	_ZN6playerD1Ev
	.set	_ZN6playerD1Ev,_ZN6playerD2Ev
	.align 2
	.p2align 4
	.globl	_ZN6player6UpdateEv
	.type	_ZN6player6UpdateEv, @function
_ZN6player6UpdateEv:
.LFB2237:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$82, %esi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rax
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L50
.L22:
	movq	(%rbx), %rax
	movl	$81, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L51
.L29:
	movq	(%rbx), %rax
	movl	$80, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L52
.L36:
	movq	(%rbx), %rax
	movl	$79, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L53
.L41:
	movq	(%rbx), %rax
	movl	$10, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L54
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	movq	(%rbx), %rax
	movl	$81, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L22
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	(%rbx), %rbp
	movq	8(%rbx), %rsi
	movq	%rax, %r12
	leaq	528(%rbp), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC14(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movq	8(%rbx), %rsi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC15(%rip), %xmm1
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	movsd	%xmm1, (%rsp)
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetXEv@PLT
	movsd	(%rsp), %xmm1
	movsd	8(%rsp), %xmm2
	leaq	552(%rbp), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetXEd@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	(%rbx), %rbp
	movq	8(%rbx), %rsi
	movq	%rax, %r12
	leaq	528(%rbp), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC14(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movq	8(%rbx), %rsi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC15(%rip), %xmm1
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	movsd	%xmm1, (%rsp)
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	leaq	552(%rbp), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetYEd@PLT
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L54:
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movq	%rax, %rbp
	addq	$528, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	addsd	.LC12(%rip), %xmm0
	movq	%rbp, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text4SetYEd@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	.cfi_restore_state
	movq	(%rbx), %rax
	movl	$80, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L41
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	8(%rbx), %rsi
	movq	%rax, %rbp
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movq	(%rbx), %rax
	movsd	%xmm0, (%rsp)
	leaq	632(%rax), %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	(%rsp), %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC17(%rip), %xmm1
	subsd	%xmm1, %xmm0
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L52:
	movq	(%rbx), %rax
	movl	$79, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L36
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	8(%rbx), %rsi
	movq	%rax, %rbp
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movq	(%rbx), %rax
	movsd	%xmm0, (%rsp)
	leaq	632(%rax), %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC17(%rip), %xmm0
	addsd	(%rsp), %xmm0
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L51:
	movq	(%rbx), %rax
	movl	$82, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	jne	.L29
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	(%rbx), %rbp
	movq	8(%rbx), %rsi
	movq	%rax, %r12
	leaq	528(%rbp), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC14(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movq	8(%rbx), %rsi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC16(%rip), %xmm1
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	movsd	%xmm1, (%rsp)
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetXEv@PLT
	movsd	(%rsp), %xmm1
	movsd	8(%rsp), %xmm2
	leaq	552(%rbp), %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetXEd@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	(%rbx), %rbp
	movq	8(%rbx), %rsi
	movq	%rax, %r12
	leaq	528(%rbp), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC14(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movq	8(%rbx), %rsi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC16(%rip), %xmm1
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	movsd	%xmm1, (%rsp)
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	leaq	552(%rbp), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetYEd@PLT
	jmp	.L29
	.cfi_endproc
.LFE2237:
	.size	_ZN6player6UpdateEv, .-_ZN6player6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC11:
	.long	0
	.long	1076887552
	.align 8
.LC12:
	.long	0
	.long	1078722560
	.align 8
.LC14:
	.long	0
	.long	1079410688
	.align 8
.LC15:
	.long	0
	.long	1071644672
	.align 8
.LC16:
	.long	0
	.long	-1075838976
	.align 8
.LC17:
	.long	-1717986918
	.long	1070176665
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
