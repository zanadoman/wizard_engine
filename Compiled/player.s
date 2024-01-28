	.file	"player.cpp"
	.text
	.section	.rodata
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
.LC6:
	.string	"assets/crazy-pixel.ttf"
.LC9:
	.string	"Player"
	.text
	.align 2
	.globl	_ZN6playerC2ERN4slay6engineE
	.type	_ZN6playerC2ERN4slay6engineE, @function
_ZN6playerC2ERN4slay6engineE:
.LFB2197:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2197
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-120(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIyEC1Ev
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -72(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %r14
	movl	$6, %r15d
	movq	-120(%rbp), %rax
	addq	$24, %rax
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo5arrayIyEaSESt16initializer_listIyE
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	addq	$552, %rax
	movl	$48, %edx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets8LoadFontEPKch@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-128(%rbp), %rax
	addq	$520, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors3NewEy@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-128(%rbp), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$72, %rax
	movq	-120(%rbp), %rdx
	addq	$24, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooks3NewEPN3neo5arrayIyEE@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-128(%rbp), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$104, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts3NewEv@PLT
	movq	-120(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC7(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetLayerEd@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC8(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetDepthEd@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movl	$100, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooks8flipbook8SetDelayEj@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movw	$100, 20(%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movw	$100, 22(%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movb	$1, 17(%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movb	$1, 18(%rax)
	leaq	.LC9(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text6StringEv@PLT
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo6stringaSESt16initializer_listIPKcE@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text7SetFontEy@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movl	$50, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi@PLT
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movw	$50, 18(%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movb	$1, 16(%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
.LEHE0:
	movb	$1, 17(%rax)
	nop
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	je	.L4
	jmp	.L6
.L5:
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIyED1Ev
	movq	%rbx, %rax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L6:
	call	__stack_chk_fail@PLT
.L4:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2197-.LLSDACSB2197
.LLSDACSB2197:
	.uleb128 .LEHB0-.LFB2197
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L5-.LFB2197
	.uleb128 0
	.uleb128 .LEHB1-.LFB2197
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2197:
	.text
	.size	_ZN6playerC2ERN4slay6engineE, .-_ZN6playerC2ERN4slay6engineE
	.globl	_ZN6playerC1ERN4slay6engineE
	.set	_ZN6playerC1ERN4slay6engineE,_ZN6playerC2ERN4slay6engineE
	.align 2
	.globl	_ZN6playerD2Ev
	.type	_ZN6playerD2Ev, @function
_ZN6playerD2Ev:
.LFB2200:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2200
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movb	$0, -17(%rbp)
	jmp	.L8
.L9:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	552(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movzbl	-17(%rbp), %eax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN3neo5arrayIyEixEy
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN4slay6engine6assets13UnloadTextureEy@PLT
	movzbl	-17(%rbp), %eax
	addl	$1, %eax
	movb	%al, -17(%rbp)
.L8:
	movzbl	-17(%rbp), %ebx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIyE6LengthEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L9
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	552(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6assets10UnloadFontEy@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors6DeleteEy@PLT
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZN3neo5arrayIyED1Ev
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2200:
	.section	.gcc_except_table
.LLSDA2200:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2200-.LLSDACSB2200
.LLSDACSB2200:
.LLSDACSE2200:
	.text
	.size	_ZN6playerD2Ev, .-_ZN6playerD2Ev
	.globl	_ZN6playerD1Ev
	.set	_ZN6playerD1Ev,_ZN6playerD2Ev
	.align 2
	.globl	_ZN6player6UpdateEv
	.type	_ZN6player6UpdateEv, @function
_ZN6player6UpdateEv:
.LFB2202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$152, %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L13
.L12:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L13:
	movsd	.LC11(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetXEv@PLT
	movq	%xmm0, %rax
	movsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetXEd@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L14
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L15
.L14:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L15:
	movsd	.LC11(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	movq	%xmm0, %rax
	movsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetYEd@PLT
	jmp	.L16
.L11:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$152, %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L17
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L18
.L17:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L18:
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetXEv@PLT
	movq	%xmm0, %rax
	movsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetXEd@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	544(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC10(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L19
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L20
.L19:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L20:
	movsd	.LC12(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	movq	%xmm0, %rax
	movsd	-32(%rbp), %xmm2
	movsd	-40(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor4SetYEd@PLT
.L16:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$152, %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L21
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L22
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L23
.L22:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L23:
	movsd	.LC13(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
	jmp	.L24
.L21:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$152, %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L24
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	520(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movq	%xmm0, %rbx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L25
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L26
.L25:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L26:
	movsd	.LC13(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	%rbx, %xmm3
	subsd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
.L24:
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2202:
	.size	_ZN6player6UpdateEv, .-_ZN6player6UpdateEv
	.section	.text._ZN3neo5arrayIyEC2Ev,"axG",@progbits,_ZN3neo5arrayIyEC5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIyEC2Ev
	.type	_ZN3neo5arrayIyEC2Ev, @function
_ZN3neo5arrayIyEC2Ev:
.LFB2268:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2268:
	.size	_ZN3neo5arrayIyEC2Ev, .-_ZN3neo5arrayIyEC2Ev
	.weak	_ZN3neo5arrayIyEC1Ev
	.set	_ZN3neo5arrayIyEC1Ev,_ZN3neo5arrayIyEC2Ev
	.section	.text._ZN3neo5arrayIyED2Ev,"axG",@progbits,_ZN3neo5arrayIyED5Ev,comdat
	.align 2
	.weak	_ZN3neo5arrayIyED2Ev
	.type	_ZN3neo5arrayIyED2Ev, @function
_ZN3neo5arrayIyED2Ev:
.LFB2271:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L30
.L31:
	addq	$1, -8(%rbp)
.L30:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2271:
	.size	_ZN3neo5arrayIyED2Ev, .-_ZN3neo5arrayIyED2Ev
	.weak	_ZN3neo5arrayIyED1Ev
	.set	_ZN3neo5arrayIyED1Ev,_ZN3neo5arrayIyED2Ev
	.section	.text._ZNKSt16initializer_listIyE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIyE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE4sizeEv
	.type	_ZNKSt16initializer_listIyE4sizeEv, @function
_ZNKSt16initializer_listIyE4sizeEv:
.LFB2274:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2274:
	.size	_ZNKSt16initializer_listIyE4sizeEv, .-_ZNKSt16initializer_listIyE4sizeEv
	.section	.rodata
	.align 8
.LC14:
	.string	"neo::array=: Memory allocation failed\nParams: Elements(type, length): %ld, %ld\n"
	.section	.text._ZN3neo5arrayIyEaSESt16initializer_listIyE,"axG",@progbits,_ZN3neo5arrayIyEaSESt16initializer_listIyE,comdat
	.align 2
	.weak	_ZN3neo5arrayIyEaSESt16initializer_listIyE
	.type	_ZN3neo5arrayIyEaSESt16initializer_listIyE, @function
_ZN3neo5arrayIyEaSESt16initializer_listIyE:
.LFB2273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L35
.L36:
	addq	$1, -24(%rbp)
.L35:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L36
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L37
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L38
.L37:
	movq	-40(%rbp), %rax
	movq	(%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	cmpq	%rax, %rbx
	je	.L39
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	testb	%al, %al
	je	.L41
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE4sizeEv
	movq	%rax, %rdx
	movl	$8, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L41:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %r12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIyE5beginEv
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN3neo9memCopyToEPKvPvy@PLT
.L38:
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2273:
	.size	_ZN3neo5arrayIyEaSESt16initializer_listIyE, .-_ZN3neo5arrayIyEaSESt16initializer_listIyE
	.section	.text._ZN3neo5arrayIyE6LengthEv,"axG",@progbits,_ZN3neo5arrayIyE6LengthEv,comdat
	.align 2
	.weak	_ZN3neo5arrayIyE6LengthEv
	.type	_ZN3neo5arrayIyE6LengthEv, @function
_ZN3neo5arrayIyE6LengthEv:
.LFB2275:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2275:
	.size	_ZN3neo5arrayIyE6LengthEv, .-_ZN3neo5arrayIyE6LengthEv
	.section	.rodata
	.align 8
.LC15:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text._ZN3neo5arrayIyEixEy,"axG",@progbits,_ZN3neo5arrayIyEixEy,comdat
	.align 2
	.weak	_ZN3neo5arrayIyEixEy
	.type	_ZN3neo5arrayIyEixEy, @function
_ZN3neo5arrayIyEixEy:
.LFB2276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L46
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L46:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.size	_ZN3neo5arrayIyEixEy, .-_ZN3neo5arrayIyEixEy
	.section	.text._ZNKSt16initializer_listIyE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIyE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIyE5beginEv
	.type	_ZNKSt16initializer_listIyE5beginEv, @function
_ZNKSt16initializer_listIyE5beginEv:
.LFB2327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2327:
	.size	_ZNKSt16initializer_listIyE5beginEv, .-_ZNKSt16initializer_listIyE5beginEv
	.section	.rodata
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	-1717986918
	.long	1068079513
	.align 8
.LC10:
	.long	0
	.long	1079410688
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	-1075838976
	.align 8
.LC13:
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
