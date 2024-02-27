	.file	"WZEAudio.cpp"
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
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "neo::array(): Memory allocation failed\12Params: Length: %lld\12\0"
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
	.globl	_ZN3wze6engine5audioC2EPS0_
	.def	_ZN3wze6engine5audioC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audioC2EPS0_
_ZN3wze6engine5audioC2EPS0_:
.LFB8438:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rdi
	movq	$8, 16(%rcx)
	movl	$64, %ecx
	call	malloc
	movq	%rax, 24(%rdi)
	testq	%rax, %rax
	je	.L11
	movsd	.LC1(%rip), %xmm6
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movsd	%xmm6, 8(%rdi)
	.p2align 4,,10
	.p2align 3
.L6:
	movl	$48, %ecx
.LEHB0:
	call	_Znwy
	movq	(%rdi), %rdx
	movq	$0x000000000, 8(%rax)
	movq	$0, 16(%rax)
	movq	24(%rdi), %rcx
	movq	%rdx, (%rax)
	movq	16(%rdi), %rdx
	movw	%si, 24(%rax)
	movq	$0, 32(%rax)
	movsd	%xmm6, 40(%rax)
	cmpq	%rdx, %rbx
	jnb	.L12
	addl	$1, %esi
	movq	%rax, (%rcx,%rbx,8)
	movzwl	%si, %ebx
	cmpq	%rdx, %rbx
	jb	.L6
	movaps	32(%rsp), %xmm6
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L12:
	movq	%rbx, %rdx
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
.LEHE0:
	movl	$1, %ecx
	call	exit
.L11:
	leaq	.LC0(%rip), %rcx
	movl	$8, %edx
.LEHB1:
	call	_Z6printfPKcz
.LEHE1:
	movl	$1, %ecx
	call	exit
.L8:
	movq	%rax, %rbx
	jmp	.L7
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8438-.LLSDACSB8438
.LLSDACSB8438:
	.uleb128 .LEHB0-.LFB8438
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB8438
	.uleb128 0
	.uleb128 .LEHB1-.LFB8438
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8438:
	.text
	.seh_endproc
	.section	.text.unlikely,"x"
	.def	_ZN3wze6engine5audioC2EPS0_.cold;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audioC2EPS0_.cold
	.seh_stackalloc	72
	.seh_savereg	%rbx, 48
	.seh_savereg	%rsi, 56
	.seh_savereg	%rdi, 64
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
_ZN3wze6engine5audioC2EPS0_.cold:
.L7:
	movq	24(%rdi), %rcx
	call	free
	movq	%rbx, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDAC8438:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8438-.LLSDACSBC8438
.LLSDACSBC8438:
	.uleb128 .LEHB2-.LCOLDB4
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC8438:
	.section	.text.unlikely,"x"
	.text
	.section	.text.unlikely,"x"
	.seh_endproc
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN3wze6engine5audioC1EPS0_
	.def	_ZN3wze6engine5audioC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine5audioC1EPS0_,_ZN3wze6engine5audioC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioD2Ev
	.def	_ZN3wze6engine5audioD2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audioD2Ev
