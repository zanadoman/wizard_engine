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
	.section .rdata,"dr"
.LC1:
	.ascii "assets/icon.png\0"
	.section	.text.unlikely,"x"
.LCOLDB2:
	.section	.text.startup,"x"
.LHOTB2:
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
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	movl	$688, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movl	$6, 40(%rsp)
	xorl	%edx, %edx
	movl	$1920, %r9d
	movl	$1080, 32(%rsp)
	leaq	.LC1(%rip), %r8
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth
.LEHE1:
	movl	$32, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, %r13
.LEHB3:
	call	_ZN10backgroundC1EPN3wze6engineE
.LEHE3:
	movl	$56, %ecx
.LEHB4:
	call	_Znwy
.LEHE4:
	movq	%rdi, %rdx
	movq	%rax, %rcx
	movq	%rax, %rbp
.LEHB5:
	call	_ZN6playerC1EPN3wze6engineE
.LEHE5:
	movq	8(%rbp), %rdx
	leaq	80(%rdi), %rcx
	leaq	632(%rdi), %rbx
	leaq	.LC0(%rip), %r12
.LEHB6:
	call	_ZN3wze6engine6camera4BindEy
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rbp, %rcx
	call	_ZN6player6UpdateEv
	movq	%rbx, %rcx
	call	_ZN3wze6engine6timing12GetFrameTimeEv
	movq	%rbx, %rcx
	movl	%eax, %r15d
	call	_ZN3wze6engine6timing14GetWorkingTimeEv
	movq	%rbx, %rcx
	movl	%eax, %r14d
	call	_ZN3wze6engine6timing13GetRenderTimeEv
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZN3wze6engine6timing11GetGameTimeEv
	movl	%r15d, 32(%rsp)
	movl	%r14d, %r9d
	movl	%esi, %r8d
	movl	%eax, %edx
	movq	%r12, %rcx
	call	_Z6printfPKcz.constprop.0
.L4:
	movq	%rdi, %rcx
	call	_ZN3wze6engine6UpdateEv
.LEHE6:
	testb	%al, %al
	jne	.L5
	movq	%r13, %rcx
	call	_ZN10backgroundD1Ev
	movl	$32, %edx
	movq	%r13, %rcx
	call	_ZdlPvy
	movq	%rbp, %rcx
	call	_ZN6playerD1Ev
	movl	$56, %edx
	movq	%rbp, %rcx
	call	_ZdlPvy
	movq	%rdi, %rcx
	call	_ZN3wze6engineD1Ev
	movl	$688, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L9:
	movq	%rax, %rbx
	jmp	.L6
.L11:
	movq	%rax, %rbx
	jmp	.L8
.L10:
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
	.uleb128 .L9-.LFB8432
	.uleb128 0
	.uleb128 .LEHB2-.LFB8432
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8432
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L10-.LFB8432
	.uleb128 0
	.uleb128 .LEHB4-.LFB8432
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB8432
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L11-.LFB8432
	.uleb128 0
	.uleb128 .LEHB6-.LFB8432
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE8432:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	120
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_savereg	%rdi, 72
	.seh_savereg	%rbp, 80
	.seh_savereg	%r12, 88
	.seh_savereg	%r13, 96
	.seh_savereg	%r14, 104
	.seh_savereg	%r15, 112
	.seh_endprologue
main.cold:
.L6:
	movq	%rdi, %rcx
	movl	$688, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB7:
	call	_Unwind_Resume
.L8:
	movq	%rbp, %rcx
	movl	$56, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L7:
	movq	%r13, %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE7:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8432-.LLSDACSBC8432
.LLSDACSBC8432:
	.uleb128 .LEHB7-.LCOLDB2
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSEC8432:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE2:
	.section	.text.startup,"x"
.LHOTE2:
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.def	_ZN10backgroundC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing14GetWorkingTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing13GetRenderTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing11GetGameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN10backgroundD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
