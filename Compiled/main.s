	.file	"main.cpp"
	.text
	.section	.rodata
.LC0:
	.string	"test.png"
.LC1:
	.string	"crazy-pixel.ttf"
.LC4:
	.string	"Player"
.LC5:
	.string	"back.png"
.LC10:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$792, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -788(%rbp)
	movq	%rsi, -800(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	leaq	-704(%rbp), %rax
	movl	$6, %r8d
	movl	$1080, %ecx
	movl	$1920, %edx
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN4slay6engineC1EPKctth@PLT
.LEHE0:
	leaq	-704(%rbp), %rax
	addq	$512, %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB1:
	call	_ZN4slay6engine6actors3NewEy@PLT
	movq	%rax, -776(%rbp)
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8textures3NewEv@PLT
	movq	%rax, -768(%rbp)
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$72, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts3NewEv@PLT
	movq	%rax, -760(%rbp)
	leaq	-704(%rbp), %rax
	addq	$544, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets7LoadPNGEPKc@PLT
	movq	%rax, -752(%rbp)
	leaq	-704(%rbp), %rax
	addq	$544, %rax
	movl	$48, %edx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets7LoadTTFEPKch@PLT
	movq	%rax, -744(%rbp)
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC2(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetLayerEd@PLT
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC3(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetDepthEd@PLT
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-768(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movq	%rax, %rdx
	movq	-752(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy@PLT
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-768(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$100, 18(%rax)
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-768(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$100, 20(%rax)
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-768(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movb	$1, 17(%rax)
	leaq	.LC4(%rip), %rax
	movq	%rax, -712(%rbp)
	leaq	-712(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-760(%rbp), %rax
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
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-760(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movq	%rax, %rdx
	movq	-744(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text7SetFontEy@PLT
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-760(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movw	$50, 18(%rax)
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-760(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movl	$50, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor5texts4text10SetOffsetYEi@PLT
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-760(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movb	$1, 16(%rax)
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	72(%rax), %rdx
	movq	-760(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor5textsixEy@PLT
	movb	$1, 17(%rax)
	leaq	-704(%rbp), %rax
	addq	$512, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors3NewEy@PLT
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	addq	$40, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8textures3NewEv@PLT
	movq	%rax, -728(%rbp)
	leaq	-704(%rbp), %rax
	addq	$544, %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4slay6engine6assets7LoadPNGEPKc@PLT
	movq	%rax, -720(%rbp)
	movq	-736(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdx
	movq	.LC2(%rip), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8SetLayerEd@PLT
	movq	-736(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-728(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movq	%rax, %rdx
	movq	-720(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8textures7texture12SetTextureIDEy@PLT
	movq	-736(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-728(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$1280, 18(%rax)
	movq	-736(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-728(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movw	$720, 20(%rax)
	movq	-736(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	leaq	40(%rax), %rdx
	movq	-728(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actors5actor8texturesixEy@PLT
	movb	$0, 38(%rax)
	jmp	.L2
.L15:
	leaq	-704(%rbp), %rax
	addq	$152, %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keys8GetStateENS_3keyE@PLT
	testb	%al, %al
	je	.L3
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rbx
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	%xmm0, -808(%rbp)
	leaq	-704(%rbp), %rax
	addq	$600, %rax
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
	movsd	.LC6(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-808(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
	jmp	.L6
.L3:
	leaq	-704(%rbp), %rax
	addq	$152, %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keys8GetStateENS_3keyE@PLT
	testb	%al, %al
	je	.L6
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %r12
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movq	%xmm0, %rbx
	leaq	-704(%rbp), %rax
	addq	$600, %rax
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
	movsd	.LC6(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	%rbx, %xmm2
	subsd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	movq	%r12, %rdi
	call	_ZN4slay6engine6actors5actor8SetAngleEd@PLT
.L6:
	leaq	-704(%rbp), %rax
	addq	$152, %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keys8GetStateENS_3keyE@PLT
	testb	%al, %al
	je	.L9
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC7(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -808(%rbp)
	leaq	-704(%rbp), %rax
	addq	$600, %rax
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
	movsd	.LC8(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	-776(%rbp), %rdx
	leaq	-704(%rbp), %rcx
	addq	$536, %rcx
	movq	%rdx, %rsi
	movsd	-808(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rcx, %rdi
	call	_ZN4slay6engine6vector5ApplyEddy@PLT
	jmp	.L12
.L9:
	leaq	-704(%rbp), %rax
	addq	$152, %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	_ZN4slay6engine4keys8GetStateENS_3keyE@PLT
	testb	%al, %al
	je	.L12
	movq	-776(%rbp), %rax
	leaq	-704(%rbp), %rdx
	addq	$512, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN4slay6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN4slay6engine6actors5actor8GetAngleEv@PLT
	movsd	.LC7(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -808(%rbp)
	leaq	-704(%rbp), %rax
	addq	$600, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetDeltaTimeEv@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L13
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L14
.L13:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L14:
	movsd	.LC9(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	-776(%rbp), %rdx
	leaq	-704(%rbp), %rcx
	addq	$536, %rcx
	movq	%rdx, %rsi
	movsd	-808(%rbp), %xmm1
	movq	%rax, %xmm0
	movq	%rcx, %rdi
	call	_ZN4slay6engine6vector5ApplyEddy@PLT
.L12:
	leaq	-704(%rbp), %rax
	addq	$600, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing12GetFrameTimeEv@PLT
	movl	%eax, %r13d
	leaq	-704(%rbp), %rax
	addq	$600, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing14GetWorkingTimeEv@PLT
	movl	%eax, %r12d
	leaq	-704(%rbp), %rax
	addq	$600, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing13GetRenderTimeEv@PLT
	movl	%eax, %ebx
	leaq	-704(%rbp), %rax
	addq	$600, %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6timing11GetGameTimeEv@PLT
	movl	%r13d, %r8d
	movl	%r12d, %ecx
	movl	%ebx, %edx
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engine6UpdateEv@PLT
.LEHE1:
	testb	%al, %al
	jne	.L15
	movl	$0, %ebx
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movl	%ebx, %eax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	jmp	.L21
.L20:
	movq	%rax, %rbx
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4slay6engineD1Ev@PLT
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L21:
	call	__stack_chk_fail@PLT
.L19:
	addq	$792, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
	.uleb128 .L20-.LFB2196
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
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	-1717986918
	.long	1067030937
	.align 8
.LC6:
	.long	-1717986918
	.long	1070176665
	.align 8
.LC7:
	.long	0
	.long	1079410688
	.align 8
.LC8:
	.long	0
	.long	1071644672
	.align 8
.LC9:
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
