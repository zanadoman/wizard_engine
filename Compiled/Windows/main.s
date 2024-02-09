	.file	"main.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "%d\12\0"
	.text
	.p2align 4
	.def	_Z6printfPKcz.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz.constprop.0
_Z6printfPKcz.constprop.0:
.LFB6880:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$1, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.unlikely,"x"
.LCOLDB7:
	.section	.text.startup,"x"
.LHOTB7:
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6879:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$296, %rsp
	.seh_stackalloc	296
	movaps	%xmm6, 208(%rsp)
	.seh_savexmm	%xmm6, 208
	movaps	%xmm7, 224(%rsp)
	.seh_savexmm	%xmm7, 224
	movaps	%xmm8, 240(%rsp)
	.seh_savexmm	%xmm8, 240
	movaps	%xmm9, 256(%rsp)
	.seh_savexmm	%xmm9, 256
	movaps	%xmm10, 272(%rsp)
	.seh_savexmm	%xmm10, 272
	.seh_endprologue
	call	__main
	movl	$560, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movl	$1920, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$6, 40(%rsp)
	movq	%rax, %rcx
	movq	%rax, %rbx
	movl	$1080, 32(%rsp)
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth
.LEHE1:
	movl	$32, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, %r15
.LEHB3:
	call	_ZN10backgroundC1EPN3wze6engineE
.LEHE3:
	movl	$80, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	movl	$79, 40(%rsp)
	movq	%rbx, %rdx
	movl	$81, %r9d
	movl	$80, 32(%rsp)
	movl	$82, %r8d
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB5:
	call	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_
.LEHE5:
	movl	$80, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movl	$7, 40(%rsp)
	movq	%rbx, %rdx
	movl	$22, %r9d
	movl	$4, 32(%rsp)
	movl	$26, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbp
.LEHB7:
	call	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_
.LEHE7:
	movl	$40, %ecx
.LEHB8:
	call	_Znwy
.LEHE8:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
.LEHB9:
	call	_ZN10flashlightC1EPN3wze6engineE
.LEHE9:
	movl	$32, %ecx
.LEHB10:
	call	_Znwy
.LEHE10:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, %rsi
.LEHB11:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r14d
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%r14d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%r13d, 32(%rsp)
	movq	%rsi, %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE11:
	movl	$32, %ecx
.LEHB12:
	call	_Znwy
.LEHE12:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, 104(%rsp)
.LEHB13:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r14d
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%r14d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%r13d, 32(%rsp)
	movq	104(%rsp), %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE13:
	movl	$32, %ecx
.LEHB14:
	call	_Znwy
.LEHE14:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, 112(%rsp)
.LEHB15:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r14d
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%r14d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%r13d, 32(%rsp)
	movq	112(%rsp), %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE15:
	movl	$32, %ecx
.LEHB16:
	call	_Znwy
.LEHE16:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, 120(%rsp)
.LEHB17:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r14d
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%r14d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%r13d, 32(%rsp)
	movq	120(%rsp), %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE17:
	movl	$32, %ecx
.LEHB18:
	call	_Znwy
.LEHE18:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, 128(%rsp)
.LEHB19:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r14d
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%r14d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%r13d, 32(%rsp)
	movq	128(%rsp), %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE19:
	leaq	80(%rbx), %r13
	movq	8(%rdi), %rdx
	leaq	200(%rsp), %r14
	movq	%r13, %rcx
