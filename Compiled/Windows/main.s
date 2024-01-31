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
.LCOLDB1:
	.section	.text.startup,"x"
.LHOTB1:
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
	subq	$840, %rsp
	.seh_stackalloc	840
	.seh_endprologue
	call	__main
	movl	$6, 32(%rsp)
	xorl	%edx, %edx
	movl	$1080, %r9d
	leaq	144(%rsp), %r12
	movl	$1920, %r8d
	leaq	48(%rsp), %r15
	movq	%r12, %rcx
.LEHB0:
	call	_ZN4slay6engineC1EPKctth
.LEHE0:
	movq	%r12, %rdx
	movq	%r15, %rcx
.LEHB1:
	call	_ZN10backgroundC1ERN4slay6engineE
.LEHE1:
	leaq	80(%rsp), %r13
	movq	%r12, %rdx
	movq	%r13, %rcx
.LEHB2:
	call	_ZN6playerC1ERN4slay6engineE
.LEHE2:
	movq	88(%rsp), %rdx
	leaq	224(%rsp), %rcx
.LEHB3:
	call	_ZN4slay6engine6camera4BindEy
	leaq	776(%rsp), %rbx
	leaq	.LC0(%rip), %r14
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%r13, %rcx
	call	_ZN6player6UpdateEv
	movq	%rbx, %rcx
	call	_ZN4slay6engine6timing12GetFrameTimeEv
	movq	%rbx, %rcx
	movl	%eax, %ebp
	call	_ZN4slay6engine6timing14GetWorkingTimeEv
	movq	%rbx, %rcx
	movl	%eax, %edi
	call	_ZN4slay6engine6timing13GetRenderTimeEv
	movq	%rbx, %rcx
	movl	%eax, %esi
	call	_ZN4slay6engine6timing11GetGameTimeEv
	movl	%ebp, 32(%rsp)
	movl	%eax, %edx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	%r14, %rcx
	call	_Z6printfPKcz.constprop.0
.L4:
	movq	%r12, %rcx
	call	_ZN4slay6engine6UpdateEv
.LEHE3:
	testb	%al, %al
	jne	.L5
	movq	%r13, %rcx
	call	_ZN6playerD1Ev
	movq	%r15, %rcx
	call	_ZN10backgroundD1Ev
	movq	%r12, %rcx
	call	_ZN4slay6engineD1Ev
	xorl	%eax, %eax
	addq	$840, %rsp
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
	jmp	.L8
.L11:
	movq	%rax, %rbx
	jmp	.L6
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
	.uleb128 .L10-.LFB8432
	.uleb128 0
	.uleb128 .LEHB3-.LFB8432
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L11-.LFB8432
	.uleb128 0
.LLSDACSE8432:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	904
	.seh_savereg	%rbx, 840
	.seh_savereg	%rsi, 848
	.seh_savereg	%rdi, 856
	.seh_savereg	%rbp, 864
	.seh_savereg	%r12, 872
	.seh_savereg	%r13, 880
	.seh_savereg	%r14, 888
	.seh_savereg	%r15, 896
	.seh_endprologue
main.cold:
.L6:
	movq	%r13, %rcx
	call	_ZN6playerD1Ev
.L7:
	movq	%r15, %rcx
	call	_ZN10backgroundD1Ev
.L8:
	movq	%r12, %rcx
	call	_ZN4slay6engineD1Ev
	movq	%rbx, %rcx
.LEHB4:
	call	_Unwind_Resume
	nop
.LEHE4:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8432:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8432-.LLSDACSBC8432
.LLSDACSBC8432:
	.uleb128 .LEHB4-.LCOLDB1
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC8432:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE1:
	.section	.text.startup,"x"
.LHOTE1:
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engineC1EPKctth;	.scl	2;	.type	32;	.endef
	.def	_ZN10backgroundC1ERN4slay6engineE;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerC1ERN4slay6engineE;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6camera4BindEy;	.scl	2;	.type	32;	.endef
	.def	_ZN6player6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timing12GetFrameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timing14GetWorkingTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timing13GetRenderTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6timing11GetGameTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6playerD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN10backgroundD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN4slay6engineD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
