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
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audioC2EPS0_
	.def	_ZN3wze6engine5audioC2EPS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audioC2EPS0_
_ZN3wze6engine5audioC2EPS0_:
.LFB8435:
	.seh_endprologue
	movq	.LC0(%rip), %rax
	movq	%rdx, (%rcx)
	movq	%rax, 8(%rcx)
	ret
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
.LFB8437:
	.seh_endprologue
	movsd	8(%rcx), %xmm0
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "wze::engine.audio.SetGlobalVolume(): GlobalVolume must not be NaN\12Params: Volume: %lf\12\0"
	.align 8
.LC3:
	.ascii "wze::engine.audio.SetGlobalVolume(): GlobalVolume must be in range [0, 1]\12Params: Volume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio15SetGlobalVolumeEd
	.def	_ZN3wze6engine5audio15SetGlobalVolumeEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio15SetGlobalVolumeEd
_ZN3wze6engine5audio15SetGlobalVolumeEd:
.LFB8438:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	ucomisd	%xmm1, %xmm1
	jp	.L14
	pxor	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	ja	.L8
	comisd	.LC0(%rip), %xmm1
	ja	.L8
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rcx)
	addq	$40, %rsp
	ret
.L8:
	leaq	.LC3(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L14:
	leaq	.LC1(%rip), %rcx
	movq	%xmm1, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf\12\0"
	.align 8
.LC5:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf\12\0"
	.align 8
.LC6:
	.ascii "wze::engine.audio.Play(): WAV does not exist\12Params: ID: %lld, Channel: %d, Volume: %lf\12\0"
	.align 8
.LC8:
	.ascii "neo::array[]: Index out of range\12Params: Index: %lld\12\0"
	.align 8
.LC9:
	.ascii "wze::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytd
	.def	_ZN3wze6engine5audio4PlayEytd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytd
_ZN3wze6engine5audio4PlayEytd:
.LFB8439:
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
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movapd	%xmm3, %xmm6
	jp	.L31
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L18
	comisd	.LC0(%rip), %xmm3
	ja	.L18
	testq	%rdx, %rdx
	je	.L21
	movq	(%rcx), %rax
	cmpq	720(%rax), %rdx
	jnb	.L22
	movq	728(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L22
	movsd	8(%rdi), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC7(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	(%rdi), %rax
	movq	728(%rax), %rdx
	cmpq	720(%rax), %rbx
	jnb	.L32
	movzwl	%si, %esi
	movq	(%rdx,%rbx,8), %rdx
	xorl	%r8d, %r8d
	movl	%esi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L33
.L21:
	movaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L18:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC5(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L22:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC6(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L31:
	leaq	.LC4(%rip), %rcx
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L32:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L33:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%esi, %r8d
	movq	%rbx, %rdx
	leaq	.LC9(%rip), %rcx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC11:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC12:
	.ascii "wze::engine.audio.Play(): WAV does not exist\12Params: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.align 8
.LC13:
	.ascii "wze::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdt
	.def	_ZN3wze6engine5audio4PlayEytdt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytdt
_ZN3wze6engine5audio4PlayEytdt:
.LFB8440:
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
	movl	144(%rsp), %ebp
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movapd	%xmm3, %xmm6
	jp	.L50
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L37
	comisd	.LC0(%rip), %xmm3
	ja	.L37
	testq	%rdx, %rdx
	je	.L40
	movq	(%rcx), %rax
	movzwl	%bp, %ebp
	cmpq	720(%rax), %rdx
	jnb	.L41
	movq	728(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L41
	movsd	8(%rdi), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC7(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	(%rdi), %rax
	movq	728(%rax), %rdx
	cmpq	720(%rax), %rbx
	jnb	.L51
	movzwl	%si, %esi
	movq	(%rdx,%rbx,8), %rdx
	movl	%ebp, %r8d
	movl	%esi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L52
.L40:
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L37:
	movzwl	%bp, %ebp
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movl	%ebp, 32(%rsp)
	leaq	.LC11(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L41:
	movl	%ebp, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rbx, %rdx
	leaq	.LC12(%rip), %rcx
	movzwl	%si, %r8d
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L50:
	movzwl	%bp, %ebp
	leaq	.LC10(%rip), %rcx
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movl	%ebp, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L51:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L52:
	movl	%ebp, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%esi, %r8d
	leaq	.LC13(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC14:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC15:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC16:
	.ascii "wze::engine.audio.Play(): Left must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC17:
	.ascii "wze::engine.audio.Play(): Left must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC18:
	.ascii "wze::engine.audio.Play(): Right must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC19:
	.ascii "wze::engine.audio.Play(): Right must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC20:
	.ascii "wze::engine.audio.Play(): WAV does not exist\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC21:
	.ascii "wze::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.align 8
.LC23:
	.ascii "wze::engine.audio.Play(): Mix_SetPanning() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytddd
	.def	_ZN3wze6engine5audio4PlayEytddd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytddd
_ZN3wze6engine5audio4PlayEytddd:
.LFB8441:
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
	movsd	160(%rsp), %xmm7
	movsd	168(%rsp), %xmm8
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	movl	%r8d, %esi
	movapd	%xmm3, %xmm6
	jp	.L86
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L56
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L56
	ucomisd	%xmm7, %xmm7
	jp	.L87
	comisd	%xmm7, %xmm0
	ja	.L61
	comisd	%xmm1, %xmm7
	ja	.L61
	ucomisd	%xmm8, %xmm8
	jp	.L88
	comisd	%xmm8, %xmm0
	ja	.L66
	comisd	%xmm1, %xmm8
	ja	.L66
	testq	%rdx, %rdx
	je	.L69
	movq	(%rcx), %rax
	cmpq	720(%rax), %rdx
	jnb	.L70
	movq	728(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L70
	movsd	8(%rdi), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC7(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	(%rdi), %rax
	movq	728(%rax), %rdx
	cmpq	720(%rax), %rbx
	jnb	.L89
	movzwl	%si, %esi
	movq	(%rdx,%rbx,8), %rdx
	xorl	%r8d, %r8d
	movl	%esi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L90
	movsd	.LC22(%rip), %xmm0
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
	je	.L91
.L69:
	movaps	48(%rsp), %xmm6
	movaps	64(%rsp), %xmm7
	xorl	%eax, %eax
	movaps	80(%rsp), %xmm8
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L56:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC15(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L66:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC19(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L61:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC17(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L70:
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movzwl	%si, %r8d
	movq	%rbx, %rdx
	leaq	.LC20(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L86:
	leaq	.LC14(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L88:
	leaq	.LC18(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L87:
	leaq	.LC16(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%xmm3, %r9
	movzwl	%r8w, %r8d
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L89:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L91:
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rbx, %rdx
	leaq	.LC23(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L90:
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movl	%esi, %r8d
	movq	%rbx, %rdx
	leaq	.LC21(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%xmm6, %r9
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "wze::engine.audio.Play(): Volume must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC25:
	.ascii "wze::engine.audio.Play(): Volume must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC26:
	.ascii "wze::engine.audio.Play(): Left must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC27:
	.ascii "wze::engine.audio.Play(): Left must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC28:
	.ascii "wze::engine.audio.Play(): Right must not be NaN\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC29:
	.ascii "wze::engine.audio.Play(): Right must be in range [0, 1]\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC30:
	.ascii "wze::engine.audio.Play(): WAV does not exist\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC31:
	.ascii "wze::engine.audio.Play(): Mix_PlayChannel() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.align 8
.LC32:
	.ascii "wze::engine.audio.Play(): Mix_SetPanning() failed\12Params: ID: %lld, Channel: %d, Volume: %lf, Left: %lf, Right: %lf, Loops: %d\12\0"
	.text
	.align 2
	.p2align 4
	.globl	_ZN3wze6engine5audio4PlayEytdddt
	.def	_ZN3wze6engine5audio4PlayEytdddt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4PlayEytdddt
_ZN3wze6engine5audio4PlayEytdddt:
.LFB8442:
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
	movsd	192(%rsp), %xmm7
	movl	208(%rsp), %esi
	movsd	200(%rsp), %xmm8
	ucomisd	%xmm3, %xmm3
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movl	%r8d, %edi
	movapd	%xmm3, %xmm6
	jp	.L125
	pxor	%xmm0, %xmm0
	comisd	%xmm3, %xmm0
	ja	.L95
	movsd	.LC0(%rip), %xmm1
	comisd	%xmm1, %xmm3
	ja	.L95
	ucomisd	%xmm7, %xmm7
	jp	.L126
	comisd	%xmm7, %xmm0
	ja	.L100
	comisd	%xmm1, %xmm7
	ja	.L100
	ucomisd	%xmm8, %xmm8
	jp	.L127
	comisd	%xmm8, %xmm0
	ja	.L105
	comisd	%xmm1, %xmm8
	ja	.L105
	testq	%rdx, %rdx
	je	.L108
	movq	(%rcx), %rax
	movzwl	%si, %esi
	cmpq	720(%rax), %rdx
	jnb	.L109
	movq	728(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.L109
	movsd	8(%rbp), %xmm0
	mulsd	%xmm3, %xmm0
	mulsd	.LC7(%rip), %xmm0
	cvttsd2sil	%xmm0, %edx
	call	Mix_VolumeChunk
	movq	0(%rbp), %rax
	movq	728(%rax), %rdx
	cmpq	720(%rax), %rbx
	jnb	.L128
	movzwl	%di, %edi
	movq	(%rdx,%rbx,8), %rdx
	movl	%esi, %r8d
	movl	%edi, %ecx
	call	Mix_PlayChannel
	cmpl	$-1, %eax
	je	.L129
	movsd	.LC22(%rip), %xmm0
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
	je	.L130
.L108:
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
.L95:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	movl	%esi, 48(%rsp)
	leaq	.LC25(%rip), %rcx
	movq	%xmm6, %r9
	movzwl	%di, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L105:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	movl	%esi, 48(%rsp)
	leaq	.LC29(%rip), %rcx
	movq	%xmm6, %r9
	movzwl	%di, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L100:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movapd	%xmm6, %xmm3
	movq	%rbx, %rdx
	movl	%esi, 48(%rsp)
	leaq	.LC27(%rip), %rcx
	movq	%xmm6, %r9
	movzwl	%di, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L109:
	movl	%esi, 48(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movq	%rbx, %rdx
	leaq	.LC30(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movzwl	%di, %r8d
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L125:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movq	%xmm3, %r9
	leaq	.LC24(%rip), %rcx
	movl	%esi, 48(%rsp)
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L127:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movq	%xmm3, %r9
	leaq	.LC28(%rip), %rcx
	movl	%esi, 48(%rsp)
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L126:
	movzwl	%si, %esi
	movsd	%xmm7, 32(%rsp)
	movq	%xmm3, %r9
	leaq	.LC26(%rip), %rcx
	movl	%esi, 48(%rsp)
	movzwl	%r8w, %r8d
	movsd	%xmm8, 40(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L128:
	leaq	.LC8(%rip), %rcx
	movq	%rbx, %rdx
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L130:
	movl	%esi, 48(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%edi, %r8d
	leaq	.LC32(%rip), %rcx
	movsd	%xmm8, 40(%rsp)
	movq	%rbx, %rdx
	movsd	%xmm7, 32(%rsp)
	call	_Z6printfPKcz
	movl	$1, %ecx
	call	exit
.L129:
	movl	%esi, 48(%rsp)
	movapd	%xmm6, %xmm3
	movq	%xmm6, %r9
	movl	%edi, %r8d
	leaq	.LC31(%rip), %rcx
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
	.globl	_ZN3wze6engine5audio8IsPausedEt
	.def	_ZN3wze6engine5audio8IsPausedEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio8IsPausedEt
_ZN3wze6engine5audio8IsPausedEt:
.LFB8443:
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
	.globl	_ZN3wze6engine5audio5PauseEt
	.def	_ZN3wze6engine5audio5PauseEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio5PauseEt
_ZN3wze6engine5audio5PauseEt:
.LFB8444:
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
	.globl	_ZN3wze6engine5audio6ResumeEt
	.def	_ZN3wze6engine5audio6ResumeEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio6ResumeEt
_ZN3wze6engine5audio6ResumeEt:
.LFB8445:
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
	.globl	_ZN3wze6engine5audio8PauseAllEv
	.def	_ZN3wze6engine5audio8PauseAllEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio8PauseAllEv
_ZN3wze6engine5audio8PauseAllEv:
.LFB8446:
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
.LFB8447:
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
	.globl	_ZN3wze6engine5audio4StopEt
	.def	_ZN3wze6engine5audio4StopEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN3wze6engine5audio4StopEt
_ZN3wze6engine5audio4StopEt:
.LFB8448:
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
.LC7:
	.long	0
	.long	1080033280
	.align 8
.LC22:
	.long	0
	.long	1081073664
	.ident	"GCC: (GNU) 13.1.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	exit;	.scl	2;	.type	32;	.endef
	.def	Mix_VolumeChunk;	.scl	2;	.type	32;	.endef
	.def	Mix_PlayChannel;	.scl	2;	.type	32;	.endef
	.def	Mix_SetPanning;	.scl	2;	.type	32;	.endef
	.def	Mix_Paused;	.scl	2;	.type	32;	.endef
	.def	Mix_Pause;	.scl	2;	.type	32;	.endef
	.def	Mix_Resume;	.scl	2;	.type	32;	.endef
	.def	Mix_PauseAudio;	.scl	2;	.type	32;	.endef
	.def	Mix_HaltChannel;	.scl	2;	.type	32;	.endef
