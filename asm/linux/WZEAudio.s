	.file	"WZEAudio.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"neo::array(): Memory allocation failed\nParams: Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioC2EPS0_
	.type	_ZN3wze6engine5audioC2EPS0_, @function
_ZN3wze6engine5audioC2EPS0_:
.LFB8157:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	$8, 16(%rdi)
	movl	$320, %edi
	call	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L5
	movq	.LC1(%rip), %rdx
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movq	%rdx, 8(%rbx)
	xorl	%r11d, %r11d
	xorl	%edx, %edx
	movq	$0, (%rax)
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movb	$0, 34(%rax)
	movq	$0, 40(%rax)
	movq	$0x000000000, 64(%rax)
	movw	%cx, 72(%rax)
	movb	$0, 74(%rax)
	movq	$0, 80(%rax)
	movq	$0x000000000, 104(%rax)
	movw	%si, 112(%rax)
	movb	$0, 114(%rax)
	movq	$0, 120(%rax)
	movq	$0x000000000, 144(%rax)
	movw	%di, 152(%rax)
	movb	$0, 154(%rax)
	movq	$0, 160(%rax)
	movq	$0x000000000, 184(%rax)
	movw	%r8w, 192(%rax)
	movb	$0, 194(%rax)
	movq	$0, 200(%rax)
	movq	$0x000000000, 224(%rax)
	movw	%r9w, 232(%rax)
	movb	$0, 234(%rax)
	movups	%xmm0, 8(%rax)
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 88(%rax)
	movups	%xmm0, 128(%rax)
	movups	%xmm0, 168(%rax)
	movups	%xmm0, 208(%rax)
	movq	$0, 240(%rax)
	movq	$0x000000000, 264(%rax)
	movw	%r10w, 272(%rax)
	movb	$0, 274(%rax)
	movq	$0, 280(%rax)
	movq	$0x000000000, 304(%rax)
	movw	%r11w, 312(%rax)
	movb	$0, 314(%rax)
	movups	%xmm0, 248(%rax)
	movups	%xmm0, 288(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	movl	$8, %esi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8157:
	.size	_ZN3wze6engine5audioC2EPS0_, .-_ZN3wze6engine5audioC2EPS0_
	.globl	_ZN3wze6engine5audioC1EPS0_
	.set	_ZN3wze6engine5audioC1EPS0_,_ZN3wze6engine5audioC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetGlobalVolumeEv
	.type	_ZN3wze6engine5audio15GetGlobalVolumeEv, @function
_ZN3wze6engine5audio15GetGlobalVolumeEv:
.LFB8159:
	.cfi_startproc
	movsd	8(%rdi), %xmm0
	ret
	.cfi_endproc
.LFE8159:
	.size	_ZN3wze6engine5audio15GetGlobalVolumeEv, .-_ZN3wze6engine5audio15GetGlobalVolumeEv
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\nParams: Volume: %lf\n"
	.align 8
.LC5:
	.string	"wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\nParams: Volume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetGlobalVolumeEd
	.type	_ZN3wze6engine5audio15SetGlobalVolumeEd, @function
_ZN3wze6engine5audio15SetGlobalVolumeEd:
.LFB8160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	ucomisd	%xmm0, %xmm0
	jp	.L18
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L10
	comisd	.LC1(%rip), %xmm0
	ja	.L10
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	cmpq	$0, 16(%rdi)
	movq	%rdi, %rbp
	je	.L12
	.p2align 4,,10
	.p2align 3
.L11:
	movq	24(%rbp), %rdx
	leaq	(%rax,%rax,4), %rax
	movapd	%xmm0, %xmm1
	movzwl	%bx, %edi
	addl	$1, %ebx
	movsd	%xmm0, 8(%rsp)
	leaq	(%rdx,%rax,8), %rax
	mulsd	8(%rax), %xmm1
	mulsd	.LC6(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_Volume@PLT
	movzwl	%bx, %eax
	cmpq	16(%rbp), %rax
	movsd	8(%rsp), %xmm0
	jb	.L11
.L12:
	movsd	%xmm0, 8(%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L18:
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8160:
	.size	_ZN3wze6engine5audio15SetGlobalVolumeEd, .-_ZN3wze6engine5audio15SetGlobalVolumeEd
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC8:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC9:
	.string	"wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC10:
	.string	"wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC11:
	.string	"wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.align 8
.LC12:
	.string	"neo::array[]: Index out of range\nParams: Index: %lld\n"
	.align 8
.LC13:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdt
	.type	_ZN3wze6engine5audio4PlayEytdt, @function
_ZN3wze6engine5audio4PlayEytdt:
.LFB8161:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	ucomisd	%xmm0, %xmm0
	jp	.L43
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L22
	comisd	.LC1(%rip), %xmm0
	ja	.L22
	movq	%rdi, %rbx
	movzwl	%dx, %r13d
	cmpq	16(%rdi), %r13
	jnb	.L44
	testq	%rsi, %rsi
	je	.L26
	movq	(%rdi), %rax
	movzwl	%dx, %ebp
	movzwl	%cx, %r15d
	cmpq	368(%rax), %rsi
	jnb	.L27
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L27
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 8(%rsp)
	mulsd	8(%rdi), %xmm1
	movl	%ebp, %edi
	mulsd	.LC6(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_Volume@PLT
	movl	$255, %edx
	movl	$255, %esi
	movl	%ebp, %edi
	call	Mix_SetPanning@PLT
	movsd	8(%rsp), %xmm0
	testl	%eax, %eax
	je	.L45
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %r12
	jnb	.L46
	movq	(%rdx,%r12,8), %rsi
	movl	%ebp, %edi
	movl	%r15d, %edx
	movsd	%xmm0, 8(%rsp)
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	cmpl	$-1, %eax
	je	.L47
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %r13
	jnb	.L42
	leaq	0(%r13,%r13,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%r12, (%rax)
	cmpq	16(%rbx), %r13
	jnb	.L42
	movq	.LC1(%rip), %rcx
	movw	%r14w, 32(%rax)
	movb	$0, 34(%rax)
	movq	%rcx, 16(%rax)
	movq	%rcx, 24(%rax)
	movsd	%xmm0, 8(%rax)
.L26:
	addq	$24, %rsp
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
.L22:
	.cfi_restore_state
	movzwl	%r14w, %ecx
	movzwl	%dx, %edx
	movq	%r12, %rsi
	movl	$1, %eax
	leaq	.LC8(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L42:
	movq	%r13, %rsi
.L41:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L27:
	leaq	.LC10(%rip), %rdi
	movl	%r15d, %ecx
	movl	%ebp, %edx
	movq	%r12, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L44:
	leaq	.LC9(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L43:
	leaq	.LC7(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L47:
	leaq	.LC13(%rip), %rdi
	movl	%r15d, %ecx
	movl	%ebp, %edx
	movq	%r12, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L46:
	movq	%r12, %rsi
	jmp	.L41
.L45:
	leaq	.LC11(%rip), %rdi
	movl	%r15d, %ecx
	movl	%ebp, %edx
	movq	%r12, %rsi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8161:
	.size	_ZN3wze6engine5audio4PlayEytdt, .-_ZN3wze6engine5audio4PlayEytdt
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC15:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC16:
	.string	"wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC17:
	.string	"wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC18:
	.string	"wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC19:
	.string	"wze::engine.audio.Play(): Mix_FadeInChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdtt
	.type	_ZN3wze6engine5audio4PlayEytdtt, @function
_ZN3wze6engine5audio4PlayEytdtt:
.LFB8162:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	ucomisd	%xmm0, %xmm0
	jp	.L72
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	ja	.L51
	comisd	.LC1(%rip), %xmm0
	ja	.L51
	movq	%rdi, %rbx
	movzwl	%dx, %r12d
	cmpq	16(%rdi), %r12
	jnb	.L73
	testq	%rsi, %rsi
	je	.L55
	movq	(%rdi), %rdx
	movzwl	%ax, %r13d
	movzwl	%r8w, %eax
	movzwl	%cx, %r15d
	movl	%eax, 4(%rsp)
	cmpq	368(%rdx), %rsi
	jnb	.L56
	movq	376(%rdx), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L56
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 8(%rsp)
	mulsd	8(%rdi), %xmm1
	movl	%r13d, %edi
	mulsd	.LC6(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_Volume@PLT
	movl	$255, %edx
	movl	$255, %esi
	movl	%r13d, %edi
	call	Mix_SetPanning@PLT
	movsd	8(%rsp), %xmm0
	testl	%eax, %eax
	je	.L74
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rbp
	jnb	.L75
	movq	(%rdx,%rbp,8), %rsi
	movl	4(%rsp), %ecx
	movl	%r15d, %edx
	movl	%r13d, %edi
	movsd	%xmm0, 8(%rsp)
	call	Mix_FadeInChannel@PLT
	movsd	8(%rsp), %xmm0
	cmpl	$-1, %eax
	je	.L76
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %r12
	jnb	.L71
	leaq	(%r12,%r12,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rbp, (%rax)
	cmpq	16(%rbx), %r12
	jnb	.L71
	movq	.LC1(%rip), %rcx
	movw	%r14w, 32(%rax)
	movb	$0, 34(%rax)
	movq	%rcx, 16(%rax)
	movq	%rcx, 24(%rax)
	movsd	%xmm0, 8(%rax)
.L55:
	addq	$24, %rsp
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
.L51:
	.cfi_restore_state
	movzwl	%ax, %edx
	movzwl	%r14w, %ecx
	movzwl	%r8w, %r8d
	movq	%rbp, %rsi
	leaq	.LC15(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L71:
	movq	%r12, %rsi
.L70:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L56:
	movl	4(%rsp), %r8d
	movl	%r15d, %ecx
	movl	%r13d, %edx
	movq	%rbp, %rsi
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L73:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movzwl	%r8w, %r8d
	movl	$1, %eax
	leaq	.LC16(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L72:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movzwl	%r8w, %r8d
	movl	$1, %eax
	leaq	.LC14(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L76:
	movl	4(%rsp), %r8d
	movl	%r15d, %ecx
	movl	%r13d, %edx
	movq	%rbp, %rsi
	leaq	.LC19(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L75:
	movq	%rbp, %rsi
	jmp	.L70
.L74:
	movl	4(%rsp), %r8d
	movl	%r15d, %ecx
	movl	%r13d, %edx
	movq	%rbp, %rsi
	leaq	.LC18(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8162:
	.size	_ZN3wze6engine5audio4PlayEytdtt, .-_ZN3wze6engine5audio4PlayEytdtt
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC21:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC22:
	.string	"wze::engine.audio.Play(): Left must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC23:
	.string	"wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC24:
	.string	"wze::engine.audio.Play(): Right must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC25:
	.string	"wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC26:
	.string	"wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC27:
	.string	"wze::engine.audio.Play(): Sound does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC29:
	.string	"wze::engine.audio.Play(): Mix_SetPanning() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.align 8
.LC30:
	.string	"wze::engine.audio.Play(): Mix_PlayChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdddt
	.type	_ZN3wze6engine5audio4PlayEytdddt, @function
_ZN3wze6engine5audio4PlayEytdddt:
.LFB8163:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	ucomisd	%xmm0, %xmm0
	jp	.L117
	pxor	%xmm3, %xmm3
	comisd	%xmm0, %xmm3
	ja	.L80
	movsd	.LC1(%rip), %xmm4
	comisd	%xmm4, %xmm0
	ja	.L80
	ucomisd	%xmm1, %xmm1
	jp	.L118
	comisd	%xmm1, %xmm3
	ja	.L85
	comisd	%xmm4, %xmm1
	ja	.L85
	ucomisd	%xmm2, %xmm2
	jp	.L119
	comisd	%xmm2, %xmm3
	ja	.L90
	comisd	%xmm4, %xmm2
	ja	.L90
	movq	%rdi, %rbx
	movzwl	%dx, %r13d
	cmpq	16(%rdi), %r13
	jnb	.L120
	testq	%rsi, %rsi
	je	.L94
	movq	(%rdi), %rdx
	movzwl	%ax, %ebp
	movzwl	%cx, %r15d
	cmpq	368(%rdx), %rsi
	jnb	.L95
	movq	376(%rdx), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L95
	movapd	%xmm0, %xmm3
	movsd	%xmm0, 24(%rsp)
	mulsd	8(%rdi), %xmm3
	movl	%ebp, %edi
	movsd	%xmm2, 16(%rsp)
	mulsd	.LC6(%rip), %xmm3
	movsd	%xmm1, 8(%rsp)
	cvttsd2sil	%xmm3, %esi
	call	Mix_Volume@PLT
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
	movl	%ebp, %edi
	movsd	.LC28(%rip), %xmm3
	movapd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm1, %xmm3
	cvttsd2sil	%xmm4, %edx
	cvttsd2sil	%xmm3, %esi
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	call	Mix_SetPanning@PLT
	movsd	8(%rsp), %xmm1
	movsd	16(%rsp), %xmm2
	testl	%eax, %eax
	movsd	24(%rsp), %xmm0
	je	.L121
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %r12
	jnb	.L122
	movq	(%rdx,%r12,8), %rsi
	movl	%ebp, %edi
	movl	%r15d, %edx
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm0, 8(%rsp)
	call	Mix_PlayChannel@PLT
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm1
	cmpl	$-1, %eax
	movsd	24(%rsp), %xmm2
	je	.L123
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %r13
	jnb	.L116
	leaq	0(%r13,%r13,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%r12, (%rax)
	cmpq	16(%rbx), %r13
	jnb	.L116
	movw	%r14w, 32(%rax)
	unpcklpd	%xmm1, %xmm0
	movb	$0, 34(%rax)
	movups	%xmm0, 8(%rax)
	movsd	%xmm2, 24(%rax)
.L94:
	addq	$40, %rsp
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
.L80:
	.cfi_restore_state
	movzwl	%ax, %edx
	movzwl	%r14w, %ecx
	movq	%r12, %rsi
	movl	$3, %eax
	leaq	.LC21(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L90:
	movzwl	%ax, %edx
	movzwl	%r14w, %ecx
	movq	%r12, %rsi
	movl	$3, %eax
	leaq	.LC25(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L85:
	movzwl	%ax, %edx
	movzwl	%r14w, %ecx
	movq	%r12, %rsi
	movl	$3, %eax
	leaq	.LC23(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L116:
	movq	%r13, %rsi
.L115:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L95:
	leaq	.LC27(%rip), %rdi
	movl	%r15d, %ecx
	movl	%ebp, %edx
	movq	%r12, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L120:
	leaq	.LC26(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L118:
	leaq	.LC22(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L117:
	leaq	.LC20(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L119:
	leaq	.LC24(%rip), %rdi
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L123:
	leaq	.LC30(%rip), %rdi
	movl	%r15d, %ecx
	movl	%ebp, %edx
	movq	%r12, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L122:
	movq	%r12, %rsi
	jmp	.L115
.L121:
	leaq	.LC29(%rip), %rdi
	movl	%r15d, %ecx
	movl	%ebp, %edx
	movq	%r12, %rsi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8163:
	.size	_ZN3wze6engine5audio4PlayEytdddt, .-_ZN3wze6engine5audio4PlayEytdddt
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"wze::engine.audio.Play(): Volume must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC32:
	.string	"wze::engine.audio.Play(): Volume must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC33:
	.string	"wze::engine.audio.Play(): Left must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC34:
	.string	"wze::engine.audio.Play(): Left must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC35:
	.string	"wze::engine.audio.Play(): Right must not be NaN\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC36:
	.string	"wze::engine.audio.Play(): Right must be in range [0, 1]\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC37:
	.string	"wze::engine.audio.Play(): Channel does not exist\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\n"
	.align 8
.LC38:
	.string	"wze::engine.audio.Play(): Mix_FadeInChannel() failed\nParams: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdddtt
	.type	_ZN3wze6engine5audio4PlayEytdddtt, @function
_ZN3wze6engine5audio4PlayEytdddtt:
.LFB8164:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%ecx, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%r8d, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	ucomisd	%xmm0, %xmm0
	jp	.L164
	pxor	%xmm3, %xmm3
	comisd	%xmm0, %xmm3
	ja	.L127
	movsd	.LC1(%rip), %xmm4
	comisd	%xmm4, %xmm0
	ja	.L127
	ucomisd	%xmm1, %xmm1
	jp	.L165
	comisd	%xmm1, %xmm3
	ja	.L132
	comisd	%xmm4, %xmm1
	ja	.L132
	ucomisd	%xmm2, %xmm2
	jp	.L166
	comisd	%xmm2, %xmm3
	ja	.L137
	comisd	%xmm4, %xmm2
	ja	.L137
	movq	%rdi, %rbx
	movzwl	%dx, %r15d
	cmpq	16(%rdi), %r15
	jnb	.L167
	testq	%rsi, %rsi
	je	.L141
	movq	(%rdi), %rdx
	movzwl	%ax, %r12d
	movzwl	%cx, %eax
	movl	%eax, 28(%rsp)
	cmpq	368(%rdx), %rsi
	jnb	.L142
	movq	376(%rdx), %rax
	cmpq	$0, (%rax,%rsi,8)
	je	.L142
	movapd	%xmm0, %xmm3
	movsd	%xmm0, 16(%rsp)
	mulsd	8(%rdi), %xmm3
	movl	%r12d, %edi
	movsd	%xmm2, 8(%rsp)
	mulsd	.LC6(%rip), %xmm3
	movsd	%xmm1, (%rsp)
	cvttsd2sil	%xmm3, %esi
	call	Mix_Volume@PLT
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	movl	%r12d, %edi
	movsd	.LC28(%rip), %xmm3
	movapd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm1, %xmm3
	cvttsd2sil	%xmm4, %edx
	cvttsd2sil	%xmm3, %esi
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	call	Mix_SetPanning@PLT
	movsd	(%rsp), %xmm1
	movsd	8(%rsp), %xmm2
	testl	%eax, %eax
	movsd	16(%rsp), %xmm0
	je	.L168
	movq	(%rbx), %rax
	movzwl	%bp, %ecx
	movq	376(%rax), %rdx
	cmpq	368(%rax), %r13
	jnb	.L169
	movq	(%rdx,%r13,8), %rsi
	movl	%r12d, %edi
	movzwl	%r14w, %edx
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm0, (%rsp)
	call	Mix_FadeInChannel@PLT
	movsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm1
	cmpl	$-1, %eax
	movsd	16(%rsp), %xmm2
	je	.L170
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %r15
	jnb	.L163
	leaq	(%r15,%r15,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%r13, (%rax)
	cmpq	16(%rbx), %r15
	jnb	.L163
	movw	%r14w, 32(%rax)
	unpcklpd	%xmm1, %xmm0
	movb	$0, 34(%rax)
	movups	%xmm0, 8(%rax)
	movsd	%xmm2, 24(%rax)
.L141:
	addq	$40, %rsp
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
.L127:
	.cfi_restore_state
	movzwl	%ax, %edx
	movzwl	%r14w, %ecx
	movzwl	%bp, %r8d
	movq	%r13, %rsi
	leaq	.LC32(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L137:
	movzwl	%ax, %edx
	movzwl	%r14w, %ecx
	movzwl	%bp, %r8d
	movq	%r13, %rsi
	leaq	.LC36(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L132:
	movzwl	%ax, %edx
	movzwl	%r14w, %ecx
	movzwl	%bp, %r8d
	movq	%r13, %rsi
	leaq	.LC34(%rip), %rdi
	movl	$3, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L163:
	movq	%r15, %rsi
.L162:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L142:
	movl	28(%rsp), %ecx
	movl	%r12d, %edx
	movq	%r13, %rsi
	movl	$3, %eax
	leaq	.LC27(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L167:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movzwl	%r8w, %r8d
	movl	$3, %eax
	leaq	.LC37(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L165:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movzwl	%r8w, %r8d
	movl	$3, %eax
	leaq	.LC33(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L164:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movzwl	%r8w, %r8d
	movl	$3, %eax
	leaq	.LC31(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L166:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	movzwl	%r8w, %r8d
	movl	$3, %eax
	leaq	.LC35(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L170:
	movl	28(%rsp), %ecx
	movl	%r12d, %edx
	movq	%r13, %rsi
	movl	$3, %eax
	leaq	.LC38(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L169:
	movq	%r13, %rsi
	jmp	.L162
.L168:
	movl	28(%rsp), %ecx
	movl	%r12d, %edx
	movq	%r13, %rsi
	movl	$3, %eax
	leaq	.LC29(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8164:
	.size	_ZN3wze6engine5audio4PlayEytdddtt, .-_ZN3wze6engine5audio4PlayEytdddtt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetChannelCountEv
	.type	_ZN3wze6engine5audio15GetChannelCountEv, @function
_ZN3wze6engine5audio15GetChannelCountEv:
.LFB8165:
	.cfi_startproc
	movzwl	16(%rdi), %eax
	ret
	.cfi_endproc
.LFE8165:
	.size	_ZN3wze6engine5audio15GetChannelCountEv, .-_ZN3wze6engine5audio15GetChannelCountEv
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"wze::engine.audio.SetChannelCount(): Mix_AllocateChannels() failed\nParams: ChannelCount: %d\n"
	.align 8
.LC40:
	.string	"neo::array.Remove(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.align 8
.LC41:
	.string	"neo::array.Insert(): Memory allocation failed\nParams: Index: %lld, Length: %lld\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetChannelCountEt
	.type	_ZN3wze6engine5audio15SetChannelCountEt, @function
_ZN3wze6engine5audio15SetChannelCountEt:
.LFB8166:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movzwl	%si, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	movl	%r13d, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	Mix_AllocateChannels@PLT
	cmpl	%eax, %r13d
	jne	.L189
	movq	16(%r12), %rbx
	movzwl	%bp, %ebp
	cmpq	%rbx, %rbp
	jb	.L190
	cmpq	%rbp, %rbx
	jb	.L191
.L176:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	.cfi_restore_state
	subl	%ebx, %r13d
	movslq	%r13d, %r13
	testq	%r13, %r13
	jne	.L178
	movq	%rbx, %rdi
.L183:
	cmpq	%rdi, %rbx
	jnb	.L192
	movq	24(%r12), %rcx
	movl	%ebx, %edx
	movq	%rbx, %rsi
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L185:
	leaq	(%rsi,%rsi,4), %rax
	leaq	(%rcx,%rax,8), %rax
	movq	$0, (%rax)
	movq	16(%r12), %rbx
	cmpq	%rbx, %rsi
	jnb	.L193
	xorl	%esi, %esi
	addl	$1, %edx
	movq	$0x000000000, 24(%rax)
	movw	%si, 32(%rax)
	movzwl	%dx, %esi
	movb	$0, 34(%rax)
	movups	%xmm0, 8(%rax)
	cmpq	%rbx, %rsi
	jb	.L185
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L190:
	.cfi_restore_state
	movq	%rbp, 16(%r12)
	movq	24(%r12), %rdi
	testq	%rbp, %rbp
	je	.L194
	leaq	0(%rbp,%rbp,4), %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.L195
	movq	16(%r12), %rbx
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L178:
	.cfi_restore_state
	leaq	0(%r13,%rbx), %rbp
	movq	24(%r12), %rdi
	movq	%rbp, 16(%r12)
	leaq	0(%rbp,%rbp,4), %rsi
	salq	$3, %rsi
	call	realloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.L196
	movq	16(%r12), %rdi
	leaq	-1(%rdi), %rcx
	cmpq	%rbp, %rcx
	jb	.L183
	movq	%rdi, %rdx
	subq	%r13, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	leaq	0(%r13,%r13,4), %rdx
	salq	$3, %rdx
	.p2align 4,,10
	.p2align 3
.L182:
	movdqu	-40(%rax), %xmm1
	subq	$1, %rcx
	subq	$40, %rax
	movups	%xmm1, (%rax,%rdx)
	movdqu	16(%rax), %xmm2
	movups	%xmm2, 16(%rax,%rdx)
	movq	32(%rax), %rsi
	movq	%rsi, 32(%rax,%rdx)
	cmpq	%rbp, %rcx
	jnb	.L182
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L194:
	call	free@PLT
	movq	16(%r12), %rbx
	movq	$0, 24(%r12)
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L192:
	movq	%rdi, %rbx
	jmp	.L176
.L193:
	leaq	.LC12(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L189:
	leaq	.LC39(%rip), %rdi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L196:
	leaq	.LC41(%rip), %rdi
	movq	%r13, %rdx
	movq	%rbx, %rsi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L195:
	movq	%rbx, %rdx
	leaq	.LC40(%rip), %rdi
	movq	%rbp, %rsi
	subq	%rbp, %rdx
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8166:
	.size	_ZN3wze6engine5audio15SetChannelCountEt, .-_ZN3wze6engine5audio15SetChannelCountEt
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"wze::engine.audio.SetChannelVolume(): Channel does not exist\nParams: Channel: %d, Volume: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio16SetChannelVolumeEtd
	.type	_ZN3wze6engine5audio16SetChannelVolumeEtd, @function
_ZN3wze6engine5audio16SetChannelVolumeEtd:
.LFB8167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%si, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movzwl	%si, %edi
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpq	16(%rbx), %rbp
	jnb	.L201
	movapd	%xmm0, %xmm1
	movsd	%xmm0, 8(%rsp)
	mulsd	8(%rbx), %xmm1
	mulsd	.LC6(%rip), %xmm1
	cvttsd2sil	%xmm1, %esi
	call	Mix_Volume@PLT
	cmpq	16(%rbx), %rbp
	movq	24(%rbx), %rax
	movsd	8(%rsp), %xmm0
	jnb	.L202
	leaq	0(%rbp,%rbp,4), %rdx
	movsd	%xmm0, 8(%rax,%rdx,8)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L201:
	.cfi_restore_state
	movl	%edi, %esi
	movl	$1, %eax
	leaq	.LC42(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L202:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8167:
	.size	_ZN3wze6engine5audio16SetChannelVolumeEtd, .-_ZN3wze6engine5audio16SetChannelVolumeEtd
	.section	.rodata.str1.8
	.align 8
.LC43:
	.string	"wze::engine.audio.SetChannelPanning(): Channel does not exist\nParams: Channel: %d, Left: %lf, Right: %lf\n"
	.align 8
.LC44:
	.string	"wze::engine.audio.SetChannelPanning(): Mix_SetPanning() failed\nParams: Channel: %d, Left: %lf, Right: %lf\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio17SetChannelPanningEtdd
	.type	_ZN3wze6engine5audio17SetChannelPanningEtdd, @function
_ZN3wze6engine5audio17SetChannelPanningEtdd:
.LFB8168:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movapd	%xmm0, %xmm3
	movzwl	%si, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	unpcklpd	%xmm1, %xmm3
	movzwl	%si, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	cmpq	16(%rdi), %r12
	jnb	.L208
	movsd	.LC28(%rip), %xmm2
	movapd	%xmm1, %xmm4
	movq	%rdi, %rbx
	movl	%ebp, %edi
	movaps	%xmm3, 16(%rsp)
	mulsd	%xmm2, %xmm4
	movsd	%xmm1, 8(%rsp)
	mulsd	%xmm0, %xmm2
	movsd	%xmm0, (%rsp)
	cvttsd2sil	%xmm4, %edx
	cvttsd2sil	%xmm2, %esi
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	call	Mix_SetPanning@PLT
	movsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm1
	testl	%eax, %eax
	movapd	16(%rsp), %xmm3
	je	.L209
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %r12
	jnb	.L210
	leaq	(%r12,%r12,4), %rdx
	movups	%xmm3, 16(%rax,%rdx,8)
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L208:
	.cfi_restore_state
	leaq	.LC43(%rip), %rdi
	movl	%ebp, %esi
	movl	$2, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L210:
	leaq	.LC12(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L209:
	leaq	.LC44(%rip), %rdi
	movl	%ebp, %esi
	movl	$2, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8168:
	.size	_ZN3wze6engine5audio17SetChannelPanningEtdd, .-_ZN3wze6engine5audio17SetChannelPanningEtdd
	.section	.rodata.str1.8
	.align 8
.LC45:
	.string	"wze::engine.audio.PauseChannel(): Channel does not exist\nParams: Channel: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio12PauseChannelEt
	.type	_ZN3wze6engine5audio12PauseChannelEt, @function
_ZN3wze6engine5audio12PauseChannelEt:
.LFB8169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%si, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movzwl	%si, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	16(%rbx), %rbp
	jnb	.L215
	call	Mix_Pause@PLT
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rbp
	jnb	.L216
	leaq	0(%rbp,%rbp,4), %rdx
	movb	$1, 34(%rax,%rdx,8)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L215:
	.cfi_restore_state
	movl	%edi, %esi
	xorl	%eax, %eax
	leaq	.LC45(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L216:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8169:
	.size	_ZN3wze6engine5audio12PauseChannelEt, .-_ZN3wze6engine5audio12PauseChannelEt
	.section	.rodata.str1.8
	.align 8
.LC46:
	.string	"wze::engine.audio.ResumeChannel(): Channel does not exist\nParams: Channel: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio13ResumeChannelEt
	.type	_ZN3wze6engine5audio13ResumeChannelEt, @function
_ZN3wze6engine5audio13ResumeChannelEt:
.LFB8170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%si, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movzwl	%si, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	16(%rbx), %rbp
	jnb	.L221
	call	Mix_Resume@PLT
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rbp
	jnb	.L222
	leaq	0(%rbp,%rbp,4), %rdx
	movb	$0, 34(%rax,%rdx,8)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L221:
	.cfi_restore_state
	movl	%edi, %esi
	xorl	%eax, %eax
	leaq	.LC46(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L222:
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8170:
	.size	_ZN3wze6engine5audio13ResumeChannelEt, .-_ZN3wze6engine5audio13ResumeChannelEt
	.section	.rodata.str1.8
	.align 8
.LC47:
	.string	"wze::engine.audio.StopChannel(): Channel does not exist\nParams: Channel: %d\n"
	.align 8
.LC48:
	.string	"wze::engine.audio.StopChannel(): Mix_HaltChannel() failed\nParams: Channel: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio11StopChannelEt
	.type	_ZN3wze6engine5audio11StopChannelEt, @function
_ZN3wze6engine5audio11StopChannelEt:
.LFB8171:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movzwl	%si, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzwl	%si, %ebx
	cmpq	16(%rdi), %r12
	jnb	.L230
	movq	%rdi, %rbp
	movl	%ebx, %edi
	call	Mix_HaltChannel@PLT
	testl	%eax, %eax
	jne	.L231
	movq	24(%rbp), %rax
	cmpq	16(%rbp), %r12
	jnb	.L229
	leaq	(%r12,%r12,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	$0, (%rax)
	cmpq	16(%rbp), %r12
	jnb	.L229
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movb	$0, 34(%rax)
	movups	%xmm0, 8(%rax)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L229:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L231:
	leaq	.LC48(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L230:
	leaq	.LC47(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8171:
	.size	_ZN3wze6engine5audio11StopChannelEt, .-_ZN3wze6engine5audio11StopChannelEt
	.section	.rodata.str1.8
	.align 8
.LC49:
	.string	"wze::engine.audio.StopChannel(): Channel does not exist\nParams: Channel: %d, FadeOutMilliseconds: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio11StopChannelEtt
	.type	_ZN3wze6engine5audio11StopChannelEtt, @function
_ZN3wze6engine5audio11StopChannelEtt:
.LFB8172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%dx, %edx
	movzwl	%si, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	movzwl	%si, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	16(%rbx), %rbp
	jnb	.L238
	movl	%edx, %esi
	call	Mix_FadeOutChannel@PLT
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rbp
	jnb	.L237
	leaq	0(%rbp,%rbp,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	$0, (%rax)
	cmpq	16(%rbx), %rbp
	jnb	.L237
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movb	$0, 34(%rax)
	movups	%xmm0, 8(%rax)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L237:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L238:
	movl	%edi, %esi
	xorl	%eax, %eax
	leaq	.LC49(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8172:
	.size	_ZN3wze6engine5audio11StopChannelEtt, .-_ZN3wze6engine5audio11StopChannelEtt
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio8PauseAllEv
	.type	_ZN3wze6engine5audio8PauseAllEv, @function
_ZN3wze6engine5audio8PauseAllEv:
.LFB8173:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	movl	$1, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	Mix_PauseAudio@PLT
	cmpq	$0, 16(%r12)
	je	.L240
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L242:
	movzwl	%bp, %edi
	call	Mix_Pause@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdx
	cmpq	%rax, %rbx
	jnb	.L245
	addl	$1, %ebp
	leaq	(%rbx,%rbx,4), %rcx
	movzwl	%bp, %ebx
	movb	$1, 34(%rdx,%rcx,8)
	cmpq	%rax, %rbx
	jb	.L242
.L240:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L245:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8173:
	.size	_ZN3wze6engine5audio8PauseAllEv, .-_ZN3wze6engine5audio8PauseAllEv
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio9ResumeAllEv
	.type	_ZN3wze6engine5audio9ResumeAllEv, @function
_ZN3wze6engine5audio9ResumeAllEv:
.LFB8174:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	xorl	%edi, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	call	Mix_PauseAudio@PLT
	cmpq	$0, 16(%r12)
	je	.L247
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L249:
	movzwl	%bp, %edi
	call	Mix_Resume@PLT
	movq	16(%r12), %rax
	movq	24(%r12), %rdx
	cmpq	%rax, %rbx
	jnb	.L252
	addl	$1, %ebp
	leaq	(%rbx,%rbx,4), %rcx
	movzwl	%bp, %ebx
	movb	$0, 34(%rdx,%rcx,8)
	cmpq	%rax, %rbx
	jb	.L249
.L247:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L252:
	.cfi_restore_state
	leaq	.LC12(%rip), %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8174:
	.size	_ZN3wze6engine5audio9ResumeAllEv, .-_ZN3wze6engine5audio9ResumeAllEv
	.section	.rodata.str1.8
	.align 8
.LC50:
	.string	"wze::engine.audio[]: Channel does not exist\nParams: Channel: %d\n"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioixEt
	.type	_ZN3wze6engine5audioixEt, @function
_ZN3wze6engine5audioixEt:
.LFB8175:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movzwl	%dx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movzwl	%dx, %edi
	cmpq	16(%rsi), %r12
	jnb	.L263
	movq	%rsi, %rbp
	call	Mix_Playing@PLT
	testl	%eax, %eax
	movq	24(%rbp), %rax
	je	.L264
	cmpq	16(%rbp), %r12
	jnb	.L262
	leaq	(%r12,%r12,4), %rdx
	leaq	(%rax,%rdx,8), %rax
.L258:
	movdqu	(%rax), %xmm1
	movdqu	16(%rax), %xmm2
	movq	32(%rax), %rax
	movups	%xmm1, (%rbx)
	movq	%rax, 32(%rbx)
	movq	%rbx, %rax
	movups	%xmm2, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L264:
	.cfi_restore_state
	cmpq	16(%rbp), %r12
	jnb	.L262
	leaq	(%r12,%r12,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	$0, (%rax)
	cmpq	16(%rbp), %r12
	jnb	.L262
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movb	$0, 34(%rax)
	movups	%xmm0, 8(%rax)
	jmp	.L258
.L262:
	leaq	.LC12(%rip), %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L263:
	movl	%edi, %esi
	xorl	%eax, %eax
	leaq	.LC50(%rip), %rdi
	call	printf@PLT
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8175:
	.size	_ZN3wze6engine5audioixEt, .-_ZN3wze6engine5audioixEt
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1080033280
	.align 8
.LC28:
	.long	0
	.long	1081073664
	.ident	"GCC: (GNU) 13.2.1 20230801"
	.section	.note.GNU-stack,"",@progbits
