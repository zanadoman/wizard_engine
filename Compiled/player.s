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
	.string	"assets/crazy-pixel.ttf"
.LC10:
	.string	"Player"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.globl	_ZN6playerC2ERN4slay6engineE
	.type	_ZN6playerC2ERN4slay6engineE, @function
_ZN6playerC2ERN4slay6engineE:
.LFB2232:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2232
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
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
	leaq	24(%rbx), %r12
	cmpq	$6, %rdx
	jne	.L12
	movq	32(%rbx), %rsi
.L4:
	movq	%rsp, %r13
	salq	$3, %rdx
	movq	%r13, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
	movq	(%rbx), %rax
	movl	$48, %edx
	leaq	.LC7(%rip), %rsi
	leaq	560(%rax), %rdi
	call	_ZN4slay6engine6assets8LoadFontEPKch@PLT
	movq	%rax, 48(%rbx)
	addq	$528, %rbp
	movl	$1, %esi
	movq	%rbp, %rdi
	call	_ZN4slay6engine6actors3NewEy@PLT
	movq	%rax, 8(%rbx)
	movq	%rax, %rsi
	movq	%rbp, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdi
	movq	%r12, %rsi
	call	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE@PLT
	movq	%rax, 16(%rbx)
	movq	8(%rbx), %rsi
	movq	%rbp, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5texts3NewEv@PLT
	movq	%rax, 40(%rbx)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movsd	.LC8(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8SetLayerEd@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movsd	.LC9(%rip), %xmm0
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8SetDepthEd@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movq	%rax, %rdi
	movl	$100, %esi
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movl	$100, %esi
	movw	%si, 20(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movl	$100, %ecx
	movq	8(%rbx), %rsi
	movw	%cx, 22(%rax)
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movb	$1, 17(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	16(%rbx), %rsi
	leaq	72(%rax), %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movb	$1, 18(%rax)
	leaq	.LC10(%rip), %rax
	movq	8(%rbx), %rsi
	movq	%rax, (%rsp)
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text6StringEv@PLT
	movq	%rax, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	48(%rbx), %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text7SetFontEy@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	%rax, %rdi
	movl	$50, %esi
	call	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi@PLT
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movl	$50, %edx
	movq	8(%rbx), %rsi
	movw	%dx, 18(%rax)
	movq	(%rbx), %rax
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movb	$1, 16(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	40(%rbx), %rsi
	leaq	104(%rax), %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movb	$1, 17(%rax)
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	addq	$72, %rsp
	.cfi_remember_state
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
	.type	_ZN6playerC2ERN4slay6engineE.cold, @function
_ZN6playerC2ERN4slay6engineE.cold:
.LFSB2232:
.L5:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
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
	.uleb128 .LEHB1-.LCOLDB11
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC2232:
	.section	.text.unlikely
	.text
	.size	_ZN6playerC2ERN4slay6engineE, .-_ZN6playerC2ERN4slay6engineE
	.section	.text.unlikely
	.size	_ZN6playerC2ERN4slay6engineE.cold, .-_ZN6playerC2ERN4slay6engineE.cold
.LCOLDE11:
	.text
.LHOTE11:
	.globl	_ZN6playerC1ERN4slay6engineE
	.set	_ZN6playerC1ERN4slay6engineE,_ZN6playerC2ERN4slay6engineE
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
	je	.L21
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
	movsd	.LC12(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movq	8(%rbx), %rsi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC13(%rip), %xmm1
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
	movsd	.LC12(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC13(%rip), %xmm1
.L44:
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	movsd	%xmm1, (%rsp)
	leaq	528(%rax), %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	leaq	552(%rbp), %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetYEd@PLT
.L26:
	movq	(%rbx), %rax
	movl	$80, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L31
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
	movq	(%rbx), %rdi
	movsd	%xmm0, (%rsp)
	addq	$632, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC15(%rip), %xmm0
	addsd	(%rsp), %xmm0
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
.L34:
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
.L21:
	.cfi_restore_state
	movq	(%rbx), %rax
	movl	$81, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L26
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
	movsd	.LC12(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movq	8(%rbx), %rsi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC14(%rip), %xmm1
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
	movsd	.LC12(%rip), %xmm2
	movq	(%rbx), %rax
	addsd	%xmm0, %xmm2
	leaq	632(%rax), %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC14(%rip), %xmm1
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L31:
	movq	(%rbx), %rax
	movl	$79, %esi
	leaq	160(%rax), %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L34
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
	movq	(%rbx), %rdi
	movsd	%xmm0, (%rsp)
	addq	$632, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	pxor	%xmm1, %xmm1
	movsd	(%rsp), %xmm0
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC15(%rip), %xmm1
	subsd	%xmm1, %xmm0
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2237:
	.size	_ZN6player6UpdateEv, .-_ZN6player6UpdateEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	0
	.long	1072693248
	.align 8
.LC9:
	.long	-1717986918
	.long	1068079513
	.align 8
.LC12:
	.long	0
	.long	1079410688
	.align 8
.LC13:
	.long	0
	.long	1071644672
	.align 8
.LC14:
	.long	0
	.long	-1075838976
	.align 8
.LC15:
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
