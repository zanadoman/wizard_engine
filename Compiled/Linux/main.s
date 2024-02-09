	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"%d\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8146:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8146
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$560, %edi
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$6, %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$1080, %r8d
	movl	$1920, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth@PLT
.LEHE1:
	movl	$32, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 88(%rsp)
.LEHB3:
	call	_ZN10backgroundC1EPN3wze6engineE@PLT
.LEHE3:
	movl	$80, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movl	$79, %r9d
	movl	$80, %r8d
	movq	%rbx, %rsi
	movl	$81, %ecx
	movl	$82, %edx
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB5:
	call	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_@PLT
.LEHE5:
	movl	$80, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movl	$7, %r9d
	movl	$4, %r8d
	movq	%rbx, %rsi
	movl	$22, %ecx
	movl	$26, %edx
	movq	%rax, %rdi
	movq	%rax, %r13
.LEHB7:
	call	_ZN6playerC1EPN3wze6engineENS0_3keyES3_S3_S3_@PLT
.LEHE7:
	movl	$40, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)
.LEHB9:
	call	_ZN10flashlightC1EPN3wze6engineE@PLT
.LEHE9:
	movl	$32, %edi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 48(%rsp)
.LEHB11:
	call	_ZN3wze6engine6RandomEii@PLT
	movzwl	%ax, %ecx
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %ebp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm5, %xmm5
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm5
	movsd	%xmm5, 8(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	16(%rsp), %ecx
	movsd	8(%rsp), %xmm1
	movl	%ebp, %edx
	cvtsi2sdl	%eax, %xmm0
	movq	48(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE11:
	movl	$32, %edi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 56(%rsp)
.LEHB13:
	call	_ZN3wze6engine6RandomEii@PLT
	movzwl	%ax, %ecx
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %ebp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm6, %xmm6
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm6
	movsd	%xmm6, 8(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	16(%rsp), %ecx
	movsd	8(%rsp), %xmm1
	movl	%ebp, %edx
	cvtsi2sdl	%eax, %xmm0
	movq	56(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE13:
	movl	$32, %edi
.LEHB14:
	call	_Znwm@PLT
.LEHE14:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 64(%rsp)
.LEHB15:
	call	_ZN3wze6engine6RandomEii@PLT
	movzwl	%ax, %ecx
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %ebp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm7, %xmm7
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm7
	movsd	%xmm7, 8(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	16(%rsp), %ecx
	movsd	8(%rsp), %xmm1
	movl	%ebp, %edx
	cvtsi2sdl	%eax, %xmm0
	movq	64(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE15:
	movl	$32, %edi
.LEHB16:
	call	_Znwm@PLT
.LEHE16:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 72(%rsp)
.LEHB17:
	call	_ZN3wze6engine6RandomEii@PLT
	movzwl	%ax, %ecx
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %ebp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm5, %xmm5
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm5
	movsd	%xmm5, 8(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	16(%rsp), %ecx
	movsd	8(%rsp), %xmm1
	movl	%ebp, %edx
	cvtsi2sdl	%eax, %xmm0
	movq	72(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE17:
	movl	$32, %edi
.LEHB18:
	call	_Znwm@PLT
.LEHE18:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 80(%rsp)
.LEHB19:
	call	_ZN3wze6engine6RandomEii@PLT
	movzwl	%ax, %ecx
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movl	%ecx, 16(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %ebp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm6, %xmm6
	movl	$500, %edx
	movl	$-500, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm6
	movsd	%xmm6, 8(%rsp)
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	16(%rsp), %ecx
	movsd	8(%rsp), %xmm1
	movl	%ebp, %edx
	cvtsi2sdl	%eax, %xmm0
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE19:
	leaq	80(%rbx), %rbp
	movq	8(%r12), %rsi
	movq	%rbp, %rdi
.LEHB20:
	call	_ZN3wze6engine6camera4BindEy@PLT
	movq	.LC0(%rip), %rax
	movb	$1, 88(%rbx)
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera12SetMinSpeedXEd@PLT
	movq	.LC1(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera12SetMaxSpeedXEd@PLT
	movq	.LC2(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera20SetDecelerationRateXEd@PLT
	movq	.LC3(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera20SetAccelerationRateXEd@PLT
	movq	.LC4(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera17SetSlowDownRangeXEd@PLT
	movq	.LC0(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera12SetMinSpeedYEd@PLT
	movq	.LC1(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera12SetMaxSpeedYEd@PLT
	movq	.LC2(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera20SetDecelerationRateYEd@PLT
	movq	.LC3(%rip), %rax
	movq	%rbp, %rdi
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera20SetAccelerationRateYEd@PLT
	movq	.LC4(%rip), %rax
	movq	%rbp, %rdi
	leaq	344(%rbx), %rbp
	movq	%rax, %xmm0
	call	_ZN3wze6engine6camera17SetSlowDownRangeYEd@PLT
	leaq	96(%rsp), %rax
	movq	%rax, 40(%rsp)
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%r12, %rdi
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	call	_ZN6player6UpdateEv@PLT
	movq	%r13, %rdi
	call	_ZN6player6UpdateEv@PLT
	movq	32(%rsp), %rdi
	call	_ZN10flashlight6UpdateEv@PLT
	movq	8(%r13), %rsi
	movq	%rbp, %rdi
	movq	$2, 96(%rsp)
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	8(%r13), %rsi
	movq	%rbp, %rdi
	movsd	%xmm0, 24(%rsp)
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	movq	8(%r12), %rsi
	movq	%rbp, %rdi
	movsd	%xmm0, 16(%rsp)
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv@PLT
	movq	8(%r12), %rsi
	movq	%rbp, %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZN3wze6engine6actorsixEy@PLT
	movq	%rax, %rdi
	call	_ZN3wze6engine6actors5actor4GetXEv@PLT
	pushq	%r15
	.cfi_def_cfa_offset 184
	movl	$1, %ecx
	xorl	%r8d, %r8d
	pushq	%r14
	.cfi_def_cfa_offset 192
	movq	.LC5(%rip), %rax
	movl	$1, %esi
	leaq	400(%rbx), %rdi
	movq	56(%rsp), %rdx
	movsd	40(%rsp), %xmm3
	xorl	%r9d, %r9d
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm1
	movq	%rax, %xmm4
	call	_ZN3wze6engine6vector7RayCastEddddtdSt16initializer_listIyES3_S3_@PLT
	popq	%rdx
	.cfi_def_cfa_offset 184
	leaq	.LC6(%rip), %rdi
	popq	%rcx
	.cfi_def_cfa_offset 176
	movzbl	%al, %esi
	xorl	%eax, %eax
	call	printf@PLT
.L2:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv@PLT
.LEHE20:
	testb	%al, %al
	jne	.L3
	movq	80(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	72(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	64(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	56(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	48(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN10flashlightD1Ev@PLT
	movl	$40, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	%r13, %rdi
	call	_ZN6playerD1Ev@PLT
	movl	$80, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rdi
	call	_ZN6playerD1Ev@PLT
	movl	$80, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	88(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN10backgroundD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engineD1Ev@PLT
	movl	$560, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L38
	addq	$120, %rsp
	.cfi_remember_state
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
.L38:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L34:
	movq	%rax, %rbx
	jmp	.L22
.L33:
	movq	%rax, %rbx
	jmp	.L20
.L32:
	movq	%rax, %rbx
	jmp	.L18
.L31:
	movq	%rax, %rbx
	jmp	.L16
.L28:
	movq	%rax, %rbx
	jmp	.L10
.L27:
	movq	%rax, %rbx
	jmp	.L8
.L30:
	movq	%rax, %rbx
	jmp	.L14
.L29:
	movq	%rax, %rbx
	jmp	.L12
.L26:
	movq	%rax, %rbx
	jmp	.L6
.L25:
	movq	%rax, %rbp
	jmp	.L4
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8146:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8146-.LLSDACSB8146
.LLSDACSB8146:
	.uleb128 .LEHB0-.LFB8146
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB8146
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L25-.LFB8146
	.uleb128 0
	.uleb128 .LEHB2-.LFB8146
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8146
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L26-.LFB8146
	.uleb128 0
	.uleb128 .LEHB4-.LFB8146
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8146
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L27-.LFB8146
	.uleb128 0
	.uleb128 .LEHB6-.LFB8146
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB8146
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L28-.LFB8146
	.uleb128 0
	.uleb128 .LEHB8-.LFB8146
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB8146
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L29-.LFB8146
	.uleb128 0
	.uleb128 .LEHB10-.LFB8146
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8146
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L30-.LFB8146
	.uleb128 0
	.uleb128 .LEHB12-.LFB8146
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB8146
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L31-.LFB8146
	.uleb128 0
	.uleb128 .LEHB14-.LFB8146
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB8146
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L32-.LFB8146
	.uleb128 0
	.uleb128 .LEHB16-.LFB8146
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB8146
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L33-.LFB8146
	.uleb128 0
	.uleb128 .LEHB18-.LFB8146
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB8146
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L34-.LFB8146
	.uleb128 0
	.uleb128 .LEHB20-.LFB8146
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE8146:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8146
	.type	main.cold, @function
main.cold:
.LFSB8146:
.L22:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	80(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L39
	movq	%rbx, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.L20:
	movq	72(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L40
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L39:
	call	__stack_chk_fail@PLT
.L40:
	call	__stack_chk_fail@PLT
.L18:
	movq	64(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L41
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L16:
	movq	56(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L42
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L41:
	call	__stack_chk_fail@PLT
.L10:
	movl	$80, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L43
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L8:
	movl	$80, %esi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L44
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L43:
	call	__stack_chk_fail@PLT
.L14:
	movq	48(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L45
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L12:
	movq	32(%rsp), %rdi
	movl	$40, %esi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L46
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L45:
	call	__stack_chk_fail@PLT
.L6:
	movq	88(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L47
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L4:
	movl	$560, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L48
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE21:
.L47:
	call	__stack_chk_fail@PLT
.L42:
	call	__stack_chk_fail@PLT
.L46:
	call	__stack_chk_fail@PLT
.L44:
	call	__stack_chk_fail@PLT
.L48:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8146:
	.section	.gcc_except_table
.LLSDAC8146:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8146-.LLSDACSBC8146
.LLSDACSBC8146:
	.uleb128 .LEHB21-.LCOLDB7
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSEC8146:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-1717986918
	.long	1070176665
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC2:
	.long	-755914244
	.long	1062232653
	.align 8
.LC3:
	.long	-350469331
	.long	1059731170
	.align 8
.LC4:
	.long	0
	.long	1079574528
	.align 8
.LC5:
	.long	0
	.long	1072693248
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
