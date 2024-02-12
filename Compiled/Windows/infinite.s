	.file	"infinite.cpp"
	.text
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.p2align 4
	.globl	_ZN8infiniteC2EPN3wze6engineEP4game
	.def	_ZN8infiniteC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8infiniteC2EPN3wze6engineEP4game
_ZN8infiniteC2EPN3wze6engineEP4game:
.LFB6889:
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
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	leaq	16(%rcx), %rbp
	movq	%rdx, %rsi
	movq	%r8, 8(%rcx)
	movq	%r8, %rdi
	movq	%rbp, %rcx
	leaq	96(%rbx), %r12
.LEHB0:
	call	_ZN5pauseC1EPN3wze6engineEP4game
.LEHE0:
	movq	%rdi, %r8
	movq	%rsi, %rdx
	movq	%r12, %rcx
.LEHB1:
	call	_ZN5statsC1EPN3wze6engineEP4game
.LEHE1:
	movq	(%rbx), %rax
	movl	$10800, 48(%rsp)
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	$19200, 40(%rsp)
	pxor	%xmm3, %xmm3
	movq	$0x000000000, 32(%rsp)
	leaq	256(%rax), %rcx
	movq	.LC0(%rip), %rax
	movq	%rax, 56(%rsp)
.LEHB2:
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	8(%rbx), %rdx
	movq	%rax, 144(%rbx)
	leaq	40(%rax), %rcx
	movzwl	18(%rdx), %edx
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
.LEHE2:
	movq	%rax, 152(%rbx)
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L4:
	movq	%rax, %rbx
	jmp	.L3
.L5:
	movq	%rax, %rbx
	jmp	.L2
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6889-.LLSDACSB6889
.LLSDACSB6889:
	.uleb128 .LEHB0-.LFB6889
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6889
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L4-.LFB6889
	.uleb128 0
	.uleb128 .LEHB2-.LFB6889
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L5-.LFB6889
	.uleb128 0
.LLSDACSE6889:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN8infiniteC2EPN3wze6engineEP4game.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN8infiniteC2EPN3wze6engineEP4game.cold
	.seh_stackalloc	104
	.seh_savereg	%rbx, 64
	.seh_savereg	%rsi, 72
	.seh_savereg	%rdi, 80
	.seh_savereg	%rbp, 88
	.seh_savereg	%r12, 96
	.seh_endprologue
_ZN8infiniteC2EPN3wze6engineEP4game.cold:
.L2:
	movq	%r12, %rcx
	call	_ZN5statsD1Ev
.L3:
	movq	%rbp, %rcx
	call	_ZN5pauseD1Ev
	movq	%rbx, %rcx
.LEHB3:
	call	_Unwind_Resume
	nop
.LEHE3:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6889:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6889-.LLSDACSBC6889
.LLSDACSBC6889:
	.uleb128 .LEHB3-.LCOLDB2
	.uleb128 .LEHE3-.LEHB3
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
	.globl	_ZN8infiniteC1EPN3wze6engineEP4game
	.def	_ZN8infiniteC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN8infiniteC1EPN3wze6engineEP4game,_ZN8infiniteC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN8infiniteD2Ev
	.def	_ZN8infiniteD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8infiniteD2Ev
_ZN8infiniteD2Ev:
.LFB6892:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	leaq	96(%rcx), %rcx
	call	_ZN5statsD1Ev
	leaq	16(%rbx), %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZN5pauseD1Ev
	.seh_endproc
	.globl	_ZN8infiniteD1Ev
	.def	_ZN8infiniteD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN8infiniteD1Ev,_ZN8infiniteD2Ev
	.align 2
	.p2align 4
	.globl	_ZN8infinite6UpdateEv
	.def	_ZN8infinite6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN8infinite6UpdateEv
_ZN8infinite6UpdateEv:
.LFB6894:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	leaq	96(%rcx), %rcx
	call	_ZN5stats6UpdateEv
	leaq	16(%rbx), %rcx
	call	_ZN5pause6UpdateEv
	cmpl	$2, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-1717986918
	.long	1069128089
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN5pauseC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN5statsC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12textureboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN5statsD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZN5pauseD1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZN5stats6UpdateEv;	.scl	2;	.type	32;	.endef
	.def	_ZN5pause6UpdateEv;	.scl	2;	.type	32;	.endef