.LEHB20:
	call	_ZN3wze6engine6camera4BindEy
	movb	$1, 88(%rbx)
	movq	%r13, %rcx
	movsd	.LC1(%rip), %xmm10
	movapd	%xmm10, %xmm1
	call	_ZN3wze6engine6camera12SetMinSpeedXEd
	movq	%r13, %rcx
	movsd	.LC2(%rip), %xmm9
	movapd	%xmm9, %xmm1
	call	_ZN3wze6engine6camera12SetMaxSpeedXEd
	movq	%r13, %rcx
	movsd	.LC3(%rip), %xmm8
	movapd	%xmm8, %xmm1
	call	_ZN3wze6engine6camera20SetDecelerationRateXEd
	movsd	.LC4(%rip), %xmm7
	movq	%r13, %rcx
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine6camera20SetAccelerationRateXEd
	movsd	.LC5(%rip), %xmm6
	movq	%r13, %rcx
	movapd	%xmm6, %xmm1
	call	_ZN3wze6engine6camera17SetSlowDownRangeXEd
	movq	%r13, %rcx
	movapd	%xmm10, %xmm1
	call	_ZN3wze6engine6camera12SetMinSpeedYEd
	movq	%r13, %rcx
	movapd	%xmm9, %xmm1
	call	_ZN3wze6engine6camera12SetMaxSpeedYEd
	movq	%r13, %rcx
	movapd	%xmm8, %xmm1
	call	_ZN3wze6engine6camera20SetDecelerationRateYEd
	movapd	%xmm7, %xmm1
	movq	%r13, %rcx
	call	_ZN3wze6engine6camera20SetAccelerationRateYEd
	movq	%r13, %rcx
	movapd	%xmm6, %xmm1
	leaq	.LC0(%rip), %r13
	call	_ZN3wze6engine6camera17SetSlowDownRangeYEd
	movq	%r15, 136(%rsp)
	movsd	.LC6(%rip), %xmm7
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rdi, %rcx
	leaq	344(%rbx), %r15
	call	_ZN6player6UpdateEv
	movq	%rbp, %rcx
	call	_ZN6player6UpdateEv
	movq	%r12, %rcx
	call	_ZN10flashlight6UpdateEv
	movq	8(%rbp), %rdx
	movq	%r15, %rcx
	movq	$2, 200(%rsp)
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	8(%rbp), %rdx
	movq	%r15, %rcx
	movapd	%xmm0, %xmm6
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	movq	8(%rdi), %rdx
	movq	%r15, %rcx
	movsd	%xmm0, 96(%rsp)
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	8(%rdi), %rdx
	movq	%r15, %rcx
	movsd	%xmm0, 88(%rsp)
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor4GetXEv
	leaq	144(%rsp), %rax
	movl	$1, 40(%rsp)
	movsd	96(%rsp), %xmm3
	movq	%rax, 72(%rsp)
	leaq	160(%rsp), %rax
	movsd	88(%rsp), %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, 64(%rsp)
	leaq	176(%rsp), %rax
	leaq	400(%rbx), %rcx
	movq	%rax, 56(%rsp)
	movsd	%xmm7, 48(%rsp)
	movsd	%xmm6, 32(%rsp)
	movq	%r14, 176(%rsp)
	movq	$1, 184(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 152(%rsp)
	call	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_
	movq	%r13, %rcx
	movzbl	%al, %edx
	call	_Z6printfPKcz.constprop.0
.L4:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6UpdateEv
.LEHE20:
	testb	%al, %al
	jne	.L5
	movq	128(%rsp), %r14
	movq	136(%rsp), %r15
	movq	%r14, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%r14, %rcx
	call	_ZdlPvy
	movq	120(%rsp), %r14
	movq	%r14, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%r14, %rcx
	call	_ZdlPvy
	movq	112(%rsp), %r14
	movq	%r14, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%r14, %rcx
	call	_ZdlPvy
	movq	104(%rsp), %r14
	movq	%r14, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%r14, %rcx
	call	_ZdlPvy
	movq	%rsi, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	movq	%r12, %rcx
	call	_ZN10flashlightD1Ev
	movl	$40, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	%rbp, %rcx
	call	_ZN6playerD1Ev
	movl	$80, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	%rdi, %rcx
	call	_ZN6playerD1Ev
	movl	$80, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	movq	%r15, %rcx
	call	_ZN10backgroundD1Ev
	movl	$32, %edx
	movq	%r15, %rcx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_ZN3wze6engineD1Ev
	movl	$560, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	nop
	movaps	208(%rsp), %xmm6
	movaps	224(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	240(%rsp), %xmm8
	movaps	256(%rsp), %xmm9
	movaps	272(%rsp), %xmm10
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L16:
	movq	%rax, %rsi
	jmp	.L6
.L25:
	movq	%rax, %rbx
	jmp	.L15
.L24:
	movq	%rax, %rbx
	jmp	.L14
.L23:
	movq	%rax, %rbx
	jmp	.L13
.L22:
	movq	%rax, %rbx
	jmp	.L12
.L21:
	movq	%rax, %rbx
	jmp	.L11
.L20:
	movq	%rax, %rbx
	jmp	.L10
.L19:
	movq	%rax, %rbx
	jmp	.L9
.L18:
	movq	%rax, %rbx
	jmp	.L8
.L17:
	movq	%rax, %rbx
	jmp	.L7
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6879:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6879-.LLSDACSB6879
.LLSDACSB6879:
	.uleb128 .LEHB0-.LFB6879
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6879
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB6879
	.uleb128 0
	.uleb128 .LEHB2-.LFB6879
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6879
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L17-.LFB6879
	.uleb128 0
	.uleb128 .LEHB4-.LFB6879
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB6879
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L18-.LFB6879
	.uleb128 0
	.uleb128 .LEHB6-.LFB6879
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB6879
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L19-.LFB6879
	.uleb128 0
	.uleb128 .LEHB8-.LFB6879
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB6879
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L20-.LFB6879
	.uleb128 0
	.uleb128 .LEHB10-.LFB6879
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB6879
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L21-.LFB6879
	.uleb128 0
	.uleb128 .LEHB12-.LFB6879
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB6879
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L22-.LFB6879
	.uleb128 0
	.uleb128 .LEHB14-.LFB6879
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB6879
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L23-.LFB6879
	.uleb128 0
	.uleb128 .LEHB16-.LFB6879
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB6879
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L24-.LFB6879
	.uleb128 0
	.uleb128 .LEHB18-.LFB6879
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB6879
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L25-.LFB6879
	.uleb128 0
	.uleb128 .LEHB20-.LFB6879
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE6879:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	360
	.seh_savereg	%rbx, 296
	.seh_savereg	%rsi, 304
	.seh_savereg	%rdi, 312
	.seh_savereg	%rbp, 320
	.seh_savexmm	%xmm6, 208
	.seh_savexmm	%xmm7, 224
	.seh_savereg	%r12, 328
	.seh_savereg	%r13, 336
	.seh_savereg	%r14, 344
	.seh_savereg	%r15, 352
	.seh_savexmm	%xmm8, 240
	.seh_savexmm	%xmm9, 256
	.seh_savexmm	%xmm10, 272
	.seh_endprologue
main.cold:
.L6:
	movq	%rbx, %rcx
	movl	$560, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB21:
	call	_Unwind_Resume
.L15:
	movq	128(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L14:
	movq	120(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L13:
	movq	112(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L12:
	movq	104(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L11:
	movq	%rsi, %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L10:
	movq	%r12, %rcx
	movl	$40, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L9:
	movq	%rbp, %rcx
	movl	$80, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L8:
	movq	%rdi, %rcx
	movl	$80, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L7:
	movq	%r15, %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE21:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6879:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6879-.LLSDACSBC6879
.LLSDACSBC6879:
	.uleb128 .LEHB21-.LCOLDB7
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSEC6879:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE7:
	.section	.text.startup,"x"
.LHOTE7:
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	-1717986918
	.long	1070176665
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 8
.LC3:
	.long	-755914244
	.long	1062232653
	.align 8
.LC4:
	.long	-350469331
	.long	1059731170
	.align 8
.LC5:
	.long	0
	.long	1079574528
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.def	_ZN10backgroundC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_;	.scl	2;	.type	32;	.endef
	.def	_ZN10flashlightC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6RandomEii;	.scl	2;	.type	32;	.endef
	.def	_ZN5crateC1EPN3wze6engineEddtt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera12SetMinSpeedXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera12SetMaxSpeedXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera20SetDecelerationRateXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera20SetAccelerationRateXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera17SetSlowDownRangeXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera12SetMinSpeedYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera12SetMaxSpeedYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera20SetDecelerationRateYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera20SetAccelerationRateYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera17SetSlowDownRangeYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN10flashlight6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5crateD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN10flashlightD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN10backgroundD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
