	.file	"WZEAudio.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.align 8
.LC3:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioC2EPS0_
	.type	_ZN3wze6engine5audioC2EPS0_, @function
_ZN3wze6engine5audioC2EPS0_:
.LFB8163:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8163
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, (%rdi)
	movq	$8, 16(%rdi)
	movl	$64, %edi
	call	malloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.L11
	movq	.LC1(%rip), %rax
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movq	%rax, 8(%r12)
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$48, %edi
.LEHB0:
	call	_Znwm@PLT
	movq	(%r12), %rdx
	movq	.LC1(%rip), %rsi
	movw	%bp, 24(%rax)
	movq	$0x000000000, 8(%rax)
	movq	24(%r12), %rcx
	movq	%rdx, (%rax)
	movq	16(%r12), %rdx
	movq	$0, 16(%rax)
	movq	$0, 32(%rax)
	movq	%rsi, 40(%rax)
	cmpq	%rdx, %rbx
	jnb	.L12
	addl	$1, %ebp
	movq	%rax, (%rcx,%rbx,8)
	movzwl	%bp, %ebx
	cmpq	%rdx, %rbx
	jb	.L4
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	movq	%rbx, %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LEHE0:
	movl	$1, %edi
	call	exit@PLT
.L11:
	leaq	.LC0(%rip), %rdi
	movl	$8, %esi
.LEHB1:
	call	printf@PLT
.LEHE1:
	movl	$1, %edi
	call	exit@PLT
.L6:
	movq	%rax, %rbx
	jmp	.L5
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8163:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8163-.LLSDACSB8163
.LLSDACSB8163:
	.uleb128 .LEHB0-.LFB8163
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB8163
	.uleb128 0
	.uleb128 .LEHB1-.LFB8163
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8163:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC8163
	.type	_ZN3wze6engine5audioC2EPS0_.cold, @function
_ZN3wze6engine5audioC2EPS0_.cold:
.LFSB8163:
.L5:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	24(%r12), %rdi
	call	free@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE8163:
	.section	.gcc_except_table
.LLSDAC8163:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC8163-.LLSDACSBC8163
.LLSDACSBC8163:
	.uleb128 .LEHB2-.LCOLDB4
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC8163:
	.section	.text.unlikely
	.text
	.size	_ZN3wze6engine5audioC2EPS0_, .-_ZN3wze6engine5audioC2EPS0_
	.section	.text.unlikely
	.size	_ZN3wze6engine5audioC2EPS0_.cold, .-_ZN3wze6engine5audioC2EPS0_.cold
.LCOLDE4:
	.text
.LHOTE4:
	.globl	_ZN3wze6engine5audioC1EPS0_
	.set	_ZN3wze6engine5audioC1EPS0_,_ZN3wze6engine5audioC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioD2Ev
	.type	_ZN3wze6engine5audioD2Ev, @function
