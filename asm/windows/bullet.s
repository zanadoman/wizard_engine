	.file	"bullet.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB11:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rsi
	movq	%rdx, 88(%rsp)
	movq	%rcx, %rbx
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rsi, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.text
	.align 2
	.p2align 4
	.globl	_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord
	.def	_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord
_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord:
.LFB6890:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movsd	152(%rsp), %xmm0
	movq	160(%rsp), %rdi
	movsd	176(%rsp), %xmm1
	movl	168(%rsp), %esi
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	%r8, 8(%rcx)
	movl	$3, %r8d
	leaq	256(%rdx), %rcx
	movq	%rbx, %rdx
	movsd	%xmm0, 56(%rsp)
	movsd	144(%rsp), %xmm0
	movl	$5, 48(%rsp)
	movl	$20, 40(%rsp)
	movsd	%xmm0, 32(%rsp)
	movsd	%xmm1, 72(%rsp)
	call	_ZN3wze6engine6actors3NewEPvyddttd
	movl	$3, %edx
	movq	%rax, 16(%rbx)
	leaq	136(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12overlapboxes3NewEy
	movq	%rax, 24(%rbx)
	movq	8(%rbx), %rax
	movzwl	122(%rax), %edx
	movq	16(%rbx), %rax
	leaq	40(%rax), %rcx
	call	_ZN3wze6engine6actors5actor12textureboxes3NewEy
	movq	%rdi, 40(%rbx)
	movq	16(%rbx), %rcx
	movq	%rax, 32(%rbx)
	movsd	72(%rsp), %xmm1
	movl	%esi, 48(%rbx)
	call	_ZN3wze6engine6actors5actor8SetAngleEd
	movq	32(%rbx), %rax
	xorl	%edx, %edx
	movsd	.LC0(%rip), %xmm3
	movl	$1, %r8d
	movw	%dx, 20(%rax)
	movb	$0, 22(%rax)
	movq	8(%rbx), %rax
	movq	(%rbx), %rcx
	movzwl	120(%rax), %edx
	addq	$160, %rcx
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZN3wze6engine5audio4PlayEytd
	.seh_endproc
	.globl	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord
	.def	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord;	.scl	2;	.type	32;	.endef
	.set	_ZN6bulletC1EPN3wze6engineEP4gamedddy5actord,_ZN6bulletC2EPN3wze6engineEP4gamedddy5actord
	.align 2
	.p2align 4
	.globl	_ZN6bulletD2Ev
	.def	_ZN6bulletD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6bulletD2Ev
_ZN6bulletD2Ev:
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
	.globl	_ZN6bulletD1Ev
	.def	_ZN6bulletD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN6bulletD1Ev,_ZN6bulletD2Ev
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.section	.text.unlikely,"x"
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN6bullet6UpdateEv
	.def	_ZN6bullet6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6bullet6UpdateEv
_ZN6bullet6UpdateEv:
.LFB6895:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$160, %rsp
	.seh_stackalloc	160
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	.seh_endprologue
	movq	16(%rcx), %rbx
	movq	$0, 80(%rsp)
	movq	%rcx, %rsi
	movq	%rbx, %rcx
	movq	$0, 88(%rsp)
.LEHB0:
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	(%rsi), %rax
	movapd	%xmm0, %xmm6
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movq	16(%rsi), %rcx
	movl	%eax, %eax
	pxor	%xmm7, %xmm7
	cvtsi2sdq	%rax, %xmm7
	call	_ZN3wze6engine6actors5actor4GetXEv
	movapd	%xmm6, %xmm2
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine6vector9TerminalXEddd
	movapd	%xmm0, %xmm1
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor4SetXEd
	movq	16(%rsi), %rbx
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor8GetAngleEv
	movq	(%rsi), %rax
	movapd	%xmm0, %xmm6
	leaq	400(%rax), %rcx
	call	_ZN3wze6engine6timing12GetDeltaTimeEv
	movq	16(%rsi), %rcx
	movl	%eax, %eax
	pxor	%xmm7, %xmm7
	cvtsi2sdq	%rax, %xmm7
	call	_ZN3wze6engine6actors5actor4GetYEv
	movapd	%xmm6, %xmm2
	movapd	%xmm7, %xmm1
	call	_ZN3wze6engine6vector9TerminalYEddd
	movapd	%xmm0, %xmm1
	movq	%rbx, %rcx
	call	_ZN3wze6engine6actors5actor4SetYEd
	movq	40(%rsi), %rax
	movq	24(%rsi), %rcx
	leaq	96(%rsp), %rdx
	leaq	32(%rsp), %r9
	movdqa	.LC1(%rip), %xmm0
	movq	%rdx, 48(%rsp)
	leaq	48(%rsp), %r8
	leaq	80(%rsp), %rdx
	movq	%rax, 72(%rsp)
	leaq	72(%rsp), %rax
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC2(%rip), %xmm0
	movq	$4, 56(%rsp)
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movaps	%xmm0, 112(%rsp)
	call	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_
	movl	48(%rsi), %edx
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	cmpl	$1, %edx
	je	.L10
	cmpl	$2, %edx
	jne	.L34
	xorl	%ebx, %ebx
	testq	%rax, %rax
	jne	.L12
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L51:
	movq	(%rsi), %rax
	movq	%rbx, %rdx
	leaq	256(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor7GetTypeEv
	cmpq	$1, %rax
	je	.L22
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	cmpq	%rax, %rbx
	jnb	.L31
	cmpq	$0, (%rcx,%rdi)
	jne	.L38
.L25:
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L49
.L12:
	movq	%rbx, %rdi
	salq	$4, %rdi
	cmpq	$0, (%rcx,%rdi)
	jne	.L51
	cmpq	%rax, %rbx
	jb	.L25
.L31:
	movq	%rbx, %rdx
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L34:
	xorl	%esi, %esi
.L11:
	testq	%rax, %rax
	je	.L13
.L33:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L27:
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	movq	8(%rcx,%rax), %rcx
	call	free
	movq	88(%rsp), %rcx
	cmpq	80(%rsp), %rbx
	jb	.L27
.L13:
	call	free
	nop
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	movl	%esi, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	testq	%rax, %rax
	je	.L36
	xorl	%ebx, %ebx
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L53:
	movq	(%rsi), %rax
	movq	%rbx, %rdx
	leaq	256(%rax), %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor7GetTypeEv
	cmpq	$2, %rax
	je	.L52
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	cmpq	%rax, %rbx
	jnb	.L31
	cmpq	$0, (%rcx,%rdi)
	jne	.L38
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jnb	.L49
.L20:
	movq	%rbx, %rdi
	salq	$4, %rdi
	cmpq	$0, (%rcx,%rdi)
	jne	.L53
	cmpq	%rax, %rbx
	jnb	.L31
	addq	$1, %rbx
	cmpq	%rax, %rbx
	jb	.L20
.L49:
	xorl	%esi, %esi
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$1, %esi
	jmp	.L33
.L22:
	movq	(%rsi), %rcx
	movq	%rbx, %rdx
	addq	$256, %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor7GetDataEv
	movb	$0, 72(%rax)
	movq	88(%rsp), %rcx
	movl	$1, %esi
	movq	80(%rsp), %rax
	jmp	.L11
.L52:
	movq	(%rsi), %rcx
	movq	%rbx, %rdx
	addq	$256, %rcx
	call	_ZN3wze6engine6actorsixEy
	movq	%rax, %rcx
	call	_ZN3wze6engine6actors5actor7GetDataEv
.LEHE0:
	movb	$0, 56(%rax)
	movq	88(%rsp), %rcx
	movl	$1, %esi
	movq	80(%rsp), %rax
	jmp	.L11
.L36:
	xorl	%esi, %esi
	jmp	.L13
.L39:
	movq	%rax, %rsi
	jmp	.L28
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA6895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6895-.LLSDACSB6895
.LLSDACSB6895:
	.uleb128 .LEHB0-.LFB6895
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L39-.LFB6895
	.uleb128 0
.LLSDACSE6895:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN6bullet6UpdateEv.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN6bullet6UpdateEv.cold
	.seh_stackalloc	184
	.seh_savereg	%rbx, 160
	.seh_savereg	%rsi, 168
	.seh_savereg	%rdi, 176
	.seh_savexmm	%xmm6, 128
	.seh_savexmm	%xmm7, 144
	.seh_endprologue
_ZN6bullet6UpdateEv.cold:
.L28:
	xorl	%ebx, %ebx
.L29:
	movq	88(%rsp), %rcx
	cmpq	80(%rsp), %rbx
	jnb	.L54
	movq	%rbx, %rax
	addq	$1, %rbx
	salq	$4, %rax
	movq	8(%rcx,%rax), %rcx
	call	free
	jmp	.L29
.L54:
	call	free
	movq	%rsi, %rcx
.LEHB1:
	call	_Unwind_Resume
	nop
.LEHE1:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC6895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6895-.LLSDACSBC6895
.LLSDACSBC6895:
	.uleb128 .LEHB1-.LCOLDB4
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSEC6895:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE4:
	.text
.LHOTE4:
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1070596096
	.align 16
.LC1:
	.quad	1
	.quad	2
	.align 16
.LC2:
	.quad	4
	.quad	5
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors3NewEPvyddttd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12textureboxes3NewEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8SetAngleEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine5audio4PlayEytd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor5GetIDEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors6DeleteEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor8GetAngleEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6timing12GetDeltaTimeEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetXEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalXEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetXEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4GetYEv;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6vector9TerminalYEddd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor4SetYEd;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor12overlapboxes10overlapbox15GetOverlapStateEPN3neo5arrayINS6_IyEEEESt16initializer_listIyESB_;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actorsixEy;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor7GetTypeEv;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_ZN3wze6engine6actors5actor7GetDataEv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
