	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d %d %d %d\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2231:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2231
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$712, %edi
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
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
	movq	%rax, (%rsp)
.LEHB3:
	call	_ZN10backgroundC1EPN3wze6engineE@PLT
.LEHE3:
	movl	$56, %edi
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, %r14
.LEHB5:
	call	_ZN6playerC1EPN3wze6engineE@PLT
.LEHE5:
	movl	$32, %edi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	movq	%rax, %r15
.LEHB7:
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %ebp
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm2, %xmm2
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm2
	movq	%xmm2, %r12
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movq	%rbx, %rsi
	cvtsi2sdl	%eax, %xmm0
	movq	%r12, %xmm1
	movq	%r15, %rdi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE7:
	movl	$32, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 16(%rsp)
	movq	%rax, %r15
.LEHB9:
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r12d
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm3, %xmm3
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm3
	movq	%xmm3, %rbp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	%r12d, %ecx
	movl	%r13d, %edx
	movq	%rbx, %rsi
	cvtsi2sdl	%eax, %xmm0
	movq	%rbp, %xmm1
	movq	%r15, %rdi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE9:
	movl	$32, %edi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 24(%rsp)
	movq	%rax, %r15
.LEHB11:
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r12d
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm4, %xmm4
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm4
	movq	%xmm4, %rbp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	%r12d, %ecx
	movl	%r13d, %edx
	movq	%rbx, %rsi
	cvtsi2sdl	%eax, %xmm0
	movq	%rbp, %xmm1
	movq	%r15, %rdi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE11:
	movl	$32, %edi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 32(%rsp)
	movq	%rax, %r15
.LEHB13:
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r12d
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm5, %xmm5
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm5
	movq	%xmm5, %rbp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	%r12d, %ecx
	movl	%r13d, %edx
	movq	%rbx, %rsi
	cvtsi2sdl	%eax, %xmm0
	movq	%rbp, %xmm1
	movq	%r15, %rdi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE13:
	movl	$32, %edi
.LEHB14:
	call	_Znwm@PLT
.LEHE14:
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movq	%rax, 40(%rsp)
	movq	%rax, %r15
.LEHB15:
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$150, %edx
	movl	$50, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r12d
	call	_ZN3wze6engine6RandomEii@PLT
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	movzwl	%ax, %r13d
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm6, %xmm6
	movl	$1000, %edx
	movl	$100, %esi
	movq	%rbx, %rdi
	cvtsi2sdl	%eax, %xmm6
	movq	%xmm6, %rbp
	call	_ZN3wze6engine6RandomEii@PLT
	pxor	%xmm0, %xmm0
	movl	%r12d, %ecx
	movl	%r13d, %edx
	movq	%rbx, %rsi
	cvtsi2sdl	%eax, %xmm0
	movq	%rbp, %xmm1
	movq	%r15, %rdi
	call	_ZN5crateC1EPN3wze6engineEddtt@PLT
.LEHE15:
	movq	8(%r14), %rsi
	leaq	80(%rbx), %rdi
.LEHB16:
	call	_ZN3wze6engine6camera4BindEy@PLT
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	leaq	632(%rbx), %rbp
	movq	%r14, %rdi
	call	_ZN6player6UpdateEv@PLT
	movq	%rbp, %rdi
	call	_ZN3wze6engine6timing12GetFrameTimeEv@PLT
	movq	%rbp, %rdi
	movl	%eax, %r15d
	call	_ZN3wze6engine6timing14GetWorkingTimeEv@PLT
	movq	%rbp, %rdi
	movl	%eax, %r13d
	call	_ZN3wze6engine6timing13GetRenderTimeEv@PLT
	movq	%rbp, %rdi
	movl	%eax, %r12d
	call	_ZN3wze6engine6timing11GetGameTimeEv@PLT
	movl	%r15d, %r8d
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.L2:
	movq	%rbx, %rdi
	call	_ZN3wze6engine6UpdateEv@PLT
.LEHE16:
	testb	%al, %al
	jne	.L3
	movq	40(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	24(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	16(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %r15
	movq	%r15, %rdi
	call	_ZN5crateD1Ev@PLT
	movl	$32, %esi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	%r14, %rdi
	call	_ZN6playerD1Ev@PLT
	movl	$56, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	(%rsp), %r14
	movq	%r14, %rdi
	call	_ZN10backgroundD1Ev@PLT
	movl	$32, %esi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_ZN3wze6engineD1Ev@PLT
	movq	%rbx, %rdi
	movl	$712, %esi
	call	_ZdlPvm@PLT
	addq	$56, %rsp
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
.L12:
	.cfi_restore_state
	movq	%rax, %rbp
	jmp	.L4
.L19:
	movq	%rax, %rbx
	jmp	.L11
.L18:
	movq	%rax, %rbx
	jmp	.L10
.L17:
	movq	%rax, %rbx
	jmp	.L9
.L16:
	movq	%rax, %rbx
	jmp	.L8
.L15:
	movq	%rax, %rbx
	jmp	.L7
.L14:
	movq	%rax, %rbx
	jmp	.L6
.L13:
	movq	%rax, %rbx
	jmp	.L5
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2231-.LLSDACSB2231
.LLSDACSB2231:
	.uleb128 .LEHB0-.LFB2231
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2231
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L12-.LFB2231
	.uleb128 0
	.uleb128 .LEHB2-.LFB2231
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2231
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L13-.LFB2231
	.uleb128 0
	.uleb128 .LEHB4-.LFB2231
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2231
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L14-.LFB2231
	.uleb128 0
	.uleb128 .LEHB6-.LFB2231
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2231
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L15-.LFB2231
	.uleb128 0
	.uleb128 .LEHB8-.LFB2231
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2231
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L16-.LFB2231
	.uleb128 0
	.uleb128 .LEHB10-.LFB2231
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB2231
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L17-.LFB2231
	.uleb128 0
	.uleb128 .LEHB12-.LFB2231
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2231
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L18-.LFB2231
	.uleb128 0
	.uleb128 .LEHB14-.LFB2231
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB2231
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L19-.LFB2231
	.uleb128 0
	.uleb128 .LEHB16-.LFB2231
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE2231:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2231
	.type	main.cold, @function
main.cold:
.LFSB2231:
.L4:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbx, %rdi
	movl	$712, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.L11:
	movq	40(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L10:
	movq	32(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L9:
	movq	24(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L8:
	movq	16(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L7:
	movq	8(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L6:
	movq	%r14, %rdi
	movl	$56, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.L5:
	movq	(%rsp), %rdi
	movl	$32, %esi
	call	_ZdlPvm@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE17:
	.cfi_endproc
.LFE2231:
	.section	.gcc_except_table
.LLSDAC2231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2231-.LLSDACSBC2231
.LLSDACSBC2231:
	.uleb128 .LEHB17-.LCOLDB1
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSEC2231:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
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
