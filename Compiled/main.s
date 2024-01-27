	.file	"main.cpp"
	.text
	.section	.rodata
.LC0:
	.string	"player1.png"
.LC1:
	.string	"player2.png"
.LC2:
	.string	"player3.png"
.LC3:
	.string	"player4.png"
.LC4:
	.string	"player5.png"
.LC5:
	.string	"player6.png"
.LC6:
	.string	"crazy-pixel.ttf"
.LC9:
	.string	"Player"
.LC10:
	.string	"back.png"
.LC15:
	.string	"%d %d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2196:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2196
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
	subq	$888, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -900(%rbp)
	movq	%rsi, -912(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-736(%rbp), %rax
	movl	$6, %r8d
	movl	$1080, %ecx
	movl	$1920, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN4slay6engineC1EPKctth@PLT
.LEHE0:
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -832(%rbp)
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -824(%rbp)
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -816(%rbp)
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -808(%rbp)
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -800(%rbp)
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -792(%rbp)
	leaq	-736(%rbp), %rax
	addq	$520, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors3NewEy@PLT
	movq	%rax, -888(%rbp)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$72, %rax
	movq	-832(%rbp), %rdx
	movq	%rdx, -784(%rbp)
	movq	-824(%rbp), %rdx
	movq	%rdx, -776(%rbp)
	movq	-816(%rbp), %rdx
	movq	%rdx, -768(%rbp)
	movq	-808(%rbp), %rdx
	movq	%rdx, -760(%rbp)
	movq	-800(%rbp), %rdx
	movq	%rdx, -752(%rbp)
	movq	-792(%rbp), %rdx
	movq	%rdx, -744(%rbp)
	leaq	-784(%rbp), %rdx
	movq	%rdx, %r14
	movl	$6, %r15d
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%rdi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooks3NewESt16initializer_listIyE@PLT
	movq	%rax, -880(%rbp)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-880(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movw	$100, 18(%rax)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-880(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movw	$100, 20(%rax)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-880(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movb	$1, 16(%rax)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-880(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor9flipbooksixEy@PLT
	movb	$1, 17(%rax)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$104, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts3NewEv@PLT
	movq	%rax, -872(%rbp)
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	movl	$48, %edx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets8LoadFontEPKch@PLT
	movq	%rax, -864(%rbp)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC7(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetLayerEd@PLT
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC8(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetDepthEd@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, -784(%rbp)
	leaq	-784(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-872(%rbp), %rax
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
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-872(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	%rax, %rdx
	movq	-864(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text7SetFontEy@PLT
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-872(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movw	$50, 18(%rax)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-872(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movl	$50, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi@PLT
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-872(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movb	$1, 16(%rax)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	104(%rax), %rdx
	movq	-872(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movb	$1, 17(%rax)
	leaq	-736(%rbp), %rax
	addq	$520, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors3NewEy@PLT
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8textures3NewEv@PLT
	movq	%rax, -848(%rbp)
	leaq	-736(%rbp), %rax
	addq	$552, %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets11LoadTextureEPKc@PLT
	movq	%rax, -840(%rbp)
	movq	-856(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC7(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetLayerEd@PLT
	movq	-856(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-848(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movq	%rax, %rdx
	movq	-840(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy@PLT
	movq	-856(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-848(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$1280, 18(%rax)
	movq	-856(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-848(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$720, 20(%rax)
	movq	-856(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-848(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movb	$0, 38(%rax)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6camera4BindEy@PLT
	jmp	.L2
.L19:
	leaq	-736(%rbp), %rax
	addq	$152, %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L3
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rbx
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	%xmm0, -920(%rbp)
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L4
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L5
.L4:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L5:
	movsd	.LC11(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-920(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
	jmp	.L6
.L3:
	leaq	-736(%rbp), %rax
	addq	$152, %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L6
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %r12
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movq	%xmm0, %rbx
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L7
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L8
.L7:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L8:
	movsd	.LC11(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	%rbx, %xmm3
	subsd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
.L6:
	leaq	-736(%rbp), %rax
	addq	$152, %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L9
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rbx
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC12(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -920(%rbp)
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L10
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L11
.L10:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L11:
	movsd	.LC13(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -928(%rbp)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetXEv@PLT
	movq	%xmm0, %rax
	leaq	-736(%rbp), %rdx
	addq	$544, %rdx
	movsd	-920(%rbp), %xmm2
	movsd	-928(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor4SetXEd@PLT
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rbx
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC12(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -920(%rbp)
	leaq	-736(%rbp), %rax
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
	movsd	.LC13(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -928(%rbp)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	movq	%xmm0, %rax
	leaq	-736(%rbp), %rdx
	addq	$544, %rdx
	movsd	-920(%rbp), %xmm2
	movsd	-928(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor4SetYEd@PLT
	jmp	.L14
.L9:
	leaq	-736(%rbp), %rax
	addq	$152, %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keysixENS_3keyE@PLT
	testb	%al, %al
	je	.L14
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rbx
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC12(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -920(%rbp)
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L15
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L16
.L15:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L16:
	movsd	.LC14(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -928(%rbp)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetXEv@PLT
	movq	%xmm0, %rax
	leaq	-736(%rbp), %rdx
	addq	$544, %rdx
	movsd	-920(%rbp), %xmm2
	movsd	-928(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector9TerminalXEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor4SetXEd@PLT
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rbx
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC12(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -920(%rbp)
	leaq	-736(%rbp), %rax
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
	movsd	.LC14(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -928(%rbp)
	movq	-888(%rbp), %rax
	leaq	-736(%rbp), %rdx
	addq	$520, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor4GetYEv@PLT
	movq	%xmm0, %rax
	leaq	-736(%rbp), %rdx
	addq	$544, %rdx
	movsd	-920(%rbp), %xmm2
	movsd	-928(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6vector9TerminalYEddd@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor4SetYEd@PLT
.L14:
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetFrameTimeEv@PLT
	movl	%eax, %r13d
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing14GetWorkingTimeEv@PLT
	movl	%eax, %r12d
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing13GetRenderTimeEv@PLT
	movl	%eax, %ebx
	leaq	-736(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing11GetGameTimeEv@PLT
	movl	%r13d, %r8d
	movl	%r12d, %ecx
	movl	%ebx, %edx
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6UpdateEv@PLT
.LEHE1:
	testb	%al, %al
	jne	.L19
	movl	$0, %ebx
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movl	%ebx, %eax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	jmp	.L25
.L24:
	movq	%rax, %rbx
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	%rbx, %rax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L25:
	call	__stack_chk_fail@PLT
.L23:
	addq	$888, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2196:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2196:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2196-.LLSDACSB2196
.LLSDACSB2196:
	.uleb128 .LEHB0-.LFB2196
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2196
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L24-.LFB2196
	.uleb128 0
	.uleb128 .LEHB2-.LFB2196
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2196:
	.text
	.size	main, .-main
	.section	.rodata
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	-1717986918
	.long	1067030937
	.align 8
.LC11:
	.long	-1717986918
	.long	1070176665
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