_ZN3wze6engine5audioD2Ev:
.LFB8441:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	16(%rcx), %r8
	movq	24(%rcx), %rdx
	movq	%rcx, %rsi
	testq	%r8, %r8
	je	.L14
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L17:
	movq	(%rdx,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L15
	movl	$48, %edx
	addl	$1, %ebx
	call	_ZdlPvy
	movq	16(%rsi), %r8
	movzwl	%bx, %eax
	movq	24(%rsi), %rdx
	cmpq	%r8, %rax
	jb	.L17
.L14:
	movq	%rdx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.p2align 4,,10
	.p2align 3
.L15:
	addl	$1, %ebx
	movzwl	%bx, %eax
	cmpq	%r8, %rax
	jb	.L17
	movq	%rdx, %rcx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	free
	.seh_endproc
	.globl	_ZN3wze6engine5audioD1Ev
	.def	_ZN3wze6engine5audioD1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine5audioD1Ev,_ZN3wze6engine5audioD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetGlobalVolumeEv
	.def	_ZN3wze6engine5audio15GetGlobalVolumeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15GetGlobalVolumeEv
_ZN3wze6engine5audio15GetGlobalVolumeEv:
.LFB8443:
	.seh_endprologue
	movsd	8(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\12Params: GlobalVolume: %lf\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\12Params: GlobalVolume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetGlobalVolumeEd
	.def	_ZN3wze6engine5audio15SetGlobalVolumeEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15SetGlobalVolumeEd
_ZN3wze6engine5audio15SetGlobalVolumeEd:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L31
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L25
	comisd	.LC1(%rip), %xmm1
	ja	.L25
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rcx)
	addq	$40, %rsp
	ret
.L25:
	leaq	.LC6(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L31:
	leaq	.LC5(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetChannelCountEv
	.def	_ZN3wze6engine5audio15GetChannelCountEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15GetChannelCountEv
_ZN3wze6engine5audio15GetChannelCountEv:
.LFB8445:
	.seh_endprologue
	movzwl	16(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "wze::engine.audio.SetChannelCount(): Mix_AllocateChannels() failed\12Params: ChannelCount: %d\12\0"
	.align 8
.LC8:
	.ascii "neo::array.Remove(): Index out of range\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC9:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC10:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetChannelCountEt
	.def	_ZN3wze6engine5audio15SetChannelCountEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15SetChannelCountEt
_ZN3wze6engine5audio15SetChannelCountEt:
.LFB8446:
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
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movzwl	%dx, %r12d
	movq	%rcx, %rsi
	movl	%edx, %ebp
	movl	%edx, %edi
	movl	%r12d, %ecx
	call	Mix_AllocateChannels
	cmpl	%eax, %r12d
	jne	.L74
	movq	16(%rsi), %rbx
	movzwl	%bp, %ebp
	cmpq	%rbx, %rbp
	jnb	.L35
	movq	%rbp, %rax
.L73:
	movq	24(%rsi), %rdx
.L39:
	movq	(%rdx,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.L36
	movl	$48, %edx
	addl	$1, %edi
	call	_ZdlPvy
	movq	16(%rsi), %rbx
	movzwl	%di, %eax
	cmpq	%rbx, %rax
	jb	.L73
.L38:
	movq	%rbx, %rdi
	subq	%rbp, %rdi
	cmpq	%rbx, %rbp
	jnb	.L75
	testq	%rdi, %rdi
	je	.L41
	movq	%rbp, 16(%rsi)
	movq	24(%rsi), %rcx
	testq	%rbp, %rbp
	je	.L76
	leaq	0(,%rbp,8), %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	testq	%rax, %rax
	je	.L43
	movq	16(%rsi), %rbx
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L35:
	cmpq	%rbp, %rbx
	jb	.L77
.L41:
	movaps	32(%rsp), %xmm6
	movl	%ebx, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	addl	$1, %edi
	movzwl	%di, %eax
	cmpq	%rbx, %rax
	jb	.L39
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L76:
	call	free
	movq	$0, 24(%rsi)
	movq	16(%rsi), %rbx
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L77:
	subl	%ebx, %r12d
	movslq	%r12d, %r12
	testq	%r12, %r12
	jne	.L44
	movq	%rbx, %r8
.L51:
	cmpq	%r8, %rbx
	jnb	.L78
	movsd	.LC1(%rip), %xmm6
	movl	%ebx, %ebp
	movq	%rbx, %rdi
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L55:
	addl	$1, %ebp
	movq	%rax, (%rdx,%rdi,8)
	movzwl	%bp, %edi
	cmpq	%rbx, %rdi
	jnb	.L41
.L56:
	movl	$48, %ecx
	call	_Znwy
	movq	(%rsi), %rdx
	movq	16(%rsi), %rbx
	movq	$0x000000000, 8(%rax)
	movq	%rdx, (%rax)
	movq	24(%rsi), %rdx
	movq	$0, 16(%rax)
	movw	%bp, 24(%rax)
	movq	$0, 32(%rax)
	movsd	%xmm6, 40(%rax)
	cmpq	%rbx, %rdi
	jb	.L55
	leaq	.LC3(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L44:
	leaq	(%r12,%rbx), %rdi
	movq	24(%rsi), %rcx
	movq	%rdi, 16(%rsi)
	leaq	0(,%rdi,8), %rdx
	call	realloc
	movq	%rax, 24(%rsi)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L79
	movq	16(%rsi), %r8
	leaq	-1(%r8), %rax
	cmpq	%rdi, %rax
	jb	.L51
	movq	%r8, %r10
	subq	%rdi, %r10
	leaq	-1(%r10), %rdx
	cmpq	$2, %rdx
	jbe	.L48
	movq	%rbp, %rdx
	subq	%rbx, %rdx
	leaq	8(,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.L48
	testq	%rdi, %rdi
	je	.L48
	movq	%r10, %r9
	leaq	(%rbx,%r8), %rdx
	leaq	-16(%rcx,%r8,8), %r11
	shrq	%r9
	subq	%rbp, %rdx
	negq	%r9
	leaq	-16(%rcx,%rdx,8), %rdi
	xorl	%edx, %edx
	salq	$4, %r9
	.p2align 4,,10
	.p2align 3
.L49:
	movdqu	(%rdi,%rdx), %xmm0
	movups	%xmm0, (%r11,%rdx)
	subq	$16, %rdx
	cmpq	%r9, %rdx
	jne	.L49
	movq	%r10, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r10d
	je	.L51
	movq	%rax, %rdx
	subq	%r12, %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L51
.L48:
	negq	%r12
	leaq	(%rcx,%r12,8), %r9
	.p2align 4,,10
	.p2align 3
.L53:
	movq	(%r9,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	subq	$1, %rax
	cmpq	%rdi, %rax
	jnb	.L53
	jmp	.L51
.L78:
	movq	%r8, %rbx
	jmp	.L41
.L74:
	leaq	.LC7(%rip), %rcx
	movl	%r12d, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L75:
	leaq	.LC8(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L79:
	leaq	.LC10(%rip), %rcx
	movq	%r12, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L43:
	leaq	.LC9(%rip), %rcx
	movq	%rdi, %r8
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio8PauseAllEv
	.def	_ZN3wze6engine5audio8PauseAllEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio8PauseAllEv
_ZN3wze6engine5audio8PauseAllEv:
.LFB8447:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$1, %ecx
	call	Mix_PauseAudio
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio9ResumeAllEv
	.def	_ZN3wze6engine5audio9ResumeAllEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio9ResumeAllEv
_ZN3wze6engine5audio9ResumeAllEv:
.LFB8448:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%ecx, %ecx
	call	Mix_PauseAudio
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "wze::engine.audio[]: Channel does not exist\12Params: Channel: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioixEt
	.def	_ZN3wze6engine5audioixEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audioixEt
_ZN3wze6engine5audioixEt:
.LFB8449:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	%dx, %eax
	cmpq	16(%rcx), %rax
	jnb	.L84
	movq	24(%rcx), %rdx
	movq	(%rdx,%rax,8), %rax
	addq	$40, %rsp
	ret
.L84:
	leaq	.LC11(%rip), %rcx
	movzwl	%dx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "wze::engine.audio.Update(): Mix_SetPanning() failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio6UpdateEv
	.def	_ZN3wze6engine5audio6UpdateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio6UpdateEv
_ZN3wze6engine5audio6UpdateEv:
.LFB8450:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.seh_endprologue
	movq	%rcx, %rsi
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.L121
	movsd	.LC13(%rip), %xmm6
	movsd	.LC1(%rip), %xmm7
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L128:
	movq	(%rsi), %r8
	movsd	8(%rax), %xmm0
	movsd	88(%r8), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L122
	testq	%rdx, %rdx
	js	.L90
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
.L91:
	subsd	%xmm1, %xmm0
	movzwl	%bx, %edi
	comisd	%xmm2, %xmm0
	jbe	.L123
	xorl	%edx, %edx
	movl	%edi, %ecx
	call	Mix_Volume
	xorl	%edx, %edx
	movl	$255, %r8d
	movl	%edi, %ecx
	call	Mix_SetPanning
	testl	%eax, %eax
	je	.L95
	.p2align 4,,10
	.p2align 3
.L94:
	movq	16(%rsi), %rcx
.L96:
	addl	$1, %ebx
	movzwl	%bx, %eax
	cmpq	%rcx, %rax
	jnb	.L121
.L86:
	movq	24(%rsi), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L128
	movsd	8(%rsi), %xmm0
	mulsd	40(%rax), %xmm0
	movzwl	%bx, %edi
	mulsd	%xmm6, %xmm0
	call	round
	movl	%edi, %ecx
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movl	$255, %r8d
.L126:
	movl	$255, %edx
	movl	%edi, %ecx
	call	Mix_SetPanning
	testl	%eax, %eax
	jne	.L94
.L95:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	.p2align 4,,10
	.p2align 3
.L122:
	comisd	%xmm0, %xmm1
	jbe	.L96
	testq	%rdx, %rdx
	js	.L98
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
.L99:
	subsd	%xmm0, %xmm1
	movzwl	%bx, %edi
	comisd	%xmm2, %xmm1
	jbe	.L124
	xorl	%edx, %edx
	movl	%edi, %ecx
	call	Mix_Volume
	xorl	%r8d, %r8d
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L123:
	movsd	.LC1(%rip), %xmm8
	divsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm8
	movsd	8(%rsi), %xmm0
	mulsd	%xmm8, %xmm0
	mulsd	40(%rax), %xmm0
	mulsd	.LC13(%rip), %xmm0
	call	round
	movl	%edi, %ecx
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm8, %xmm0
	call	round
	movl	$255, %r8d
	movl	%edi, %ecx
	cvttsd2sil	%xmm0, %edx
	movzbl	%dl, %edx
	call	Mix_SetPanning
	testl	%eax, %eax
	jne	.L94
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L90:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L124:
	divsd	%xmm2, %xmm1
	movapd	%xmm7, %xmm8
	movsd	8(%rsi), %xmm0
	subsd	%xmm1, %xmm8
	mulsd	%xmm8, %xmm0
	mulsd	40(%rax), %xmm0
	mulsd	%xmm6, %xmm0
	call	round
	movl	%edi, %ecx
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm8, %xmm0
	call	round
	cvttsd2sil	%xmm0, %r8d
	movzbl	%r8b, %r8d
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L98:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L99
	.p2align 4,,10
	.p2align 3
.L121:
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channelC2EPS0_y
	.def	_ZN3wze6engine5audio7channelC2EPS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channelC2EPS0_y
_ZN3wze6engine5audio7channelC2EPS0_y:
.LFB8452:
	.seh_endprologue
	movq	.LC1(%rip), %rax
	movq	%rdx, (%rcx)
	movq	$0x000000000, 8(%rcx)
	movq	$0, 16(%rcx)
	movw	%r8w, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	%rax, 40(%rcx)
	ret
	.seh_endproc
	.globl	_ZN3wze6engine5audio7channelC1EPS0_y
	.def	_ZN3wze6engine5audio7channelC1EPS0_y;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine5audio7channelC1EPS0_y,_ZN3wze6engine5audio7channelC2EPS0_y
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel10GetSoundIDEv
	.def	_ZN3wze6engine5audio7channel10GetSoundIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel10GetSoundIDEv
_ZN3wze6engine5audio7channel10GetSoundIDEv:
.LFB8454:
	.seh_endprologue
	movq	32(%rcx), %rax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "wze::engine.audio[].SetSoundID(): Sound does not exist\12Params: SoundID: %lld\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.audio[].SetSoundID(): Mix_HaltChannel() failed\12Params: SoundID: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel10SetSoundIDEy
	.def	_ZN3wze6engine5audio7channel10SetSoundIDEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel10SetSoundIDEy
_ZN3wze6engine5audio7channel10SetSoundIDEy:
.LFB8455:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.L132
	movq	(%rcx), %rax
	cmpq	368(%rax), %rdx
	jnb	.L133
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L133
.L132:
	cmpq	%rbx, 32(%rsi)
	jne	.L140
.L135:
	movq	%rbx, %rax
	movq	%rbx, 32(%rsi)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	movzwl	24(%rsi), %ecx
	call	Mix_HaltChannel
	cmpl	$-1, %eax
	jne	.L135
	leaq	.LC16(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L133:
	leaq	.LC15(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "wze::engine.audio[].Play(): Mix_PlayChannel() failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4PlayEv
	.def	_ZN3wze6engine5audio7channel4PlayEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel4PlayEv
_ZN3wze6engine5audio7channel4PlayEv:
.LFB8456:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	32(%rcx), %rdx
	testq	%rdx, %rdx
	jne	.L147
.L142:
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.p2align 4,,10
	.p2align 3
.L147:
	movq	(%rcx), %rax
	movq	376(%rax), %r8
	cmpq	368(%rax), %rdx
	jnb	.L148
	movq	(%r8,%rdx,8), %rdx
	movzwl	24(%rcx), %ecx
	xorl	%r8d, %r8d
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	jne	.L142
	leaq	.LC17(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L148:
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "wze::engine.audio[].Play(): Mix_PlayChannel() failed\12Params: Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4PlayEt
	.def	_ZN3wze6engine5audio7channel4PlayEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel4PlayEt
_ZN3wze6engine5audio7channel4PlayEt:
.LFB8457:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	32(%rcx), %rax
	testq	%rax, %rax
	jne	.L155
.L150:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L155:
	movzwl	%dx, %ebx
	movq	(%rcx), %rdx
	movq	376(%rdx), %r8
	cmpq	368(%rdx), %rax
	jnb	.L156
	movq	(%r8,%rax,8), %rdx
	movzwl	24(%rcx), %ecx
	movl	%ebx, %r8d
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	jne	.L150
	leaq	.LC18(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L156:
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "wze::engine.audio[].Play(): Mix_FadeInChannel() failed\12Params: Loops: %d, FadeInMilliseconds: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4PlayEtt
	.def	_ZN3wze6engine5audio7channel4PlayEtt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel4PlayEtt
_ZN3wze6engine5audio7channel4PlayEtt:
.LFB8458:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	32(%rcx), %rax
	testq	%rax, %rax
	jne	.L163
.L158:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
	.p2align 3
.L163:
	movzwl	%dx, %ebx
	movq	(%rcx), %rdx
	movzwl	%r8w, %esi
	movq	376(%rdx), %r8
	cmpq	368(%rdx), %rax
	jnb	.L164
	movq	(%r8,%rax,8), %rdx
	movzwl	24(%rcx), %ecx
	movl	%esi, %r9d
	movl	%ebx, %r8d
	call	Mix_FadeInChannel
	cmpl	$-1, %eax
	jne	.L158
	leaq	.LC19(%rip), %rcx
	movl	%esi, %r8d
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L164:
	leaq	.LC3(%rip), %rcx
	movq	%rax, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel9GetVolumeEv
	.def	_ZN3wze6engine5audio7channel9GetVolumeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel9GetVolumeEv
_ZN3wze6engine5audio7channel9GetVolumeEv:
.LFB8459:
	.seh_endprologue
	movsd	40(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.audio[].SetVolume(): Volume must not be NaN\12Params: Volume: %lf\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.audio[].SetVolume(): Volume must be in range [0, 1]\12Params: Volume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel9SetVolumeEd
	.def	_ZN3wze6engine5audio7channel9SetVolumeEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel9SetVolumeEd
_ZN3wze6engine5audio7channel9SetVolumeEd:
.LFB8460:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L175
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L169
	comisd	.LC1(%rip), %xmm1
	ja	.L169
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 40(%rcx)
	addq	$40, %rsp
	ret
.L169:
	leaq	.LC21(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L175:
	leaq	.LC20(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel8IsPausedEv
	.def	_ZN3wze6engine5audio7channel8IsPausedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel8IsPausedEv
_ZN3wze6engine5audio7channel8IsPausedEv:
.LFB8461:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	24(%rcx), %ecx
	call	Mix_Paused
	testl	%eax, %eax
	setne	%al
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel5PauseEv
	.def	_ZN3wze6engine5audio7channel5PauseEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel5PauseEv
_ZN3wze6engine5audio7channel5PauseEv:
.LFB8462:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	24(%rcx), %ecx
	call	Mix_Pause
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel6ResumeEv
	.def	_ZN3wze6engine5audio7channel6ResumeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel6ResumeEv
_ZN3wze6engine5audio7channel6ResumeEv:
.LFB8463:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	24(%rcx), %ecx
	call	Mix_Resume
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC22:
	.ascii "wze::engine.audio[].Stop(): Mix_HaltChannel() failed\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4StopEv
	.def	_ZN3wze6engine5audio7channel4StopEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel4StopEv
_ZN3wze6engine5audio7channel4StopEv:
.LFB8464:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	24(%rcx), %ecx
	call	Mix_HaltChannel
	cmpl	$-1, %eax
	je	.L181
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
.L181:
	leaq	.LC22(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4StopEt
	.def	_ZN3wze6engine5audio7channel4StopEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio7channel4StopEt
_ZN3wze6engine5audio7channel4StopEt:
.LFB8465:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	24(%rcx), %ecx
	movzwl	%dx, %edx
	call	Mix_FadeOutChannel
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	0
	.long	1080033280
	.align 8
.LC14:
	.long	0
	.long	1081073664
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	Mix_AllocateChannels;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	Mix_PauseAudio;	.scl	2;	.type	32;	.endef
	.def	Mix_Volume;	.scl	2;	.type	32;	.endef
	.def	Mix_SetPanning;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	Mix_HaltChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_PlayChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_FadeInChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_Paused;	.scl	2;	.type	32;	.endef
	.def	Mix_Pause;	.scl	2;	.type	32;	.endef
	.def	Mix_Resume;	.scl	2;	.type	32;	.endef
	.def	Mix_FadeOutChannel;	.scl	2;	.type	32;	.endef
