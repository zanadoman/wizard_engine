	.file	"game.cpp"
	.text
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.p2align 4
	.globl	_ZN4gameC2EPN3wze6engineE
	.def	_ZN4gameC2EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4gameC2EPN3wze6engineE
_ZN4gameC2EPN3wze6engineE:
.LFB6883:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	8(%rcx), %rcx
.LEHB0:
	call	_ZN6assetsC1EPN3wze6engineE
.LEHE0:
	movl	$80, %ecx
	movl	$0, 128(%rbx)
.LEHB1:
	call	_Znwy
.LEHE1:
	movq	(%rbx), %rdx
	movq	%rbx, %r8
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB2:
	call	_ZN4menuC1EPN3wze6engineEP4game
.LEHE2:
	movq	%rsi, 136(%rbx)
	movq	$0, 144(%rbx)
	movq	$0, 152(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L4:
	movq	%rax, %rdi
	jmp	.L3
.L5:
	movq	%rax, %rdi
	jmp	.L2
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6883:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6883-.LLSDACSB6883
.LLSDACSB6883:
	.uleb128 .LEHB0-.LFB6883
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6883
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L4-.LFB6883
	.uleb128 0
	.uleb128 .LEHB2-.LFB6883
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L5-.LFB6883
	.uleb128 0
.LLSDACSE6883:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4gameC2EPN3wze6engineE.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4gameC2EPN3wze6engineE.cold
	.seh_stackalloc	56
	.seh_savereg	%rbx, 32
	.seh_savereg	%rsi, 40
	.seh_savereg	%rdi, 48
	.seh_endprologue
_ZN4gameC2EPN3wze6engineE.cold:
.L2:
	movl	$80, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L3:
	movq	112(%rbx), %rcx
	call	free
	movq	96(%rbx), %rcx
	call	free
	movq	72(%rbx), %rcx
	call	free
	movq	56(%rbx), %rcx
	call	free
	movq	40(%rbx), %rcx
	call	free
	movq	%rdi, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6883:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6883-.LLSDACSBC6883
.LLSDACSBC6883:
	.uleb128 .LEHB3-.LCOLDB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC6883:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE0:
	.text
.LHOTE0:
	.globl	_ZN4gameC1EPN3wze6engineE
	.def	_ZN4gameC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.set	_ZN4gameC1EPN3wze6engineE,_ZN4gameC2EPN3wze6engineE
	.align 2
	.p2align 4
	.globl	_ZN4gameD2Ev
	.def	_ZN4gameD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4gameD2Ev
_ZN4gameD2Ev:
.LFB6886:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movq	136(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L9
	movl	$80, %edx
	call	_ZdlPvy
.L9:
	movq	144(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L10
	movq	%rsi, %rcx
	call	_ZN6normalD1Ev
	movl	$184, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L10:
	movq	152(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L11
	movl	$160, %edx
	call	_ZdlPvy
.L11:
	movq	112(%rbx), %rcx
	call	free
	movq	96(%rbx), %rcx
	call	free
	movq	72(%rbx), %rcx
	call	free
	movq	56(%rbx), %rcx
	call	free
	movq	40(%rbx), %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_endproc
	.globl	_ZN4gameD1Ev
	.def	_ZN4gameD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN4gameD1Ev,_ZN4gameD2Ev
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZN4game12SwitchScenesE5scene
	.def	_ZN4game12SwitchScenesE5scene;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4game12SwitchScenesE5scene
_ZN4game12SwitchScenesE5scene:
.LFB6889:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	128(%rcx), %eax
	movq	%rcx, %rbx
	movl	%edx, %esi
	cmpl	%edx, %eax
	je	.L41
	cmpl	$1, %eax
	je	.L23
	cmpl	$2, %eax
	je	.L24
	testl	%eax, %eax
	je	.L48
.L25:
	movq	(%rbx), %rax
	leaq	32(%rsp), %rdx
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	240(%rax), %rcx
.LEHB4:
	call	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	leaq	80(%rax), %rcx
	call	_ZN3wze6engine6camera4SetXEd
	movq	(%rbx), %rax
	pxor	%xmm1, %xmm1
	leaq	80(%rax), %rcx
	call	_ZN3wze6engine6camera4SetYEd
	cmpl	$1, %esi
	je	.L29
	cmpl	$2, %esi
	je	.L30
	testl	%esi, %esi
	jne	.L31
	movl	$80, %ecx
	call	_Znwy
.LEHE4:
	movq	(%rbx), %rdx
	movq	%rbx, %r8
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB5:
	call	_ZN4menuC1EPN3wze6engineEP4game
.LEHE5:
	movq	%rdi, 136(%rbx)
.L31:
	movl	%esi, 128(%rbx)
.L41:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	movq	136(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L26
	movl	$80, %edx
	call	_ZdlPvy
.L26:
	movq	$0, 136(%rbx)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L23:
	movq	144(%rcx), %rdi
	testq	%rdi, %rdi
	je	.L27
	movq	%rdi, %rcx
	call	_ZN6normalD1Ev
	movl	$184, %edx
	movq	%rdi, %rcx
	call	_ZdlPvy
.L27:
	movq	$0, 144(%rbx)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L24:
	movq	152(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L28
	movl	$160, %edx
	call	_ZdlPvy
.L28:
	movq	$0, 152(%rbx)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L30:
	movl	$160, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	(%rbx), %rdx
	movq	%rbx, %r8
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB7:
	call	_ZN8infiniteC1EPN3wze6engineEP4game
.LEHE7:
	movq	%rdi, 152(%rbx)
	movl	%esi, 128(%rbx)
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L29:
	movl	$184, %ecx
.LEHB8:
	call	_Znwy
.LEHE8:
	movq	(%rbx), %rdx
	movq	%rbx, %r8
	movq	%rax, %rcx
	movq	%rax, %rdi
.LEHB9:
	call	_ZN6normalC1EPN3wze6engineEP4game
.LEHE9:
	movq	%rdi, 144(%rbx)
	movl	%esi, 128(%rbx)
	jmp	.L41
.L35:
	movq	%rax, %rbx
	jmp	.L32
.L36:
	movq	%rax, %rbx
	jmp	.L33
.L37:
	movq	%rax, %rbx
	jmp	.L34
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6889-.LLSDACSB6889
.LLSDACSB6889:
	.uleb128 .LEHB4-.LFB6889
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB6889
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L35-.LFB6889
	.uleb128 0
	.uleb128 .LEHB6-.LFB6889
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB6889
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L37-.LFB6889
	.uleb128 0
	.uleb128 .LEHB8-.LFB6889
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB6889
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L36-.LFB6889
	.uleb128 0
.LLSDACSE6889:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN4game12SwitchScenesE5scene.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN4game12SwitchScenesE5scene.cold
	.seh_stackalloc	72
	.seh_savereg	%rbx, 48
	.seh_savereg	%rsi, 56
	.seh_savereg	%rdi, 64
	.seh_endprologue
_ZN4game12SwitchScenesE5scene.cold:
.L32:
	movq	%rdi, %rcx
	movl	$80, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
.LEHB10:
	call	_Unwind_Resume
.L33:
	movq	%rdi, %rcx
	movl	$184, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
.L34:
	movq	%rdi, %rcx
	movl	$160, %edx
	call	_ZdlPvy
	movq	%rbx, %rcx
	call	_Unwind_Resume
	nop
.LEHE10:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6889-.LLSDACSBC6889
.LLSDACSBC6889:
	.uleb128 .LEHB10-.LCOLDB2
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSEC6889:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE2:
	.text
.LHOTE2:
	.align 2
	.p2align 4
	.globl	_ZN4game6UpdateEv
	.def	_ZN4game6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4game6UpdateEv
_ZN4game6UpdateEv:
.LFB6888:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	128(%rcx), %eax
	movq	%rcx, %rbx
	cmpl	$1, %eax
	je	.L50
	cmpl	$2, %eax
	je	.L51
	testl	%eax, %eax
	jne	.L52
	movq	136(%rcx), %rcx
	call	_ZN4menu6UpdateEv
	movq	%rbx, %rcx
	movl	%eax, %edx
	call	_ZN4game12SwitchScenesE5scene
.L52:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	movq	152(%rcx), %rcx
	call	_ZN8infinite6UpdateEv
	movq	%rbx, %rcx
	movl	%eax, %edx
	call	_ZN4game12SwitchScenesE5scene
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	movq	144(%rcx), %rcx
	call	_ZN6normal6UpdateEv
	movq	%rbx, %rcx
	movl	%eax, %edx
	call	_ZN4game12SwitchScenesE5scene
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN6assetsC1EPN3wze6engineE;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZN4menuC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN6normalD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5PurgeESt16initializer_listIyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6camera4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN8infiniteC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN6normalC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN4menu6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN8infinite6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6normal6UpdateEv;	.scl	2;	.type	32;	.endef
