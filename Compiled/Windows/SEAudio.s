	.file	"SEAudio.cpp"
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4
	.globl	_Z6printfPKcz
	.def	_Z6printfPKcz;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6printfPKcz
_Z6printfPKcz:
.LFB19:
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
	.globl	_ZN4slay6engine5audioC2ERS0_
	.def	_ZN4slay6engine5audioC2ERS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audioC2ERS0_
_ZN4slay6engine5audioC2ERS0_:
.LFB8433:
	.seh_endprologue
	movq	.LC0(%rip), %rax
	movq	%rdx, (%rcx)
	movq	%rax, 8(%rcx)
	ret
	.seh_endproc
	.globl	_ZN4slay6engine5audioC1ERS0_
	.def	_ZN4slay6engine5audioC1ERS0_;	.scl	2;	.type	32;	.endef
	.set	_ZN4slay6engine5audioC1ERS0_,_ZN4slay6engine5audioC2ERS0_
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio15GetGlobalVolumeEv
	.def	_ZN4slay6engine5audio15GetGlobalVolumeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio15GetGlobalVolumeEv
_ZN4slay6engine5audio15GetGlobalVolumeEv:
.LFB8435:
	.seh_endprologue
	movsd	8(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "slay::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\12Params: Volume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio15SetGlobalVolumeEd
	.def	_ZN4slay6engine5audio15SetGlobalVolumeEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio15SetGlobalVolumeEd
_ZN4slay6engine5audio15SetGlobalVolumeEd:
.LFB8436:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L6
	comisd	.LC0(%rip), %xmm1
	ja	.L6
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rcx)
	addq	$40, %rsp
	ret
