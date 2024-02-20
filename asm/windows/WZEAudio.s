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
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioC2EPS0_
	.def	_ZN3wze6engine5audioC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audioC2EPS0_
_ZN3wze6engine5audioC2EPS0_:
.LFB6890:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rdx, (%rcx)
	movq	%rcx, %rbx
	movq	$8, 16(%rcx)
	movl	$320, %ecx
	call	malloc
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.L5
	movq	.LC1(%rip), %rdx
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movq	$0, (%rax)
	movq	%rdx, 8(%rbx)
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	movw	%dx, 32(%rax)
	xorl	%edx, %edx
	movq	$0x000000000, 24(%rax)
	movb	$0, 34(%rax)
	movq	$0, 40(%rax)
	movq	$0x000000000, 64(%rax)
	movw	%cx, 72(%rax)
	movb	$0, 74(%rax)
	movq	$0, 80(%rax)
	movq	$0x000000000, 104(%rax)
	movw	%r8w, 112(%rax)
	movb	$0, 114(%rax)
	movq	$0, 120(%rax)
	movq	$0x000000000, 144(%rax)
	movw	%r9w, 152(%rax)
	movb	$0, 154(%rax)
	movq	$0, 160(%rax)
	movq	$0x000000000, 184(%rax)
	movw	%r10w, 192(%rax)
	movb	$0, 194(%rax)
	movq	$0, 200(%rax)
	movq	$0x000000000, 224(%rax)
	movw	%r11w, 232(%rax)
	movb	$0, 234(%rax)
	movups	%xmm0, 8(%rax)
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 88(%rax)
	movups	%xmm0, 128(%rax)
	movups	%xmm0, 168(%rax)
	movups	%xmm0, 208(%rax)
	movq	$0, 240(%rax)
	movq	$0x000000000, 264(%rax)
	movw	%bx, 272(%rax)
	movb	$0, 274(%rax)
	movq	$0, 280(%rax)
	movq	$0x000000000, 304(%rax)
	movw	%dx, 312(%rax)
	movb	$0, 314(%rax)
	movups	%xmm0, 248(%rax)
	movups	%xmm0, 288(%rax)
	addq	$32, %rsp
	popq	%rbx
	ret
.L5:
	leaq	.LC0(%rip), %rcx
	movl	$8, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.globl	_ZN3wze6engine5audioC1EPS0_
	.def	_ZN3wze6engine5audioC1EPS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN3wze6engine5audioC1EPS0_,_ZN3wze6engine5audioC2EPS0_
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15GetGlobalVolumeEv
	.def	_ZN3wze6engine5audio15GetGlobalVolumeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15GetGlobalVolumeEv
