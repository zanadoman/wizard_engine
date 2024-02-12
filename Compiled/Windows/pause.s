	.file	"pause.cpp"
	.text
	.section .rdata,"dr"
.LC1:
	.ascii "Resume\0"
.LC2:
	.ascii "Menu\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN5pauseC2EPN3wze6engineEP4game
	.def	_ZN5pauseC2EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5pauseC2EPN3wze6engineEP4game
_ZN5pauseC2EPN3wze6engineEP4game:
.LFB6890:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	pxor	%xmm6, %xmm6
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, 8(%rcx)
	movq	%rdx, %rcx
	call	_ZN3wze6engine6window9GetHeightEv
	movq	(%rbx), %rcx
	shrw	%ax
	movzwl	%ax, %eax
	cvtsi2sdl	%eax, %xmm6
	call	_ZN3wze6engine6window8GetWidthEv
	pxor	%xmm3, %xmm3
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	shrw	%ax
	movl	$0, 48(%rsp)
	leaq	256(%rsi), %rcx
	movzwl	%ax, %eax
	movl	$0, 40(%rsp)
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm6, 32(%rsp)
	movq	$0x000000000, 56(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movq	%rax, 16(%rbx)
	leaq	8(%rax), %rcx
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	xorl	%edx, %edx
	movq	%rax, 24(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 32(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rcx
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	movq	16(%rbx), %rdi
	leaq	.LC1(%rip), %rdx
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rdi), %rcx
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	xorl	%edx, %edx
	movq	%rax, 48(%rbx)
	movq	16(%rbx), %rax
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 56(%rbx)
	movq	16(%rbx), %rax
	leaq	8(%rax), %rcx
	call	_ZN3wze6engine6actors5actor10colorboxes3NewEv
	movq	16(%rbx), %rdi
	leaq	.LC2(%rip), %rdx
	movq	%rax, 64(%rbx)
	movq	8(%rbx), %rax
	leaq	104(%rdi), %rcx
	movabsq	$-4309891860637679266, %rdi
	movzwl	16(%rax), %r8d
	call	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy
	movq	16(%rbx), %rcx
	movq	32(%rbx), %rsi
	movq	%rax, 72(%rbx)
	movq	24(%rbx), %rax
	movb	$0, 168(%rcx)
	movq	%rdi, 16(%rax)
	call	_ZN3wze6engine6actors5actor4GetYEv
	movsd	.LC3(%rip), %xmm6
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	movq	32(%rbx), %rcx
	movl	$250, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	32(%rbx), %rcx
	movl	$75, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	movq	32(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
	movq	32(%rbx), %rcx
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	movq	32(%rbx), %rcx
	movw	%ax, 16(%rsi)
	movq	40(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	movq	48(%rbx), %rcx
	movl	$30, %edx
	movw	%ax, 18(%rsi)
	movq	40(%rbx), %rax
	movzwl	.LC4(%rip), %esi
	movb	$-128, 22(%rax)
	movw	%si, 20(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	32(%rbx), %rcx
	movq	48(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	movq	16(%rbx), %rcx
	movq	56(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	subsd	%xmm6, %xmm1
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd
	movq	56(%rbx), %rcx
	movl	$250, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt
	movq	56(%rbx), %rcx
	movl	$75, %edx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt
	movq	56(%rbx), %rcx
	movq	64(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	movq	%rdi, %rcx
	movapd	%xmm0, %xmm1
	call	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd
	movq	56(%rbx), %rcx
	movq	64(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv
	movq	56(%rbx), %rcx
	movw	%ax, 16(%rdi)
	movq	64(%rbx), %rdi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv
	movq	72(%rbx), %rcx
	movl	$30, %edx
	movw	%ax, 18(%rdi)
	movq	64(%rbx), %rax
	movw	%si, 20(%rax)
	movb	$-128, 22(%rax)
	call	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt
	movq	56(%rbx), %rcx
	movq	72(%rbx), %rsi
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv
	nop
	movaps	64(%rsp), %xmm6
	movq	%rsi, %rcx
	movapd	%xmm0, %xmm1
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd
	.seh_endproc
	.globl	_ZN5pauseC1EPN3wze6engineEP4game
	.def	_ZN5pauseC1EPN3wze6engineEP4game;	.scl	2;	.type	32;	.endef
	.set	_ZN5pauseC1EPN3wze6engineEP4game,_ZN5pauseC2EPN3wze6engineEP4game
	.align 2
	.p2align 4
	.globl	_ZN5pauseD2Ev
	.def	_ZN5pauseD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5pauseD2Ev
_ZN5pauseD2Ev:
.LFB6893:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	16(%rcx), %rcx
	leaq	256(%rax), %rbx
	call	_ZN3wze6engine6actors5actor5GetIDEv
	movq	%rbx, %rcx
	movq	%rax, %rdx
	call	_ZN3wze6engine6actors6DeleteEy
	nop
	addq	$32, %rsp
	popq	%rbx
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6893:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6893-.LLSDACSB6893
.LLSDACSB6893:
.LLSDACSE6893:
	.text
	.seh_endproc
	.globl	_ZN5pauseD1Ev
	.def	_ZN5pauseD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN5pauseD1Ev,_ZN5pauseD2Ev
	.align 2
	.p2align 4
	.globl	_ZN5pause6UpdateEv
	.def	_ZN5pause6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN5pause6UpdateEv
_ZN5pause6UpdateEv:
.LFB6895:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$41, %edx
	movq	(%rcx), %rax
	movq	%rcx, %rbx
	leaq	176(%rax), %rcx
	call	_ZN3wze6engine4keysixENS_3keyE
	testb	%al, %al
	movq	16(%rbx), %rax
	je	.L5
	cmpb	$0, 168(%rax)
	je	.L17
.L6:
	movq	32(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	testb	$1, %al
	movq	40(%rbx), %rax
	jne	.L18
	movl	$-32640, %r8d
	movb	$-128, 22(%rax)
	movw	%r8w, 20(%rax)
.L10:
	movq	56(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	testb	$1, %al
	movq	64(%rbx), %rax
	je	.L12
	movl	$24672, %ecx
	movb	$96, 22(%rax)
	movw	%cx, 20(%rax)
	movq	56(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	movl	%eax, %edx
	movl	$2, %eax
	andl	$4, %edx
	jne	.L4
.L7:
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmpb	$0, 168(%rax)
	jne	.L6
.L11:
	xorl	%eax, %eax
.L4:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	movb	$1, 168(%rax)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L18:
	movl	$24672, %r9d
	movb	$96, 22(%rax)
	movw	%r9w, 20(%rax)
	movq	32(%rbx), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv
	testb	$4, %al
	je	.L10
	movq	16(%rbx), %rax
	movb	$0, 168(%rax)
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$-32640, %edx
	movb	$-128, 22(%rax)
	movw	%dx, 20(%rax)
	jmp	.L7
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.long	0
	.long	1079164928
	.align 2
.LC4:
	.byte	-128
	.byte	-128
	.ident	"GCC: (GNU) 13.1.0"
	.def	_ZN3wze6engine6window9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6window8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor10colorboxes3NewEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes3NewEPKcy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8SetWidthEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor10colorboxes8colorbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox8GetWidthEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox9GetHeightEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox9SetHeightEt;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor9textboxes7textbox4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine4keysixENS_3keyE;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox14GetButtonStateEv;	.scl	2;	.type	32;	.endef
