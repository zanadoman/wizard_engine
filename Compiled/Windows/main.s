	.file	"main.cpp"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "%d %d %d %d\12\0"
	.text
	.p2align 4
	.def	_Z6printfPKcz.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz.constprop.0
_Z6printfPKcz.constprop.0:
.LFB8594:
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
.LCOLDB6:
	.section	.text.startup,"x"
.LHOTB6:
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8432:
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
	subq	$184, %rsp
	.seh_stackalloc	184
	movaps	%xmm6, 96(%rsp)
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)
	.seh_savexmm	%xmm9, 144
	movaps	%xmm10, 160(%rsp)
	.seh_savexmm	%xmm10, 160
	.seh_endprologue
	call	__main
	movl	$824, %ecx
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
	movl	$72, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	movl	$79, 40(%rsp)
	movq	%rbx, %rdx
	movl	$81, %r9d
	movl	$80, 32(%rsp)
	movl	$82, %r8d
	movq	%rax, %rcx
	movq	%rax, %rbp
.LEHB5:
	call	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_
.LEHE5:
	movl	$72, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movl	$7, 40(%rsp)
	movq	%rbx, %rdx
	movl	$22, %r9d
	movl	$4, 32(%rsp)
	movl	$26, %r8d
	movq	%rax, %rcx
	movq	%rax, %r13
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
	movq	%rax, 48(%rsp)
	movq	%rax, %r14
.LEHB11:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %edi
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %esi
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%edi, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%esi, 32(%rsp)
	movq	%r14, %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE11:
	movl	$32, %ecx
.LEHB12:
	call	_Znwy
.LEHE12:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, 56(%rsp)
	movq	%rax, %r14
.LEHB13:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %edi
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %esi
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%edi, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%esi, 32(%rsp)
	movq	%r14, %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE13:
	movl	$32, %ecx
.LEHB14:
	call	_Znwy
.LEHE14:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, 64(%rsp)
	movq	%rax, %r14
.LEHB15:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %edi
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %esi
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%edi, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%esi, 32(%rsp)
	movq	%r14, %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE15:
	movl	$32, %ecx
.LEHB16:
	call	_Znwy
.LEHE16:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, 72(%rsp)
	movq	%rax, %r14
.LEHB17:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %edi
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %esi
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%edi, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%esi, 32(%rsp)
	movq	%r14, %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE17:
	movl	$32, %ecx
.LEHB18:
	call	_Znwy