.L6:
	leaq	.LC2(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "slay::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf\12\0"
	.align 8
.LC4:
	.ascii "slay::engine.audio.Play(): WAV does not exists\12Params: ID: %lld, Channel: %d, Volume: %lf\12\0"
	.align 8
.LC6:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC7:
	.ascii "slay::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio4PlayEytd
	.def	_ZN4slay6engine5audio4PlayEytd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio4PlayEytd
_ZN4slay6engine5audio4PlayEytd:
.LFB8437:
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
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movapd	%xmm3, %xmm6
	ja	.L11
	comisd	.LC0(%rip), %xmm3
	ja	.L11
	testq	%rdx, %rdx
	je	.L14
	movq	(%rcx), %rax
	cmpq	584(%rax), %rdx
	jnb	.L15
	movq	592(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L15
	movsd	8(%rdi), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC5(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	(%rdi), %rax
	movq	592(%rax), %rdx
	cmpq	584(%rax), %rbx
	jnb	.L22
	movzwl	%si, %esi
	movq	(%rdx,%rbx,8), %rdx
	xorl	%r8d, %r8d
	movl	%esi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L23
.L14:
	movaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L11:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC3(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L15:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC4(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L23:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%esi, %r8d
	movq	%rbx, %rdx
	leaq	.LC7(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L22:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "slay::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC9:
	.ascii "slay::engine.audio.Play(): WAV does not exists\12Params: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC10:
	.ascii "slay::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio4PlayEytdt
	.def	_ZN4slay6engine5audio4PlayEytdt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio4PlayEytdt
_ZN4slay6engine5audio4PlayEytdt:
.LFB8438:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movl	144(%rsp), %ebp
	comisd	%xmm3, %xmm0
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movapd	%xmm3, %xmm6
	ja	.L25
	comisd	.LC0(%rip), %xmm3
	ja	.L25
	testq	%rdx, %rdx
	je	.L28
	movq	(%rcx), %rax
	movzwl	%bp, %ebp
	cmpq	584(%rax), %rdx
	jnb	.L29
	movq	592(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L29
	movsd	8(%rdi), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC5(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	(%rdi), %rax
	movq	592(%rax), %rdx
	cmpq	584(%rax), %rbx
	jnb	.L36
	movzwl	%si, %esi
	movq	(%rdx,%rbx,8), %rdx
	movl	%ebp, %r8d
	movl	%esi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L37
.L28:
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L25:
	movzwl	%bp, %ebp
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movl	%ebp, 32(%rsp)
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L29:
	movl	%ebp, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rbx, %rdx
	leaq	.LC9(%rip), %rcx
	movzwl	%si, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L37:
	movl	%ebp, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%esi, %r8d
	leaq	.LC10(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L36:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC11:
	.ascii "slay::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC12:
	.ascii "slay::engine.audio.Play(): Left must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC13:
	.ascii "slay::engine.audio.Play(): Right must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC14:
	.ascii "slay::engine.audio.Play(): WAV does not exists\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC15:
	.ascii "slay::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC17:
	.ascii "slay::engine.audio.Play(): Mix_SetPanning() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio4PlayEytddd
	.def	_ZN4slay6engine5audio4PlayEytddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio4PlayEytddd
_ZN4slay6engine5audio4PlayEytddd:
.LFB8439:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	movaps	%xmm8, 80(%rsp)
	.seh_savexmm	%xmm8, 80
	.seh_endprologue
	pxor	%xmm0, %xmm0
	movsd	160(%rsp), %xmm7
	movsd	168(%rsp), %xmm8
	comisd	%xmm3, %xmm0
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movapd	%xmm3, %xmm6
	ja	.L39
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L39
	comisd	%xmm7, %xmm0
	ja	.L42
	comisd	%xmm1, %xmm7
	ja	.L42
	comisd	%xmm8, %xmm0
	ja	.L45
	comisd	%xmm1, %xmm8
	ja	.L45
	testq	%rdx, %rdx
	je	.L48
	movq	(%rcx), %rax
	cmpq	584(%rax), %rdx
	jnb	.L49
	movq	592(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L49
	movsd	8(%rdi), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC5(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	(%rdi), %rax
	movq	592(%rax), %rdx
	cmpq	584(%rax), %rbx
	jnb	.L59
	movzwl	%si, %esi
	movq	(%rdx,%rbx,8), %rdx
	xorl	%r8d, %r8d
	movl	%esi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L60
	movsd	.LC16(%rip), %xmm0
	movapd	%xmm8, %xmm1
	movl	%esi, %ecx
	mulsd	%xmm0, %xmm1
	mulsd	%xmm7, %xmm0
	cvttsd2sil	%xmm1, %r8d
	cvttsd2sil	%xmm0, %edx
	movzbl	%r8b, %r8d
	movzbl	%dl, %edx
	call	Mix_SetPanning
	testl	%eax, %eax
	je	.L61
.L48:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	80(%rsp), %xmm8
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L39:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC11(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L45:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC13(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L42:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC12(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L49:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC14(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L59:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L61:
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rbx, %rdx
	leaq	.LC17(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L60:
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rbx, %rdx
	leaq	.LC15(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "slay::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC19:
	.ascii "slay::engine.audio.Play(): Left must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC20:
	.ascii "slay::engine.audio.Play(): Right must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC21:
	.ascii "slay::engine.audio.Play(): WAV does not exists\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC22:
	.ascii "slay::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC23:
	.ascii "slay::engine.audio.Play(): Mix_SetPanning() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio4PlayEytdddt
	.def	_ZN4slay6engine5audio4PlayEytdddt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio4PlayEytdddt
_ZN4slay6engine5audio4PlayEytdddt:
.LFB8440:
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
	pxor	%xmm0, %xmm0
	movsd	192(%rsp), %xmm7
	movl	208(%rsp), %esi
	movsd	200(%rsp), %xmm8
	comisd	%xmm3, %xmm0
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movl	%r8d, %edi
	movapd	%xmm3, %xmm6
	ja	.L63
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L63
	comisd	%xmm7, %xmm0
	ja	.L66
	comisd	%xmm1, %xmm7
	ja	.L66
	comisd	%xmm8, %xmm0
	ja	.L69
	comisd	%xmm1, %xmm8
	ja	.L69
	testq	%rdx, %rdx
	je	.L72
	movq	(%rcx), %rax
	movzwl	%si, %esi
	cmpq	584(%rax), %rdx
	jnb	.L73
	movq	592(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L73
	movsd	8(%rbp), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC5(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	0(%rbp), %rax
	movq	592(%rax), %rdx
	cmpq	584(%rax), %rbx
	jnb	.L83
	movzwl	%di, %edi
	movq	(%rdx,%rbx,8), %rdx
	movl	%esi, %r8d
	movl	%edi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L84
	movsd	.LC16(%rip), %xmm0
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
	je	.L85
.L72:
	movaps	64(%rsp), %xmm6
	movaps	80(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	96(%rsp), %xmm8
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L63:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	movl	%esi, 48(%rsp)
	leaq	.LC18(%rip), %rcx
	movq	%xmm6, %r9
	movzwl	%di, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L69:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	movl	%esi, 48(%rsp)
	leaq	.LC20(%rip), %rcx
	movq	%xmm6, %r9
	movzwl	%di, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L66:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	movl	%esi, 48(%rsp)
	leaq	.LC19(%rip), %rcx
	movq	%xmm6, %r9
	movzwl	%di, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L73:
	movl	%esi, 48(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rbx, %rdx
	leaq	.LC21(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movzwl	%di, %r8d
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L83:
	leaq	.LC6(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L85:
	movl	%esi, 48(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%edi, %r8d
	leaq	.LC23(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%rbx, %rdx
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L84:
	movl	%esi, 48(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%edi, %r8d
	leaq	.LC22(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%rbx, %rdx
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio5PauseEt
	.def	_ZN4slay6engine5audio5PauseEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio5PauseEt
_ZN4slay6engine5audio5PauseEt:
.LFB8441:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	%dx, %ecx
	call	Mix_Pause
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio8PauseAllEv
	.def	_ZN4slay6engine5audio8PauseAllEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio8PauseAllEv
_ZN4slay6engine5audio8PauseAllEv:
.LFB8442:
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
	.globl	_ZN4slay6engine5audio6ResumeEt
	.def	_ZN4slay6engine5audio6ResumeEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio6ResumeEt
_ZN4slay6engine5audio6ResumeEt:
.LFB8443:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	%dx, %ecx
	call	Mix_Resume
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio9ResumeAllEv
	.def	_ZN4slay6engine5audio9ResumeAllEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio9ResumeAllEv
_ZN4slay6engine5audio9ResumeAllEv:
.LFB8444:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%ecx, %ecx
	call	Mix_PauseAudio
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio8IsPausedEt
	.def	_ZN4slay6engine5audio8IsPausedEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio8IsPausedEt
_ZN4slay6engine5audio8IsPausedEt:
.LFB8445:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	%dx, %ecx
	call	Mix_Paused
	cmpl	$1, %eax
	sete	%al
	addq	$40, %rsp
	ret
	.seh_endproc
	.align 2
	.p2align 4
	.globl	_ZN4slay6engine5audio4StopEt
	.def	_ZN4slay6engine5audio4StopEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN4slay6engine5audio4StopEt
_ZN4slay6engine5audio4StopEt:
.LFB8446:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movzwl	%dx, %ecx
	call	Mix_HaltChannel
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1080033280
	.align 8
.LC16:
	.long	0
	.long	1081073664
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	Mix_VolumeChunk;	.scl	2;	.type	32;	.endef
	.def	Mix_PlayChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_SetPanning;	.scl	2;	.type	32;	.endef
	.def	Mix_Pause;	.scl	2;	.type	32;	.endef
	.def	Mix_PauseAudio;	.scl	2;	.type	32;	.endef
	.def	Mix_Resume;	.scl	2;	.type	32;	.endef
	.def	Mix_Paused;	.scl	2;	.type	32;	.endef
	.def	Mix_HaltChannel;	.scl	2;	.type	32;	.endef