_ZN3wze6engine5audio15GetGlobalVolumeEv:
.LFB6892:
	.seh_endprologue
	movsd	8(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\12Params: Volume: %lf\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\12Params: Volume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetGlobalVolumeEd
	.def	_ZN3wze6engine5audio15SetGlobalVolumeEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15SetGlobalVolumeEd
_ZN3wze6engine5audio15SetGlobalVolumeEd:
.LFB6893:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	movq	%rcx, %rsi
	movapd	%xmm1, %xmm6
	jp	.L17
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L10
	comisd	.LC1(%rip), %xmm1
	ja	.L10
	cmpq	$0, 16(%rcx)
	je	.L12
	movsd	.LC6(%rip), %xmm7
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L11:
	movq	24(%rsi), %rdx
	leaq	(%rax,%rax,4), %rax
	movzwl	%bx, %ecx
	addl	$1, %ebx
	leaq	(%rdx,%rax,8), %rax
	movsd	8(%rax), %xmm2
	mulsd	%xmm6, %xmm2
	mulsd	%xmm7, %xmm2
	cvttsd2sil	%xmm2, %edx
	call	Mix_Volume
	movzwl	%bx, %eax
	cmpq	16(%rsi), %rax
	jb	.L11
.L12:
	movsd	%xmm6, 8(%rsi)
	movapd	%xmm6, %xmm0
	movaps	48(%rsp), %xmm7
	movaps	32(%rsp), %xmm6
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L10:
	leaq	.LC5(%rip), %rcx
	movapd	%xmm6, %xmm1
	movq	%xmm6, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L17:
	leaq	.LC4(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC8:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.audio.Play(): Channel does not exist\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC10:
	.ascii "wze::engine.audio.Play(): Sound does not exist\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.audio.Play(): Mix_SetPanning() failed\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC12:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.audio.Play(): Mix_PlayChannel() failed\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdt
	.def	_ZN3wze6engine5audio4PlayEytdt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytdt
_ZN3wze6engine5audio4PlayEytdt:
.LFB6894:
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
	subq	$88, %rsp
	.seh_stackalloc	88
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movl	176(%rsp), %r12d
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rbx
	movapd	%xmm3, %xmm6
	movq	%rdx, %rdi
	jp	.L40
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L21
	movsd	.LC1(%rip), %xmm7
	comisd	%xmm7, %xmm3
	ja	.L21
	movzwl	%r8w, %ebp
	cmpq	16(%rcx), %rbp
	jnb	.L41
	testq	%rdx, %rdx
	je	.L25
	movq	(%rcx), %rax
	movzwl	%r8w, %esi
	movzwl	%r12w, %r13d
	cmpq	368(%rax), %rdx
	jnb	.L26
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L26
	movsd	8(%rcx), %xmm0
	movl	%esi, %ecx
	mulsd	%xmm3, %xmm0
	mulsd	.LC6(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movl	$255, %r8d
	movl	$255, %edx
	movl	%esi, %ecx
	call	Mix_SetPanning
	testl	%eax, %eax
	je	.L42
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rdi
	jnb	.L43
	movq	(%rdx,%rdi,8), %rdx
	movl	%r13d, %r8d
	movl	%esi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L44
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rbp
	jnb	.L39
	leaq	0(%rbp,%rbp,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rdi, (%rax)
	cmpq	16(%rbx), %rbp
	jnb	.L39
	movw	%r12w, 32(%rax)
	movsd	%xmm6, 8(%rax)
	movsd	%xmm7, 16(%rax)
	movsd	%xmm7, 24(%rax)
.L25:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L21:
	movzwl	%r12w, %r12d
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rdi, %rdx
	movl	%r12d, 32(%rsp)
	leaq	.LC8(%rip), %rcx
	movzwl	%r8w, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L39:
	leaq	.LC12(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L26:
	movl	%r13d, 32(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rdi, %rdx
	leaq	.LC10(%rip), %rcx
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L41:
	movzwl	%r12w, %r12d
	leaq	.LC9(%rip), %rcx
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movl	%r12d, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L40:
	movzwl	%r12w, %r12d
	leaq	.LC7(%rip), %rcx
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movl	%r12d, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L44:
	movl	%r13d, 32(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rdi, %rdx
	leaq	.LC13(%rip), %rcx
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L43:
	leaq	.LC12(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L42:
	movl	%r13d, 32(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rdi, %rdx
	leaq	.LC11(%rip), %rcx
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.audio.Play(): Channel does not exist\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.audio.Play(): Sound does not exist\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.audio.Play(): Mix_SetPanning() failed\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.audio.Play(): Mix_FadeInChannel() failed\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdtt
	.def	_ZN3wze6engine5audio4PlayEytdtt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytdtt
_ZN3wze6engine5audio4PlayEytdtt:
.LFB6895:
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
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	movl	176(%rsp), %r13d
	movl	184(%rsp), %r12d
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rbx
	movapd	%xmm3, %xmm6
	movq	%rdx, %rdi
	jp	.L67
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L48
	movsd	.LC1(%rip), %xmm7
	comisd	%xmm7, %xmm3
	ja	.L48
	movzwl	%r8w, %ebp
	cmpq	16(%rcx), %rbp
	jnb	.L68
	testq	%rdx, %rdx
	je	.L52
	movq	(%rcx), %rax
	movzwl	%r8w, %esi
	movzwl	%r12w, %r12d
	movzwl	%r13w, %r14d
	cmpq	368(%rax), %rdx
	jnb	.L53
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L53
	movsd	8(%rcx), %xmm0
	movl	%esi, %ecx
	mulsd	%xmm3, %xmm0
	mulsd	.LC6(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movl	$255, %r8d
	movl	$255, %edx
	movl	%esi, %ecx
	call	Mix_SetPanning
	testl	%eax, %eax
	je	.L69
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rdi
	jnb	.L70
	movq	(%rdx,%rdi,8), %rdx
	movl	%r12d, %r9d
	movl	%r14d, %r8d
	movl	%esi, %ecx
	call	Mix_FadeInChannel
	cmpl	$-1, %eax
	je	.L71
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rbp
	jnb	.L66
	leaq	0(%rbp,%rbp,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rdi, (%rax)
	cmpq	16(%rbx), %rbp
	jnb	.L66
	movw	%r13w, 32(%rax)
	movsd	%xmm6, 8(%rax)
	movsd	%xmm7, 16(%rax)
	movsd	%xmm7, 24(%rax)
.L52:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L48:
	movzwl	%r12w, %r12d
	movzwl	%r13w, %r13d
	movapd	%xmm6, %xmm3
	movzwl	%r8w, %r8d
	movl	%r12d, 40(%rsp)
	leaq	.LC15(%rip), %rcx
	movq	%xmm6, %r9
	movq	%rdi, %rdx
	movl	%r13d, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L66:
	leaq	.LC12(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L53:
	movl	%r12d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rdi, %rdx
	movl	%r14d, 32(%rsp)
	leaq	.LC17(%rip), %rcx
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L68:
	movzwl	%r12w, %r12d
	movzwl	%r13w, %r13d
	leaq	.LC16(%rip), %rcx
	movzwl	%r8w, %r8d
	movl	%r12d, 40(%rsp)
	movq	%xmm3, %r9
	movl	%r13d, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L67:
	movzwl	%r12w, %r12d
	movzwl	%r13w, %r13d
	leaq	.LC14(%rip), %rcx
	movzwl	%r8w, %r8d
	movl	%r12d, 40(%rsp)
	movq	%xmm3, %r9
	movl	%r13d, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L71:
	movl	%r12d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rdi, %rdx
	movl	%r14d, 32(%rsp)
	leaq	.LC19(%rip), %rcx
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L70:
	leaq	.LC12(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	movl	%r12d, 40(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rdi, %rdx
	movl	%r14d, 32(%rsp)
	leaq	.LC18(%rip), %rcx
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC20:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC22:
	.ascii "wze::engine.audio.Play(): Left must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.audio.Play(): Left must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC24:
	.ascii "wze::engine.audio.Play(): Right must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.audio.Play(): Right must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.audio.Play(): Channel does not exist\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.audio.Play(): Sound does not exist\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.audio.Play(): Mix_SetPanning() failed\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC30:
	.ascii "wze::engine.audio.Play(): Mix_PlayChannel() failed\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdddt
	.def	_ZN3wze6engine5audio4PlayEytdddt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytdddt
_ZN3wze6engine5audio4PlayEytdddt:
.LFB6896:
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
	subq	$120, %rsp
	.seh_stackalloc	120
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	movsd	208(%rsp), %xmm7
	movl	224(%rsp), %r12d
	movsd	216(%rsp), %xmm8
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rbx
	movapd	%xmm3, %xmm6
	movq	%rdx, %rsi
	jp	.L110
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L75
	movsd	.LC1(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L75
	ucomisd	%xmm7, %xmm7
	jp	.L111
	comisd	%xmm7, %xmm0
	ja	.L80
	comisd	%xmm1, %xmm7
	ja	.L80
	ucomisd	%xmm8, %xmm8
	jp	.L112
	comisd	%xmm8, %xmm0
	ja	.L85
	comisd	%xmm1, %xmm8
	ja	.L85
	movzwl	%r8w, %ebp
	cmpq	16(%rcx), %rbp
	jnb	.L113
	testq	%rdx, %rdx
	je	.L89
	movq	(%rcx), %rax
	movzwl	%r8w, %edi
	movzwl	%r12w, %r13d
	cmpq	368(%rax), %rdx
	jnb	.L90
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L90
	movsd	8(%rcx), %xmm0
	movl	%edi, %ecx
	mulsd	%xmm3, %xmm0
	mulsd	.LC6(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movsd	.LC28(%rip), %xmm0
	movapd	%xmm8, %xmm1
	movl	%edi, %ecx
	mulsd	%xmm0, %xmm1
	mulsd	%xmm7, %xmm0
	cvttsd2sil	%xmm1, %r8d
	cvttsd2sil	%xmm0, %edx
	movzbl	%r8b, %r8d
	movzbl	%dl, %edx
	call	Mix_SetPanning
	testl	%eax, %eax
	je	.L114
	movq	(%rbx), %rax
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L115
	movq	(%rdx,%rsi,8), %rdx
	movl	%r13d, %r8d
	movl	%edi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L116
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rbp
	jnb	.L109
	leaq	0(%rbp,%rbp,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rsi, (%rax)
	cmpq	16(%rbx), %rbp
	jnb	.L109
	movw	%r12w, 32(%rax)
	unpcklpd	%xmm7, %xmm6
	movups	%xmm6, 8(%rax)
	movsd	%xmm8, 24(%rax)
.L89:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	96(%rsp), %xmm8
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
.L75:
	movzwl	%r12w, %r12d
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rsi, %rdx
	movl	%r12d, 48(%rsp)
	leaq	.LC21(%rip), %rcx
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L85:
	movzwl	%r12w, %r12d
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rsi, %rdx
	movl	%r12d, 48(%rsp)
	leaq	.LC25(%rip), %rcx
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L80:
	movzwl	%r12w, %r12d
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rsi, %rdx
	movl	%r12d, 48(%rsp)
	leaq	.LC23(%rip), %rcx
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L109:
	leaq	.LC12(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L90:
	movl	%r13d, 48(%rsp)
	movapd	%xmm6, %xmm3
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
	movsd	%xmm7, 32(%rsp)
	movq	%xmm6, %r9
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L113:
	movzwl	%r12w, %r12d
	movsd	%xmm7, 32(%rsp)
	movq	%xmm3, %r9
	leaq	.LC26(%rip), %rcx
	movl	%r12d, 48(%rsp)
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L111:
	movzwl	%r12w, %r12d
	movsd	%xmm7, 32(%rsp)
	movq	%xmm3, %r9
	leaq	.LC22(%rip), %rcx
	movl	%r12d, 48(%rsp)
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L110:
	movzwl	%r12w, %r12d
	movsd	%xmm7, 32(%rsp)
	movq	%xmm3, %r9
	leaq	.LC20(%rip), %rcx
	movl	%r12d, 48(%rsp)
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L112:
	movzwl	%r12w, %r12d
	movsd	%xmm7, 32(%rsp)
	movq	%xmm3, %r9
	leaq	.LC24(%rip), %rcx
	movl	%r12d, 48(%rsp)
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L116:
	movl	%r13d, 48(%rsp)
	movapd	%xmm6, %xmm3
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC30(%rip), %rcx
	movsd	%xmm7, 32(%rsp)
	movq	%xmm6, %r9
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L115:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L114:
	movl	%r13d, 48(%rsp)
	movapd	%xmm6, %xmm3
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC29(%rip), %rcx
	movsd	%xmm7, 32(%rsp)
	movq	%xmm6, %r9
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC32:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC33:
	.ascii "wze::engine.audio.Play(): Left must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC34:
	.ascii "wze::engine.audio.Play(): Left must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC35:
	.ascii "wze::engine.audio.Play(): Right must not be NaN\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC36:
	.ascii "wze::engine.audio.Play(): Right must be in range [0, 1]\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC37:
	.ascii "wze::engine.audio.Play(): Channel does not exist\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d, FadeInMilliseconds: %d\12\0"
	.align 8
.LC38:
	.ascii "wze::engine.audio.Play(): Mix_FadeInChannel() failed\12Params: SoundID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdddtt
	.def	_ZN3wze6engine5audio4PlayEytdddtt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytdddtt
_ZN3wze6engine5audio4PlayEytdddtt:
.LFB6897:
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
	subq	$112, %rsp
	.seh_stackalloc	112
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	movaps	%xmm8, 96(%rsp)
	.seh_savexmm	%xmm8, 96
	.seh_endprologue
	movl	224(%rsp), %r12d
	movl	232(%rsp), %r13d
	movsd	208(%rsp), %xmm7
	movsd	216(%rsp), %xmm8
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rbx
	movapd	%xmm3, %xmm6
	movq	%rdx, %rsi
	jp	.L155
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L120
	movsd	.LC1(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L120
	ucomisd	%xmm7, %xmm7
	jp	.L156
	comisd	%xmm7, %xmm0
	ja	.L125
	comisd	%xmm1, %xmm7
	ja	.L125
	ucomisd	%xmm8, %xmm8
	jp	.L157
	comisd	%xmm8, %xmm0
	ja	.L130
	comisd	%xmm1, %xmm8
	ja	.L130
	movzwl	%r8w, %ebp
	cmpq	16(%rcx), %rbp
	jnb	.L158
	testq	%rdx, %rdx
	je	.L134
	movq	(%rcx), %rax
	movzwl	%r8w, %edi
	movzwl	%r12w, %r14d
	cmpq	368(%rax), %rdx
	jnb	.L135
	movq	376(%rax), %rax
	cmpq	$0, (%rax,%rdx,8)
	je	.L135
	movsd	8(%rcx), %xmm0
	movl	%edi, %ecx
	mulsd	%xmm3, %xmm0
	mulsd	.LC6(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movsd	.LC28(%rip), %xmm0
	movapd	%xmm8, %xmm1
	movl	%edi, %ecx
	mulsd	%xmm0, %xmm1
	mulsd	%xmm7, %xmm0
	cvttsd2sil	%xmm1, %r8d
	cvttsd2sil	%xmm0, %edx
	movzbl	%r8b, %r8d
	movzbl	%dl, %edx
	call	Mix_SetPanning
	testl	%eax, %eax
	je	.L159
	movq	(%rbx), %rax
	movzwl	%r13w, %r9d
	movq	376(%rax), %rdx
	cmpq	368(%rax), %rsi
	jnb	.L160
	movq	(%rdx,%rsi,8), %rdx
	movl	%r14d, %r8d
	movl	%edi, %ecx
	call	Mix_FadeInChannel
	cmpl	$-1, %eax
	je	.L161
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rbp
	jnb	.L154
	leaq	0(%rbp,%rbp,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	%rsi, (%rax)
	cmpq	16(%rbx), %rbp
	jnb	.L154
	movw	%r12w, 32(%rax)
	unpcklpd	%xmm7, %xmm6
	movups	%xmm6, 8(%rax)
	movsd	%xmm8, 24(%rax)
.L134:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	96(%rsp), %xmm8
	addq	$112, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L120:
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	movapd	%xmm6, %xmm3
	movzwl	%r8w, %r8d
	movl	%r13d, 56(%rsp)
	movq	%xmm6, %r9
	movq	%rsi, %rdx
	leaq	.LC32(%rip), %rcx
	movl	%r12d, 48(%rsp)
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L130:
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	movapd	%xmm6, %xmm3
	movzwl	%r8w, %r8d
	movl	%r13d, 56(%rsp)
	movq	%xmm6, %r9
	movq	%rsi, %rdx
	leaq	.LC36(%rip), %rcx
	movl	%r12d, 48(%rsp)
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L125:
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	movapd	%xmm6, %xmm3
	movzwl	%r8w, %r8d
	movl	%r13d, 56(%rsp)
	movq	%xmm6, %r9
	movq	%rsi, %rdx
	leaq	.LC34(%rip), %rcx
	movl	%r12d, 48(%rsp)
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L154:
	leaq	.LC12(%rip), %rcx
	movq	%rbp, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L135:
	movl	%r14d, 48(%rsp)
	movapd	%xmm6, %xmm3
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC27(%rip), %rcx
	movsd	%xmm7, 32(%rsp)
	movq	%xmm6, %r9
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L158:
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	leaq	.LC37(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movl	%r13d, 56(%rsp)
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movl	%r12d, 48(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L156:
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	leaq	.LC33(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movl	%r13d, 56(%rsp)
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movl	%r12d, 48(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L155:
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	leaq	.LC31(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movl	%r13d, 56(%rsp)
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movl	%r12d, 48(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L157:
	movzwl	%r13w, %r13d
	movzwl	%r12w, %r12d
	leaq	.LC35(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movl	%r13d, 56(%rsp)
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movl	%r12d, 48(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L161:
	movl	%r14d, 48(%rsp)
	movapd	%xmm6, %xmm3
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC38(%rip), %rcx
	movsd	%xmm7, 32(%rsp)
	movq	%xmm6, %r9
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L160:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L159:
	movl	%r14d, 48(%rsp)
	movapd	%xmm6, %xmm3
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC29(%rip), %rcx
	movsd	%xmm7, 32(%rsp)
	movq	%xmm6, %r9
	movsd	%xmm8, 40(%rsp)
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
.LFB6898:
	.seh_endprologue
	movzwl	16(%rcx), %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC39:
	.ascii "wze::engine.audio.SetChannelCount(): Mix_AllocateChannels() failed\12Params: ChannelCount: %d\12\0"
	.align 8
.LC40:
	.ascii "neo::array.Remove(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.align 8
.LC41:
	.ascii "neo::array.Insert(): Memory allocation failed\12Params: Index: %lld, Length: %lld\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetChannelCountEt
	.def	_ZN3wze6engine5audio15SetChannelCountEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15SetChannelCountEt
_ZN3wze6engine5audio15SetChannelCountEt:
.LFB6899:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	%dx, %ebp
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%ebp, %ecx
	call	Mix_AllocateChannels
	cmpl	%eax, %ebp
	jne	.L179
	movq	16(%rdi), %rbx
	movzwl	%si, %esi
	cmpq	%rbx, %rsi
	jb	.L180
	cmpq	%rsi, %rbx
	jb	.L181
.L167:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	subl	%ebx, %ebp
	movslq	%ebp, %rbp
	testq	%rbp, %rbp
	jne	.L169
	movq	%rbx, %r9
.L174:
	cmpq	%r9, %rbx
	jnb	.L182
	movq	24(%rdi), %r8
	movl	%ebx, %ecx
	movq	%rbx, %rdx
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L176:
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%r8,%rax,8), %rax
	movq	$0, (%rax)
	movq	16(%rdi), %rbx
	cmpq	%rbx, %rdx
	jnb	.L183
	xorl	%edx, %edx
	addl	$1, %ecx
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movzwl	%cx, %edx
	movb	$0, 34(%rax)
	movups	%xmm0, 8(%rax)
	cmpq	%rbx, %rdx
	jb	.L176
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	movq	%rsi, 16(%rdi)
	movq	24(%rdi), %rcx
	testq	%rsi, %rsi
	je	.L184
	leaq	(%rsi,%rsi,4), %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rdi)
	testq	%rax, %rax
	je	.L185
	movq	16(%rdi), %rbx
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	leaq	0(%rbp,%rbx), %rsi
	movq	24(%rdi), %rcx
	movq	%rsi, 16(%rdi)
	leaq	(%rsi,%rsi,4), %rdx
	salq	$3, %rdx
	call	realloc
	movq	%rax, 24(%rdi)
	testq	%rax, %rax
	je	.L186
	movq	16(%rdi), %r9
	leaq	-1(%r9), %rcx
	cmpq	%rsi, %rcx
	jb	.L174
	movq	%r9, %rdx
	subq	%rbp, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	leaq	0(%rbp,%rbp,4), %rdx
	salq	$3, %rdx
	.p2align 4,,10
	.p2align 3
.L173:
	movdqu	-40(%rax), %xmm1
	subq	$1, %rcx
	subq	$40, %rax
	movups	%xmm1, (%rax,%rdx)
	movdqu	16(%rax), %xmm2
	movups	%xmm2, 16(%rax,%rdx)
	movq	32(%rax), %r8
	movq	%r8, 32(%rax,%rdx)
	cmpq	%rsi, %rcx
	jnb	.L173
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L184:
	call	free
	movq	$0, 24(%rdi)
	movq	16(%rdi), %rbx
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L182:
	movq	%r9, %rbx
	jmp	.L167
.L183:
	leaq	.LC12(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L179:
	leaq	.LC39(%rip), %rcx
	movl	%ebp, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L186:
	leaq	.LC41(%rip), %rcx
	movq	%rbp, %r8
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L185:
	subq	%rsi, %rbx
	leaq	.LC40(%rip), %rcx
	movq	%rsi, %rdx
	movq	%rbx, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC42:
	.ascii "wze::engine.audio.SetChannelVolume(): Channel does not exist\12Params: Channel: %d, Volume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio16SetChannelVolumeEtd
	.def	_ZN3wze6engine5audio16SetChannelVolumeEtd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio16SetChannelVolumeEtd
_ZN3wze6engine5audio16SetChannelVolumeEtd:
.LFB6900:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movq	%rcx, %rbx
	movapd	%xmm2, %xmm6
	movzwl	%dx, %esi
	movzwl	%dx, %ecx
	cmpq	16(%rbx), %rsi
	jnb	.L190
	movsd	8(%rbx), %xmm0
	mulsd	%xmm2, %xmm0
	mulsd	.LC6(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_Volume
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rsi
	jnb	.L191
	leaq	(%rsi,%rsi,4), %rdx
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 8(%rax,%rdx,8)
	movaps	32(%rsp), %xmm6
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L190:
	movl	%ecx, %edx
	movq	%xmm2, %r8
	leaq	.LC42(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L191:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC43:
	.ascii "wze::engine.audio.SetChannelPanning(): Channel does not exist\12Params: Channel: %d, Left: %lf, Right: %lf\12\0"
	.align 8
.LC44:
	.ascii "wze::engine.audio.SetChannelPanning(): Mix_SetPanning() failed\12Params: Channel: %d, Left: %lf, Right: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio17SetChannelPanningEtdd
	.def	_ZN3wze6engine5audio17SetChannelPanningEtdd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio17SetChannelPanningEtdd
_ZN3wze6engine5audio17SetChannelPanningEtdd:
.LFB6901:
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
	movapd	%xmm2, %xmm8
	movq	%rcx, %rsi
	movapd	%xmm2, %xmm6
	movzwl	%dx, %edi
	movapd	%xmm3, %xmm7
	unpcklpd	%xmm3, %xmm8
	movzwl	%dx, %ebx
	cmpq	16(%rcx), %rdi
	jnb	.L196
	movsd	.LC28(%rip), %xmm0
	movapd	%xmm3, %xmm1
	movl	%ebx, %ecx
	mulsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm0
	cvttsd2sil	%xmm1, %r8d
	cvttsd2sil	%xmm0, %edx
	movzbl	%r8b, %r8d
	movzbl	%dl, %edx
	call	Mix_SetPanning
	testl	%eax, %eax
	je	.L197
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rdi
	jnb	.L198
	leaq	(%rdi,%rdi,4), %rdx
	movups	%xmm8, 16(%rax,%rdx,8)
	movaps	32(%rsp), %xmm6
	movaps	48(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm8
	addq	$80, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L196:
	leaq	.LC43(%rip), %rcx
	movq	%xmm3, %r9
	movq	%xmm2, %r8
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L198:
	leaq	.LC12(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L197:
	movapd	%xmm7, %xmm3
	movq	%xmm7, %r9
	movapd	%xmm6, %xmm2
	movl	%ebx, %edx
	leaq	.LC44(%rip), %rcx
	movq	%xmm6, %r8
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC45:
	.ascii "wze::engine.audio.PauseChannel(): Channel does not exist\12Params: Channel: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio12PauseChannelEt
	.def	_ZN3wze6engine5audio12PauseChannelEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio12PauseChannelEt
_ZN3wze6engine5audio12PauseChannelEt:
.LFB6902:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movzwl	%dx, %esi
	movzwl	%dx, %ecx
	cmpq	16(%rbx), %rsi
	jnb	.L202
	call	Mix_Pause
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rsi
	jnb	.L203
	leaq	(%rsi,%rsi,4), %rdx
	movb	$1, 34(%rax,%rdx,8)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L202:
	movl	%ecx, %edx
	leaq	.LC45(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L203:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC46:
	.ascii "wze::engine.audio.ResumeChannel(): Channel does not exist\12Params: Channel: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio13ResumeChannelEt
	.def	_ZN3wze6engine5audio13ResumeChannelEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio13ResumeChannelEt
_ZN3wze6engine5audio13ResumeChannelEt:
.LFB6903:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movzwl	%dx, %esi
	movzwl	%dx, %ecx
	cmpq	16(%rbx), %rsi
	jnb	.L207
	call	Mix_Resume
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rsi
	jnb	.L208
	leaq	(%rsi,%rsi,4), %rdx
	movb	$0, 34(%rax,%rdx,8)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L207:
	movl	%ecx, %edx
	leaq	.LC46(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L208:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC47:
	.ascii "wze::engine.audio.StopChannel(): Channel does not exist\12Params: Channel: %d\12\0"
	.align 8
.LC48:
	.ascii "wze::engine.audio.StopChannel(): Mix_HaltChannel() failed\12Params: Channel: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio11StopChannelEt
	.def	_ZN3wze6engine5audio11StopChannelEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio11StopChannelEt
_ZN3wze6engine5audio11StopChannelEt:
.LFB6904:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rsi
	movzwl	%dx, %edi
	movzwl	%dx, %ebx
	cmpq	16(%rcx), %rdi
	jnb	.L215
	movl	%ebx, %ecx
	call	Mix_HaltChannel
	testl	%eax, %eax
	jne	.L216
	movq	24(%rsi), %rax
	cmpq	16(%rsi), %rdi
	jnb	.L214
	leaq	(%rdi,%rdi,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	$0, (%rax)
	cmpq	16(%rsi), %rdi
	jnb	.L214
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movups	%xmm0, 8(%rax)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L214:
	leaq	.LC12(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L216:
	leaq	.LC48(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L215:
	leaq	.LC47(%rip), %rcx
	movl	%ebx, %edx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC49:
	.ascii "wze::engine.audio.StopChannel(): Channel does not exist\12Params: Channel: %d, FadeOutMilliseconds: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio11StopChannelEtt
	.def	_ZN3wze6engine5audio11StopChannelEtt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio11StopChannelEtt
_ZN3wze6engine5audio11StopChannelEtt:
.LFB6905:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movl	%edx, %ecx
	movzwl	%dx, %esi
	movzwl	%r8w, %edx
	movzwl	%cx, %ecx
	cmpq	16(%rbx), %rsi
	jnb	.L222
	call	Mix_FadeOutChannel
	movq	24(%rbx), %rax
	cmpq	16(%rbx), %rsi
	jnb	.L221
	leaq	(%rsi,%rsi,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	$0, (%rax)
	cmpq	16(%rbx), %rsi
	jnb	.L221
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movups	%xmm0, 8(%rax)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L221:
	leaq	.LC12(%rip), %rcx
	movq	%rsi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L222:
	movl	%edx, %r8d
	movl	%ecx, %edx
	leaq	.LC49(%rip), %rcx
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
.LFB6906:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movl	$1, %ecx
	call	Mix_PauseAudio
	cmpq	$0, 16(%rdi)
	je	.L224
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L226:
	movzwl	%si, %ecx
	call	Mix_Pause
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdx
	cmpq	%rax, %rbx
	jnb	.L228
	addl	$1, %esi
	leaq	(%rbx,%rbx,4), %rcx
	movzwl	%si, %ebx
	movb	$1, 34(%rdx,%rcx,8)
	cmpq	%rax, %rbx
	jb	.L226
.L224:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L228:
	leaq	.LC12(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio9ResumeAllEv
	.def	_ZN3wze6engine5audio9ResumeAllEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio9ResumeAllEv
_ZN3wze6engine5audio9ResumeAllEv:
.LFB6907:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	xorl	%ecx, %ecx
	call	Mix_PauseAudio
	cmpq	$0, 16(%rdi)
	je	.L230
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L232:
	movzwl	%si, %ecx
	call	Mix_Resume
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdx
	cmpq	%rax, %rbx
	jnb	.L234
	addl	$1, %esi
	leaq	(%rbx,%rbx,4), %rcx
	movzwl	%si, %ebx
	movb	$0, 34(%rdx,%rcx,8)
	cmpq	%rax, %rbx
	jb	.L232
.L230:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L234:
	leaq	.LC12(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC50:
	.ascii "wze::engine.audio[]: Channel does not exist\12Params: Channel: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioixEt
	.def	_ZN3wze6engine5audioixEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audioixEt
_ZN3wze6engine5audioixEt:
.LFB6908:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movzwl	%r8w, %edi
	movzwl	%r8w, %ecx
	cmpq	16(%rdx), %rdi
	jnb	.L244
	call	Mix_Playing
	testl	%eax, %eax
	movq	24(%rsi), %rax
	je	.L245
	cmpq	16(%rsi), %rdi
	jnb	.L243
	leaq	(%rdi,%rdi,4), %rdx
	leaq	(%rax,%rdx,8), %rax
.L240:
	movdqu	(%rax), %xmm1
	movdqu	16(%rax), %xmm2
	movq	32(%rax), %rax
	movups	%xmm1, (%rbx)
	movq	%rax, 32(%rbx)
	movq	%rbx, %rax
	movups	%xmm2, 16(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L245:
	cmpq	16(%rsi), %rdi
	jnb	.L243
	leaq	(%rdi,%rdi,4), %rdx
	leaq	(%rax,%rdx,8), %rax
	movq	$0, (%rax)
	cmpq	16(%rsi), %rdi
	jnb	.L243
	pxor	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	$0x000000000, 24(%rax)
	movw	%dx, 32(%rax)
	movups	%xmm0, 8(%rax)
	jmp	.L240
.L243:
	leaq	.LC12(%rip), %rcx
	movq	%rdi, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L244:
	movl	%ecx, %edx
	leaq	.LC50(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
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
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	Mix_Volume;	.scl	2;	.type	32;	.endef
	.def	Mix_SetPanning;	.scl	2;	.type	32;	.endef
	.def	Mix_PlayChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_FadeInChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_AllocateChannels;	.scl	2;	.type	32;	.endef
	.def	realloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	Mix_Pause;	.scl	2;	.type	32;	.endef
	.def	Mix_Resume;	.scl	2;	.type	32;	.endef
	.def	Mix_HaltChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_FadeOutChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_PauseAudio;	.scl	2;	.type	32;	.endef
	.def	Mix_Playing;	.scl	2;	.type	32;	.endef