.LEHE18:
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movq	%rax, %r14
.LEHB19:
	call	_ZN3wze6engine6RandomEii
	movl	$150, %r8d
	movl	$50, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %edi
	call	_ZN3wze6engine6RandomEii
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	movzwl	%ax, %esi
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm6, %xmm6
	movl	$500, %r8d
	movl	$-500, %edx
	movq	%rbx, %rcx
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6RandomEii
	pxor	%xmm2, %xmm2
	movl	%edi, 40(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	cvtsi2sdl	%eax, %xmm2
	movl	%esi, 32(%rsp)
	movq	%r14, %rcx
	call	_ZN5crateC1EPN3wze6engineEddtt
.LEHE19:
	leaq	80(%rbx), %rsi
	movq	8(%rbp), %rdx
	movq	%rsi, %rcx
.LEHB20:
	call	_ZN3wze6engine6camera4BindEy
	movb	$1, 104(%rbx)
	movq	%rsi, %rcx
	movsd	.LC1(%rip), %xmm10
	movapd	%xmm10, %xmm1
	call	_ZN3wze6engine6camera12SetMinSpeedXEd
	movq	%rsi, %rcx
	movsd	.LC2(%rip), %xmm9
	movapd	%xmm9, %xmm1
	call	_ZN3wze6engine6camera12SetMaxSpeedXEd
	movq	%rsi, %rcx
	movsd	.LC3(%rip), %xmm8
	movapd	%xmm8, %xmm1
	call	_ZN3wze6engine6camera20SetDecelerationRateXEd
	movsd	.LC4(%rip), %xmm7
	movq	%rsi, %rcx
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine6camera20SetAccelerationRateXEd
	movsd	.LC5(%rip), %xmm6
	movq	%rsi, %rcx
	movapd	%xmm6, %xmm1
	call	_ZN3wze6engine6camera17SetSlowDownRangeXEd
	movq	%rsi, %rcx
	movapd	%xmm10, %xmm1
	call	_ZN3wze6engine6camera12SetMinSpeedYEd
	movq	%rsi, %rcx
	movapd	%xmm9, %xmm1
	call	_ZN3wze6engine6camera12SetMaxSpeedYEd
	movq	%rsi, %rcx
	movapd	%xmm8, %xmm1
	call	_ZN3wze6engine6camera20SetDecelerationRateYEd
	movq	%rsi, %rcx
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine6camera20SetAccelerationRateYEd
	movq	%rsi, %rcx
	movapd	%xmm6, %xmm1
	leaq	768(%rbx), %rsi
	call	_ZN3wze6engine6camera17SetSlowDownRangeYEd
	movq	%r15, 80(%rsp)
	movq	%r14, 88(%rsp)
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rbp, %rcx
	call	_ZN6player6UpdateEv
	movq	%r13, %rcx
	call	_ZN6player6UpdateEv
	movq	%r12, %rcx
	call	_ZN10flashlight6UpdateEv
	movq	%rsi, %rcx
	call	_ZN3wze6engine6timing12GetFrameTimeEv
	movq	%rsi, %rcx
	movl	%eax, %r15d
	call	_ZN3wze6engine6timing14GetWorkingTimeEv
	movq	%rsi, %rcx
	movl	%eax, %r14d
	call	_ZN3wze6engine6timing13GetRenderTimeEv
	movq	%rsi, %rcx
	movl	%eax, %edi
	call	_ZN3wze6engine6timing11GetGameTimeEv
	movl	%r15d, 32(%rsp)
	movl	%r14d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edx
	leaq	.LC0(%rip), %rcx
	call	_Z6printfPKcz.constprop.0
.L4:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6UpdateEv
.LEHE20:
	testb	%al, %al
	jne	.L5
	movq	88(%rsp), %r14
	movq	80(%rsp), %r15
	movq	%r14, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%r14, %rcx
	call	_ZdlPvy
	movq	72(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	movq	64(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	movq	56(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	movq	48(%rsp), %rdi
	movq	%rdi, %rcx
	call	_ZN5crateD1Ev
	movl	$32, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	movq	%r12, %rcx
	call	_ZN10flashlightD1Ev
	movl	$40, %edx
	movq	%r12, %rcx
	call	_ZdlPvy
	movq	%r13, %rcx
	call	_ZN6playerD1Ev
	movl	$72, %edx
	movq	%r13, %rcx
	call	_ZdlPvy
	movq	%rbp, %rcx
	call	_ZN6playerD1Ev
	movl	$72, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	%r15, %rcx
	call	_ZN10backgroundD1Ev
	movl	$32, %edx
	movq	%r15, %rcx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_ZN3wze6engineD1Ev
	movl	$824, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	nop
	movaps	96(%rsp), %xmm6
	movaps	112(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	128(%rsp), %xmm8
	movaps	144(%rsp), %xmm9
	movaps	160(%rsp), %xmm10
	addq	$184, %rsp
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
.LLSDA8432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8432-.LLSDACSB8432
.LLSDACSB8432:
	.uleb128 .LEHB0-.LFB8432
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8432
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB8432
	.uleb128 0
	.uleb128 .LEHB2-.LFB8432
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8432
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L17-.LFB8432
	.uleb128 0
	.uleb128 .LEHB4-.LFB8432
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8432
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L18-.LFB8432
	.uleb128 0
	.uleb128 .LEHB6-.LFB8432
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8432
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L19-.LFB8432
	.uleb128 0
	.uleb128 .LEHB8-.LFB8432
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB8432
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L20-.LFB8432
	.uleb128 0
	.uleb128 .LEHB10-.LFB8432
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8432
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L21-.LFB8432
	.uleb128 0
	.uleb128 .LEHB12-.LFB8432
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB8432
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L22-.LFB8432
	.uleb128 0
	.uleb128 .LEHB14-.LFB8432
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB8432
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L23-.LFB8432
	.uleb128 0
	.uleb128 .LEHB16-.LFB8432
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB8432
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L24-.LFB8432
	.uleb128 0
	.uleb128 .LEHB18-.LFB8432
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB8432
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L25-.LFB8432
	.uleb128 0
	.uleb128 .LEHB20-.LFB8432
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE8432:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	248
	.seh_savereg	%rbx, 184
	.seh_savereg	%rsi, 192
	.seh_savereg	%rdi, 200
	.seh_savereg	%rbp, 208
	.seh_savexmm	%xmm6, 96
	.seh_savexmm	%xmm7, 112
	.seh_savereg	%r12, 216
	.seh_savereg	%r13, 224
	.seh_savereg	%r14, 232
	.seh_savereg	%r15, 240
	.seh_savexmm	%xmm8, 128
	.seh_savexmm	%xmm9, 144
	.seh_savexmm	%xmm10, 160
	.seh_endprologue
main.cold:
.L6:
	movq	%rbx, %rcx
	movl	$824, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB21:
	call	_Unwind_Resume
.L15:
	movq	%r14, %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L14:
	movq	72(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L13:
	movq	64(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L12:
	movq	56(%rsp), %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L11:
	movq	48(%rsp), %rcx
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
	movq	%r13, %rcx
	movl	$72, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L8:
	movq	%rbp, %rcx
	movl	$72, %edx
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
.LLSDAC8432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8432-.LLSDACSBC8432
.LLSDACSBC8432:
	.uleb128 .LEHB21-.LCOLDB6
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSEC8432:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE6:
	.section	.text.startup,"x"
.LHOTE6:
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
	.def	_ZN3wze6engine6timing12GetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing14GetWorkingTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing13GetRenderTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing11GetGameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5crateD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN10flashlightD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN10backgroundD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