_ZN3wze6engine5audioD2Ev:
.LFB8166:
	.cfi_startproc
	movq	16(%rdi), %rcx
	movq	24(%rdi), %rdx
	testq	%rcx, %rcx
	je	.L22
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L17:
	movq	(%rdx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.L15
	movl	$48, %esi
	addl	$1, %ebx
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rcx
	movzwl	%bx, %eax
	movq	24(%rbp), %rdx
	cmpq	%rcx, %rax
	jb	.L17
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rdx, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	addl	$1, %ebx
	movzwl	%bx, %eax
	cmpq	%rcx, %rax
	jb	.L17
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rdx, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	free@PLT
	.p2align 4,,10
	.p2align 3
.L22:
	movq	%rdx, %rdi
	jmp	free@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine5audioD2Ev, .-_ZN3wze6engine5audioD2Ev
	.globl	_ZN3wze6engine5audioD1Ev
	.set	_ZN3wze6engine5audioD1Ev,_ZN3wze6engine5audioD2Ev
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetGlobalVolumeEv
	.type	_ZN3wze6engine5audio15GetGlobalVolumeEv, @function
_ZN3wze6engine5audio15GetGlobalVolumeEv:
.LFB8168:
	.cfi_startproc
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine5audio15GetGlobalVolumeEv, .-_ZN3wze6engine5audio15GetGlobalVolumeEv
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\nParams: GlobalVolume: %lf\n"
	.align 8
.LC6:
	.string	"wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: GlobalVolume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetGlobalVolumeEd
	.type	_ZN3wze6engine5audio15SetGlobalVolumeEd, @function
_ZN3wze6engine5audio15SetGlobalVolumeEd:
.LFB8169:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L36
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L29
	comisd	.LC1(%rip), %xmm0
	ja	.L29
	movsd	%xmm0, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L36:
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine5audio15SetGlobalVolumeEd, .-_ZN3wze6engine5audio15SetGlobalVolumeEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetChannelCountEv
	.type	_ZN3wze6engine5audio15GetChannelCountEv, @function
_ZN3wze6engine5audio15GetChannelCountEv:
.LFB8170:
	.cfi_startproc
	movzwl	16(%rdi), %eax
	ret
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine5audio15GetChannelCountEv, .-_ZN3wze6engine5audio15GetChannelCountEv
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.audio.SetChannelCount(): Mix_AllocateChannels() failed\nParams: ChannelCount: %d\n"
	.align 8
.LC8:
	.string	"neo::array.Remove(): Index out of range\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC9:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC10:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetChannelCountEt
	.type	_ZN3wze6engine5audio15SetChannelCountEt, @function
_ZN3wze6engine5audio15SetChannelCountEt:
.LFB8171:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movzwl	%si, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	movl	%r14d, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	call	Mix_AllocateChannels@PLT
	cmpl	%eax, %r14d
	jne	.L80
	movq	16(%rbp), %rbx
	movzwl	%r13w, %r13d
	cmpq	%rbx, %r13
	jnb	.L40
	movq	%r13, %rax
.L79:
	movq	24(%rbp), %rdx
.L44:
	movq	(%rdx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.L41
	movl	$48, %esi
	addl	$1, %r12d
	call	_ZdlPvm@PLT
	movq	16(%rbp), %rbx
	movzwl	%r12w, %eax
	cmpq	%rbx, %rax
	jb	.L79
.L43:
	movq	%rbx, %r12
	subq	%r13, %r12
	cmpq	%rbx, %r13
	jnb	.L81
	testq	%r12, %r12
	je	.L46
	movq	%r13, 16(%rbp)
	movq	24(%rbp), %rdi
	testq	%r13, %r13
	je	.L82
	leaq	0(,%r13,8), %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	testq	%rax, %rax
	je	.L48
	movq	16(%rbp), %rbx
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	.cfi_restore_state
	cmpq	%r13, %rbx
	jb	.L83
.L46:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	addl	$1, %r12d
	movzwl	%r12w, %eax
	cmpq	%rbx, %rax
	jb	.L44
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L82:
	call	free@PLT
	movq	$0, 24(%rbp)
	movq	16(%rbp), %rbx
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L83:
	subl	%ebx, %r14d
	movslq	%r14d, %r14
	testq	%r14, %r14
	jne	.L49
	movq	%rbx, %rsi
.L56:
	movl	%ebx, %r13d
	movq	%rbx, %r12
	cmpq	%rsi, %rbx
	jb	.L61
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L60:
	addl	$1, %r13d
	movq	%rax, (%rdx,%r12,8)
	movzwl	%r13w, %r12d
	cmpq	%rbx, %r12
	jnb	.L46
.L61:
	movl	$48, %edi
	call	_Znwm@PLT
	movq	0(%rbp), %rdx
	movq	.LC1(%rip), %rcx
	movq	16(%rbp), %rbx
	movq	$0x000000000, 8(%rax)
	movq	%rdx, (%rax)
	movq	24(%rbp), %rdx
	movq	$0, 16(%rax)
	movw	%r13w, 24(%rax)
	movq	$0, 32(%rax)
	movq	%rcx, 40(%rax)
	cmpq	%rbx, %r12
	jb	.L60
	leaq	.LC3(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L49:
	leaq	(%r14,%rbx), %r12
	movq	24(%rbp), %rdi
	movq	%r12, 16(%rbp)
	leaq	0(,%r12,8), %rsi
	call	realloc@PLT
	movq	%rax, 24(%rbp)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L85
	movq	16(%rbp), %rsi
	leaq	-1(%rsi), %rax
	cmpq	%r12, %rax
	jb	.L56
	movq	%rsi, %r8
	subq	%r12, %r8
	leaq	-1(%r8), %rdx
	cmpq	$2, %rdx
	jbe	.L53
	movq	%r13, %rdx
	subq	%rbx, %rdx
	leaq	8(,%rdx,8), %rdx
	testq	%rdx, %rdx
	je	.L53
	testq	%r12, %r12
	je	.L53
	movq	%r8, %rdi
	leaq	(%rbx,%rsi), %rdx
	leaq	-16(%rcx,%rsi,8), %r9
	shrq	%rdi
	subq	%r13, %rdx
	negq	%rdi
	leaq	-16(%rcx,%rdx,8), %r10
	xorl	%edx, %edx
	salq	$4, %rdi
	.p2align 4,,10
	.p2align 3
.L54:
	movdqu	(%r10,%rdx), %xmm0
	movups	%xmm0, (%r9,%rdx)
	subq	$16, %rdx
	cmpq	%rdi, %rdx
	jne	.L54
	movq	%r8, %rdx
	andq	$-2, %rdx
	subq	%rdx, %rax
	andl	$1, %r8d
	je	.L56
	movq	%rax, %rdx
	subq	%r14, %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	jmp	.L56
.L53:
	negq	%r14
	leaq	(%rcx,%r14,8), %rdi
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%rdi,%rax,8), %rdx
	movq	%rdx, (%rcx,%rax,8)
	subq	$1, %rax
	cmpq	%r12, %rax
	jnb	.L58
	jmp	.L56
.L84:
	movq	%rsi, %rbx
	jmp	.L46
.L80:
	leaq	.LC7(%rip), %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L81:
	leaq	.LC8(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L85:
	leaq	.LC10(%rip), %rdi
	movq	%r14, %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L48:
	leaq	.LC9(%rip), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine5audio15SetChannelCountEt, .-_ZN3wze6engine5audio15SetChannelCountEt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio8PauseAllEv
	.type	_ZN3wze6engine5audio8PauseAllEv, @function
_ZN3wze6engine5audio8PauseAllEv:
.LFB8172:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	call	Mix_PauseAudio@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine5audio8PauseAllEv, .-_ZN3wze6engine5audio8PauseAllEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio9ResumeAllEv
	.type	_ZN3wze6engine5audio9ResumeAllEv, @function
_ZN3wze6engine5audio9ResumeAllEv:
.LFB8173:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	call	Mix_PauseAudio@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine5audio9ResumeAllEv, .-_ZN3wze6engine5audio9ResumeAllEv
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"wze::engine.audio[]: Channel does not exist\nParams: Channel: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioixEt
	.type	_ZN3wze6engine5audioixEt, @function
_ZN3wze6engine5audioixEt:
.LFB8174:
	.cfi_startproc
	movzwl	%si, %eax
	cmpq	16(%rdi), %rax
	jnb	.L95
	movq	24(%rdi), %rdx
	movq	(%rdx,%rax,8), %rax
	ret
.L95:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.LC11(%rip), %rdi
	movzwl	%si, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine5audioixEt, .-_ZN3wze6engine5audioixEt
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"wze::engine.audio.Update(): Mix_SetPanning() failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio6UpdateEv
	.type	_ZN3wze6engine5audio6UpdateEv, @function
_ZN3wze6engine5audio6UpdateEv:
.LFB8175:
	.cfi_startproc
	movq	16(%rdi), %rcx
	testq	%rcx, %rcx
	je	.L137
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L144:
	movq	0(%rbp), %rsi
	movsd	8(%rax), %xmm0
	movsd	88(%rsi), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L133
	testq	%rdx, %rdx
	js	.L101
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
.L102:
	subsd	%xmm1, %xmm0
	movzwl	%bx, %r12d
	comisd	%xmm2, %xmm0
	jbe	.L134
	xorl	%esi, %esi
	movl	%r12d, %edi
	call	Mix_Volume@PLT
	xorl	%esi, %esi
	movl	$255, %edx
	movl	%r12d, %edi
	call	Mix_SetPanning@PLT
	testl	%eax, %eax
	je	.L106
	.p2align 4,,10
	.p2align 3
.L105:
	movq	16(%rbp), %rcx
.L107:
	addl	$1, %ebx
	movzwl	%bx, %eax
	cmpq	%rcx, %rax
	jnb	.L143
.L97:
	movq	24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	jne	.L144
	movsd	8(%rbp), %xmm0
	mulsd	40(%rax), %xmm0
	movzwl	%bx, %r12d
	mulsd	.LC13(%rip), %xmm0
	call	round@PLT
	movl	%r12d, %edi
	cvttsd2sil	%xmm0, %esi
	call	Mix_Volume@PLT
	movl	$255, %edx
.L141:
	movl	$255, %esi
	movl	%r12d, %edi
	call	Mix_SetPanning@PLT
	testl	%eax, %eax
	jne	.L105
.L106:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.p2align 4,,10
	.p2align 3
.L133:
	comisd	%xmm0, %xmm1
	jbe	.L107
	testq	%rdx, %rdx
	js	.L109
	pxor	%xmm2, %xmm2
	cvtsi2sdq	%rdx, %xmm2
.L110:
	subsd	%xmm0, %xmm1
	movzwl	%bx, %r12d
	comisd	%xmm2, %xmm1
	jbe	.L135
	xorl	%esi, %esi
	movl	%r12d, %edi
	call	Mix_Volume@PLT
	xorl	%edx, %edx
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L134:
	divsd	%xmm2, %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	mulsd	8(%rbp), %xmm0
	mulsd	40(%rax), %xmm0
	mulsd	.LC13(%rip), %xmm0
	call	round@PLT
	movl	%r12d, %edi
	cvttsd2sil	%xmm0, %esi
	call	Mix_Volume@PLT
	movsd	8(%rsp), %xmm1
	mulsd	.LC14(%rip), %xmm1
	movapd	%xmm1, %xmm0
	call	round@PLT
	movl	$255, %edx
	movl	%r12d, %edi
	cvttsd2sil	%xmm0, %esi
	movzbl	%sil, %esi
	call	Mix_SetPanning@PLT
	testl	%eax, %eax
	jne	.L105
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L101:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L135:
	divsd	%xmm2, %xmm1
	movsd	.LC1(%rip), %xmm2
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 8(%rsp)
	mulsd	8(%rbp), %xmm0
	mulsd	40(%rax), %xmm0
	mulsd	.LC13(%rip), %xmm0
	call	round@PLT
	movl	%r12d, %edi
	cvttsd2sil	%xmm0, %esi
	call	Mix_Volume@PLT
	movsd	8(%rsp), %xmm2
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	call	round@PLT
	cvttsd2sil	%xmm0, %edx
	movzbl	%dl, %edx
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L109:
	movq	%rdx, %rcx
	andl	$1, %edx
	pxor	%xmm2, %xmm2
	shrq	%rcx
	orq	%rdx, %rcx
	cvtsi2sdq	%rcx, %xmm2
	addsd	%xmm2, %xmm2
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L143:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L137:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine5audio6UpdateEv, .-_ZN3wze6engine5audio6UpdateEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channelC2EPS0_y
	.type	_ZN3wze6engine5audio7channelC2EPS0_y, @function
_ZN3wze6engine5audio7channelC2EPS0_y:
.LFB8177:
	.cfi_startproc
	movq	.LC1(%rip), %rax
	movq	%rsi, (%rdi)
	movq	$0x000000000, 8(%rdi)
	movq	$0, 16(%rdi)
	movw	%dx, 24(%rdi)
	movq	$0, 32(%rdi)
	movq	%rax, 40(%rdi)
	ret
	.cfi_endproc
.LFE8177:
	.size	_ZN3wze6engine5audio7channelC2EPS0_y, .-_ZN3wze6engine5audio7channelC2EPS0_y
	.globl	_ZN3wze6engine5audio7channelC1EPS0_y
	.set	_ZN3wze6engine5audio7channelC1EPS0_y,_ZN3wze6engine5audio7channelC2EPS0_y
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel10GetSoundIDEv
	.type	_ZN3wze6engine5audio7channel10GetSoundIDEv, @function
_ZN3wze6engine5audio7channel10GetSoundIDEv:
.LFB8179:
	.cfi_startproc
	movq	32(%rdi), %rax
	ret
	.cfi_endproc
.LFE8179:
	.size	_ZN3wze6engine5audio7channel10GetSoundIDEv, .-_ZN3wze6engine5audio7channel10GetSoundIDEv
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"wze::engine.audio[].SetSoundID(): Sound does not exist\nParams: SoundID: %lld\n"
	.align 8
.LC16:
	.string	"wze::engine.audio[].SetSoundID(): Mix_HaltChannel() failed\nParams: SoundID: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel10SetSoundIDEy
	.type	_ZN3wze6engine5audio7channel10SetSoundIDEy, @function
_ZN3wze6engine5audio7channel10SetSoundIDEy:
.LFB8180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	testq	%rsi, %rsi
	je	.L148
	movq	(%rdi), %rax
	cmpq	368(%rax), %rsi
	jnb	.L149
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L149
.L148:
	cmpq	%rbx, 32(%rbp)
	jne	.L157
.L151:
	movq	%rbx, 32(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L157:
	.cfi_restore_state
	movzwl	24(%rbp), %edi
	call	Mix_HaltChannel@PLT
	cmpl	$-1, %eax
	jne	.L151
	leaq	.LC16(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L149:
	leaq	.LC15(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8180:
	.size	_ZN3wze6engine5audio7channel10SetSoundIDEy, .-_ZN3wze6engine5audio7channel10SetSoundIDEy
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"wze::engine.audio[].Play(): Mix_PlayChannel() failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4PlayEv
	.type	_ZN3wze6engine5audio7channel4PlayEv, @function
_ZN3wze6engine5audio7channel4PlayEv:
.LFB8181:
	.cfi_startproc
	movq	32(%rdi), %rsi
	testq	%rsi, %rsi
	jne	.L168
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L169
	movq	(%rdx,%rsi,8), %rsi
	movzwl	24(%rdi), %edi
	xorl	%edx, %edx
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	je	.L170
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L169:
	.cfi_restore_state
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L170:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8181:
	.size	_ZN3wze6engine5audio7channel4PlayEv, .-_ZN3wze6engine5audio7channel4PlayEv
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"wze::engine.audio[].Play(): Mix_PlayChannel() failed\nParams: Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4PlayEt
	.type	_ZN3wze6engine5audio7channel4PlayEt, @function
_ZN3wze6engine5audio7channel4PlayEt:
.LFB8182:
	.cfi_startproc
	movq	32(%rdi), %rax
	testq	%rax, %rax
	jne	.L181
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rdx
	movzwl	%si, %ebx
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rax
	jnb	.L182
	movq	(%rcx,%rax,8), %rsi
	movzwl	24(%rdi), %edi
	movl	%ebx, %edx
	call	Mix_PlayChannel@PLT
	cmpl	$-1, %eax
	je	.L183
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L182:
	.cfi_restore_state
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L183:
	leaq	.LC18(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8182:
	.size	_ZN3wze6engine5audio7channel4PlayEt, .-_ZN3wze6engine5audio7channel4PlayEt
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"wze::engine.audio[].Play(): Mix_FadeInChannel() failed\nParams: Loops: %d, FadeInMilliseconds: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4PlayEtt
	.type	_ZN3wze6engine5audio7channel4PlayEtt, @function
_ZN3wze6engine5audio7channel4PlayEtt:
.LFB8183:
	.cfi_startproc
	movq	32(%rdi), %rax
	testq	%rax, %rax
	jne	.L194
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%dx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movzwl	%si, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rdx
	movq	376(%rdx), %rcx
	cmpq	368(%rdx), %rax
	jnb	.L195
	movq	(%rcx,%rax,8), %rsi
	movzwl	24(%rdi), %edi
	movl	%ebp, %ecx
	movl	%ebx, %edx
	call	Mix_FadeInChannel@PLT
	cmpl	$-1, %eax
	je	.L196
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L195:
	.cfi_restore_state
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L196:
	leaq	.LC19(%rip), %rdi
	movl	%ebp, %edx
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8183:
	.size	_ZN3wze6engine5audio7channel4PlayEtt, .-_ZN3wze6engine5audio7channel4PlayEtt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel9GetVolumeEv
	.type	_ZN3wze6engine5audio7channel9GetVolumeEv, @function
_ZN3wze6engine5audio7channel9GetVolumeEv:
.LFB8184:
	.cfi_startproc
	movsd	40(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8184:
	.size	_ZN3wze6engine5audio7channel9GetVolumeEv, .-_ZN3wze6engine5audio7channel9GetVolumeEv
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.audio[].SetVolume(): Volume must not be NaN\nParams: Volume: %lf\n"
	.align 8
.LC21:
	.string	"wze::engine.audio[].SetVolume(): Volume must be in range [0, 1]\nParams: Volume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel9SetVolumeEd
	.type	_ZN3wze6engine5audio7channel9SetVolumeEd, @function
_ZN3wze6engine5audio7channel9SetVolumeEd:
.LFB8185:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	ucomisd	%xmm0, %xmm0
	jp	.L208
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L201
	comisd	.LC1(%rip), %xmm0
	ja	.L201
	movsd	%xmm0, 40(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L201:
	.cfi_restore_state
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L208:
	leaq	.LC20(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8185:
	.size	_ZN3wze6engine5audio7channel9SetVolumeEd, .-_ZN3wze6engine5audio7channel9SetVolumeEd
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel8IsPausedEv
	.type	_ZN3wze6engine5audio7channel8IsPausedEv, @function
_ZN3wze6engine5audio7channel8IsPausedEv:
.LFB8186:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	24(%rdi), %edi
	call	Mix_Paused@PLT
	testl	%eax, %eax
	setne	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8186:
	.size	_ZN3wze6engine5audio7channel8IsPausedEv, .-_ZN3wze6engine5audio7channel8IsPausedEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel5PauseEv
	.type	_ZN3wze6engine5audio7channel5PauseEv, @function
_ZN3wze6engine5audio7channel5PauseEv:
.LFB8187:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	24(%rdi), %edi
	call	Mix_Pause@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8187:
	.size	_ZN3wze6engine5audio7channel5PauseEv, .-_ZN3wze6engine5audio7channel5PauseEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel6ResumeEv
	.type	_ZN3wze6engine5audio7channel6ResumeEv, @function
_ZN3wze6engine5audio7channel6ResumeEv:
.LFB8188:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	24(%rdi), %edi
	call	Mix_Resume@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8188:
	.size	_ZN3wze6engine5audio7channel6ResumeEv, .-_ZN3wze6engine5audio7channel6ResumeEv
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"wze::engine.audio[].Stop(): Mix_HaltChannel() failed"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4StopEv
	.type	_ZN3wze6engine5audio7channel4StopEv, @function
_ZN3wze6engine5audio7channel4StopEv:
.LFB8189:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	24(%rdi), %edi
	call	Mix_HaltChannel@PLT
	cmpl	$-1, %eax
	je	.L218
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L218:
	.cfi_restore_state
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8189:
	.size	_ZN3wze6engine5audio7channel4StopEv, .-_ZN3wze6engine5audio7channel4StopEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio7channel4StopEt
	.type	_ZN3wze6engine5audio7channel4StopEt, @function
_ZN3wze6engine5audio7channel4StopEt:
.LFB8190:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movzwl	24(%rdi), %edi
	movzwl	%si, %esi
	call	Mix_FadeOutChannel@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8190:
	.size	_ZN3wze6engine5audio7channel4StopEt, .-_ZN3wze6engine5audio7channel4StopEt
	.section	.rodata.cst8,"aM",@progbits,8
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
