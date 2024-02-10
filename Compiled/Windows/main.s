	.file	"main.cpp"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.unlikely,"x"
.LCOLDB0:
	.section	.text.startup,"x"
.LHOTB0:
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6879:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	movl	$456, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movl	$1920, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$16, 40(%rsp)
	movq	%rax, %rcx
	movq	%rax, %rbx
	movl	$1080, 32(%rsp)
.LEHB1:
	call	_ZN3wze6engineC1EPKcS2_tth
.LEHE1:
	movl	$160, %ecx
.LEHB2:
	call	_Znwy
.LEHE2:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB3:
	call	_ZN4gameC1EPN3wze6engineE
.LEHE3:
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rsi, %rcx
.LEHB4:
	call	_ZN4game6UpdateEv
.L2:
	movq	%rbx, %rcx
	call	_ZN3wze6engine6UpdateEv
.LEHE4:
	testb	%al, %al
	jne	.L3
	movq	%rsi, %rcx
	call	_ZN4gameD1Ev
	movl	$160, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_ZN3wze6engineD1Ev
	movl	$456, %edx
	movq	%rbx, %rcx
	call	_ZdlPvy
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L6:
	movq	%rax, %rsi
	jmp	.L4
.L7:
	movq	%rax, %rbx
	jmp	.L5
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
	.uleb128 .L6-.LFB6879
	.uleb128 0
	.uleb128 .LEHB2-.LFB6879
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6879
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L7-.LFB6879
	.uleb128 0
	.uleb128 .LEHB4-.LFB6879
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE6879:
	.section	.text.startup,"x"
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	main.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	main.cold
	.seh_stackalloc	72
	.seh_savereg	%rbx, 56
	.seh_savereg	%rsi, 64
	.seh_endprologue
main.cold:
.L4:
	movq	%rbx, %rcx
	movl	$456, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
.L5:
	movq	%rsi, %rcx
	movl	$160, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE5:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6879:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6879-.LLSDACSBC6879
.LLSDACSBC6879:
	.uleb128 .LEHB5-.LCOLDB0
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC6879:
	.section	.text.unlikely,"x"
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE0:
	.section	.text.startup,"x"
.LHOTE0:
	.ident	"GCC: (GNU) 13.1.0"
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineC1EPKcS2_tth;	.scl	2;	.type	32;	.endef
	.def	_ZN4gameC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.def	_ZN4game6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN4gameD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engineD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
